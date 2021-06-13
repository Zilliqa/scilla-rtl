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

#include <boost/any.hpp>

#include "ScillaRTL/Errors.h"
#include "ScillaRTL/Utils.h"

#include "SRTL.h"
#include "SafeInt.h"
#include "ScillaExecImpl.h"
#include "ScillaTypes.h"
#include "ScillaValue.h"

namespace {
void unquoteString(std::string &Input) {
  if (Input.empty()) {
    return;
  }
  if (Input.front() == '"') {
    Input.erase(0, 1);
  }
  if (Input.back() == '"') {
    Input.pop_back();
  }
}
} // namespace

namespace ScillaRTL {

boost::optional<const ScillaTypes::Typ *>
remoteFieldType(const ScillaExecImpl *SJ, const std::string &Addr,
                const std::string &FName) {

  ScillaParams::StateQuery Q = {FName, 0, {}, true};
  boost::any IgnoreVal;
  std::string TypeS;
  bool Found;
  if (!SJ->SPs.fetchRemoteStateValue(Addr, Q, IgnoreVal, Found, TypeS)) {
    CREATE_ERROR("Error querying " + Addr + " for " + FName);
  }

  return (Found ? boost::make_optional(SJ->parseTypeString(TypeS))
                : boost::none);
}

bool isContrAddr(const ScillaExecImpl *SJ, const std::string &Addr) {
  return static_cast<bool>(remoteFieldType(SJ, Addr, "_this_address"));
}

bool isUserAddr(const ScillaExecImpl *SJ, const std::string &Addr) {
  ScillaParams::StateQuery SQBalance = {"_balance", 0, {}, false};
  ScillaParams::StateQuery SQNonce = {"_nonce", 0, {}, false};
  boost::any BalanceVal, NonceVal;
  std::string BalanceType, NonceType;
  bool FoundBalance, FoundNonce;
  if (!SJ->SPs.fetchRemoteStateValue(Addr, SQBalance, BalanceVal, FoundBalance,
                                     BalanceType) ||
      !SJ->SPs.fetchRemoteStateValue(Addr, SQNonce, NonceVal, FoundNonce,
                                     NonceType)) {
    CREATE_ERROR("Error fetching balance / nonce for " + Addr);
  }

  if (!FoundBalance || !FoundNonce)
    return false;

  if (BalanceType != "Uint128" || NonceType != "Uint64") {
    CREATE_ERROR("Invalid types " + BalanceType + " / " + NonceType +
                 " for balance / nonce at address " + Addr);
  }

  // The values are quoted numbers.
  auto BalanceS = boost::any_cast<std::string>(BalanceVal);
  auto NonceS = boost::any_cast<std::string>(NonceVal);
  unquoteString(BalanceS);
  unquoteString(NonceS);

  // Parse into numbers
  SafeUint128 Balance(BalanceS);
  SafeUint64 Nonce(NonceS);

  // Balance > 0 || Nonce > 0
  return Balance > SafeUint128::min() || Nonce > SafeUint64::min();
}

bool dynamicTypecheck(const ScillaExecImpl *SJ, const ScillaTypes::Typ *TargetT,
                      const ScillaTypes::Typ *ParsedT, void *Val) {

  if (!ScillaTypes::Typ::valueCompatible(ParsedT, TargetT)) {
    CREATE_ERROR("Value of type " + ScillaTypes::Typ::toString(ParsedT) +
                 " cannot be assigned to a value of type " +
                 ScillaTypes::Typ::toString(TargetT));
  }

  using namespace ScillaTypes;

  std::function<bool(const ScillaTypes::Typ *, const void *)> recurser =
      [SJ, &recurser](const ScillaTypes::Typ *ExpectedT, const void *Val) {
        switch (ExpectedT->m_t) {
        case Typ::Prim_typ:
          return true;
        case Typ::ADT_typ: {
          const ScillaTypes::ADTTyp::Specl *Specl = ExpectedT->m_sub.m_spladt;
          auto VP = reinterpret_cast<const uint8_t *>(Val);
          auto Tag = *VP;
          // Increment VP once to go past the Tag.
          VP++;
          auto ConstrP = Specl->m_constrs[Tag];
          // Check all arguments of this ADT constructor.
          for (int I = 0; I < ConstrP->m_numArgs; I++) {
            auto *ArgT = ConstrP->m_args[I];
            if (ScillaTypes::Typ::isBoxed(ArgT)) {
              if (!recurser(ArgT, *reinterpret_cast<const void *const *>(VP)))
                return false;
            } else {
              if (!recurser(ArgT, reinterpret_cast<const void *>(VP)))
                return false;
            }
            // Increment our data pointer equal to the size we just finised.
            // structs containing ADTs are packed, so that we don't have to
            // worry about padding here.
            VP += ScillaTypes::Typ::sizeOf(ArgT);
          }
          return true;
        }
        case Typ::Map_typ: {
          ScillaTypes::MapTyp *MT = ExpectedT->m_sub.m_mapt;
          auto M = reinterpret_cast<const ScillaParams::MapValueT *>(Val);
          ObjManager OM;
          return std::all_of(
              M->begin(), M->end(), [&OM, SJ, MT, recurser](auto Itr) {
                auto KeyT = MT->m_keyTyp;
                auto ValT = MT->m_valTyp;
                Json::Value KeyJ = parseJSONString(Itr.first);
                auto *KeyV = ScillaValues::fromJSON(OM, KeyT, KeyJ);
                if (!recurser(KeyT, KeyV)) {
                  return false;
                }
                switch (ValT->m_t) {
                case ScillaTypes::Typ::Map_typ: {
                  auto &ValJS =
                      boost::any_cast<const ScillaParams::MapValueT &>(
                          Itr.second);
                  return recurser(ValT, &ValJS);
                }
                default: {
                  auto &ValJS =
                      boost::any_cast<const std::string &>(Itr.second);
                  Json::Value ValJ = parseJSONString(ValJS);
                  auto *ValV = ScillaValues::fromJSON(OM, ValT, ValJ);
                  return recurser(ValT, ValV);
                }
                }
              });
        }
        case Typ::Address_typ: {
          std::string Addr =
              ScillaValues::rawToHex(reinterpret_cast<const uint8_t *>(Val),
                                     ScillaTypes::AddrByStr_Len);
          AddressTyp *AT = ExpectedT->m_sub.m_addrt;
          if (AT->m_numFields < 0) {
            return isUserAddr(SJ, Addr) || isContrAddr(SJ, Addr);
          } else {
            // Check that this is a contract and all fields exist
            // and are assignable to the type specified here.
            if (!isContrAddr(SJ, Addr))
              return false;
            return std::all_of(
                AT->m_fields, AT->m_fields + AT->m_numFields,
                [SJ, &Addr](const ScillaTypes::AddressTyp::Field &F) {
                  auto RT = remoteFieldType(SJ, Addr, std::string(F.m_Name));
                  return RT && ScillaTypes::Typ::assignable(F.m_FTyp, *RT);
                });
          }
        }
        }
        CREATE_ERROR("Unreachable executed");
      };

  return recurser(TargetT, Val);
}

} // namespace ScillaRTL