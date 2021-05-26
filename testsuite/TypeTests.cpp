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

#include <algorithm>

#include <boost/test/unit_test.hpp>

#include "../libsrtl/ScillaTypes.h"
#include "TypeDescrs.h"
#include <ScillaVM/Errors.h>

namespace {
// Type parser partial cache for faster run across tests.
ScillaVM::ScillaTypes::TypParserPartialCache TPPC;
} // namespace

BOOST_AUTO_TEST_SUITE(types)

using namespace ScillaVM::ScillaTypes;

// This tests the testsuite type descriptors.
BOOST_AUTO_TEST_CASE(tydescrs_sanity) {
  using namespace TypeDescrs;

  for (size_t I = 0; I < NTyDescrs; I++) {
    BOOST_REQUIRE_MESSAGE(Typ::areAddressFieldsSorted(AllTyDescrs[I]),
                          Typ::toString(AllTyDescrs[I]));
  }
}

// Just print and verify our type descriptors above.
BOOST_AUTO_TEST_CASE(tydescrs_print) {
  using namespace TypeDescrs;

  BOOST_REQUIRE(Typ::toString(&Int32_typ) == "Int32");
  BOOST_REQUIRE(Typ::toString(&Int64_typ) == "Int64");
  BOOST_REQUIRE(Typ::toString(&Int128_typ) == "Int128");
  BOOST_REQUIRE(Typ::toString(&Int256_typ) == "Int256");
  BOOST_REQUIRE(Typ::toString(&Uint32_typ) == "Uint32");
  BOOST_REQUIRE(Typ::toString(&Uint64_typ) == "Uint64");
  BOOST_REQUIRE(Typ::toString(&Uint128_typ) == "Uint128");
  BOOST_REQUIRE(Typ::toString(&Uint256_typ) == "Uint256");
  BOOST_REQUIRE(Typ::toString(&String_typ) == "String");
  BOOST_REQUIRE(Typ::toString(&List_int32_typ) == "List (Int32)");
  BOOST_REQUIRE(Typ::toString(&List_int64_typ) == "List (Int64)");
  BOOST_REQUIRE(Typ::toString(&ByStr20_typ) == "ByStr20");
  BOOST_REQUIRE(Typ::toString(&ByStr_typ) == "ByStr");
  BOOST_REQUIRE(Typ::toString(&Bool_typ) == "Bool");
  BOOST_REQUIRE(Typ::toString(&Option_Int256_typ) == "Option (Int256)");
  BOOST_REQUIRE(Typ::toString(&ByStr20_with_1_field_Typ) ==
                "ByStr20 with contract field foo0 : Int32 end");
  BOOST_REQUIRE(
      Typ::toString(&ByStr20_with_2_fields_Typ) ==
      "ByStr20 with contract field bar1 : Pair (List (Int32)) (Int64), field "
      "foo1 : Map (Int64) (Pair (Int32) (List (Int64))) end");
}

const Typ *parseTypeString(const std::string TS) {
  using namespace TypeDescrs;
  try {
    return Typ::fromString(&TPPC, AllTyDescrs, NTyDescrs, TS);
  } catch (const ScillaVM::ScillaError &E) {
    BOOST_FAIL(E.toString());
  }
  BOOST_UNREACHABLE_RETURN();
}

void parserTestSuccess(const std::string &Input, const std::string &ExpectedO) {
  try {
    const Typ *T = parseTypeString(Input);
    BOOST_REQUIRE_MESSAGE(Typ::toString(T) == ExpectedO,
                          "Failed matching " << ExpectedO << " vs "
                                             << Typ::toString(T));
  } catch (const ScillaVM::ScillaError &E) {
    BOOST_FAIL(E.toString());
  }
}

void parserTestFail(const std::string &Input) {
  using namespace TypeDescrs;
  bool CaughtError = false;
  try {
    Typ::fromString(&TPPC, AllTyDescrs, NTyDescrs, Input);
  } catch (const ScillaVM::ScillaError &E) {
    CaughtError = true;
    BOOST_TEST_MESSAGE("\tCaught expected exception: " << E.toString());
  }
  BOOST_REQUIRE_MESSAGE(CaughtError,
                        "Type parser should have failed, but did not.");
}

BOOST_AUTO_TEST_CASE(parse_prims) {
  parserTestSuccess("(Int32)", "Int32");

  parserTestSuccess("Int32", "Int32");
  parserTestSuccess("Int64", "Int64");
  parserTestSuccess("Int128", "Int128");
  parserTestSuccess("Int256", "Int256");

  parserTestSuccess("Uint32", "Uint32");
  parserTestSuccess("Uint64", "Uint64");
  parserTestSuccess("Uint128", "Uint128");
  parserTestSuccess("Uint256", "Uint256");

  parserTestSuccess("String", "String");
  parserTestSuccess("BNum", "BNum");

  parserTestSuccess("ByStr20", "ByStr20");
}

BOOST_AUTO_TEST_CASE(adts) {
  parserTestSuccess("Bool", "Bool");
  parserTestSuccess("Option Int256", "Option (Int256)");
  parserTestSuccess("Option (Int256)", "Option (Int256)");
}

BOOST_AUTO_TEST_CASE(adts_fail) {
  parserTestFail("Bool True");
  parserTestFail("Bool (True)");
  parserTestFail("True");
  parserTestFail("Option Uint256 Int256");
  parserTestFail("Option (Uint256) (Int256)");
}

BOOST_AUTO_TEST_CASE(parse_prim_fail) {
  parserTestFail("(Int32");
  parserTestFail("Uint256)");
  parserTestFail("String Int32");
  parserTestFail("Uint128 (String)");
}

BOOST_AUTO_TEST_CASE(parse_string) { parserTestSuccess("String", "String"); }

BOOST_AUTO_TEST_CASE(parse_list_int32) {
  parserTestSuccess("List Int32", "List (Int32)");
  parserTestSuccess("List(Int32)", "List (Int32)");
}

BOOST_AUTO_TEST_CASE(parse_list_int64) {
  parserTestSuccess("List Int64", "List (Int64)");
  parserTestSuccess("List (Int64)", "List (Int64)");
}

BOOST_AUTO_TEST_CASE(parse_pair_list_int32_int64) {
  parserTestSuccess("Pair (List Int32) Int64", "Pair (List (Int32)) (Int64)");
}

BOOST_AUTO_TEST_CASE(parse_pair_int32_list_int64) {
  parserTestSuccess("Pair Int32 (List Int64)", "Pair (Int32) (List (Int64))");
}

BOOST_AUTO_TEST_CASE(parse_int33_fail) { parserTestFail("Int33"); }

BOOST_AUTO_TEST_CASE(parse_list_fail_1) { parserTestFail("List"); }

BOOST_AUTO_TEST_CASE(parse_list_fail_2) { parserTestFail("List Int"); }

BOOST_AUTO_TEST_CASE(parse_pair_list_int32_int64_fail) {
  parserTestFail("Pair List Int32 Int64");
}

BOOST_AUTO_TEST_CASE(parse_pair_int32_list_int64_fail) {
  parserTestFail("Pair Int32 List Int64");
}

BOOST_AUTO_TEST_CASE(parse_map_int32_string) {
  parserTestSuccess("Map Int32 String", "Map (Int32) (String)");
}

BOOST_AUTO_TEST_CASE(parser_map_int64_pair_int32_list_int64) {
  parserTestSuccess("Map Int64 (Pair Int32 (List Int64))",
                    "Map (Int64) (Pair (Int32) (List (Int64)))");
  parserTestSuccess("Map Int64 Pair Int32 (List Int64)",
                    "Map (Int64) (Pair (Int32) (List (Int64)))");
}

BOOST_AUTO_TEST_CASE(parser_map_int64_pair_int32_list_int64_fail) {
  // This is the same issue as with "parse_pair_list_int32_int64_fail"
  parserTestFail("Map Int64 Pair Int32 List Int64");
}

BOOST_AUTO_TEST_CASE(parse_addresses_succ) {
  parserTestSuccess("ByStr20 with end", "ByStr20 with end");
  parserTestSuccess("ByStr20 with contract end", "ByStr20 with contract end");
  parserTestSuccess("ByStr20 with contract field foo0 : Int32 end",
                    "ByStr20 with contract field foo0 : Int32 end");
  parserTestSuccess(
      "ByStr20 with contract field bar1 : Pair (List Int32) Int64, "
      "field foo1 : Map Int64 (Pair Int32 (List Int64)) end",
      "ByStr20 with contract field bar1 : Pair (List (Int32)) (Int64), field "
      "foo1 : Map (Int64) (Pair (Int32) (List (Int64))) end");
  // Fields defined in a different order.
  parserTestSuccess(
      "ByStr20 with contract field foo1 : Map Int64 (Pair Int32 (List Int64)), "
      "field bar1 : Pair (List Int32) Int64 end",
      "ByStr20 with contract field bar1 : Pair (List (Int32)) (Int64), field "
      "foo1 : Map (Int64) (Pair (Int32) (List (Int64))) end");
}

BOOST_AUTO_TEST_CASE(parse_addresses_fail) {
  // "end" missing.
  parserTestFail("ByStr20 with");
  // ByStr10 can't form addresses
  parserTestFail("ByStr10 with end");
  // "contract" missing
  parserTestFail("ByStr20 with field foo0 : Int32 end");
  // Foo0 instead of foo0
  parserTestFail("ByStr20 with contract field Foo0 : Int32 end");
  // "foo1" instead of "foo0"
  parserTestFail("ByStr20 with contract field foo1 : Int32 end");
  // "field" missing
  parserTestFail("ByStr20 with contract foo0 : Int32 end");
  // ';' instead of ',' as separator
  parserTestFail("ByStr20 with contract field bar1 : Pair (List Int32) Int64; "
                 "field foo1 : Map Int64 (Pair Int32 (List Int64)) end");
  // Field types incorrect, in different orders of names.
  parserTestFail("ByStr20 with contract field foo1 : Pair (List Int32) Int64, "
                 "field bar1 : Map Int64 (Pair Int32 (List Int64)) end");
  parserTestFail(
      "ByStr20 with contract field bar1 : Map Int64 (Pair Int32 (List Int64)), "
      "field foo1 : Pair (List Int32) Int64 end");
}

// Valid Scilla types, but unsupported in the VM.
BOOST_AUTO_TEST_CASE(valid_scilla_types_unsupported) {
  parserTestFail("forall 'A. 'A -> forall 'B. List ('B)");
  parserTestFail("forall 'A. 'A -> ByStr20 with contract field f : 'A end");
  parserTestFail("ByStr20 with contract field x : Uint32, field y : Bool end "
                 "-> ByStr20 with contract field y : Bool end");
}

BOOST_AUTO_TEST_CASE(equivalent_types) {
  std::string EqTypes[][2] = {
      {"ByStr20", "ByStr20"},
      {"ByStr20 with end", "ByStr20 with end"},
      {"ByStr20 with contract end", "ByStr20 with contract end"},
      {"ByStr20 with contract field x : Uint32 end",
       "ByStr20 with contract field x : Uint32 end"},
      {"ByStr20 with contract field x : Uint32, field y : Bool end",
       "ByStr20 with contract field x : Uint32, field y : Bool end"},
      {"ByStr20 with contract field y : Bool, field x : Uint32 end",
       "ByStr20 with contract field x : Uint32, field y : Bool end"},
      {"ByStr20 with contract field x : Uint32, field y : ByStr20 with end end",
       "ByStr20 with contract field x : Uint32, field y : ByStr20 with end "
       "end"},
      {"ByStr20 with contract field x : Uint32, field y : ByStr20 with "
       "contract end end",
       "ByStr20 with contract field x : Uint32, field y : ByStr20 with "
       "contract end end"},
      {"ByStr20 with contract field x : Uint32, field y : ByStr20 with "
       "contract field y2 : ByStr20, field y1 : Option Int256 end end",
       "ByStr20 with contract field x : Uint32, field y : ByStr20 with "
       "contract field y1 : Option Int256, field y2 : ByStr20 end end"},
      {"Map (ByStr20 with contract field x : Uint32, field y : ByStr20 with "
       "end end) ByStr20",
       "Map (ByStr20 with contract field x : Uint32, field y : ByStr20 with "
       "end end) ByStr20"},
      {"Map (ByStr20 with contract end) (ByStr20 with contract field x : "
       "Uint32 end)",
       "Map (ByStr20 with contract end) (ByStr20 with contract field x : "
       "Uint32 end)"},
      {"Map ByStr20 (ByStr20 with contract field x : Uint32 end)",
       "Map ByStr20 (ByStr20 with contract field x : Uint32 end)"},
  };

  const size_t NEqEntries = sizeof(EqTypes) / (sizeof(std::string) * 2);
  for (size_t I = 0; I < NEqEntries; I++) {
    BOOST_REQUIRE_MESSAGE(Typ::equal(parseTypeString(EqTypes[I][0]),
                                     parseTypeString(EqTypes[I][1])),
                          I);
  }
  for (size_t I = 0; I < NEqEntries; I++) {
    BOOST_REQUIRE_MESSAGE(Typ::assignable(parseTypeString(EqTypes[I][0]),
                                          parseTypeString(EqTypes[I][1])),
                          I);
  }
  for (size_t I = 0; I < NEqEntries; I++) {
    BOOST_REQUIRE_MESSAGE(Typ::assignable(parseTypeString(EqTypes[I][1]),
                                          parseTypeString(EqTypes[I][0])),
                          I);
  }
}

BOOST_AUTO_TEST_CASE(assignable_but_not_equivalent_types) {
  std::string AssTypes[][2] = {
      {"ByStr20", "ByStr20 with end"},
      {"ByStr20", "ByStr20 with contract end"},
      {"ByStr20 with end", "ByStr20 with contract end"},
      {"ByStr20 with end", "ByStr20 with contract field x : Uint32 end"},
      {"ByStr20 with contract end",
       "ByStr20 with contract field x : Uint32 end"},
      {"ByStr20 with contract field x : Uint32 end",
       "ByStr20 with contract field x : Uint32, field y : Uint32 end"},
      {"ByStr20 with contract field x : Uint32 end",
       "ByStr20 with contract field x : Uint32, field y : Uint32, field z : "
       "ByStr20 with end end"},
      {"ByStr20 with contract field y : Uint32, field x : Uint32 end",
       "ByStr20 with contract field x : Uint32, field y : Uint32, field z : "
       "ByStr20 with end end"},
      {"ByStr20 with contract field x : Uint32, field y : ByStr20 with "
       "contract field y1 : Int32 end end",
       "ByStr20 with contract field x : Uint32, field y : ByStr20 with "
       "contract field y2 : Bool, field y1 : Int32 end end"},
      {"ByStr20 with contract field x : Uint32, field y : ByStr20 with "
       "contract end end",
       "ByStr20 with contract field x : Uint32, field y : ByStr20 with "
       "contract field y2 : Bool, field y1 : Int32 end end"},
      {"ByStr20 with contract field x : ByStr20 with end end",
       "ByStr20 with contract field x : ByStr20 with contract end end"},
      {"Map (ByStr20 with end) (ByStr20 with contract field x : Uint32 end)",
       "Map (ByStr20 with contract end) (ByStr20 with contract field x : "
       "Uint32 end)"},
      {"Map (ByStr20 with contract end) (ByStr20 with contract end)",
       "Map (ByStr20 with contract end) (ByStr20 with contract field x : "
       "Uint32 end)"},
  };

  const size_t NAssEntries = sizeof(AssTypes) / (sizeof(std::string) * 2);
  for (size_t I = 0; I < NAssEntries; I++) {
    BOOST_REQUIRE_MESSAGE(Typ::assignable(parseTypeString(AssTypes[I][0]),
                                          parseTypeString(AssTypes[I][1])),
                          I);
  }
  for (size_t I = 0; I < NAssEntries; I++) {
    BOOST_REQUIRE_MESSAGE(!Typ::assignable(parseTypeString(AssTypes[I][1]),
                                           parseTypeString(AssTypes[I][0])),
                          I);
  }
  for (size_t I = 0; I < NAssEntries; I++) {
    BOOST_REQUIRE_MESSAGE(!Typ::equal(parseTypeString(AssTypes[I][0]),
                                      parseTypeString(AssTypes[I][1])),
                          I);
  }
}

BOOST_AUTO_TEST_CASE(not_assignable_in_either_direction_types) {
  std::string NAssTypes[][2] = {
      {"Int32", "Uint32"},
      // Addresses
      {"ByStr20 with contract field x : Int32 end",
       "ByStr20 with contract field x : Uint32 end"},
      {"ByStr20 with contract field x : Int32 end",
       "ByStr20 with contract field y : Int32 end"},
      {"ByStr20 with contract field x : Int32, field z : Uint32 end",
       "ByStr20 with contract field y : Int32, field w : Uint32 end"},
      {"ByStr20 with contract field x : ByStr20 with contract field y1 : Int32 "
       "end end",
       "ByStr20 with contract field x : ByStr20 with contract field y1 : "
       "Uint32 end end"},
      {"ByStr20 with contract field x : ByStr20 with contract field y1 : Int32 "
       "end end",
       "ByStr20 with contract field x : ByStr20 with contract field y2 : Int32 "
       "end end"},
      {"Map (ByStr20 with contract end) (ByStr20 with contract field x : "
       "Uint32 end)",
       "Map (ByStr20 with contract field x : Uint32 end) (ByStr20 with "
       "contract end)"},
      {"Map (ByStr20 with contract end) (ByStr20 with contract field y : "
       "Uint32 end)",
       "Map (ByStr20 with contract end) (ByStr20 with contract field x : "
       "Uint32 end)"},
      {"Map (ByStr20 with contract field y : Uint32 end) (ByStr20 with "
       "contract end)",
       "Map (ByStr20 with contract field x : Uint32 end) (ByStr20 with "
       "contract end)"},
  };

  const size_t NNAssEntries = sizeof(NAssTypes) / (sizeof(std::string) * 2);
  for (size_t I = 0; I < NNAssEntries; I++) {
    BOOST_REQUIRE_MESSAGE(!Typ::assignable(parseTypeString(NAssTypes[I][0]),
                                           parseTypeString(NAssTypes[I][1])),
                          I);
  }
  for (size_t I = 0; I < NNAssEntries; I++) {
    BOOST_REQUIRE_MESSAGE(!Typ::assignable(parseTypeString(NAssTypes[I][1]),
                                           parseTypeString(NAssTypes[I][0])),
                          I);
  }
  for (size_t I = 0; I < NNAssEntries; I++) {
    BOOST_REQUIRE_MESSAGE(!Typ::equal(parseTypeString(NAssTypes[I][0]),
                                      parseTypeString(NAssTypes[I][1])),
                          I);
  }
}

BOOST_AUTO_TEST_SUITE_END()
