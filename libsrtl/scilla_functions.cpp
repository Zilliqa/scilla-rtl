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

#include "scilla_functions.h"

namespace scilla_vm {

// Stringify a Scilla type @T to @out and return @out.
std::string& printScillaType (const scilla_types::Typ *T, std::string &out)
{
  (void)T;
  out = "<void>";
  return out;
}

std::string& printScillaValue (const scilla_types::Typ *T, void* V, std::string &out)
{
  (void)T; (void)V;
  out = "scilla_val";
  return out;
}

std::vector<ScillaFunctionsMap> getAllScillaFunctions(void)
{
  ScillaFunctionsMap m[] = {
    {"_print_scilla_val", (void*)_print_scilla_val }
  };

  return std::vector<ScillaFunctionsMap>(std::begin(m), std::end(m));
}

}

using namespace scilla_vm;

extern "C" {

// Print to stdout the Scilla value @V whose type is described by @T.
void _print_scilla_val(const scilla_types::Typ *T, void *V)
{
  std::string out;
  std::cout << printScillaValue (T, V, out) << " : " << printScillaType (T, out) << "\n";
}

}
