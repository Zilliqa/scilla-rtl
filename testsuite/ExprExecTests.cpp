/*
 * Copyright (C) 2019 Zilliqa
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

#include <boost/test/tools/output_test_stream.hpp>
#include <boost/test/unit_test.hpp>
using boost::test_tools::output_test_stream;

#include <ScillaVM/Errors.h>
#include <ScillaVM/JITD.h>
#include <ScillaVM/SRTL.h>

#include "Testsuite.h"

namespace {
void testExecExpr(const std::string &Testname) {
  using namespace ScillaVM;

  auto Filename = Config::TestsuiteSrc + "/expr/" + Testname + ".ll";

  ScillaJIT::init();
  // TODO: Pushing ScillaJIT::create into the try-catch below
  // causes a segfault later. Likely related to the exception
  // bug (and workaround) linked to right below.
  // Linking to an LLVM build with LLVM_ENABLE_EH=On doesn't solve.
  auto SJ = ScillaJIT::create(ScillaVM::ScillaParams(), Filename);
  try {
    auto ScillaMainAddr = SJ->getAddressFor("scilla_main");
    BOOST_TEST_CHECKPOINT(Filename + ": JIT compilation succeeded");
    auto ScillaMain = reinterpret_cast<void (*)()>(ScillaMainAddr);
    ScillaStdout.clear();
    ScillaMain();
  } catch (const ScillaError &E) {
    BOOST_FAIL(E.toString());
  }

  BOOST_TEST_CHECKPOINT(Filename + ": Execution succeeded");

  output_test_stream output(Filename + ".result", !Config::UpdateResults);
  output << ScillaStdout;
  BOOST_TEST(output.match_pattern());
  BOOST_TEST_CHECKPOINT(Filename + ": Output matched");

  // https://github.com/boostorg/boost/issues/379
  try {
    throw std::exception();
  } catch (std::exception &) {
    ;
  }
}
} // namespace
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
BOOST_AUTO_TEST_CASE(builtin_add_int32) { testExecExpr("builtin_add_int32"); }
BOOST_AUTO_TEST_CASE(builtin_add_int256) { testExecExpr("builtin_add_int256"); }
BOOST_AUTO_TEST_CASE(builtin_add_uint32) { testExecExpr("builtin_add_uint32"); }
BOOST_AUTO_TEST_CASE(builtin_add_uint256) {
  testExecExpr("builtin_add_uint256");
}
BOOST_AUTO_TEST_CASE(name_clash) { testExecExpr("name_clash"); }
BOOST_AUTO_TEST_CASE(name_clash2) { testExecExpr("name_clash2"); }
BOOST_AUTO_TEST_CASE(lit_int32_1) { testExecExpr("lit-int32-1"); }
BOOST_AUTO_TEST_CASE(simple_fun) { testExecExpr("simple-fun"); }
BOOST_AUTO_TEST_CASE(simple_ho) { testExecExpr("simple_ho"); }
BOOST_AUTO_TEST_CASE(match_assign) { testExecExpr("match_assign"); }
BOOST_AUTO_TEST_CASE(fun_type_inst) { testExecExpr("fun-type-inst"); }
BOOST_AUTO_TEST_CASE(multi_type_inst) { testExecExpr("multi-type-inst"); }
BOOST_AUTO_TEST_CASE(nonprenex) { testExecExpr("nonprenex"); }
BOOST_AUTO_TEST_CASE(tname_clash) { testExecExpr("tname_clash"); }
BOOST_AUTO_TEST_CASE(typ_inst) { testExecExpr("typ-inst"); }
BOOST_AUTO_TEST_CASE(typ1_inst) { testExecExpr("typ1-inst"); }
BOOST_AUTO_TEST_CASE(typ2_inst) { testExecExpr("typ2-inst"); }
BOOST_AUTO_TEST_CASE(typ3_inst) { testExecExpr("typ3-inst"); }
BOOST_AUTO_TEST_CASE(fib) { testExecExpr("fib"); }
BOOST_AUTO_TEST_CASE(lit_nat_zero) { testExecExpr("lit-nat_zero"); }
BOOST_AUTO_TEST_CASE(lit_nat_two) { testExecExpr("lit-nat_two"); }
BOOST_AUTO_TEST_CASE(builtin_to_nat) { testExecExpr("builtin_to_nat"); }
BOOST_AUTO_TEST_CASE(ackermann) { testExecExpr("ackermann"); }

BOOST_AUTO_TEST_SUITE_END()
