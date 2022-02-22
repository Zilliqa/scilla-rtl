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

using namespace ScillaRTL::ScillaTypes;

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
PrimTyp String_primtyp({PrimTyp::String_typ, PrimTyp::PrimU(0)});
Typ String_typ({Typ::Prim_typ, {&String_primtyp}});

// ByStr20 type
PrimTyp ByStr20_primtyp({PrimTyp::Bystrx_typ, PrimTyp::PrimU(20)});
Typ ByStr20_typ = {Typ::Prim_typ, {&ByStr20_primtyp}};

// ByStr type
PrimTyp ByStr_primtyp({PrimTyp::Bystr_typ, PrimTyp::PrimU(0)});
Typ ByStr_typ = {Typ::Prim_typ, {&ByStr_primtyp}};

// BNum type
PrimTyp BNum_primtyp({PrimTyp::Bnum_typ, PrimTyp::PrimU(0)});
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
  return {Typ::ADT_typ, Typ::TypU(Specl)};
}

Typ buildTyp_Map(MapTyp *MT) { return {Typ::Map_typ, Typ::TypU(MT)}; }

Typ buildTyp_Address(AddressTyp *AT) {
  return {Typ::Address_typ, Typ::TypU(AT)};
}

// Convert a C string into a String value.
String buildString(const char *Str) {
  return {(uint8_t *)Str, (int)strlen(Str)};
}

AddressTyp::Field buildTyp_Field(const char *Name, const Typ *T) {
  return AddressTyp::Field({buildString(Name), T});
}

AddressTyp ByStr20_with_library_end_Addr = {-1, nullptr};
Typ ByStr20_with_library_end_typ = buildTyp_Address(&ByStr20_with_library_end_Addr);
AddressTyp ByStr20_with_codehash_end_Addr = {-2, nullptr};
Typ ByStr20_with_codehash_end_typ = buildTyp_Address(&ByStr20_with_codehash_end_Addr);
AddressTyp ByStr20_with_end_Addr = {-3, nullptr};
Typ ByStr20_with_end_typ = buildTyp_Address(&ByStr20_with_end_Addr);

ADTTyp::Constr Bool_True = {buildString("True"), 0 /* m_numArgs */,
                            nullptr /* m_args */};
ADTTyp::Constr Bool_False = {buildString("False"), 0 /* m_numArgs */,
                             nullptr /* m_args */};
const ADTTyp::Constr *Bool_constrs[2] = {&Bool_True, &Bool_False};
extern ADTTyp Bool_adttyp;
ADTTyp::Specl Bool_specl = {nullptr, Bool_constrs, &Bool_adttyp};
ADTTyp::Specl *Bool_specls[1] = {&Bool_specl};
ADTTyp Bool_adttyp = {buildString("Bool"), 0 /* m_numTArgs */,
                      2 /* m_numConstrs */, 1 /* m_numSpecls */,
                      Bool_specls /* specializations */};
Typ Bool_typ = buildTyp_ADT(&Bool_specl);

Typ *Option_Int256_targs[] = {&Int256_typ};
ADTTyp::Constr Option_Some_Int256 = {buildString("Some"), 1 /* m_numArgs */,
                                     Option_Int256_targs /* m_args */};
ADTTyp::Constr Option_None = {buildString("None"), 0 /* m_numArgs */,
                              nullptr /* m_args */};
const ADTTyp::Constr *Option_Int256_constrs[2] = {&Option_Some_Int256,
                                                  &Option_None};
extern ADTTyp Option_adttyp;
ADTTyp::Specl Option_Int256_specl = {Option_Int256_targs, Option_Int256_constrs,
                                     &Option_adttyp};
Typ *Option_ByStr20_targs[] = {&ByStr20_typ};
ADTTyp::Constr Option_Some_ByStr20 = {buildString("Some"), 1 /* m_numArgs */,
                                      Option_ByStr20_targs /* m_args */};
const ADTTyp::Constr *Option_ByStr20_constrs[2] = {&Option_Some_ByStr20,
                                                   &Option_None};
ADTTyp::Specl Option_ByStr20_specl = {Option_ByStr20_targs,
                                      Option_ByStr20_constrs, &Option_adttyp};
Typ *Option_ByStr20_with_end_targs[] = {&ByStr20_with_end_typ};
ADTTyp::Constr Option_Some_ByStr20_with_end = {
    buildString("Some"), 1 /* m_numArgs */,
    Option_ByStr20_with_end_targs /* m_args */};
const ADTTyp::Constr *Option_ByStr20_with_end_constrs[2] = {
    &Option_Some_ByStr20_with_end, &Option_None};
ADTTyp::Specl Option_ByStr20_with_end_specl = {Option_ByStr20_with_end_targs,
                                               Option_ByStr20_with_end_constrs,
                                               &Option_adttyp};
ADTTyp::Specl *Option_specls[3] = {&Option_Int256_specl, &Option_ByStr20_specl,
                                   &Option_ByStr20_with_end_specl};
ADTTyp Option_adttyp = {buildString("Option"), 1 /* m_numTArgs */,
                        2 /* m_numConstrs */, 1 /* m_numSpecls */,
                        Option_specls /* specializations */};
Typ Option_Int256_typ = buildTyp_ADT(&Option_Int256_specl);
Typ Option_ByStr20_typ = buildTyp_ADT(&Option_ByStr20_specl);
Typ Option_ByStr20_with_end_typ = buildTyp_ADT(&Option_ByStr20_with_end_specl);

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
const ADTTyp::Constr *List_int32_constrs[] = {&List_int32_Cons, &List_Nil};
const ADTTyp::Constr *List_int64_constrs[] = {&List_int64_Cons, &List_Nil};
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
const ADTTyp::Constr *Pair_list_int32_int64_constrs[] = {
    &Pair_list_int32_int64_Pair};
const ADTTyp::Constr *Pair_int32_list_int64_constrs[] = {
    &Pair_int32_list_int64_Pair};
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

// ByStr20 with contract field x : Uint32 end
AddressTyp::Field Field_X = buildTyp_Field("x", &Uint32_typ);
AddressTyp Address_contract_x_Addr = {1, &Field_X};
Typ Address_contract_x_Typ = buildTyp_Address(&Address_contract_x_Addr);

// ByStr20 with contract field x : Int32 end
AddressTyp::Field Field_XInt32 = buildTyp_Field("x", &Int32_typ);
AddressTyp Address_contract_xInt32_Addr = {1, &Field_XInt32};
Typ Address_contract_xInt32_Typ =
    buildTyp_Address(&Address_contract_xInt32_Addr);

// ByStr20 with contract field y : Uint32 end
AddressTyp::Field Field_YUint32 = buildTyp_Field("y", &Uint32_typ);
AddressTyp Address_contract_yUint32_Addr = {1, &Field_YUint32};
Typ Address_contract_yUint32_Typ =
    buildTyp_Address(&Address_contract_yUint32_Addr);

// ByStr20 with contract field x : ByStr20 with end end
AddressTyp::Field Field_XAddr = buildTyp_Field("x", &ByStr20_with_end_typ);
AddressTyp Address_contract_xaddr_Addr = {1, &Field_XAddr};
Typ Address_contract_xaddr_Typ = buildTyp_Address(&Address_contract_xaddr_Addr);

// ByStr20 with contract field x : ByStr20 with contract end end
AddressTyp::Field Field_XContrAddr =
    buildTyp_Field("x", &ByStr20_with_contract_end_typ);
AddressTyp Address_contract_xcontraddr_Addr = {1, &Field_XContrAddr};
Typ Address_contract_xcontraddr_Typ =
    buildTyp_Address(&Address_contract_xcontraddr_Addr);

// ByStr20 with contract field y1 : Int32 end
AddressTyp::Field Field_YInt32 = buildTyp_Field("y", &Int32_typ);
AddressTyp Address_contract_yInt32_Addr = {1, &Field_YInt32};
Typ Address_contract_yInt32_Typ =
    buildTyp_Address(&Address_contract_yInt32_Addr);

// ByStr20 with contract field y1 : Int32 end
AddressTyp::Field Field_Y1 = buildTyp_Field("y1", &Int32_typ);
AddressTyp Address_contract_y1_Addr = {1, &Field_Y1};
Typ Address_contract_y1_Typ = buildTyp_Address(&Address_contract_y1_Addr);

// ByStr20 with contract field y2 : Int32 end
AddressTyp::Field Field_y2Int32 = buildTyp_Field("y2", &Int32_typ);
AddressTyp Address_contract_y2Int32_Addr = {1, &Field_y2Int32};
Typ Address_contract_y2Int32_Typ =
    buildTyp_Address(&Address_contract_y2Int32_Addr);

// ByStr20 with contract field y1 : Uint32 end
AddressTyp::Field Field_Y1Uint32 = buildTyp_Field("y1", &Uint32_typ);
AddressTyp Address_contract_y1Uint32_Addr = {1, &Field_Y1Uint32};
Typ Address_contract_y1Uint32_Typ =
    buildTyp_Address(&Address_contract_y1Uint32_Addr);

// ByStr20 with contract field x : ByStr20 with y1 : Uint32 contract end end
AddressTyp::Field Field_X_Y1Uint32 =
    buildTyp_Field("x", &Address_contract_y1Uint32_Typ);
AddressTyp Address_contract_xcontraddr_y1Uint32_Addr = {1, &Field_X_Y1Uint32};
Typ Address_contract_xcontraddr_y1Uint32_Typ =
    buildTyp_Address(&Address_contract_xcontraddr_y1Uint32_Addr);

// ByStr20 with contract field x : ByStr20 with y1 : Int32 contract end end
AddressTyp::Field Field_X_Y1Int32 =
    buildTyp_Field("x", &Address_contract_y1_Typ);
AddressTyp Address_contract_xcontraddr_y1Int32_Addr = {1, &Field_X_Y1Int32};
Typ Address_contract_xcontraddr_y1Int32_Typ =
    buildTyp_Address(&Address_contract_xcontraddr_y1Int32_Addr);

// ByStr20 with contract field x : ByStr20 with Y2 : Int32 contract end end
AddressTyp::Field Field_X_Y2Int32 =
    buildTyp_Field("x", &Address_contract_y2Int32_Typ);
AddressTyp Address_contract_xcontraddr_Y2Int32_Addr = {1, &Field_X_Y2Int32};
Typ Address_contract_xcontraddr_Y2Int32_Typ =
    buildTyp_Address(&Address_contract_xcontraddr_Y2Int32_Addr);

// ByStr20 with contract field x : Uint32, field y : Uint32 end
AddressTyp::Field Fields_XY[2] = {Field_X, buildTyp_Field("y", &Uint32_typ)};
AddressTyp Address_contract_x_y_Addr = {2, Fields_XY};
Typ Address_contract_x_y_Typ = buildTyp_Address(&Address_contract_x_y_Addr);

// ByStr20 with contract field x : Uint32, field y : Uint32, field z : ByStr20
// with end end
AddressTyp::Field Fields_XYZ[3] = {Field_X, buildTyp_Field("y", &Uint32_typ),
                                   buildTyp_Field("z", &ByStr20_with_end_typ)};
AddressTyp Address_contract_x_y_z_Addr = {3, Fields_XYZ};
Typ Address_contract_x_y_z_Typ = buildTyp_Address(&Address_contract_x_y_z_Addr);

// ByStr20 with contract field x : Uint32, field y : Bool end
AddressTyp::Field Fields_XYbool[2] = {Field_X, buildTyp_Field("y", &Bool_typ)};
AddressTyp Address_contract_x_ybool_Addr = {2, Fields_XYbool};
Typ Address_contract_x_ybool_Typ =
    buildTyp_Address(&Address_contract_x_ybool_Addr);

// ByStr20 with contract field y : Int32, field w : Uint32 end
AddressTyp::Field Fields_YInt32WUint32[2] = {buildTyp_Field("w", &Uint32_typ),
                                             buildTyp_Field("y", &Int32_typ)};
AddressTyp Address_YInt32WUint32_Addr = {2, Fields_YInt32WUint32};
Typ Address_YInt32WUint32_Typ = buildTyp_Address(&Address_YInt32WUint32_Addr);

// ByStr20 with contract field x : Int32, field z : Uint32 end
AddressTyp::Field Fields_XInt32ZUint32[2] = {buildTyp_Field("x", &Int32_typ),
                                             buildTyp_Field("z", &Uint32_typ)};
AddressTyp Address_XInt32ZUint32_Addr = {2, Fields_XInt32ZUint32};
Typ Address_XInt32ZUint32_Typ = buildTyp_Address(&Address_XInt32ZUint32_Addr);

// ByStr20 with contract field x : Uint32, field y : ByStr20 end
AddressTyp::Field Fields_XYbystr20[2] = {Field_X,
                                         buildTyp_Field("y", &ByStr20_typ)};
AddressTyp Address_contract_x_ybystr20_Addr = {2, Fields_XYbystr20};
Typ Address_contract_x_ybystr20_Typ =
    buildTyp_Address(&Address_contract_x_ybystr20_Addr);

// ByStr20 with contract field x : Uint32, field y : ByStr20 with end end
AddressTyp::Field Fields_XYbystr20end[2] = {
    Field_X, buildTyp_Field("y", &ByStr20_with_end_typ)};
AddressTyp Address_contract_x_ybystr20end_Addr = {2, Fields_XYbystr20end};
Typ Address_contract_x_ybystr20end_Typ =
    buildTyp_Address(&Address_contract_x_ybystr20end_Addr);

// ByStr20 with contract field x : Uint32, field y : ByStr20 with contract end
// end
AddressTyp::Field Fields_XYbystr20contractend[2] = {
    Field_X, buildTyp_Field("y", &ByStr20_with_contract_end_typ)};
AddressTyp Address_contract_x_ybystr20contractend_Addr = {
    2, Fields_XYbystr20contractend};
Typ Address_contract_x_ybystr20contractend_Typ =
    buildTyp_Address(&Address_contract_x_ybystr20contractend_Addr);

// ByStr20 with contract field y1 : Option Int256, field y2 : ByStr20
AddressTyp::Field Fields_Y1OptionInt256Y2ByStr20[] = {
    buildTyp_Field("y1", &Option_Int256_typ),
    buildTyp_Field("y2", &ByStr20_typ)};
AddressTyp Address_Y1OptionInt256Y2ByStr20_Addr = {
    2, Fields_Y1OptionInt256Y2ByStr20};
Typ Address_Y1OptionInt256Y2ByStr20_Typ =
    buildTyp_Address(&Address_Y1OptionInt256Y2ByStr20_Addr);

// ByStr20 with contract field y1 : Int32, field y2 : Bool
AddressTyp::Field Fields_Y1Int32Y2Bool[] = {buildTyp_Field("y1", &Int32_typ),
                                            buildTyp_Field("y2", &Bool_typ)};
AddressTyp Address_Y1Int32Y2Bool_Addr = {2, Fields_Y1Int32Y2Bool};
Typ Address_Y1Int32Y2Bool_Typ = buildTyp_Address(&Address_Y1Int32Y2Bool_Addr);

// ByStr20 with contract field x : Uint32, field y : ByStr20 with contract field
// y1 : Option Int256, field y2 : ByStr20 end end
AddressTyp::Field Fields_XY_Y1OptionInt256Y2ByStr20[] = {
    buildTyp_Field("x", &Uint32_typ),
    buildTyp_Field("y", &Address_Y1OptionInt256Y2ByStr20_Typ)};
AddressTyp Address_XY_Y1OptionInt256Y2ByStr20_Addr = {
    2, Fields_XY_Y1OptionInt256Y2ByStr20};
Typ Address_XY_Y1OptionInt256Y2ByStr20_Typ =
    buildTyp_Address(&Address_XY_Y1OptionInt256Y2ByStr20_Addr);

// ByStr20 with contract field x : Uint32, field y : ByStr20 with contract field
// y1 : Int32, field y2 : Bool end end
AddressTyp::Field Fields_XY_Y1Int32Y2Bool[] = {
    buildTyp_Field("x", &Uint32_typ),
    buildTyp_Field("y", &Address_Y1Int32Y2Bool_Typ)};
AddressTyp Address_XY_Y1Int32Y2Bool_Addr = {2, Fields_XY_Y1Int32Y2Bool};
Typ Address_XY_Y1Int32Y2Bool_Typ =
    buildTyp_Address(&Address_XY_Y1Int32Y2Bool_Addr);

// ByStr20 with contract field x : Uint32, field y : ByStr20 with contract field
// y1 : Int32 end end
AddressTyp::Field Fields_XY_Y1[] = {
    buildTyp_Field("x", &Uint32_typ),
    buildTyp_Field("y", &Address_contract_y1_Typ)};
AddressTyp Address_XY_Y1_Addr = {2, Fields_XY_Y1};
Typ Address_XY_Y1_Typ = buildTyp_Address(&Address_XY_Y1_Addr);

// Map (ByStr20 with contract field x : Uint32, field y : ByStr20 with end end)
// ByStr20
MapTyp Map_Addr_ByStr20_MT = {&Address_contract_x_ybystr20end_Typ,
                              &ByStr20_typ};
Typ Map_Addr_ByStr20_Typ = buildTyp_Map(&Map_Addr_ByStr20_MT);

// Map (ByStr20 with contract end) (ByStr20 with contract field x : Uint32 end)
MapTyp Map_ByStr20withcontr_ByStr20withcontrfield_MT = {
    &ByStr20_with_contract_end_typ, &Address_contract_x_Typ};
Typ Map_ByStr20withcontr_ByStr20withcontrfield_Typ =
    buildTyp_Map(&Map_ByStr20withcontr_ByStr20withcontrfield_MT);

// Map (ByStr20 with contract field x : Uint32 end) (ByStr20 with contract end)
MapTyp Map_ByStr20withcontrfield_ByStr20withcontr_MT = {
    &Address_contract_x_Typ, &ByStr20_with_contract_end_typ};
Typ Map_ByStr20withcontrfield_ByStr20withcontr_Typ =
    buildTyp_Map(&Map_ByStr20withcontrfield_ByStr20withcontr_MT);

// Map (ByStr20 with contract end) (ByStr20 with contract field y : Uint32 end)
MapTyp Map_ByStr20withcontr_ByStr20withcontrfieldYUint32_MT = {
    &ByStr20_with_contract_end_typ, &Address_contract_yUint32_Typ};
Typ Map_ByStr20withcontr_ByStr20withcontrfieldYUint32_Typ =
    buildTyp_Map(&Map_ByStr20withcontr_ByStr20withcontrfieldYUint32_MT);

// Map (ByStr20 with contract field y : Uint32 end) (ByStr20 with contract end)
MapTyp Map_ByStr20withcontrfieldYUint32_ByStr20withcontr_MT = {
    &Address_contract_yUint32_Typ, &ByStr20_with_contract_end_typ};
Typ Map_ByStr20withcontrfieldYUint32_ByStr20withcontr_Typ =
    buildTyp_Map(&Map_ByStr20withcontrfieldYUint32_ByStr20withcontr_MT);

// Map ByStr20 (ByStr20 with contract field x : Uint32 end)
MapTyp Map_ByStr20_ByStr20withcontrfield_MT = {&ByStr20_typ,
                                               &Address_contract_x_Typ};
Typ Map_ByStr20_ByStr20withcontrfield_Typ =
    buildTyp_Map(&Map_ByStr20_ByStr20withcontrfield_MT);

// Map ByStr20 Int64
MapTyp Map_ByStr20_Int64_MT = {&ByStr20_typ, &Int64_typ};
Typ Map_ByStr20_Int64_Typ = buildTyp_Map(&Map_ByStr20_Int64_MT);

// Map (ByStr20 with end) (ByStr20 with contract field x : Uint32 end)
MapTyp Map_ByStr20addr_ByStr20withcontrfield_MT = {&ByStr20_with_end_typ,
                                                   &Address_contract_x_Typ};
Typ Map_ByStr20addr_ByStr20withcontrfield_Typ =
    buildTyp_Map(&Map_ByStr20addr_ByStr20withcontrfield_MT);

// Map (ByStr20 with contract end) (ByStr20 with contract end)
MapTyp Map_ByStr20withcontr_ByStr20withcontr_MT = {
    &ByStr20_with_contract_end_typ, &ByStr20_with_contract_end_typ};
Typ Map_ByStr20withcontr_ByStr20withcontr_Typ =
    buildTyp_Map(&Map_ByStr20withcontr_ByStr20withcontr_MT);

// clang-format off
const Typ* AllTyDescrs[] = {
  &Int32_typ, &Int64_typ, &Int128_typ, &Int256_typ,
  &Uint32_typ, &Uint64_typ, &Uint128_typ, &Uint256_typ,
  &Option_Int256_typ, &Option_ByStr20_typ, &Bool_typ,
  &String_typ, &BNum_typ, &List_int32_typ, &List_int64_typ,
  &Pair_list_int32_int64_typ, &Pair_int32_list_int64_typ,
  &Map_int32_string_typ, &Map_int64_pair_int32_list_int64_typ,
  &Map_int32_map_int32_string_typ, &ByStr_typ, &ByStr20_typ,
  &ByStr20_with_end_typ, &ByStr20_with_contract_end_typ,
  &ByStr20_with_codehash_end_typ, &ByStr20_with_library_end_typ,
  &ByStr20_with_1_field_Typ, &ByStr20_with_2_fields_Typ,
  &Address_contract_x_Typ, &Address_contract_x_ybool_Typ,
  &Address_contract_x_ybystr20_Typ, &Address_contract_x_ybystr20end_Typ,
  &Address_contract_x_ybystr20contractend_Typ, &Address_Y1OptionInt256Y2ByStr20_Typ,
  &Address_XY_Y1OptionInt256Y2ByStr20_Typ, &Map_Addr_ByStr20_Typ,
  &Address_contract_x_y_Typ, &Map_ByStr20withcontr_ByStr20withcontrfield_Typ,
  &Address_contract_y1_Typ, &Map_ByStr20_ByStr20withcontrfield_Typ,
  &Address_contract_x_y_z_Typ, &Address_XY_Y1_Typ, &Address_Y1Int32Y2Bool_Typ,
  &Address_XY_Y1Int32Y2Bool_Typ, &Address_contract_xcontraddr_Typ,
  &Address_contract_xaddr_Typ, &Map_ByStr20addr_ByStr20withcontrfield_Typ,
  &Map_ByStr20withcontr_ByStr20withcontr_Typ, &Address_contract_xInt32_Typ,
  &Address_contract_yInt32_Typ, &Address_YInt32WUint32_Typ, 
  &Address_XInt32ZUint32_Typ, &Address_contract_y1Uint32_Typ,
  &Address_contract_xcontraddr_y1Uint32_Typ, &Address_contract_xcontraddr_y1Int32_Typ,
  &Address_contract_y2Int32_Typ, &Address_contract_xcontraddr_Y2Int32_Typ,
  &Map_ByStr20withcontrfield_ByStr20withcontr_Typ, &Address_contract_yUint32_Typ,
  &Map_ByStr20withcontr_ByStr20withcontrfieldYUint32_Typ, &Map_ByStr20_Int64_Typ,
  &Map_ByStr20withcontrfieldYUint32_ByStr20withcontr_Typ, &Option_ByStr20_with_end_typ,
};
size_t NTyDescrs = sizeof(AllTyDescrs) / sizeof(const Typ *);

// clang-format on

} // namespace TypeDescrs