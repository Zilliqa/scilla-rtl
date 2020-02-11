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
#include <ScillaVM/Errors.h>

#if BOOST_ENDIAN_BIG_BYTE
#error "Big endian architecture not supported."
#endif

namespace ScillaVM {

using namespace ScillaTypes;

template <unsigned Bits> SafeInt<Bits>::SafeInt(const void *V) {
  // Make sure that Container's buffer has enough space to hold our data.
  constexpr auto len = std::tuple_size<decltype(SafeIntImpl::limbs)>::value;
  using elmty =
      typename std::tuple_element<0, decltype(SafeIntImpl::limbs)>::type;
  static_assert(len * sizeof(elmty) >= Bits / 8,
                "Internal error: SafeInt container does not have enough space");

  std::memcpy(Container.limbs.data(), V, Bits / 8);
}

template <unsigned Bits> std::string SafeInt<Bits>::toString() const {
  return Container.to_string();
}

template <unsigned Bits> SafeInt<Bits>::operator RawInt<Bits>() const {
  RawInt<Bits> Ret;
  std::memcpy(Ret.buf, Container.limbs.data(), Bits / 8);
  return Ret;
}

template <unsigned Bits>
SafeInt<Bits> SafeInt<Bits>::operator+(const SafeInt<Bits> &rhs) const {
  // TODO: Implement safety semantics.
  SafeInt<Bits> Result(this->Container + rhs.Container);
  return Result;
}

template <unsigned Bits> SafeUint<Bits>::SafeUint(const void *V) {
  // Make sure that Container's buffer has enough space to hold our data.
  constexpr auto len = std::tuple_size<decltype(SafeUintImpl::limbs)>::value;
  using elmty =
      typename std::tuple_element<0, decltype(SafeUintImpl::limbs)>::type;
  static_assert(
      len * sizeof(elmty) >= Bits / 8,
      "Internal error: SafeUint container does not have enough space");

  std::memcpy(Container.limbs.data(), V, Bits / 8);
}

template <unsigned Bits> std::string SafeUint<Bits>::toString() const {
  return Container.to_string();
}

template <unsigned Bits> SafeUint<Bits>::operator RawInt<Bits>() const {
  RawInt<Bits> Ret;
  std::memcpy(Ret.buf, Container.limbs.data(), Bits / 8);
  return Ret;
}

template <unsigned Bits>
SafeUint<Bits> SafeUint<Bits>::operator+(const SafeUint<Bits> &rhs) const {
  // TODO: Implement safety semantics.
  SafeUint<Bits> Result(this->Container + rhs.Container);
  return Result;
}

// Let's instantiate for all widths that we want.
template class SafeInt<32>;
template class SafeInt<64>;
template class SafeInt<128>;
template class SafeInt<256>;
template class SafeUint<32>;
template class SafeUint<64>;
template class SafeUint<128>;
template class SafeUint<256>;

} // namespace ScillaVM
