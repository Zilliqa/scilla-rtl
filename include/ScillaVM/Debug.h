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

// This debug log infrastructure is inspired by:
// https://llvm.org/docs/ProgrammersManual.html#fine-grained-debug-info-with-debug-type-and-the-debug-only-option

// Provide
//   SVM_DEBUG(dbgs() << "debug message") and
//   SVM_DEBUG_TYPE("foo", dbgs() << "debug message")
// in debug builds. For the former to work, DEBUG_TYPE must be
// defined. SVM_DEBUG is equal to SVM_DEBUG_TYPE(DEBUG_TYPE, ...).

#pragma once

#include <iostream>
#include <string>

namespace ScillaVM {
bool isInCurrentDebugTypes(std::string TYPE);
void addToCurrentDebugTypes(std::string TYPE);
void enableAllDebugTypes();
} // namespace ScillaVM

#ifndef NDEBUG

#define SVM_DEBUG_TYPE(TYPE, X)                                                \
  do {                                                                         \
    if (ScillaVM::isInCurrentDebugTypes(TYPE)) {                               \
      X;                                                                       \
    }                                                                          \
  } while (false)

#define SVM_DEBUG(X) SVM_DEBUG_TYPE(DEBUG_TYPE, X)

namespace ScillaVM {
std::ostream &dbgs();
}
#else
#define SVM_DEBUG_TYPE(TYPE, X)
#define SVM_DEBUG(X)
#endif
