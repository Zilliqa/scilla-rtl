#!/usr/bin/env bash

echo "Building debug build with address sanitizer"
export PATH=/usr/local/opt/llvm@13/bin:$PATH 
export LIBRARY_PATH=/usr/local/opt/jsoncpp/lib:/usr/local/opt/secp256k1/lib/ 

# CMAKE_C_COMPILER and CMAKE_CXX_COMPILER make cmake pick the Homebrew Clang installation
# and not the default AppleClang compiler
# See https://github.com/taichi-dev/taichi/issues/3578 and some links there:
# - https://github.com/taichi-dev/taichi/pull/3379
# - https://stackoverflow.com/questions/45933732/how-to-specify-a-compiler-in-cmake
cmake -D CMAKE_C_COMPILER=clang -D CMAKE_CXX_COMPILER=clang++ -B build -S . -DCMAKE_BUILD_TYPE=Debug -DADDRESS_SANITIZER=1

cmake --build build --target runtests -j4
