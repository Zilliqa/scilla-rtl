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

#include <functional>
#include <memory>
#include <string>
#include <unordered_map>

#include <boost/any.hpp>
#include <jsoncpp/json/json.h>

// Forward declarations.
namespace llvm {
namespace orc {
class LLJIT;
}
class MemoryBuffer;
} // namespace llvm

namespace ScillaVM {

class ScillaJIT;
class ScillaObjCache;
class ScillaOutputProcessor;

namespace ScillaTypes {
class TypParserPartialCache;
}

// An opaque object for use from outside the ScillaJIT object.
class ScillaCacheManager {
  friend class ScillaJIT;
  std::unique_ptr<ScillaObjCache> SOC;

public:
  // Constructor for memory + disk cache.
  ScillaCacheManager(const std::string &CacheDir);
  // Constructor for memory only cache.
  ScillaCacheManager();
  ~ScillaCacheManager();
};

// Information that Scilla will need to execute contracts.
struct ScillaParams {
  struct StateQuery {
    std::string Name;
    int MapDepth;
    std::vector<std::string> Indices;
    bool IgnoreVal;
  };
  // A Scilla state contains either std::string or a MapValueT
  // We use boost::any to capture this. Using std::variant is
  // cumbersome because of the recursive type definition required.
  // https://stackoverflow.com/questions/43309468/recursive-data-structure-with-variant
  using MapValueT = std::unordered_map<std::string, boost::any>;

  using FetchState_Type = std::function<bool(const StateQuery &Query,
                                             boost::any &RetVal, bool &Found)>;
  using UpdateState_Type =
      std::function<bool(const StateQuery &Query, const boost::any &Val)>;

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
  // JIT Compile LLVM-IR from MemBuf, affixing @ModuleID to it.
  // Optionally, a cache manager can be provided.
  static std::unique_ptr<ScillaJIT> create(const ScillaParams &SPs,
                                           llvm::MemoryBuffer *MemBuf,
                                           const std::string &ModuleID,
                                           ScillaCacheManager * = nullptr);

  std::unique_ptr<llvm::orc::LLJIT> Jitter;
  std::vector<uint8_t *> MAllocs;
  // An opaque pointer to the type parser partial cache.
  std::unique_ptr<ScillaTypes::TypParserPartialCache> TPPC;
  // Contains the output of executing a transition. Cleared every time.
  Json::Value OutJ;
  // So that OutJ can be accessed from the VM.
  friend ScillaVM::ScillaOutputProcessor;

public:
  // One time initialization.
  static void init();
  // JIT Compile LLVM-IR @FileName. ModuleID is derived from @FileName.
  //  Optionally, a cache manager can be provided.
  static std::unique_ptr<ScillaJIT> create(const ScillaParams &SPs,
                                           const std::string &FileName,
                                           ScillaCacheManager * = nullptr);
  // JIT Compile LLVM-IR in @IR, affixing @ModuleID to it.
  // Optionally, a cache manager can be provided.
  static std::unique_ptr<ScillaJIT> create(const ScillaParams &SPs,
                                           const std::string &IR,
                                           const std::string &ModuleID,
                                           ScillaCacheManager * = nullptr);
  // Get address for @Symbol inside the compiled IR, ready to be used.
  void *getAddressFor(const std::string &Symbol);
  // Execute a message.
  Json::Value execMsg(Json::Value &Msg);

  // Allocate and own the memory for code owned by this object.
  void *sAlloc(size_t Size);
  // Free all memory allocated for code owned by this object.
  void sFreeAll();

  // Scilla configuration parameters.
  const ScillaParams SPs;

  ~ScillaJIT();
};

} // namespace ScillaVM
