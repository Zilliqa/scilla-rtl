#include <cstring>

#include "TypeDescrs.h"

namespace TypeDescrs {

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