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
#include <iostream>

#include "llvm/Support/CommandLine.h"
#include "llvm/Support/raw_ostream.h"

#include "ScillaVM/Errors.h"
#include "ScillaVM/JITD.h"
#include "ScillaVM/SRTL.h"

using namespace llvm;
using namespace ScillaVM;

namespace {

// Command line arguments parsed using LLVM's command line parser.
cl::opt<std::string> InputFilename(cl::Positional, cl::desc("<input file>"),
                                   cl::Required);
cl::opt<std::string> OutputFilename("o", cl::desc("Specify output filename"),
                                    cl::value_desc("filename"));
void versionPrinter(llvm::raw_ostream &OS) { OS << "expr-runner: v0.0.0\n"; }

ExitOnError ExitOnErr;

} // end of anonymous namespace

int main(int argc, char *argv[]) {
  cl::SetVersionPrinter(versionPrinter);
  cl::ParseCommandLineOptions(argc, argv);

  ScillaJIT::init();
  auto SJ = ExitOnErr(ScillaJIT::create(InputFilename));
  auto ScillaMainAddr = ExitOnErr(SJ->getAddressFor("scilla_main"));
  auto ScillaMain = reinterpret_cast<void (*)()>(ScillaMainAddr);

  ScillaStdout.clear();
  try {
    ScillaMain();
  } catch (ScillaError &e) {
    std::cerr << e.Msg << "\n";
    return EXIT_FAILURE;
  }
  std::cout << ScillaStdout;

  return EXIT_SUCCESS;
}
