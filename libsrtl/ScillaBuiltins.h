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

namespace ScillaVM {

struct ScillaFunctionsMap {
  const char *FName;
  const void *FAddr;
};
std::vector<ScillaFunctionsMap> getAllScillaFunctions(void);

} // end of namespace ScillaVM

extern "C" {

// Print to stdout the Scilla value @V whose type is described by @T.
void _print_scilla_val(const ScillaVM::ScillaTypes::Typ *T, void *V);

} // extern "C"
