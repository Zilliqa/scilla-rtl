#!/usr/bin/env bash

cmake -B build -S . -DADDRESS_SANITIZER=1
cmake --build build --target runtests
