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

#include <ScillaVM/Errors.h>
#include <ScillaVM/SRTL.h>
#include <ScillaVM/Utils.h>

#include "../libsrtl/ScillaValue.h"
#include "StateJsonUtils.h"
#include "Testsuite.h"
#include "TypeDescrs.h"

namespace {
// Type parser partial cache for faster run across tests.
ScillaVM::ScillaTypes::TypParserPartialCache TPPC;

// Parse a state JSON, Re-serialize back to JSON and compare.
void testStateJson(const std::string &Testname) {
  using namespace ScillaVM;
  using namespace ScillaTestsuite;

  auto Filename = Config::TestsuiteSrc + "/state_jsons/" + Testname + ".json";

  struct SAlloc {
    std::vector<uint8_t *> Allocs;
    void *alloc(size_t Size) {
      auto P = new uint8_t[Size];
      Allocs.push_back(P);
      return reinterpret_cast<void *>(P);
    }
    ~SAlloc() {
      for (auto *P : Allocs) {
        delete[] P;
      }
      Allocs.clear();
    }
  };
  SAlloc SA;
  SAllocator Allocator = std::bind(&SAlloc::alloc, &SA, std::placeholders::_1);

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
      BOOST_REQUIRE_MESSAGE(T, "Parsing type " + VTyp.asString() + " failed");
      void *SVal = ScillaValues::fromJSON(Allocator, T, VVal);
      BOOST_TEST_CHECKPOINT(Filename + ": " + VName.asString() +
                            " parsed successfully");
      Json::Value VValR = ScillaValues::toJSON(T, SVal);
      BOOST_TEST_CHECKPOINT(Filename + ": " + VName.asString() +
                            " printed back successfully");
      canonicalizeStateValue(VVal);
      canonicalizeStateValue(VValR);
      BOOST_REQUIRE_MESSAGE(VValR == VVal,
                            "Comparison failed:\n" + VVal.toStyledString() +
                                "\nvs\n" + VValR.toStyledString());
      BOOST_TEST_CHECKPOINT(Filename + ": " + VName.asString() +
                            " comparison successful");
    }
  } catch (const ScillaVM::ScillaError &e) {
    BOOST_FAIL(e.toString());
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

BOOST_AUTO_TEST_SUITE_END()