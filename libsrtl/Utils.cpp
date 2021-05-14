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

#include <boost/optional.hpp>
#include <fstream>
#include <jsoncpp/json/reader.h>
#include <jsoncpp/json/value.h>
#include <memory>

#include "ScillaTypes.h"
#include "ScillaVM/Errors.h"
#include "ScillaVM/Utils.h"

namespace {

// Find "vname" in the input JSON array and return its "value".
// Typical Scilla state JSON format is expected as input.
boost::optional<Json::Value> vNameValue(const Json::Value &Vs,
                                        const std::string &VName) {
  if (!Vs.isArray())
    return {};

  for (const auto &P : Vs) {
    Json::Value VNameJ, TypeJ, ValueJ;
    if (!P.isObject() ||
        (VNameJ = P.get("vname", Json::nullValue)) == Json::nullValue ||
        (TypeJ = P.get("type", Json::nullValue)) == Json::nullValue ||
        (ValueJ = P.get("value", Json::nullValue)) == Json::nullValue ||
        !VNameJ.isString() || !TypeJ.isString()) {
      return {};
    }
    if (VNameJ == VName)
      return ValueJ;
  }
  return {};
}

} // namespace

namespace ScillaVM {

std::string readFile(const std::string &Filename) {
  std::ifstream IfsFile(Filename);
  std::string FileStr((std::istreambuf_iterator<char>(IfsFile)),
                      (std::istreambuf_iterator<char>()));
  return FileStr;
}

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

  return parseJSONString(readFile(Filename));
}

bool MemStateServer::fetchStateValue(const ScillaParams::StateQuery &Query,
                                     boost::any &RetVal, bool &Found) {
  std::string Type;
  return fetchRemoteStateValue(ThisAddress, Query, RetVal, Found, Type);
}

bool MemStateServer::fetchRemoteStateValue(
    const std::string &Addr, const ScillaParams::StateQuery &Query,
    boost::any &RetVal, bool &Found, std::string &Type) {

  Found = false;

  using MapValueT = ScillaParams::MapValueT;

  auto ContrItr = BCState.find(Addr);
  if (ContrItr == BCState.end())
    return true;

  std::string FieldName = Query.Name;
  auto &ContractState = ContrItr->second;
  auto FieldItr = ContractState.find(FieldName);
  if (FieldItr == ContractState.end())
    return true;

  boost::any &Field = FieldItr->second;

  Type = FieldTypes[Addr][FieldName];
  ASSERT_MSG(!Type.empty(),
             "Type not found for " + FieldName + " but value exists.");

  if (Query.MapDepth > 0) {
    boost::any *Val = &Field;
    for (size_t I = 0; I < Query.Indices.size(); I++) {
      if (Val->empty()) {
        return true;
      }
      MapValueT &Map = (boost::any_cast<MapValueT &>(*Val));
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
      RetVal = boost::any_cast<std::string>(*Val);
      return true;
    }
    // partial access
    MapValueT &Mdb = boost::any_cast<MapValueT &>(*Val);
    RetVal = Mdb;
    return true;
  }

  Found = true;
  if (!Query.IgnoreVal) {
    RetVal = boost::any_cast<std::string>(Field);
  }

  return true;
}

bool MemStateServer::updateStateValue(const ScillaParams::StateQuery &Query,
                                      const boost::any &Value) {
  return updateRemoteStateValue(ThisAddress, Query, Value);
}

bool MemStateServer::updateRemoteStateValue(
    const std::string &Addr, const ScillaParams::StateQuery &Query,
    const boost::any &Value) {

  using MapValueT = ScillaParams::MapValueT;
  std::string FieldName = Query.Name;
  boost::any &Field = BCState[Addr][FieldName];

  if (Query.MapDepth > 0) {
    // Map field
    boost::any *Val = &Field;
    for (size_t I = 0; I < Query.Indices.size(); I++) {
      if (Val->empty()) {
        if (Query.IgnoreVal) {
          // Key doesn't exist. Don't create one.
          return true;
        }
        *Val = MapValueT();
      }
      MapValueT &Map = (boost::any_cast<MapValueT &>(*Val));
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
      *Val = boost::any_cast<std::string>(Value);
    } else {
      // partial access
      *Val = boost::any_cast<MapValueT>(Value);
    }
  } else {
    // Not a map value.
    // ignoreval is only for map entries.
    ASSERT(!Query.IgnoreVal);
    Field = boost::any_cast<std::string>(Value);
  }

  return true;
}

// Initialize the server with only field types and no values.
// The contract-info JSON is parsed to get the field types.
void MemStateServer::initFieldTypes(const Json::Value &InitJ,
                                    const Json::Value &CIJ) {

  auto TAOpt = vNameValue(InitJ, "_this_address");
  if (!TAOpt || !TAOpt->isString()) {
    CREATE_ERROR("Init JSON doesn't contain proper _this_address entry");
  }
  ThisAddress = TAOpt->asString();

  if (!CIJ.isMember("contract_info") ||
      !CIJ["contract_info"].isMember("fields") ||
      !CIJ["contract_info"]["fields"].isArray()) {
    CREATE_ERROR("Incorrect format of contract info JSON");
  }

  auto &Fields = CIJ["contract_info"]["fields"];
  for (auto &Field : Fields) {
    if (!Field.isObject() || !Field.isMember("vname") ||
        !Field.isMember("type") || !Field.isMember("depth")) {
      CREATE_ERROR("Incorrect field format in contract info");
    } else {
      auto FieldName = Field["vname"].asString();
      if (FieldName == "_balance")
        continue;
      auto FieldType = Field["type"].asString();
      FieldTypes[ThisAddress][FieldName] = FieldType;
    }
  }
}

std::string MemStateServer::initState(
    const Json::Value &InitJ, const Json::Value &StateJ,
    const std::pair<const ScillaTypes::Typ **, int> &TyDescrs) {

  ScillaTypes::TypParserPartialCache TPPC;

  auto TAOpt = vNameValue(InitJ, "_this_address");
  if (!TAOpt || !TAOpt->isString()) {
    CREATE_ERROR("Init JSON doesn't contain proper _this_address entry");
  }
  ThisAddress = TAOpt->asString();

  std::function<std::string(const std::string &, const Json::Value &)>
      recurser = [&recurser, this, &TPPC, TyDescrs](const std::string &Addr,
                                                    const Json::Value &StateJ) {
        std::string Balance = "0";
        if (!StateJ.isArray()) {
          CREATE_ERROR("Expected state JSON to be array");
        }
        for (auto &VJ : StateJ) {
          Json::Value VNameJ, VTypJ, VValJ;
          if (!VJ.isObject() ||
              (VNameJ = VJ.get("vname", Json::nullValue)) == Json::nullValue ||
              (VTypJ = VJ.get("type", Json::nullValue)) == Json::nullValue ||
              (VValJ = VJ.get("value", Json::nullValue)) == Json::nullValue ||
              !VNameJ.isString() || !VTypJ.isString()) {
            CREATE_ERROR("Invalid state JSON variable");
          }
          std::string VName = VNameJ.asString();

          if (VName == "_balance") {
            Balance = VValJ.asString();
          }

          if (VName == "_external") {
            if (!VValJ.isArray()) {
              CREATE_ERROR("External fields must be an array");
            }
            for (const auto &ES : VValJ) {
              Json::Value AddrJ, StateJ;
              if (!ES.isObject() ||
                  (AddrJ = ES.get("address", Json::nullValue)) ==
                      Json::nullValue ||
                  (StateJ = ES.get("state", Json::nullValue)) ==
                      Json::nullValue ||
                  !AddrJ.isString() || !StateJ.isArray()) {
                CREATE_ERROR("External contract data malformed.");
              }
              recurser(AddrJ.asString(), StateJ);
            }
            continue;
          }

          auto Type = ScillaTypes::Typ::fromString(
              &TPPC, TyDescrs.first, TyDescrs.second, VTypJ.asString());
          ASSERT_MSG(Type, "Couldn't parse type " + VTypJ.asString());
          auto Depth = ScillaTypes::Typ::getMapDepth(Type);

          boost::any V;
          std::function<void(int, boost::any &, const Json::Value &)> jsonToSV =
              [&jsonToSV, &VName](int Depth, boost::any &SV,
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
            if (SV.empty())
              SV = ScillaParams::MapValueT();

            ASSERT(boost::has_type<ScillaParams::MapValueT>(SV));
            auto &MapV = boost::any_cast<ScillaParams::MapValueT &>(SV);
            for (auto &Entry : JSONV) {
              if (!Entry.isObject() || !Entry.isMember("key") ||
                  !Entry.isMember("val")) {
                CREATE_ERROR(VName + " has malformed map structure");
              }
              auto &SubV = MapV[Entry["key"].toStyledString()];
              jsonToSV(Depth - 1, SubV, Entry["val"]);
            }
          };
          jsonToSV(Depth, V, VValJ);

          ScillaParams::StateQuery Query = {VName, Depth,
                                            std::vector<std::string>(), false};
          updateRemoteStateValue(Addr, Query, V);
          FieldTypes[Addr][VName] = VTypJ.asString();
        }
        return Balance;
      };

  return recurser(ThisAddress, StateJ);

} // namespace ScillaVM

Json::Value MemStateServer::dumpToJSON() {
  Json::Value RetVal(Json::arrayValue);
  for (auto &Field : BCState[ThisAddress]) {
    auto FieldName = Field.first;

    // Balance here may not be updated. It must be taken from Scilla output.
    if (FieldName == "_balance")
      continue;

    std::function<Json::Value(boost::any &)> svToJSON =
        [&svToJSON](boost::any &SV) -> Json::Value {
      if (boost::has_type<std::string>(SV)) {
        return parseJSONString(boost::any_cast<std::string>(SV));
      } else {
        Json::Value MapVal = Json::arrayValue;
        auto &SVMap = boost::any_cast<ScillaParams::MapValueT &>(SV);
        for (auto &KV : SVMap) {
          Json::Value KVJ(Json::objectValue);
          KVJ["key"] = parseJSONString(KV.first);
          KVJ["val"] = svToJSON(KV.second);
          MapVal.append(KVJ);
        }
        return MapVal;
      }
    };
    auto AddrFieldTypes = FieldTypes[ThisAddress];
    auto Value = svToJSON(Field.second);
    auto TypeItr = AddrFieldTypes.find(FieldName);
    auto Type = TypeItr == AddrFieldTypes.end() ? "<unknown>" : TypeItr->second;
    Json::Value J(Json::objectValue);
    J["vname"] = FieldName;
    J["type"] = Type;
    J["value"] = Value;
    RetVal.append(J);
  }

  return RetVal;
}

} // namespace ScillaVM
