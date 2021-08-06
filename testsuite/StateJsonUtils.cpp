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

#include <algorithm>
#include <boost/test/unit_test.hpp>

#if defined (__APPLE__)
#include <json/value.h>
#else
#include <jsoncpp/json/value.h>
#endif

#include <ScillaRTL/Utils.h>

namespace ScillaTestsuite {

using namespace ScillaRTL;

void checkEqStateVariables(const Json::Value &Expected,
                           const Json::Value &Got) {

  BOOST_REQUIRE_MESSAGE(Expected.isArray() && Got.isArray() &&
                            Expected.size() == Got.size(),
                        "State JSON size mismatch");

  for (Json::Value::ArrayIndex I = 0; I < Expected.size(); I++) {
    const auto &ESV = Expected[I];
    const auto &OSV = Got[I];
    BOOST_CHECK_MESSAGE(ESV == OSV, "Comparison failed:\nExpected:\n" +
                                        prettyPrintJSON(ESV) + "\nGot:\n" +
                                        prettyPrintJSON(OSV));
  }
}

void canonicalizeStateValue(Json::Value &Value) {

  if (Value.isObject()) {
    // This is an ADT.
    auto &Args = Value["arguments"];
    for (auto &Arg : Args) {
      canonicalizeStateValue(Arg);
    }
  } else if (Value.isArray() && Value.size() > 0) {
    // This could be a Map or a List.
    auto &FirstEl = *Value.begin();
    if (FirstEl.isObject() && FirstEl.isMember("key")) {
      // This is a map. Sort the keys.
      std::vector<Json::Value> ValueArr(Value.begin(), Value.end());
      auto KeyCmp = [](const Json::Value &A, const Json::Value &B) -> bool {
        std::less<std::string> StrCmp;
        return StrCmp(A["key"].asString(), B["key"].asString());
      };
      std::sort(ValueArr.begin(), ValueArr.end(), KeyCmp);
      Value = Json::arrayValue;
      for (auto &E : ValueArr) {
        canonicalizeStateValue(E["val"]);
        Value.append(E);
      }
    } else {
      for (auto &E : Value) {
        canonicalizeStateValue(E);
      }
    }
  }
}

Json::Value canonicalizeStateVariables(const Json::Value &J) {

  auto StateVarCmp = [](const Json::Value &A, const Json::Value &B) -> bool {
    std::less<std::string> StrCmp;
    return StrCmp(A["vname"].asString(), B["vname"].asString());
  };

  std::vector<Json::Value> AArr(J.begin(), J.end());
  std::sort(AArr.begin(), AArr.end(), StateVarCmp);

  Json::Value Ret = Json::arrayValue;
  for (auto &E : AArr) {
    canonicalizeStateValue(E["value"]);
    Ret.append(E);
  }

  return Ret;
}

} // namespace ScillaTestsuite