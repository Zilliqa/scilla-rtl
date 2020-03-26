#include <boost/test/output_test_stream.hpp>
#include <boost/test/unit_test.hpp>
using boost::test_tools::output_test_stream;

#include <ScillaVM/JITD.h>
#include <ScillaVM/SRTL.h>

#include "Testsuite.h"

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
  BOOST_REQUIRE_NO_THROW(ScillaMain());

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

BOOST_AUTO_TEST_SUITE_END()
