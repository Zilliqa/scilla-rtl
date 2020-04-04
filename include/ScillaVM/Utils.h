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

#include <any>
#include <string>
#include <unordered_map>

#include <jsoncpp/json/value.h>

#include "JITD.h"

namespace std {
// Does an std::any hold a value of type T.
template <typename T> bool has_type(const std::any &a);
template <typename T> bool has_type(const std::any *a);

} // namespace std

namespace ScillaVM {
Json::Value parseJSONString(const std::string &JS);
Json::Value parseJSONFile(const std::string &Filename);

// A state server implementation with no persistence.
class MemStateServer {
  std::unordered_map<std::string, std::any> ContractState;
  // We store the type (when initialized from JSON) for later printing to JSON.
  std::unordered_map<std::string, std::string> FieldTypes;

public:
  // Fetch (part of) state variable. Returns false on error.
  bool fetchStateValue(const ScillaParams::StateQuery &Query, std::any &RetVal,
                       bool &Found);
  // Update (part of) the state. Returns false on error.
  bool updateStateValue(const ScillaParams::StateQuery &Query,
                        const std::any &Value);

  // Re-initialize the state from the provided state JSON.
  // Requires the contract info JSON for knowing field types.
  void initFromJSON(const Json::Value &SJ, const Json::Value &CIJ);
  // Print the full state into a JSON.
  Json::Value dumpToJSON();
};

} // namespace ScillaVM