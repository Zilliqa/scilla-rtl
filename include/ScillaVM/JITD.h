/*
 * Copyright (C) 2019 Zilliqa
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

#pragma once

#include "llvm/ADT/StringMap.h"
#include "llvm/ExecutionEngine/ObjectCache.h"
#include "llvm/ExecutionEngine/Orc/LLJIT.h"
#include "llvm/Support/Error.h"
#include "llvm/Support/MemoryBuffer.h"
#include <string>

namespace ScillaVM {

// Caching mechanism for compiled files. Not thread safe.
class ScillaObjCache : public llvm::ObjectCache {
public:
  void notifyObjectCompiled(const llvm::Module *M,
                            llvm::MemoryBufferRef ObjBuffer) override;

  std::unique_ptr<llvm::MemoryBuffer> getObject(const llvm::Module *M) override;

private:
  llvm::StringMap<std::unique_ptr<llvm::MemoryBuffer>> CachedObjects;
};

// Each ScillaJIT object compiles an LLVM-IR module and provides access
// to the symbols inside it. TODO: Handle multiple modules.
class ScillaJIT {
private:
  // Use the Create method to build a ScillaJIT object.
  ScillaJIT(std::unique_ptr<llvm::orc::LLJIT> J, llvm::ObjectCache *C)
      : Jitter(std::move(J)), Cache(C) {}
  std::unique_ptr<llvm::orc::LLJIT> Jitter;
  llvm::ObjectCache *Cache;

public:
  // One time initialization.
  static void init();
  // JIT Compile LLVM-IR @FileName. Optionally, a cache manager can be provided.
  static llvm::Expected<std::unique_ptr<ScillaJIT>>
  create(const std::string &FileName, llvm::ObjectCache * = nullptr);
  // Get address for @Symbol inside the compiled IR, ready to be used.
  llvm::Expected<void *> getAddressFor(const std::string &Symbol);
};

} // namespace ScillaVM
