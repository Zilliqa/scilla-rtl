/*
 * Copyright (C) 2021 Zilliqa
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

#include <boost/test/unit_test.hpp>

#include "../libScillaRTL/SafeInt.h"
using namespace ScillaRTL;

BOOST_AUTO_TEST_SUITE(bignum)

BOOST_AUTO_TEST_CASE(succ) {
  BigNum A("1");
  BigNum B(2);
  BigNum C(A);
  BOOST_CHECK_MESSAGE(A == 1 && B == 2 && C == 1, A << ", " << B << ", " << C);

  A += 4;
  BOOST_CHECK_MESSAGE(A == 5, A);
  B -= 200;
  BOOST_CHECK_MESSAGE(B == -198, B);
  A *= B;
  BOOST_CHECK_MESSAGE(A == -990, A);
  A = BigNum("1");
  C /= A;
  BOOST_CHECK_MESSAGE(C == 1, C);
  A = B;
  BOOST_CHECK_MESSAGE(A == B, A << ", " << B);

  // std::move acts as swap().
  BOOST_CHECK_MESSAGE(B == -198 && C == 1, B << ", " << C);
  B = std::move(C);
  BOOST_CHECK_MESSAGE(B == 1 && C == -198, B << ", " << C);

  B++;
  BOOST_CHECK_MESSAGE(B == 2, B);
  A--;
  BOOST_CHECK_MESSAGE(A == -199, A);
  A = A * 2;
  BOOST_CHECK_MESSAGE(A == -398, A);
  A = A - 2;
  BOOST_CHECK_MESSAGE(A == -400, A);
  A = A + 2;
  BOOST_CHECK_MESSAGE(A == -398, A);
  A = B / 2;
  BOOST_CHECK_MESSAGE(A == 1, A);
  BOOST_CHECK_MESSAGE(C < A, C << ", " << A);
  BOOST_CHECK_MESSAGE(C <= A, C << ", " << A);
  BOOST_CHECK_MESSAGE(A > C, A << ", " << C);
  BOOST_CHECK_MESSAGE(A >= C, A << ", " << C);
  BOOST_CHECK_MESSAGE(A != C, A << ", " << C);
  BOOST_CHECK_MESSAGE(A > -1, A);
  BOOST_CHECK_MESSAGE(A >= -1, A);
  BOOST_CHECK_MESSAGE(A >= 1, A);
  BOOST_CHECK_MESSAGE(A <= 1, A);
  BOOST_CHECK_MESSAGE(A < 2, A);
  BOOST_CHECK_MESSAGE(A != 2, A);
  BOOST_CHECK_MESSAGE(2 > A, A);
  BOOST_CHECK_MESSAGE((A + A) == 2, A);
}

BOOST_AUTO_TEST_CASE(fail) {
  BOOST_CHECK_THROW(BigNum A("44a"), ScillaError);
  BigNum A("44"), B(0);
  BOOST_CHECK_THROW(A / B, ScillaError);
  BOOST_CHECK_THROW(A /= 0, ScillaError);
}

BOOST_AUTO_TEST_SUITE_END()
