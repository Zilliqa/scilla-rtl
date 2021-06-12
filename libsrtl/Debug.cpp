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

#include <set>

#include <ScillaVM/Debug.h>

namespace ScillaVM {

bool EnableAllDebugTypes;
std::set<std::string> EnabledDebugTypes;

bool isInCurrentDebugTypes(std::string TYPE) {
  return EnableAllDebugTypes || EnabledDebugTypes.count(TYPE);
}

void addToCurrentDebugTypes(std::string TYPE) {
  EnabledDebugTypes.insert(TYPE);
}

void enableAllDebugTypes() { EnableAllDebugTypes = true; }

std::ostream &dbgs() {
  std::cout << "dbgs@" << __FILE__ << ":" << __LINE__ << ": ";
  return std::cout;
}

} // namespace ScillaVM
