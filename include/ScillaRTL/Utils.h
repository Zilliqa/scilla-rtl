/*
 * Copyright (C) 2020 Zilliqa
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

#include <string>
#include <unordered_map>

#include <any>
#include <boost/filesystem.hpp>
#include <jsoncpp/json/value.h>
#include <optional>

#include "ScillaExec.h"

namespace std {
// Does an boost::any object hold a value of type T.
template <typename T> bool has_type(const boost::any &a) {
  return a.type() == typeid(T);
}
template <typename T> bool has_type(const boost::any *a) {
  return a->type() == typeid(T);
}
} // namespace std

namespace ScillaRTL {

std::string readFile(const std::string &Filename);
Json::Value parseJSONString(const std::string &JS);
Json::Value parseJSONFile(const std::string &Filename);
// Parse a Scilla type and return its map depth if successfully parsed.
std::optional<int> mapDepthOfTypeString(const std::string &TypeStr);
// Serialize a JSON for storage.
std::string serializeJSON(const Json::Value &J);
// Find "vname" in the input JSON array and return its "value".
// Typical Scilla state JSON format is expected as input.
std::optional<Json::Value> vNameValue(const Json::Value &Vs,
                                      const std::string &VName);
// Parse blockchain.json and return the current block number.
// Creates error if unable to parse successfully.
uint64_t parseBlockchainJSON(const Json::Value &BC);

// Compile Scilla LLVM-IR / LLVM bitcode file to a shared object.
// Raises an error if compilation fails.
void compileLLVMToSO(const std::string &InputFile,
                     const std::string &OutputFile);

// Compile an LLVM IR/bitcode file and return path to binary shared object.
// The shared object's lifetime is that of this object.
class CompileLLVMToTempSO {
  const boost::filesystem::path SOFile;
  const std::string InputFile;

public:
  CompileLLVMToTempSO(const std::string &Filename);
  // Compile the file to a shared object and return the .so filename.
  // Raises an error if compilation fails.
  std::string compile() const;
  ~CompileLLVMToTempSO();
};

namespace ScillaTypes {
class Typ;
} // namespace ScillaTypes

// A state server implementation with no persistence.
class MemStateServer {
  std::unordered_map<std::string, std::unordered_map<std::string, boost::any>>
      BCState;
  // We store the type (when initialized from JSON) for later printing to JSON.
  std::unordered_map<std::string, std::unordered_map<std::string, std::string>>
      FieldTypes;
  std::string ThisAddress;

  // Update (part of) the state. Returns false on error.
  bool updateRemoteStateValue(const std::string &Addr,
                              const ScillaParams::StateQuery &Query,
                              const boost::any &Value);

public:
  // Fetch (part of) state variable for ThisAddress. Returns false on error.
  bool fetchStateValue(const ScillaParams::StateQuery &Query, boost::any &RetVal,
                       bool &Found);
  // Fetch (part of) state variable. Returns false on error.
  bool fetchRemoteStateValue(const std::string &Addr,
                             const ScillaParams::StateQuery &Query,
                             boost::any &RetVal, bool &Found, std::string &Type);
  // Update (part of) the state for ThisAddress. Returns false on error.
  bool updateStateValue(const ScillaParams::StateQuery &Query,
                        const boost::any &Value);

  // (Re)initialize the state from the provided state JSON.
  // Requires init JSON for noting down _this_address.
  // Returns "_balance" as a string.
  std::string initState(const Json::Value &InitJ, const Json::Value &StateJ);

  // Initialize the server with only field types and no values.
  // The contract-info JSON is parsed to get the field types.
  // Requires init JSON for noting down _this_address.
  void initFieldTypes(const Json::Value &InitJ, const Json::Value &CIJ);

  // Print the full state into a JSON.
  Json::Value dumpToJSON();
};

} // namespace ScillaRTL
