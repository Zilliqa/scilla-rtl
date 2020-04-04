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
#include <boost/test/unit_test.hpp>

#include <ScillaVM/Errors.h>
#include <ScillaVM/SRTL.h>
#include <ScillaVM/Utils.h>

#include "Testsuite.h"

using namespace ScillaVM;

namespace {

const std::string CacheDir((boost::filesystem::temp_directory_path() /=
                            "scilla_testsuite_cache")
                               .native());
ScillaObjCache OCache(CacheDir);

void testMessage(const std::string &ContrFilename,
                 const std::string &MessageFilename,
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

  Json::Value MessageJSON;
  try {
    // Prepare all inputs.
    MessageJSON = parseJSONFile(PathPrefix + MessageFilename);
    auto SJ = parseJSONFile(PathPrefix + StateFilename);
    auto CIJ = parseJSONFile(PathPrefix + ContrInfoFilename);
    // Update our in-memory state table with the one from the JSONs.
    State.initFromJSON(SJ, CIJ);
  } catch (const ScillaError &e) {
    BOOST_FAIL(e.toString());
  }

  // Create a JIT engine and execute the message.
  // TODO: Due to the below mentioned bug, this can't be in a try-catch block.
  std::unique_ptr<ScillaVM::ScillaJIT> JE;
  {
    ScopeTimer CreateTimer(ContrFilename + ": ScillaJIT::create");
    JE = ScillaJIT::create(SP, PathPrefix + ContrFilename, &OCache);
  }
  try {
    {
      ScopeTimer ExecMsgTimer(ContrFilename + ": ScillaJIT::execMsg");
      JE->execMsg(MessageJSON);
    }
    // Append output state to the Scilla output.
    auto OJ = State.dumpToJSON();
    auto EOJ = parseJSONFile(PathPrefix + ExpectedOutputFilename);
    BOOST_REQUIRE_MESSAGE(EOJ == OJ, "Comparison failed:\n" +
                                         EOJ.toStyledString() + "\nvs\n" +
                                         OJ.toStyledString());
  } catch (const ScillaError &e) {
    BOOST_FAIL(e.toString());
  }

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
              "simple-map.contrinfo.json", "simple-map.state_00.json",
              "simple-map.state_02.json");
}

BOOST_AUTO_TEST_CASE(state_01_message_Increment) {
  testMessage("simple-map.ll", "simple-map.message_Increment.json",
              "simple-map.contrinfo.json", "simple-map.state_01.json",
              "simple-map.state_03.json");
}

BOOST_AUTO_TEST_CASE(state_00_message_IncrementN_1) {
  testMessage("simple-map.ll", "simple-map.message_IncrementN_1.json",
              "simple-map.contrinfo.json", "simple-map.state_00.json",
              "simple-map.state_04.json");
}

BOOST_AUTO_TEST_CASE(state_01_message_IncrementN_1) {
  testMessage("simple-map.ll", "simple-map.message_IncrementN_1.json",
              "simple-map.contrinfo.json", "simple-map.state_01.json",
              "simple-map.state_05.json");
}

BOOST_AUTO_TEST_SUITE_END() // simple_map

BOOST_AUTO_TEST_SUITE_END() // contr_exec
