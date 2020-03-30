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
#include "ScillaVM/JITD.h"
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

// Allocate memory for JIT code owned by @SJ
void *_salloc(ScillaVM::ScillaJIT *SJ, size_t size);

// Fetch field @Name whose type is @T. For map accesses, FetchVal can be false,
// to indicate that the return value is a Scilla `Bool`, indicating found or
// not.
void *_fetch_field(ScillaVM::ScillaJIT *SJ, const char *Name,
                   const ScillaVM::ScillaTypes::Typ *T, int32_t NumIdx,
                   const uint8_t *Indices, int32_t FetchVal);

// Update field @Name whose type is @T with value @Val. If Val is nullptr,
// then this is a map update and the keys must be deleted.
void _update_field(ScillaVM::ScillaJIT *SJ, const char *Name,
                   const ScillaVM::ScillaTypes::Typ *, int32_t NumIdx,
                   const uint8_t *Indices, void *Val);

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
