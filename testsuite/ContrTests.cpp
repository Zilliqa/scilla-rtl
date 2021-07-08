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

#include <boost/filesystem.hpp>
#include <boost/test/tools/output_test_stream.hpp>
#include <boost/test/unit_test.hpp>
using boost::test_tools::output_test_stream;

#include <ScillaRTL/Errors.h>
#include <ScillaRTL/ScillaExec.h>
#include <ScillaRTL/Utils.h>

#include "StateJsonUtils.h"
#include "Testsuite.h"

using namespace ScillaRTL;
using namespace ScillaTestsuite;

namespace {

struct ContractTest {
  struct Input {
    // ID is for diagnostic purposes, an ID / name for this input.
    std::string ID;
    std::string MessageFilename;
    std::string InitFilename;
    std::string ContrInfoFilename;
    std::string StateFilename;
    std::string ExpectedStateFilename;
    std::string ExpectedOutputFilename;
    std::string BCFilename;
  };
  std::string ContrFilename;
  std::vector<Input> Inputs;
};

// Give a file foo.ll, return foo.dbg.ll.
std::string deriveDbgFilename(std::string Filename) {
  auto BaseName = boost::filesystem::basename(Filename);
  auto Extension = boost::filesystem::extension(Filename);
  return BaseName + ".dbg" + Extension;
}

// MessageFilename.empty() => deploy.
//  CommonJIT => A common JIT object is created for all messages.
// !CommonJIT => Each message is executed with its own unique JIT object.
void testMessagesHelper(const ContractTest &CT, bool CommonJIT) {
  MemStateServer State;
  namespace ph = std::placeholders;
  ScillaParams::FetchState_Type fetchStateValue = std::bind(
      &MemStateServer::fetchStateValue, &State, ph::_1, ph::_2, ph::_3);
  ScillaParams::FetchRemoteState_Type fetchRemoteStateValue =
      std::bind(&MemStateServer::fetchRemoteStateValue, &State, ph::_1, ph::_2,
                ph::_3, ph::_4, ph::_5);
  ScillaParams::UpdateState_Type updateStateValue =
      std::bind(&MemStateServer::updateStateValue, &State, ph::_1, ph::_2);
  ScillaParams SP(fetchStateValue, fetchRemoteStateValue, updateStateValue);

  std::string PathPrefix = Config::TestsuiteSrc + "/contr/";
  // Tool to compile the LLVM-IR to a binary shared object.
  CompileLLVMToTempSO CSO(PathPrefix + CT.ContrFilename);

  std::unique_ptr<ScillaRTL::ScillaContrExec> JE;
  try {
    if (CommonJIT) {
      BOOST_TEST_CHECKPOINT("Creating common JIT for " + CT.ContrFilename);
      {
        ScopeTimer CreateTimer(CT.ContrFilename + ": ScillaExec::create");
        JE = std::make_unique<ScillaRTL::ScillaContrExec>(SP, CSO.compile());
      }
    }

    for (const auto &Input : CT.Inputs) {
      if (!CommonJIT) {
        BOOST_TEST_CHECKPOINT("Creating unique JIT for " + CT.ContrFilename);
        {
          ScopeTimer CreateTimer(CT.ContrFilename + ": ScillaExec::create");
          JE = std::make_unique<ScillaRTL::ScillaContrExec>(SP, CSO.compile());
        }
      }
      BOOST_TEST_MESSAGE("Testing " + CT.ContrFilename + " with input " +
                         Input.ID);
      Json::Value MessageJSON, InitJSON, BCJ;
      std::string Balance = "0";

      // Prepare all inputs.
      InitJSON = parseJSONFile(PathPrefix + Input.InitFilename);
      BCJ = parseJSONFile(PathPrefix + Input.BCFilename);
      uint64_t CurBlock = parseBlockchainJSON(BCJ);
      if (!Input.MessageFilename.empty()) {
        MessageJSON = parseJSONFile(PathPrefix + Input.MessageFilename);
      }

      // If there's a contract-info JSON, it'll give us field names and types.
      if (!Input.ContrInfoFilename.empty()) {
        auto ContrInfoJSON =
            parseJSONFile(PathPrefix + Input.ContrInfoFilename);
        State.initFieldTypes(InitJSON, ContrInfoJSON);
      }
      // Update our in-memory state table with the one from a state JSON.
      if (!Input.StateFilename.empty()) {
        auto StateJSON = parseJSONFile(PathPrefix + Input.StateFilename);
        Balance = State.initState(InitJSON, StateJSON);
      }
      // Let's execute.
      Json::Value OJ;
      {
        ScopeTimer ExecMsgTimer(CT.ContrFilename + ": ScillaExec::execMsg");
        if (Input.MessageFilename.empty()) {
          OJ = JE->deploy(InitJSON, Config::GasLimit, CurBlock);
        } else {
          OJ = JE->execMsg(Balance, Config::GasLimit, CurBlock, InitJSON,
                           MessageJSON);
        }
      }

      /////////// Output State //////////////////////////////////////////

      auto OSJ = State.dumpToJSON();
      // OJ will contain ["states"]._balance. Move that to state JSON.
      Json::Value &OJStates = OJ["states"];
      for (Json::Value &OJS : OJStates)
        OSJ.append(OJS);
      // We don't need "states" in the output JSON anymore.
      OJ.removeMember("states");
      // Sort the output state JSON.
      OSJ = canonicalizeStateVariables(OSJ);

      // Update results if specified
      if (Config::UpdateResults) {
        std::ofstream Out(PathPrefix + Input.ExpectedStateFilename);
        Out << OSJ.toStyledString();
        Out.close();
      }
      auto ESJ = parseJSONFile(PathPrefix + Input.ExpectedStateFilename);
      ESJ = canonicalizeStateVariables(ESJ);

      // Compare element-wise, the output state JSON and the expected state
      // JSON.
      checkEqStateVariables(ESJ, OSJ);

      ///////////// Transition Output ///////////////////////////////////

      // Update results if specified
      if (Config::UpdateResults) {
        std::ofstream Out(PathPrefix + Input.ExpectedOutputFilename);
        Out << OJ.toStyledString();
        Out.close();
      }
      auto EOJ = parseJSONFile(PathPrefix + Input.ExpectedOutputFilename);
      // Compare output to expected output.
      BOOST_CHECK_MESSAGE(EOJ == OJ, "Comparison failed:\nExpected:\n" +
                                         EOJ.toStyledString() + "\nGot:\n" +
                                         OJ.toStyledString());
    }
  } catch (const ScillaError &E) {
    BOOST_FAIL(E.toString());
  }
}

// Calls testMessageHelper for both .ll and .dbg.ll files,
// extracting the information from `ContrFilename`.
void testMessages(const ContractTest &CT, bool CommonJIT) {
  BOOST_TEST_CHECKPOINT("Testing " + CT.ContrFilename +
                        " with non-debug LLVM-IR");
  testMessagesHelper(CT, CommonJIT);
  BOOST_TEST_CHECKPOINT("Testing " + CT.ContrFilename + " with debug LLVM-IR");
  auto CTDbg(CT);
  deriveDbgFilename(CTDbg.ContrFilename);
  testMessagesHelper(CTDbg, CommonJIT);
}

void testMessageFail(const std::string &ContrFilename,
                     const std::string &MessageFilename,
                     const std::string &InitFilename,
                     const std::string &ContrInfoFilename,
                     const std::string &StateFilename,
                     const std::string &ExpectedOutputFilename,
                     const std::string &BCFilename) {
  MemStateServer State;
  namespace ph = std::placeholders;
  ScillaParams::FetchState_Type fetchStateValue = std::bind(
      &MemStateServer::fetchStateValue, &State, ph::_1, ph::_2, ph::_3);
  ScillaParams::FetchRemoteState_Type fetchRemoteStateValue =
      std::bind(&MemStateServer::fetchRemoteStateValue, &State, ph::_1, ph::_2,
                ph::_3, ph::_4, ph::_5);
  ScillaParams::UpdateState_Type updateStateValue =
      std::bind(&MemStateServer::updateStateValue, &State, ph::_1, ph::_2);
  ScillaParams SP(fetchStateValue, fetchRemoteStateValue, updateStateValue);

  std::string PathPrefix = Config::TestsuiteSrc + "/contr/";
  // Tool to compile the LLVM-IR to a binary shared object.
  CompileLLVMToTempSO CSO(PathPrefix + ContrFilename);

  Json::Value MessageJSON, InitJSON, BCJ;
  std::string Balance = "0";

  std::unique_ptr<ScillaRTL::ScillaContrExec> JE;
  bool CaughtException = false;
  try {
    // Prepare all inputs.
    InitJSON = parseJSONFile(PathPrefix + InitFilename);
    BCJ = parseJSONFile(PathPrefix + BCFilename);
    if (!MessageFilename.empty()) {
      MessageJSON = parseJSONFile(PathPrefix + MessageFilename);
    }
    // If there's a contract-info JSON, it'll give us field names and types.
    if (!ContrInfoFilename.empty()) {
      auto ContrInfoJSON = parseJSONFile(PathPrefix + ContrInfoFilename);
      State.initFieldTypes(InitJSON, ContrInfoJSON);
    }
    // Update our in-memory state table with the one from a state JSON.
    if (!StateFilename.empty()) {
      auto StateJSON = parseJSONFile(PathPrefix + StateFilename);
      Balance = State.initState(InitJSON, StateJSON);
    }
    uint64_t CurBlock = parseBlockchainJSON(BCJ);
    // Create a JIT engine
    {
      ScopeTimer CreateTimer(ContrFilename + ": ScillaExec::create");
      JE = std::make_unique<ScillaRTL::ScillaContrExec>(SP, CSO.compile());
    }
    {
      ScopeTimer ExecMsgTimer(ContrFilename + ": ScillaExec::execMsg");
      if (MessageFilename.empty()) {
        JE->deploy(InitJSON, Config::GasLimit, CurBlock);
      } else {
        JE->execMsg(Balance, Config::GasLimit, CurBlock, InitJSON, MessageJSON);
      }
    }
  } catch (const ScillaError &E) {
    output_test_stream Output(PathPrefix + ExpectedOutputFilename,
                              !Config::UpdateResults);
    Output << E.Msg;
    BOOST_TEST(Output.match_pattern());
    CaughtException = true;
    BOOST_TEST_CHECKPOINT(ContrFilename + ": Output matched");
  }

  BOOST_CHECK_MESSAGE(CaughtException, "Did not catch expected error");
}

} // namespace

BOOST_AUTO_TEST_SUITE(contr_exec)

BOOST_AUTO_TEST_SUITE(simple_map)

ContractTest SimpleMapTests = {
    "simple-map.ll",
    {{"state_init", "", "empty_init.json", "simple-map.contrinfo.json", "",
      "simple-map.state_00.json", "simple-map.init_output.json",
      "blockchain_default.json"},
     {"state_00_message_Increment", "simple-map.message_Increment.json",
      "empty_init.json", "simple-map.contrinfo.json",
      "simple-map.state_00.json", "simple-map.state_02.json",
      "simple-map.output_00_0.json", "blockchain_default.json"},
     {"state_01_message_Increment", "simple-map.message_Increment.json",
      "empty_init.json", "simple-map.contrinfo.json",
      "simple-map.state_01.json", "simple-map.state_03.json",
      "simple-map.output_01_0.json", "blockchain_default.json"},
     {"state_00_message_IncrementN_1", "simple-map.message_IncrementN_1.json",
      "empty_init.json", "simple-map.contrinfo.json",
      "simple-map.state_00.json", "simple-map.state_04.json",
      "simple-map.output_00_1.json", "blockchain_default.json"},
     {"state_01_message_IncrementN_1", "simple-map.message_IncrementN_1.json",
      "empty_init.json", "simple-map.contrinfo.json",
      "simple-map.state_01.json", "simple-map.state_05.json",
      "simple-map.output_01_1.json", "blockchain_default.json"}}};

BOOST_AUTO_TEST_CASE(unique_jits) {
  testMessages(SimpleMapTests, false /* CommonJIT */);
}

BOOST_AUTO_TEST_CASE(common_jit) {
  testMessages(SimpleMapTests, true /* CommonJIT */);
}

BOOST_AUTO_TEST_CASE(state_00_message_badinit_fail) {
  testMessageFail(
      "simple-map.ll", "", "bad_init.json", "simple-map.contrinfo.json", "",
      "simple-map.init_output_fail.json", "blockchain_default.json");
}

BOOST_AUTO_TEST_SUITE_END() // simple_map

BOOST_AUTO_TEST_SUITE(simple_iterate)

ContractTest SimpleIterateTests = {
    "simple-iterate.ll",
    {{"message_NEvents", "simple-iterate.message_NEvents.json",
      "empty_init.json", "simple-iterate.contrinfo.json",
      "simple-iterate.state.json", "simple-iterate.state.json",
      "simple-iterate.output.json", "blockchain_default.json"}}};

BOOST_AUTO_TEST_CASE(unique_jits) {
  testMessages(SimpleIterateTests, false /* CommonJIT */);
}

BOOST_AUTO_TEST_CASE(common_jit) {
  testMessages(SimpleIterateTests, true /* CommonJIT */);
}

BOOST_AUTO_TEST_SUITE_END() // simple_iterate

BOOST_AUTO_TEST_SUITE(map_misc)

ContractTest MapMiscTests = {
    "map_misc.ll",
    {{"message_Push", "map_misc.message_Push.json", "empty_init.json",
      "map_misc.contrinfo.json", "map_misc.state_0.json",
      "map_misc.state_1.json", "map_misc.output_1.json",
      "blockchain_default.json"},
     {"message_PullPush", "map_misc.message_PullPush.json", "empty_init.json",
      "map_misc.contrinfo.json", "map_misc.state_1.json",
      "map_misc.state_2.json", "map_misc.output_2.json",
      "blockchain_default.json"}}};

BOOST_AUTO_TEST_CASE(unique_jits) {
  testMessages(MapMiscTests, false /* CommonJIT */);
}

BOOST_AUTO_TEST_CASE(common_jit) {
  testMessages(MapMiscTests, true /* CommonJIT */);
}

BOOST_AUTO_TEST_SUITE_END() // map_misc

BOOST_AUTO_TEST_SUITE(event)

ContractTest EventTests = {
    "event.ll",
    {{"state_message_CreateEvent", "event.message.json", "empty_init.json",
      "event.contrinfo.json", "event.state.json", "event.state.json",
      "event.output.json", "blockchain_default.json"}}};

BOOST_AUTO_TEST_CASE(unique_jits) {
  testMessages(EventTests, false /* CommonJIT */);
}

BOOST_AUTO_TEST_CASE(common_jit) {
  testMessages(EventTests, true /* CommonJIT */);
}

BOOST_AUTO_TEST_SUITE_END() // event

BOOST_AUTO_TEST_SUITE(send)

ContractTest SendTests = {
    "send.ll",
    {{"state_message_SendMsg", "send.message_SendMsg.json", "empty_init.json",
      "send.contrinfo.json", "send.state_00.json", "send.state_00.json",
      "send.output_SendMsg.json", "blockchain_default.json"},
     {"state_message_SendMsg2", "send.message_SendMsg2.json", "empty_init.json",
      "send.contrinfo.json", "send.state_01.json", "send.state_00.json",
      "send.output_SendMsg2.json", "blockchain_default.json"}}};

BOOST_AUTO_TEST_CASE(unique_jits) {
  testMessages(SendTests, false /* CommonJIT */);
}

BOOST_AUTO_TEST_CASE(common_jit) {
  testMessages(SendTests, true /* CommonJIT */);
}

BOOST_AUTO_TEST_SUITE_END() // send

BOOST_AUTO_TEST_SUITE(sthrow)

BOOST_AUTO_TEST_CASE(state_message_ThrowObj) {
  testMessageFail("throw.ll", "throw.message_ThrowObj.json", "empty_init.json",
                  "throw.contrinfo.json", "throw.state.json",
                  "throw.output_ThrowObj.txt", "blockchain_default.json");
}
BOOST_AUTO_TEST_CASE(state_message_ThrowEmpty) {
  testMessageFail("throw.ll", "throw.message_ThrowEmpty.json",
                  "empty_init.json", "throw.contrinfo.json", "throw.state.json",
                  "throw.output_ThrowEmpty.txt", "blockchain_default.json");
}
BOOST_AUTO_TEST_SUITE_END() // throw

BOOST_AUTO_TEST_SUITE(helloWorld)

ContractTest HelloWorldTests = {
    "helloWorld.ll",
    {{"helloWorld_state_init", "", "helloWorld.init.json",
      "helloWorld.contrinfo.json", "", "helloWorld.state_00.json",
      "helloWorld.init_output.json", "blockchain_default.json"},
     {"state_00_message_setHello_1", "helloWorld.message_setHello_1.json",
      "helloWorld.init.json", "helloWorld.contrinfo.json",
      "helloWorld.state_00.json", "helloWorld.state_01.json",
      "helloWorld.output_setHello_1.json", "blockchain_default.json"},
     {"state_00_message_setHello_2", "helloWorld.message_setHello_2.json",
      "helloWorld.init.json", "helloWorld.contrinfo.json",
      "helloWorld.state_00.json", "helloWorld.state_00.json",
      "helloWorld.output_setHello_2.json", "blockchain_default.json"},
     {"state_00_message_getHello", "helloWorld.message_getHello.json",
      "helloWorld.init.json", "helloWorld.contrinfo.json",
      "helloWorld.state_01.json", "helloWorld.state_01.json",
      "helloWorld.output_getHello.json", "blockchain_default.json"},
     {"state_00_message_multipleMsgs", "helloWorld.message_multipleMsgs.json",
      "helloWorld.init.json", "helloWorld.contrinfo.json",
      "helloWorld.state_01.json", "helloWorld.state_01.json",
      "helloWorld.output_multipleMsgs.json", "blockchain_default.json"},
     {"state_00_message_contrAddr", "helloWorld.message_contrAddr.json",
      "helloWorld.init.json", "helloWorld.contrinfo.json",
      "helloWorld.state_01.json", "helloWorld.state_01.json",
      "helloWorld.output_contrAddr.json", "blockchain_default.json"},
     {"state_00_message_printContrParams",
      "helloWorld.message_printContrParams.json", "helloWorld.init.json",
      "helloWorld.contrinfo.json", "helloWorld.state_01.json",
      "helloWorld.state_01.json", "helloWorld.output_printContrParams.json",
      "blockchain_default.json"}}};

BOOST_AUTO_TEST_CASE(unique_jits) {
  testMessages(HelloWorldTests, false /* CommonJIT */);
}

BOOST_AUTO_TEST_CASE(common_jit) {
  testMessages(HelloWorldTests, true /* CommonJIT */);
}

BOOST_AUTO_TEST_SUITE_END() // helloWorld

BOOST_AUTO_TEST_SUITE(crowdfunding)

auto prepareCrowdfundingSuccTests = []() {
  ContractTest CFTs{"crowdfunding.ll", {}};
  for (int I = 1; I <= 6; I++) {
    ContractTest::Input ThisInput = {
        "crowdfunding_succ_" + std::to_string(I),
        "crowdfunding.message_" + std::to_string(I) + ".json",
        "crowdfunding.init.json",
        "crowdfunding.contrinfo.json",
        "crowdfunding.state_" + std::to_string(I) + ".json",
        "crowdfunding.ostate_" + std::to_string(I) + ".json",
        "crowdfunding.output_" + std::to_string(I) + ".json",
        "crowdfunding.blockchain_" + std::to_string(I) + ".json"};
    CFTs.Inputs.push_back(ThisInput);
  }
  return CFTs;
};

BOOST_AUTO_TEST_CASE(unique_jits) {
  testMessages(prepareCrowdfundingSuccTests(), false /* CommonJIT */);
}

BOOST_AUTO_TEST_CASE(common_jit) {
  testMessages(prepareCrowdfundingSuccTests(), true /* CommonJIT */);
}

BOOST_AUTO_TEST_CASE(deploy) {
  ContractTest CFDeploy = {
      "crowdfunding.ll",
      {{"crowdfunding_deploy", "", "crowdfunding.init.json",
        "crowdfunding.contrinfo.json", "", "crowdfunding.init_ostate.json",
        "crowdfunding.init_output.json", "blockchain_default.json"}}};
  testMessages(CFDeploy, false);
}

BOOST_AUTO_TEST_CASE(deploy_fail) {
  testMessageFail("crowdfunding.ll", "", "crowdfunding.init_bad1.json",
                  "crowdfunding.contrinfo.json", "",
                  "crowdfunding.init_bad1_output.txt",
                  "blockchain_default.json");
  testMessageFail("crowdfunding.ll", "", "crowdfunding.init_bad2.json",
                  "crowdfunding.contrinfo.json", "",
                  "crowdfunding.init_bad2_output.txt",
                  "blockchain_default.json");
  testMessageFail("crowdfunding.ll", "", "crowdfunding.init_bad3.json",
                  "crowdfunding.contrinfo.json", "",
                  "crowdfunding.init_bad3_output.txt",
                  "blockchain_default.json");
  testMessageFail("crowdfunding.ll", "", "crowdfunding.init_bad4.json",
                  "crowdfunding.contrinfo.json", "",
                  "crowdfunding.init_bad4_output.txt",
                  "blockchain_default.json");
}

BOOST_AUTO_TEST_SUITE_END() // crowdfunding

BOOST_AUTO_TEST_SUITE(accept)

ContractTest AcceptTests = {
    "accept.ll",
    {{"state_00_message_Accept1", "accept.message_Accept1.json",
      "empty_init.json", "accept.contrinfo.json", "accept.state_00.json",
      "accept.state_01.json", "accept.output_Accept1.json",
      "blockchain_default.json"},
     {"state_00_message_Accept2", "accept.message_Accept2.json",
      "empty_init.json", "accept.contrinfo.json", "accept.state_00.json",
      "accept.state_00.json", "accept.output_Accept2.json",
      "blockchain_default.json"},
     {"state_00_message_Accept3_succ", "accept.message_Accept3.json",
      "empty_init.json", "accept.contrinfo.json", "accept.state_01.json",
      "accept.state_00.json", "accept.output_Accept3_succ.json",
      "blockchain_default.json"}}};

BOOST_AUTO_TEST_CASE(unique_jits) {
  testMessages(AcceptTests, false /* CommonJIT */);
}

BOOST_AUTO_TEST_CASE(common_jit) {
  testMessages(AcceptTests, true /* CommonJIT */);
}

BOOST_AUTO_TEST_CASE(state_00_message_Accept3_fail) {
  testMessageFail("accept.ll", "accept.message_Accept3.json", "empty_init.json",
                  "accept.contrinfo.json", "accept.state_00.json",
                  "accept.output_Accept3_fail.txt", "blockchain_default.json");
}

BOOST_AUTO_TEST_SUITE_END() // accept

BOOST_AUTO_TEST_SUITE(ud)

ContractTest UDRegistryTests = {
    "ud-registry.ll",
    {{"registry_state_init", "", "ud-registry.init.json",
      "ud-registry.contrinfo.json", "", "ud-registry.state_00.json",
      "ud-registry.init_output.json", "blockchain_default.json"},
     {"registry_state_00_message_setRegistrar",
      "ud-registry.message_setRegistrar.json", "ud-registry.init.json",
      "ud-registry.contrinfo.json", "ud-registry.state_00.json",
      "ud-registry.state_01.json", "ud-registry.output_setRegistrar.json",
      "blockchain_default.json"},
     {"registry_state_01_message_setAdmin", "ud-registry.message_setAdmin.json",
      "ud-registry.init.json", "ud-registry.contrinfo.json",
      "ud-registry.state_01.json", "ud-registry.state_02.json",
      "ud-registry.output_setAdmin.json", "blockchain_default.json"},
     {"registry_state_02_message_bestow", "ud-registry.message_bestow.json",
      "ud-registry.init.json", "ud-registry.contrinfo.json",
      "ud-registry.state_02.json", "ud-registry.state_03.json",
      "ud-registry.output_bestow.json", "blockchain_default.json"}}};

BOOST_AUTO_TEST_CASE(unique_jits_registry) {
  testMessages(UDRegistryTests, false /* CommonJIT */);
}

BOOST_AUTO_TEST_CASE(common_jit_registry) {
  testMessages(UDRegistryTests, true /* CommonJIT */);
}

ContractTest UDProxyTests = {
    "ud-proxy.ll",
    {{"proxy_state_00_message_setAdmin", "ud-proxy.message_bestow.json",
      "ud-proxy.init.json", "ud-proxy.contrinfo.json", "ud-proxy.state_00.json",
      "ud-proxy.state_00.json", "ud-proxy.output_bestow.json",
      "blockchain_default.json"}}};

BOOST_AUTO_TEST_CASE(unique_jits_proxy) {
  testMessages(UDProxyTests, false /* CommonJIT */);
}

BOOST_AUTO_TEST_CASE(common_jit_proxy) {
  testMessages(UDProxyTests, true /* CommonJIT */);
}

BOOST_AUTO_TEST_SUITE_END() // ud

BOOST_AUTO_TEST_SUITE(pattern_match)

BOOST_AUTO_TEST_CASE(pm_empty_state_00_message_t1_true) {
  testMessages({"pm-empty.ll",
                {{"", "pm-empty.message_t1_true.json", "empty_init.json",
                  "pm-empty.contrinfo.json", "pm-empty.state_00.json",
                  "pm-empty.state_00.json", "pm-empty.output_t1_true.json",
                  "blockchain_default.json"}}},
               false);
}

BOOST_AUTO_TEST_CASE(pm_empty_state_00_message_t1_false) {
  testMessages({"pm-empty.ll",
                {{"", "pm-empty.message_t1_false.json", "empty_init.json",
                  "pm-empty.contrinfo.json", "pm-empty.state_00.json",
                  "pm-empty.state_00.json", "pm-empty.output_t1_false.json",
                  "blockchain_default.json"}}},
               false);
}

BOOST_AUTO_TEST_CASE(match_assign_state_00_message_t1_true) {
  testMessages(
      {"match_assign.ll",
       {{"", "match_assign.message_t1_true.json", "empty_init.json",
         "match_assign.contrinfo.json", "match_assign.state_00.json",
         "match_assign.state_00.json", "match_assign.output_t1_true.json",
         "blockchain_default.json"}}},
      false);
}

BOOST_AUTO_TEST_CASE(match_assign_state_00_message_t1_false) {
  testMessages(
      {"match_assign.ll",
       {{"", "match_assign.message_t1_false.json", "empty_init.json",
         "match_assign.contrinfo.json", "match_assign.state_00.json",
         "match_assign.state_00.json", "match_assign.output_t1_false.json",
         "blockchain_default.json"}}},
      false);
}

BOOST_AUTO_TEST_CASE(match_assign2_state_00_message_t1) {
  testMessages({"match_assign2.ll",
                {{"", "match_assign2.message_t1.json", "empty_init.json",
                  "match_assign2.contrinfo.json", "match_assign2.state_00.json",
                  "match_assign2.state_00.json", "match_assign2.output_t1.json",
                  "blockchain_default.json"}}},
               false);
}

BOOST_AUTO_TEST_CASE(match_assign3_state_00_message_t1_true) {
  testMessages(
      {"match_assign3.ll",
       {{"", "match_assign3.message_t1_true.json", "empty_init.json",
         "match_assign3.contrinfo.json", "match_assign3.state_00.json",
         "match_assign3.state_00.json", "match_assign3.output_t1_true.json",
         "blockchain_default.json"}}},
      false);
}

BOOST_AUTO_TEST_CASE(match_assign3_state_00_message_t1_false) {
  testMessages(
      {"match_assign3.ll",
       {{"", "match_assign3.message_t1_false.json", "empty_init.json",
         "match_assign3.contrinfo.json", "match_assign3.state_00.json",
         "match_assign3.state_00.json", "match_assign3.output_t1_false.json",
         "blockchain_default.json"}}},
      false);
}

BOOST_AUTO_TEST_CASE(name_clash1_state_00_message_t1_true) {
  testMessages(
      {"name_clash1.ll",
       {{"", "name_clash1.message_t1_true.json", "empty_init.json",
         "name_clash1.contrinfo.json", "name_clash1.state_00.json",
         "name_clash1.state_00.json", "name_clash1.output_t1_true.json",
         "blockchain_default.json"}}},
      false);
}

BOOST_AUTO_TEST_CASE(name_clash1_state_00_message_t1_false) {
  testMessages(
      {"name_clash1.ll",
       {{"", "name_clash1.message_t1_false.json", "empty_init.json",
         "name_clash1.contrinfo.json", "name_clash1.state_00.json",
         "name_clash1.state_00.json", "name_clash1.output_t1_false.json",
         "blockchain_default.json"}}},
      false);
}

BOOST_AUTO_TEST_CASE(name_clash2_state_00_message_t1_true) {
  testMessages(
      {"name_clash2.ll",
       {{"", "name_clash2.message_t1_true.json", "empty_init.json",
         "name_clash2.contrinfo.json", "name_clash2.state_00.json",
         "name_clash2.state_00.json", "name_clash2.output_t1_true.json",
         "blockchain_default.json"}}},
      false);
}

BOOST_AUTO_TEST_CASE(name_clash2_state_00_message_t1_false) {
  testMessages(
      {"name_clash2.ll",
       {{"", "name_clash2.message_t1_false.json", "empty_init.json",
         "name_clash2.contrinfo.json", "name_clash2.state_00.json",
         "name_clash2.state_00.json", "name_clash2.output_t1_false.json",
         "blockchain_default.json"}}},
      false);
}

BOOST_AUTO_TEST_SUITE_END() // pattern_match

BOOST_AUTO_TEST_SUITE(map_corners_test)

BOOST_AUTO_TEST_CASE(map_corners_state_init) {
  testMessages({"map_corners_test.ll",
                {{"", "", "empty_init.json", "map_corners_test.contrinfo.json",
                  "", "map_corners_test.state_00.json",
                  "map_corners.init_output.json", "blockchain_default.json"}}},
               false);
}

auto prepareMapCornersTests = []() {
  ContractTest MapCornersTests{"map_corners_test.ll", {}};

  for (int I = 1; I <= 18; I++) {
    auto Msg = "map_corners_test.message_t" + std::to_string(I) + ".json";
    auto StatePrint = [](int I) {
      return (I < 10 ? "map_corners_test.state_0" : "map_corners_test.state_") +
             std::to_string(I) + ".json";
    };
    auto StartState = StatePrint(I - 1);
    auto FinishState = StatePrint(I);

    ContractTest::Input ThisInput = {std::to_string(I),
                                     Msg,
                                     "empty_init.json",
                                     "map_corners_test.contrinfo.json",
                                     StartState,
                                     FinishState,
                                     "map_corners_test.output_" +
                                         std::to_string(I) + ".json",
                                     "blockchain_default.json"};
    MapCornersTests.Inputs.push_back(ThisInput);
  }
  return MapCornersTests;
};

BOOST_AUTO_TEST_CASE(map_corners_test_exec_common_jit) {
  testMessages(prepareMapCornersTests(), true /* CommonJIT */);
}

BOOST_AUTO_TEST_CASE(map_corners_test_exec_unique_jits) {
  testMessages(prepareMapCornersTests(), false /* CommonJIT */);
}

// Run a large number of these tests with a common JIT.
// This test is disabled as it hogs up CI time. To see it work,
// comment out the call to ObjManager::deleteAll() in ScillaExec::execMsg().
// Check peak memory usage: https://stackoverflow.com/a/774601/2128804
int MCT_NumRepeats = 500;
BOOST_AUTO_TEST_CASE(map_corners_test_stress,
                     *boost::unit_test_framework::disabled()) {
  ContractTest TestSeq = prepareMapCornersTests();
  for (int I = 0; I < MCT_NumRepeats; I++) {
    auto T = prepareMapCornersTests();
    TestSeq.Inputs.insert(TestSeq.Inputs.end(), T.Inputs.begin(),
                          T.Inputs.end());
  }
  testMessages(TestSeq, true /* CommonJIT */);
}

BOOST_AUTO_TEST_SUITE_END() // map_corners_test

BOOST_AUTO_TEST_SUITE(remote_state_reads)

ContractTest RemoteStateReadsTests = {
    "remote_state_reads.ll",
    {
        {"remote_state_reads_init", "", "remote_state_reads.init.json",
         "remote_state_reads.contrinfo.json",
         "remote_state_reads.init_state.json",
         "remote_state_reads.init_ostate.json",
         "remote_state_reads.init_output.json", "blockchain_default.json"},
        {"remote_state_reads_init_assignable_map_types", "",
         "remote_state_reads.init_assignable_map_types.json",
         "remote_state_reads.contrinfo.json",
         "remote_state_reads.init_assignable_map_types_state.json",
         "remote_state_reads.init_assignable_map_types_ostate.json",
         "remote_state_reads.init_assignable_map_types_output.json",
         "blockchain_default.json"},
        {"remote_state_reads_init_nonce_no_balance", "",
         "remote_state_reads.init_nonce_no_balance.json",
         "remote_state_reads.contrinfo.json",
         "remote_state_reads.init_nonce_no_balance_state.json",
         "remote_state_reads.init_nonce_no_balance_ostate.json",
         "remote_state_reads.init_nonce_no_balance_output.json",
         "blockchain_default.json"},
        {"remote_state_reads_init_balance_no_nonce", "",
         "remote_state_reads.init_balance_no_nonce.json",
         "remote_state_reads.contrinfo.json",
         "remote_state_reads.init_balance_no_nonce_state.json",
         "remote_state_reads.init_balance_no_nonce_ostate.json",
         "remote_state_reads.init_balance_no_nonce_output.json",
         "blockchain_default.json"},
        {"remote_state_reads_init_balance_and_nonce", "",
         "remote_state_reads.init_balance_and_nonce.json",
         "remote_state_reads.contrinfo.json",
         "remote_state_reads.init_balance_and_nonce_state.json",
         "remote_state_reads.init_balance_and_nonce_ostate.json",
         "remote_state_reads.init_balance_and_nonce_output.json",
         "blockchain_default.json"},
    }};

BOOST_AUTO_TEST_CASE(unique_jits) {
  testMessages(RemoteStateReadsTests, false /* CommonJIT */);
}

BOOST_AUTO_TEST_CASE(common_jit) {
  testMessages(RemoteStateReadsTests, true /* CommonJIT */);
}

auto prepareRemoteStateReadsSuccTests = []() {
  ContractTest RSRSTs{"remote_state_reads.ll", {}};
  for (int I = 1; I <= 11; I++) {
    ContractTest::Input ThisInput = {
        "remote_state_reads_succ_" + std::to_string(I),
        "remote_state_reads.message_" + std::to_string(I) + ".json",
        "remote_state_reads.init.json",
        "remote_state_reads.contrinfo.json",
        "remote_state_reads.state_" + std::to_string(I) + ".json",
        "remote_state_reads.ostate_" + std::to_string(I) + ".json",
        "remote_state_reads.output_" + std::to_string(I) + ".json",
        "blockchain_default.json"};
    RSRSTs.Inputs.push_back(ThisInput);
  }
  return RSRSTs;
};

BOOST_AUTO_TEST_CASE(succ_unique_jits) {
  testMessages(prepareRemoteStateReadsSuccTests(), false /* CommonJIT */);
}

BOOST_AUTO_TEST_CASE(succ_common_jit) {
  testMessages(prepareRemoteStateReadsSuccTests(), true /* CommonJIT */);
}

auto prepareRemoteStateReads2SuccTests = []() {
  ContractTest RSRSTs{"remote_state_reads_2.ll", {}};
  for (int I = 1; I <= 5; I++) {
    ContractTest::Input ThisInput = {
        "remote_state_reads_2_succ_" + std::to_string(I),
        "remote_state_reads_2.message_" + std::to_string(I) + ".json",
        "remote_state_reads_2.init.json",
        "remote_state_reads_2.contrinfo.json",
        "remote_state_reads_2.state_" + std::to_string(I) + ".json",
        "remote_state_reads_2.ostate_" + std::to_string(I) + ".json",
        "remote_state_reads_2.output_" + std::to_string(I) + ".json",
        "blockchain_default.json"};
    RSRSTs.Inputs.push_back(ThisInput);
  }
  return RSRSTs;
};

BOOST_AUTO_TEST_CASE(succ_unique_jits_2) {
  testMessages(prepareRemoteStateReads2SuccTests(), false /* CommonJIT */);
}

BOOST_AUTO_TEST_CASE(succ_common_jit_2) {
  testMessages(prepareRemoteStateReads2SuccTests(), true /* CommonJIT */);
}

BOOST_AUTO_TEST_SUITE_END() // remote_state_reads

BOOST_AUTO_TEST_SUITE_END() // contr_exec
