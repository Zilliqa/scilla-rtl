#!/usr/bin/env bash

echo "Building debug build with address sanitizer"
export PATH=/usr/local/opt/llvm@12/bin:$PATH 
export LIBRARY_PATH=/usr/local/opt/jsoncpp/lib:/usr/local/opt/secp256k1/lib/ 
cmake -B build -S . -DCMAKE_BUILD_TYPE=Debug -DADDRESS_SANITIZER=1
cmake --build build --target runtests -j4
