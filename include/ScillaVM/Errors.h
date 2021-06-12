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

#include <string>

namespace ScillaVM {

struct SourceLoc {
  std::string File;
  int Line, Column;
  SourceLoc() : File(), Line(), Column(){};
  SourceLoc(const std::string &File, int Line)
      : File(File), Line(Line), Column(){};
  SourceLoc(const std::string &File, int Line, int Column)
      : File(File), Line(Line), Column(Column){};
  bool operator==(const SourceLoc &Rhs) const {
    return File == Rhs.File && Line == Rhs.Line && Column == Rhs.Column;
  }
  bool operator!=(const SourceLoc &Rhs) const { return !operator==(Rhs); }
};

struct ScillaError {
  // Error message
  std::string Msg;
  // Where in ScillaVM was this error thrown from.
  SourceLoc ThrowLoc;
  // Where in the Scilla source were we when the error occurred.
  SourceLoc ScillaSrcLoc;
  ScillaError(const std::string &Msg) : Msg(Msg){};
  ScillaError(const std::string &Msg, const SourceLoc &ThrowLoc,
              const SourceLoc &ScillaSrcLoc)
      : Msg(Msg), ThrowLoc(ThrowLoc), ScillaSrcLoc(ScillaSrcLoc) {}
  std::string toString() const {
    if (ThrowLoc != SourceLoc()) {
      return ThrowLoc.File + "(" + std::to_string(ThrowLoc.Line) +
             "): error: " + Msg;
    } else {
      return Msg;
    }
  }
};

} // namespace ScillaVM

// Throws a ScillaError object, attaching the location of error
// Uses a default (empty) Scilla source location.
#define CREATE_ERROR(MSG)                                                      \
  throw ScillaError(MSG, SourceLoc(__FILE__, __LINE__), SourceLoc())
// Throws a ScillaError object, attaching the location of error and a Scilla
// source location
#define CREATE_ERROR_SLOC(MSG, SCILLA_LOC)                                     \
  throw ScillaError(MSG, SourceLoc(__FILE__, __LINE__), SCILLA_LOC)

// Used when the Scilla program throws an error. No VM source location attached.
#define SCILLA_EXCEPTION(MSG) throw ScillaError(MSG, SourceLoc(), SourceLoc())

// Assert EXPR. If false, CREATE_ERROR with MSG. Turned off in release builds.
#ifndef NDEBUG
#define ASSERT(EXPR)                                                           \
  if (EXPR) {                                                                  \
  } else {                                                                     \
    CREATE_ERROR("Assertion failure");                                         \
  }
#define ASSERT_MSG(EXPR, MSG)                                                  \
  if (EXPR) {                                                                  \
  } else {                                                                     \
    CREATE_ERROR(MSG);                                                         \
  }
#else
#define ASSERT(EXPR)
#define ASSERT_MSG(EXPR, MSG)
#endif
