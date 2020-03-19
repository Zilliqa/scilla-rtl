#include <boost/test/output_test_stream.hpp>
#include <boost/test/unit_test.hpp>

#include "../libsrtl/ScillaTypes.h"
#include <ScillaVM/Errors.h>

namespace {
using namespace ScillaVM::ScillaTypes;

// IntX types
PrimTyp Int32_primtyp = {PrimTyp::Int_typ, {PrimTyp::Bits32}};
Typ Int32_typ = {Typ::Prim_typ, {&Int32_primtyp}};

PrimTyp Int64_primtyp = {PrimTyp::Int_typ, {PrimTyp::Bits64}};
Typ Int64_typ = {Typ::Prim_typ, {&Int64_primtyp}};

PrimTyp Int128_primtyp = {PrimTyp::Int_typ, {PrimTyp::Bits128}};
Typ Int128_typ = {Typ::Prim_typ, {&Int128_primtyp}};

PrimTyp Int256_primtyp = {PrimTyp::Int_typ, {PrimTyp::Bits256}};
Typ Int256_typ = {Typ::Prim_typ, {&Int256_primtyp}};

// UintX types
PrimTyp Uint32_primtyp = {PrimTyp::Uint_typ, {PrimTyp::Bits32}};
Typ Uint32_typ = {Typ::Prim_typ, {&Uint32_primtyp}};

PrimTyp Uint64_primtyp = {PrimTyp::Uint_typ, {PrimTyp::Bits64}};
Typ Uint64_typ = {Typ::Prim_typ, {&Uint64_primtyp}};

PrimTyp Uint128_primtyp = {PrimTyp::Uint_typ, {PrimTyp::Bits128}};
Typ Uint128_typ = {Typ::Prim_typ, {&Uint128_primtyp}};

PrimTyp Uint256_primtyp = {PrimTyp::Uint_typ, {PrimTyp::Bits256}};
Typ Uint256_typ = {Typ::Prim_typ, {&Uint256_primtyp}};

// String type
PrimTyp String_primtyp = []() {
  PrimTyp PT;
  PT.m_pt = PrimTyp::String_typ;
  PT.m_detail.m_bystX = 0;
  return PT;
}();
Typ String_typ = {Typ::Prim_typ, {&String_primtyp}};

// BNum type
PrimTyp BNum_primtyp = []() {
  PrimTyp PT;
  PT.m_pt = PrimTyp::Bnum_typ;
  PT.m_detail.m_bystX = 0;
  return PT;
}();
Typ BNum_typ = {Typ::Prim_typ, {&BNum_primtyp}};

// List type, with Int32 and Int64 specializations.
extern ADTTyp::Specl *List_specls[];
ADTTyp List_adttyp = {{(uint8_t *)"List", (int)strlen("List")},
                      1 /* m_numTArgs */,
                      2 /* m_numConstrs */,
                      2 /* m_numSpecls */,
                      List_specls /* specializations */};

// C++ doesn't support C99's designated initializers.
// So this is a workaround to initialize our struct.
Typ buildTyp_ADT(ADTTyp::Specl *Specl) {
  Typ R;
  R.m_t = Typ::ADT_typ;
  R.m_sub.m_spladt = Specl;
  return R;
}
Typ buildTyp_Map(MapTyp *MT) {
  Typ R;
  R.m_t = Typ::Map_typ;
  R.m_sub.m_mapt = MT;
  return R;
}

Typ List_int32_typ = buildTyp_ADT(List_specls[0]);
Typ List_int64_typ = buildTyp_ADT(List_specls[1]);
Typ *List_int32_Cons_argtys[] = {&Int32_typ, &List_int32_typ};
Typ *List_int64_Cons_argtys[] = {&Int64_typ, &List_int64_typ};
ADTTyp::Constr List_int32_Cons = {{(uint8_t *)"Cons", (int)strlen("Cons")},
                                  2 /* m_numArgs */,
                                  List_int32_Cons_argtys /* m_args */};
ADTTyp::Constr List_int64_Cons = {{(uint8_t *)"Cons", (int)strlen("Cons")},
                                  2 /* m_numArgs */,
                                  List_int64_Cons_argtys /* m_args */};
ADTTyp::Constr List_Nil = {{(uint8_t *)"Nil", (int)strlen("Nil")},
                           0 /* m_numArgs */,
                           nullptr /* m_args */};
Typ *List_int32_argtys[] = {&Int32_typ};
Typ *List_int64_argtys[] = {&Int64_typ};
ADTTyp::Constr *List_int32_constrs[] = {&List_int32_Cons, &List_Nil};
ADTTyp::Constr *List_int64_constrs[] = {&List_int64_Cons, &List_Nil};
ADTTyp::Specl List_int32_specl = {List_int32_argtys, List_int32_constrs,
                                  &List_adttyp};
ADTTyp::Specl List_int64_specl = {List_int64_argtys, List_int64_constrs,
                                  &List_adttyp};
ADTTyp::Specl *List_specls[] = {&List_int32_specl, &List_int64_specl};

// Pair (List Int32) Int64 and Pair Int32 (List Int64)
extern ADTTyp::Specl *Pair_specls[];
ADTTyp Pair_adttyp = {{(uint8_t *)"Pair", (int)strlen("Pair")},
                      2 /* m_numTArgs */,
                      1 /* m_numConstrs */,
                      2 /* m_numSpecls */,
                      Pair_specls /* specializations */};
Typ Pair_list_int32_int64_typ = buildTyp_ADT(Pair_specls[0]);
Typ Pair_int32_list_int64_typ = buildTyp_ADT(Pair_specls[1]);
Typ *Pair_list_int32_int64_Pair_argtys[] = {&List_int32_typ, &Int64_typ};
Typ *Pair_int32_list_int64_Pair_argtys[] = {&Int32_typ, &List_int64_typ};
ADTTyp::Constr Pair_list_int32_int64_Pair = {
    {(uint8_t *)"Pair", (int)strlen("Pair")},
    2 /* m_numArgs */,
    Pair_list_int32_int64_Pair_argtys};
ADTTyp::Constr Pair_int32_list_int64_Pair = {
    {(uint8_t *)"Pair", (int)strlen("Pair")},
    2 /* m_numArgs */,
    Pair_int32_list_int64_Pair_argtys};
Typ *Pair_list_int32_int64_argtys[] = {&List_int32_typ, &Int64_typ};
Typ *Pair_int32_list_int64_argtys[] = {&Int32_typ, &List_int64_typ};
ADTTyp::Constr *Pair_list_int32_int64_constrs[] = {&Pair_list_int32_int64_Pair};
ADTTyp::Constr *Pair_int32_list_int64_constrs[] = {&Pair_int32_list_int64_Pair};
ADTTyp::Specl Pair_list_int32_int64_specl = {
    Pair_list_int32_int64_argtys, Pair_list_int32_int64_constrs, &Pair_adttyp};
ADTTyp::Specl Pair_int32_list_int64_specl = {
    Pair_int32_list_int64_argtys, Pair_int32_list_int64_constrs, &Pair_adttyp};
ADTTyp::Specl *Pair_specls[] = {&Pair_list_int32_int64_specl,
                                &Pair_int32_list_int64_specl};

// Map Int32 String, Map Int64 (Pair Int32 (List Int64))
MapTyp Map_int32_string_MapTyp = {&Int32_typ, &String_typ};
Typ Map_int32_string_typ = buildTyp_Map(&Map_int32_string_MapTyp);
MapTyp Map_int64_pair_int32_list_int64_MapTyp = {&Int64_typ,
                                                 &Pair_int32_list_int64_typ};
Typ Map_int64_pair_int32_list_int64_typ =
    buildTyp_Map(&Map_int64_pair_int32_list_int64_MapTyp);

// clang-format off
const Typ* AllTyDescrs[] = {
  &Int32_typ, &Int64_typ, &Int128_typ, &Int256_typ,
  &Uint32_typ, &Uint64_typ, &Uint128_typ, &Uint256_typ,
  &String_typ, &BNum_typ, &List_int32_typ, &List_int64_typ,
  &Pair_list_int32_int64_typ, &Pair_int32_list_int64_typ,
  &Map_int32_string_typ, &Map_int64_pair_int32_list_int64_typ
};
size_t NTyDescrs = sizeof(AllTyDescrs) / sizeof(const Typ *);

// clang-format on

} // namespace

BOOST_AUTO_TEST_SUITE(typ_parser)
using namespace ScillaVM::ScillaTypes;

// Just print and verify our type descriptors above.
BOOST_AUTO_TEST_CASE(tydescrs_print) {
  BOOST_ASSERT(Typ::toString(&Int32_typ) == "Int32");
  BOOST_ASSERT(Typ::toString(&Int64_typ) == "Int64");
  BOOST_ASSERT(Typ::toString(&Int128_typ) == "Int128");
  BOOST_ASSERT(Typ::toString(&Int256_typ) == "Int256");
  BOOST_ASSERT(Typ::toString(&Uint32_typ) == "Uint32");
  BOOST_ASSERT(Typ::toString(&Uint64_typ) == "Uint64");
  BOOST_ASSERT(Typ::toString(&Uint128_typ) == "Uint128");
  BOOST_ASSERT(Typ::toString(&Uint256_typ) == "Uint256");
  BOOST_ASSERT(Typ::toString(&String_typ) == "String");
  BOOST_ASSERT(Typ::toString(&List_int32_typ) == "List (Int32)");
  BOOST_ASSERT(Typ::toString(&List_int64_typ) == "List (Int64)");
}

void parserTestSuccess(const std::string &Input, const std::string &ExpectedO) {
  try {
    const Typ *T = Typ::fromString(AllTyDescrs, NTyDescrs, Input);
    BOOST_ASSERT(T && Typ::toString(T) == ExpectedO);
  } catch (const ScillaVM::ScillaError &E) {
    BOOST_FAIL(E.toString());
  }
}

void parserTestFail(const std::string &Input) {
  try {
    const Typ *T = Typ::fromString(AllTyDescrs, NTyDescrs, Input);
    BOOST_ASSERT_MSG(!T, "Type parser should have failed, but did not.");
  } catch (const ScillaVM::ScillaError &E) {
    BOOST_TEST_MESSAGE("\tCaught expected exception: " << E.toString());
  }
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

BOOST_AUTO_TEST_SUITE_END()
