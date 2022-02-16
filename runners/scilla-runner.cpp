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

#include "ScillaRTL/DLog.h"
#include "ScillaRTL/Errors.h"
#include "ScillaRTL/ScillaExec.h"
#include "ScillaRTL/Utils.h"

using namespace ScillaRTL;

namespace {

namespace po = boost::program_options;

void parseCLIArgs(int argc, char *argv[], po::variables_map &VM) {
  auto UsageString = "Usage: " + std::string(argv[0]) +
                     " [option...] -i input_contract.ll -n init.json -g "
                     "gaslimit -b blockchain.json [-c contract_info.json] [-m "
                     "message.json] [-s state.json]"
                     "\nSupported options";
  po::options_description Desc(UsageString);

  // clang-format off
  Desc.add_options()
    ("input-contract,i", po::value<std::string>(), "Specify compiled Scilla contract file")
    ("init,n", po::value<std::string>(), "Specify init JSON to initialize contract parameters")
    ("message,m", po::value<std::string>(), "Specify the message JSON to be executed")
    ("state,s", po::value<std::string>(), "Specify the JSON to use as initial state")
    ("blockchain,b", po::value<std::string>(), "Specify the JSON to use for blockchain reads")
    ("gaslimit,g", po::value<uint64_t>(), "Gas limit")
    ("contract-info,c", po::value<std::string>(), "Specify the contract info JSON from checker")
    ("output-file,o", po::value<std::string>(), "Specify output filename")
    ("dlog", "Enable full logging (debug builds only)")
    ("dlog-only",
         po::value<std::vector<std::string> >(),
         "SRTL_DLOG_TYPE to activate for logging (debug builds only")
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

  // Ensure that input files are provided.
  if (!VM.count("input-contract") || !VM.count("init") ||
      !VM.count("blockchain") || !VM.count("gaslimit")) {
    std::cerr << "Missing mandatory command line arguments\n" << Desc << "\n";
    exit(EXIT_FAILURE);
  }

  // Absence of message indicates deployment, which requires contract-info.
  if ((!VM.count("message") && !VM.count("contract-info")) ||
      (VM.count("message") && !VM.count("state"))) {
    std::cerr
        << "Deployment: Mandatory contract-info JSON. Optional state JSON.\n"
           "Transition: Mandatory message and state JSONs\n";
    exit(EXIT_FAILURE);
  }
}

} // end of anonymous namespace

int main(int argc, char *argv[]) {

  po::variables_map VM;
  parseCLIArgs(argc, argv, VM);

  if (VM.count("dlog")) {
    ScillaRTL::enableAllDLogTypes();
  } else if (VM.count("dlog-only")) {
    auto &DTs = VM["dlog-only"].as<std::vector<std::string>>();
    for (auto &DT : DTs) {
      ScillaRTL::addToCurrentDLogTypes(DT);
    }
  }

  MemStateServer State;
  namespace ph = std::placeholders;
  ScillaParams::FetchState_Type fetchStateValue = std::bind(
      &MemStateServer::fetchStateValue, &State, ph::_1, ph::_2, ph::_3);
  ScillaParams::FetchRemoteState_Type fetchRemoteStateValue =
      std::bind(&MemStateServer::fetchRemoteStateValue, &State, ph::_1, ph::_2,
                ph::_3, ph::_4, ph::_5);
  ScillaParams::UpdateState_Type updateStateValue =
      std::bind(&MemStateServer::updateStateValue, &State, ph::_1, ph::_2);
  ScillaParams::FetchBCInfo_Type fetchBlockchainInfo = std::bind(
      &MemStateServer::fetchBlockchainInfo, &State, ph::_1, ph::_2, ph::_3);
  ScillaParams SP(fetchStateValue, fetchBlockchainInfo, fetchRemoteStateValue,
                  updateStateValue);

  std::string OutputS;
  try {
    // Prepare all inputs.
    auto InputFilename = VM["input-contract"].as<std::string>();
    auto InitFilename = VM["init"].as<std::string>();
    auto GasLimit = VM["gaslimit"].as<uint64_t>();
    auto BCFilename = VM["blockchain"].as<std::string>();

    // Tool to compile the LLVM-IR to a binary shared object.
    CompileLLVMToTempSO CSO(InputFilename);
    // Parse the init JSON and blockchain JSONs
    auto IJ = parseJSONFile(InitFilename);
    auto BCJ = parseJSONFile(BCFilename);

    // If there's a contract-info provided, use its field name / type info.
    if (VM.count("contract-info")) {
      auto ContrInfoFilename = VM["contract-info"].as<std::string>();
      auto CIJ = parseJSONFile(ContrInfoFilename);
      State.initFieldTypes(IJ, CIJ);
    }

    std::string Balance = "0";
    // If there's a state JSON, use it to fill our state server.
    if (VM.count("state")) {
      // Update our in-memory state table with the one from the JSONs.
      auto StateFilename = VM["state"].as<std::string>();
      auto SJ = parseJSONFile(StateFilename);
      Balance = State.initState(IJ, SJ, BCJ);
    }

    // Create JIT engine.
    ScillaContrExec JE(SP, CSO.compile());
    Json::Value OutJ;
    if (VM.count("message")) {
      // Transition execution
      auto MessageFilename = VM["message"].as<std::string>();
      auto MJ = parseJSONFile(MessageFilename);
      // Execute message
      OutJ = JE.execMsg(Balance, GasLimit, IJ, MJ);
    } else {
      // Deployment
      OutJ = JE.deploy(IJ, GasLimit);
    }

    auto OSJ = State.dumpToJSON();
    // Append states to our main output.
    for (auto &S : OSJ)
      OutJ["states"].append(S);

    // Append output to the Scilla output object for printing later.
    OutputS += prettyPrintJSON(OutJ);
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
      OFile << OutputS;
      if (OFile.bad()) {
        std::cerr << "Error writing to output file " << OutputFilename << "\n";
        return EXIT_FAILURE;
      }
    }
  } else {
    std::cout << OutputS;
  }

  return EXIT_SUCCESS;
}
