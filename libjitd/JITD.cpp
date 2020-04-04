/*
 * Copyright (C) 2019 Zilliqa
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

#include "llvm/ADT/StringRef.h"
#include "llvm/ExecutionEngine/JITSymbol.h"
#include "llvm/ExecutionEngine/ObjectCache.h"
#include "llvm/ExecutionEngine/Orc/CompileUtils.h"
#include "llvm/ExecutionEngine/Orc/Core.h"
#include "llvm/ExecutionEngine/Orc/ExecutionUtils.h"
#include "llvm/ExecutionEngine/Orc/JITTargetMachineBuilder.h"
#include "llvm/ExecutionEngine/Orc/LLJIT.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/InstCombine/InstCombine.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Transforms/Scalar/GVN.h"
#include "llvm/Transforms/Utils.h"

#include <memory>
#include <numeric>

#include "../libsrtl/ScillaBuiltins.h"
#include "../libsrtl/ScillaTypes.h"
#include "ScillaVM/Errors.h"
#include "ScillaVM/JITD.h"

using namespace llvm;

namespace {

// Add functions in SRTL that the JIT'ed code can access.
Error addScillaBuiltins(orc::ExecutionSession &ES, const DataLayout &DL) {
  orc::SymbolMap M;
  orc::MangleAndInterner Mangle(ES, DL);
  // Register every symbol that can be accessed from the JIT'ed code.
  auto ScillaFuncs = ScillaVM::getAllScillaBuiltins();
  for (auto fa : ScillaFuncs) {
    M[Mangle(fa.FName)] = JITEvaluatedSymbol(
        pointerToJITTargetAddress(fa.FAddr), JITSymbolFlags());
  }

  if (auto Err = (ES.getMainJITDylib().define(absoluteSymbols(M))))
    return Err;

  return Error::success();
}

} // end of anonymous namespace

namespace ScillaVM {

void ScillaObjCache::notifyObjectCompiled(const Module *M,
                                          MemoryBufferRef ObjBuffer) {
  CachedObjects[M->getModuleIdentifier()] = MemoryBuffer::getMemBufferCopy(
      ObjBuffer.getBuffer(), ObjBuffer.getBufferIdentifier());
}

std::unique_ptr<MemoryBuffer>
ScillaObjCache::getObject(const std::string &ModuleIdentifier) {
  auto I = CachedObjects.find(ModuleIdentifier);
  if (I == CachedObjects.end()) {
    DEBUG(dbglog << "No object for " << ModuleIdentifier
                 << " in cache. Compiling.\n");
    return nullptr;
  }

  DEBUG(dbglog << "Object for " << ModuleIdentifier << " loaded from cache.\n");
  return MemoryBuffer::getMemBufferCopy(I->second->getBuffer());
}

std::unique_ptr<MemoryBuffer> ScillaObjCache::getObject(const Module *M) {
  return getObject(M->getModuleIdentifier());
}

using namespace orc;

void ScillaJIT::init() {
  InitializeNativeTarget();
  InitializeNativeTargetAsmPrinter();
}

std::unique_ptr<ScillaJIT> ScillaJIT::create(const ScillaParams &SPs,
                                             const std::string &Filename,
                                             ScillaObjCache *OC) {

  // Create an LLJIT instance with a custom CompileFunction.
  auto J = orc::LLJITBuilder()
               .setCompileFunctionCreator(
                   [&](JITTargetMachineBuilder JTMB)
                       -> Expected<IRCompileLayer::CompileFunction> {
                     auto TM = JTMB.createTargetMachine();
                     if (!TM)
                       return TM.takeError();
                     return IRCompileLayer::CompileFunction(
                         TMOwningSimpleCompiler(std::move(*TM), OC));
                   })
               .create();

  if (auto Err = J.takeError())
    CREATE_ERROR(llvm::toString(std::move(Err)));

  if (auto Err =
          addScillaBuiltins((*J)->getExecutionSession(), (*J)->getDataLayout()))
    CREATE_ERROR(llvm::toString(std::move(Err)));

  auto *THIS = new ScillaJIT(SPs, std::move(*J));
  auto Ctx = llvm::make_unique<LLVMContext>();

  std::unique_ptr<llvm::MemoryBuffer> Obj = OC->getObject(Filename);
  if (Obj) {
    // We have the object file for this IR module in cache.
    if (auto Err = THIS->Jitter->addObjectFile(std::move(Obj))) {
      CREATE_ERROR(llvm::toString(std::move(Err)));
    }
  } else {
    // IR module not in cache. Parse and compile it.
    SMDiagnostic Smd;
    std::unique_ptr<llvm::Module> M = parseIRFile(Filename, Smd, *Ctx);
    if (!M) {
      std::string ErrMsg;
      raw_string_ostream OS(ErrMsg);
      Smd.print("scilla-vm", OS);
      auto Err = createStringError(inconvertibleErrorCode(), OS.str().c_str());
      CREATE_ERROR(llvm::toString(std::move(Err)));
    }
    M->setModuleIdentifier(Filename);
    ThreadSafeModule TSM(std::move(M), std::move(Ctx));
    if (auto Err = THIS->Jitter->addIRModule(std::move(TSM))) {
      CREATE_ERROR(llvm::toString(std::move(Err)));
    }
  }

  // Create an empty type parser partial cache.
  THIS->TPPC = std::make_unique<ScillaTypes::TypParserPartialCache>();

  // Set execptr in the generated code to THIS
  auto ExecPtr = THIS->getAddressFor("_execptr");
  *reinterpret_cast<ScillaJIT **>(ExecPtr) = THIS;
  // Call the library initialisation function
  auto initLibs =
      reinterpret_cast<void (*)()>(THIS->getAddressFor("_init_libs"));
  initLibs();

  return std::unique_ptr<ScillaJIT>(THIS);
}

void *ScillaJIT::getAddressFor(const std::string &Symbol) {

  auto SA = Jitter->lookup(Symbol);
  if (auto Err = SA.takeError()) {
    CREATE_ERROR(llvm::toString(std::move(Err)));
  }

  return reinterpret_cast<void *>((*SA).getAddress());
}

void *ScillaJIT::sAlloc(size_t size) {
  auto P = new uint8_t[size];
  MAllocs.push_back(P);
  return reinterpret_cast<void *>(P);
}

void ScillaJIT::sFreeAll() {
  for (auto *P : MAllocs) {
    delete[] P;
  }
  MAllocs.clear();
}

ScillaJIT::ScillaJIT(const ScillaParams &SPs,
                     std::unique_ptr<llvm::orc::LLJIT> J)
    : Jitter(std::move(J)), SPs(SPs) {}

ScillaJIT::~ScillaJIT() { sFreeAll(); }

void ScillaJIT::execMsg(Json::Value &Msg) {
  Json::Value TransNameJ = Msg.get("_tag", Json::nullValue);
  Json::Value ParamsJ = Msg.get("params", Json::nullValue);
  Json::Value SenderJ = Msg.get("_sender", Json::nullValue);
  Json::Value AmountJ = Msg.get("_amount", Json::nullValue);
  if (!TransNameJ.isString() || !ParamsJ.isArray() || !SenderJ.isString() ||
      !AmountJ.isString())
    CREATE_ERROR("Invalid Message");

  // Amount and Sender need to be prepended to the parameter list.
  Json::Value AmountParam;
  {
    AmountParam["vname"] = "_amount";
    AmountParam["type"] = "Uint128";
    AmountParam["value"] = AmountJ;
  }
  Json::Value SenderParam;
  {
    SenderParam["vname"] = "_sender";
    SenderParam["type"] = "ByStr20";
    SenderParam["value"] = SenderJ;
  }
  std::vector<Json::Value> AllParamsJ;
  AllParamsJ.push_back(AmountParam);
  AllParamsJ.push_back(SenderParam);
  AllParamsJ.insert(AllParamsJ.end(), ParamsJ.begin(), ParamsJ.end());

  std::string TransName = TransNameJ.asString();
  auto Transition =
      reinterpret_cast<void (*)(void *)>(getAddressFor(TransName));
  auto AllTyDescrs = reinterpret_cast<const ScillaTypes::Typ **>(
      getAddressFor("_tydescr_table"));
  auto TyDescrsLen =
      *reinterpret_cast<int *>(getAddressFor("_tydescr_table_length"));

  std::vector<const ScillaTypes::Typ *> ParamTypes;
  std::vector<Json::Value> ParamValues;
  for (auto &P : AllParamsJ) {
    Json::Value VNameJ, TypeJ, ValueJ;
    if (!P.isObject() ||
        (VNameJ = P.get("vname", Json::nullValue)) == Json::nullValue ||
        (TypeJ = P.get("type", Json::nullValue)) == Json::nullValue ||
        (ValueJ = P.get("value", Json::nullValue)) == Json::nullValue ||
        !VNameJ.isString() || !TypeJ.isString()) {
      CREATE_ERROR("Incorrect paramter format in message JSON.");
    }

    auto *T = ScillaTypes::Typ::fromString(TPPC.get(), AllTyDescrs, TyDescrsLen,
                                           TypeJ.asString());
    ParamTypes.push_back(T);
    ParamValues.push_back(ValueJ);
  }
  int MemSize = std::accumulate(ParamTypes.begin(), ParamTypes.end(), 0,
                                [](int acc, const ScillaTypes::Typ *T) {
                                  return acc + ScillaTypes::Typ::sizeOf(T);
                                });

  ASSERT(MemSize > 0);
  auto *Mem = reinterpret_cast<uint8_t *>(sAlloc(MemSize));
  SAllocator SA = std::bind(&ScillaJIT::sAlloc, this, std::placeholders::_1);
  for (size_t I = 0, Off = 0; I < ParamTypes.size(); I++) {
    const ScillaTypes::Typ *T = ParamTypes[I];
    int Size = ScillaTypes::Typ::sizeOf(T);
    if (ScillaTypes::Typ::isBoxed(T)) {
      *reinterpret_cast<void **>(Mem + Off) =
          ScillaValues::fromJSON(SA, T, ParamValues[I]);
    } else {
      ScillaValues::fromJSONToMem(SA, Mem + Off, Size, T, ParamValues[I]);
    }
    Off += Size;
  }

  Transition(Mem);
}

} // namespace ScillaVM