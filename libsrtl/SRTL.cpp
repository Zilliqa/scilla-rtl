/*
 * Copyright (C) 2019 Zilliqa
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

#include "ScillaVM/SRTL.h"
#include "ScillaTypes.h"
#include "ScillaVM/Errors.h"

namespace ScillaVM {

std::string ScillaStdout = "";

bool dynamicTypecheck(const ScillaTypes::Typ *TargetT,
                      const ScillaTypes::Typ *ParsedT, void *) {

  if (!ScillaTypes::Typ::valueCompatible(ParsedT, TargetT)) {
    CREATE_ERROR("Value of type " + ScillaTypes::Typ::toString(ParsedT) +
                 " cannot be assigned to a value of type " +
                 ScillaTypes::Typ::toString(TargetT));
  }

  return true;
}

} // namespace ScillaVM
