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
#include "llvm/Support/MemoryBuffer.h"
#include <any>
#include <functional>
#include <jsoncpp/json/json.h>
#include <memory>
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

namespace ScillaTypes {
class TypParserPartialCache;
}

// Information that Scilla will need to execute contracts.
struct ScillaParams {
  struct StateQuery {
    std::string Name;
    int MapDepth;
    std::vector<std::string> Indices;
    bool IgnoreVal;
  };
  // A Scilla state contains either std::string or a MapValueT
  // We use std::any to capture this. Using std::variant is
  // cumbersome because of the recursive type definition required.
  // https://stackoverflow.com/questions/43309468/recursive-data-structure-with-variant
  using MapValueT = std::unordered_map<std::string, std::any>;

  using FetchState_Type = std::function<bool(const StateQuery &Query,
                                             std::any &RetVal, bool &Found)>;
  using UpdateState_Type =
      std::function<bool(const StateQuery &Query, const std::any &Val)>;

  FetchState_Type fetchStateValue;
  UpdateState_Type updateStateValue;

  ScillaParams() : fetchStateValue(nullptr), updateStateValue(nullptr){};
  ScillaParams(FetchState_Type FS, UpdateState_Type US)
      : fetchStateValue(FS), updateStateValue(US){};
};

// Each ScillaJIT object compiles an LLVM-IR module and provides access
// to the symbols inside it.
class ScillaJIT {
private:
  // Use the Create method to build a ScillaJIT object.
  ScillaJIT(const ScillaParams &SPs, std::unique_ptr<llvm::orc::LLJIT> J);
  std::unique_ptr<llvm::orc::LLJIT> Jitter;
  std::vector<uint8_t *> MAllocs;
  // An opaque pointer to the type parser partial cache.
  std::unique_ptr<ScillaTypes::TypParserPartialCache> TPPC;

public:
  // One time initialization.
  static void init();
  // JIT Compile LLVM-IR @FileName. Optionally, a cache manager can be provided.
  static std::unique_ptr<ScillaJIT> create(const ScillaParams &SPs,
                                           const std::string &FileName,
                                           llvm::ObjectCache * = nullptr);
  // Get address for @Symbol inside the compiled IR, ready to be used.
  void *getAddressFor(const std::string &Symbol);
  // Execute a message.
  void execMsg(Json::Value &Msg);

  // Allocate and own the memory for code owned by this object.
  void *sAlloc(size_t Size);
  // Free all memory allocated for code owned by this object.
  void sFreeAll();

  // Scilla configuration parameters.
  const ScillaParams SPs;

  ~ScillaJIT();
};

} // namespace ScillaVM
