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

#include <boost/multiprecision/gmp.hpp>
#include <wideint.h>

#include "ScillaTypes.h"
#include <ScillaRTL/Errors.h>

namespace ScillaRTL {

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
  // Initialize from decimal string
  SafeInt(const std::string &IS);
  // Convert to decimal string
  std::string toString() const;
  // Convert to RawInt
  operator ScillaTypes::RawInt<Bits>() const;

  bool operator==(const SafeInt &Rhs) const;
  bool operator!=(const SafeInt &Rhs) const;
  bool operator>(const SafeInt &Rhs) const;
  bool operator>=(const SafeInt &Rhs) const;
  bool operator<(const SafeInt &Rhs) const;
  bool operator<=(const SafeInt &Rhs) const;

  // Safe operations: over/underflows will cause an error.
  SafeInt operator+(const SafeInt &Rhs) const;
  SafeInt operator-(const SafeInt &Rhs) const;

  static SafeInt constexpr max() { return SafeInt(SafeIntImpl::max()); };
  static SafeInt constexpr min() { return SafeInt(SafeIntImpl::min()); };

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

namespace bmp = boost::multiprecision;

class BigNum : public boost::multiprecision::mpz_int {
public:
  BigNum() = default;
  // Copy constructor
  BigNum(const BigNum &) = default;
  // Move constructor
  BigNum(BigNum &&) = default;

  // Print to string. Negative numbers can only be in base 10.
  std::string toString(int Base = 10) const {
    std::ios_base::fmtflags ff;
    if (Base == 8) {
      ff = std::ios_base::oct;
    } else if (Base == 16) {
      ff = std::ios_base::hex;
    } else {
      ff = std::ios_base::dec;
    }
    try {
      return str(std::streamsize(), ff);
    } catch (std::runtime_error &E) {
      CREATE_ERROR(E.what());
    }
  }

  // Create from any type that can be assigned to mpz_int.
  template <typename T> BigNum(const T &Val) {
    try {
      // No better way to catch from base class constructor.
      bmp::mpz_int Temp(Val);
      static_cast<bmp::mpz_int &>(*this).swap(Temp);
    } catch (std::runtime_error &E) {
      CREATE_ERROR(E.what());
    }
  }

  // Modify based on any type that can be assigned to mpz_int.
  BigNum &operator=(const BigNum &) = default;
  BigNum &operator=(BigNum &&) = default;
  template <typename T> BigNum &operator=(const T &Val) {
    bmp::mpz_int::operator=(Val);
    return *this;
  }
  template <typename T> BigNum &operator+=(const T &Val) {
    bmp::mpz_int::operator+=(static_cast<const bmp::mpz_int &>(Val));
    return *this;
  }
  template <typename T> BigNum &operator-=(const T &Val) {
    bmp::mpz_int::operator-=(static_cast<const bmp::mpz_int &>(Val));
    return *this;
  }
  template <typename T> BigNum &operator*=(const T &Val) {
    bmp::mpz_int::operator*=(static_cast<const bmp::mpz_int &>(Val));
    return *this;
  }
  template <typename T> BigNum &operator/=(const T &Val) {
    try {
      bmp::mpz_int::operator/=(static_cast<const bmp::mpz_int &>(Val));
    } catch (std::overflow_error &E) {
      CREATE_ERROR(E.what());
    }
    return *this;
  }
  BigNum &operator++() {
    bmp::mpz_int::operator++();
    return *this;
  }
  BigNum &operator--() {
    bmp::mpz_int::operator--();
    return *this;
  }
  BigNum operator++(int) {
    return BigNum(static_cast<bmp::mpz_int &>(*this)++);
  }
  BigNum operator--(int) {
    return BigNum(static_cast<bmp::mpz_int &>(*this)--);
  }

  // Compare with any type that can be compared with mpz_int
  template <typename T> bool operator==(const T &Rhs) const {
    return static_cast<const bmp::mpz_int &>(*this) ==
           static_cast<const bmp::mpz_int &>(Rhs);
  }
  template <typename T> bool operator!=(const T &Rhs) const {
    return static_cast<const bmp::mpz_int &>(*this) !=
           static_cast<const bmp::mpz_int &>(Rhs);
  }
  template <typename T> bool operator>(const T &Rhs) const {
    return static_cast<const bmp::mpz_int &>(*this) >
           static_cast<const bmp::mpz_int &>(Rhs);
  }
  template <typename T> bool operator>=(const T &Rhs) const {
    return static_cast<const bmp::mpz_int &>(*this) >=
           static_cast<const bmp::mpz_int &>(Rhs);
  }
  template <typename T> bool operator<(const T &Rhs) const {
    return static_cast<const bmp::mpz_int &>(*this) <
           static_cast<const bmp::mpz_int &>(Rhs);
  }
  template <typename T> bool operator<=(const T &Rhs) const {
    return static_cast<const bmp::mpz_int &>(*this) <=
           static_cast<const bmp::mpz_int &>(Rhs);
  }

  // Operate with any type that can be operated on by mpz_int.
  template <typename T> BigNum operator+(const T &Rhs) const {
    return BigNum(static_cast<const bmp::mpz_int &>(*this) +
                  static_cast<const bmp::mpz_int &>(Rhs));
  }
  template <typename T> BigNum operator-(const T &Rhs) const {
    return BigNum(static_cast<const bmp::mpz_int &>(*this) -
                  static_cast<const bmp::mpz_int &>(Rhs));
  }
  template <typename T> BigNum operator*(const T &Rhs) const {
    return BigNum(static_cast<const bmp::mpz_int &>(*this) *
                  static_cast<const bmp::mpz_int &>(Rhs));
  }
  template <typename T> BigNum operator/(const T &Rhs) const {
    try {
      return BigNum(static_cast<const bmp::mpz_int &>(*this) /
                    static_cast<const bmp::mpz_int &>(Rhs));
    } catch (std::overflow_error &E) {
      CREATE_ERROR(E.what());
    }
  }
};

} // namespace ScillaRTL
