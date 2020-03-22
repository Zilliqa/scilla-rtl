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

#include <boost/filesystem.hpp>
#include <boost/test/unit_test.hpp>

namespace ScillaVM {

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
      auto Dir = framework::master_test_suite().argv[2];
      BOOST_TEST_REQUIRE(boost::filesystem::is_directory(Dir));
      Config::TestsuiteSrc = Dir;
    } else {
      BOOST_FAIL("\nUsage: " << framework::master_test_suite().argv[0]
                             << " [Boost.Test argument]... -- --testsuite_src "
                                "/path/to/scilla-vm/testsuite");
    }
    BOOST_TEST_MESSAGE("Using testsuite inputs from " << Config::TestsuiteSrc);
  }
  ~CommandLineInit() {}
};

BOOST_TEST_GLOBAL_FIXTURE(CommandLineInit);

} // namespace ScillaVM
