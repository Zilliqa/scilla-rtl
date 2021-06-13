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

// This DLOG log infrastructure is inspired by:
// https://llvm.org/docs/ProgrammersManual.html#fine-grained-debug-info-with-debug-type-and-the-debug-only-option

// Provide
//   SRTL_DLOG(dlog() << "debug log message") and
//   SRTL_DLOG_TYPE("foo", dlog() << "debug log message")
// in DLog builds. For the former to work, DLOG_TYPE must be
// defined. SRTL_DLOG is equal to SRTL_DLOG_TYPE(DLOG_TYPE, ...).

#pragma once

#include <iostream>
#include <string>

namespace ScillaRTL {
bool isInCurrentDLogTypes(std::string TYPE);
void addToCurrentDLogTypes(std::string TYPE);
void enableAllDLogTypes();
} // namespace ScillaRTL

#ifndef NDEBUG

#define SRTL_DLOG_TYPE(TYPE, X)                                                \
  do {                                                                         \
    if (ScillaRTL::isInCurrentDLogTypes(TYPE)) {                               \
      X;                                                                       \
    }                                                                          \
  } while (false)

#define SRTL_DLOG(X) SRTL_DLOG_TYPE(DLOG_TYPE, X)

namespace ScillaRTL {
std::ostream &dlogImpl(const std::string &File, int Line);
}

#define dlog() dlogImpl(__FILE__, __LINE__)

#else
#define SRTL_DLOG_TYPE(TYPE, X)
#define SRTL_DLOG(X)
#endif // NDEBUG
