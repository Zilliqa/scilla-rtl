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

#pragma once

#include <string>

#include <boost/multiprecision/cpp_int.hpp>
#if defined (__APPLE__)
#include <json/value.h>
#else
#include <jsoncpp/json/value.h>
#endif

#include "SRTL.h"
#include "ScillaTypes.h"

namespace ScillaRTL {

class ObjManager;
using MapKeyValT = std::pair<std::string, std::any>;

namespace ScillaValues {

// Convert raw bytes to a "0x" hex-string.
std::string rawToHex(const uint8_t *Data, int Len);
// Convert hex string to binary, allocate memory if @Bin is nullptr.
uint8_t *hex2Raw(ObjManager &OM, uint8_t *Bin, int BinLen,
                 const std::string &Hex, int &NBytes);
// Reverse the byte order in a byte string, in-place.
void revBytes(uint8_t *Buf, int Len);
// Is this a valid Scilla String literal. Certain chars aren't allowed.
bool validateStringLiteral(const uint8_t Buf[], size_t Len);

// Stringify Scilla value @V of type @T.
// @PrintType for each (sub) value printed.
std::string toString(bool PrintType, const ScillaTypes::Typ *T, const void *V);
// Serialize Scilla value @V to a JSON
Json::Value toJSON(const ScillaTypes::Typ *T, const void *V);
// Deserialize JSON @J of Scilla type T to Scilla value.
void *fromJSON(ObjManager &OM, const ScillaTypes::Typ *T, const Json::Value &J);
// Same as @fromJSON, but uses @Mem as the memory destination.
// Memory cannot be prealloted for boxed types.
// ASSERT(MemSize == 0 || !ScillaTypes::Typ::isBoxed(T));
// The function may still call @A for sub allocations.
// If @Mem is null (and @MemSize 0), @OM is used to allocate memory.
// If @MemSize is not 0, it is asserted to be of the right size.
// It is *always* possible and safer to use @fromJSON. So do that.
// This function exists only as an optimization to avoid copies.
void *fromJSONToMem(ObjManager &OM, void *Mem, int MemSize,
                    const ScillaTypes::Typ *T, const Json::Value &J);

// Serialize a Scilla value into a byte sequence ready for hashing.
void serializeForHashing(ByteVec &Ret, const ScillaTypes::Typ *T,
                         const void *V);

// Computs the cost of (memory occupied by) a Scilla value.
// Compatible with literal_cost in Gas.ml in Scilla_base.
uint64_t literalCost(const ScillaTypes::Typ *T, const void *V);

using ScillaValueCallback =
    std::function<void(const ScillaTypes::Typ *T, const void *)>;

// Iterate over the constructor arguments of a Scilla ADT value,
// calling back F for each argument, also passing the argument's type.
// As usual:
//  - for boxed values, the pointer passed is the boxing pointer.
//  - for non-boxed values, their address is passed and must be loaded from.
void iterScillaADTConstrArgs(const ScillaTypes::Typ *T, const void *V,
                             ScillaValueCallback F);

// Iterate over a Scilla list, apply F to each element.
// F is passed the element type and the element.
// As usual:
//  - for boxed values, the pointer passed is the boxing pointer.
//  - for non-boxed values, their address is passed and must be loaded from.
void iterScillaList(const ScillaTypes::Typ *T, const void *V,
                    ScillaValueCallback F);

using ScillaNamedValueCallback = std::function<void(
    const ScillaTypes::Typ *T, const void *, const std::string &)>;

// Iterate over the fields of a Scilla Msg object, apply F to each field.
// F is passed the element type, the element and the field name.
// As usual:
//  - for boxed values, the pointer passed is the boxing pointer.
//  - for non-boxed values, their address is passed and must be loaded from.
void iterScillaMsgObjectElms(const ScillaTypes::Typ *T, const void *V,
                             ScillaNamedValueCallback F);

} // namespace ScillaValues
} // namespace ScillaRTL
