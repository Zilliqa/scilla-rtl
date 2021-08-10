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
const SafeInt<Bits, Signedness>
    SafeInt<Bits, Signedness>::Zero = SafeInt<Bits, Signedness>(0U);

template <unsigned Bits, SafeIntKind Signedness>
const SafeInt<Bits, Signedness>
    SafeInt<Bits, Signedness>::One = SafeInt<Bits, Signedness>(1U);

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
  const auto &Lhs = *this;
  auto &RhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Lhs);
  UnsafeWideInt<Bits, Signedness> ResultUnsafe(LhsUnsafe + RhsUnsafe);

  // Safe arithmetic checks.
  static const auto ZeroUnsafe = UnsafeWideInt<Bits, Signedness>();
  switch (Signedness) {
  case Signed:
    if (LhsUnsafe > ZeroUnsafe && RhsUnsafe > ZeroUnsafe &&
        ResultUnsafe < ZeroUnsafe) {
      SCILLA_EXCEPTION("Integer overflow: " + Lhs.toString() + " + " +
                       Rhs.toString());
    }
    // Result = 0 is possible in the case of Lhs = Rhs = min()
    if (LhsUnsafe < ZeroUnsafe && RhsUnsafe < ZeroUnsafe &&
        ResultUnsafe >= ZeroUnsafe) {
      SCILLA_EXCEPTION("Integer underflow: " + Lhs.toString() + " + " +
                       Rhs.toString());
    }
    break;
  case Unsigned:
    if (ResultUnsafe < LhsUnsafe || ResultUnsafe < RhsUnsafe) {
      SCILLA_EXCEPTION("Integer overflow: " + Lhs.toString() + " + " +
                       Rhs.toString());
    }
    break;
  }

  return SafeInt<Bits, Signedness>(ResultUnsafe);
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness> SafeInt<Bits, Signedness>::operator-(
    const SafeInt<Bits, Signedness> &Rhs) const {
  const auto &Lhs = *this;
  auto &RhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Lhs);
  UnsafeWideInt<Bits, Signedness> ResultUnsafe(LhsUnsafe - RhsUnsafe);

  // Safe arithmetic checks.
  static const auto ZeroUnsafe = UnsafeWideInt<Bits, Signedness>();
  switch (Signedness) {
  case Signed:
    // The corner case here is Lhs = 0, Rhs = min_int
    if (LhsUnsafe >= ZeroUnsafe && RhsUnsafe < ZeroUnsafe &&
        ResultUnsafe < ZeroUnsafe) {
      SCILLA_EXCEPTION("Integer overflow: " + Lhs.toString() + " - " +
                       Rhs.toString());
    }
    if (LhsUnsafe < ZeroUnsafe && RhsUnsafe > ZeroUnsafe &&
        ResultUnsafe > ZeroUnsafe) {
      SCILLA_EXCEPTION("Integer underflow: " + Lhs.toString() + " - " +
                       Rhs.toString());
    }
    break;
  case Unsigned:
    if (LhsUnsafe < RhsUnsafe) {
      SCILLA_EXCEPTION("Integer underflow: " + Lhs.toString() + " + " +
                       Rhs.toString());
    }
    break;
  }

  return SafeInt<Bits, Signedness>(ResultUnsafe);
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness> SafeInt<Bits, Signedness>::operator*(
    const SafeInt<Bits, Signedness> &Rhs) const {
  const auto &Lhs = *this;
  auto &RhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Lhs);
  UnsafeWideInt<Bits, Signedness> ResultUnsafe(LhsUnsafe * RhsUnsafe);

  // Safe arithmetic checks.
  static const auto ZeroUnsafe = UnsafeWideInt<Bits, Signedness>();
  static const auto MinUnsafe =
      std::numeric_limits<UnsafeWideInt<Bits, Signedness>>::min();
  switch (Signedness) {
  case Signed:
    // http://www.informit.com/articles/article.aspx?p=1959565&seqNum=13
    if (LhsUnsafe == MinUnsafe && RhsUnsafe < ZeroUnsafe) {
      SCILLA_EXCEPTION("Integer overflow: " + Lhs.toString() + " * " +
                       Rhs.toString());
    }
    if (RhsUnsafe != ZeroUnsafe && (ResultUnsafe / RhsUnsafe) != LhsUnsafe) {
      if ((LhsUnsafe < ZeroUnsafe) == (RhsUnsafe < ZeroUnsafe)) {
        SCILLA_EXCEPTION("Integer overflow: " + Lhs.toString() + " * " +
                         Rhs.toString());
      } else {
        SCILLA_EXCEPTION("Integer underflow: " + Lhs.toString() + " * " +
                         Rhs.toString());
      }
    }
    break;
  case Unsigned:
    if (RhsUnsafe != ZeroUnsafe && (ResultUnsafe / RhsUnsafe) != LhsUnsafe) {
      SCILLA_EXCEPTION("Integer overflow: " + Lhs.toString() + " * " +
                       Rhs.toString());
    }
    break;
  }

  return SafeInt<Bits, Signedness>(ResultUnsafe);
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness> SafeInt<Bits, Signedness>::operator/(
    const SafeInt<Bits, Signedness> &Rhs) const {
  const auto &Lhs = *this;
  auto &RhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Lhs);

  // Safe arithmetic checks.
  static const auto ZeroUnsafe = UnsafeWideInt<Bits, Signedness>();
  static const auto OneUnsafe = ++(UnsafeWideInt<Bits, Signedness>());
  static const auto MinUnsafe =
      std::numeric_limits<UnsafeWideInt<Bits, Signedness>>::min();
  static const auto MinusOneUnsafe = ZeroUnsafe - OneUnsafe;
  if (RhsUnsafe == ZeroUnsafe) {
    SCILLA_EXCEPTION("Integer overflow: " + Lhs.toString() + " / " +
                     Rhs.toString());
  }
  switch (Signedness) {
  case Signed:
    // Integer overflow during division occurs in a very specific case.
    // https://stackoverflow.com/a/30400252/2128804
    if (LhsUnsafe == MinUnsafe && RhsUnsafe == MinusOneUnsafe) {
      SCILLA_EXCEPTION("Integer overflow: " + Lhs.toString() + " / " +
                       Rhs.toString());
    }
    break;
  case Unsigned:
    break;
  }

  return SafeInt<Bits, Signedness>(LhsUnsafe / RhsUnsafe);
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness> SafeInt<Bits, Signedness>::operator%(
    const SafeInt<Bits, Signedness> &Rhs) const {
  const auto &Lhs = *this;
  auto &RhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Lhs);

  // Safe arithmetic checks.
  static const auto ZeroUnsafe = UnsafeWideInt<Bits, Signedness>();
  if (RhsUnsafe == ZeroUnsafe) {
    SCILLA_EXCEPTION("Integer overflow: " + Lhs.toString() + " / " +
                     Rhs.toString());
  }

  return SafeInt<Bits, Signedness>(LhsUnsafe % RhsUnsafe);
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness> SafeInt<Bits, Signedness>::sqrt(void) const {
  auto &LhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  return SafeInt<Bits, Signedness>(math::wide_integer::sqrt(LhsUnsafe));
}

template <unsigned Bits, SafeIntKind Signedness>
SafeInt<Bits, Signedness> SafeInt<Bits, Signedness>::pow(uint32_t P) const {
  auto &LhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  // TODO: Implement safety semantics.
  SafeInt<Bits, Signedness> Result(math::wide_integer::pow(LhsUnsafe, P));
  return Result;
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::operator==(
    const SafeInt<Bits, Signedness> &Rhs) const {
  auto &RhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  return LhsUnsafe == RhsUnsafe;
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::operator!=(
    const SafeInt<Bits, Signedness> &Rhs) const {
  auto &RhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  return LhsUnsafe != RhsUnsafe;
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::operator>(
    const SafeInt<Bits, Signedness> &Rhs) const {
  auto &RhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  return LhsUnsafe > RhsUnsafe;
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::operator>=(
    const SafeInt<Bits, Signedness> &Rhs) const {
  auto &RhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  return LhsUnsafe >= RhsUnsafe;
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::operator<(
    const SafeInt<Bits, Signedness> &Rhs) const {
  auto &RhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  return LhsUnsafe < RhsUnsafe;
}

template <unsigned Bits, SafeIntKind Signedness>
bool SafeInt<Bits, Signedness>::operator<=(
    const SafeInt<Bits, Signedness> &Rhs) const {
  auto &RhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(Rhs);
  auto &LhsUnsafe = static_cast<const UnsafeWideInt<Bits, Signedness> &>(*this);
  return LhsUnsafe <= RhsUnsafe;
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
