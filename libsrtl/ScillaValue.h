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
#include <jsoncpp/json/json.h>

#include "ScillaTypes.h"
#include "ScillaVM/SRTL.h"

namespace ScillaVM {
namespace ScillaValues {

// Stringify Scilla value @V of type @T.
// @PrintType for each (sub) value printed.
std::string toString(bool PrintType, const ScillaTypes::Typ *T, const void *V);
// Serialize Scilla value @V to a JSON
Json::Value toJSON(const ScillaTypes::Typ *T, const void *V);
// Deserialize JSON @J of Scilla type T to Scilla value.
void *fromJSON(SAllocator &A, const ScillaTypes::Typ *T, const Json::Value &J);

} // namespace ScillaValues
} // namespace ScillaVM
