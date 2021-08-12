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

#include <boost/config/warning_disable.hpp>
#include <boost/lexical_cast.hpp>
#include <boost/process.hpp>
#include <boost/spirit/include/phoenix.hpp>
#include <boost/spirit/include/qi.hpp>
#include <fstream>
#include <json/reader.h>
#include <json/value.h>
#include <json/writer.h>
#include <memory>

#include "ScillaRTL/Errors.h"
#include "ScillaRTL/Utils.h"
#include "ScillaTypes.h"

namespace {

// TODO: Use JsonUtils.h from the blockchain code. That is thread-safe.
Json::CharReaderBuilder ReadBuilder;
std::unique_ptr<Json::CharReader> JsonReader(ReadBuilder.newCharReader());
Json::StreamWriterBuilder WriteBuilder;
std::unique_ptr<Json::StreamWriter> JsonWriter(WriteBuilder.newStreamWriter());

} // namespace

namespace ScillaRTL {

namespace bf = boost::filesystem;
namespace bp = boost::process;

std::string readFile(const std::string &Filename) {
  std::ifstream IfsFile(Filename);
  std::string FileStr((std::istreambuf_iterator<char>(IfsFile)),
                      (std::istreambuf_iterator<char>()));
  return FileStr;
}

Json::Value parseJSONString(const std::string &JS) {
  Json::Value Ret;
  std::string Error;
  try {
    JsonReader->parse(JS.c_str(), JS.c_str() + JS.length(), &Ret, &Error);
  } catch (const std::exception &e) {
    CREATE_ERROR(std::string(e.what()) + ": " + Error);
  }

  return Ret;
}

Json::Value parseJSONFile(const std::string &Filename) {
  return parseJSONString(readFile(Filename));
}

std::string serializeJSON(const Json::Value &J) {
  std::ostringstream Oss;
  JsonWriter->write(J, &Oss);
  return Oss.str();
}

std::string prettyPrintJSON(const Json::Value &J) {
  std::ostringstream Oss;
  auto SettingsSaved = WriteBuilder.settings_;
  WriteBuilder.settings_["indentation"] = "  ";
  std::unique_ptr<Json::StreamWriter> Writer(WriteBuilder.newStreamWriter());
  Writer->write(J, &Oss);
  WriteBuilder.settings_ = SettingsSaved;
  return Oss.str();
}

// Find "vname" in the input JSON array and return its "value".
// Typical Scilla state JSON format is expected as input.
std::optional<Json::Value> vNameValue(const Json::Value &Vs,
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

uint64_t parseBlockchainJSON(const Json::Value &BC) {
  auto CurBlockS = vNameValue(BC, "BLOCKNUMBER");
  if (!CurBlockS || !CurBlockS->isString()) {
    CREATE_ERROR("BLOCKNUMBER not found or invalid");
  }
  try {
    return boost::lexical_cast<uint64_t>(CurBlockS->asString());
  } catch (boost::bad_lexical_cast &) {
    CREATE_ERROR("Invalid BLOCKNUMBER");
  }
}

void compileLLVMToSO(const std::string &InputFile,
                     const std::string &OutputFile) {
  try {
    auto ExecP = bp::search_path("clang-12");
#if defined(__APPLE__)
    if (bp::system(ExecP, "-Wno-override-module", "-fPIC", "-shared",
                   "-undefined", "dynamic_lookup", InputFile, "-o",
                   OutputFile)) {
      CREATE_ERROR("Compilation of " + InputFile + " failed.");
    }
#else
    if (bp::system(ExecP, "-Wno-override-module", "-fPIC", "-shared", InputFile,
                   "-o", OutputFile)) {
      CREATE_ERROR("Compilation of " + InputFile + " failed.");
    }
#endif
  } catch (std::system_error &E) {
    CREATE_ERROR(E.what());
  }
}

CompileLLVMToTempSO::CompileLLVMToTempSO(const std::string &Filename)
    : SOFile(bf::temp_directory_path() / bf::unique_path()),
      InputFile(Filename) {}

std::string CompileLLVMToTempSO::compile() const {
  compileLLVMToSO(InputFile, SOFile.native());
  return SOFile.native();
}

CompileLLVMToTempSO::~CompileLLVMToTempSO() {
  boost::filesystem::remove(SOFile);
}

std::optional<int> mapDepthOfTypeString(const std::string &TypeStr) {

  typedef std::pair<std::string, int> FieldTypePair;

  namespace qi = boost::spirit::qi;
  namespace ascii = boost::spirit::ascii;
  namespace px = boost::phoenix;

  qi::rule<std::string::const_iterator, std::string(), ascii::space_type>
      Ident_R, TByStr_R, QualifiedTypeName_R;
  qi::rule<std::string::const_iterator, std::string(), ascii::space_type>
      HexQual, FilenameQual, NoQual;
  qi::rule<std::string::const_iterator, FieldTypePair, ascii::space_type>
      FieldTypePair_R;
  qi::rule<std::string::const_iterator, int, ascii::space_type> T_R;
  qi::rule<std::string::const_iterator, int, ascii::space_type> TArg_R;
  qi::rule<std::string::const_iterator, int, ascii::space_type> Start_R;

  // An identifier is "[a-z][a-zA-Z0-9_]*"
  Ident_R =
      qi::lexeme[qi::char_('a', 'z') >> *((ascii::alnum) | qi::char_('_'))];
  // ByStr and ByStrX are primitive types
  TByStr_R = qi::lexeme[qi::string("ByStr") >> *(ascii::digit)];

  // Qualified type names. The keyword "Map" is not accepted.
  // https://stackoverflow.com/questions/38039237/parsing-identifiers-except-keywords
  HexQual =
      qi::lexeme[qi::string("0x") >> *(ascii::xdigit) >> qi::char_('.') >>
                 ((qi::char_('A', 'Z') >> *((ascii::alnum) | qi::char_('_'))) -
                  (qi::string("Map") >> !((ascii::alnum) | qi::char_('_'))))];
  FilenameQual =
      qi::lexeme[*((ascii::alnum) | qi::char_('-') | qi::char_('_')) >>
                 qi::char_('.') >>
                 ((qi::char_('A', 'Z') >> *((ascii::alnum) | qi::char_('_'))) -
                  (qi::string("Map") >> !((ascii::alnum) | qi::char_('_'))))];
  NoQual =
      qi::lexeme[(qi::char_('A', 'Z') >> *((ascii::alnum) | qi::char_('_'))) -
                 (qi::string("Map") >> !((ascii::alnum) | qi::char_('_')))];

  auto IdFun = [](const std::string &I) { return I; };
  QualifiedTypeName_R = (HexQual)[qi::_val = px::bind(IdFun, qi::_1)] |
                        (FilenameQual)[qi::_val = px::bind(IdFun, qi::_1)] |
                        (NoQual)[qi::_val = px::bind(IdFun, qi::_1)];
  ;

  // clang-format off
  T_R =
    // Rule-0: Parse non-contract addresses
    (qi::lit("ByStr20") >> qi::lit("with") >> qi::lit("end"))
      [qi::_val = px::bind
        (
          [] () {
              return 0;
          }
        )
      ]
    // Rule-1: Parse contract addresses into an optional non-empty list of
    //         comma-separated FieldTypePairs. That's just another way of
    //         specifying a comma-separated list of 0 or more FieldTypePairs.
    | (qi::lit("ByStr20") >> qi::lit("with") >> qi::lit("contract") >>
        -((qi::lit("field") >> FieldTypePair_R) % ',') >> qi::lit("end"))
      [qi::_val = px::bind
        (
          [](const boost::optional<std::vector<FieldTypePair> > &) {
            return 0;
          },
          qi::_1
        )
      ]
    // Rule-2 Get all the PrimTyps.
    | (qi::string("Int32")   | qi::string("Int64") 
    | qi::string("Int128")  | qi::string("Int256")
    | qi::string("Uint32")  | qi::string("Uint64")
    | qi::string("Uint128") | qi::string("Uint256")
    | qi::string("String")  | qi::string("BNum")
    | TByStr_R)
       [qi::_val = px::bind
         (
            [](const std::string &) {
                return 0;
            },
            qi::_1
          )
        ]
    |  (qi::lit("Map") >> T_R >> T_R) // Rule-3 for Map
        [qi::_val = px::bind
          (
            [](int, int VDepth) {
              return VDepth + 1;
            },
            qi::_1, qi::_2
          )
        ]
    | (QualifiedTypeName_R >> *TArg_R) // Rule-4 for ADTs
        [qi::_val = px::bind
          (
            [](const std::string &, const std::vector<int> &) {
              return 0;
            },
            qi::_1, qi::_2
          )
        ] 
    | ('(' >> T_R >> ')') // Rule-5 for "( typ )"
        [qi::_val = px::bind
          (
            [](int Depth) {
              return Depth; 
            },
            qi::_1
          )
        ]
    ;

  TArg_R =
      ('(' >> T_R >> ')')
        [qi::_val = px::bind
          (
            [](int Depth) {
              return Depth; 
            },
            qi::_1
          )
        ]
    | QualifiedTypeName_R
      [qi::_val = px::bind
        (
          [](const std::string &) {
            return 0;
          },
          qi::_1
        )
      ]
    ;

  FieldTypePair_R =
    (Ident_R >> ':' >> T_R)
      [qi::_val = px::bind
        (
          [](const std::string &FName, int FDepth) {
            return FieldTypePair(FName, FDepth);
          }, qi::_1, qi::_2
        )
      ]
    ;

  // clang-format on

  Start_R %= T_R >> qi::eoi;

  int Depth = 0;
  if (!phrase_parse(TypeStr.begin(), TypeStr.end(), Start_R, ascii::space,
                    Depth))
    return {};

  return Depth;
}

bool MemStateServer::fetchStateValue(const ScillaParams::StateQuery &Query,
                                     std::any &RetVal, bool &Found) {
  std::string Type;
  return fetchRemoteStateValue(ThisAddress, Query, RetVal, Found, Type);
}

bool MemStateServer::fetchRemoteStateValue(
    const std::string &Addr, const ScillaParams::StateQuery &Query,
    std::any &RetVal, bool &Found, std::string &Type) {

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

  std::any &Field = FieldItr->second;

  Type = FieldTypes[Addr][FieldName];
  ASSERT_MSG(!Type.empty(),
             "Type not found for " + FieldName + " but value exists.");

  if (Query.MapDepth > 0) {
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

  Found = true;
  if (!Query.IgnoreVal) {
    RetVal = std::any_cast<std::string>(Field);
  }

  return true;
}

bool MemStateServer::updateStateValue(const ScillaParams::StateQuery &Query,
                                      const std::any &Value) {
  return updateRemoteStateValue(ThisAddress, Query, Value);
}

bool MemStateServer::updateRemoteStateValue(
    const std::string &Addr, const ScillaParams::StateQuery &Query,
    const std::any &Value) {

  using MapValueT = ScillaParams::MapValueT;
  std::string FieldName = Query.Name;
  std::any &Field = BCState[Addr][FieldName];

  if (Query.MapDepth > 0) {
    // Map field
    std::any *Val = &Field;
    for (size_t I = 0; I < Query.Indices.size(); I++) {
      if (!Val->has_value()) {
        if (Query.IgnoreVal) {
          // Key doesn't exist. Don't create one.
          return true;
        }
        *Val = MapValueT();
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
    ASSERT(!Query.IgnoreVal);
    Field = std::any_cast<std::string>(Value);
  }

  return true;
}

void MemStateServer::clear() {
  BCState.clear();
  FieldTypes.clear();
  ThisAddress.clear();
  ;
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

std::string MemStateServer::initState(const Json::Value &InitJ,
                                      const Json::Value &StateJ) {

  auto TAOpt = vNameValue(InitJ, "_this_address");
  if (!TAOpt || !TAOpt->isString()) {
    CREATE_ERROR("Init JSON doesn't contain proper _this_address entry");
  }
  ThisAddress = TAOpt->asString();

  std::function<std::string(const std::string &, const Json::Value &)>
      recurser = [&recurser, this](const std::string &Addr,
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

          auto DepthOpt = mapDepthOfTypeString(VTypJ.asString());
          if (!DepthOpt) {
            CREATE_ERROR("Error computing map depth of type " +
                         VTypJ.asString());
          }
          auto Depth = *DepthOpt;

          std::any V;
          std::function<void(int, std::any &, const Json::Value &)> jsonToSV =
              [&jsonToSV, &VName](int Depth, std::any &SV,
                                  const Json::Value &JSONV) -> void {
            if (Depth == 0) {
              SV = serializeJSON(JSONV);
              return;
            }
            if (!JSONV.isArray()) {
              CREATE_ERROR("At depth " + std::to_string(Depth) + " expected " +
                           VName + " to be JSON array");
            }

            // If SV doesn't hold a value yet, create one.
            if (!SV.has_value())
              SV = ScillaParams::MapValueT();

            ASSERT(std::has_type<ScillaParams::MapValueT>(SV));
            auto &MapV = std::any_cast<ScillaParams::MapValueT &>(SV);
            for (auto &Entry : JSONV) {
              if (!Entry.isObject() || !Entry.isMember("key") ||
                  !Entry.isMember("val")) {
                CREATE_ERROR(VName + " has malformed map structure");
              }
              auto &SubV = MapV[serializeJSON(Entry["key"])];
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

} // namespace ScillaRTL

Json::Value MemStateServer::dumpToJSON() {
  Json::Value RetVal(Json::arrayValue);
  for (auto &Field : BCState[ThisAddress]) {
    auto FieldName = Field.first;

    // Balance here may not be updated. It must be taken from Scilla output.
    if (FieldName == "_balance")
      continue;

    std::function<Json::Value(std::any &)> svToJSON =
        [&svToJSON](std::any &SV) -> Json::Value {
      if (std::has_type<std::string>(SV)) {
        return parseJSONString(std::any_cast<std::string>(SV));
      } else {
        Json::Value MapVal = Json::arrayValue;
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

} // namespace ScillaRTL
