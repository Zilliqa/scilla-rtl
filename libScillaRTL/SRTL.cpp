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

#include <any>

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

std::optional<std::string> remoteFieldType(const ScillaExecImpl *SJ,
                                           const std::string &Addr,
                                           const std::string &FName) {

  ScillaParams::StateQuery Q = {FName, 0, {}, true};
  std::any IgnoreVal;
  std::string TypeS;
  bool Found;
  if (!SJ->SPs.fetchRemoteStateValue(Addr, Q, IgnoreVal, Found, TypeS)) {
    CREATE_ERROR("Error querying " + Addr + " for " + FName);
  }

  return (Found ? std::make_optional(TypeS) : std::nullopt);
}

bool isContrAddr(const ScillaExecImpl *SJ, const std::string &Addr) {
  return static_cast<bool>(remoteFieldType(SJ, Addr, "_this_address"));
}

bool isUserAddr(const ScillaExecImpl *SJ, const std::string &Addr) {
  ScillaParams::StateQuery SQBalance = {"_balance", 0, {}, false};
  ScillaParams::StateQuery SQNonce = {"_nonce", 0, {}, false};
  std::any BalanceVal, NonceVal;
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
  auto BalanceS = std::any_cast<std::string>(BalanceVal);
  auto NonceS = std::any_cast<std::string>(NonceVal);
  unquoteString(BalanceS);
  unquoteString(NonceS);

  // Parse into numbers
  SafeUint128 Balance(BalanceS);
  SafeUint64 Nonce(NonceS);

  // Balance > 0 || Nonce > 0
  return Balance > SafeUint128::Zero || Nonce > SafeUint64::Zero;
}

bool dynamicTypecheck(const ScillaExecImpl *SJ, const ScillaTypes::Typ *TargetT,
                      const ScillaTypes::Typ *ParsedT, const void *Val,
                      bool ChargeGas) {

  if (!ScillaTypes::Typ::valueCompatible(ParsedT, TargetT)) {
    CREATE_ERROR("Value of type " + ScillaTypes::Typ::toString(ParsedT) +
                 " cannot be assigned to a value of type " +
                 ScillaTypes::Typ::toString(TargetT));
  }

  using namespace ScillaTypes;

  auto DynTypCheckGasCharge = [&ChargeGas,
                               SJ](const ScillaTypes::Typ *T) -> void {
    if (!ChargeGas)
      return;
    // Implements `address_typecheck_cost` in Gas.ml.
    uint64_t Size = 0;
    switch (T->m_t) {
    case Typ::Address_typ: {
      const AddressTyp *AT = T->m_sub.m_addrt;
      ASSERT(AT->m_numFields >= -1);
      // look up _this_address and every listed field.
      Size = 1 + AT->m_numFields;
      break;
    }
    case Typ::Prim_typ:
    case Typ::ADT_typ:
    case Typ::Map_typ:
      break;
    }
    // _balance and _nonce must also be looked up
    SJ->consumeGas(Size + 2);
  };

  std::function<bool(const ScillaTypes::Typ *, const void *)> recurser =
      [SJ, &DynTypCheckGasCharge, &recurser](const ScillaTypes::Typ *ExpectedT,
                                             const void *Val) {
        switch (ExpectedT->m_t) {
        case Typ::Prim_typ:
          return true;
        case Typ::ADT_typ: {
          bool Res = true;
          ScillaValues::iterScillaADTConstrArgs(
              ExpectedT, Val,
              [&recurser, &Res](const ScillaTypes::Typ *T, const void *V) {
                if (!Res) {
                  return;
                }
                Res = recurser(T, V);
              });
          return Res;
        }
        case Typ::Map_typ: {
          const ScillaTypes::MapTyp *MT = ExpectedT->m_sub.m_mapt;
          auto M = reinterpret_cast<const ScillaParams::MapValueT *>(Val);
          ObjManager OM;
          return std::all_of(
              M->begin(), M->end(), [&OM, MT, recurser](auto Itr) {
                auto KeyT = MT->m_keyTyp;
                auto ValT = MT->m_valTyp;
                Json::Value KeyJ = parseJSONString(Itr.first);
                auto *KeyV = ScillaValues::fromJSON(OM, KeyT, KeyJ);
                if (!recurser(KeyT, KeyV)) {
                  return false;
                }
                switch (ValT->m_t) {
                case ScillaTypes::Typ::Map_typ: {
                  auto &ValJS = std::any_cast<const ScillaParams::MapValueT &>(
                      Itr.second);
                  return recurser(ValT, &ValJS);
                }
                default: {
                  auto &ValJS = std::any_cast<const std::string &>(Itr.second);
                  Json::Value ValJ = parseJSONString(ValJS);
                  auto *ValV = ScillaValues::fromJSON(OM, ValT, ValJ);
                  return recurser(ValT, ValV);
                }
                }
              });
        }
        case Typ::Address_typ: {
          DynTypCheckGasCharge(ExpectedT);
          std::string Addr =
              ScillaValues::rawToHex(reinterpret_cast<const uint8_t *>(Val),
                                     ScillaTypes::AddrByStr_Len);
          const AddressTyp *AT = ExpectedT->m_sub.m_addrt;
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
                  auto RTS = remoteFieldType(SJ, Addr, std::string(F.m_Name));
                  if (!RTS)
                    return false;
                  // Parse RTS into a (possibly incomplete) type.
                  auto TyDescrs = SJ->getTypeDescrTable();
                  ObjManager OM;
                  auto RT = ScillaTypes::Typ::constructTyp(
                      SJ->TPPC.get(), TyDescrs.first, TyDescrs.second, *RTS,
                      &OM);
                  return ScillaTypes::Typ::assignable(F.m_FTyp, RT);
                });
          }
        }
        }
        CREATE_ERROR("Unreachable executed");
      };

  return recurser(TargetT, Val);
}

} // namespace ScillaRTL
