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

#include <jsoncpp/json/value.h>

namespace ScillaTestsuite {
// Goes deep and sorts map entries, all in-place.
void canonicalizeStateValue(Json::Value &Value);
// Element-wise check that each state variable has same value.
// Expects each state variable in the JSON array to be already sorted.
void checkEqStateVariables(const Json::Value &Expected, const Json::Value &Got);
// Sorts the state variables, and canonicalizes the value of each.
Json::Value canonicalizeStateVariables(const Json::Value &J);
} // namespace ScillaTestsuite
