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

BOOST_AUTO_TEST_SUITE(safeint)

BOOST_AUTO_TEST_CASE(sanity) {

  BOOST_TEST(SafeUint32::min().toString() == SafeUint32("0").toString());
  BOOST_TEST(SafeUint32::max().toString() ==
             SafeUint32("4294967295").toString());
  BOOST_TEST(SafeInt32::min().toString() ==
             SafeInt32("-2147483648").toString());
  BOOST_TEST(SafeInt32::max().toString() == SafeInt32("2147483647").toString());

  BOOST_TEST(SafeUint64::min().toString() == SafeUint64("0").toString());
  BOOST_TEST(SafeUint64::max().toString() ==
             SafeUint64("18446744073709551615").toString());
  BOOST_TEST(SafeInt64::min().toString() ==
             SafeInt64("-9223372036854775808").toString());
  BOOST_TEST(SafeInt64::max().toString() ==
             SafeInt64("9223372036854775807").toString());

  BOOST_TEST(SafeUint128::min().toString() == SafeUint128("0").toString());
  BOOST_TEST(SafeUint128::max().toString() ==
             SafeUint128("340282366920938463463374607431768211455").toString());
  BOOST_TEST(SafeInt128::min().toString() ==
             SafeInt128("-170141183460469231731687303715884105728").toString());
  BOOST_TEST(SafeInt128::max().toString() ==
             SafeInt128("170141183460469231731687303715884105727").toString());

  BOOST_TEST(SafeUint256::min().toString() == SafeUint256("0").toString());
  BOOST_TEST(SafeUint256::max().toString() ==
             SafeUint256("11579208923731619542357098500868790785326998466564056"
                         "4039457584007913129639935")
                 .toString());
  BOOST_TEST(SafeInt256::min().toString() ==
             SafeInt256("-57896044618658097711785492504343953926634992332820282"
                        "019728792003956564819968")
                 .toString());
  BOOST_TEST(SafeInt256::max().toString() ==
             SafeInt256("578960446186580977117854925043439539266349923328202820"
                        "19728792003956564819967")
                 .toString());
}

BOOST_AUTO_TEST_SUITE_END()