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

#include "ScillaBuiltins.h"
#include "ScillaTypes.h"
#include "ScillaVM/Errors.h"
#include "ScillaVM/SRTL.h"
#include "ScillaValue.h"

namespace ScillaVM {

std::vector<ScillaFunctionsMap> getAllScillaBuiltins(void) {
  ScillaFunctionsMap m[] = {{"_print_scilla_val", (void *)_print_scilla_val},
                            {"malloc", (void *)malloc}};

  return std::vector<ScillaFunctionsMap>(std::begin(m), std::end(m));
}

} // namespace ScillaVM

using namespace ScillaVM;

extern "C" {

void _print_scilla_val(const ScillaTypes::Typ *T, void *V) {
  ScillaStdout += ScillaValues::toString(T, V) + "\n";
}

} // end of extern "C".
