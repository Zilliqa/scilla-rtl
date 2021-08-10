#!/usr/bin/env bash

echo "Building release build with address sanitizer"
export PATH=/usr/local/opt/llvm/bin:$PATH 
export LIBRARY_PATH=/usr/local/opt/jsoncpp/lib:/usr/local/opt/secp256k1/lib/ 
cmake -B build -S . -DCMAKE_BUILD_TYPE=Release -DADDRESS_SANITIZER=1
cmake --build build --target runtests -j4