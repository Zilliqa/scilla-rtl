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

// ByStr20 type
PrimTyp ByStr20_primtyp = []() {
  PrimTyp PT;
  PT.m_pt = PrimTyp::Bystrx_typ;
  PT.m_detail.m_bystX = 20;
  return PT;
}();
Typ ByStr20_typ = {Typ::Prim_typ, {&ByStr20_primtyp}};

// ByStr type
PrimTyp ByStr_primtyp = []() {
  PrimTyp PT;
  PT.m_pt = PrimTyp::Bystr_typ;
  PT.m_detail.m_bystX = 0;
  return PT;
}();
Typ ByStr_typ = {Typ::Prim_typ, {&ByStr_primtyp}};

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

Typ buildTyp_Address(AddressTyp *AT) {
  Typ R;
  R.m_t = Typ::Address_typ;
  R.m_sub.m_addrt = AT;
  return R;
}

// Convert a C string into a String value.
String buildString(const char *Str) {
  return {(uint8_t *)Str, (int)strlen(Str)};
}

AddressTyp::Field buildTyp_Field(const char *Name, const Typ *T) {
  AddressTyp::Field F;
  F.m_FTyp = T;
  F.m_Name = buildString(Name);
  return F;
}

Typ List_int32_typ = buildTyp_ADT(List_specls[0]);
Typ List_int64_typ = buildTyp_ADT(List_specls[1]);
Typ *List_int32_Cons_argtys[] = {&Int32_typ, &List_int32_typ};
Typ *List_int64_Cons_argtys[] = {&Int64_typ, &List_int64_typ};
ADTTyp::Constr List_int32_Cons = {buildString("Cons"), 2 /* m_numArgs */,
                                  List_int32_Cons_argtys /* m_args */};
ADTTyp::Constr List_int64_Cons = {buildString("Cons"), 2 /* m_numArgs */,
                                  List_int64_Cons_argtys /* m_args */};
ADTTyp::Constr List_Nil = {buildString("Nil"), 0 /* m_numArgs */,
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
ADTTyp Pair_adttyp = {buildString("Pair"), 2 /* m_numTArgs */,
                      1 /* m_numConstrs */, 2 /* m_numSpecls */,
                      Pair_specls /* specializations */};
Typ Pair_list_int32_int64_typ = buildTyp_ADT(Pair_specls[0]);
Typ Pair_int32_list_int64_typ = buildTyp_ADT(Pair_specls[1]);
Typ *Pair_list_int32_int64_Pair_argtys[] = {&List_int32_typ, &Int64_typ};
Typ *Pair_int32_list_int64_Pair_argtys[] = {&Int32_typ, &List_int64_typ};
ADTTyp::Constr Pair_list_int32_int64_Pair = {
    buildString("Pair"), 2 /* m_numArgs */, Pair_list_int32_int64_Pair_argtys};
ADTTyp::Constr Pair_int32_list_int64_Pair = {
    buildString("Pair"), 2 /* m_numArgs */, Pair_int32_list_int64_Pair_argtys};
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
// Map Int32 (Map Int32 String)
MapTyp Map_int32_map_int32_string_MapTyp = {&Int32_typ, &Map_int32_string_typ};
Typ Map_int32_map_int32_string_typ =
    buildTyp_Map(&Map_int32_map_int32_string_MapTyp);

AddressTyp ByStr20_with_end_Addr = {-1, nullptr};
Typ ByStr20_with_end_typ = buildTyp_Address(&ByStr20_with_end_Addr);

AddressTyp ByStr20_with_contract_end_Addr = {0, nullptr};
Typ ByStr20_with_contract_end_typ =
    buildTyp_Address(&ByStr20_with_contract_end_Addr);

AddressTyp::Field ByStr20_with_1_field_Fields[] = {
    buildTyp_Field("foo0", &Int32_typ)};
AddressTyp ByStr20_with_1_field_Addr = {1, ByStr20_with_1_field_Fields};
Typ ByStr20_with_1_field_Typ = buildTyp_Address(&ByStr20_with_1_field_Addr);

AddressTyp::Field ByStr20_with_2_fields_Fields[] = {
    buildTyp_Field("bar1", &Pair_list_int32_int64_typ),
    buildTyp_Field("foo1", &Map_int64_pair_int32_list_int64_typ)};
AddressTyp ByStr20_with_2_fields_Addr = {2, ByStr20_with_2_fields_Fields};
Typ ByStr20_with_2_fields_Typ = buildTyp_Address(&ByStr20_with_2_fields_Addr);

// clang-format off
const Typ* AllTyDescrs[] = {
  &Int32_typ, &Int64_typ, &Int128_typ, &Int256_typ,
  &Uint32_typ, &Uint64_typ, &Uint128_typ, &Uint256_typ,
  &String_typ, &BNum_typ, &List_int32_typ, &List_int64_typ,
  &Pair_list_int32_int64_typ, &Pair_int32_list_int64_typ,
  &Map_int32_string_typ, &Map_int64_pair_int32_list_int64_typ,
  &Map_int32_map_int32_string_typ, &ByStr_typ, &ByStr20_typ,
  &ByStr20_with_end_typ, &ByStr20_with_contract_end_typ,
  &ByStr20_with_1_field_Typ, &ByStr20_with_2_fields_Typ
};
size_t NTyDescrs = sizeof(AllTyDescrs) / sizeof(const Typ *);

// clang-format on

} // namespace TypeDescrs