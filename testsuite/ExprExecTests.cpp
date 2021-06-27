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

#include <ScillaRTL/Errors.h>
#include <ScillaRTL/ScillaExec.h>
#include <ScillaRTL/Utils.h>

#include "Testsuite.h"

namespace {

using namespace ScillaRTL;
using namespace ScillaTestsuite;

void testExecExprHelper(const std::string &Filename,
                        const std::string &ResultFilename) {

  std::string ScillaOutput;
  try {
    // Tool to compile the LLVM-IR to a binary shared object.
    CompileToSO CSO(Filename);
    // Setup a Scilla expression execution object.
    ScillaExprExec SJ(ScillaRTL::ScillaParams(), CSO.compile());
    BOOST_TEST_CHECKPOINT(Filename + ": Loaded compiled shared object.");
    ScillaOutput = SJ.exec(Config::GasLimit);
  } catch (const ScillaError &E) {
    BOOST_FAIL(E.toString());
  }

  BOOST_TEST_CHECKPOINT(Filename + ": Execution succeeded");

  output_test_stream Output(ResultFilename, !Config::UpdateResults);
  Output << ScillaOutput;
  BOOST_TEST(Output.match_pattern());
  BOOST_TEST_CHECKPOINT(Filename + ": Output matched");
}

// Calls testExecExprHelper for both non-debug and debug LLVM-IR inputs.
void testExecExpr(const std::string &Testname) {
  auto Filename = Config::TestsuiteSrc + "/expr/" + Testname + ".ll";
  auto FilenameDbg = Config::TestsuiteSrc + "/expr/" + Testname + ".dbg.ll";
  auto ResultFilename = Filename + ".result";
  BOOST_TEST_CHECKPOINT("Testing " + Filename + " with non-debug LLVM-IR");
  testExecExprHelper(Filename, ResultFilename);
  BOOST_TEST_CHECKPOINT("Testing " + FilenameDbg + " with debug LLVM-IR");
  testExecExprHelper(FilenameDbg, ResultFilename);
}

void testExecFailExpr(const std::string &Testname) {

  auto Filename = Config::TestsuiteSrc + "/expr/" + Testname + ".ll";

  bool CaughtException = false;
  std::string ScillaOutput;
  try {
    // Tool to compile the LLVM-IR to a binary shared object.
    CompileToSO CSO(Filename);
    // Setup a Scilla expression execution object.
    ScillaExprExec SJ(ScillaRTL::ScillaParams(), CSO.compile());
    BOOST_TEST_CHECKPOINT(Filename + ": Loaded compiled shared object.");
    ScillaOutput = SJ.exec(Config::GasLimit);
  } catch (const ScillaError &E) {
    output_test_stream Output(Filename + ".result", !Config::UpdateResults);
    Output << E.toString();
    BOOST_TEST(Output.match_pattern());
    CaughtException = true;
    BOOST_TEST_CHECKPOINT(Filename + ": Output matched");
  }
  BOOST_CHECK_MESSAGE(CaughtException, "Did not catch expected error");
}

} // namespace

// Expected success tests

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
BOOST_AUTO_TEST_CASE(builtin_sub) { testExecExpr("builtin_sub"); }
BOOST_AUTO_TEST_CASE(builtin_mul) { testExecExpr("builtin_mul"); }
BOOST_AUTO_TEST_CASE(builtin_div_rem) { testExecExpr("builtin_div_rem"); }
BOOST_AUTO_TEST_CASE(builtin_baddsub) { testExecExpr("builtin_baddsub"); }
BOOST_AUTO_TEST_CASE(name_clash) { testExecExpr("name_clash"); }
BOOST_AUTO_TEST_CASE(name_clash1) { testExecExpr("name_clash1"); }
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
BOOST_AUTO_TEST_CASE(ackermann_3_7) { testExecExpr("ackermann_3_7"); }
BOOST_AUTO_TEST_CASE(church_nat_stlc) { testExecExpr("church_nat_stlc"); }
BOOST_AUTO_TEST_CASE(cn) { testExecExpr("cn"); }
BOOST_AUTO_TEST_CASE(church_nat) { testExecExpr("church_nat"); }
BOOST_AUTO_TEST_CASE(builtin_eq) { testExecExpr("builtin_eq"); }
BOOST_AUTO_TEST_CASE(builtin_sha256hash) { testExecExpr("builtin_sha256hash"); }
BOOST_AUTO_TEST_CASE(builtin_keccak256hash) {
  testExecExpr("builtin_keccak256hash");
}
BOOST_AUTO_TEST_CASE(builtin_ripemd160hash) {
  testExecExpr("builtin_ripemd160hash");
}
BOOST_AUTO_TEST_CASE(builtin_concat) { testExecExpr("builtin_concat"); }
BOOST_AUTO_TEST_CASE(builtin_map) { testExecExpr("builtin_map"); }
BOOST_AUTO_TEST_CASE(lit_emp_i32_i32) { testExecExpr("lit-emp_i32_i32"); }
BOOST_AUTO_TEST_CASE(lit_emp_i32_list_string) {
  testExecExpr("lit-emp_i32_list_string");
}
BOOST_AUTO_TEST_CASE(map1) { testExecExpr("map1"); }
BOOST_AUTO_TEST_CASE(builtin_to_bystrx) { testExecExpr("builtin_to_bystrx"); }
BOOST_AUTO_TEST_CASE(builtin_substr) { testExecExpr("builtin_substr"); }
BOOST_AUTO_TEST_CASE(builtin_strlen) { testExecExpr("builtin_strlen"); }
BOOST_AUTO_TEST_CASE(bystrx_uint_conversions) {
  testExecExpr("bystrx_uint_conversions");
}
BOOST_AUTO_TEST_CASE(builtin_bech32) { testExecExpr("builtin_bech32"); }
BOOST_AUTO_TEST_CASE(builtin_bech32_invalid) {
  testExecExpr("builtin_bech32-invalid");
}
BOOST_AUTO_TEST_CASE(builtin_bech32_rev) { testExecExpr("builtin_bech32_rev"); }
BOOST_AUTO_TEST_CASE(builtin_schnorr_verify_true) {
  testExecExpr("builtin_schnorr_verify_true");
}
BOOST_AUTO_TEST_CASE(builtin_schnorr_verify_false) {
  testExecExpr("builtin_schnorr_verify_false");
}
BOOST_AUTO_TEST_CASE(builtin_ecdsa_verify_true) {
  testExecExpr("builtin_ecdsa_verify_true");
}
BOOST_AUTO_TEST_CASE(builtin_ecdsa_verify_false) {
  testExecExpr("builtin_ecdsa_verify_false");
}
BOOST_AUTO_TEST_CASE(builtin_schnorr_get_address) {
  testExecExpr("builtin-schnorr_get_address");
}
BOOST_AUTO_TEST_CASE(builtin_ecdsa_recover) {
  testExecExpr("builtin-ecdsa_recover");
}
BOOST_AUTO_TEST_CASE(builtin_to_string) { testExecExpr("builtin_to_string"); }
BOOST_AUTO_TEST_CASE(builtin_to_ascii) { testExecExpr("builtin_to_ascii"); }
BOOST_AUTO_TEST_CASE(builtin_lt) { testExecExpr("builtin_lt"); }
BOOST_AUTO_TEST_CASE(lit_bnum) { testExecExpr("lit-bnum"); }
BOOST_AUTO_TEST_CASE(builtin_to_uint) { testExecExpr("builtin_to_uint"); }
BOOST_AUTO_TEST_CASE(builtin_to_int) { testExecExpr("builtin_to_int"); }

BOOST_AUTO_TEST_SUITE_END()

// Expected fail tests

BOOST_AUTO_TEST_SUITE(expr_exec_fail)

BOOST_AUTO_TEST_CASE(builtin_substr_fail) {
  testExecFailExpr("builtin_substr_rfail");
}
BOOST_AUTO_TEST_CASE(builtin_to_ascii_error) {
  testExecFailExpr("builtin_to_ascii_error");
}

BOOST_AUTO_TEST_SUITE_END()
