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

#include <openssl/sha.h>

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
    {"_sha256hash", (void *) _sha256hash},
    {"_concat_String", (void *) _concat_String},
    {"_concat_ByStrX", (void *) _concat_ByStrX},
    {"_accept", (void *) _accept},
    {"_new_empty_map", (void *) _new_empty_map},
    {"_put", (void *) _put},
    {"_get", (void *) _get},
    {"_contains", (void *) _contains},
    {"_remove", (void *) _remove},
    {"_size", (void *) _size},
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

uint8_t *toScillaBool(SAllocator &SA, bool B) {
  int MemSize = 1;
  auto Mem = reinterpret_cast<uint8_t *>(SA(MemSize));
  if (B) {
    *Mem = ScillaTypes::Bool_True_Tag;
  } else {
    *Mem = ScillaTypes::Bool_False_Tag;
  }
  return Mem;
}

// Wrap the result of a map acess with Scilla Option type.
uint8_t *wrapMapAccessResult(SAllocator &SA, bool Found,
                             const boost::any &StringOrMapVal,
                             const ScillaTypes::Typ *ValT) {
  if (Found) {
    // Wrap with "Some".
    // Allocate memory for "Some" = sizeOf (ValT) + 1 byte for Tag.
    int MemSize = ScillaTypes::Typ::sizeOf(ValT) + 1;
    auto Mem = reinterpret_cast<uint8_t *>(SA(MemSize));
    *Mem = ScillaTypes::Option_Some_Tag;
    // Create Scilla value from JSON and place it in Mem + 1.
    // i.e., We are constructing a Scilla "Some" object overall.
    if (ScillaTypes::Typ::isBoxed(ValT)) {
      if (ValT->m_t == ScillaTypes::Typ::Map_typ) {
        auto &MapVal =
            boost::any_cast<const ScillaParams::MapValueT &>(StringOrMapVal);
        auto Buf = SA(sizeof(ScillaParams::MapValueT));
        *reinterpret_cast<void **>(Mem + 1) =
            new (Buf) ScillaParams::MapValueT(std::move(MapVal));
      } else {
        auto StringVal = boost::any_cast<std::string>(StringOrMapVal);
        Json::Value ValJ = parseJSONString(StringVal);
        *reinterpret_cast<void **>(Mem + 1) =
            ScillaValues::fromJSON(SA, ValT, ValJ);
      }
    } else {
      auto StringVal = boost::any_cast<std::string>(StringOrMapVal);
      Json::Value ValJ = parseJSONString(StringVal);
      ScillaValues::fromJSONToMem(SA, (Mem + 1), MemSize - 1, ValT, ValJ);
    }
    return Mem;
  } else {
    // Wrap with Scilla object "None", which has only a Tag.
    int MemSize = 1;
    auto Mem = reinterpret_cast<uint8_t *>(SA(MemSize));
    *Mem = ScillaTypes::Option_None_Tag;
    return Mem;
  }
}

} // namespace

namespace ph = std::placeholders;

extern "C" {

void _print_scilla_val(const ScillaTypes::Typ *T, void *V) {
  ScillaStdout += ScillaValues::toString(true, T, V) + "\n";
}

void *_salloc(ScillaJIT *SJ, size_t size) { return SJ->sAlloc(size); }

void _out_of_gas() { CREATE_ERROR("Ran out of gas"); }

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
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  auto *Buf = SA(sizeof(ScillaTypes::Int256));
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
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  auto *Buf = SA(sizeof(ScillaTypes::Uint256));
  return new (Buf) ScillaTypes::Uint256(SafeUint256(Lhs) + SafeUint256(Rhs));
}

uint8_t *_eq_Int32(ScillaJIT *SJ, ScillaTypes::Int32 Lhs,
                   ScillaTypes::Int32 Rhs) {
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  return toScillaBool(SA, SafeInt32(&Lhs) == SafeInt32(&Rhs));
}

uint8_t *_eq_Int64(ScillaJIT *SJ, ScillaTypes::Int64 Lhs,
                   ScillaTypes::Int64 Rhs) {
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  return toScillaBool(SA, SafeInt64(&Lhs) == SafeInt64(&Rhs));
}

uint8_t *_eq_Int128(ScillaJIT *SJ, ScillaTypes::Int128 Lhs,
                    ScillaTypes::Int128 Rhs) {
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  return toScillaBool(SA, SafeInt128(&Lhs) == SafeInt128(&Rhs));
}

uint8_t *_eq_Int256(ScillaJIT *SJ, ScillaTypes::Int256 *Lhs,
                    ScillaTypes::Int256 *Rhs) {
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  return toScillaBool(SA, SafeInt256(Lhs) == SafeInt256(Rhs));
}

uint8_t *_eq_Uint32(ScillaJIT *SJ, ScillaTypes::Uint32 Lhs,
                    ScillaTypes::Uint32 Rhs) {
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  return toScillaBool(SA, SafeUint32(&Lhs) == SafeUint32(&Rhs));
}

uint8_t *_eq_Uint64(ScillaJIT *SJ, ScillaTypes::Uint64 Lhs,
                    ScillaTypes::Uint64 Rhs) {
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  return toScillaBool(SA, SafeUint64(&Lhs) == SafeUint64(&Rhs));
}

uint8_t *_eq_Uint128(ScillaJIT *SJ, ScillaTypes::Uint128 Lhs,
                     ScillaTypes::Uint128 Rhs) {
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  return toScillaBool(SA, SafeUint128(&Lhs) == SafeUint128(&Rhs));
}

uint8_t *_eq_Uint256(ScillaJIT *SJ, ScillaTypes::Uint256 *Lhs,
                     ScillaTypes::Uint256 *Rhs) {
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  return toScillaBool(SA, SafeUint256(Lhs) == SafeUint256(Rhs));
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

  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));

  if (SerializedIndices.empty()) {
    // Full access of state variable. No indexing.
    ASSERT_MSG(FetchVal, "Fetching full state variable, but FetchVal not set");
    if (MapValueAccess) {
      ASSERT(ScillaTypes::Typ::mapAccessType(T, NumIdx)->m_t ==
             ScillaTypes::Typ::Map_typ);
      auto &MapVal = boost::any_cast<ScillaParams::MapValueT &>(StringOrMapVal);
      auto Buf = SA(sizeof(ScillaParams::MapValueT));
      return new (Buf) ScillaParams::MapValueT(std::move(MapVal));
    } else {
      auto Val = boost::any_cast<std::string>(StringOrMapVal);
      Json::Value ValJ = parseJSONString(Val);
      return ScillaValues::fromJSON(SA, T, ValJ);
    }
  }

  // Map access. Returned value must be wrapped with Option / Bool.
  auto ValT = ScillaTypes::Typ::mapAccessType(T, NumIdx);
  if (FetchVal) {
    return wrapMapAccessResult(SA, Found, StringOrMapVal, ValT);
  } else {
    // We need to construct a Scilla Bool ADT based on "found".
    auto Mem = toScillaBool(SA, Found);
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
  const auto Mem = reinterpret_cast<uint8_t *>(SJ->sAlloc(ElSize * (I + 1)));
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

void _send(ScillaJIT *SJ, const ScillaTypes::Typ *T, void *V) {
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

void _event(ScillaJIT *SJ, const ScillaTypes::Typ *T, void *V) {
  auto J = ScillaValues::toJSON(T, V);
  SJ->TS->processEvent(J);
}

void _throw(ScillaJIT *SJ, const ScillaTypes::Typ *T, void *V) {
  (void)SJ;
  auto J = ScillaValues::toJSON(T, V);
  SCILLA_EXCEPTION("Exception thrown: " + J.toStyledString());
}

uint8_t *_eq_String(ScillaJIT *SJ, ScillaTypes::String Lhs,
                    ScillaTypes::String Rhs) {
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  auto B = (Lhs.m_length == Rhs.m_length) &&
           (std::memcmp(Lhs.m_buffer, Rhs.m_buffer, Lhs.m_length) == 0);
  return toScillaBool(SA, B);
}

uint8_t *_eq_ByStr(ScillaJIT *SJ, ScillaTypes::String Lhs,
                   ScillaTypes::String Rhs) {
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  auto B = (Lhs.m_length == Rhs.m_length) &&
           (std::memcmp(Lhs.m_buffer, Rhs.m_buffer, Lhs.m_length) == 0);
  return toScillaBool(SA, B);
}

uint8_t *_eq_ByStrX(ScillaJIT *SJ, int X, uint8_t *Lhs, uint8_t *Rhs) {
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  auto B = (std::memcmp(Lhs, Rhs, X) == 0);
  return toScillaBool(SA, B);
}

ScillaTypes::String _to_bystr(ScillaJIT *SJ, int X, uint8_t *Buf) {
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  ScillaTypes::String Ret;
  auto Mem = SA(X);
  std::memcpy(Mem, Buf, X);
  Ret.m_length = X;
  Ret.m_buffer = reinterpret_cast<uint8_t *>(Mem);
  return Ret;
}

void *_sha256hash(ScillaJIT *SJ, const ScillaTypes::Typ *T, void *V) {
  ByteVec Serialized;
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  auto *Buf = reinterpret_cast<uint8_t *>(SA(SHA256_DIGEST_LENGTH));
  ScillaValues::serializeForHashing(Serialized, T, V);
  SHA256(Serialized.data(), Serialized.size(), Buf);
  return Buf;
}

ScillaTypes::String _concat_String(ScillaJIT *SJ, ScillaTypes::String Lhs,
                                   ScillaTypes::String Rhs) {
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  ScillaTypes::String Ret;
  Ret.m_length = Lhs.m_length + Rhs.m_length;
  auto Buf = reinterpret_cast<uint8_t *>(SA(Ret.m_length));
  std::memcpy(Buf, Lhs.m_buffer, Lhs.m_length);
  std::memcpy(Buf + Lhs.m_length, Rhs.m_buffer, Rhs.m_length);
  Ret.m_buffer = Buf;
  return Ret;
}

void *_concat_ByStrX(ScillaJIT *SJ, int X1, uint8_t *Lhs, int X2,
                     uint8_t *Rhs) {
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  auto *Buf = reinterpret_cast<uint8_t *>(SA(X1 + X2));
  std::memcpy(Buf, Lhs, X1);
  std::memcpy(Buf + X1, Rhs, X2);
  return Buf;
}

void _accept(ScillaJIT *SJ) { SJ->TS->processAccept(); }

ScillaParams::MapValueT *_new_empty_map(ScillaJIT *SJ) {
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  auto Buf = SA(sizeof(ScillaParams::MapValueT));
  return new (Buf) ScillaParams::MapValueT;
}

ScillaParams::MapValueT *_put(ScillaJIT *SJ, const ScillaTypes::Typ *T,
                              ScillaParams::MapValueT *M, void *K, void *V) {
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  auto Buf = SA(sizeof(ScillaParams::MapValueT));
  auto NewM = new (Buf) ScillaParams::MapValueT(*M);

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

  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  bool Found = Itr != M->end();
  const boost::any Dummy;
  const boost::any &Val = Found ? Itr->second : Dummy;
  // Wrap with "Option".
  return wrapMapAccessResult(SA, Found, Val, ValT);
}

void *_contains(ScillaJIT *SJ, const ScillaTypes::Typ *T,
                const ScillaParams::MapValueT *M, const void *K) {
  ASSERT(T->m_t == ScillaTypes::Typ::Map_typ);
  auto *KeyT = T->m_sub.m_mapt->m_keyTyp;
  auto KeyS = ScillaValues::toJSON(KeyT, K).toStyledString();
  auto Itr = M->find(KeyS);
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  return toScillaBool(SA, Itr != M->end());
}

void *_remove(ScillaJIT *SJ, const ScillaTypes::Typ *T,
              const ScillaParams::MapValueT *M, const void *K) {
  ASSERT(T->m_t == ScillaTypes::Typ::Map_typ);
  auto *KeyT = T->m_sub.m_mapt->m_keyTyp;
  auto KeyS = ScillaValues::toJSON(KeyT, K).toStyledString();

  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, ph::_1));
  auto Buf = SA(sizeof(ScillaParams::MapValueT));
  auto NewM = new (Buf) ScillaParams::MapValueT(*M);

  NewM->erase(KeyS);
  return NewM;
}

ScillaTypes::Uint32 _size(const ScillaParams::MapValueT *M) {
  // Converting the size to string and then to SafeUint32
  // is the safest and simplest, but not the most efficient.
  return SafeUint32(std::to_string(M->size()));
}

} // end of extern "C".
