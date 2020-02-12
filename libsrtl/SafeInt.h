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

#include <string>

#include <wideint.h>

#include "ScillaTypes.h"

namespace ScillaVM {

// A class for safe arithmetic operations.
// Creates an error on overflows or underflows in any operation.

enum SafeIntKind {
  Unsigned = false,
  Signed = true,
};

template <unsigned Bits, SafeIntKind Signedness> class SafeInt {
public:
  static_assert(Bits % 8 == 0,
                "Cannot instantiate SafeInt with non byte-aligned size");

  // 0 initializing constructor
  SafeInt(){};
  // Initialize from Scilla RawInt
  SafeInt(const ScillaTypes::RawInt<Bits> *IW) : SafeInt(IW->buf) {}
  // Convert to decimal string
  std::string toString() const;
  // Convert to RawInt
  operator ScillaTypes::RawInt<Bits>() const;

  // Safe operations: over/underflows will cause an error.
  SafeInt operator+(const SafeInt &rhs) const;

private:
  // Initialize from raw bytes
  SafeInt(const void *V);

  using SafeIntImpl = wideint<Bits, Signedness>;
  SafeIntImpl Container;

  SafeInt(const SafeIntImpl &C) : Container(C){};
};

typedef SafeInt<32, SafeIntKind::Signed> SafeInt32;
typedef SafeInt<64, SafeIntKind::Signed> SafeInt64;
typedef SafeInt<128, SafeIntKind::Signed> SafeInt128;
typedef SafeInt<256, SafeIntKind::Signed> SafeInt256;
typedef SafeInt<32, SafeIntKind::Unsigned> SafeUint32;
typedef SafeInt<64, SafeIntKind::Unsigned> SafeUint64;
typedef SafeInt<128, SafeIntKind::Unsigned> SafeUint128;
typedef SafeInt<256, SafeIntKind::Unsigned> SafeUint256;

} // namespace ScillaVM
