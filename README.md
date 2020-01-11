# Scilla Virtual Machine

A compiled execution backend for Scilla.

The compiled execution backend is divided into two parts:
  1. The JIT driver (JITD), which is responsible for invoking the
    scilla-compiler to produce LLVM-IR from Scilla source, then JIT
    compiling it to machine code, and finally executing it.
  2. Scilla run-time library (SRTL), which the contract code interacts
    with for performing pre-compiled operations, such as interact with
    the blockchain etc.

Design docs for the [VM architecture](https://github.com/Zilliqa/scilla-backend/wiki/Scilla-Backend-Design)
and the planned [interaction with the blockchain](https://github.com/Zilliqa/scilla-backend/wiki/Interaction-of-State-Variables-with-Blockchain)
are available.

## Build and install
We suggest building ScillaVM in a directory that is *not* the source directory.
  * `$git clone https://github.com/Zilliqa/scilla-vm.git`
  * `$cd scilla-vm; mkdir build; cd build`
  * `$cmake ..` configures the project. To specify an install directory other than the default
  (which requires super-user), provide the `-DCMAKE_INSTALL_PREFIX=/path/to/install` flag to `cmake`.
  scilla-vm uses LLVM. If your LLVM is installed in a non-default directory, specify it using
  `-DLLVM_DIR=/path/to/llvm/install/lib/cmake/llvm`.
  * `$make` builds the entire project. You can find the built files in `bin/` and `lib/`.
  * `$make install` installs the project.
  We suggest to provide your installation path as described earlier.

## Developer Notes
All public headers are placed in [include](./include). Source files for the JIT driver are
in [libjitd](./libjitd) while the sources for the Scilla RTL is in [libsrtl](./libsrtl).

### Coding Standards
This project uses the [LLVM coding standards](https://llvm.org/docs/CodingStandards.html).
For convenience, the naming convention is summarized below. All names (with exceptions)
must be in [camel case](https://en.wikipedia.org/wiki/Camel_case)
  - Types (structs, classes etc), namespaces and filenames begin with a capital letter.
  - Function and method names being with a small letter.
  - Variable (local, global and class members) names being with a capital letter.
  - Exceptions: Functions that serve as Scilla builtins, accessible from the JIT'ed code
    use snake casing, beginning with an `_`.

To conform to the coding style and good programming practices, CMake targets `clang-format`
and `clang-tidy` are provided, which when run as `make clang-format` and `make clang-tidy`
in the build directory, will auto format all source files.

They can also be manually run from the command line:
  - ```clang-format -style=LLVM -i `find . -name "*.cpp" -o -name "*.h" | xargs```
  - ```clang-tidy `find . -name "*.cpp" -o -name "*.h" | xargs` -p build/```
