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

#include <boost/multiprecision/cpp_int.hpp>

#include "ScillaTypes.h"

namespace ScillaVM {

// A class for safe arithmetic operations.
// Creates an error on overflows or underflows in any operation.
template <unsigned Bits> class SafeInt {
public:
  // 0 initializing constructor
  SafeInt(){};
  // Initialize from Scilla IntWrapper
  SafeInt(const ScillaTypes::RawInt<Bits> *IW) : SafeInt(IW->buf) {}
  // Convert to decimal string
  std::string toString() const;
  // Convert to IntegerWrapper
  operator ScillaTypes::RawInt<Bits>() const;

  // Safe operations: over/underflows will cause an error.
  SafeInt operator+(const SafeInt &rhs) const;

private:
  // Initialize from raw bytes
  SafeInt(const void *V);

  // This implementation uses boost::multiprecision::cpp_int.
  // It does not use 2s complement, hence incompatible with Scilla.
  // TODO: https://github.com/Zilliqa/scilla-vm/issues/2
  boost::multiprecision::number<boost::multiprecision::cpp_int_backend<
      Bits, Bits, boost::multiprecision::signed_magnitude,
      boost::multiprecision::checked, void>>
      Container;
  SafeInt(const boost::multiprecision::number<
          boost::multiprecision::cpp_int_backend<
              Bits, Bits, boost::multiprecision::signed_magnitude,
              boost::multiprecision::checked, void>> &C)
      : Container(C){};
};

template <unsigned Bits> class SafeUint {
public:
  // 0 initializing constructor
  SafeUint(){};
  // Initialize from Scilla IntWrapper
  SafeUint(const ScillaTypes::RawInt<Bits> *IW) : SafeUint(IW->buf) {}
  // Convert to decimal string
  std::string toString() const;
  // Convert to IntegerWrapper
  operator ScillaTypes::RawInt<Bits>() const;

  // Safe operations: over/underflows will cause an error.
  SafeUint operator+(const SafeUint &rhs) const;

private:
  // Initialize from raw bytes
  SafeUint(const void *V);

  // This implementation uses boost::multiprecision::cpp_int.
  // It does not use 2s complement, hence incompatible with Scilla.
  // TODO: https://github.com/Zilliqa/scilla-vm/issues/2
  boost::multiprecision::number<boost::multiprecision::cpp_int_backend<
      Bits, Bits, boost::multiprecision::unsigned_magnitude,
      boost::multiprecision::checked, void>>
      Container;

  SafeUint(const boost::multiprecision::number<
           boost::multiprecision::cpp_int_backend<
               Bits, Bits, boost::multiprecision::unsigned_magnitude,
               boost::multiprecision::checked, void>> &C)
      : Container(C){};
};

} // namespace ScillaVM
