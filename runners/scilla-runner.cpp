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

#include <boost/program_options.hpp>
#include <fstream>
#include <iostream>

#include "ScillaVM/Debug.h"
#include "ScillaVM/Errors.h"
#include "ScillaVM/JITD.h"
#include "ScillaVM/SRTL.h"
#include "ScillaVM/Utils.h"

using namespace ScillaVM;

namespace {

namespace po = boost::program_options;

void parseCLIArgs(int argc, char *argv[], po::variables_map &VM) {
  auto UsageString = "Usage: " + std::string(argv[0]) +
                     " [option...] -i input_contract.ll -m message.json -s "
                     "state.json -c contract_info.json" +
                     " -n init.json"
                     "\nSupported options";
  po::options_description Desc(UsageString);

  // clang-format off
  Desc.add_options()
    ("input-contract,i", po::value<std::string>(), "Specify compiled Scilla contract file")
    ("init,n", po::value<std::string>(), "Specify init JSON to initialize contract parameters")
    ("message,m", po::value<std::string>(), "Specify the message JSON to be executed")
    ("state,s", po::value<std::string>(), "Specify the JSON to use as initial state")
    ("contract-info,c", po::value<std::string>(), "Specify the contract info JSON from checker")
    ("output-file,o", po::value<std::string>(), "Specify output filename")
    ("debug", "Enable full logging (debug builds only)")
    ("debug-only",
         po::value<std::vector<std::string> >(),
         "DEBUG_TYPE to activate for logging (debug builds only")
    ("help,h", "Print help message")
    ("version,v", "Print version")
  ;
  // clang-format on

  try {
    po::store(po::command_line_parser(argc, argv).options(Desc).run(), VM);
    po::notify(VM);
  } catch (std::exception &e) {
    std::cerr << e.what() << "\n";
    std::cerr << Desc << "\n";
    exit(EXIT_FAILURE);
  }

  if (VM.count("help")) {
    std::cerr << Desc << "\n";
    exit(EXIT_SUCCESS);
  }

  // Ensure that an input file is provided.
  if (!VM.count("input-contract") || !VM.count("message") ||
      !VM.count("init") || !VM.count("contract-info") || !VM.count("state")) {
    std::cerr << "Missing mandatory command line arguments\n" << Desc << "\n";
    exit(EXIT_FAILURE);
  }
}

} // end of anonymous namespace

int main(int argc, char *argv[]) {

  po::variables_map VM;
  parseCLIArgs(argc, argv, VM);

  if (VM.count("debug")) {
    ScillaVM::enableAllDebugTypes();
  } else if (VM.count("debug-only")) {
    auto &DTs = VM["debug-only"].as<std::vector<std::string>>();
    for (auto &DT : DTs) {
      ScillaVM::addToCurrentDebugTypes(DT);
    }
  }

  MemStateServer State;
  namespace ph = std::placeholders;
  ScillaParams::FetchState_Type fetchStateValue = std::bind(
      &MemStateServer::fetchStateValue, &State, ph::_1, ph::_2, ph::_3);
  ScillaParams::UpdateState_Type updateStateValue =
      std::bind(&MemStateServer::updateStateValue, &State, ph::_1, ph::_2);
  ScillaParams SP(fetchStateValue, updateStateValue);

  ScillaJIT::init();

  ScillaStdout.clear();
  try {
    // Prepare all inputs.
    auto InputFilename = VM["input-contract"].as<std::string>();
    auto InitFilename = VM["init"].as<std::string>();
    auto MessageFilename = VM["message"].as<std::string>();
    auto StateFilename = VM["state"].as<std::string>();
    auto ContrInfoFilename = VM["contract-info"].as<std::string>();
    auto MJ = parseJSONFile(MessageFilename);
    auto IJ = parseJSONFile(InitFilename);
    auto SJ = parseJSONFile(StateFilename);
    auto CIJ = parseJSONFile(ContrInfoFilename);
    // Update our in-memory state table with the one from the JSONs.
    auto Balance = State.initFromJSON(SJ, CIJ);

    // Create a JIT engine and execute the message.
    auto JE = ScillaJIT::create(SP, InputFilename, IJ);
    auto OutJ = JE->execMsg(Balance, 0, MJ);
    auto OSJ = State.dumpToJSON();
    // Append states to our main output.
    for (auto &S : OSJ)
      OutJ["states"].append(S);

    // Append output to the Scilla output object for printing later.
    ScillaStdout += OutJ.toStyledString();
  } catch (const ScillaError &e) {
    std::cerr << e.toString() << "\n";
    return EXIT_FAILURE;
  }

  if (VM.count("output-file")) {
    auto OutputFilename = VM["output-file"].as<std::string>();
    std::ofstream OFile(OutputFilename);
    if (!OFile) {
      std::cerr << "Error opening output file " << OutputFilename << "\n";
      return EXIT_FAILURE;
    } else {
      OFile << ScillaStdout;
      if (OFile.bad()) {
        std::cerr << "Error writing to output file " << OutputFilename << "\n";
        return EXIT_FAILURE;
      }
    }
  } else {
    std::cout << ScillaStdout;
  }

  return EXIT_SUCCESS;
}
