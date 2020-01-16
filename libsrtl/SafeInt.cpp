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

#include "SafeInt.h"

namespace {

using namespace ScillaVM;

template <unsigned Bits, boost::multiprecision::cpp_integer_type SignType>
boost::multiprecision::number<boost::multiprecision::cpp_int_backend<
    Bits, Bits, SignType, boost::multiprecision::checked, void>>
rawToBoost(const void *V) {
  using namespace boost::multiprecision;

#if BOOST_ENDIAN_BIG_BYTE
  static const auto msv_first = true;
#else
  static const auto msv_first = false;
#endif

  number<cpp_int_backend<Bits, Bits, SignType, checked, void>> ret;
  auto VPtr = reinterpret_cast<const uint8_t *>(V);
  import_bits(ret, VPtr, VPtr + (Bits / 8), 0, msv_first);
  return ret;
}

template <unsigned Bits>
using BoostInt =
    boost::multiprecision::number<boost::multiprecision::cpp_int_backend<
        Bits, Bits, boost::multiprecision::signed_magnitude,
        boost::multiprecision::checked, void>>;

template <unsigned Bits> BoostInt<Bits> rawToBoostInt(const void *V) {
  return rawToBoost<Bits, boost::multiprecision::signed_magnitude>(V);
}

template <unsigned Bits>
using BoostUint =
    boost::multiprecision::number<boost::multiprecision::cpp_int_backend<
        Bits, Bits, boost::multiprecision::unsigned_magnitude,
        boost::multiprecision::checked, void>>;

template <unsigned Bits> BoostUint<Bits> rawToBoostUint(const void *V) {
  return rawToBoost<Bits, boost::multiprecision::unsigned_magnitude>(V);
}

} // namespace

namespace ScillaVM {

template <unsigned Bits> SafeInt<Bits>::SafeInt(const void *V) {
  Container = rawToBoostInt<Bits>(V);
}

template <unsigned Bits> std::string SafeInt<Bits>::toString() const {
  return Container.str();
}

template <unsigned Bits> SafeUint<Bits>::SafeUint(const void *V) {
  Container = rawToBoostUint<Bits>(V);
}

template <unsigned Bits> std::string SafeUint<Bits>::toString() const {
  return Container.str();
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
