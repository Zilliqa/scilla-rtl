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
#include "llvm/ExecutionEngine/Orc/CompileUtils.h"
#include "llvm/ExecutionEngine/Orc/Core.h"
#include "llvm/ExecutionEngine/Orc/ExecutionUtils.h"
#include "llvm/ExecutionEngine/Orc/IRCompileLayer.h"
#include "llvm/ExecutionEngine/Orc/IRTransformLayer.h"
#include "llvm/ExecutionEngine/Orc/JITTargetMachineBuilder.h"
#include "llvm/ExecutionEngine/Orc/RTDyldObjectLinkingLayer.h"
#include "llvm/ExecutionEngine/SectionMemoryManager.h"
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

#include "../libsrtl/scilla_functions.h"
#include "scillavm/jitd.h"

namespace llvm {
namespace orc {

// This class is taken from the "Building a JIT" tutorial.
class ScillaJIT {
private:
  ExecutionSession ES;
  RTDyldObjectLinkingLayer ObjectLayer;
  IRCompileLayer CompileLayer;
  IRTransformLayer OptimizeLayer;

  DataLayout DL;
  MangleAndInterner Mangle;
  ThreadSafeContext Ctx;

public:
  ScillaJIT(JITTargetMachineBuilder JTMB, DataLayout DL)
      : ObjectLayer(ES,
                    []() { return llvm::make_unique<SectionMemoryManager>(); }),
        CompileLayer(ES, ObjectLayer, ConcurrentIRCompiler(std::move(JTMB))),
        OptimizeLayer(ES, CompileLayer, optimizeModule), DL(std::move(DL)),
        Mangle(ES, this->DL), Ctx(llvm::make_unique<LLVMContext>()) {

    ES.getMainJITDylib().setGenerator(
        cantFail(DynamicLibrarySearchGenerator::GetForCurrentProcess(
            DL.getGlobalPrefix())));

    SymbolMap M;
    // Register every symbol that can be accessed from the JIT'ed code.
    auto ScillaFuncs = scilla_vm::getAllScillaFunctions();
    for (auto fa : ScillaFuncs) {
      M[Mangle(fa.FName)] = JITEvaluatedSymbol(
          pointerToJITTargetAddress(fa.FAddr), JITSymbolFlags());
    }
    cantFail(ES.getMainJITDylib().define(absoluteSymbols(M)));
  }

  const DataLayout &getDataLayout() const { return DL; }

  LLVMContext &getContext() { return *Ctx.getContext(); }

  static Expected<std::unique_ptr<ScillaJIT>> Create() {
    auto JTMB = JITTargetMachineBuilder::detectHost();

    if (!JTMB)
      return JTMB.takeError();

    auto DL = JTMB->getDefaultDataLayoutForTarget();
    if (!DL)
      return DL.takeError();

    return llvm::make_unique<ScillaJIT>(std::move(*JTMB), std::move(*DL));
  }

  Error addModule(std::unique_ptr<Module> M) {
    return OptimizeLayer.add(ES.getMainJITDylib(),
                             ThreadSafeModule(std::move(M), Ctx));
  }

  Expected<JITEvaluatedSymbol> lookup(StringRef Name) {
    return ES.lookup({&ES.getMainJITDylib()}, Mangle(Name.str()));
  }

private:
  static Expected<ThreadSafeModule>
  optimizeModule(ThreadSafeModule TSM, const MaterializationResponsibility &R) {

    (void)R; // A dummy use to prevent warnings over R not being used.

    // Create a function pass manager.
    auto FPM = llvm::make_unique<legacy::FunctionPassManager>(TSM.getModule());

    // Add some optimizations.
    FPM->add(createPromoteMemoryToRegisterPass());
    FPM->add(createAggressiveDCEPass());
    FPM->add(createInstructionCombiningPass());
    FPM->add(createReassociatePass());
    FPM->add(createGVNPass());
    FPM->add(createCFGSimplificationPass());
    FPM->doInitialization();

    // Run the optimizations over all functions in the module being added to
    // the JIT.
    for (auto &F : *TSM.getModule())
      FPM->run(F);

    return std::move(TSM);
  }
};

} // end namespace orc
} // end namespace llvm

namespace scilla_vm {

// One time initialization.
void initScillaJIT() {
  llvm::InitializeAllTargets();
  llvm::InitializeAllTargetMCs();
  llvm::InitializeAllAsmParsers();
  llvm::InitializeAllAsmPrinters();
  llvm::InitializeAllTargetInfos();
}

// Compile LLVM-IR from a file @Filename and return handle to @FuncName
llvm::Expected<void *> compileLLVMFile(const std::string &Filename,
                                       const std::string &FuncName) {

  auto JitterOrError = llvm::orc::ScillaJIT::Create();
  if (auto Err = JitterOrError.takeError()) {
    return std::move(Err);
  }
  auto Jitter = std::move(*(JitterOrError));

  auto &Ctx = Jitter->getContext();
  llvm::SMDiagnostic Smd;
  auto M = llvm::parseIRFile(Filename, Smd, Ctx);
  if (!M) {
    std::string ErrMsg;
    llvm::raw_string_ostream OS(ErrMsg);
    Smd.print("scilla-vm", OS);
    auto Err = llvm::make_error<llvm::StringError>(
        OS.str(), std::make_error_code(std::errc::invalid_argument));
    return std::move(Err);
  }

  if (auto Err = Jitter->addModule(std::move(M))) {
    return std::move(Err);
  }

  auto fref = Jitter->lookup(FuncName);
  if (auto Err = fref.takeError()) {
    return std::move(Err);
  }

  if (!(*fref)) {
    auto Err = llvm::make_error<llvm::StringError>(
        "Function " + FuncName + " not found",
        std::make_error_code(std::errc::invalid_argument));
    return std::move(Err);
  }

  return reinterpret_cast<void *>((*fref).getAddress());
}

} // namespace scilla_vm