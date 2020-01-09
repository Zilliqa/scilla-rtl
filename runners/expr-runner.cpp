/*
 * Copyright (C) 2020 Zilliqa
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

#include <functional>

#include "llvm/Support/CommandLine.h"
#include "llvm/Support/raw_ostream.h"

#include "scillavm/jitd.h"

using namespace llvm;

namespace scilla_vm {

namespace expr_runner {

// Command line arguments parsed using LLVM's command line parser.
cl::opt<std::string> InputFilename(cl::Positional, cl::desc("<input file>"),
                                   cl::Required);
cl::opt<std::string> OutputFilename("o", cl::desc("Specify output filename"),
                                    cl::value_desc("filename"));
void versionPrinter(llvm::raw_ostream &OS) { OS << "expr-runner: v0.0.0\n"; }

ExitOnError ExitOnErr;

} // end namespace expr_runner
} // end namespace scilla_vm

#include <iostream>

using namespace scilla_vm::expr_runner;

int main(int argc, char *argv[]) {
  cl::SetVersionPrinter(scilla_vm::expr_runner::versionPrinter);
  cl::ParseCommandLineOptions(argc, argv);

  scilla_vm::initScillaJIT();

  auto ScillaMainOrError =
      scilla_vm::compileLLVMFile(InputFilename, "scilla_main");
  if (auto Err = ScillaMainOrError.takeError()) {
    ExitOnErr(std::move(Err));
  }

  // auto ScillaMain = reinterpret_cast<void(*)()> (*ScillaMainOrError);
  // ScillaMain();

  return EXIT_SUCCESS;
}
