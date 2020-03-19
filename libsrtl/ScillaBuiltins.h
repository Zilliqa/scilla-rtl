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

/* This file declares functions that are callable from an executing
 * Scilla contract. It is not intended to be called from other C++
 * code, and is therefore not a public header. */

#include "ScillaTypes.h"
#include "ScillaValue.h"

namespace ScillaVM {

struct ScillaFunctionsMap {
  const char *FName;
  const void *FAddr;
};
std::vector<ScillaFunctionsMap> getAllScillaBuiltins(void);

} // end of namespace ScillaVM

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"

extern "C" {

// Print Scilla value @V whose type is described by @T to ScillaStdout .
void _print_scilla_val(const ScillaVM::ScillaTypes::Typ *T, void *V);

// Integer addition builtins
ScillaVM::ScillaTypes::Int32 _add_Int32(ScillaVM::ScillaTypes::Int32,
                                        ScillaVM::ScillaTypes::Int32);
ScillaVM::ScillaTypes::Int64 _add_Int64(ScillaVM::ScillaTypes::Int64,
                                        ScillaVM::ScillaTypes::Int64);
ScillaVM::ScillaTypes::Int128 _add_Int128(ScillaVM::ScillaTypes::Int128,
                                          ScillaVM::ScillaTypes::Int128);
void _add_Int256(ScillaVM::ScillaTypes::Int256 *,
                 ScillaVM::ScillaTypes::Int256 *,
                 ScillaVM::ScillaTypes::Int256 *);

ScillaVM::ScillaTypes::Uint32 _add_Uint32(ScillaVM::ScillaTypes::Uint32,
                                          ScillaVM::ScillaTypes::Uint32);
ScillaVM::ScillaTypes::Uint64 _add_Uint64(ScillaVM::ScillaTypes::Uint64,
                                          ScillaVM::ScillaTypes::Uint64);
ScillaVM::ScillaTypes::Uint128 _add_Uint128(ScillaVM::ScillaTypes::Uint128,
                                            ScillaVM::ScillaTypes::Uint128);
void _add_Uint256(ScillaVM::ScillaTypes::Uint256 *,
                  ScillaVM::ScillaTypes::Uint256 *,
                  ScillaVM::ScillaTypes::Uint256 *);

} // extern "C"
#pragma clang diagnostic pop
