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

#include "../libsrtl/ScillaTypes.h"

namespace TypeDescrs {

using namespace ScillaVM::ScillaTypes;

// IntX types
extern Typ Int32_typ;
extern Typ Int64_typ;
extern Typ Int128_typ;
extern Typ Int256_typ;

// UintX types
extern Typ Uint32_typ;
extern Typ Uint64_typ;
extern Typ Uint128_typ;
extern Typ Uint256_typ;

// String type
extern Typ String_typ;
extern Typ BNum_typ;

// ADTs
extern Typ List_int32_typ;
extern Typ List_int64_typ;
extern Typ Pair_list_int32_int64_typ;
extern Typ Pair_int32_list_int64_typ;
extern Typ Bool_typ, Option_Int256_typ;

// Map Int32 String, Map Int64 (Pair Int32 (List Int64))
// and Map Int32 (Map Int32 String)
extern Typ Map_int32_string_typ;
extern Typ Map_int64_pair_int32_list_int64_typ;
extern Typ Map_int32_map_int32_string_typ;

extern Typ ByStr20_typ;
extern Typ ByStr_typ;

// Address types
extern Typ ByStr20_with_1_field_Typ, ByStr20_with_2_fields_Typ;

extern const Typ *AllTyDescrs[];
extern size_t NTyDescrs;
} // namespace TypeDescrs