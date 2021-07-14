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

#pragma once

/* This file declares functions that are callable from an executing
 * Scilla contract. It is not intended to be called from other C++
 * code, and is therefore not a public header. */

#include "ScillaRTL/ScillaExec.h"

#include "SafeInt.h"
#include "ScillaTypes.h"
#include "ScillaValue.h"

namespace ScillaRTL {

// Values that begin with a transition and change as it executes.
class TransitionState {
  SafeUint128 Balance;
  bool Accepted;
  // Contains the output messages of executing a transition.
  Json::Value OutJ;

  void processMessage(std::string OutType, Json::Value &M);

public:
  TransitionState(const std::string &Balance_P, const std::string &InAmount_P,
                  uint64_t CurBlock_P, const std::string &SenderAddr_P)
      : Balance(Balance_P), Accepted(false), OutJ(Json::objectValue),
        CurBlock(CurBlock_P), SenderAddr(SenderAddr_P), InAmount(InAmount_P){};

  void processSend(Json::Value &M);
  void processEvent(Json::Value &M);
  void processAccept();
  SafeUint128 getCurBal() const;
  bool HasAccepted() const;
  const uint64_t CurBlock;
  const std::string SenderAddr;
  const SafeUint128 InAmount;

  // Returns the output of the transition execution. Destroys *this*.
  Json::Value finalize(uint64_t GasRem);
};

} // end of namespace ScillaRTL

extern "C" {

// Print Scilla value @V whose type is described by @T to ScillaStdout .
void _print_scilla_val(ScillaRTL::ScillaExecImpl *SJ,
                       const ScillaRTL::ScillaTypes::Typ *T, void *V);

// Allocate memory for JIT code owned by @SJ
void *_salloc(ScillaRTL::ScillaExecImpl *SJ, size_t size);

// Handler for out-of-gas during execution
void _out_of_gas();

// Fetch field @Name whose type is @T. For map accesses, FetchVal can be false,
// to indicate that the return value is a Scilla `Bool`, indicating found or
// not.
void *_fetch_field(ScillaRTL::ScillaExecImpl *SJ, const char *Name,
                   const ScillaRTL::ScillaTypes::Typ *T, int32_t NumIdx,
                   const uint8_t *Indices, int32_t FetchVal);

// Same as _fetch_field, but with an address parameter.
void *
_fetch_remote_field(ScillaRTL::ScillaExecImpl *SJ,
                    const uint8_t Addr[ScillaRTL::ScillaTypes::AddrByStr_Len],
                    const char *Name, const ScillaRTL::ScillaTypes::Typ *T,
                    int32_t NumIdx, const uint8_t *Indices, int32_t FetchVal);

// Update field @Name whose type is @T with value @Val. If Val is nullptr,
// then this is a map update and the keys must be deleted.
void _update_field(ScillaRTL::ScillaExecImpl *SJ, const char *Name,
                   const ScillaRTL::ScillaTypes::Typ *, int32_t NumIdx,
                   const uint8_t *Indices, void *Val);

// Integer addition builtins
ScillaRTL::SafeInt32 _add_Int32(ScillaRTL::SafeInt32, ScillaRTL::SafeInt32);
ScillaRTL::SafeInt64 _add_Int64(ScillaRTL::SafeInt64, ScillaRTL::SafeInt64);
ScillaRTL::SafeInt128 _add_Int128(ScillaRTL::SafeInt128, ScillaRTL::SafeInt128);
ScillaRTL::SafeInt256 *_add_Int256(ScillaRTL::ScillaExecImpl *SJ,
                                   ScillaRTL::SafeInt256 *Lhs,
                                   ScillaRTL::SafeInt256 *Rhs);

ScillaRTL::SafeUint32 _add_Uint32(ScillaRTL::SafeUint32, ScillaRTL::SafeUint32);
ScillaRTL::SafeUint64 _add_Uint64(ScillaRTL::SafeUint64, ScillaRTL::SafeUint64);
ScillaRTL::SafeUint128 _add_Uint128(ScillaRTL::SafeUint128,
                                    ScillaRTL::SafeUint128);
ScillaRTL::SafeUint256 *_add_Uint256(ScillaRTL::ScillaExecImpl *SJ,
                                     ScillaRTL::SafeUint256 *Lhs,
                                     ScillaRTL::SafeUint256 *Rhs);

// Integer subtraction builtins
ScillaRTL::SafeInt32 _sub_Int32(ScillaRTL::SafeInt32, ScillaRTL::SafeInt32);
ScillaRTL::SafeInt64 _sub_Int64(ScillaRTL::SafeInt64, ScillaRTL::SafeInt64);
ScillaRTL::SafeInt128 _sub_Int128(ScillaRTL::SafeInt128, ScillaRTL::SafeInt128);
ScillaRTL::SafeInt256 *_sub_Int256(ScillaRTL::ScillaExecImpl *SJ,
                                   ScillaRTL::SafeInt256 *Lhs,
                                   ScillaRTL::SafeInt256 *Rhs);

ScillaRTL::SafeUint32 _sub_Uint32(ScillaRTL::SafeUint32, ScillaRTL::SafeUint32);
ScillaRTL::SafeUint64 _sub_Uint64(ScillaRTL::SafeUint64, ScillaRTL::SafeUint64);
ScillaRTL::SafeUint128 _sub_Uint128(ScillaRTL::SafeUint128,
                                    ScillaRTL::SafeUint128);
ScillaRTL::SafeUint256 *_sub_Uint256(ScillaRTL::ScillaExecImpl *SJ,
                                     ScillaRTL::SafeUint256 *Lhs,
                                     ScillaRTL::SafeUint256 *Rhs);

// Integer multiplication builtins
ScillaRTL::SafeInt32 _mul_Int32(ScillaRTL::SafeInt32, ScillaRTL::SafeInt32);
ScillaRTL::SafeInt64 _mul_Int64(ScillaRTL::SafeInt64, ScillaRTL::SafeInt64);
ScillaRTL::SafeInt128 _mul_Int128(ScillaRTL::SafeInt128, ScillaRTL::SafeInt128);
ScillaRTL::SafeInt256 *_mul_Int256(ScillaRTL::ScillaExecImpl *SJ,
                                   ScillaRTL::SafeInt256 *Lhs,
                                   ScillaRTL::SafeInt256 *Rhs);

ScillaRTL::SafeUint32 _mul_Uint32(ScillaRTL::SafeUint32, ScillaRTL::SafeUint32);
ScillaRTL::SafeUint64 _mul_Uint64(ScillaRTL::SafeUint64, ScillaRTL::SafeUint64);
ScillaRTL::SafeUint128 _mul_Uint128(ScillaRTL::SafeUint128,
                                    ScillaRTL::SafeUint128);
ScillaRTL::SafeUint256 *_mul_Uint256(ScillaRTL::ScillaExecImpl *SJ,
                                     ScillaRTL::SafeUint256 *Lhs,
                                     ScillaRTL::SafeUint256 *Rhs);

// Integer division builtins
ScillaRTL::SafeInt32 _div_Int32(ScillaRTL::SafeInt32, ScillaRTL::SafeInt32);
ScillaRTL::SafeInt64 _div_Int64(ScillaRTL::SafeInt64, ScillaRTL::SafeInt64);
ScillaRTL::SafeInt128 _div_Int128(ScillaRTL::SafeInt128, ScillaRTL::SafeInt128);
ScillaRTL::SafeInt256 *_div_Int256(ScillaRTL::ScillaExecImpl *SJ,
                                   ScillaRTL::SafeInt256 *Lhs,
                                   ScillaRTL::SafeInt256 *Rhs);

ScillaRTL::SafeUint32 _div_Uint32(ScillaRTL::SafeUint32, ScillaRTL::SafeUint32);
ScillaRTL::SafeUint64 _div_Uint64(ScillaRTL::SafeUint64, ScillaRTL::SafeUint64);
ScillaRTL::SafeUint128 _div_Uint128(ScillaRTL::SafeUint128,
                                    ScillaRTL::SafeUint128);
ScillaRTL::SafeUint256 *_div_Uint256(ScillaRTL::ScillaExecImpl *SJ,
                                     ScillaRTL::SafeUint256 *Lhs,
                                     ScillaRTL::SafeUint256 *Rhs);

// Integer reminder builtins
ScillaRTL::SafeInt32 _rem_Int32(ScillaRTL::SafeInt32, ScillaRTL::SafeInt32);
ScillaRTL::SafeInt64 _rem_Int64(ScillaRTL::SafeInt64, ScillaRTL::SafeInt64);
ScillaRTL::SafeInt128 _rem_Int128(ScillaRTL::SafeInt128, ScillaRTL::SafeInt128);
ScillaRTL::SafeInt256 *_rem_Int256(ScillaRTL::ScillaExecImpl *SJ,
                                   ScillaRTL::SafeInt256 *Lhs,
                                   ScillaRTL::SafeInt256 *Rhs);

ScillaRTL::SafeUint32 _rem_Uint32(ScillaRTL::SafeUint32, ScillaRTL::SafeUint32);
ScillaRTL::SafeUint64 _rem_Uint64(ScillaRTL::SafeUint64, ScillaRTL::SafeUint64);
ScillaRTL::SafeUint128 _rem_Uint128(ScillaRTL::SafeUint128,
                                    ScillaRTL::SafeUint128);

ScillaRTL::SafeUint256 *_mul_Uint256(ScillaRTL::ScillaExecImpl *SJ,
                                     ScillaRTL::SafeUint256 *Lhs,
                                     ScillaRTL::SafeUint256 *Rhs);

ScillaRTL::SafeUint32 _isqrt_Uint32(ScillaRTL::SafeUint32 Lhs);

ScillaRTL::SafeUint64 _isqrt_Uint64(ScillaRTL::SafeUint64 Lhs);

ScillaRTL::SafeUint128 _isqrt_Uint128(ScillaRTL::SafeUint128 Lhs);

ScillaRTL::SafeUint256 *_isqrt_Uint256(ScillaRTL::ScillaExecImpl *SJ,
                                       ScillaRTL::SafeUint256 *Lhs);

ScillaRTL::SafeInt32 _pow_Int32(ScillaRTL::SafeInt32 Lhs, uint32_t P);

ScillaRTL::SafeInt64 _pow_Int64(ScillaRTL::SafeInt64 Lhs, uint32_t P);

ScillaRTL::SafeInt128 _pow_Int128(ScillaRTL::SafeInt128 Lhs, uint32_t P);

ScillaRTL::SafeInt256 *_pow_Int256(ScillaRTL::ScillaExecImpl *SJ,
                                   ScillaRTL::SafeInt256 *Lhs, uint32_t P);

ScillaRTL::SafeUint32 _pow_Uint32(ScillaRTL::SafeUint32 Lhs, uint32_t P);

ScillaRTL::SafeUint64 _pow_Uint64(ScillaRTL::SafeUint64 Lhs, uint32_t P);

ScillaRTL::SafeUint128 _pow_Uint128(ScillaRTL::SafeUint128 Lhs, uint32_t P);

ScillaRTL::SafeUint256 *_pow_Uint256(ScillaRTL::ScillaExecImpl *SJ,
                                     ScillaRTL::SafeUint256 *Lhs, uint32_t P);

uint8_t *_eq_Int32(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeInt32 Lhs,
                   ScillaRTL::SafeInt32 Rhs);

uint8_t *_eq_Int64(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeInt64 Lhs,
                   ScillaRTL::SafeInt64 Rhs);

uint8_t *_eq_Int128(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeInt128 Lhs,
                    ScillaRTL::SafeInt128 Rhs);

uint8_t *_eq_Int256(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeInt256 *Lhs,
                    ScillaRTL::SafeInt256 *Rhs);

uint8_t *_eq_Uint32(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeUint32 Lhs,
                    ScillaRTL::SafeUint32 Rhs);

uint8_t *_eq_Uint64(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeUint64 Lhs,
                    ScillaRTL::SafeUint64 Rhs);

uint8_t *_eq_Uint128(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeUint128 Lhs,
                     ScillaRTL::SafeUint128 Rhs);

uint8_t *_eq_Uint256(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeUint256 *Lhs,
                     ScillaRTL::SafeUint256 *Rhs);

uint8_t *_lt_Int32(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeInt32 Lhs,
                   ScillaRTL::SafeInt32 Rhs);

uint8_t *_lt_Int64(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeInt64 Lhs,
                   ScillaRTL::SafeInt64 Rhs);

uint8_t *_lt_Int128(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeInt128 Lhs,
                    ScillaRTL::SafeInt128 Rhs);

uint8_t *_lt_Int256(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeInt256 *Lhs,
                    ScillaRTL::SafeInt256 *Rhs);

uint8_t *_lt_Uint32(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeUint32 Lhs,
                    ScillaRTL::SafeUint32 Rhs);

uint8_t *_lt_Uint64(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeUint64 Lhs,
                    ScillaRTL::SafeUint64 Rhs);

uint8_t *_lt_Uint128(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeUint128 Lhs,
                     ScillaRTL::SafeUint128 Rhs);

uint8_t *_lt_Uint256(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeUint256 *Lhs,
                     ScillaRTL::SafeUint256 *Rhs);

void *_to_uint32(ScillaRTL::ScillaExecImpl *SJ,
                 const ScillaRTL::ScillaTypes::Typ *T, void *Val);
void *_to_uint64(ScillaRTL::ScillaExecImpl *SJ,
                 const ScillaRTL::ScillaTypes::Typ *T, void *Val);
void *_to_uint128(ScillaRTL::ScillaExecImpl *SJ,
                  const ScillaRTL::ScillaTypes::Typ *T, void *Val);
void *_to_uint256(ScillaRTL::ScillaExecImpl *SJ,
                  const ScillaRTL::ScillaTypes::Typ *T, void *Val);

void *_to_int32(ScillaRTL::ScillaExecImpl *SJ,
                const ScillaRTL::ScillaTypes::Typ *T, void *Val);
void *_to_int64(ScillaRTL::ScillaExecImpl *SJ,
                const ScillaRTL::ScillaTypes::Typ *T, void *Val);
void *_to_int128(ScillaRTL::ScillaExecImpl *SJ,
                 const ScillaRTL::ScillaTypes::Typ *T, void *Val);
void *_to_int256(ScillaRTL::ScillaExecImpl *SJ,
                 const ScillaRTL::ScillaTypes::Typ *T, void *Val);

void *_to_nat(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeUint32 UI);

void _send(ScillaRTL::ScillaExecImpl *SJ, const ScillaRTL::ScillaTypes::Typ *T,
           const void *V);

void _event(ScillaRTL::ScillaExecImpl *SJ, const ScillaRTL::ScillaTypes::Typ *T,
            const void *V);

void _throw(ScillaRTL::ScillaExecImpl *SJ, const ScillaRTL::ScillaTypes::Typ *T,
            const void *V);

uint8_t *_eq_String(ScillaRTL::ScillaExecImpl *SJ,
                    ScillaRTL::ScillaTypes::String Lhs,
                    ScillaRTL::ScillaTypes::String Rhs);

uint8_t *_eq_ByStr(ScillaRTL::ScillaExecImpl *SJ,
                   ScillaRTL::ScillaTypes::String Lhs,
                   ScillaRTL::ScillaTypes::String Rhs);

uint8_t *_eq_ByStrX(ScillaRTL::ScillaExecImpl *SJ, int X, const uint8_t *Lhs,
                    const uint8_t *Rhs);

uint8_t *_eq_BNum(ScillaRTL::ScillaExecImpl *SJ, const ScillaRTL::BigNum *Lhs,
                  const ScillaRTL::BigNum *Rhs);

uint8_t *_lt_BNum(ScillaRTL::ScillaExecImpl *SJ, const ScillaRTL::BigNum *Lhs,
                  const ScillaRTL::BigNum *Rhs);

ScillaRTL::BigNum *_badd(ScillaRTL::ScillaExecImpl *SJ,
                         const ScillaRTL::BigNum *BVal,
                         const ScillaRTL::ScillaTypes::Typ *ValT,
                         const void *UIVal);

ScillaRTL::SafeInt256 *_bsub(ScillaRTL::ScillaExecImpl *SJ,
                             const ScillaRTL::BigNum *BVal1,
                             const ScillaRTL::BigNum *BVal2);

ScillaRTL::ScillaTypes::String _to_bystr(ScillaRTL::ScillaExecImpl *SJ, int X,
                                         uint8_t *Buf);

ScillaRTL::ScillaTypes::String _to_string(ScillaRTL::ScillaExecImpl *SJ,
                                          const ScillaRTL::ScillaTypes::Typ *T,
                                          const void *V);

ScillaRTL::ScillaTypes::String _to_ascii(ScillaRTL::ScillaExecImpl *SJ,
                                         const uint8_t *S, int L);

void *_bystr_to_bystrx(ScillaRTL::ScillaExecImpl *SJ, int X,
                       ScillaRTL::ScillaTypes::String Str);

uint8_t *_bech32_to_bystr20(ScillaRTL::ScillaExecImpl *SJ,
                            ScillaRTL::ScillaTypes::String Prefix,
                            ScillaRTL::ScillaTypes::String Addr);
void *_bystr20_to_bech32(ScillaRTL::ScillaExecImpl *SJ,
                         ScillaRTL::ScillaTypes::String Prefix,
                         uint8_t *Addr20);

void *_uint32_to_bystrx(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeUint32 I);

void *_uint64_to_bystrx(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::SafeUint64 I);

void *_uint128_to_bystrx(ScillaRTL::ScillaExecImpl *SJ,
                         ScillaRTL::SafeUint128 I);

void *_uint256_to_bystrx(ScillaRTL::ScillaExecImpl *SJ,
                         ScillaRTL::SafeUint256 *I);

ScillaRTL::SafeUint32 _bystrx_to_uint32(ScillaRTL::ScillaExecImpl *, int X,
                                        void *BS);
ScillaRTL::SafeUint64 _bystrx_to_uint64(ScillaRTL::ScillaExecImpl *, int X,
                                        void *BS);
ScillaRTL::SafeUint128 _bystrx_to_uint128(ScillaRTL::ScillaExecImpl *, int X,
                                          void *BS);
ScillaRTL::SafeUint256 *_bystrx_to_uint256(ScillaRTL::ScillaExecImpl *SJ, int X,
                                           void *BS);

void *_sha256hash(ScillaRTL::ScillaExecImpl *SJ,
                  const ScillaRTL::ScillaTypes::Typ *T, void *V);

void *_keccak256hash(ScillaRTL::ScillaExecImpl *SJ,
                     const ScillaRTL::ScillaTypes::Typ *T, void *V);

void *_ripemd160hash(ScillaRTL::ScillaExecImpl *SJ,
                     const ScillaRTL::ScillaTypes::Typ *T, void *V);

uint8_t *_schnorr_verify(ScillaRTL::ScillaExecImpl *SJ, uint8_t *PubK,
                         ScillaRTL::ScillaTypes::String Msg, uint8_t *Sign);

uint8_t *_schnorr_get_address(ScillaRTL::ScillaExecImpl *SJ, uint8_t *PubK);

uint8_t *_ecdsa_verify(ScillaRTL::ScillaExecImpl *SJ, uint8_t *PubK,
                       ScillaRTL::ScillaTypes::String Msg, uint8_t *Sign);

uint8_t *_ecdsa_recover_pk(ScillaRTL::ScillaExecImpl *SJ,
                           ScillaRTL::ScillaTypes::String Msg, uint8_t *Sign,
                           ScillaRTL::SafeUint32 RecID);

ScillaRTL::ScillaTypes::String
_concat_String(ScillaRTL::ScillaExecImpl *SJ,
               ScillaRTL::ScillaTypes::String Lhs,
               ScillaRTL::ScillaTypes::String Rhs);

ScillaRTL::ScillaTypes::String
_concat_ByStr(ScillaRTL::ScillaExecImpl *SJ, ScillaRTL::ScillaTypes::String Lhs,
              ScillaRTL::ScillaTypes::String Rhs);

void *_concat_ByStrX(ScillaRTL::ScillaExecImpl *SJ, int X1, uint8_t *Lhs,
                     int X2, uint8_t *Rhs);

ScillaRTL::ScillaTypes::String
_strrev_String(ScillaRTL::ScillaExecImpl *SJ,
               ScillaRTL::ScillaTypes::String Lhs);

ScillaRTL::ScillaTypes::String
_strrev_ByStr(ScillaRTL::ScillaExecImpl *SJ,
              ScillaRTL::ScillaTypes::String Lhs);

void *_strrev_ByStrX(ScillaRTL::ScillaExecImpl *SJ, int X1, uint8_t *Lhs);

ScillaRTL::ScillaTypes::String
_substr_String(ScillaRTL::ScillaExecImpl *SJ,
               ScillaRTL::ScillaTypes::String Str, ScillaRTL::SafeUint32 Pos,
               ScillaRTL::SafeUint32 Len);

ScillaRTL::ScillaTypes::String _substr_ByStr(ScillaRTL::ScillaExecImpl *SJ,
                                             ScillaRTL::ScillaTypes::String Str,
                                             ScillaRTL::SafeUint32 Pos,
                                             ScillaRTL::SafeUint32 Len);

ScillaRTL::SafeUint32 _strlen_String(ScillaRTL::ScillaTypes::String Str);
ScillaRTL::SafeUint32 _strlen_ByStr(ScillaRTL::ScillaTypes::String Str);

void _accept(ScillaRTL::ScillaExecImpl *SJ);

void *_new_bnum(ScillaRTL::ScillaExecImpl *SJ,
                ScillaRTL::ScillaTypes::String Val);

void *_read_blockchain(ScillaRTL::ScillaExecImpl *SJ,
                       ScillaRTL::ScillaTypes::String VName);

ScillaRTL::ScillaParams::MapValueT *
_new_empty_map(ScillaRTL::ScillaExecImpl *SJ);
ScillaRTL::ScillaParams::MapValueT *_put(ScillaRTL::ScillaExecImpl *SJ,
                                         const ScillaRTL::ScillaTypes::Typ *T,
                                         ScillaRTL::ScillaParams::MapValueT *M,
                                         void *K, void *V);
void *_get(ScillaRTL::ScillaExecImpl *SJ, const ScillaRTL::ScillaTypes::Typ *T,
           const ScillaRTL::ScillaParams::MapValueT *M, const void *K);
void *_contains(ScillaRTL::ScillaExecImpl *SJ,
                const ScillaRTL::ScillaTypes::Typ *T,
                const ScillaRTL::ScillaParams::MapValueT *M, const void *K);

void *_remove(ScillaRTL::ScillaExecImpl *SJ,
              const ScillaRTL::ScillaTypes::Typ *T,
              const ScillaRTL::ScillaParams::MapValueT *M, const void *K);

// Scilla builtin _size : The size of a map.
ScillaRTL::SafeUint32 _size(const ScillaRTL::ScillaParams::MapValueT *M);

// Convert a map to a list of (Pair (KeyT) (ValT))
void *_map_to_list(ScillaRTL::ScillaExecImpl *SJ,
                   const ScillaRTL::ScillaTypes::Typ *T,
                   const ScillaRTL::ScillaParams::MapValueT *M);

uint64_t _literal_cost(const ScillaRTL::ScillaTypes::Typ *T, const void *V);
uint64_t _mapsortcost(const ScillaRTL::ScillaParams::MapValueT *M);
uint64_t _lengthof(const ScillaRTL::ScillaTypes::Typ *T, const void *V);

void *_dynamic_typecast(ScillaRTL::ScillaExecImpl *SJ, const void *V,
                        const ScillaRTL::ScillaTypes::Typ *T);

} // extern "C"
