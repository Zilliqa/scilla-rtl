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

#include <boost/filesystem.hpp>

#include <ScillaVM/JITD.h>
#include <ScillaVM/SRTL.h>

namespace {

namespace Config {
// Overwrites the expected result instead of comparing with it.
bool UpdateResults = false;
std::string TestsuiteSrc;
} // namespace Config

struct CommandLineInit {
  CommandLineInit() {
    using namespace boost::unit_test;
    // Check if there's a testsuite source directory provided as argument.
    if (framework::master_test_suite().argc == 3) {
      // This is the only named argument we support at the moment.
      // TODO: Use boost::program_options and support UpdateResult too.
      BOOST_TEST_REQUIRE(framework::master_test_suite().argv[1] ==
                         "--testsuite_src");
      auto dir = framework::master_test_suite().argv[2];
      BOOST_TEST_REQUIRE(boost::filesystem::is_directory(dir));
      Config::TestsuiteSrc = dir;
    } else {
      BOOST_FAIL("\nUsage: " << framework::master_test_suite().argv[0]
                             << " [Boost.Test argument]... -- --testsuite_src "
                                "/path/to/scilla-vm/testsuite");
    }
    BOOST_TEST_MESSAGE("Using testsuite inputs from " << Config::TestsuiteSrc);
  }
  ~CommandLineInit() {}
};

} // namespace

BOOST_TEST_GLOBAL_FIXTURE(CommandLineInit);

void testExecExpr(const std::string &Testname) {
  using namespace ScillaVM;

  auto Filename = Config::TestsuiteSrc + "/expr/" + Testname + ".ll";

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

  output_test_stream output(Filename + ".result", !Config::UpdateResults);
  output << ScillaStdout;
  BOOST_TEST(output.match_pattern());
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

BOOST_AUTO_TEST_SUITE_END()
