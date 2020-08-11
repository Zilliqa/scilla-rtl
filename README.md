# Scilla Virtual Machine

[![Build Status](https://travis-ci.com/Zilliqa/scilla-vm.svg?branch=master)](https://travis-ci.com/Zilliqa/scilla-vm)
[![License](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://github.com/Zilliqa/scilla/blob/master/LICENSE)

A compiled execution backend for Scilla.

The compiled execution backend is divided into two parts:
  1. The JIT driver (JITD): JIT compiles Scilla contracts translated to
    LLVM-IR (see [scilla-compiler](https://github.com/Zilliqa/scilla-compiler)),
    links it with the run-time library and executes transitions.
    compiling it to machine code, and finally executing it.
  2. Scilla run-time library (SRTL), which the contract code interacts
    with for performing pre-compiled operations, such as interacting with
    the blockchain, executing builtins etc.

Design docs for the [VM architecture](https://github.com/Zilliqa/scilla-backend/wiki/Scilla-Backend-Design)
and the planned [interaction with the blockchain](https://github.com/Zilliqa/scilla-backend/wiki/Interaction-of-State-Variables-with-Blockchain)
are available.

## Build and install

Add Ubuntu repository for LLVM-10. Below command line is for Ubuntu 18.04, change
suitably for your OS (see the LLVM [apt page](https://apt.llvm.org/https://apt.llvm.org/))

  ```
  sudo add-apt-repository 'deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-10 main' -y
  wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add -
```

Install these Ubuntu packages
  - `sudo apt-get install build-essential cmake llvm-10-dev libboost-dev libboost-test-dev libjsoncpp-dev libboost-filesystem-dev libboost-program-options-dev`

We suggest building ScillaVM in a directory that is *not* the source directory.
  * `$git clone --recurse-submodules https://github.com/Zilliqa/scilla-vm.git`
  * `$cd scilla-vm; mkdir build; cd build`
  * `$cmake ..` configures the project.
    Additional (optional) flags:
    - `-DCMAKE_INSTALL_PREFIX=/where/to/install/scilla-vm`: To specify an install directory other
    than the default. The default installation path typically requires root permissions.
    - `-DLLVM_DIR=/path/to/llvm/install/lib/cmake/llvm`:
    If your LLVM is not installed in a default (system) directory,
    provide this [flag](https://llvm.org/docs/CMake.html#embedding-llvm-in-your-project)
    to enable `CMake` to find LLVM. Note: LLVM must be built with [RTTI support](https://llvm.org/docs/CMake.html).
    - `-DCMAKE_BUILD_TYPE=[Debug|Release|RelWithDebInfo|MinSizeRel]`: The default build is `Debug`.
  * `$make` builds the entire project. You can find the built files in `bin/` and `lib/`.
  * `$make install` installs the project.
  * `$make runtests` runs the testsuite.
  We suggest to provide your installation path as described earlier and not install in a system
  directory.

## Run
While Scilla VM is intended to be primarily used as a library from the Zilliqa blockchain,
we provide two wrapper executables for development, debugging and simply trying out the VM.
`expr-runner` takes as input, a compiled pure Scilla expression and executes it, by calling
a wrapper function `scilla_main` generated by the compiler. If the expression is printable,
the compiler also generates a call to print it.
`scilla-runner` takes a compiled Scilla contract, a message JSON, an initial state for execution
and a contract info JSON (obtrained by running `scilla-checker` with the `-contractinfo` flag).
With these inputs, the transition specified in the message JSON is executed. The output state
is printed.

```
$build/bin/expr-runner testsuite/expr/lit-pair-list-int.ll

$build/bin/scilla-runner --input-contract testsuite/contr/simple-map.ll --message testsuite/contr/simple-map.message_Increment.json --contract-info testsuite/contr/simple-map.contrinfo.json --state testsuite/contr/simple-map.state_00.json
```

## Developer Notes
All public headers are placed in [include](./include). Source files for the JIT driver are
in [libjitd](./libjitd) while the sources for Scilla RTL are in [libsrtl](./libsrtl).

### Coding Standards
This project uses the [LLVM coding standards](https://llvm.org/docs/CodingStandards.html).

For convenience, the naming convention is summarized below. All names (with allowed exceptions)
must be in [camel case](https://en.wikipedia.org/wiki/Camel_case)
  - Types (structs, classes etc), namespaces and filenames begin with a capital letter.
  - Function and method names being with a small letter.
  - Variable (local, global and class members) names being with a capital letter.
  - Functions that serve as Scilla builtins, accessible from the JIT'ed code
    must start with an `_` and be in [snake case](https://en.wikipedia.org/wiki/Snake_case).

A few other points to note
  - Add function [comments](https://llvm.org/docs/CodingStandards.html#doxygen-use-in-documentation-comments)
  at declaration points rather than definition points. Definition points
  can have more details if necessary.
  - Include system headers first, then library headers and lastly
  project headers. Each category separated by a line. `clang-format`
  takes care of arranging them in alphabetical order.
  - Since this library is designed to be part of an ever running process
  in the Zilliqa network, do not `abort()`, `exit()` or `assert()`.
  Always use the provided `CREATE_ERROR` and `CREATE_ERROR_SLOC` macros.
  This throws an exception (with information on where it was thrown from)
  and can be caught and handled by the blockchain. For assertions, use
  `ASSERT` or `ASSERT_MSG`. These use `CREATE_ERROR` internally and are
  defined to be no-op in release builds.

To conform to the coding style and good programming practices, CMake targets `clang-format`
and `clang-tidy` are provided, which when run as `make clang-format` and `make clang-tidy`
in the build directory, will auto format all source files.

They can also be manually run from the command line:
  - ```clang-format -style=LLVM -i `find . -name "*.cpp" -o -name "*.h" | xargs```
  - ```clang-tidy `find . -name "*.cpp" -o -name "*.h" | xargs` -p build/```

### Testsuite

The testsuite, built by default (but not installed), is based on `boost_unit_framework`
and can be run from the project root as
```bash
build/testsuite/scilla-testsuite -- testsuite_dir
```

A few command line options are provided below for quick reference.
See `--help` for all options provided by `boost`. These options must all be provided prior to `--` in the command line.

  - `--list_content`: Lists the testsuite hierarchy.
  - `--run_test` : Run specific tests (as listed by `--list_content`). See details
  [here](https://www.boost.org/doc/libs/1_72_0/libs/test/doc/html/boost_test/runtime_config/test_unit_filtering.html)
  - `--log_level=all`: To enable the full log to be printed.

The `testsuite_dir` argument following `--` is a [custom argument](https://www.boost.org/doc/libs/1_70_0/libs/test/doc/html/boost_test/runtime_config/custom_command_line_arguments.html)
that tells the testsuite where to find the tests and their inputs.

For convenience a `CMake` target `runtests` has been provided to run the testsuite. This can be
executed as `make runtests` in the build directory.

#### Expression execution tests
The directory `testsuite/expr` contains text LLVM-IR files, all generated by `expr-compiler`.
We maintain the following conventions:
  - Each test file has the input Scilla expression as a comment at the beginning.
  Such a file can be generated using the script `scripts/gen_expr_test.sh`
  by providing the path to Scilla expression file (`.scilexp`) in the
  compiler repository testsuite. (It will implicitly look for the corresponding
  `.gold` file already generated by the compiler in the compiler testsuite).
  A wrapper script `scripts/gen_expr_tests.sh` is provided to update all expression
  tests in the testsuite, provided a path to Scilla compiler source directory.
  - Each test LLVM-IR file (`foo.ll`) must have a corresponding `foo.ll.result`
  file that contains the expected output on executing the code.
  The testsuite will match against it.

#### Contract execution tests
The directory `testsuite/contr` contains text LLVM-IR files, all generated by `scilla-compiler`.
The directory also contains the supporting JSONs required for executing transitions in these
compiled contracts.
