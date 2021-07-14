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

#include <boost/predef.h>
#include <string>

#include "SafeInt.h"
#include <ScillaRTL/Errors.h>

#if BOOST_ENDIAN_BIG_BYTE
#error "Big endian architecture not supported."
#endif

namespace ScillaRTL {

using namespace ScillaTypes;

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness>::SafeInt(const std::string &IS)
    : UnsafeWideInt<Bits, Signedness>(IS.c_str()) {
  if (toString() != IS) {
    // TODO: https://github.com/Zilliqa/scilla/pull/982
    CREATE_ERROR("SafeInt: Invalid string input: " + IS);
  }
}

template <unsigned Bits, SafeIntKind Signedness>
std::string SafeInt<Bits, Signedness>::toString() const {
  char Buf[UnsafeWideInt<Bits, Signedness>::wr_string_max_buffer_size_dec];
  this->wr_string(Buf, 10U);
  return std::string(Buf);
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness> SafeInt<Bits, Signedness>::operator+(
    const SafeInt<Bits, Signedness> &Rhs) const {
  auto &RhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  // TODO: Implement safety semantics.
  SafeInt<Bits, Signedness> Result(LhsBase + RhsBase);
  return Result;
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness> SafeInt<Bits, Signedness>::operator-(
    const SafeInt<Bits, Signedness> &Rhs) const {
  auto &RhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  // TODO: Implement safety semantics.
  SafeInt<Bits, Signedness> Result(LhsBase - RhsBase);
  return Result;
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness> SafeInt<Bits, Signedness>::operator*(
    const SafeInt<Bits, Signedness> &Rhs) const {
  auto &RhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  // TODO: Implement safety semantics.
  SafeInt<Bits, Signedness> Result(LhsBase * RhsBase);
  return Result;
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness> SafeInt<Bits, Signedness>::operator/(
    const SafeInt<Bits, Signedness> &Rhs) const {
  auto &RhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  // TODO: Implement safety semantics.
  SafeInt<Bits, Signedness> Result(LhsBase / RhsBase);
  return Result;
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness> SafeInt<Bits, Signedness>::operator%(
    const SafeInt<Bits, Signedness> &Rhs) const {
  auto &RhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  // TODO: Implement safety semantics.
  SafeInt<Bits, Signedness> Result(LhsBase % RhsBase);
  return Result;
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness> SafeInt<Bits, Signedness>::sqrt(void) const {
  auto &LhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  SafeInt<Bits, Signedness> Result(math::wide_integer::sqrt(LhsBase));
  return Result;
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::operator==(
    const SafeInt<Bits, Signedness> &Rhs) const {
  auto &RhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  return LhsBase == RhsBase;
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::operator!=(
    const SafeInt<Bits, Signedness> &Rhs) const {
  auto &RhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  return LhsBase != RhsBase;
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::operator>(
    const SafeInt<Bits, Signedness> &Rhs) const {
  auto &RhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  return LhsBase > RhsBase;
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::operator>=(
    const SafeInt<Bits, Signedness> &Rhs) const {
  auto &RhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  return LhsBase >= RhsBase;
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::operator<(
    const SafeInt<Bits, Signedness> &Rhs) const {
  auto &RhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  return LhsBase < RhsBase;
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::operator<=(
    const SafeInt<Bits, Signedness> &Rhs) const {
  auto &RhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsBase = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  return LhsBase <= RhsBase;
}

// Let's instantiate for all widths that we want.
template class SafeInt<32, SafeIntKind::Signed>;
template class SafeInt<64, SafeIntKind::Signed>;
template class SafeInt<128, SafeIntKind::Signed>;
template class SafeInt<256, SafeIntKind::Signed>;
template class SafeInt<32, SafeIntKind::Unsigned>;
template class SafeInt<64, SafeIntKind::Unsigned>;
template class SafeInt<128, SafeIntKind::Unsigned>;
template class SafeInt<256, SafeIntKind::Unsigned>;

std::ostream &operator<<(std::ostream &Out, const BigNum &C) {
  Out << C.toString();
  return Out;
}

} // namespace ScillaRTL
