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
class TransitionState;
class ObjManager;

namespace ScillaTypes {
class TypParserPartialCache;
class Typ;
} // namespace ScillaTypes

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
  using FetchRemoteState_Type =
      std::function<bool(const std::string &Addr, const StateQuery &Query,
                         boost::any &RetVal, bool &Found, std::string &Type)>;
  using UpdateState_Type =
      std::function<bool(const StateQuery &Query, const boost::any &Val)>;

  FetchState_Type fetchStateValue;
  FetchRemoteState_Type fetchRemoteStateValue;
  UpdateState_Type updateStateValue;

  ScillaParams()
      : fetchStateValue(nullptr), fetchRemoteStateValue(nullptr),
        updateStateValue(nullptr){};
  ScillaParams(FetchState_Type FS, FetchRemoteState_Type FRS,
               UpdateState_Type US)
      : fetchStateValue(FS), fetchRemoteStateValue(FRS), updateStateValue(US){};
};

// Each ScillaJIT object compiles an LLVM-IR module and provides access
// to the symbols inside it. It is recommended use ScillaJIT_Safe,
// which hides many private methods in this class and makes it safer.
class ScillaJIT {
private:
  // Use the Create method to build a ScillaJIT object.
  ScillaJIT(const ScillaParams &SPs, std::unique_ptr<llvm::orc::LLJIT> &&J);
  // JIT Compile LLVM-IR from MemBuf, affixing @ModuleID to it.
  // Optionally, a cache manager can be provided.
  static std::unique_ptr<ScillaJIT> create(const ScillaParams &SPs,
                                           llvm::MemoryBuffer *MemBuf,
                                           const std::string &ModuleID,
                                           ScillaCacheManager * = nullptr);

  void initContrParams(const Json::Value &CP, bool DoDynamicTypechecks);
  std::unique_ptr<llvm::orc::LLJIT> Jitter;
  // An opaque pointer to the type parser partial cache.
  std::unique_ptr<ScillaTypes::TypParserPartialCache> TPPC;

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
  void *getAddressFor(const std::string &Symbol) const;

  // Get the type descriptors table and its length.
  std::pair<const ScillaTypes::Typ **, int> getTypeDescrTable() const;

  // Initialize gas-remaining field in the code and initialize libraries.
  uint64_t *initGasAndLibs(uint64_t GasRem);
  // Execute a message.
  Json::Value execMsg(const std::string &Balance, uint64_t GasLimit,
                      const Json::Value &InitJ, const Json::Value &Msg);
  // Initialize the contract state to field initialization values in the source.
  // This is to be called only during deployment of the contract. Never again.
  Json::Value deploy(const Json::Value &InitJ, uint64_t GasLimit);
  // What's the gas remaining from previous execution (deploy / execMsg).
  // Useful if execution was interrupted due to an exception.
  // Use with care if you don't want to end up with a stale value.
  uint64_t getGasRem() const;
  // Parse a string into a Scilla type. Raises error on failure.
  const ScillaTypes::Typ *parseTypeString(const std::string &) const;

  // Scilla values dynamically allocated and owned by the JIT engine.
  std::unique_ptr<ObjManager> OM;
  // Scilla configuration parameters.
  const ScillaParams SPs;
  // The state of execution specific to a transition.
  std::unique_ptr<TransitionState> TS;

  ~ScillaJIT();
};

// Typical usage:
//   ScillaJIT_Safe::init(); : One time ever
//   1. auto SJ = ScillaJIT_Safe::create(...);
//   2. (a) Deployment (b) Transition execution
//      a. auto Output = ScillaJIT_Safe::deploy(...);
//        OR
//      b. auto Output = ScillaJIT_Safe::execMsg(...);
//   3. If ScillaError exception, check remaining gas with getGasRem().
class ScillaJIT_Safe : private ScillaJIT {
public:
  // One time initialization.
  static void init() { ScillaJIT::init(); }
  // JIT Compile LLVM-IR @FileName. ModuleID is derived from @FileName.
  //  Optionally, a cache manager can be provided.
  static std::unique_ptr<ScillaJIT_Safe>
  create(const ScillaParams &SPs, const std::string &FileName,
         ScillaCacheManager *SCM = nullptr) {
    ScillaJIT *Ptr = ScillaJIT::create(SPs, FileName, SCM).release();
    return std::unique_ptr<ScillaJIT_Safe>(static_cast<ScillaJIT_Safe *>(Ptr));
  }
  // JIT Compile LLVM-IR in @IR, affixing @ModuleID to it.
  // Optionally, a cache manager can be provided.
  static std::unique_ptr<ScillaJIT_Safe>
  create(const ScillaParams &SPs, const std::string &IR,
         const std::string &ModuleID, ScillaCacheManager *SCM = nullptr) {
    ScillaJIT *Ptr = ScillaJIT::create(SPs, IR, ModuleID, SCM).release();
    return std::unique_ptr<ScillaJIT_Safe>(static_cast<ScillaJIT_Safe *>(Ptr));
  }
  // Execute a message.
  Json::Value execMsg(const std::string &Balance, uint64_t GasLimit,
                      const Json::Value &InitJ, const Json::Value &Msg) {
    return ScillaJIT::execMsg(Balance, GasLimit, InitJ, Msg);
  }
  // Initialize the contract state to field initialization values in the source.
  // This is to be called only during deployment of the contract. Never again.
  Json::Value deploy(const Json::Value &InitJ, uint64_t GasLimit) {
    return ScillaJIT::deploy(InitJ, GasLimit);
  }
  // What's the gas remaining from previous execution (deploy / execMsg).
  // Useful if execution was interrupted due to an exception.
  // Use with care if you don't want to end up with a stale value.
  uint64_t getGasRem() const { return ScillaJIT::getGasRem(); }

  // Parse a string into a Scilla type. Raises error on failure.
  const ScillaTypes::Typ *parseTypeString(const std::string &) const;

  // Get the type descriptors table and its length.
  std::pair<const ScillaTypes::Typ **, int> getTypeDescrTable() const {
    return ScillaJIT::getTypeDescrTable();
  }
};

} // namespace ScillaVM
