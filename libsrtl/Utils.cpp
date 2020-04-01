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

#include <fstream>
#include <jsoncpp/json/reader.h>
#include <jsoncpp/json/value.h>
#include <memory>

#include "ScillaVM/Errors.h"
#include "ScillaVM/Utils.h"

namespace std {

template <typename T> bool has_type(const std::any &a) {
  return a.type() == typeid(T);
}
template <typename T> bool has_type(const std::any *a) {
  return a->type() == typeid(T);
}

} // namespace std

namespace ScillaVM {

Json::Value parseJSONString(const std::string &JS) {
  Json::Value Ret;
  Json::CharReaderBuilder ReadBuilder;
  std::unique_ptr<Json::CharReader> Reader(ReadBuilder.newCharReader());
  std::string Error;
  try {
    Reader->parse(JS.c_str(), JS.c_str() + JS.length(), &Ret, &Error);
  } catch (const std::exception &e) {
    CREATE_ERROR(std::string(e.what()) + ": " + Error);
  }

  return Ret;
}

Json::Value parseJSONFile(const std::string &Filename) {
  std::ifstream IfsFile(Filename);
  std::string FileStr((std::istreambuf_iterator<char>(IfsFile)),
                      (std::istreambuf_iterator<char>()));
  return parseJSONString(FileStr);
}

bool MemStateServer::fetchStateValue(const ScillaParams::StateQuery &Query,
                                     std::any &RetVal, bool &Found) {

  using MapValueT = ScillaParams::MapValueT;
  std::string FieldName = Query.Name;

  auto FieldItr = ContractState.find(FieldName);
  if (FieldItr == ContractState.end())
    return false;

  std::any &Field = FieldItr->second;

  if (Query.MapDepth > 0) {
    Found = false;
    std::any *Val = &Field;
    for (size_t I = 0; I < Query.Indices.size(); I++) {
      if (!Val->has_value()) {
        return true;
      }
      MapValueT &Map = (std::any_cast<MapValueT &>(*Val));
      auto IVal = Map.find(Query.Indices[I]);
      if (IVal == Map.end()) {
        // not found
        return true;
      }
      Val = &(IVal->second);
    }
    Found = true;
    if (Query.Indices.size() == (size_t)Query.MapDepth) {
      // complete access
      if (Query.IgnoreVal) {
        return true;
      }
      RetVal = std::any_cast<std::string>(*Val);
      return true;
    }
    // partial access
    MapValueT &Mdb = std::any_cast<MapValueT &>(*Val);
    RetVal = Mdb;
    return true;
  }

  // Non map query cannot ignore value.
  ASSERT(!Query.IgnoreVal);
  Found = true;
  RetVal = std::any_cast<std::string>(Field);

  return true;
}

bool MemStateServer::updateStateValue(const ScillaParams::StateQuery &Query,
                                      const std::any &Value) {

  using MapValueT = ScillaParams::MapValueT;
  std::string FieldName = Query.Name;
  std::any &Field = ContractState[FieldName];

  if (Query.MapDepth > 0) {
    // Map field
    std::any *Val = &Field;
    for (size_t I = 0; I < Query.Indices.size(); I++) {
      if (!Val->has_value()) {
        if (Query.IgnoreVal) {
          // Key doesn't exist. Don't create one.
          return true;
        }
        *Val = std::make_any<MapValueT>();
      }
      MapValueT &Map = (std::any_cast<MapValueT &>(*Val));
      auto IVal = Map.find(Query.Indices[I]);
      if (Query.IgnoreVal) {
        if (IVal == Map.end()) {
          // Key doesn't exist. Don't create one.
          return true;
        }
        if (I == Query.Indices.size() - 1) {
          // we're at the last index provided, and it's a delete value.
          Map.erase(IVal);
          return true;
        }
      }
      Val = &Map[Query.Indices[I]];
    }
    if (Query.Indices.size() == (size_t)Query.MapDepth) {
      // complete access
      *Val = std::any_cast<std::string>(Value);
    } else {
      // partial access
      *Val = std::any_cast<MapValueT>(Value);
    }
  } else {
    // Not a map value.
    // ignoreval is only for map entries.
    assert(!Query.IgnoreVal);
    Field = std::any_cast<std::string>(Value);
  }

  return true;
}

void MemStateServer::initFromJSON(const Json::Value &SJ,
                                  const Json::Value &CIJ) {
  // Let's note down the map depth for each field.
  if (!CIJ.isMember("contract_info") ||
      !CIJ["contract_info"].isMember("fields") ||
      !CIJ["contract_info"]["fields"].isArray()) {
    CREATE_ERROR("Incorrect format of contract info JSON");
  }

  std::unordered_map<std::string, int> FieldDepths;
  for (auto &Field : CIJ["contract_info"]["fields"]) {
    if (!Field.isObject() || !Field.isMember("vname") ||
        !Field.isMember("type") || !Field.isMember("depth")) {
      CREATE_ERROR("Incorrect field format in contract info");
    } else {
      auto FieldName = Field["vname"].asString();
      if (FieldName == "_balance")
        continue;
      FieldDepths[FieldName] = Field["depth"].asInt();
    }
  }

  if (!SJ.isArray()) {
    CREATE_ERROR("Expected state JSON to be array");
  }

  for (auto &VJ : SJ) {
    Json::Value VNameJ, VTypJ, VValJ;
    if (!VJ.isObject() ||
        (VNameJ = VJ.get("vname", Json::nullValue)) == Json::nullValue ||
        (VTypJ = VJ.get("type", Json::nullValue)) == Json::nullValue ||
        (VValJ = VJ.get("value", Json::nullValue)) == Json::nullValue ||
        !VNameJ.isString() || !VTypJ.isString()) {
      CREATE_ERROR("Invalid state JSON variable");
    }
    std::string VName = VNameJ.asString();

    if (VName == "_balance")
      continue;

    auto DepthItr = FieldDepths.find(VName);
    if (DepthItr == FieldDepths.end()) {
      CREATE_ERROR("Depth of " + VName + " not found in contract info");
    }

    int Depth = DepthItr->second;
    std::any V;
    std::function<void(int, std::any &, const Json::Value &)> jsonToSV =
        [&jsonToSV, &VName](int Depth, std::any &SV,
                            const Json::Value &JSONV) -> void {
      if (Depth == 0) {
        SV = JSONV.toStyledString();
        return;
      }
      if (!JSONV.isArray()) {
        CREATE_ERROR("At depth " + std::to_string(Depth) + " expected " +
                     VName + " to be JSON array");
      }

      // If SV doesn't hold a value yet, create one.
      if (!SV.has_value())
        SV = std::make_any<ScillaParams::MapValueT>();

      ASSERT(std::has_type<ScillaParams::MapValueT>(SV));
      auto &MapV = std::any_cast<ScillaParams::MapValueT &>(SV);
      for (auto &Entry : JSONV) {
        if (!Entry.isObject() || !Entry.isMember("key") ||
            !Entry.isMember("val")) {
          CREATE_ERROR(VName + " has malformed map structure");
        }
        auto &SubV = MapV[Entry["key"].asString()];
        jsonToSV(Depth - 1, SubV, Entry["val"]);
      }
    };
    jsonToSV(Depth, V, VValJ);

    ScillaParams::StateQuery Query = {VName, Depth, std::vector<std::string>(),
                                      false};
    updateStateValue(Query, V);
    FieldTypes[VName] = VTypJ.asString();
  }
}

Json::Value MemStateServer::dumpToJSON() {
  Json::Value RetVal(Json::arrayValue);
  for (auto &Field : ContractState) {
    auto FieldName = Field.first;

    std::function<Json::Value(std::any &)> svToJSON =
        [&svToJSON](std::any &SV) -> Json::Value {
      if (std::has_type<std::string>(SV)) {
        return parseJSONString(std::any_cast<std::string>(SV));
      } else {
        Json::Value MapVal(Json::arrayValue);
        auto &SVMap = std::any_cast<ScillaParams::MapValueT &>(SV);
        for (auto &KV : SVMap) {
          Json::Value KVJ(Json::objectValue);
          KVJ["key"] = parseJSONString(KV.first);
          KVJ["val"] = svToJSON(KV.second);
          MapVal.append(KVJ);
        }
        return MapVal;
      }
    };
    auto Value = svToJSON(Field.second);
    auto TypeItr = FieldTypes.find(FieldName);
    auto Type = TypeItr == FieldTypes.end() ? "<unknown>" : TypeItr->second;
    Json::Value J(Json::objectValue);
    J["vname"] = FieldName;
    J["type"] = Type;
    J["value"] = Value;
    RetVal.append(J);
  }

  return RetVal;
}

} // namespace ScillaVM
