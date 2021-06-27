#!/usr/bin/env bash

echo "Building release build with address sanitizer"
cmake -B build -S . -DCMAKE_BUILD_TYPE=Release -DADDRESS_SANITIZER=1
cmake --build build --target check -j4
