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
#include <jsoncpp/json/value.h>

#include "ScillaTypes.h"
#include "ScillaVM/SRTL.h"

namespace ScillaVM {

class ObjManager;

namespace ScillaValues {

// Reverse the byte order in a byte string, in-place.
void swapEndian(uint8_t *Buf, int Len);

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

} // namespace ScillaValues
} // namespace ScillaVM
