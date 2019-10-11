# Scilla Virtual Machine

This repository holds a compiled execution backend for Scilla.
It has two parts:
  1. The JIT driver (JITD), which is responsible for invoking the
    scilla-compiler to produce LLVM-IR from Scilla source, then JIT
    compiling it to machine code, and finally executing it.
  2. Scilla run-time library (SRTL), which the contract code interacts
    with for performing pre-compiled operations, such as interact with
    the blockchain etc.

Details of the VM architecture and the planned interaction with the blockchain
can be found here:
  1. https://github.com/Zilliqa/scilla-backend/wiki/Scilla-Backend-Design
  2. https://github.com/Zilliqa/scilla-backend/wiki/Interaction-of-State-Variables-with-Blockchain
