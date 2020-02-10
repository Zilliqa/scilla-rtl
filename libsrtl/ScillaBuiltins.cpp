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

#include <iostream>
#include <string>

#include "SafeInt.h"
#include "ScillaBuiltins.h"
#include "ScillaTypes.h"
#include "ScillaVM/Errors.h"
#include "ScillaVM/SRTL.h"
#include "ScillaValue.h"

namespace ScillaVM {

std::vector<ScillaFunctionsMap> getAllScillaBuiltins(void) {
  // clang-format off
  ScillaFunctionsMap m[] = {
    {"_print_scilla_val", (void *) _print_scilla_val},
    {"malloc", (void *) malloc},
    {"_add_Int32", (void *) _add_Int32},
    {"_add_Int64", (void *) _add_Int64},
    {"_add_Int128", (void *) _add_Int128},
    {"_add_Int256", (void *) _add_Int256},
    {"_add_Uint32", (void *) _add_Uint32},
    {"_add_Uint64", (void *) _add_Uint64},
    {"_add_Uint128", (void *) _add_Uint128},
    {"_add_Uint256", (void *) _add_Uint256},
  };
  // clang-format on

  return std::vector<ScillaFunctionsMap>(std::begin(m), std::end(m));
}

} // namespace ScillaVM

using namespace ScillaVM;

extern "C" {

void _print_scilla_val(const ScillaTypes::Typ *T, void *V) {
  ScillaStdout += ScillaValues::toString(T, V) + "\n";
}

ScillaVM::ScillaTypes::Int32 _add_Int32(ScillaVM::ScillaTypes::Int32 Lhs,
                                        ScillaVM::ScillaTypes::Int32 Rhs) {
  return SafeInt<32>(&Lhs) + SafeInt<32>(&Rhs);
}

ScillaVM::ScillaTypes::Int64 _add_Int64(ScillaVM::ScillaTypes::Int64 Lhs,
                                        ScillaVM::ScillaTypes::Int64 Rhs) {
  return SafeInt<64>(&Lhs) + SafeInt<64>(&Rhs);
}

ScillaVM::ScillaTypes::Int128 _add_Int128(ScillaVM::ScillaTypes::Int128 Lhs,
                                          ScillaVM::ScillaTypes::Int128 Rhs) {
  return SafeInt<128>(&Lhs) + SafeInt<128>(&Rhs);
}

void _add_Int256(ScillaVM::ScillaTypes::Int256 *Result,
                 ScillaVM::ScillaTypes::Int256 *Lhs,
                 ScillaVM::ScillaTypes::Int256 *Rhs) {
  *Result = SafeInt<256>(Lhs) + SafeInt<256>(Rhs);
}

ScillaVM::ScillaTypes::Uint32 _add_Uint32(ScillaVM::ScillaTypes::Uint32 Lhs,
                                          ScillaVM::ScillaTypes::Uint32 Rhs) {
  return SafeUint<32>(&Lhs) + SafeUint<32>(&Rhs);
}

ScillaVM::ScillaTypes::Uint64 _add_Uint64(ScillaVM::ScillaTypes::Uint64 Lhs,
                                          ScillaVM::ScillaTypes::Uint64 Rhs) {
  return SafeUint<64>(&Lhs) + SafeUint<64>(&Rhs);
}

ScillaVM::ScillaTypes::Uint128
_add_Uint128(ScillaVM::ScillaTypes::Uint128 Lhs,
             ScillaVM::ScillaTypes::Uint128 Rhs) {
  return SafeUint<128>(&Lhs) + SafeUint<128>(&Rhs);
}

void _add_Uint256(ScillaVM::ScillaTypes::Uint256 *Result,
                  ScillaVM::ScillaTypes::Uint256 *Lhs,
                  ScillaVM::ScillaTypes::Uint256 *Rhs) {
  *Result = SafeUint<256>(Lhs) + SafeUint<256>(Rhs);
}

} // end of extern "C".
