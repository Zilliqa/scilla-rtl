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

## Source directory organisation
All public headers are placed in [include](./include). Source files for the JIT driver are
in [libjitd](./libjitd) while the sources for the Scilla RTL is in [libsrtl](./libsrtl).
