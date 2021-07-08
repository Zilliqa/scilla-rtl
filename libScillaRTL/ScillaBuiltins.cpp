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

#include "ObjManager.h"
#include "SRTL.h"
#include "SafeInt.h"
#include "ScillaBuiltins.h"
#include "ScillaExecImpl.h"
#include "ScillaRTL/Errors.h"
#include "ScillaRTL/Utils.h"
#include "ScillaTypes.h"
#include "ScillaValue.h"

namespace bmp = boost::multiprecision;

namespace ScillaRTL {

SafeUint128 TransitionState::getCurBal() const { return Balance; }

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

bool TransitionState::HasAccepted(void) const { return Accepted; }

Json::Value TransitionState::finalize(uint64_t GasRem) {
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
  OutJ["gas_remaining"] = std::to_string(GasRem);
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

} // namespace ScillaRTL

using namespace ScillaRTL;

namespace {

// A C++ wrapper to own the C object.
struct Secp256k1_Context {
  secp256k1_context *Ctx;
  Secp256k1_Context()
      : Ctx(secp256k1_context_create(SECP256K1_CONTEXT_VERIFY)) {}
  ~Secp256k1_Context() { secp256k1_context_destroy(Ctx); }
};

// TODO: This and its uses aren't thread-safe.
Secp256k1_Context SecpCtx;

// Serialize indices in a Scilla memory buffer.
void prepareStateAccessIndices(
    const std::vector<const ScillaTypes::Typ *> &KeyTypes, int NumIdx,
    const uint8_t *Indices, std::vector<std::string> &SerializedIndices) {
  for (int I = 0, Off = 0; I < NumIdx; I++) {
    auto *KT = KeyTypes[I];
    ASSERT(KT->m_t == ScillaTypes::Typ::Prim_typ ||
           KT->m_t == ScillaTypes::Typ::Address_typ);
    const void *VPtr;
    if (ScillaTypes::Typ::isBoxed(KT)) {
      VPtr = *reinterpret_cast<void *const *>(Indices + Off);
    } else {
      VPtr = reinterpret_cast<const void *>(Indices + Off);
    }
    SerializedIndices.emplace_back(
        serializeJSON(ScillaValues::toJSON(KT, VPtr)));
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
// Map values are "consumed" (moved) into the result.
uint8_t *wrapMapAccessResult(ObjManager &OM, bool Found,
                             std::any &StringOrMapVal,
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
        auto &MapVal = std::any_cast<ScillaParams::MapValueT &>(StringOrMapVal);
        *reinterpret_cast<void **>(Mem + 1) =
            OM.create<ScillaParams::MapValueT>((std::move(MapVal)));
      } else {
        auto StringVal = std::any_cast<std::string>(StringOrMapVal);
        Json::Value ValJ = parseJSONString(StringVal);
        *reinterpret_cast<void **>(Mem + 1) =
            ScillaValues::fromJSON(OM, ValT, ValJ);
      }
    } else {
      auto StringVal = std::any_cast<std::string>(StringOrMapVal);
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

void *fetchFieldHelper(ScillaExecImpl *SJ, const std::string &Addr,
                       const char *Name, const ScillaTypes::Typ *T,
                       int32_t NumIdx, const uint8_t *Indices,
                       int32_t FetchVal) {
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

  std::any StringOrMapVal;
  bool Found = false;
  ASSERT_MSG(SJ->SPs.fetchStateValue && SJ->SPs.fetchRemoteStateValue,
             "Incorrect ScillaParams provided to ScillaExecImpl");
  bool Succ;
  if (Addr.empty()) {
    Succ = SJ->SPs.fetchStateValue(SQ, StringOrMapVal, Found);
  } else {
    std::string Type;
    Succ = SJ->SPs.fetchRemoteStateValue(Addr, SQ, StringOrMapVal, Found, Type);
  }
  if (!Succ) {
    CREATE_ERROR("State fetch query failed for " + Addr + "." + SQ.Name);
  }

  if (SerializedIndices.empty()) {
    // Full access of state variable. No indexing.
    ASSERT_MSG(FetchVal, "Fetching full state variable, but FetchVal not set");
    if (MapValueAccess) {
      ASSERT(ScillaTypes::Typ::mapAccessType(T, NumIdx)->m_t ==
             ScillaTypes::Typ::Map_typ);
      auto &MapVal = std::any_cast<ScillaParams::MapValueT &>(StringOrMapVal);
      return reinterpret_cast<void *>(
          SJ->OM.create<ScillaParams::MapValueT>(std::move(MapVal)));
    } else {
      auto Val = std::any_cast<std::string>(StringOrMapVal);
      Json::Value ValJ = parseJSONString(Val);
      auto Res = ScillaValues::fromJSON(SJ->OM, T, ValJ);
      // If the query is for `_sender`'s  `_balance`, and we've accepted
      // money being sent in, then that must be subtracted and shown.
      if (std::string(Name) == "_balance" && !Addr.empty() &&
          Addr == SJ->TS->SenderAddr && SJ->TS->HasAccepted()) {
        // Assert that the value we're returning is indeed Uint128.
        ASSERT(T->m_t == ScillaTypes::Typ::Prim_typ &&
               T->m_sub.m_primt->m_pt == ScillaTypes::PrimTyp::Uint_typ &&
               T->m_sub.m_primt->m_detail.m_intBW ==
                   ScillaTypes::PrimTyp::Bits128);
        auto *SenderBal = reinterpret_cast<SafeUint128 *>(Res);
        *SenderBal = *SenderBal - SJ->TS->InAmount;
      }
      return Res;
    }
  }

  // Map access. Returned value must be wrapped with Option / Bool.
  auto ValT = ScillaTypes::Typ::mapAccessType(T, NumIdx);
  if (FetchVal) {
    return wrapMapAccessResult(SJ->OM, Found, StringOrMapVal, ValT);
  } else {
    // We need to construct a Scilla Bool ADT based on "found".
    auto Mem = toScillaBool(SJ->OM, Found);
    return Mem;
  }
}

template <unsigned X>
void *uintToByStrX(ScillaExecImpl *SJ, SafeInt<X, Unsigned> I) {
  auto Len = sizeof(SafeInt<X, Unsigned>);
  auto Mem = SJ->OM.allocBytes(Len);
  std::memcpy(Mem, &I, Len);
#if BOOST_ENDIAN_LITTLE_BYTE
  // Native integer is little-endian. Convert it to big-endian.
  ScillaValues::swapEndian(reinterpret_cast<uint8_t *>(Mem), Len);
#endif
  return Mem;
}

template <unsigned X>
void byStrXToUint(SafeInt<X, Unsigned> &UI, void *BX, int L) {
  uint8_t *UIAddr = reinterpret_cast<uint8_t *>(&UI);
  auto Len = static_cast<int>(sizeof(UI));
  ASSERT(L <= Len);
  std::memset(UIAddr, 0, Len - L);
  std::memcpy(UIAddr + (Len - L), BX, L);
#if BOOST_ENDIAN_LITTLE_BYTE
  // Native integer is little-endian. Convert it to big-endian.
  ScillaValues::swapEndian(UIAddr, Len);
#endif
}

template <unsigned Bits, SafeIntKind Signedness>
void *toIntHelper(ScillaExecImpl *SJ, const ScillaTypes::Typ *T, void *V) {
  static_assert(Bits == 32 || Bits == 64 || Bits == 128 || Bits == 256,
                "Invalid instantiation of toIntHelper");
  // TODO: Make this efficient, avoid decimal conversion
  std::string VStr = ScillaValues::toString(false /*PrintType */, T, V);
  try {
    constexpr size_t MemSize = (Bits / 8) + 1;
    SafeInt<Bits, Signedness> SIVal(VStr);
    auto *Mem = reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(MemSize));
    *Mem = ScillaTypes::Option_Some_Tag;
    static_assert(sizeof(SafeInt<Bits, Signedness>) == MemSize - 1,
                  "toIntHelper: Size of integer mismatch");
    new (Mem + 1) SafeInt<Bits, Signedness>(VStr);
    return Mem;
  } catch (const ScillaError &) {
    // Return None, which is just a tag.
    size_t MemSize = 1;
    auto *Mem = reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(MemSize));
    *Mem = ScillaTypes::Option_None_Tag;
    return Mem;
  }
}

// Since we directly pass SafeInt objects b/w Scilla and the RTL,
// it is essential that the type satisfies some properties.
template <unsigned Bits, SafeIntKind Signedness>
void SafeIntCompatibilityCheck(void) {
  static_assert(
      sizeof(SafeInt<Bits, Signedness>) == Bits / 8 &&
          std::is_trivially_copyable<SafeInt<Bits, Signedness>>::value &&
          std::is_standard_layout<SafeInt<Bits, Signedness>>::value,
      "SafeInt must be trivially copyable with standard layout, and sized the "
      "same as integer width, to perform exchanges with extern C functions.");
}
template __attribute__((unused)) void
SafeIntCompatibilityCheck<32, Signed>(void);
template __attribute__((unused)) void
SafeIntCompatibilityCheck<64, Signed>(void);
template __attribute__((unused)) void
SafeIntCompatibilityCheck<128, Signed>(void);
template __attribute__((unused)) void
SafeIntCompatibilityCheck<256, Signed>(void);
template __attribute__((unused)) void
SafeIntCompatibilityCheck<32, Unsigned>(void);
template __attribute__((unused)) void
SafeIntCompatibilityCheck<64, Unsigned>(void);
template __attribute__((unused)) void
SafeIntCompatibilityCheck<128, Unsigned>(void);
template __attribute__((unused)) void
SafeIntCompatibilityCheck<256, Unsigned>(void);

} // namespace

extern "C" {

void _print_scilla_val(ScillaExecImpl *SJ, const ScillaTypes::Typ *T, void *V) {
  SJ->ScillaStdout += ScillaValues::toString(true, T, V) + "\n";
}

void *_salloc(ScillaExecImpl *SJ, size_t size) {
  return SJ->OM.allocBytes(size);
}

void _out_of_gas() { SCILLA_EXCEPTION("Ran out of gas"); }

SafeInt32 _add_Int32(SafeInt32 Lhs, SafeInt32 Rhs) { return Lhs + Rhs; }

SafeInt64 _add_Int64(SafeInt64 Lhs, SafeInt64 Rhs) { return Lhs + Rhs; }

SafeInt128 _add_Int128(SafeInt128 Lhs, SafeInt128 Rhs) { return Lhs + Rhs; }

SafeInt256 *_add_Int256(ScillaExecImpl *SJ, SafeInt256 *Lhs, SafeInt256 *Rhs) {
  return SJ->OM.create<SafeInt256>(*Lhs + *Rhs);
}

SafeUint32 _add_Uint32(SafeUint32 Lhs, SafeUint32 Rhs) { return Lhs + Rhs; }

SafeUint64 _add_Uint64(SafeUint64 Lhs, SafeUint64 Rhs) { return Lhs + Rhs; }

SafeUint128 _add_Uint128(SafeUint128 Lhs, SafeUint128 Rhs) { return Lhs + Rhs; }

SafeUint256 *_add_Uint256(ScillaExecImpl *SJ, SafeUint256 *Lhs,
                          SafeUint256 *Rhs) {
  return SJ->OM.create<SafeUint256>(*Lhs + *Rhs);
}

SafeInt32 _sub_Int32(SafeInt32 Lhs, SafeInt32 Rhs) { return Lhs - Rhs; }

SafeInt64 _sub_Int64(SafeInt64 Lhs, SafeInt64 Rhs) { return Lhs - Rhs; }

SafeInt128 _sub_Int128(SafeInt128 Lhs, SafeInt128 Rhs) { return Lhs - Rhs; }

SafeInt256 *_sub_Int256(ScillaExecImpl *SJ, SafeInt256 *Lhs, SafeInt256 *Rhs) {
  return SJ->OM.create<SafeInt256>(*Lhs - *Rhs);
}

SafeUint32 _sub_Uint32(SafeUint32 Lhs, SafeUint32 Rhs) { return Lhs - Rhs; }

SafeUint64 _sub_Uint64(SafeUint64 Lhs, SafeUint64 Rhs) { return Lhs - Rhs; }

SafeUint128 _sub_Uint128(SafeUint128 Lhs, SafeUint128 Rhs) { return Lhs - Rhs; }

SafeUint256 *_sub_Uint256(ScillaExecImpl *SJ, SafeUint256 *Lhs,
                          SafeUint256 *Rhs) {
  return SJ->OM.create<SafeUint256>(*Lhs - *Rhs);
}

SafeInt32 _mul_Int32(SafeInt32 Lhs, SafeInt32 Rhs) { return Lhs * Rhs; }

SafeInt64 _mul_Int64(SafeInt64 Lhs, SafeInt64 Rhs) { return Lhs * Rhs; }

SafeInt128 _mul_Int128(SafeInt128 Lhs, SafeInt128 Rhs) { return Lhs * Rhs; }

SafeInt256 *_mul_Int256(ScillaExecImpl *SJ, SafeInt256 *Lhs, SafeInt256 *Rhs) {
  return SJ->OM.create<SafeInt256>(*Lhs * *Rhs);
}

SafeUint32 _mul_Uint32(SafeUint32 Lhs, SafeUint32 Rhs) { return Lhs * Rhs; }

SafeUint64 _mul_Uint64(SafeUint64 Lhs, SafeUint64 Rhs) { return Lhs * Rhs; }

SafeUint128 _mul_Uint128(SafeUint128 Lhs, SafeUint128 Rhs) { return Lhs * Rhs; }

SafeUint256 *_mul_Uint256(ScillaExecImpl *SJ, SafeUint256 *Lhs,
                          SafeUint256 *Rhs) {
  return SJ->OM.create<SafeUint256>(*Lhs * *Rhs);
}

SafeInt32 _div_Int32(SafeInt32 Lhs, SafeInt32 Rhs) { return Lhs / Rhs; }

SafeInt64 _div_Int64(SafeInt64 Lhs, SafeInt64 Rhs) { return Lhs / Rhs; }

SafeInt128 _div_Int128(SafeInt128 Lhs, SafeInt128 Rhs) { return Lhs / Rhs; }

SafeInt256 *_div_Int256(ScillaExecImpl *SJ, SafeInt256 *Lhs, SafeInt256 *Rhs) {
  return SJ->OM.create<SafeInt256>(*Lhs / *Rhs);
}

SafeUint32 _div_Uint32(SafeUint32 Lhs, SafeUint32 Rhs) { return Lhs / Rhs; }

SafeUint64 _div_Uint64(SafeUint64 Lhs, SafeUint64 Rhs) { return Lhs / Rhs; }

SafeUint128 _div_Uint128(SafeUint128 Lhs, SafeUint128 Rhs) { return Lhs / Rhs; }

SafeUint256 *_div_Uint256(ScillaExecImpl *SJ, SafeUint256 *Lhs,
                          SafeUint256 *Rhs) {
  return SJ->OM.create<SafeUint256>(*Lhs / *Rhs);
}

SafeInt32 _rem_Int32(SafeInt32 Lhs, SafeInt32 Rhs) { return Lhs % Rhs; }

SafeInt64 _rem_Int64(SafeInt64 Lhs, SafeInt64 Rhs) { return Lhs % Rhs; }

SafeInt128 _rem_Int128(SafeInt128 Lhs, SafeInt128 Rhs) { return Lhs % Rhs; }

SafeInt256 *_rem_Int256(ScillaExecImpl *SJ, SafeInt256 *Lhs, SafeInt256 *Rhs) {
  return SJ->OM.create<SafeInt256>(*Lhs % *Rhs);
}

SafeUint32 _rem_Uint32(SafeUint32 Lhs, SafeUint32 Rhs) { return Lhs % Rhs; }

SafeUint64 _rem_Uint64(SafeUint64 Lhs, SafeUint64 Rhs) { return Lhs % Rhs; }

SafeUint128 _rem_Uint128(SafeUint128 Lhs, SafeUint128 Rhs) { return Lhs % Rhs; }

SafeUint256 *_rem_Uint256(ScillaExecImpl *SJ, SafeUint256 *Lhs,
                          SafeUint256 *Rhs) {
  return SJ->OM.create<SafeUint256>(*Lhs % *Rhs);
}

uint8_t *_eq_Int32(ScillaExecImpl *SJ, SafeInt32 Lhs, SafeInt32 Rhs) {

  return toScillaBool(SJ->OM, Lhs == Rhs);
}

uint8_t *_eq_Int64(ScillaExecImpl *SJ, SafeInt64 Lhs, SafeInt64 Rhs) {

  return toScillaBool(SJ->OM, Lhs == Rhs);
}

uint8_t *_eq_Int128(ScillaExecImpl *SJ, SafeInt128 Lhs, SafeInt128 Rhs) {

  return toScillaBool(SJ->OM, Lhs == Rhs);
}

uint8_t *_eq_Int256(ScillaExecImpl *SJ, SafeInt256 *Lhs, SafeInt256 *Rhs) {

  return toScillaBool(SJ->OM, *Lhs == *Rhs);
}

uint8_t *_eq_Uint32(ScillaExecImpl *SJ, SafeUint32 Lhs, SafeUint32 Rhs) {

  return toScillaBool(SJ->OM, Lhs == Rhs);
}

uint8_t *_eq_Uint64(ScillaExecImpl *SJ, SafeUint64 Lhs, SafeUint64 Rhs) {

  return toScillaBool(SJ->OM, Lhs == Rhs);
}

uint8_t *_eq_Uint128(ScillaExecImpl *SJ, SafeUint128 Lhs, SafeUint128 Rhs) {

  return toScillaBool(SJ->OM, Lhs == Rhs);
}

uint8_t *_eq_Uint256(ScillaExecImpl *SJ, SafeUint256 *Lhs, SafeUint256 *Rhs) {

  return toScillaBool(SJ->OM, *Lhs == *Rhs);
}

uint8_t *_lt_Int32(ScillaExecImpl *SJ, SafeInt32 Lhs, SafeInt32 Rhs) {

  return toScillaBool(SJ->OM, Lhs < Rhs);
}

uint8_t *_lt_Int64(ScillaExecImpl *SJ, SafeInt64 Lhs, SafeInt64 Rhs) {

  return toScillaBool(SJ->OM, Lhs < Rhs);
}

uint8_t *_lt_Int128(ScillaExecImpl *SJ, SafeInt128 Lhs, SafeInt128 Rhs) {

  return toScillaBool(SJ->OM, Lhs < Rhs);
}

uint8_t *_lt_Int256(ScillaExecImpl *SJ, SafeInt256 *Lhs, SafeInt256 *Rhs) {

  return toScillaBool(SJ->OM, *Lhs < *Rhs);
}

uint8_t *_lt_Uint32(ScillaExecImpl *SJ, SafeUint32 Lhs, SafeUint32 Rhs) {

  return toScillaBool(SJ->OM, Lhs < Rhs);
}

uint8_t *_lt_Uint64(ScillaExecImpl *SJ, SafeUint64 Lhs, SafeUint64 Rhs) {

  return toScillaBool(SJ->OM, Lhs < Rhs);
}

uint8_t *_lt_Uint128(ScillaExecImpl *SJ, SafeUint128 Lhs, SafeUint128 Rhs) {

  return toScillaBool(SJ->OM, Lhs < Rhs);
}

uint8_t *_lt_Uint256(ScillaExecImpl *SJ, SafeUint256 *Lhs, SafeUint256 *Rhs) {

  return toScillaBool(SJ->OM, *Lhs < *Rhs);
}

void *_to_uint32(ScillaExecImpl *SJ, const ScillaTypes::Typ *T, void *Val) {
  return toIntHelper<32, Unsigned>(SJ, T, Val);
}

void *_to_uint64(ScillaExecImpl *SJ, const ScillaTypes::Typ *T, void *Val) {
  return toIntHelper<64, Unsigned>(SJ, T, Val);
}
void *_to_uint128(ScillaExecImpl *SJ, const ScillaTypes::Typ *T, void *Val) {
  return toIntHelper<128, Unsigned>(SJ, T, Val);
}
void *_to_uint256(ScillaExecImpl *SJ, const ScillaTypes::Typ *T, void *Val) {
  return toIntHelper<256, Unsigned>(SJ, T, Val);
}

void *_to_int32(ScillaExecImpl *SJ, const ScillaTypes::Typ *T, void *Val) {
  return toIntHelper<32, Signed>(SJ, T, Val);
}
void *_to_int64(ScillaExecImpl *SJ, const ScillaTypes::Typ *T, void *Val) {
  return toIntHelper<64, Signed>(SJ, T, Val);
}
void *_to_int128(ScillaExecImpl *SJ, const ScillaTypes::Typ *T, void *Val) {
  return toIntHelper<128, Signed>(SJ, T, Val);
}
void *_to_int256(ScillaExecImpl *SJ, const ScillaTypes::Typ *T, void *Val) {
  return toIntHelper<256, Signed>(SJ, T, Val);
}

void *_fetch_field(ScillaExecImpl *SJ, const char *Name,
                   const ScillaTypes::Typ *T, int32_t NumIdx,
                   const uint8_t *Indices, int32_t FetchVal) {

  if (std::string(Name) == "_balance") {
    // TODO: This is inefficient, It also allocates memory on every call.
    // A better idea: https://github.com/Zilliqa/scilla-compiler/issues/73.
    // On the other hand, due to https://github.com/Zilliqa/scilla/issues/1007,
    // we may want to get rid of this special handling altogether.
    return SJ->OM.create<SafeUint128>(SJ->TS->getCurBal());
  }
  return fetchFieldHelper(SJ, std::string(), Name, T, NumIdx, Indices,
                          FetchVal);
}

void *_fetch_remote_field(ScillaExecImpl *SJ,
                          const uint8_t AddrBytes[ScillaTypes::AddrByStr_Len],
                          const char *Name, const ScillaTypes::Typ *T,
                          int32_t NumIdx, const uint8_t *Indices,
                          int32_t FetchVal) {

  std::string Addr =
      ScillaValues::rawToHex(AddrBytes, ScillaTypes::AddrByStr_Len);
  return fetchFieldHelper(SJ, Addr, Name, T, NumIdx, Indices, FetchVal);
}

void _update_field(ScillaRTL::ScillaExecImpl *SJ, const char *Name,
                   const ScillaRTL::ScillaTypes::Typ *T, int32_t NumIdx,
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
               "Incorrect ScillaParams provided to ScillaExecImpl");
    auto ValT = ScillaTypes::Typ::mapAccessType(T, NumIdx);
    if (MapValueAccess) {
      ASSERT(ValT->m_t == ScillaTypes::Typ::Map_typ);
      auto &ValM = *reinterpret_cast<ScillaParams::MapValueT *>(Val);
      if (!SJ->SPs.updateStateValue(SQ, ValM)) {
        CREATE_ERROR("State update query failed for " + SQ.Name);
      }
    } else {
      auto ValS = serializeJSON(ScillaValues::toJSON(ValT, Val));
      if (!SJ->SPs.updateStateValue(SQ, ValS)) {
        CREATE_ERROR("State update query failed for " + SQ.Name);
      }
    }
  } else {
    ASSERT_MSG(!SerializedIndices.empty(),
               "Value deletion is possible only for indexed map access");
    std::any EmptyVal;
    if (!SJ->SPs.updateStateValue(SQ, EmptyVal)) {
      CREATE_ERROR("State update query failed for " + SQ.Name);
    }
  }
}

void *_to_nat(ScillaExecImpl *SJ, SafeUint32 UI) {

  auto I = *reinterpret_cast<unsigned *>(&UI);
  // A Zero object consists of only the i8 tag.
  // A Succ object consists of an i8 tag followed by a pointer.
  auto ElSize = 1 + sizeof(uint8_t *);
  // We allocate all objects in one for (1) fast allocation (2) locality.
  const auto Mem =
      reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(ElSize * (I + 1)));
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

void _send(ScillaExecImpl *SJ, const ScillaTypes::Typ *T, const void *V) {
  ASSERT_MSG(T->m_t == ScillaTypes::Typ::ADT_typ &&
                 std::string(T->m_sub.m_spladt->m_parent->m_tName) == "List",
             "_lengthof: List expected, got " + ScillaTypes::Typ::toString(T));
  ScillaValues::iterScillaList(
      T, V, [SJ](const ScillaTypes::Typ *ElmT, const void *ElmV) -> void {
        auto J = ScillaValues::toJSON(ElmT, ElmV);
        SJ->TS->processSend(J);
      });
}

uint64_t _literal_cost(const ScillaTypes::Typ *T, const void *V) {
  return ScillaValues::literalCost(T, V);
}

uint64_t _mapsortcost(const ScillaParams::MapValueT *M) {
  uint64_t Cost = 0;

  // First calculate cost for sub-maps (if any).
  for (auto &Itr : *M) {
    if (std::has_type<std::string>(Itr.second)) {
      break;
    }
    ASSERT(std::has_type<ScillaParams::MapValueT>(Itr.second));
    auto *SubM = &std::any_cast<const ScillaParams::MapValueT &>(Itr.second);
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

void _event(ScillaExecImpl *SJ, const ScillaTypes::Typ *T, const void *V) {
  auto J = ScillaValues::toJSON(T, V);
  SJ->TS->processEvent(J);
}

void _throw(ScillaExecImpl *SJ, const ScillaTypes::Typ *T, const void *V) {
  (void)SJ;
  auto J = ScillaValues::toJSON(T, V);
  SCILLA_EXCEPTION("Exception thrown: " + J.toStyledString());
}

uint8_t *_eq_String(ScillaExecImpl *SJ, ScillaTypes::String Lhs,
                    ScillaTypes::String Rhs) {

  auto B = (Lhs.m_length == Rhs.m_length) &&
           (std::memcmp(Lhs.m_buffer, Rhs.m_buffer, Lhs.m_length) == 0);
  return toScillaBool(SJ->OM, B);
}

uint8_t *_eq_ByStr(ScillaExecImpl *SJ, ScillaTypes::String Lhs,
                   ScillaTypes::String Rhs) {

  auto B = (Lhs.m_length == Rhs.m_length) &&
           (std::memcmp(Lhs.m_buffer, Rhs.m_buffer, Lhs.m_length) == 0);
  return toScillaBool(SJ->OM, B);
}

uint8_t *_eq_ByStrX(ScillaExecImpl *SJ, int X, const uint8_t *Lhs,
                    const uint8_t *Rhs) {

  auto B = (std::memcmp(Lhs, Rhs, X) == 0);
  return toScillaBool(SJ->OM, B);
}

uint8_t *_eq_BNum(ScillaExecImpl *SJ, const BigNum *Lhs, const BigNum *Rhs) {
  return toScillaBool(SJ->OM, *Lhs == *Rhs);
}

uint8_t *_lt_BNum(ScillaExecImpl *SJ, const BigNum *Lhs, const BigNum *Rhs) {
  return toScillaBool(SJ->OM, *Lhs < *Rhs);
}

BigNum *_badd(ScillaExecImpl *SJ, const BigNum *BVal,
              const ScillaTypes::Typ *ValT, const void *UIVal) {
  return SJ->OM.create<BigNum>(
      *BVal + BigNum(ScillaValues::toString(false, ValT, UIVal)));
}

SafeInt256 *_bsub(ScillaRTL::ScillaExecImpl *SJ, const BigNum *BVal1,
                  const BigNum *BVal2) {
  return SJ->OM.create<SafeInt256>((*BVal1 - *BVal2).toString());
}

ScillaTypes::String _to_bystr(ScillaExecImpl *SJ, int X, uint8_t *Buf) {

  ScillaTypes::String Ret;
  auto Mem = SJ->OM.allocBytes(X);
  std::memcpy(Mem, Buf, X);
  Ret.m_length = X;
  Ret.m_buffer = reinterpret_cast<uint8_t *>(Mem);
  return Ret;
}

ScillaTypes::String _to_string(ScillaExecImpl *SJ, const ScillaTypes::Typ *T,
                               const void *V) {
  auto J = ScillaValues::toString(false /* print type */, T, V);
  auto Mem = reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(J.length()));
  ScillaTypes::String Ret = {Mem, static_cast<int32_t>(J.length())};
  std::memcpy(Mem, J.data(), J.length());
  return Ret;
}

ScillaTypes::String _to_ascii(ScillaExecImpl *SJ, const uint8_t *S, int L) {

  if (!ScillaValues::validateStringLiteral(S, L)) {
    SCILLA_EXCEPTION("String literal not printable");
  }

  auto Mem = reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(L));
  ScillaTypes::String Ret = {Mem, static_cast<int32_t>(L)};
  std::memcpy(Mem, S, L);
  return Ret;
}

void *_bystr_to_bystrx(ScillaExecImpl *SJ, int X, ScillaTypes::String Str) {

  if (X != Str.m_length) {
    // Wrap with Scilla object "None", which has only a Tag.
    int MemSize = 1;
    auto Mem = reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(MemSize));
    *Mem = ScillaTypes::Option_None_Tag;
    return Mem;
  }
  // Wrap with "Some".
  // Allocate memory for "Some" = sizeOf (ValT) + 1 byte for Tag.
  int MemSize = X + 1;
  auto Mem = reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(MemSize));
  *Mem = ScillaTypes::Option_Some_Tag;
  // Create Scilla value from JSON and place it in Mem + 1.
  // i.e., We are constructing a Scilla "Some" object overall.
  std::memcpy(Mem + 1, Str.m_buffer, Str.m_length);
  return Mem;
}

uint8_t *_bech32_to_bystr20(ScillaExecImpl *SJ, ScillaTypes::String Prefix,
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
  auto Mem = reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(ProgBufSize + 1));
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

void *_bystr20_to_bech32(ScillaExecImpl *SJ, ScillaTypes::String Prefix,
                         uint8_t *Addr20) {

  std::string PrefixS(reinterpret_cast<const char *>(Prefix.m_buffer),
                      Prefix.m_length);

  if (PrefixS != "zil") {
    SCILLA_EXCEPTION("Prefix for bech32 address must be \"zil\"");
  }

  // Result required memory size: as specified by the bech32 header comment
  const int OutputBufSize = 73 + strlen("zil");
  const size_t ProgLen = 20;

  auto OutputBuf = reinterpret_cast<char *>(SJ->OM.allocBytes(OutputBufSize));
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
        SJ->OM.allocBytes(sizeof(ScillaTypes::String) + 1));
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

void *_uint32_to_bystrx(ScillaExecImpl *SJ, SafeUint32 I) {
  return uintToByStrX<32>(SJ, I);
}

void *_uint64_to_bystrx(ScillaExecImpl *SJ, SafeUint64 I) {
  return uintToByStrX<64>(SJ, I);
}

void *_uint128_to_bystrx(ScillaExecImpl *SJ, SafeUint128 I) {
  return uintToByStrX<128>(SJ, I);
}

void *_uint256_to_bystrx(ScillaExecImpl *SJ, SafeUint256 *I) {
  return uintToByStrX<256>(SJ, *I);
}

SafeUint32 _bystrx_to_uint32(ScillaExecImpl *, int X, void *BS) {
  SafeUint32 Ret;
  byStrXToUint(Ret, BS, X);
  return Ret;
}

SafeUint64 _bystrx_to_uint64(ScillaExecImpl *, int X, void *BS) {
  SafeUint64 Ret;
  byStrXToUint(Ret, BS, X);
  return Ret;
}

SafeUint128 _bystrx_to_uint128(ScillaExecImpl *, int X, void *BS) {
  SafeUint128 Ret;
  byStrXToUint(Ret, BS, X);
  return Ret;
}

SafeUint256 *_bystrx_to_uint256(ScillaExecImpl *SJ, int X, void *BS) {

  auto *Ret =
      reinterpret_cast<SafeUint256 *>(SJ->OM.allocBytes(sizeof(SafeUint256)));
  byStrXToUint(*Ret, BS, X);
  return Ret;
}

void *_sha256hash(ScillaExecImpl *SJ, const ScillaTypes::Typ *T, void *V) {
  ByteVec Serialized;
  auto *Buf =
      reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(SHA256_DIGEST_LENGTH));
  ScillaValues::serializeForHashing(Serialized, T, V);
  SHA256(Serialized.data(), Serialized.size(), Buf);
  return Buf;
}

void *_keccak256hash(ScillaExecImpl *SJ, const ScillaTypes::Typ *T, void *V) {
  ByteVec Serialized;
  const auto HashLength = sizeof(ethash_hash256);

  auto *Buf = reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(HashLength));
  ScillaValues::serializeForHashing(Serialized, T, V);
  auto H = ethash_keccak256(Serialized.data(), Serialized.size());
  std::memcpy(Buf, H.bytes, HashLength);
  return Buf;
}

void *_ripemd160hash(ScillaExecImpl *SJ, const ScillaTypes::Typ *T, void *V) {
  ByteVec Serialized;
  auto *Buf =
      reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(RIPEMD160_DIGEST_LENGTH));
  ScillaValues::serializeForHashing(Serialized, T, V);
  RIPEMD160(Serialized.data(), Serialized.size(), Buf);
  return Buf;
}

uint8_t *_schnorr_verify(ScillaExecImpl *SJ, uint8_t *PubK,
                         ScillaTypes::String Msg, uint8_t *Sign) {
  ASSERT(Schnorr::PUBKEY_COMPRESSED_SIZE_BYTES == Schnorr_Pubkey_Len);
  std::vector<uint8_t> PubK_Vec(PubK, PubK + Schnorr_Pubkey_Len);
  PubKey PK(PubK_Vec, 0);

  std::vector<uint8_t> Sign_Vec(Sign, Sign + Schnorr_Signature_Len);
  Signature S(Sign_Vec, 0);

  ByteVec M(Msg.m_buffer, Msg.m_buffer + Msg.m_length);

  auto Res = Schnorr::Verify(M, S, PK);

  return toScillaBool(SJ->OM, Res);
}

uint8_t *_schnorr_get_address(ScillaExecImpl *SJ, uint8_t *PubK) {

  static_assert(SHA256_DIGEST_LENGTH > Zilliqa_Address_Len,
                "Can't extract Zilliqa address from hash of public key");

  // Hash PubK and extract the lower Zilliqa_Address_Len bytes.
  uint8_t *Buf =
      reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(SHA256_DIGEST_LENGTH));
  SHA256(PubK, Schnorr_Pubkey_Len, Buf);
  return (Buf + (SHA256_DIGEST_LENGTH - Zilliqa_Address_Len));
}

uint8_t *_ecdsa_verify(ScillaExecImpl *SJ, uint8_t *PubK,
                       ScillaTypes::String Msg, uint8_t *Sign) {
  secp256k1_pubkey PK;
  if (!secp256k1_ec_pubkey_parse(SecpCtx.Ctx, &PK, PubK, Ecdsa_Pubkey_Len)) {
    SCILLA_EXCEPTION("Error parsing ECDSA public key");
  }
  uint8_t MsgHash[SHA256_DIGEST_LENGTH];
  secp256k1_ecdsa_signature Sig;
  SHA256(Msg.m_buffer, Msg.m_length, MsgHash);
  if (!secp256k1_ecdsa_signature_parse_compact(SecpCtx.Ctx, &Sig, Sign)) {
    SCILLA_EXCEPTION("Error parsing ECDSA signature");
  }

  auto Res = static_cast<bool>(
      secp256k1_ecdsa_verify(SecpCtx.Ctx, &Sig, MsgHash, &PK));

  return toScillaBool(SJ->OM, Res);
}

uint8_t *_ecdsa_recover_pk(ScillaExecImpl *SJ, ScillaTypes::String Msg,
                           uint8_t *Sign, SafeUint32 RecID) {

  auto RI = *reinterpret_cast<unsigned *>(&RecID);

  uint8_t MsgHash[SHA256_DIGEST_LENGTH];
  SHA256(Msg.m_buffer, Msg.m_length, MsgHash);

  secp256k1_ecdsa_recoverable_signature S;
  if (!secp256k1_ecdsa_recoverable_signature_parse_compact(SecpCtx.Ctx, &S,
                                                           Sign, RI)) {
    SCILLA_EXCEPTION("Error parsing recoverable signature");
  }

  secp256k1_pubkey PK;
  if (!secp256k1_ecdsa_recover(SecpCtx.Ctx, &PK, &S, MsgHash)) {
    SCILLA_EXCEPTION("Error recovering public key from ECDSA signature");
  }

  uint8_t *Buf = reinterpret_cast<uint8_t *>(
      SJ->OM.allocBytes(Ecdsa_Pubkey_Uncompressed_Len));
  size_t BufLen = Ecdsa_Pubkey_Uncompressed_Len;
  secp256k1_ec_pubkey_serialize(SecpCtx.Ctx, Buf, &BufLen, &PK,
                                SECP256K1_EC_UNCOMPRESSED);
  if (BufLen != Ecdsa_Pubkey_Uncompressed_Len) {
    SCILLA_EXCEPTION(
        "Error deserializing to uncompressed public key. Length mistmatch.");
  }

  return Buf;
}

ScillaTypes::String _concat_String(ScillaExecImpl *SJ, ScillaTypes::String Lhs,
                                   ScillaTypes::String Rhs) {

  ScillaTypes::String Ret;
  Ret.m_length = Lhs.m_length + Rhs.m_length;
  auto Buf = reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(Ret.m_length));
  std::memcpy(Buf, Lhs.m_buffer, Lhs.m_length);
  std::memcpy(Buf + Lhs.m_length, Rhs.m_buffer, Rhs.m_length);
  Ret.m_buffer = Buf;
  return Ret;
}

ScillaTypes::String _concat_ByStr(ScillaExecImpl *SJ, ScillaTypes::String Lhs,
                                  ScillaTypes::String Rhs) {
  return _concat_String(SJ, Lhs, Rhs);
}

void *_concat_ByStrX(ScillaExecImpl *SJ, int X1, uint8_t *Lhs, int X2,
                     uint8_t *Rhs) {

  auto *Buf = reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(X1 + X2));
  std::memcpy(Buf, Lhs, X1);
  std::memcpy(Buf + X1, Rhs, X2);
  return Buf;
}

SafeUint32 _strlen_String(ScillaTypes::String Str) {
  uint32_t Len = static_cast<uint32_t>(Str.m_length);
  return SafeUint32(Len);
}

SafeUint32 _strlen_ByStr(ScillaTypes::String Str) {
  return _strlen_String(Str);
}

ScillaTypes::String _substr_String(ScillaExecImpl *SJ, ScillaTypes::String Str,
                                   SafeUint32 Pos, SafeUint32 Len) {

  auto PosUI = *reinterpret_cast<unsigned *>(&Pos);
  auto LenUI = *reinterpret_cast<unsigned *>(&Len);

  if (PosUI + LenUI > (unsigned)Str.m_length) {
    SCILLA_EXCEPTION("Invalid arguments to substr");
  }

  ScillaTypes::String Ret;
  Ret.m_length = LenUI;
  auto Buf = reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(LenUI));
  std::memcpy(Buf, Str.m_buffer + PosUI, LenUI);
  Ret.m_buffer = Buf;

  return Ret;
}

ScillaTypes::String _substr_ByStr(ScillaExecImpl *SJ, ScillaTypes::String Str,
                                  SafeUint32 Pos, SafeUint32 Len) {
  return _substr_String(SJ, Str, Pos, Len);
}

void _accept(ScillaExecImpl *SJ) { SJ->TS->processAccept(); }

ScillaParams::MapValueT *_new_empty_map(ScillaExecImpl *SJ) {
  return SJ->OM.create<ScillaParams::MapValueT>();
}

void *_new_bnum(ScillaExecImpl *SJ, ScillaTypes::String Val) {
  return SJ->OM.create<BigNum>(std::string(Val));
}

void *_read_blockchain(ScillaExecImpl *SJ, ScillaTypes::String VName) {
  auto VNameS = std::string(VName);
  if (VNameS == "BLOCKNUMBER") {
    return SJ->OM.create<BigNum>(SJ->TS->CurBlock);
  } else {
    CREATE_ERROR("Unknown blockchain read request");
  }
}

ScillaParams::MapValueT *_put(ScillaExecImpl *SJ, const ScillaTypes::Typ *T,
                              ScillaParams::MapValueT *M, void *K, void *V) {
  auto NewM = SJ->OM.create<ScillaParams::MapValueT>(*M);

  switch (T->m_t) {
  case ScillaTypes::Typ::Map_typ: {
    auto KT = T->m_sub.m_mapt->m_keyTyp;
    auto KeyS = serializeJSON(ScillaValues::toJSON(KT, K));

    auto VT = T->m_sub.m_mapt->m_valTyp;
    switch (VT->m_t) {
    case ScillaTypes::Typ::Map_typ:
      NewM->operator[](KeyS) = *reinterpret_cast<ScillaParams::MapValueT *>(V);
      break;
    default: {
      NewM->operator[](KeyS) = serializeJSON(ScillaValues::toJSON(VT, V));
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

void *_get(ScillaExecImpl *SJ, const ScillaTypes::Typ *T,
           const ScillaParams::MapValueT *M, const void *K) {

  ASSERT(T->m_t == ScillaTypes::Typ::Map_typ);
  auto *KeyT = T->m_sub.m_mapt->m_keyTyp;
  auto *ValT = T->m_sub.m_mapt->m_valTyp;
  auto KeyS = serializeJSON(ScillaValues::toJSON(KeyT, K));
  auto Itr = M->find(KeyS);

  bool Found = Itr != M->end();
  std::any Dummy;
  std::any Val = Found ? Itr->second : Dummy;
  // Wrap with "Option".
  return wrapMapAccessResult(SJ->OM, Found, Val, ValT);
}

void *_contains(ScillaExecImpl *SJ, const ScillaTypes::Typ *T,
                const ScillaParams::MapValueT *M, const void *K) {
  ASSERT(T->m_t == ScillaTypes::Typ::Map_typ);
  auto *KeyT = T->m_sub.m_mapt->m_keyTyp;
  auto KeyS = serializeJSON(ScillaValues::toJSON(KeyT, K));
  auto Itr = M->find(KeyS);

  return toScillaBool(SJ->OM, Itr != M->end());
}

void *_remove(ScillaExecImpl *SJ, const ScillaTypes::Typ *T,
              const ScillaParams::MapValueT *M, const void *K) {
  ASSERT(T->m_t == ScillaTypes::Typ::Map_typ);
  auto *KeyT = T->m_sub.m_mapt->m_keyTyp;
  auto KeyS = serializeJSON(ScillaValues::toJSON(KeyT, K));

  auto NewM = SJ->OM.create<ScillaParams::MapValueT>(*M);
  NewM->erase(KeyS);
  return NewM;
}

SafeUint32 _size(const ScillaParams::MapValueT *M) {
  uint64_t S64 = M->size();
  uint32_t S32 = static_cast<uint32_t>(S64);
  if (static_cast<uint64_t>(S32) != S64) {
    CREATE_ERROR("Builtin size: Unable to fit size in Uint32 value");
  }

  return SafeUint32(S32);
}

void *_map_to_list(ScillaExecImpl *SJ, const ScillaTypes::Typ *T,
                   const ScillaParams::MapValueT *M) {

  ASSERT(T->m_t == ScillaTypes::Typ::Map_typ);
  auto *KeyT = T->m_sub.m_mapt->m_keyTyp;
  auto *ValT = T->m_sub.m_mapt->m_valTyp;
  auto PairAllocSize =
      1 + ScillaTypes::Typ::sizeOf(KeyT) + ScillaTypes::Typ::sizeOf(ValT);
  // We don't bother to find the type descriptor for the list we're building
  // because we know that it's `List (Pair ...)`. The element type being an
  // ADT itself guarantees us that it's boxed, and hence a pointer.
  auto ListAllocSize = 1 + sizeof(void *) + sizeof(void *);

  auto *Nil = reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(ListAllocSize));
  *Nil = ScillaTypes::List_Nil_Tag;

  void *NextListElm = Nil;
  for (const auto Itr : *M) {
    uint8_t *PairP =
        reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(PairAllocSize));
    auto NextElm = PairP;
    *NextElm = static_cast<uint8_t>(0); // The Tag for Pair is always 0.
    NextElm++;

    // Build the Scilla value for Key.
    ASSERT(KeyT->m_t == ScillaTypes::Typ::Prim_typ ||
           KeyT->m_t == ScillaTypes::Typ::Address_typ);
    Json::Value KeyJ = parseJSONString(Itr.first);
    if (ScillaTypes::Typ::isBoxed(KeyT)) {
      *reinterpret_cast<void **>(NextElm) =
          ScillaValues::fromJSON(SJ->OM, KeyT, KeyJ);
    } else {
      ScillaValues::fromJSONToMem(SJ->OM, NextElm,
                                  ScillaTypes::Typ::sizeOf(KeyT), KeyT, KeyJ);
    }
    NextElm += ScillaTypes::Typ::sizeOf(KeyT);

    // Build the Scilla value for Val.
    if (ScillaTypes::Typ::isBoxed(ValT)) {
      if (ValT->m_t == ScillaTypes::Typ::Map_typ) {
        auto &MapVal =
            std::any_cast<const ScillaParams::MapValueT &>(Itr.second);
        *reinterpret_cast<void **>(NextElm) =
            SJ->OM.create<ScillaParams::MapValueT>(MapVal);
      } else {
        auto StringVal = std::any_cast<std::string>(Itr.second);
        Json::Value ValJ = parseJSONString(StringVal);
        *reinterpret_cast<void **>(NextElm) =
            ScillaValues::fromJSON(SJ->OM, ValT, ValJ);
      }
    } else {
      auto StringVal = std::any_cast<std::string>(Itr.second);
      Json::Value ValJ = parseJSONString(StringVal);
      ScillaValues::fromJSONToMem(SJ->OM, NextElm,
                                  ScillaTypes::Typ::sizeOf(ValT), ValT, ValJ);
    }
    auto *Cons = reinterpret_cast<uint8_t *>(SJ->OM.allocBytes(ListAllocSize));
    *Cons = ScillaTypes::List_Cons_Tag;
    *reinterpret_cast<void **>(Cons + 1) = PairP;
    *reinterpret_cast<void **>(Cons + 1 + sizeof(void *)) = NextListElm;
    NextListElm = Cons;
  }

  return NextListElm;
}

uint64_t _lengthof(const ScillaTypes::Typ *T, const void *V) {
  switch (T->m_t) {
  case ScillaTypes::Typ::Map_typ: {
    auto *M = reinterpret_cast<const ScillaParams::MapValueT *>(V);
    return M->size();
  }
  case ScillaTypes::Typ::ADT_typ: {
    ASSERT_MSG(std::string(T->m_sub.m_spladt->m_parent->m_tName) == "List",
               "_lengthof: List expected, got " +
                   (std::string(T->m_sub.m_spladt->m_parent->m_tName)));
    uint64_t Len = 0;
    ScillaValues::iterScillaList(
        T, V, [&Len](const ScillaTypes::Typ *, const void *) { Len++; });
    return Len;
  }
  default:
    CREATE_ERROR("_lengthof: Invalid input value");
  }
}

} // end of extern "C".
