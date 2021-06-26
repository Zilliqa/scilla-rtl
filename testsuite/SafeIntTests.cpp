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
  BOOST_TEST(A == 1);
  BOOST_TEST(B == 2);
  BOOST_TEST(C == 1);

  A += 4;
  BOOST_TEST(A == 5);
  B -= 200;
  BOOST_TEST(B == -198);
  A *= B;
  BOOST_TEST(A == -990);
  A = BigNum("1");
  C /= A;
  BOOST_TEST(C == 1);
  A = B;
  BOOST_TEST(A == B);

  // std::move acts as swap().
  BOOST_TEST(B == -198);
  BOOST_TEST(C == 1);
  B = std::move(C);
  BOOST_TEST(B == 1);
  BOOST_TEST(C == -198);

  B++;
  BOOST_TEST(B == 2);
  A--;
  BOOST_TEST(A == -199);
  A = A * 2;
  BOOST_TEST(A == -398);
  A = A - 2;
  BOOST_TEST(A == -400);
  A = A + 2;
  BOOST_TEST(A == -398);
  A = B / 2;
  BOOST_TEST(A == 1);
  BOOST_TEST(C < A);
  BOOST_TEST(C <= A);
  BOOST_TEST(A > C);
  BOOST_TEST(A >= C);
  BOOST_TEST(A != C);
  BOOST_TEST(A > -1);
  BOOST_TEST(A >= -1);
  BOOST_TEST(A >= 1);
  BOOST_TEST(A <= 1);
  BOOST_TEST(A < 2);
  BOOST_TEST(A != 2);
  BOOST_TEST((A + A) == 2);
}

BOOST_AUTO_TEST_CASE(fail) {
  BOOST_CHECK_THROW(BigNum A("44a"), ScillaError);
  BigNum A("44"), B(0);
  BOOST_CHECK_THROW(A / B, ScillaError);
  BOOST_CHECK_THROW(A /= 0, ScillaError);
}

BOOST_AUTO_TEST_SUITE_END()
