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

#include <memory>
#include <numeric>

#include "llvm/ADT/StringRef.h"
#include "llvm/ExecutionEngine/JITEventListener.h"
#include "llvm/ExecutionEngine/JITSymbol.h"
#include "llvm/ExecutionEngine/ObjectCache.h"
#include "llvm/ExecutionEngine/Orc/CompileUtils.h"
#include "llvm/ExecutionEngine/Orc/Core.h"
#include "llvm/ExecutionEngine/Orc/ExecutionUtils.h"
#include "llvm/ExecutionEngine/Orc/JITTargetMachineBuilder.h"
#include "llvm/ExecutionEngine/Orc/LLJIT.h"
#include "llvm/ExecutionEngine/Orc/RTDyldObjectLinkingLayer.h"
#include "llvm/ExecutionEngine/SectionMemoryManager.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/Path.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/InstCombine/InstCombine.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Transforms/Scalar/GVN.h"
#include "llvm/Transforms/Utils.h"

#include "../libsrtl/ScillaBuiltins.h"
#include "../libsrtl/ScillaTypes.h"
#include "ScillaVM/Debug.h"
#include "ScillaVM/Errors.h"
#include "ScillaVM/JITD.h"

using namespace llvm;
namespace ph = std::placeholders;

namespace {

// Add functions in SRTL that the JIT'ed code can access.
Error addScillaBuiltins(orc::LLJIT &LLJitter, const DataLayout &DL) {
  orc::SymbolMap M;
  orc::MangleAndInterner Mangle(LLJitter.getExecutionSession(), DL);
  // Register every symbol that can be accessed from the JIT'ed code.
  auto ScillaFuncs = ScillaVM::getAllScillaBuiltins();
  for (auto fa : ScillaFuncs) {
    M[Mangle(fa.FName)] = JITEvaluatedSymbol(
        pointerToJITTargetAddress(fa.FAddr), JITSymbolFlags());
  }

  if (auto Err = (LLJitter.getMainJITDylib().define(absoluteSymbols(M))))
    return Err;

  return Error::success();
}

} // end of anonymous namespace

namespace ScillaVM {

#define DEBUG_TYPE "obj_cache"

// Caching mechanism for compiled files. Not thread safe.
class ScillaObjCache : public llvm::ObjectCache {
public:
  // Constructor for memory + disk cache.
  ScillaObjCache(const std::string &CacheDir) : CacheDir(CacheDir){};
  // Constructor for memory only cache.
  ScillaObjCache(){};
  void notifyObjectCompiled(const llvm::Module *M,
                            llvm::MemoryBufferRef ObjBuffer) override;

  std::unique_ptr<llvm::MemoryBuffer> getObject(const llvm::Module *M) override;
  std::unique_ptr<llvm::MemoryBuffer> getObject(const std::string &ModuleID);

private:
  llvm::StringMap<std::unique_ptr<llvm::MemoryBuffer>> CachedObjects;
  const std::string CacheDir;
};

void ScillaObjCache::notifyObjectCompiled(const Module *M,
                                          MemoryBufferRef ObjBuffer) {
  auto ModuleID = M->getModuleIdentifier();

  CachedObjects[ModuleID] = MemoryBuffer::getMemBufferCopy(
      ObjBuffer.getBuffer(), ObjBuffer.getBufferIdentifier());
  SVM_DEBUG(dbgs() << ModuleID << " added to memory cache\n");

  // If there's a cache directory specified, write to disk.
  if (!CacheDir.empty()) {
    if (!sys::fs::exists(CacheDir) && sys::fs::create_directory(CacheDir)) {
      CREATE_ERROR("Cache directory " + CacheDir +
                   " does not exist and cannot be created");
    }
    SmallString<64> CacheFilename(CacheDir);
    sys::path::append(CacheFilename, ModuleID);
    std::error_code EC;
    raw_fd_ostream ObjFile(CacheFilename.c_str(), EC);
    if (EC) {
      CREATE_ERROR(std::string("Cannot write to cache file ") +
                   CacheFilename.c_str() + ": " + EC.message());
    }
    ObjFile << ObjBuffer.getBuffer();
    SVM_DEBUG(dbgs() << ModuleID << " added to disk cache "
                     << CacheFilename.c_str() << "\n");
  }
}

std::unique_ptr<MemoryBuffer>
ScillaObjCache::getObject(const std::string &ModuleID) {
  auto I = CachedObjects.find(ModuleID);
  if (I == CachedObjects.end()) {
    SVM_DEBUG(dbgs() << "Object file for " << ModuleID
                     << " not cached in memory.\n");

    if (CacheDir.empty())
      return nullptr;

    SmallString<64> CacheFilename(CacheDir);
    sys::path::append(CacheFilename, ModuleID);
    if (sys::fs::exists(CacheFilename)) {
      auto MB = MemoryBuffer::getFile(CacheFilename);
      if (auto Err = MB.getError()) {
        SVM_DEBUG(dbgs() << "Error loading object file from "
                         << CacheFilename.c_str() << "\n");
        return nullptr;
      }
      SVM_DEBUG(dbgs() << "Loaded object file from file "
                       << CacheFilename.c_str() << "\n");
      CachedObjects[ModuleID] = MemoryBuffer::getMemBufferCopy(
          (*MB)->getBuffer(), (*MB)->getBufferIdentifier());
      return std::move(*MB);
    }
    SVM_DEBUG(dbgs() << "Object file for " << ModuleID
                     << " not cached on disk.\n");
    return nullptr;
  }

  SVM_DEBUG(dbgs() << "Object for " << ModuleID
                   << " loaded from memory cache.\n");
  return MemoryBuffer::getMemBufferCopy(I->second->getBuffer());
}

std::unique_ptr<MemoryBuffer> ScillaObjCache::getObject(const Module *M) {
  return getObject(M->getModuleIdentifier());
}

#undef DEBUG_TYPE

// Constructor for memory + disk cache.
ScillaCacheManager::ScillaCacheManager(const std::string &CacheDir)
    : SOC(std::make_unique<ScillaObjCache>(CacheDir)) {}
// Constructor for memory only cache.
ScillaCacheManager::ScillaCacheManager()
    : SOC(std::make_unique<ScillaObjCache>()) {}
ScillaCacheManager::~ScillaCacheManager() = default;

using namespace orc;

void ScillaJIT::init() {
  InitializeNativeTarget();
  InitializeNativeTargetAsmPrinter();
}

std::unique_ptr<ScillaJIT> ScillaJIT::create(const ScillaParams &SPs,
                                             const std::string &FileName,
                                             const Json::Value &ContrParams,
                                             ScillaCacheManager *OC) {

  auto MemBuf = MemoryBuffer::getFile(FileName);
  if (auto Err = MemBuf.getError()) {
    CREATE_ERROR(Err.message());
  }

  // Let's build the ModuleID, which will be the filename without
  // any path prefixes, but extension replace with ".scilla_cache".
  SmallString<64> FNSS(FileName);
  sys::path::replace_extension(FNSS, ".scilla_cache");
  std::string ModuleID = sys::path::filename(FNSS.c_str());

  return create(SPs, (*MemBuf).get(), ModuleID, ContrParams, OC);
}

std::unique_ptr<ScillaJIT> ScillaJIT::create(const ScillaParams &SPs,
                                             const std::string &IR,
                                             const std::string &ModuleID,
                                             const Json::Value &ContrParams,
                                             ScillaCacheManager *OC) {
  auto MemBuf = MemoryBuffer::getMemBuffer(IR);
  return create(SPs, MemBuf.get(), ModuleID, ContrParams, OC);
}

std::unique_ptr<ScillaJIT> ScillaJIT::create(const ScillaParams &SPs,
                                             llvm::MemoryBuffer *MemBuf,
                                             const std::string &ModuleID,
                                             const Json::Value &ContrParams,
                                             ScillaCacheManager *SCM) {

  ScillaObjCache *OC = SCM ? SCM->SOC.get() : nullptr;

  // Create an LLJIT instance with a custom CompileFunction and
  // ObjectLinkingLayer.
  auto J =
      LLJITBuilder()
          .setCompileFunctionCreator(
              [&](JITTargetMachineBuilder JTMB)
                  -> Expected<std::unique_ptr<IRCompileLayer::IRCompiler>> {
                auto TM = JTMB.createTargetMachine();
                if (!TM)
                  return TM.takeError();
                return std::make_unique<TMOwningSimpleCompiler>(std::move(*TM),
                                                                OC);
              })
          .setObjectLinkingLayerCreator([&](ExecutionSession &ES,
                                            const Triple &TT)
                                            -> std::unique_ptr<ObjectLayer> {
            // Except for the GDBListener registration, the rest of
            // the code is taken from LLJIT.cpp.
            auto GetMemMgr = []() {
              return std::make_unique<SectionMemoryManager>();
            };
            auto ObjLinkingLayer = std::make_unique<RTDyldObjectLinkingLayer>(
                ES, std::move(GetMemMgr));
            if (TT.isOSBinFormatCOFF()) {
              ObjLinkingLayer->setOverrideObjectFlagsWithResponsibilityFlags(
                  true);
              ObjLinkingLayer->setAutoClaimResponsibilityForObjectSymbols(true);
            }
            auto GDBListener =
                JITEventListener::createGDBRegistrationListener();
            using namespace std::placeholders;
            ObjLinkingLayer->setNotifyLoaded(
                std::bind(&JITEventListener::notifyObjectLoaded, GDBListener,
                          _1, _2, _3));
            return ObjLinkingLayer;
          })
          .create();

  if (auto Err = J.takeError())
    CREATE_ERROR(llvm::toString(std::move(Err)));

  if (auto Err = addScillaBuiltins(*(*J), (*J)->getDataLayout()))
    CREATE_ERROR(llvm::toString(std::move(Err)));

  auto *THIS = new ScillaJIT(SPs, std::move(*J));
  auto Ctx = std::make_unique<LLVMContext>();

  std::unique_ptr<llvm::MemoryBuffer> Obj =
      OC ? OC->getObject(ModuleID) : nullptr;
  if (Obj) {
    // We have the object file for this IR module in cache.
    if (auto Err = THIS->Jitter->addObjectFile(std::move(Obj))) {
      CREATE_ERROR(llvm::toString(std::move(Err)));
    }
  } else {
    // IR module not in cache. Parse and compile it.
    SMDiagnostic Smd;
    std::unique_ptr<llvm::Module> M =
        parseIR(MemBuf->getMemBufferRef(), Smd, *Ctx);
    if (!M) {
      std::string ErrMsg;
      raw_string_ostream OS(ErrMsg);
      Smd.print("scilla-vm", OS);
      auto Err = createStringError(inconvertibleErrorCode(), OS.str().c_str());
      CREATE_ERROR(llvm::toString(std::move(Err)));
    }
    M->setModuleIdentifier(ModuleID);
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

  // Initialize contract parameters.
  THIS->initContrParams(ContrParams);

  return std::unique_ptr<ScillaJIT>(THIS);
}

// We assume that the init JSON is "correct" and has all
// implicit and explicitly defined parameters with right types.
void ScillaJIT::initContrParams(const Json::Value &CP) {
  if (CP.empty()) {
    // Executing pure expressions won't have an init.json.
    return;
  }

  auto ErrMsg = "Invalid init JSON when initializing contract parameters";
  if (!CP.isArray()) {
    CREATE_ERROR(ErrMsg);
  }
  auto AllTyDescrs = reinterpret_cast<const ScillaTypes::Typ **>(
      getAddressFor("_tydescr_table"));
  auto TyDescrsLen =
      *reinterpret_cast<int *>(getAddressFor("_tydescr_table_length"));

  for (Json::Value::const_iterator PJ = CP.begin(); PJ != CP.end(); PJ++) {
    if (!PJ->isObject()) {
      CREATE_ERROR(ErrMsg);
    }
    auto &VName = (*PJ)["vname"];
    auto &Type = (*PJ)["type"];
    auto &Value = (*PJ)["value"];
    if (!VName.isString() || !Type.isString() || Value.isNull()) {
      CREATE_ERROR(ErrMsg);
    }

    // TODO: The compiler doesn't set support BNum types.
    if (VName.asString() == "_creation_block")
      continue;

    auto *T = ScillaTypes::Typ::fromString(TPPC.get(), AllTyDescrs, TyDescrsLen,
                                           Type.asString());
    SAllocator SA = std::bind(&ScillaJIT::sAlloc, this, ph::_1);
    void *P = (getAddressFor(VName.asString()));
    if (ScillaTypes::Typ::isBoxed(T)) {
      // Boxed types are just pointers.
      *reinterpret_cast<void **>(P) = ScillaValues::fromJSON(SA, T, Value);
    } else {
      // We create the ScillaValue in place.
      ScillaValues::fromJSONToMem(SA, P, ScillaTypes::Typ::sizeOf(T), T, Value);
    }
  }
}

uint64_t *ScillaJIT::initGasAndLibs(uint64_t GasLimit) {
  // Set gas limit in the JIT'ed code module.
  auto GasRemPtr = reinterpret_cast<uint64_t *>(getAddressFor("_gasrem"));
  *GasRemPtr = GasLimit;

  // Call the library initialisation function.
  auto initLibs =
      reinterpret_cast<void (*)()>(getAddressFor("_init_libs"));
  initLibs();

  return GasRemPtr;
}

Json::Value ScillaJIT::initState(uint64_t GasLimit) {

  auto GasRemPtr = initGasAndLibs(GasLimit);

  // Let's setup the TransitionState for this transition.
  TS = std::make_unique<TransitionState>("0", "0", GasRemPtr);
  auto fIS = reinterpret_cast<void (*)(void)>(getAddressFor("_init_state"));
  fIS();
  return TS->finalize();
}

uint64_t ScillaJIT::getGasRem() {
  return *reinterpret_cast<uint64_t *>(getAddressFor("_gasrem"));
}

void *ScillaJIT::getAddressFor(const std::string &Symbol) {

  auto SA = Jitter->lookup(Symbol);
  if (auto Err = SA.takeError()) {
    CREATE_ERROR(llvm::toString(std::move(Err)));
  }

  return reinterpret_cast<void *>((*SA).getAddress());
}

void *MemoryAllocator::mAlloc(size_t size) {
  auto P = new uint8_t[size];
  MAllocs.push_back(P);
  return reinterpret_cast<void *>(P);
}

void MemoryAllocator::mFreeAll() {
  for (auto *P : MAllocs) {
    delete[] P;
  }
  MAllocs.clear();
}

MemoryAllocator::~MemoryAllocator() { mFreeAll(); }

void *ScillaJIT::sAlloc(size_t size) { return MA.mAlloc(size); }

void ScillaJIT::sFreeAll() { MA.mFreeAll(); }

ScillaJIT::ScillaJIT(const ScillaParams &SPs, std::unique_ptr<LLJIT> J)
    : Jitter(std::move(J)), SPs(SPs) {}

ScillaJIT::~ScillaJIT() {}

Json::Value ScillaJIT::execMsg(const std::string &Balance, uint64_t GasLimit,
                               Json::Value &Msg) {
  Json::Value TransNameJ = Msg.get("_tag", Json::nullValue);
  Json::Value ParamsJ = Msg.get("params", Json::nullValue);
  Json::Value SenderJ = Msg.get("_sender", Json::nullValue);
  Json::Value AmountJ = Msg.get("_amount", Json::nullValue);
  if (!TransNameJ.isString() || !ParamsJ.isArray() || !SenderJ.isString() ||
      !AmountJ.isString())
    CREATE_ERROR("Invalid Message");

  auto GasRemPtr = initGasAndLibs(GasLimit);

  // Let's setup the TransitionState for this transition.
  TS =
      std::make_unique<TransitionState>(Balance, AmountJ.asString(), GasRemPtr);

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
  SAllocator SA = std::bind(&ScillaJIT::sAlloc, this, ph::_1);
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
  return TS->finalize();
}

} // namespace ScillaVM