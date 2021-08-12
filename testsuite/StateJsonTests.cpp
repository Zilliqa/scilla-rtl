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

#include <boost/test/unit_test.hpp>

#include <ScillaRTL/Errors.h>
#include <ScillaRTL/Utils.h>

#include "../libScillaRTL/ObjManager.h"
#include "../libScillaRTL/ScillaValue.h"

#include "StateJsonUtils.h"
#include "Testsuite.h"
#include "TypeDescrs.h"

namespace {
// Type parser partial cache for faster run across tests.
ScillaRTL::ScillaTypes::TypParserPartialCache TPPC;

// Parse a state JSON, Re-serialize back to JSON and compare.
void testStateJson(const std::string &Testname, bool ExpectError = false) {
  using namespace ScillaRTL;
  using namespace ScillaTestsuite;

  auto Filename = Config::TestsuiteSrc + "/state_jsons/" + Testname + ".json";

  bool Errored = false;
  ObjManager OM;

  Json::Value J = parseJSONFile(Filename);
  BOOST_TEST_CHECKPOINT(Filename + ": State JSON parsed");
  BOOST_REQUIRE_MESSAGE(J.isArray(), "State JSON should be array of variables");
  try {
    for (auto &V : J) {
      Json::Value VName, VTyp, VVal;
      if ((VName = V.get("vname", Json::nullValue)) == Json::nullValue ||
          (VTyp = V.get("type", Json::nullValue)) == Json::nullValue ||
          (VVal = V.get("value", Json::nullValue)) == Json::nullValue ||
          !VName.isString() || !VTyp.isString()) {
        BOOST_FAIL(Filename + " invalid state JSON format");
      }

      const auto *T =
          ScillaTypes::Typ::fromString(&TPPC, TypeDescrs::AllTyDescrs,
                                       TypeDescrs::NTyDescrs, VTyp.asString());
      void *SVal = ScillaValues::fromJSON(OM, T, VVal);
      BOOST_TEST_CHECKPOINT(Filename + ": " + VName.asString() +
                            " parsed successfully");
      Json::Value VValR = ScillaValues::toJSON(T, SVal);
      BOOST_TEST_CHECKPOINT(Filename + ": " + VName.asString() +
                            " printed back successfully");
      canonicalizeStateValue(VVal);
      canonicalizeStateValue(VValR);
      BOOST_CHECK_MESSAGE(VValR == VVal, "Comparison failed:\n" +
                                             prettyPrintJSON(VVal) + "\nvs\n" +
                                             prettyPrintJSON(VValR));
      BOOST_TEST_CHECKPOINT(Filename + ": " + VName.asString() +
                            " comparison successful");
    }
  } catch (const ScillaRTL::ScillaError &e) {
    if (!ExpectError)
      BOOST_FAIL(e.toString());
    else
      Errored = true;
  }
  if (ExpectError && !Errored) {
    BOOST_FAIL("Test was expected to fail, but did not");
  }
  BOOST_TEST_CHECKPOINT(Filename + ": test completed");
}

} // namespace

BOOST_AUTO_TEST_SUITE(state_json_parse_print)

BOOST_AUTO_TEST_CASE(int_types) { testStateJson("int_types"); }
BOOST_AUTO_TEST_CASE(uint_types) { testStateJson("uint_types"); }
BOOST_AUTO_TEST_CASE(prim_types) { testStateJson("prim_types"); }
BOOST_AUTO_TEST_CASE(list_types) { testStateJson("list_types"); }
BOOST_AUTO_TEST_CASE(pair_types) { testStateJson("pair_types"); }
BOOST_AUTO_TEST_CASE(map_types) { testStateJson("map_types"); }

// Expected failures
BOOST_AUTO_TEST_CASE(string_invalid) { testStateJson("string_invalid", true); }

BOOST_AUTO_TEST_SUITE_END()