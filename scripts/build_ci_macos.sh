#!/usr/bin/env bash

echo "Building release build with address sanitizer"
cmake -B build -S . -DCMAKE_BUILD_TYPE=Release -DADDRESS_SANITIZER=1
LIBRARY_PATH=/usr/local/opt/jsoncpp/lib:/usr/local/opt/secp256k1/lib/ cmake --build build --target runtests -j4