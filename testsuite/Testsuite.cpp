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

#define BOOST_TEST_DYN_LINK
#define BOOST_TEST_MODULE scilla_testsuite

#include <boost/test/output_test_stream.hpp>
#include <boost/test/unit_test.hpp>
using boost::test_tools::output_test_stream;

#include <ScillaVM/JITD.h>
#include <ScillaVM/SRTL.h>

#ifndef TESTSUITE_DIR
#error TESTSUITE_DIR not defined. Cannot build testsuite.
#endif // TESTSUITE_DIR

void testExecExpr(const std::string &Testname) {
  using namespace ScillaVM;

  auto Filename = std::string(TESTSUITE_DIR) + "/expr/" + Testname + ".ll";

  ScillaJIT::init();
  auto SJ = ScillaJIT::create(Filename);
  if (!SJ) {
    auto Err = SJ.takeError();
    auto M = llvm::toString(std::move(Err));
    BOOST_FAIL(M);
  }
  auto ScillaMainAddr = (*SJ)->getAddressFor("scilla_main");
  if (!ScillaMainAddr) {
    auto Err = SJ.takeError();
    auto M = llvm::toString(std::move(Err));
    BOOST_FAIL(M);
  }

  BOOST_TEST_CHECKPOINT(Filename + ": JIT compilation succeeded");

  auto ScillaMain = reinterpret_cast<void (*)()>(*ScillaMainAddr);
  ScillaStdout.clear();
  BOOST_CHECK_NO_THROW(ScillaMain());

  BOOST_TEST_CHECKPOINT(Filename + ": Execution succeeded");

  output_test_stream output(Filename + ".result", true);
  output << ScillaStdout;
  BOOST_TEST(output.match_pattern());
  // BOOST_TEST(b = a, boost::test_tools::lexicographic());

  BOOST_TEST_CHECKPOINT(Filename + ": Output matched");
}

BOOST_AUTO_TEST_SUITE(expr_exec)

BOOST_AUTO_TEST_CASE(adt_fun) { testExecExpr("adt-fun"); }
BOOST_AUTO_TEST_CASE(lit_bystr3) { testExecExpr("lit-bystr3"); }
BOOST_AUTO_TEST_CASE(lit_i256_4) { testExecExpr("lit-i256-4"); }
BOOST_AUTO_TEST_CASE(lit_i256_max) { testExecExpr("lit-i256-max"); }
BOOST_AUTO_TEST_CASE(lit_i256_min) { testExecExpr("lit-i256-min"); }
BOOST_AUTO_TEST_CASE(lit_int32) { testExecExpr("lit-int32"); }
BOOST_AUTO_TEST_CASE(list_nil) { testExecExpr("lit-nil"); }
BOOST_AUTO_TEST_CASE(lit_pair_list_int) { testExecExpr("lit-pair-list-int"); }
BOOST_AUTO_TEST_CASE(lit_string) { testExecExpr("lit-string"); }
BOOST_AUTO_TEST_CASE(lit_ui256_4) { testExecExpr("lit-ui256-4"); }
BOOST_AUTO_TEST_CASE(lit_ui256_max) { testExecExpr("lit-ui256-max"); }
BOOST_AUTO_TEST_CASE(pm1) { testExecExpr("pm1"); }
BOOST_AUTO_TEST_CASE(pm2) { testExecExpr("pm2"); }

BOOST_AUTO_TEST_SUITE_END()
