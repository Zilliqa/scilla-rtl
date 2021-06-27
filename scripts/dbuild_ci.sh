#!/usr/bin/env bash

echo "Building debug build with address sanitizer"
cmake -B build -S . -DCMAKE_BUILD_TYPE=Debug -DADDRESS_SANITIZER=1
cmake --build build --target check -j4
