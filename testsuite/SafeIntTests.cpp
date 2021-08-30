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
#include <optional>

#include "../libScillaRTL/SafeInt.h"
#include "ScillaRTL/Errors.h"
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

  BOOST_TEST(SafeUint32::Min.toString() ==
             SafeUint32(std::string("0")).toString());
  BOOST_TEST(SafeUint32::Max.toString() ==
             SafeUint32(std::string("4294967295")).toString());
  BOOST_TEST(SafeInt32::Min.toString() ==
             SafeInt32(std::string("-2147483648")).toString());
  BOOST_TEST(SafeInt32::Max.toString() ==
             SafeInt32(std::string("2147483647")).toString());

  BOOST_TEST(SafeUint64::Min.toString() ==
             SafeUint64(std::string("0")).toString());
  BOOST_TEST(SafeUint64::Max.toString() ==
             SafeUint64(std::string("18446744073709551615")).toString());
  BOOST_TEST(SafeInt64::Min.toString() ==
             SafeInt64(std::string("-9223372036854775808")).toString());
  BOOST_TEST(SafeInt64::Max.toString() ==
             SafeInt64(std::string("9223372036854775807")).toString());

  BOOST_TEST(SafeUint128::Min.toString() ==
             SafeUint128(std::string("0")).toString());
  BOOST_TEST(SafeUint128::Max.toString() ==
             SafeUint128(std::string("340282366920938463463374607431768211455"))
                 .toString());
  BOOST_TEST(SafeInt128::Min.toString() ==
             SafeInt128(std::string("-170141183460469231731687303715884105728"))
                 .toString());
  BOOST_TEST(SafeInt128::Max.toString() ==
             SafeInt128(std::string("170141183460469231731687303715884105727"))
                 .toString());

  BOOST_TEST(SafeUint256::Min.toString() ==
             SafeUint256(std::string("0")).toString());
  BOOST_TEST(SafeUint256::Max.toString() ==
             SafeUint256(std::string("11579208923731619542357098500868790785326"
                                     "9984665640564039457584007913129639935"))
                 .toString());
  BOOST_TEST(SafeInt256::Min.toString() ==
             SafeInt256(std::string("-57896044618658097711785492504343953926634"
                                    "992332820282019728792003956564819968"))
                 .toString());
  BOOST_TEST(SafeInt256::Max.toString() ==
             SafeInt256(std::string("578960446186580977117854925043439539266349"
                                    "92332820282019728792003956564819967"))
                 .toString());

  BOOST_TEST(SafeUint32::Zero.toString() == "0");
  BOOST_TEST(SafeUint32::One.toString() == "1");
  BOOST_TEST(SafeInt32::Zero.toString() == "0");
  BOOST_TEST(SafeInt32::One.toString() == "1");

  BOOST_TEST(SafeUint64::Zero.toString() == "0");
  BOOST_TEST(SafeUint64::One.toString() == "1");
  BOOST_TEST(SafeInt64::Zero.toString() == "0");
  BOOST_TEST(SafeInt64::One.toString() == "1");

  BOOST_TEST(SafeUint128::Zero.toString() == "0");
  BOOST_TEST(SafeUint128::One.toString() == "1");
  BOOST_TEST(SafeInt128::Zero.toString() == "0");
  BOOST_TEST(SafeInt128::One.toString() == "1");

  BOOST_TEST(SafeUint256::Zero.toString() == "0");
  BOOST_TEST(SafeUint256::One.toString() == "1");
  BOOST_TEST(SafeInt256::Zero.toString() == "0");
  BOOST_TEST(SafeInt256::One.toString() == "1");
}

template <unsigned Bits, SafeIntKind Signedness> void strSafeIntFail() {
  using BigInt = SafeInt<512, Signed>;
  SafeInt<Bits, Signedness>(
      (BigInt(SafeInt<Bits, Signedness>::Max.toString()) + BigInt::One)
          .toString());
  SafeInt<Bits, Signedness>(
      (BigInt(SafeInt<Bits, Signedness>::Min.toString()) - BigInt::One)
          .toString());

  switch (Signedness) {
  case Signed: {
    SafeInt<Bits, Signed>(SafeInt<Bits, Unsigned>::Max.toString());
    auto NegUnsignedMax = BigInt(SafeInt<Bits, Unsigned>::Max.toString()) *
                          BigInt(std::string("-1"));
    SafeInt<Bits, Signed>(NegUnsignedMax.toString());
  } break;
  case Unsigned: {
    SafeInt<Bits, Unsigned>(std::string("-1"));
    SafeInt<Bits, Unsigned>(SafeInt<Bits, Signed>::Min.toString());
  } break;
  }
}

BOOST_AUTO_TEST_CASE(str_construct) {
  auto TrueP = [](auto) { return true; };

  BOOST_CHECK_EXCEPTION((strSafeIntFail<32, Unsigned>()), ScillaError, TrueP);
  BOOST_CHECK_EXCEPTION((strSafeIntFail<64, Unsigned>()), ScillaError, TrueP);
  BOOST_CHECK_EXCEPTION((strSafeIntFail<128, Unsigned>()), ScillaError, TrueP);
  BOOST_CHECK_EXCEPTION((strSafeIntFail<256, Unsigned>()), ScillaError, TrueP);
  BOOST_CHECK_EXCEPTION((strSafeIntFail<32, Signed>()), ScillaError, TrueP);
  BOOST_CHECK_EXCEPTION((strSafeIntFail<64, Signed>()), ScillaError, TrueP);
  BOOST_CHECK_EXCEPTION((strSafeIntFail<128, Signed>()), ScillaError, TrueP);
  BOOST_CHECK_EXCEPTION((strSafeIntFail<256, Signed>()), ScillaError, TrueP);
}

template <unsigned Bits, SafeIntKind Signedness>
void validateOverUnderFlow(const SafeInt<Bits, Signedness> &Lhs,
                           const SafeInt<Bits, Signedness> &Rhs) {

  using SI = SafeInt<Bits, Signedness>;
  // Execute a SafeInt operation and return exception thrown, if any.
  auto getOpExn = [&Lhs, &Rhs](std::function<SI(const SI *, const SI &)> Op)
      -> std::optional<ScillaError> {
    try {
      Op(&Lhs, Rhs);
      return std::nullopt;
    } catch (const ScillaError &E) {
      return E;
    }
  };

  const unsigned BigIntBits = 512;
  static_assert(Bits < BigIntBits);
  using BigInt = SafeInt<BigIntBits, Signed>;

  auto getExpectedExn =
      [&Lhs, &Rhs](std::function<BigInt(const BigInt *, const BigInt &)> BigOp,
                   const std::string &OpS) -> std::optional<ScillaError> {
    BigInt BigLhs(Lhs.toString());
    BigInt BigRhs(Rhs.toString());
    BigInt BigRes;
    try {
      BigRes = BigOp(&BigLhs, BigRhs);
    } catch (const ScillaError &E) {
      // This can happen if the operation is div/rem and Rhs is zero.
      return E;
    }
    if (BigRes < BigInt(SI::Min.toString())) {
      return ScillaError("Integer underflow: " + Lhs.toString() + OpS +
                             Rhs.toString(),
                         SourceLoc(), SourceLoc());
    } else if (BigRes > BigInt(SI::Max.toString())) {
      return ScillaError("Integer overflow: " + Lhs.toString() + OpS +
                             Rhs.toString(),
                         SourceLoc(), SourceLoc());
    } else {
      return std::nullopt;
    }
  };

  auto testEqExn = [](std::optional<ScillaError> Exp,
                      std::optional<ScillaError> Got) {
    BOOST_CHECK_MESSAGE(
        Exp.has_value() == Got.has_value() &&
            (!Exp.has_value() || Exp->toString() == Got->toString()),
        "SafeInt<" << Bits << ", "
                   << (Signedness == Signed ? "Signed" : "Unsigned")
                   << ">: Expected: \""
                   << (Exp.has_value() ? Exp->toString() : "NoExn")
                   << "\" but got \""
                   << (Got.has_value() ? Got->toString() : "NoExn") << "\"");
  };

  auto GotSum = getOpExn(&SI::operator+);
  auto ExpSum = getExpectedExn(&BigInt::operator+, " + ");
  testEqExn(ExpSum, GotSum);

  auto GotDif = getOpExn(&SI::operator-);
  auto ExpDif = getExpectedExn(&BigInt::operator-, " - ");
  testEqExn(ExpDif, GotDif);

  auto GotProd = getOpExn(&SI::operator*);
  auto ExpProd = getExpectedExn(&BigInt::operator*, " * ");
  testEqExn(ExpProd, GotProd);

  auto GotQ = getOpExn(&SI::operator/);
  auto ExpQ = getExpectedExn(&BigInt::operator/, " / ");
  testEqExn(ExpQ, GotQ);

  auto GotRem = getOpExn(&SI::operator%);
  auto ExpRem = getExpectedExn(&BigInt::operator%, " % ");
  testEqExn(ExpRem, GotRem);
}

template <unsigned Bits, SafeIntKind Signedness> void genOverUnderFlowTests() {

  auto doTestCombns = [](const SafeInt<Bits, Signedness> &Lhs,
                         const SafeInt<Bits, Signedness> &Rhs) {
    validateOverUnderFlow(Lhs, Rhs);
    validateOverUnderFlow(Rhs, Lhs);
  };

  doTestCombns(SafeInt<Bits, Signedness>::Min, SafeInt<Bits, Signedness>::Min);
  doTestCombns(SafeInt<Bits, Signedness>::Min, SafeInt<Bits, Signedness>::Zero);
  doTestCombns(SafeInt<Bits, Signedness>::Min, SafeInt<Bits, Signedness>::One);
  doTestCombns(SafeInt<Bits, Signedness>::Min, SafeInt<Bits, Signedness>::Max);
  doTestCombns(SafeInt<Bits, Signedness>::Max, SafeInt<Bits, Signedness>::Zero);
  doTestCombns(SafeInt<Bits, Signedness>::Max, SafeInt<Bits, Signedness>::One);
  doTestCombns(SafeInt<Bits, Signedness>::Max, SafeInt<Bits, Signedness>::Max);

  auto Max_2 = SafeInt<Bits, Signedness>::Max /
               SafeInt<Bits, Signedness>(std::string("2"));
  auto Min_2 = SafeInt<Bits, Signedness>::Min /
               SafeInt<Bits, Signedness>(std::string("2"));

  doTestCombns(Min_2, Min_2);
  doTestCombns(Min_2, Max_2);
  doTestCombns(Max_2, Max_2);

  doTestCombns(Min_2, SafeInt<Bits, Signedness>::Min);
  doTestCombns(Min_2, SafeInt<Bits, Signedness>::Max);
  doTestCombns(Max_2, SafeInt<Bits, Signedness>::Max);

  doTestCombns(Min_2, SafeInt<Bits, Signedness>::Zero);
  doTestCombns(Min_2, SafeInt<Bits, Signedness>::One);
  doTestCombns(Max_2, SafeInt<Bits, Signedness>::Zero);
  doTestCombns(Max_2, SafeInt<Bits, Signedness>::One);

  auto Max_1_2 = (SafeInt<Bits, Signedness>::Max -
                  SafeInt<Bits, Signedness>(std::string("1"))) /
                 SafeInt<Bits, Signedness>(std::string("2"));
  auto Min_1_2 = (SafeInt<Bits, Signedness>::Min +
                  SafeInt<Bits, Signedness>(std::string("1"))) /
                 SafeInt<Bits, Signedness>(std::string("2"));

  doTestCombns(Min_1_2, Min_1_2);
  doTestCombns(Min_1_2, Max_1_2);
  doTestCombns(Max_1_2, Max_1_2);

  doTestCombns(Min_1_2, SafeInt<Bits, Signedness>::Min);
  doTestCombns(Min_1_2, SafeInt<Bits, Signedness>::Max);
  doTestCombns(Max_1_2, SafeInt<Bits, Signedness>::Max);

  doTestCombns(Min_1_2, SafeInt<Bits, Signedness>::Zero);
  doTestCombns(Min_1_2, SafeInt<Bits, Signedness>::One);
  doTestCombns(Max_1_2, SafeInt<Bits, Signedness>::Zero);
  doTestCombns(Max_1_2, SafeInt<Bits, Signedness>::One);

  doTestCombns(Min_1_2, Min_1_2);
  doTestCombns(Min_1_2, Max_2);
  doTestCombns(Max_2, Max_2);

  doTestCombns(Min_1_2, SafeInt<Bits, Signedness>::Min);
  doTestCombns(Min_1_2, SafeInt<Bits, Signedness>::Max);
  doTestCombns(Max_2, SafeInt<Bits, Signedness>::Max);

  doTestCombns(Min_1_2, SafeInt<Bits, Signedness>::Zero);
  doTestCombns(Min_1_2, SafeInt<Bits, Signedness>::One);
  doTestCombns(Max_2, SafeInt<Bits, Signedness>::Zero);
  doTestCombns(Max_2, SafeInt<Bits, Signedness>::One);

  doTestCombns(Min_2, Min_2);
  doTestCombns(Min_2, Max_1_2);
  doTestCombns(Max_1_2, Max_1_2);

  doTestCombns(Min_2, SafeInt<Bits, Signedness>::Min);
  doTestCombns(Min_2, SafeInt<Bits, Signedness>::Max);
  doTestCombns(Max_1_2, SafeInt<Bits, Signedness>::Max);

  doTestCombns(Min_2, SafeInt<Bits, Signedness>::Zero);
  doTestCombns(Min_2, SafeInt<Bits, Signedness>::One);
  doTestCombns(Max_1_2, SafeInt<Bits, Signedness>::Zero);
  doTestCombns(Max_1_2, SafeInt<Bits, Signedness>::One);
}

BOOST_AUTO_TEST_CASE(op_safety) {
  genOverUnderFlowTests<32, Unsigned>();
  genOverUnderFlowTests<64, Unsigned>();
  genOverUnderFlowTests<128, Unsigned>();
  genOverUnderFlowTests<256, Unsigned>();
  genOverUnderFlowTests<32, Signed>();
  genOverUnderFlowTests<64, Signed>();
  genOverUnderFlowTests<128, Signed>();
  genOverUnderFlowTests<256, Signed>();
}

BOOST_AUTO_TEST_SUITE_END()