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

#include <Bech32/segwit_addr.h>
#include <Schnorr.h>
#include <ethash/keccak.h>
#include <openssl/ripemd.h>
#include <openssl/sha.h>
#include <secp256k1.h>
#include <secp256k1_recovery.h>

#include "SafeInt.h"
#include "ScillaBuiltins.h"
#include "ScillaTypes.h"
#include "ScillaVM/Errors.h"
#include "ScillaVM/SRTL.h"
#include "ScillaVM/Utils.h"
#include "ScillaValue.h"

namespace ScillaVM {

std::vector<ScillaFunctionsMap> getAllScillaBuiltins(void) {
  // clang-format off
  ScillaFunctionsMap m[] = {
    {"_print_scilla_val", (void *) _print_scilla_val},
    {"_salloc", (void *) _salloc},
    {"_out_of_gas", (void *) _out_of_gas},
    {"_add_Int32", (void *) _add_Int32},
    {"_add_Int64", (void *) _add_Int64},
    {"_add_Int128", (void *) _add_Int128},
    {"_add_Int256", (void *) _add_Int256},
    {"_add_Uint32", (void *) _add_Uint32},
    {"_add_Uint64", (void *) _add_Uint64},
    {"_add_Uint128", (void *) _add_Uint128},
    {"_add_Uint256", (void *) _add_Uint256},
    {"_fetch_field", (void *) _fetch_field},
    {"_update_field", (void *) _update_field},
    {"_to_nat", (void *) _to_nat},
    {"_send", (void *) _send},
    {"_event", (void *) _event},
    {"_throw", (void *) _throw},
    {"_eq_Int32", (void *) _eq_Int32},
    {"_eq_Int64", (void *) _eq_Int64},
    {"_eq_Int128", (void *) _eq_Int128},
    {"_eq_Int256", (void *) _eq_Int256},
    {"_eq_Uint32", (void *) _eq_Uint32},
    {"_eq_Uint64", (void *) _eq_Uint64},
    {"_eq_Uint128", (void *) _eq_Uint128},
    {"_eq_Uint256", (void *) _eq_Uint256},
    {"_eq_String", (void *) _eq_String},
    {"_eq_ByStr", (void *) _eq_ByStr},
    {"_eq_ByStrX", (void *) _eq_ByStrX},
    {"_to_bystr", (void *) _to_bystr},
    {"_bystr_to_bystrx", (void *) _bystr_to_bystrx},
    {"_bech32_to_bystr20", (void *) _bech32_to_bystr20},
    {"_bystr20_to_bech32", (void *) _bystr20_to_bech32},
    {"_uint32_to_bystrx", (void *) _uint32_to_bystrx},
    {"_uint64_to_bystrx", (void *) _uint64_to_bystrx},
    {"_uint128_to_bystrx", (void *) _uint128_to_bystrx},
    {"_uint256_to_bystrx", (void *)_uint256_to_bystrx},
    {"_bystrx_to_uint32", (void *) _bystrx_to_uint32},
    {"_bystrx_to_uint64", (void *) _bystrx_to_uint64},
    {"_bystrx_to_uint128", (void *) _bystrx_to_uint128},
    {"_bystrx_to_uint256", (void *) _bystrx_to_uint256},
    {"_sha256hash", (void *) _sha256hash},
    {"_keccak256hash", (void *) _keccak256hash},
    {"_ripemd160hash", (void *) _ripemd160hash},
    {"_schnorr_verify", (void *) _schnorr_verify},
    {"_schnorr_get_address", (void *) _schnorr_get_address},
    {"_ecdsa_verify", (void *) _ecdsa_verify},
    {"_ecdsa_recover_pk", (void *) _ecdsa_recover_pk},
    {"_concat_String", (void *) _concat_String},
    {"_concat_ByStr", (void *) _concat_ByStr},
    {"_concat_ByStrX", (void *) _concat_ByStrX},
    {"_substr_String", (void *) _substr_String},
    {"_substr_ByStr", (void *) _substr_ByStr},
    {"_strlen_String", (void *) _strlen_String},
    {"_strlen_ByStr", (void *) _strlen_ByStr},
    {"_accept", (void *) _accept},
    {"_new_empty_map", (void *) _new_empty_map},
    {"_put", (void *) _put},
    {"_get", (void *) _get},
    {"_contains", (void *) _contains},
    {"_remove", (void *) _remove},
    {"_size", (void *) _size},
    {"_literal_cost", (void *) _literal_cost},
    {"_mapsortcost", (void *) _mapsortcost},
  };
  // clang-format on

  return std::vector<ScillaFunctionsMap>(std::begin(m), std::end(m));
}

void TransitionState::processMessage(std::string OutType, Json::Value &M) {
  if (OutJ.empty()) {
    OutJ[OutType] = Json::arrayValue;
  }

  if (!OutJ.isObject())
    CREATE_ERROR("Incorrect format of Output JSON");

  ASSERT(OutJ[OutType].isNull() || OutJ[OutType].isArray());
  OutJ[OutType].append(M);
}

void TransitionState::processSend(Json::Value &M) {
  processMessage("messages", M);
}

void TransitionState::processEvent(Json::Value &M) {
  processMessage("events", M);
}

void TransitionState::processAccept(void) {
  if (!Accepted) {
    Balance = Balance + InAmount;
    Accepted = true;
  }
}

Json::Value TransitionState::finalize(void) {
  // 1. Process all outgoing "_amount"s and subtract from Balance.
  Json::Value &Ms = OutJ["messages"];
  if (Ms.isArray()) {
    for (const Json::Value &M : Ms) {
      auto Amount = M["_amount"];
      ASSERT(Amount.isString());
      SafeUint128 AmountSUI(Amount.asString());
      if (AmountSUI > Balance) {
        SCILLA_EXCEPTION("Not enough balance to send _amount in all messages");
      }
      Balance = Balance - AmountSUI;
    }
  } else {
    Ms = Json::arrayValue;
  }

  // 2. If there are no events, set an empty array.
  Json::Value &Es = OutJ["events"];
  if (!Es.isArray())
    Es = Json::arrayValue;

  // 3. Fill in other fields.
  OutJ["gas_remaining"] = std::to_string(*GasRemPtr);
  OutJ["_accepted"] = Accepted ? "true" : "false";
  OutJ["scilla_major_version"] = "0";

  // The states field is not very useful because the blockchain
  // can always calculate it based on "_accepted" and message amounts.
  // It's there because it's always been there ¯\_(ツ)_/¯
  Json::Value BalJ;
  BalJ["vname"] = "_balance";
  BalJ["type"] = "Uint128";
  BalJ["value"] = Balance.toString();
  OutJ["states"].append(BalJ);

  return OutJ;
}

} // namespace ScillaVM

using namespace ScillaVM;

namespace {

// Serialize indices in a Scilla memory buffer.
void prepareStateAccessIndices(
    const std::vector<const ScillaTypes::Typ *> &KeyTypes, int NumIdx,
    const uint8_t *Indices, std::vector<std::string> &SerializedIndices) {
  for (int I = 0, Off = 0; I < NumIdx; I++) {
    auto *KT = KeyTypes[I];
    const void *VPtr;
    if (ScillaTypes::Typ::isBoxed(KT)) {
      ASSERT_MSG(false, "Key type must be primitive, cannot be boxed");
      VPtr = *reinterpret_cast<void *const *>(Indices + Off);
    } else {
      VPtr = reinterpret_cast<const void *>(Indices + Off);
    }
    SerializedIndices.emplace_back(
        ScillaValues::toJSON(KT, VPtr).toStyledString());
    Off += ScillaTypes::Typ::sizeOf(KT);
  }
}

uint8_t *toScillaBool(ObjManager &OM, bool B) {
  int MemSize = 1;
  auto Mem = reinterpret_cast<uint8_t *>(OM.allocBytes(MemSize));
  if (B) {
    *Mem = ScillaTypes::Bool_True_Tag;
  } else {
    *Mem = ScillaTypes::Bool_False_Tag;
  }
  return Mem;
}

// Wrap the result of a map acess with Scilla Option type.
uint8_t *wrapMapAccessResult(ObjManager &OM, bool Found,
                             const boost::any &StringOrMapVal,
                             const ScillaTypes::Typ *ValT) {
  if (Found) {
    // Wrap with "Some".
    // Allocate memory for "Some" = sizeOf (ValT) + 1 byte for Tag.
    int MemSize = ScillaTypes::Typ::sizeOf(ValT) + 1;
    auto Mem = reinterpret_cast<uint8_t *>(OM.allocBytes(MemSize));
    *Mem = ScillaTypes::Option_Some_Tag;
    // Create Scilla value from JSON and place it in Mem + 1.
    // i.e., We are constructing a Scilla "Some" object overall.
    if (ScillaTypes::Typ::isBoxed(ValT)) {
      if (ValT->m_t == ScillaTypes::Typ::Map_typ) {
        auto &MapVal =
            boost::any_cast<const ScillaParams::MapValueT &>(StringOrMapVal);
        *reinterpret_cast<void **>(Mem + 1) =
            OM.create<ScillaParams::MapValueT>((std::move(MapVal)));
      } else {
        auto StringVal = boost::any_cast<std::string>(StringOrMapVal);
        Json::Value ValJ = parseJSONString(StringVal);
        *reinterpret_cast<void **>(Mem + 1) =
            ScillaValues::fromJSON(OM, ValT, ValJ);
      }
    } else {
      auto StringVal = boost::any_cast<std::string>(StringOrMapVal);
      Json::Value ValJ = parseJSONString(StringVal);
      ScillaValues::fromJSONToMem(OM, (Mem + 1), MemSize - 1, ValT, ValJ);
    }
    return Mem;
  } else {
    // Wrap with Scilla object "None", which has only a Tag.
    int MemSize = 1;
    auto Mem = reinterpret_cast<uint8_t *>(OM.allocBytes(MemSize));
    *Mem = ScillaTypes::Option_None_Tag;
    return Mem;
  }
}

template <unsigned X>
void *uintToByStrX(ScillaJIT *SJ, ScillaTypes::RawInt<X> I) {
  auto Len = sizeof(ScillaTypes::RawInt<X>);
  auto Mem = SJ->OM->allocBytes(Len);
  std::memcpy(Mem, &I, Len);
#if BOOST_ENDIAN_LITTLE_BYTE
  // Native integer is little-endian. Convert it to big-endian.
  ScillaValues::swapEndian(reinterpret_cast<uint8_t *>(Mem), Len);
#endif
  return Mem;
}

template <unsigned X>
void byStrXToUint(ScillaTypes::RawInt<X> &UI, void *BX, int L) {
  static_assert(sizeof(ScillaTypes::RawInt<X>) == sizeof(UI.buf),
                "RawInt struct not as expected");
  auto Len = static_cast<int>(sizeof(ScillaTypes::RawInt<X>));
  ASSERT(L <= Len);
  std::memset(UI.buf, 0, Len - L);
  std::memcpy(UI.buf + (Len - L), BX, L);
#if BOOST_ENDIAN_LITTLE_BYTE
  // Native integer is little-endian. Convert it to big-endian.
  ScillaValues::swapEndian(UI.buf, Len);
#endif
}

} // namespace

extern "C" {

void _print_scilla_val(const ScillaTypes::Typ *T, void *V) {
  ScillaStdout += ScillaValues::toString(true, T, V) + "\n";
}

void *_salloc(ScillaJIT *SJ, size_t size) { return SJ->OM->allocBytes(size); }

void _out_of_gas() { SCILLA_EXCEPTION("Ran out of gas"); }

ScillaTypes::Int32 _add_Int32(ScillaTypes::Int32 Lhs, ScillaTypes::Int32 Rhs) {
  return SafeInt32(&Lhs) + SafeInt32(&Rhs);
}

ScillaTypes::Int64 _add_Int64(ScillaTypes::Int64 Lhs, ScillaTypes::Int64 Rhs) {
  return SafeInt64(&Lhs) + SafeInt64(&Rhs);
}

ScillaTypes::Int128 _add_Int128(ScillaTypes::Int128 Lhs,
                                ScillaTypes::Int128 Rhs) {
  return SafeInt128(&Lhs) + SafeInt128(&Rhs);
}

ScillaTypes::Int256 *_add_Int256(ScillaJIT *SJ, ScillaTypes::Int256 *Lhs,
                                 ScillaTypes::Int256 *Rhs) {

  auto *Buf = SJ->OM->allocBytes(sizeof(ScillaTypes::Int256));
  return new (Buf) ScillaTypes::Int256(SafeInt256(Lhs) + SafeInt256(Rhs));
}

ScillaTypes::Uint32 _add_Uint32(ScillaTypes::Uint32 Lhs,
                                ScillaTypes::Uint32 Rhs) {
  return SafeUint32(&Lhs) + SafeUint32(&Rhs);
}

ScillaTypes::Uint64 _add_Uint64(ScillaTypes::Uint64 Lhs,
                                ScillaTypes::Uint64 Rhs) {
  return SafeUint64(&Lhs) + SafeUint64(&Rhs);
}

ScillaTypes::Uint128 _add_Uint128(ScillaTypes::Uint128 Lhs,
                                  ScillaTypes::Uint128 Rhs) {
  return SafeUint128(&Lhs) + SafeUint128(&Rhs);
}

ScillaTypes::Uint256 *_add_Uint256(ScillaJIT *SJ, ScillaTypes::Uint256 *Lhs,
                                   ScillaTypes::Uint256 *Rhs) {

  auto *Buf = SJ->OM->allocBytes(sizeof(ScillaTypes::Uint256));
  return new (Buf) ScillaTypes::Uint256(SafeUint256(Lhs) + SafeUint256(Rhs));
}

uint8_t *_eq_Int32(ScillaJIT *SJ, ScillaTypes::Int32 Lhs,
                   ScillaTypes::Int32 Rhs) {

  return toScillaBool(*(SJ->OM), SafeInt32(&Lhs) == SafeInt32(&Rhs));
}

uint8_t *_eq_Int64(ScillaJIT *SJ, ScillaTypes::Int64 Lhs,
                   ScillaTypes::Int64 Rhs) {

  return toScillaBool(*(SJ->OM), SafeInt64(&Lhs) == SafeInt64(&Rhs));
}

uint8_t *_eq_Int128(ScillaJIT *SJ, ScillaTypes::Int128 Lhs,
                    ScillaTypes::Int128 Rhs) {

  return toScillaBool(*(SJ->OM), SafeInt128(&Lhs) == SafeInt128(&Rhs));
}

uint8_t *_eq_Int256(ScillaJIT *SJ, ScillaTypes::Int256 *Lhs,
                    ScillaTypes::Int256 *Rhs) {

  return toScillaBool(*(SJ->OM), SafeInt256(Lhs) == SafeInt256(Rhs));
}

uint8_t *_eq_Uint32(ScillaJIT *SJ, ScillaTypes::Uint32 Lhs,
                    ScillaTypes::Uint32 Rhs) {

  return toScillaBool(*(SJ->OM), SafeUint32(&Lhs) == SafeUint32(&Rhs));
}

uint8_t *_eq_Uint64(ScillaJIT *SJ, ScillaTypes::Uint64 Lhs,
                    ScillaTypes::Uint64 Rhs) {

  return toScillaBool(*(SJ->OM), SafeUint64(&Lhs) == SafeUint64(&Rhs));
}

uint8_t *_eq_Uint128(ScillaJIT *SJ, ScillaTypes::Uint128 Lhs,
                     ScillaTypes::Uint128 Rhs) {

  return toScillaBool(*(SJ->OM), SafeUint128(&Lhs) == SafeUint128(&Rhs));
}

uint8_t *_eq_Uint256(ScillaJIT *SJ, ScillaTypes::Uint256 *Lhs,
                     ScillaTypes::Uint256 *Rhs) {

  return toScillaBool(*(SJ->OM), SafeUint256(Lhs) == SafeUint256(Rhs));
}

void *_fetch_field(ScillaJIT *SJ, const char *Name, const ScillaTypes::Typ *T,
                   int32_t NumIdx, const uint8_t *Indices, int32_t FetchVal) {
  std::vector<const ScillaTypes::Typ *> KeyTypes;
  std::vector<std::string> SerializedIndices;

  ScillaTypes::Typ::getMapKeyTypes(T, KeyTypes);
  ASSERT((int)KeyTypes.size() >= NumIdx);
  // If the number of indices provided is fewer than max possible,
  // then the result of this access is a map value.
  unsigned MapValueAccess = NumIdx < (int)KeyTypes.size();
  prepareStateAccessIndices(KeyTypes, NumIdx, Indices, SerializedIndices);

  ScillaParams::StateQuery SQ = {std::string(Name), (int)KeyTypes.size(),
                                 SerializedIndices, !FetchVal};

  boost::any StringOrMapVal;
  bool Found = false;
  ASSERT_MSG(SJ->SPs.fetchStateValue,
             "Incorrect ScillaParams provided to ScillaJIT");
  if (!SJ->SPs.fetchStateValue(SQ, StringOrMapVal, Found)) {
    CREATE_ERROR("State fetch query failed for " + SQ.Name);
  }

  if (SerializedIndices.empty()) {
    // Full access of state variable. No indexing.
    ASSERT_MSG(FetchVal, "Fetching full state variable, but FetchVal not set");
    if (MapValueAccess) {
      ASSERT(ScillaTypes::Typ::mapAccessType(T, NumIdx)->m_t ==
             ScillaTypes::Typ::Map_typ);
      auto &MapVal = boost::any_cast<ScillaParams::MapValueT &>(StringOrMapVal);
      return reinterpret_cast<void *>(
          SJ->OM->create<ScillaParams::MapValueT>(std::move(MapVal)));
    } else {
      auto Val = boost::any_cast<std::string>(StringOrMapVal);
      Json::Value ValJ = parseJSONString(Val);
      return ScillaValues::fromJSON(*(SJ->OM), T, ValJ);
    }
  }

  // Map access. Returned value must be wrapped with Option / Bool.
  auto ValT = ScillaTypes::Typ::mapAccessType(T, NumIdx);
  if (FetchVal) {
    return wrapMapAccessResult(*(SJ->OM), Found, StringOrMapVal, ValT);
  } else {
    // We need to construct a Scilla Bool ADT based on "found".
    auto Mem = toScillaBool(*(SJ->OM), Found);
    return Mem;
  }
}

void _update_field(ScillaVM::ScillaJIT *SJ, const char *Name,
                   const ScillaVM::ScillaTypes::Typ *T, int32_t NumIdx,
                   const uint8_t *Indices, void *Val) {

  std::vector<const ScillaTypes::Typ *> KeyTypes;
  std::vector<std::string> SerializedIndices;

  ScillaTypes::Typ::getMapKeyTypes(T, KeyTypes);
  ASSERT((int)KeyTypes.size() >= NumIdx);
  // If the number of indices provided is fewer than max possible,
  // then the result of this access is a map value.
  unsigned MapValueAccess = NumIdx < (int)KeyTypes.size();
  prepareStateAccessIndices(KeyTypes, NumIdx, Indices, SerializedIndices);

  ScillaParams::StateQuery SQ = {std::string(Name), (int)KeyTypes.size(),
                                 SerializedIndices, Val == nullptr};

  if (Val) {
    ASSERT_MSG(SJ->SPs.updateStateValue,
               "Incorrect ScillaParams provided to ScillaJIT");
    auto ValT = ScillaTypes::Typ::mapAccessType(T, NumIdx);
    if (MapValueAccess) {
      ASSERT(ValT->m_t == ScillaTypes::Typ::Map_typ);
      auto &ValM = *reinterpret_cast<ScillaParams::MapValueT *>(Val);
      if (!SJ->SPs.updateStateValue(SQ, ValM)) {
        CREATE_ERROR("State update query failed for " + SQ.Name);
      }
    } else {
      auto ValS = ScillaValues::toJSON(ValT, Val).toStyledString();
      if (!SJ->SPs.updateStateValue(SQ, ValS)) {
        CREATE_ERROR("State update query failed for " + SQ.Name);
      }
    }
  } else {
    ASSERT_MSG(!SerializedIndices.empty(),
               "Value deletion is possible only for indexed map access");
    boost::any EmptyVal;
    if (!SJ->SPs.updateStateValue(SQ, EmptyVal)) {
      CREATE_ERROR("State update query failed for " + SQ.Name);
    }
  }
}

void *_to_nat(ScillaJIT *SJ, ScillaTypes::Uint32 UI) {

  auto I = *reinterpret_cast<unsigned *>(&UI);
  // A Zero object consists of only the i8 tag.
  // A Succ object consists of an i8 tag followed by a pointer.
  auto ElSize = 1 + sizeof(uint8_t *);
  // We allocate all objects in one for (1) fast allocation (2) locality.
  const auto Mem =
      reinterpret_cast<uint8_t *>(SJ->OM->allocBytes(ElSize * (I + 1)));
  *Mem = ScillaTypes::Nat_Zero_Tag;
  uint8_t *MemPrev = Mem;
  for (unsigned II = 1; II <= I; II++) {
    auto MemCur = MemPrev + ElSize;
    *MemCur = ScillaTypes::Nat_Succ_Tag;
    *(reinterpret_cast<uint8_t **>(MemCur + 1)) = MemPrev;
    MemPrev = MemCur;
  }
  return MemPrev;
}

void _send(ScillaJIT *SJ, const ScillaTypes::Typ *T, const void *V) {
  auto J = ScillaValues::toJSON(T, V);
  // J is a Scilla list of Messages. Form a JSON array instead.
  // TODO: Consider having a Scilla List -> std::vector and calling
  //       that before toJSON is called above.
  auto *JJ = &J;
  auto ErrMsg = "Invalid JSON constructed from send";
  while (true) {
    if (!JJ->isObject())
      CREATE_ERROR(ErrMsg);
    auto *JConstr = &(JJ->operator[]("constructor"));
    if (!JConstr->isString())
      CREATE_ERROR(ErrMsg);
    auto CName = JConstr->asString();
    if (CName == "Cons") {
      auto *JArgs = &(JJ->operator[]("arguments"));
      if (!JArgs->isArray() || JArgs->size() != 2)
        CREATE_ERROR(ErrMsg);
      SJ->TS->processSend(JArgs->operator[](0));
      JJ = &(JArgs->operator[](1));
    } else if (CName == "Nil") {
      break;
    } else {
      CREATE_ERROR(ErrMsg);
    }
  }
}

uint64_t _literal_cost(const ScillaTypes::Typ *T, const void *V) {
  return ScillaValues::literalCost(T, V);
}

uint64_t _mapsortcost(const ScillaParams::MapValueT *M) {
  uint64_t Cost = 0;

  // First calculate cost for sub-maps (if any).
  for (auto &Itr : *M) {
    if (boost::has_type<std::string>(Itr.second)) {
      break;
    }
    ASSERT(boost::has_type<ScillaParams::MapValueT>(Itr.second));
    auto *SubM = &boost::any_cast<const ScillaParams::MapValueT &>(Itr.second);
    Cost += _mapsortcost(SubM);
  }

  // Cost of sorting *this* map.
  auto Len = M->size();
  if (Len > 0) {
    auto LogLen = static_cast<int>(log(static_cast<float>(Len)));
    Cost += (Len * LogLen);
  }

  return Cost;
}

void _event(ScillaJIT *SJ, const ScillaTypes::Typ *T, const void *V) {
  auto J = ScillaValues::toJSON(T, V);
  SJ->TS->processEvent(J);
}

void _throw(ScillaJIT *SJ, const ScillaTypes::Typ *T, const void *V) {
  (void)SJ;
  auto J = ScillaValues::toJSON(T, V);
  SCILLA_EXCEPTION("Exception thrown: " + J.toStyledString());
}

uint8_t *_eq_String(ScillaJIT *SJ, ScillaTypes::String Lhs,
                    ScillaTypes::String Rhs) {

  auto B = (Lhs.m_length == Rhs.m_length) &&
           (std::memcmp(Lhs.m_buffer, Rhs.m_buffer, Lhs.m_length) == 0);
  return toScillaBool(*(SJ->OM), B);
}

uint8_t *_eq_ByStr(ScillaJIT *SJ, ScillaTypes::String Lhs,
                   ScillaTypes::String Rhs) {

  auto B = (Lhs.m_length == Rhs.m_length) &&
           (std::memcmp(Lhs.m_buffer, Rhs.m_buffer, Lhs.m_length) == 0);
  return toScillaBool(*(SJ->OM), B);
}

uint8_t *_eq_ByStrX(ScillaJIT *SJ, int X, uint8_t *Lhs, uint8_t *Rhs) {

  auto B = (std::memcmp(Lhs, Rhs, X) == 0);
  return toScillaBool(*(SJ->OM), B);
}

ScillaTypes::String _to_bystr(ScillaJIT *SJ, int X, uint8_t *Buf) {

  ScillaTypes::String Ret;
  auto Mem = SJ->OM->allocBytes(X);
  std::memcpy(Mem, Buf, X);
  Ret.m_length = X;
  Ret.m_buffer = reinterpret_cast<uint8_t *>(Mem);
  return Ret;
}

void *_bystr_to_bystrx(ScillaJIT *SJ, int X, ScillaTypes::String Str) {

  if (X != Str.m_length) {
    // Wrap with Scilla object "None", which has only a Tag.
    int MemSize = 1;
    auto Mem = reinterpret_cast<uint8_t *>(SJ->OM->allocBytes(MemSize));
    *Mem = ScillaTypes::Option_None_Tag;
    return Mem;
  }
  // Wrap with "Some".
  // Allocate memory for "Some" = sizeOf (ValT) + 1 byte for Tag.
  int MemSize = X + 1;
  auto Mem = reinterpret_cast<uint8_t *>(SJ->OM->allocBytes(MemSize));
  *Mem = ScillaTypes::Option_Some_Tag;
  // Create Scilla value from JSON and place it in Mem + 1.
  // i.e., We are constructing a Scilla "Some" object overall.
  std::memcpy(Mem + 1, Str.m_buffer, Str.m_length);
  return Mem;
}

uint8_t *_bech32_to_bystr20(ScillaJIT *SJ, ScillaTypes::String Prefix,
                            ScillaTypes::String Addr) {

  std::string PrefixS(reinterpret_cast<const char *>(Prefix.m_buffer),
                      Prefix.m_length);
  std::string AddrS(reinterpret_cast<const char *>(Addr.m_buffer),
                    Addr.m_length);

  if (PrefixS != "zil") {
    SCILLA_EXCEPTION("Prefix for bech32 address must be \"zil\"");
  }

  // Result required memory size: as specified by the bech32 header comment
  const int ProgBufSize = 40;
  // Will be set by bech32_addr_decode
  size_t ProgSize;

  // We allocate an extra byte for the ADT tag we want to return.
  auto Mem = reinterpret_cast<uint8_t *>(SJ->OM->allocBytes(ProgBufSize + 1));
  if (bech32_addr_decode(Mem + 1, &ProgSize,
                         reinterpret_cast<const char *>(PrefixS.c_str()),
                         reinterpret_cast<const char *>(AddrS.c_str()))) {
    if (ProgSize != 20) {
      SCILLA_EXCEPTION(
          "Bech32 conversion failed. Did not get back ByStr20 value");
    }
    *Mem = ScillaTypes::Option_Some_Tag;
    return Mem;
  } else {
    // In this case, we've allocated a buffer whose size is way more than
    // what we need. But this is ok because this is the "less taken" branch.
    *Mem = ScillaTypes::Option_None_Tag;
    return Mem;
  }
}

void *_bystr20_to_bech32(ScillaJIT *SJ, ScillaTypes::String Prefix,
                         uint8_t *Addr20) {

  std::string PrefixS(reinterpret_cast<const char *>(Prefix.m_buffer),
                      Prefix.m_length);

  if (PrefixS != "zil") {
    SCILLA_EXCEPTION("Prefix for bech32 address must be \"zil\"");
  }

  // Result required memory size: as specified by the bech32 header comment
  const int OutputBufSize = 73 + strlen("zil");
  const size_t ProgLen = 20;

  auto OutputBuf = reinterpret_cast<char *>(SJ->OM->allocBytes(OutputBufSize));
  if (bech32_addr_encode(OutputBuf,
                         reinterpret_cast<const char *>(PrefixS.c_str()),
                         Addr20, ProgLen)) {
    // The encoding gives a null-terminated bech32 string.
    auto OutputLen = strlen(OutputBuf);
    // https://github.com/Zilliqa/Zilliqa/wiki/Address-Standard#specification
    if (OutputLen != strlen("zil") + 1 /* separator */ +
                         32 /* bech32 formatted address*/ + 6 /* checksum */) {
      SCILLA_EXCEPTION(
          "Bech32 conversion failed. Did not get back valid bech32 address");
    }
    // Allocate ScillaTypes::String in an Option type to return.
    auto Mem = reinterpret_cast<uint8_t *>(
        SJ->OM->allocBytes(sizeof(ScillaTypes::String) + 1));
    auto OutputString = reinterpret_cast<ScillaTypes::String *>(Mem + 1);
    *Mem = ScillaTypes::Option_Some_Tag;
    OutputString->m_buffer = reinterpret_cast<uint8_t *>(OutputBuf);
    OutputString->m_length = OutputLen;
    return Mem;
  } else {
    // In this case, we've allocated a buffer whose size is way more than
    // what we need. But this is ok because this is the "less taken" branch.
    *reinterpret_cast<uint8_t *>(OutputBuf) = ScillaTypes::Option_None_Tag;
    return OutputBuf;
  }
}

void *_uint32_to_bystrx(ScillaJIT *SJ, ScillaTypes::Uint32 I) {
  return uintToByStrX<32>(SJ, I);
}

void *_uint64_to_bystrx(ScillaJIT *SJ, ScillaTypes::Uint64 I) {
  return uintToByStrX<64>(SJ, I);
}

void *_uint128_to_bystrx(ScillaJIT *SJ, ScillaTypes::Uint128 I) {
  return uintToByStrX<128>(SJ, I);
}

void *_uint256_to_bystrx(ScillaJIT *SJ, ScillaTypes::Uint256 *I) {
  return uintToByStrX<256>(SJ, *I);
}

ScillaTypes::Uint32 _bystrx_to_uint32(ScillaJIT *, int X, void *BS) {
  ScillaTypes::Uint32 Ret;
  byStrXToUint(Ret, BS, X);
  return Ret;
}

ScillaTypes::Uint64 _bystrx_to_uint64(ScillaJIT *, int X, void *BS) {
  ScillaTypes::Uint64 Ret;
  byStrXToUint(Ret, BS, X);
  return Ret;
}

ScillaTypes::Uint128 _bystrx_to_uint128(ScillaJIT *, int X, void *BS) {
  ScillaTypes::Uint128 Ret;
  byStrXToUint(Ret, BS, X);
  return Ret;
}

ScillaTypes::Uint256 *_bystrx_to_uint256(ScillaJIT *SJ, int X, void *BS) {

  auto *Ret = reinterpret_cast<ScillaTypes::Uint256 *>(
      SJ->OM->allocBytes(sizeof(ScillaTypes::Uint256)));
  byStrXToUint(*Ret, BS, X);
  return Ret;
}

void *_sha256hash(ScillaJIT *SJ, const ScillaTypes::Typ *T, void *V) {
  ByteVec Serialized;
  auto *Buf =
      reinterpret_cast<uint8_t *>(SJ->OM->allocBytes(SHA256_DIGEST_LENGTH));
  ScillaValues::serializeForHashing(Serialized, T, V);
  SHA256(Serialized.data(), Serialized.size(), Buf);
  return Buf;
}

void *_keccak256hash(ScillaJIT *SJ, const ScillaTypes::Typ *T, void *V) {
  ByteVec Serialized;
  const auto HashLength = sizeof(ethash_hash256);

  auto *Buf = reinterpret_cast<uint8_t *>(SJ->OM->allocBytes(HashLength));
  ScillaValues::serializeForHashing(Serialized, T, V);
  auto H = ethash_keccak256(Serialized.data(), Serialized.size());
  std::memcpy(Buf, H.bytes, HashLength);
  return Buf;
}

void *_ripemd160hash(ScillaJIT *SJ, const ScillaTypes::Typ *T, void *V) {
  ByteVec Serialized;
  auto *Buf =
      reinterpret_cast<uint8_t *>(SJ->OM->allocBytes(RIPEMD160_DIGEST_LENGTH));
  ScillaValues::serializeForHashing(Serialized, T, V);
  RIPEMD160(Serialized.data(), Serialized.size(), Buf);
  return Buf;
}

uint8_t *_schnorr_verify(ScillaJIT *SJ, uint8_t *PubK, ScillaTypes::String Msg,
                         uint8_t *Sign) {
  ASSERT(Schnorr::PUBKEY_COMPRESSED_SIZE_BYTES == Schnorr_Pubkey_Len);
  std::vector<uint8_t> PubK_Vec(PubK, PubK + Schnorr_Pubkey_Len);
  PubKey PK(PubK_Vec, 0);

  std::vector<uint8_t> Sign_Vec(Sign, Sign + Schnorr_Signature_Len);
  Signature S(Sign_Vec, 0);

  ByteVec M(Msg.m_buffer, Msg.m_buffer + Msg.m_length);

  auto Res = Schnorr::Verify(M, S, PK);

  return toScillaBool(*(SJ->OM), Res);
}

uint8_t *_schnorr_get_address(ScillaJIT *SJ, uint8_t *PubK) {

  static_assert(SHA256_DIGEST_LENGTH > Zilliqa_Address_Len,
                "Can't extract Zilliqa address from hash of public key");

  // Hash PubK and extract the lower Zilliqa_Address_Len bytes.
  uint8_t *Buf =
      reinterpret_cast<uint8_t *>(SJ->OM->allocBytes(SHA256_DIGEST_LENGTH));
  SHA256(PubK, Schnorr_Pubkey_Len, Buf);
  return (Buf + (SHA256_DIGEST_LENGTH - Zilliqa_Address_Len));
}

uint8_t *_ecdsa_verify(ScillaJIT *SJ, uint8_t *PubK, ScillaTypes::String Msg,
                       uint8_t *Sign) {
  secp256k1_pubkey PK;
  if (!secp256k1_ec_pubkey_parse(SJ->Ctx_secp256k1, &PK, PubK,
                                 Ecdsa_Pubkey_Len)) {
    SCILLA_EXCEPTION("Error parsing ECDSA public key");
  }
  uint8_t MsgHash[SHA256_DIGEST_LENGTH];
  secp256k1_ecdsa_signature Sig;
  SHA256(Msg.m_buffer, Msg.m_length, MsgHash);
  if (!secp256k1_ecdsa_signature_parse_compact(SJ->Ctx_secp256k1, &Sig, Sign)) {
    SCILLA_EXCEPTION("Error parsing ECDSA signature");
  }

  auto Res = static_cast<bool>(
      secp256k1_ecdsa_verify(SJ->Ctx_secp256k1, &Sig, MsgHash, &PK));

  return toScillaBool(*(SJ->OM), Res);
}

uint8_t *_ecdsa_recover_pk(ScillaJIT *SJ, ScillaTypes::String Msg,
                           uint8_t *Sign, ScillaTypes::Uint32 RecID) {

  auto RI = *reinterpret_cast<unsigned *>(&RecID);

  uint8_t MsgHash[SHA256_DIGEST_LENGTH];
  SHA256(Msg.m_buffer, Msg.m_length, MsgHash);

  secp256k1_ecdsa_recoverable_signature S;
  if (!secp256k1_ecdsa_recoverable_signature_parse_compact(SJ->Ctx_secp256k1,
                                                           &S, Sign, RI)) {
    SCILLA_EXCEPTION("Error parsing recoverable signature");
  }

  secp256k1_pubkey PK;
  if (!secp256k1_ecdsa_recover(SJ->Ctx_secp256k1, &PK, &S, MsgHash)) {
    SCILLA_EXCEPTION("Error recovering public key from ECDSA signature");
  }

  uint8_t *Buf = reinterpret_cast<uint8_t *>(
      SJ->OM->allocBytes(Ecdsa_Pubkey_Uncompressed_Len));
  size_t BufLen = Ecdsa_Pubkey_Uncompressed_Len;
  secp256k1_ec_pubkey_serialize(SJ->Ctx_secp256k1, Buf, &BufLen, &PK,
                                SECP256K1_EC_UNCOMPRESSED);
  if (BufLen != Ecdsa_Pubkey_Uncompressed_Len) {
    SCILLA_EXCEPTION(
        "Error deserializing to uncompressed public key. Length mistmatch.");
  }

  return Buf;
}

ScillaTypes::String _concat_String(ScillaJIT *SJ, ScillaTypes::String Lhs,
                                   ScillaTypes::String Rhs) {

  ScillaTypes::String Ret;
  Ret.m_length = Lhs.m_length + Rhs.m_length;
  auto Buf = reinterpret_cast<uint8_t *>(SJ->OM->allocBytes(Ret.m_length));
  std::memcpy(Buf, Lhs.m_buffer, Lhs.m_length);
  std::memcpy(Buf + Lhs.m_length, Rhs.m_buffer, Rhs.m_length);
  Ret.m_buffer = Buf;
  return Ret;
}

ScillaTypes::String _concat_ByStr(ScillaJIT *SJ, ScillaTypes::String Lhs,
                                  ScillaTypes::String Rhs) {
  return _concat_String(SJ, Lhs, Rhs);
}

void *_concat_ByStrX(ScillaJIT *SJ, int X1, uint8_t *Lhs, int X2,
                     uint8_t *Rhs) {

  auto *Buf = reinterpret_cast<uint8_t *>(SJ->OM->allocBytes(X1 + X2));
  std::memcpy(Buf, Lhs, X1);
  std::memcpy(Buf + X1, Rhs, X2);
  return Buf;
}

ScillaTypes::Uint32 _strlen_String(ScillaTypes::String Str) {
  ScillaTypes::Uint32 Ret;
  uint32_t Len = static_cast<uint32_t>(Str.m_length);
  auto Size = sizeof(uint32_t);
  ASSERT(Size == sizeof(Ret.buf));
  std::memcpy(Ret.buf, &Len, Size);
  return Ret;
}

ScillaTypes::Uint32 _strlen_ByStr(ScillaTypes::String Str) {
  return _strlen_String(Str);
}

ScillaTypes::String _substr_String(ScillaJIT *SJ, ScillaTypes::String Str,
                                   ScillaTypes::Uint32 Pos,
                                   ScillaTypes::Uint32 Len) {

  auto PosUI = *reinterpret_cast<unsigned *>(&Pos);
  auto LenUI = *reinterpret_cast<unsigned *>(&Len);

  if (PosUI + LenUI > (unsigned)Str.m_length) {
    SCILLA_EXCEPTION("Invalid arguments to substr");
  }

  ScillaTypes::String Ret;
  Ret.m_length = LenUI;
  auto Buf = reinterpret_cast<uint8_t *>(SJ->OM->allocBytes(LenUI));
  std::memcpy(Buf, Str.m_buffer + PosUI, LenUI);
  Ret.m_buffer = Buf;

  return Ret;
}

ScillaTypes::String _substr_ByStr(ScillaJIT *SJ, ScillaTypes::String Str,
                                  ScillaTypes::Uint32 Pos,
                                  ScillaTypes::Uint32 Len) {
  return _substr_String(SJ, Str, Pos, Len);
}

void _accept(ScillaJIT *SJ) { SJ->TS->processAccept(); }

ScillaParams::MapValueT *_new_empty_map(ScillaJIT *SJ) {
  return SJ->OM->create<ScillaParams::MapValueT>();
}

ScillaParams::MapValueT *_put(ScillaJIT *SJ, const ScillaTypes::Typ *T,
                              ScillaParams::MapValueT *M, void *K, void *V) {
  auto NewM = SJ->OM->create<ScillaParams::MapValueT>(*M);

  switch (T->m_t) {
  case ScillaTypes::Typ::Map_typ: {
    auto KT = T->m_sub.m_mapt->m_keyTyp;
    Json::Value KeyJ = ScillaValues::toJSON(KT, K);
    auto KeyS = KeyJ.toStyledString();

    auto VT = T->m_sub.m_mapt->m_valTyp;
    switch (VT->m_t) {
    case ScillaTypes::Typ::Map_typ:
      NewM->operator[](KeyS) = *reinterpret_cast<ScillaParams::MapValueT *>(V);
      break;
    default: {
      Json::Value ValJ = ScillaValues::toJSON(VT, V);
      NewM->operator[](KeyS) = ValJ.toStyledString();
      break;
    }
    }
    break;
  }
  default:
    CREATE_ERROR("MapType value expected as argument to _put");
  }

  return NewM;
}

void *_get(ScillaJIT *SJ, const ScillaTypes::Typ *T,
           const ScillaParams::MapValueT *M, const void *K) {

  ASSERT(T->m_t == ScillaTypes::Typ::Map_typ);
  auto *KeyT = T->m_sub.m_mapt->m_keyTyp;
  auto *ValT = T->m_sub.m_mapt->m_valTyp;
  auto KeyS = ScillaValues::toJSON(KeyT, K).toStyledString();
  auto Itr = M->find(KeyS);

  bool Found = Itr != M->end();
  const boost::any Dummy;
  const boost::any &Val = Found ? Itr->second : Dummy;
  // Wrap with "Option".
  return wrapMapAccessResult(*(SJ->OM), Found, Val, ValT);
}

void *_contains(ScillaJIT *SJ, const ScillaTypes::Typ *T,
                const ScillaParams::MapValueT *M, const void *K) {
  ASSERT(T->m_t == ScillaTypes::Typ::Map_typ);
  auto *KeyT = T->m_sub.m_mapt->m_keyTyp;
  auto KeyS = ScillaValues::toJSON(KeyT, K).toStyledString();
  auto Itr = M->find(KeyS);

  return toScillaBool(*(SJ->OM), Itr != M->end());
}

void *_remove(ScillaJIT *SJ, const ScillaTypes::Typ *T,
              const ScillaParams::MapValueT *M, const void *K) {
  ASSERT(T->m_t == ScillaTypes::Typ::Map_typ);
  auto *KeyT = T->m_sub.m_mapt->m_keyTyp;
  auto KeyS = ScillaValues::toJSON(KeyT, K).toStyledString();

  auto NewM = SJ->OM->create<ScillaParams::MapValueT>(*M);
  NewM->erase(KeyS);
  return NewM;
}

ScillaTypes::Uint32 _size(const ScillaParams::MapValueT *M) {
  uint64_t S64 = M->size();
  uint32_t S32 = static_cast<uint32_t>(S64);
  if (static_cast<uint64_t>(S32) != S64) {
    CREATE_ERROR("Builtin size: Unable to fit size in Uint32 value");
  }

  ScillaTypes::Uint32 Ret;
  static_assert(sizeof(Ret.buf) == sizeof(S32),
                "Internal error: Integer size mismatch");
  std::memcpy(Ret.buf, &S32, sizeof(S32));
  return Ret;
}

} // end of extern "C".
