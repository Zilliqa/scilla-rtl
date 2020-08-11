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
#include <boost/program_options.hpp>
#include <boost/test/unit_test.hpp>

#include <ScillaVM/Debug.h>

namespace {
namespace po = boost::program_options;

void parseCLIArgs(int argc, char *argv[], po::variables_map &VM) {
  auto UsageString = "Usage: [Boost.Test argument]... -- " +
                     std::string(argv[0]) + " [option...] testsuite_dir" +
                     "\nSupported options";
  po::options_description Desc(UsageString);

  // clang-format off
  Desc.add_options()
    ("help,h", "Print help message")
    ("debug", "Enable full logging (debug builds only)")
    ("debug-only",
         po::value<std::vector<std::string> >(),
         "DEBUG_TYPE to activate for logging (debug builds only")
    ("update-result", "Update expected results of all executed tests")
  ;

  po::options_description Hidden("Hidden options");
  Hidden.add_options()
    ("testsuite-dir", po::value<std::string>(), "Specify input file")
  ;
  // clang-format on

  // Gather all options.
  po::options_description AllOptions;
  AllOptions.add(Desc).add(Hidden);

  // Mark "testsuite-dir" as a positional argument.
  po::positional_options_description P;
  P.add("testsuite-dir", 1);
  try {
    po::store(po::command_line_parser(argc, argv)
                  .options(AllOptions)
                  .positional(P)
                  .run(),
              VM);
    po::notify(VM);
  } catch (std::exception &e) {
    std::cerr << e.what() << "\n";
    std::cerr << Desc << "\n";
    exit(EXIT_FAILURE);
  }

  if (VM.count("help")) {
    std::cerr << Desc << "\n";
    exit(EXIT_SUCCESS);
  }

  // Ensure that an input file is provided.
  if (!VM.count("testsuite-dir")) {
    std::cerr << "Testsuite directory not provided\n" << Desc << "\n";
    exit(EXIT_FAILURE);
  }
}
} // namespace

namespace ScillaTestsuite {

namespace Config {
// Overwrites the expected result instead of comparing with it.
bool UpdateResults = false;
std::string TestsuiteSrc;
} // namespace Config

struct CommandLineInit {
  CommandLineInit() {
    using namespace boost::unit_test;
    po::variables_map VM;
    // Check if there's a testsuite source directory provided as argument.
    parseCLIArgs(framework::master_test_suite().argc,
                 framework::master_test_suite().argv, VM);

    auto Dir = VM["testsuite-dir"].as<std::string>();
    BOOST_TEST_REQUIRE(boost::filesystem::is_directory(Dir));
    Config::TestsuiteSrc = Dir;
    if (VM.count("debug")) {
      ScillaVM::enableAllDebugTypes();
    } else if (VM.count("debug-only")) {
      auto &DTs = VM["debug-only"].as<std::vector<std::string>>();
      for (auto &DT : DTs) {
        ScillaVM::addToCurrentDebugTypes(DT);
      }
    }
    if (VM.count("update-result")) {
      Config::UpdateResults = true;
    }
    BOOST_TEST_MESSAGE("Using testsuite inputs from " << Config::TestsuiteSrc);
  }
  ~CommandLineInit() {}
};

BOOST_TEST_GLOBAL_FIXTURE(CommandLineInit);

} // namespace ScillaTestsuite
