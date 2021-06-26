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
SafeInt<Bits, Signedness>::SafeInt(const void *V) {
  // Make sure that Container's buffer has enough space to hold our data.
  constexpr auto len = std::tuple_size<decltype(SafeIntImpl::limbs)>::value;
  using elmty =
      typename std::tuple_element<0, decltype(SafeIntImpl::limbs)>::type;
  static_assert(len * sizeof(elmty) >= Bits / 8,
                "Internal error: SafeInt container does not have enough space");

  std::memcpy(Container.limbs.data(), V, Bits / 8);
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness>::SafeInt(const std::string &IS) : Container(IS) {
  // Make sure that Container's buffer has enough space to hold our data.
  constexpr auto len = std::tuple_size<decltype(SafeIntImpl::limbs)>::value;
  using elmty =
      typename std::tuple_element<0, decltype(SafeIntImpl::limbs)>::type;
  static_assert(len * sizeof(elmty) >= Bits / 8,
                "Internal error: SafeInt container does not have enough space");
  if (Container.to_string() != IS) {
    // TODO: https://github.com/Zilliqa/scilla/pull/982
    CREATE_ERROR("SafeInt: Invalid string input: " + IS);
  }
}

template <unsigned Bits, SafeIntKind Signedness>
std::string SafeInt<Bits, Signedness>::toString() const {
  return Container.to_string();
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness>::operator RawInt<Bits>() const {
  RawInt<Bits> Ret;
  std::memcpy(Ret.buf, Container.limbs.data(), Bits / 8);
  return Ret;
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness> SafeInt<Bits, Signedness>::
operator+(const SafeInt<Bits, Signedness> &Rhs) const {
  // TODO: Implement safety semantics.
  SafeInt<Bits, Signedness> Result(this->Container + Rhs.Container);
  return Result;
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness> SafeInt<Bits, Signedness>::
operator-(const SafeInt<Bits, Signedness> &Rhs) const {
  // TODO: Implement safety semantics.
  SafeInt<Bits, Signedness> Result(this->Container - Rhs.Container);
  return Result;
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness> SafeInt<Bits, Signedness>::
operator*(const SafeInt<Bits, Signedness> &Rhs) const {
  // TODO: Implement safety semantics.
  SafeInt<Bits, Signedness> Result(this->Container * Rhs.Container);
  return Result;
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness> SafeInt<Bits, Signedness>::
operator/(const SafeInt<Bits, Signedness> &Rhs) const {
  // TODO: Implement safety semantics.
  SafeInt<Bits, Signedness> Result(this->Container / Rhs.Container);
  return Result;
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness> SafeInt<Bits, Signedness>::
operator%(const SafeInt<Bits, Signedness> &Rhs) const {
  // TODO: Implement safety semantics.
  SafeInt<Bits, Signedness> Result(this->Container % Rhs.Container);
  return Result;
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::
operator==(const SafeInt<Bits, Signedness> &Rhs) const {

  return Container.op_eq(Rhs.Container);
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::
operator!=(const SafeInt<Bits, Signedness> &Rhs) const {

  return Container.op_neq(Rhs.Container);
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::
operator>(const SafeInt<Bits, Signedness> &Rhs) const {
  return Container.op_gt(Rhs.Container);
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::
operator>=(const SafeInt<Bits, Signedness> &Rhs) const {
  return Container.op_gte(Rhs.Container);
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::
operator<(const SafeInt<Bits, Signedness> &Rhs) const {
  return Container.op_lt(Rhs.Container);
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::
operator<=(const SafeInt<Bits, Signedness> &Rhs) const {
  return Container.op_lte(Rhs.Container);
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

std::ostream &operator<<(std::ostream &Out, const BigNum &c) {
  Out << c.toString();
  return Out;
}

} // namespace ScillaRTL
