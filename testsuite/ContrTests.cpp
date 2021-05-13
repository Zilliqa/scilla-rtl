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

#include <ScillaVM/Errors.h>
#include <ScillaVM/SRTL.h>
#include <ScillaVM/Utils.h>

#include "StateJsonUtils.h"
#include "Testsuite.h"

using namespace ScillaVM;
using namespace ScillaTestsuite;

namespace {

const std::string CacheDir((boost::filesystem::temp_directory_path() /=
                            "scilla_testsuite_cache")
                               .native());
ScillaCacheManager OCache(CacheDir);

// Give a file foo.ll, return foo.dbg.ll.
std::string deriveDbgFilename(std::string Filename) {
  auto BaseName = boost::filesystem::basename(Filename);
  auto Extension = boost::filesystem::extension(Filename);
  return BaseName + ".dbg" + Extension;
}

// MessageFilename.empty() => stateInit
void testMessageHelper(const std::string &ContrFilename,
                       const std::string &MessageFilename,
                       const std::string &InitFilename,
                       const std::string &ContrInfoFilename,
                       const std::string &StateFilename,
                       const std::string &ExpectedStateFilename,
                       const std::string &ExpectedOutputFilename) {
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

  ScillaJIT_Safe::init();

  Json::Value MessageJSON, InitJSON, StateJSON, ContrInfoJSON;
  std::string Balance;
  bool isStateInit = MessageFilename.empty();
  try {
    // Prepare all inputs.
    if (!isStateInit) {
      MessageJSON = parseJSONFile(PathPrefix + MessageFilename);
      StateJSON = parseJSONFile(PathPrefix + StateFilename);
    } else {
      StateJSON = Json::arrayValue;
    }
    InitJSON = parseJSONFile(PathPrefix + InitFilename);
    ContrInfoJSON = parseJSONFile(PathPrefix + ContrInfoFilename);
  } catch (const ScillaError &E) {
    BOOST_FAIL(E.toString());
  }

  // Create a JIT engine and execute the message.
  // TODO: Due to the below mentioned bug, this can't be in a try-catch block.
  std::unique_ptr<ScillaVM::ScillaJIT_Safe> JE;
  {
    ScopeTimer CreateTimer(ContrFilename + ": ScillaJIT::create");
    JE = ScillaJIT_Safe::create(SP, PathPrefix + ContrFilename, InitJSON,
                                &OCache);
  }

  try {
    // Update our in-memory state table with the one from the JSONs.
    if (isStateInit) {
      State.initFieldTypes(InitJSON, ContrInfoJSON);
    } else {
      Balance = State.initState(InitJSON, StateJSON, JE->getTypeDescrTable());
    }

    Json::Value OJ;
    {
      ScopeTimer ExecMsgTimer(ContrFilename + ": ScillaJIT::execMsg");
      if (isStateInit) {
        OJ = JE->initState(Config::GasLimit);
      } else {
        OJ = JE->execMsg(Balance, Config::GasLimit, MessageJSON);
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
      std::ofstream Out(PathPrefix + ExpectedStateFilename);
      Out << OSJ.toStyledString();
      Out.close();
    }
    auto ESJ = parseJSONFile(PathPrefix + ExpectedStateFilename);
    ESJ = canonicalizeStateVariables(ESJ);

    // Compare element-wise, the output state JSON and the expected state JSON.
    checkEqStateVariables(ESJ, OSJ);

    ///////////// Transition Output ///////////////////////////////////

    // Update results if specified
    if (Config::UpdateResults) {
      std::ofstream Out(PathPrefix + ExpectedOutputFilename);
      Out << OJ.toStyledString();
      Out.close();
    }
    auto EOJ = parseJSONFile(PathPrefix + ExpectedOutputFilename);
    // Compare output to expected output.
    BOOST_REQUIRE_MESSAGE(EOJ == OJ, "Comparison failed:\nExpected:\n" +
                                         EOJ.toStyledString() + "\nGot:\n" +
                                         OJ.toStyledString());
  } catch (const ScillaError &E) {
    BOOST_FAIL(E.toString());
  }

  // https://github.com/boostorg/boost/issues/379
  try {
    throw std::exception();
  } catch (std::exception &) {
    ;
  }
}

// Calls testMessageHelper for both .ll and .dbg.ll files,
// extracting the information from `ContrFilename`.
void testMessage(const std::string &ContrFilename,
                 const std::string &MessageFilename,
                 const std::string &InitFilename,
                 const std::string &ContrInfoFilename,
                 const std::string &StateFilename,
                 const std::string &ExpectedStateFilename,
                 const std::string &ExpectedOutputFilename) {
  BOOST_TEST_CHECKPOINT("Testing " + ContrFilename + " with non-debug LLVM-IR");
  testMessageHelper(ContrFilename, MessageFilename, InitFilename,
                    ContrInfoFilename, StateFilename, ExpectedStateFilename,
                    ExpectedOutputFilename);
  BOOST_TEST_CHECKPOINT("Testing " + ContrFilename + " with debug LLVM-IR");
  testMessageHelper(deriveDbgFilename(ContrFilename), MessageFilename,
                    InitFilename, ContrInfoFilename, StateFilename,
                    ExpectedStateFilename, ExpectedOutputFilename);
}

void testMessageFail(const std::string &ContrFilename,
                     const std::string &MessageFilename,
                     const std::string &InitFilename,
                     const std::string &ContrInfoFilename,
                     const std::string &StateFilename,
                     const std::string &ExpectedOutputFilename) {
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

  ScillaJIT_Safe::init();

  Json::Value MessageJSON, InitJSON, StateJSON, ContrInfoJSON;
  std::string Balance;
  try {
    // Prepare all inputs.
    MessageJSON = parseJSONFile(PathPrefix + MessageFilename);
    InitJSON = parseJSONFile(PathPrefix + InitFilename);
    StateJSON = parseJSONFile(PathPrefix + StateFilename);
    ContrInfoJSON = parseJSONFile(PathPrefix + ContrInfoFilename);
  } catch (const ScillaError &E) {
    BOOST_FAIL(E.toString());
  }

  // Create a JIT engine and execute the message.
  // TODO: Due to the below mentioned bug, this can't be in a try-catch block.
  std::unique_ptr<ScillaVM::ScillaJIT_Safe> JE;
  {
    ScopeTimer CreateTimer(ContrFilename + ": ScillaJIT::create");
    JE = ScillaJIT_Safe::create(SP, PathPrefix + ContrFilename, InitJSON,
                                &OCache);
  }

  bool CaughtException = false;
  try {
    // Update our in-memory state table with the one from the JSONs.
    Balance = State.initState(InitJSON, StateJSON, JE->getTypeDescrTable());
    {
      ScopeTimer ExecMsgTimer(ContrFilename + ": ScillaJIT::execMsg");
      JE->execMsg(Balance, Config::GasLimit, MessageJSON);
    }
  } catch (const ScillaError &E) {
    output_test_stream Output(PathPrefix + ExpectedOutputFilename,
                              !Config::UpdateResults);
    Output << E.toString();
    BOOST_TEST(Output.match_pattern());
    CaughtException = true;
    BOOST_TEST_CHECKPOINT(ContrFilename + ": Output matched");
  }

  BOOST_CHECK_MESSAGE(CaughtException, "Did not catch expected error");

  // https://github.com/boostorg/boost/issues/379
  try {
    throw std::exception();
  } catch (std::exception &) {
    ;
  }
}

} // namespace

BOOST_AUTO_TEST_SUITE(contr_exec)

BOOST_AUTO_TEST_SUITE(simple_map)

BOOST_AUTO_TEST_CASE(state_init) {
  testMessage("simple-map.ll", "", "empty_init.json",
              "simple-map.contrinfo.json", "", "simple-map.state_00.json",
              "simple-map.init_output.json");
}

BOOST_AUTO_TEST_CASE(state_00_message_Increment) {
  testMessage("simple-map.ll", "simple-map.message_Increment.json",
              "empty_init.json", "simple-map.contrinfo.json",
              "simple-map.state_00.json", "simple-map.state_02.json",
              "simple-map.output_00_0.json");
}

BOOST_AUTO_TEST_CASE(state_01_message_Increment) {
  testMessage("simple-map.ll", "simple-map.message_Increment.json",
              "empty_init.json", "simple-map.contrinfo.json",
              "simple-map.state_01.json", "simple-map.state_03.json",
              "simple-map.output_01_0.json");
}

BOOST_AUTO_TEST_CASE(state_00_message_IncrementN_1) {
  testMessage("simple-map.ll", "simple-map.message_IncrementN_1.json",
              "empty_init.json", "simple-map.contrinfo.json",
              "simple-map.state_00.json", "simple-map.state_04.json",
              "simple-map.output_00_1.json");
}

BOOST_AUTO_TEST_CASE(state_01_message_IncrementN_1) {
  testMessage("simple-map.ll", "simple-map.message_IncrementN_1.json",
              "empty_init.json", "simple-map.contrinfo.json",
              "simple-map.state_01.json", "simple-map.state_05.json",
              "simple-map.output_01_1.json");
}

BOOST_AUTO_TEST_SUITE_END() // simple_map

BOOST_AUTO_TEST_SUITE(event)

BOOST_AUTO_TEST_CASE(state_message_CreateEvent) {
  testMessage("event.ll", "event.message.json", "empty_init.json",
              "event.contrinfo.json", "event.state.json", "event.state.json",
              "event.output.json");
}
BOOST_AUTO_TEST_SUITE_END() // event

BOOST_AUTO_TEST_SUITE(send)

BOOST_AUTO_TEST_CASE(state_message_SendMsg) {
  testMessage("send.ll", "send.message_SendMsg.json", "empty_init.json",
              "send.contrinfo.json", "send.state_00.json", "send.state_00.json",
              "send.output_SendMsg.json");
}
BOOST_AUTO_TEST_CASE(state_message_SendMsg2) {
  testMessage("send.ll", "send.message_SendMsg2.json", "empty_init.json",
              "send.contrinfo.json", "send.state_01.json", "send.state_00.json",
              "send.output_SendMsg2.json");
}
BOOST_AUTO_TEST_SUITE_END() // send

BOOST_AUTO_TEST_SUITE(sthrow)

BOOST_AUTO_TEST_CASE(state_message_ThrowObj) {
  testMessageFail("throw.ll", "throw.message_ThrowObj.json", "empty_init.json",
                  "throw.contrinfo.json", "throw.state.json",
                  "throw.output_ThrowObj.txt");
}
BOOST_AUTO_TEST_CASE(state_message_ThrowEmpty) {
  testMessageFail("throw.ll", "throw.message_ThrowEmpty.json",
                  "empty_init.json", "throw.contrinfo.json", "throw.state.json",
                  "throw.output_ThrowEmpty.txt");
}
BOOST_AUTO_TEST_SUITE_END() // throw

BOOST_AUTO_TEST_SUITE(helloWorld)

BOOST_AUTO_TEST_CASE(helloWorld_state_init) {
  testMessage("helloWorld.ll", "", "helloWorld.init.json",
              "helloWorld.contrinfo.json", "", "helloWorld.state_00.json",
              "helloWorld.init_output.json");
}

BOOST_AUTO_TEST_CASE(state_00_message_setHello_1) {
  testMessage("helloWorld.ll", "helloWorld.message_setHello_1.json",
              "helloWorld.init.json", "helloWorld.contrinfo.json",
              "helloWorld.state_00.json", "helloWorld.state_01.json",
              "helloWorld.output_setHello_1.json");
}
BOOST_AUTO_TEST_CASE(state_00_message_setHello_2) {
  testMessage("helloWorld.ll", "helloWorld.message_setHello_2.json",
              "helloWorld.init.json", "helloWorld.contrinfo.json",
              "helloWorld.state_00.json", "helloWorld.state_00.json",
              "helloWorld.output_setHello_2.json");
}
BOOST_AUTO_TEST_CASE(state_00_message_getHello) {
  testMessage("helloWorld.ll", "helloWorld.message_getHello.json",
              "helloWorld.init.json", "helloWorld.contrinfo.json",
              "helloWorld.state_01.json", "helloWorld.state_01.json",
              "helloWorld.output_getHello.json");
}
BOOST_AUTO_TEST_CASE(state_00_message_multipleMsgs) {
  testMessage("helloWorld.ll", "helloWorld.message_multipleMsgs.json",
              "helloWorld.init.json", "helloWorld.contrinfo.json",
              "helloWorld.state_01.json", "helloWorld.state_01.json",
              "helloWorld.output_multipleMsgs.json");
}
BOOST_AUTO_TEST_CASE(state_00_message_contrAddr) {
  testMessage("helloWorld.ll", "helloWorld.message_contrAddr.json",
              "helloWorld.init.json", "helloWorld.contrinfo.json",
              "helloWorld.state_01.json", "helloWorld.state_01.json",
              "helloWorld.output_contrAddr.json");
}
BOOST_AUTO_TEST_CASE(state_00_message_printContrParams) {
  testMessage("helloWorld.ll", "helloWorld.message_printContrParams.json",
              "helloWorld.init.json", "helloWorld.contrinfo.json",
              "helloWorld.state_01.json", "helloWorld.state_01.json",
              "helloWorld.output_printContrParams.json");
}

BOOST_AUTO_TEST_SUITE_END() // helloWorld

BOOST_AUTO_TEST_SUITE(accept)

BOOST_AUTO_TEST_CASE(state_00_message_Accept1) {
  testMessage("accept.ll", "accept.message_Accept1.json", "empty_init.json",
              "accept.contrinfo.json", "accept.state_00.json",
              "accept.state_01.json", "accept.output_Accept1.json");
}
BOOST_AUTO_TEST_CASE(state_00_message_Accept2) {
  testMessage("accept.ll", "accept.message_Accept2.json", "empty_init.json",
              "accept.contrinfo.json", "accept.state_00.json",
              "accept.state_00.json", "accept.output_Accept2.json");
}
BOOST_AUTO_TEST_CASE(state_00_message_Accept3_succ) {
  testMessage("accept.ll", "accept.message_Accept3.json", "empty_init.json",
              "accept.contrinfo.json", "accept.state_01.json",
              "accept.state_00.json", "accept.output_Accept3_succ.json");
}

BOOST_AUTO_TEST_CASE(state_00_message_Accept3_fail) {
  testMessageFail("accept.ll", "accept.message_Accept3.json", "empty_init.json",
                  "accept.contrinfo.json", "accept.state_00.json",
                  "accept.output_Accept3_fail.txt");
}

BOOST_AUTO_TEST_SUITE_END() // accept

BOOST_AUTO_TEST_SUITE(ud)

BOOST_AUTO_TEST_CASE(registry_state_init) {
  testMessage("ud-registry.ll", "", "ud-registry.init.json",
              "ud-registry.contrinfo.json", "", "ud-registry.state_00.json",
              "ud-registry.init_output.json");
}

BOOST_AUTO_TEST_CASE(registry_state_00_message_setRegistrar) {
  testMessage("ud-registry.ll", "ud-registry.message_setRegistrar.json",
              "ud-registry.init.json", "ud-registry.contrinfo.json",
              "ud-registry.state_00.json", "ud-registry.state_01.json",
              "ud-registry.output_setRegistrar.json");
}

BOOST_AUTO_TEST_CASE(registry_state_01_message_setAdmin) {
  testMessage("ud-registry.ll", "ud-registry.message_setAdmin.json",
              "ud-registry.init.json", "ud-registry.contrinfo.json",
              "ud-registry.state_01.json", "ud-registry.state_02.json",
              "ud-registry.output_setAdmin.json");
}

BOOST_AUTO_TEST_CASE(proxy_state_00_message_setAdmin) {
  testMessage("ud-proxy.ll", "ud-proxy.message_bestow.json",
              "ud-proxy.init.json", "ud-proxy.contrinfo.json",
              "ud-proxy.state_00.json", "ud-proxy.state_00.json",
              "ud-proxy.output_bestow.json");
}

BOOST_AUTO_TEST_CASE(registry_state_02_message_bestow) {
  testMessage("ud-registry.ll", "ud-registry.message_bestow.json",
              "ud-registry.init.json", "ud-registry.contrinfo.json",
              "ud-registry.state_02.json", "ud-registry.state_03.json",
              "ud-registry.output_bestow.json");
}

BOOST_AUTO_TEST_SUITE_END() // ud

BOOST_AUTO_TEST_SUITE(pattern_match)

BOOST_AUTO_TEST_CASE(pm_empty_state_00_message_t1_true) {
  testMessage("pm-empty.ll", "pm-empty.message_t1_true.json", "empty_init.json",
              "pm-empty.contrinfo.json", "pm-empty.state_00.json",
              "pm-empty.state_00.json", "pm-empty.output_t1_true.json");
}

BOOST_AUTO_TEST_CASE(pm_empty_state_00_message_t1_false) {
  testMessage("pm-empty.ll", "pm-empty.message_t1_false.json",
              "empty_init.json", "pm-empty.contrinfo.json",
              "pm-empty.state_00.json", "pm-empty.state_00.json",
              "pm-empty.output_t1_false.json");
}

BOOST_AUTO_TEST_CASE(match_assign_state_00_message_t1_true) {
  testMessage("match_assign.ll", "match_assign.message_t1_true.json",
              "empty_init.json", "match_assign.contrinfo.json",
              "match_assign.state_00.json", "match_assign.state_00.json",
              "match_assign.output_t1_true.json");
}

BOOST_AUTO_TEST_CASE(match_assign_state_00_message_t1_false) {
  testMessage("match_assign.ll", "match_assign.message_t1_false.json",
              "empty_init.json", "match_assign.contrinfo.json",
              "match_assign.state_00.json", "match_assign.state_00.json",
              "match_assign.output_t1_false.json");
}

BOOST_AUTO_TEST_CASE(match_assign2_state_00_message_t1) {
  testMessage("match_assign2.ll", "match_assign2.message_t1.json",
              "empty_init.json", "match_assign2.contrinfo.json",
              "match_assign2.state_00.json", "match_assign2.state_00.json",
              "match_assign2.output_t1.json");
}

BOOST_AUTO_TEST_CASE(match_assign3_state_00_message_t1_true) {
  testMessage("match_assign3.ll", "match_assign3.message_t1_true.json",
              "empty_init.json", "match_assign3.contrinfo.json",
              "match_assign3.state_00.json", "match_assign3.state_00.json",
              "match_assign3.output_t1_true.json");
}

BOOST_AUTO_TEST_CASE(match_assign3_state_00_message_t1_false) {
  testMessage("match_assign3.ll", "match_assign3.message_t1_false.json",
              "empty_init.json", "match_assign3.contrinfo.json",
              "match_assign3.state_00.json", "match_assign3.state_00.json",
              "match_assign3.output_t1_false.json");
}

BOOST_AUTO_TEST_CASE(name_clash1_state_00_message_t1_true) {
  testMessage("name_clash1.ll", "name_clash1.message_t1_true.json",
              "empty_init.json", "name_clash1.contrinfo.json",
              "name_clash1.state_00.json", "name_clash1.state_00.json",
              "name_clash1.output_t1_true.json");
}

BOOST_AUTO_TEST_CASE(name_clash1_state_00_message_t1_false) {
  testMessage("name_clash1.ll", "name_clash1.message_t1_false.json",
              "empty_init.json", "name_clash1.contrinfo.json",
              "name_clash1.state_00.json", "name_clash1.state_00.json",
              "name_clash1.output_t1_false.json");
}

BOOST_AUTO_TEST_CASE(name_clash2_state_00_message_t1_true) {
  testMessage("name_clash2.ll", "name_clash2.message_t1_true.json",
              "empty_init.json", "name_clash2.contrinfo.json",
              "name_clash2.state_00.json", "name_clash2.state_00.json",
              "name_clash2.output_t1_true.json");
}

BOOST_AUTO_TEST_CASE(name_clash2_state_00_message_t1_false) {
  testMessage("name_clash2.ll", "name_clash2.message_t1_false.json",
              "empty_init.json", "name_clash2.contrinfo.json",
              "name_clash2.state_00.json", "name_clash2.state_00.json",
              "name_clash2.output_t1_false.json");
}

BOOST_AUTO_TEST_SUITE_END() // pattern_match

BOOST_AUTO_TEST_SUITE(map_corners_test)

BOOST_AUTO_TEST_CASE(map_corners_state_init) {
  testMessage("map_corners_test.ll", "", "empty_init.json",
              "map_corners_test.contrinfo.json", "",
              "map_corners_test.state_00.json", "map_corners.init_output.json");
}

BOOST_AUTO_TEST_CASE(map_corners_test_exec) {
  for (int I = 1; I <= 18; I++) {
    auto Msg = "map_corners_test.message_t" + std::to_string(I) + ".json";
    auto StatePrint = [](int I) {
      return (I < 10 ? "map_corners_test.state_0" : "map_corners_test.state_") +
             std::to_string(I) + ".json";
    };
    auto StartState = StatePrint(I - 1);
    auto FinishState = StatePrint(I);

    testMessage("map_corners_test.ll", Msg, "empty_init.json",
                "map_corners_test.contrinfo.json", StartState, FinishState,
                "map_corners_test.output_" + std::to_string(I) + ".json");

    BOOST_TEST_CHECKPOINT("map_corners_test: " << I << " successful.");
  }
}

BOOST_AUTO_TEST_SUITE_END() // map_corners_test

BOOST_AUTO_TEST_SUITE_END() // contr_exec
