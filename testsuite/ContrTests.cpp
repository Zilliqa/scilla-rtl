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

#include "Testsuite.h"

using namespace ScillaVM;

namespace {

const std::string CacheDir((boost::filesystem::temp_directory_path() /=
                            "scilla_testsuite_cache")
                               .native());
ScillaCacheManager OCache(CacheDir);

// Sort state variables (as their order is not important) and compare 1-1.
void compareStateJson(const Json::Value &Expected, const Json::Value &Got) {

  BOOST_ASSERT_MSG(Expected.isArray() && Got.isArray() &&
                       Expected.size() == Got.size(),
                   "State JSON size mismatch");

  auto StateVarCmp = [](const Json::Value &A, const Json::Value &B) -> bool {
    std::greater<std::string> StrCmp;
    return StrCmp(A["vname"].asString(), B["vname"].asString());
  };

  std::vector<Json::Value> ExpectedArr(Expected.begin(), Expected.end());
  std::vector<Json::Value> GotArr(Got.begin(), Got.end());

  std::sort(ExpectedArr.begin(), ExpectedArr.end(), StateVarCmp);
  std::sort(GotArr.begin(), GotArr.end(), StateVarCmp);

  for (Json::Value::ArrayIndex I = 0; I < ExpectedArr.size(); I++) {
    const auto &ESJ = ExpectedArr[I];
    const auto &OSJ = GotArr[I];
    BOOST_REQUIRE_MESSAGE(ESJ == OSJ, "Comparison failed:\nExpected:\n" +
                                          ESJ.toStyledString() + "\nGot:\n" +
                                          OSJ.toStyledString());
  }
}

void testMessage(const std::string &ContrFilename,
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
  ScillaParams::UpdateState_Type updateStateValue =
      std::bind(&MemStateServer::updateStateValue, &State, ph::_1, ph::_2);
  ScillaParams SP(fetchStateValue, updateStateValue);

  std::string PathPrefix = Config::TestsuiteSrc + "/contr/";

  ScillaJIT::init();

  Json::Value MessageJSON, InitJSON;
  std::string Balance;
  try {
    // Prepare all inputs.
    MessageJSON = parseJSONFile(PathPrefix + MessageFilename);
    InitJSON = parseJSONFile(PathPrefix + InitFilename);
    auto SJ = parseJSONFile(PathPrefix + StateFilename);
    auto CIJ = parseJSONFile(PathPrefix + ContrInfoFilename);
    // Update our in-memory state table with the one from the JSONs.
    Balance = State.initFromJSON(SJ, CIJ);
  } catch (const ScillaError &e) {
    BOOST_FAIL(e.toString());
  }

  // Create a JIT engine and execute the message.
  // TODO: Due to the below mentioned bug, this can't be in a try-catch block.
  std::unique_ptr<ScillaVM::ScillaJIT> JE;
  {
    ScopeTimer CreateTimer(ContrFilename + ": ScillaJIT::create");
    JE = ScillaJIT::create(SP, PathPrefix + ContrFilename, InitJSON, &OCache);
  }
  Json::Value OJ;
  try {
    {
      ScopeTimer ExecMsgTimer(ContrFilename + ": ScillaJIT::execMsg");
      OJ = JE->execMsg(Balance, 0, MessageJSON);
    }
    auto OSJ = State.dumpToJSON();
    // OJ will contain ["states"]._balance. Move that to state JSON.
    Json::Value &OJStates = OJ["states"];
    for (Json::Value &OJS : OJStates)
      OSJ.append(OJS);
    OJ.removeMember("state");
    // Update results if specified
    if (Config::UpdateResults) {
      std::ofstream Out(PathPrefix + ExpectedStateFilename);
      Out << OSJ.toStyledString();
      Out.close();
    }
    auto ESJ = parseJSONFile(PathPrefix + ExpectedStateFilename);
    compareStateJson(ESJ, OSJ);

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
  ScillaParams::UpdateState_Type updateStateValue =
      std::bind(&MemStateServer::updateStateValue, &State, ph::_1, ph::_2);
  ScillaParams SP(fetchStateValue, updateStateValue);

  std::string PathPrefix = Config::TestsuiteSrc + "/contr/";

  ScillaJIT::init();

  Json::Value MessageJSON, InitJSON;
  std::string Balance;
  try {
    // Prepare all inputs.
    MessageJSON = parseJSONFile(PathPrefix + MessageFilename);
    InitJSON = parseJSONFile(PathPrefix + InitFilename);
    auto SJ = parseJSONFile(PathPrefix + StateFilename);
    auto CIJ = parseJSONFile(PathPrefix + ContrInfoFilename);
    // Update our in-memory state table with the one from the JSONs.
    Balance = State.initFromJSON(SJ, CIJ);
  } catch (const ScillaError &e) {
    BOOST_FAIL(e.toString());
  }

  // Create a JIT engine and execute the message.
  // TODO: Due to the below mentioned bug, this can't be in a try-catch block.
  std::unique_ptr<ScillaVM::ScillaJIT> JE;
  {
    ScopeTimer CreateTimer(ContrFilename + ": ScillaJIT::create");
    JE = ScillaJIT::create(SP, PathPrefix + ContrFilename, InitJSON, &OCache);
  }

  bool CaughtException = false;
  try {
    ScopeTimer ExecMsgTimer(ContrFilename + ": ScillaJIT::execMsg");
    JE->execMsg(Balance, 0, MessageJSON);
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

BOOST_AUTO_TEST_CASE(state_00_message_Increment) {
  testMessage("simple-map.ll", "simple-map.message_Increment.json",
              "empty_init.json", "simple-map.contrinfo.json",
              "simple-map.state_00.json", "simple-map.state_02.json",
              "simple-map.output.json");
}

BOOST_AUTO_TEST_CASE(state_01_message_Increment) {
  testMessage("simple-map.ll", "simple-map.message_Increment.json",
              "empty_init.json", "simple-map.contrinfo.json",
              "simple-map.state_01.json", "simple-map.state_03.json",
              "simple-map.output.json");
}

BOOST_AUTO_TEST_CASE(state_00_message_IncrementN_1) {
  testMessage("simple-map.ll", "simple-map.message_IncrementN_1.json",
              "empty_init.json", "simple-map.contrinfo.json",
              "simple-map.state_00.json", "simple-map.state_04.json",
              "simple-map.output.json");
}

BOOST_AUTO_TEST_CASE(state_01_message_IncrementN_1) {
  testMessage("simple-map.ll", "simple-map.message_IncrementN_1.json",
              "empty_init.json", "simple-map.contrinfo.json",
              "simple-map.state_01.json", "simple-map.state_05.json",
              "simple-map.output.json");
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
  testMessage("accept.ll", "accept.message_Accept1.json", "accept.init.json",
              "accept.contrinfo.json", "accept.state_00.json",
              "accept.state_01.json", "accept.output_Accept1.json");
}
BOOST_AUTO_TEST_CASE(state_00_message_Accept2) {
  testMessage("accept.ll", "accept.message_Accept2.json", "accept.init.json",
              "accept.contrinfo.json", "accept.state_00.json",
              "accept.state_00.json", "accept.output_Accept2.json");
}
BOOST_AUTO_TEST_CASE(state_00_message_Accept3_succ) {
  testMessage("accept.ll", "accept.message_Accept3.json", "accept.init.json",
              "accept.contrinfo.json", "accept.state_01.json",
              "accept.state_00.json", "accept.output_Accept3_succ.json");
}

BOOST_AUTO_TEST_CASE(state_00_message_Accept3_fail) {
  testMessageFail("accept.ll", "accept.message_Accept3.json",
                  "accept.init.json", "accept.contrinfo.json",
                  "accept.state_00.json", "accept.output_Accept3_fail.txt");
}

BOOST_AUTO_TEST_SUITE_END() // accept

BOOST_AUTO_TEST_SUITE(ud)

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

BOOST_AUTO_TEST_SUITE_END() // contr_exec
