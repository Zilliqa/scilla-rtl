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
#include "llvm/ExecutionEngine/Orc/LLJIT.h"
#include "llvm/ExecutionEngine/Orc/JITTargetMachineBuilder.h"
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

#include "../libsrtl/ScillaBuiltins.h"
#include "ScillaVM/JITD.h"

using namespace llvm;

namespace {

// Add functions in SRTL that the JIT'ed code can access.
Error addScillaBuiltins(orc::ExecutionSession &ES, const DataLayout &DL) {
  orc::SymbolMap M;
  orc::MangleAndInterner Mangle (ES, DL);
  // Register every symbol that can be accessed from the JIT'ed code.
  auto ScillaFuncs = ScillaVM::getAllScillaFunctions();
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

std::unique_ptr<MemoryBuffer> ScillaObjCache::getObject(const Module *M){
  auto I = CachedObjects.find(M->getModuleIdentifier());
  if (I == CachedObjects.end()) {
    dbgs() << "No object for " << M->getModuleIdentifier()
            << " in cache. Compiling.\n";
    return nullptr;
  }

  dbgs() << "Object for " << M->getModuleIdentifier()
          << " loaded from cache.\n";
  return MemoryBuffer::getMemBuffer(I->second->getMemBufferRef());
}

using namespace orc;

// One time initialization.
void ScillaJIT::init() {
  InitializeNativeTarget();
  InitializeNativeTargetAsmPrinter();
}

// JIT Compile LLVM-IR @FileName. Optionally, a cache manager can be provided.
Expected<std::unique_ptr<ScillaJIT>>
ScillaJIT::Create(std::string &Filename, ObjectCache *OC) {

  // Create an LLJIT instance with a custom CompileFunction.
  auto J = 
      orc::LLJITBuilder()
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

  if (!J)
    return std::move(J.takeError());

  if (auto Err = addScillaBuiltins((*J)->getExecutionSession(), (*J)->getDataLayout()))
    return std::move(Err);

  auto *THIS = new ScillaJIT(std::move(*J), OC);

  auto Ctx = llvm::make_unique<LLVMContext>();
  SMDiagnostic Smd;
  auto M = parseIRFile(Filename, Smd, *Ctx);
  if (!M) {
    std::string ErrMsg;
    raw_string_ostream OS(ErrMsg);
    Smd.print("scilla-vm", OS);
    auto Err = make_error<StringError>(
        OS.str(), std::make_error_code(std::errc::invalid_argument));
    return std::move(Err);
  }

  ThreadSafeModule TSM(std::move(M), std::move(Ctx));
  if (auto Err = THIS->Jitter->addIRModule(std::move(TSM))) {
    return std::move(Err);
  }

  return std::unique_ptr<ScillaJIT>(THIS);
}

Expected<void *> ScillaJIT::getAddressFor(const std::string &Symbol) {

  auto SA = Jitter->lookup(Symbol);
  if (auto Err = SA.takeError()) {
    return std::move(Err);
  }

  return reinterpret_cast<void *>((*SA).getAddress());
}

} // namespace ScillaVM