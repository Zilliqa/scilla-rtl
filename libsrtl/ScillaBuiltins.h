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

#include "ScillaVM/ScillaExec.h"

#include "SafeInt.h"
#include "ScillaTypes.h"
#include "ScillaValue.h"

namespace ScillaVM {

// Values that begin with a transition and change as it executes.
class TransitionState {
  SafeUint128 Balance;
  SafeUint128 InAmount;
  uint64_t *GasRemPtr;
  bool Accepted;
  // Contains the output messages of executing a transition.
  Json::Value OutJ;

  void processMessage(std::string OutType, Json::Value &M);

public:
  TransitionState(std::string Balance_P, std::string InAmount_P,
                  uint64_t *GasRemPtr_P)
      : Balance(Balance_P), InAmount(InAmount_P), GasRemPtr(GasRemPtr_P),
        Accepted(false), OutJ(Json::objectValue){};

  void processSend(Json::Value &M);
  void processEvent(Json::Value &M);
  void processAccept();

  // Returns the output of the transition execution. Destroys *this*.
  Json::Value finalize();
};

} // end of namespace ScillaVM

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"

extern "C" {

// Print Scilla value @V whose type is described by @T to ScillaStdout .
void _print_scilla_val(const ScillaVM::ScillaTypes::Typ *T, void *V);

// Allocate memory for JIT code owned by @SJ
void *_salloc(ScillaVM::ScillaExecImpl *SJ, size_t size);

// Handler for out-of-gas during execution
void _out_of_gas();

// Fetch field @Name whose type is @T. For map accesses, FetchVal can be false,
// to indicate that the return value is a Scilla `Bool`, indicating found or
// not.
void *_fetch_field(ScillaVM::ScillaExecImpl *SJ, const char *Name,
                   const ScillaVM::ScillaTypes::Typ *T, int32_t NumIdx,
                   const uint8_t *Indices, int32_t FetchVal);

// Same as _fetch_field, but with an address parameter.
void *
_fetch_remote_field(ScillaVM::ScillaExecImpl *SJ,
                    const uint8_t Addr[ScillaVM::ScillaTypes::AddrByStr_Len],
                    const char *Name, const ScillaVM::ScillaTypes::Typ *T,
                    int32_t NumIdx, const uint8_t *Indices, int32_t FetchVal);

// Update field @Name whose type is @T with value @Val. If Val is nullptr,
// then this is a map update and the keys must be deleted.
void _update_field(ScillaVM::ScillaExecImpl *SJ, const char *Name,
                   const ScillaVM::ScillaTypes::Typ *, int32_t NumIdx,
                   const uint8_t *Indices, void *Val);

// Integer addition builtins
ScillaVM::ScillaTypes::Int32 _add_Int32(ScillaVM::ScillaTypes::Int32,
                                        ScillaVM::ScillaTypes::Int32);
ScillaVM::ScillaTypes::Int64 _add_Int64(ScillaVM::ScillaTypes::Int64,
                                        ScillaVM::ScillaTypes::Int64);
ScillaVM::ScillaTypes::Int128 _add_Int128(ScillaVM::ScillaTypes::Int128,
                                          ScillaVM::ScillaTypes::Int128);
ScillaVM::ScillaTypes::Int256 *_add_Int256(ScillaVM::ScillaExecImpl *SJ,
                                           ScillaVM::ScillaTypes::Int256 *Lhs,
                                           ScillaVM::ScillaTypes::Int256 *Rhs);

ScillaVM::ScillaTypes::Uint32 _add_Uint32(ScillaVM::ScillaTypes::Uint32,
                                          ScillaVM::ScillaTypes::Uint32);
ScillaVM::ScillaTypes::Uint64 _add_Uint64(ScillaVM::ScillaTypes::Uint64,
                                          ScillaVM::ScillaTypes::Uint64);
ScillaVM::ScillaTypes::Uint128 _add_Uint128(ScillaVM::ScillaTypes::Uint128,
                                            ScillaVM::ScillaTypes::Uint128);
ScillaVM::ScillaTypes::Uint256 *
_add_Uint256(ScillaVM::ScillaExecImpl *SJ, ScillaVM::ScillaTypes::Uint256 *Lhs,
             ScillaVM::ScillaTypes::Uint256 *Rhs);

uint8_t *_eq_Int32(ScillaVM::ScillaExecImpl *SJ,
                   ScillaVM::ScillaTypes::Int32 Lhs,
                   ScillaVM::ScillaTypes::Int32 Rhs);

uint8_t *_eq_Int64(ScillaVM::ScillaExecImpl *SJ,
                   ScillaVM::ScillaTypes::Int64 Lhs,
                   ScillaVM::ScillaTypes::Int64 Rhs);

uint8_t *_eq_Int128(ScillaVM::ScillaExecImpl *SJ,
                    ScillaVM::ScillaTypes::Int128 Lhs,
                    ScillaVM::ScillaTypes::Int128 Rhs);

uint8_t *_eq_Int256(ScillaVM::ScillaExecImpl *SJ,
                    ScillaVM::ScillaTypes::Int256 *Lhs,
                    ScillaVM::ScillaTypes::Int256 *Rhs);

uint8_t *_eq_Uint32(ScillaVM::ScillaExecImpl *SJ,
                    ScillaVM::ScillaTypes::Uint32 Lhs,
                    ScillaVM::ScillaTypes::Uint32 Rhs);

uint8_t *_eq_Uint64(ScillaVM::ScillaExecImpl *SJ,
                    ScillaVM::ScillaTypes::Uint64 Lhs,
                    ScillaVM::ScillaTypes::Uint64 Rhs);

uint8_t *_eq_Uint128(ScillaVM::ScillaExecImpl *SJ,
                     ScillaVM::ScillaTypes::Uint128 Lhs,
                     ScillaVM::ScillaTypes::Uint128 Rhs);

uint8_t *_eq_Uint256(ScillaVM::ScillaExecImpl *SJ,
                     ScillaVM::ScillaTypes::Uint256 *Lhs,
                     ScillaVM::ScillaTypes::Uint256 *Rhs);

void *_to_nat(ScillaVM::ScillaExecImpl *SJ, ScillaVM::ScillaTypes::Uint32 UI);

void _send(ScillaVM::ScillaExecImpl *SJ, const ScillaVM::ScillaTypes::Typ *T,
           const void *V);

void _event(ScillaVM::ScillaExecImpl *SJ, const ScillaVM::ScillaTypes::Typ *T,
            const void *V);

void _throw(ScillaVM::ScillaExecImpl *SJ, const ScillaVM::ScillaTypes::Typ *T,
            const void *V);

uint8_t *_eq_String(ScillaVM::ScillaExecImpl *SJ,
                    ScillaVM::ScillaTypes::String Lhs,
                    ScillaVM::ScillaTypes::String Rhs);

uint8_t *_eq_ByStr(ScillaVM::ScillaExecImpl *SJ,
                   ScillaVM::ScillaTypes::String Lhs,
                   ScillaVM::ScillaTypes::String Rhs);

uint8_t *_eq_ByStrX(ScillaVM::ScillaExecImpl *SJ, int X, uint8_t *Lhs,
                    uint8_t *Rhs);

ScillaVM::ScillaTypes::String _to_bystr(ScillaVM::ScillaExecImpl *SJ, int X,
                                        uint8_t *Buf);

ScillaVM::ScillaTypes::String _to_string(ScillaVM::ScillaExecImpl *SJ,
                                         const ScillaVM::ScillaTypes::Typ *T,
                                         const void *V);

ScillaVM::ScillaTypes::String _to_ascii(ScillaVM::ScillaExecImpl *SJ,
                                        const uint8_t *S, int L);

void *_bystr_to_bystrx(ScillaVM::ScillaExecImpl *SJ, int X,
                       ScillaVM::ScillaTypes::String Str);

uint8_t *_bech32_to_bystr20(ScillaVM::ScillaExecImpl *SJ,
                            ScillaVM::ScillaTypes::String Prefix,
                            ScillaVM::ScillaTypes::String Addr);
void *_bystr20_to_bech32(ScillaVM::ScillaExecImpl *SJ,
                         ScillaVM::ScillaTypes::String Prefix, uint8_t *Addr20);

void *_uint32_to_bystrx(ScillaVM::ScillaExecImpl *SJ,
                        ScillaVM::ScillaTypes::Uint32 I);

void *_uint64_to_bystrx(ScillaVM::ScillaExecImpl *SJ,
                        ScillaVM::ScillaTypes::Uint64 I);

void *_uint128_to_bystrx(ScillaVM::ScillaExecImpl *SJ,
                         ScillaVM::ScillaTypes::Uint128 I);

void *_uint256_to_bystrx(ScillaVM::ScillaExecImpl *SJ,
                         ScillaVM::ScillaTypes::Uint256 *I);

ScillaVM::ScillaTypes::Uint32 _bystrx_to_uint32(ScillaVM::ScillaExecImpl *,
                                                int X, void *BS);
ScillaVM::ScillaTypes::Uint64 _bystrx_to_uint64(ScillaVM::ScillaExecImpl *,
                                                int X, void *BS);
ScillaVM::ScillaTypes::Uint128 _bystrx_to_uint128(ScillaVM::ScillaExecImpl *,
                                                  int X, void *BS);
ScillaVM::ScillaTypes::Uint256 *_bystrx_to_uint256(ScillaVM::ScillaExecImpl *SJ,
                                                   int X, void *BS);

void *_sha256hash(ScillaVM::ScillaExecImpl *SJ,
                  const ScillaVM::ScillaTypes::Typ *T, void *V);

void *_keccak256hash(ScillaVM::ScillaExecImpl *SJ,
                     const ScillaVM::ScillaTypes::Typ *T, void *V);

void *_ripemd160hash(ScillaVM::ScillaExecImpl *SJ,
                     const ScillaVM::ScillaTypes::Typ *T, void *V);

uint8_t *_schnorr_verify(ScillaVM::ScillaExecImpl *SJ, uint8_t *PubK,
                         ScillaVM::ScillaTypes::String Msg, uint8_t *Sign);

uint8_t *_schnorr_get_address(ScillaVM::ScillaExecImpl *SJ, uint8_t *PubK);

uint8_t *_ecdsa_verify(ScillaVM::ScillaExecImpl *SJ, uint8_t *PubK,
                       ScillaVM::ScillaTypes::String Msg, uint8_t *Sign);

uint8_t *_ecdsa_recover_pk(ScillaVM::ScillaExecImpl *SJ,
                           ScillaVM::ScillaTypes::String Msg, uint8_t *Sign,
                           ScillaVM::ScillaTypes::Uint32 RecID);

ScillaVM::ScillaTypes::String _concat_String(ScillaVM::ScillaExecImpl *SJ,
                                             ScillaVM::ScillaTypes::String Lhs,
                                             ScillaVM::ScillaTypes::String Rhs);

ScillaVM::ScillaTypes::String _concat_ByStr(ScillaVM::ScillaExecImpl *SJ,
                                            ScillaVM::ScillaTypes::String Lhs,
                                            ScillaVM::ScillaTypes::String Rhs);

void *_concat_ByStrX(ScillaVM::ScillaExecImpl *SJ, int X1, uint8_t *Lhs, int X2,
                     uint8_t *Rhs);

ScillaVM::ScillaTypes::String _substr_String(ScillaVM::ScillaExecImpl *SJ,
                                             ScillaVM::ScillaTypes::String Str,
                                             ScillaVM::ScillaTypes::Uint32 Pos,
                                             ScillaVM::ScillaTypes::Uint32 Len);

ScillaVM::ScillaTypes::String _substr_ByStr(ScillaVM::ScillaExecImpl *SJ,
                                            ScillaVM::ScillaTypes::String Str,
                                            ScillaVM::ScillaTypes::Uint32 Pos,
                                            ScillaVM::ScillaTypes::Uint32 Len);

ScillaVM::ScillaTypes::Uint32 _strlen_String(ScillaVM::ScillaTypes::String Str);
ScillaVM::ScillaTypes::Uint32 _strlen_ByStr(ScillaVM::ScillaTypes::String Str);

void _accept(ScillaVM::ScillaExecImpl *SJ);

ScillaVM::ScillaParams::MapValueT *_new_empty_map(ScillaVM::ScillaExecImpl *SJ);
ScillaVM::ScillaParams::MapValueT *_put(ScillaVM::ScillaExecImpl *SJ,
                                        const ScillaVM::ScillaTypes::Typ *T,
                                        ScillaVM::ScillaParams::MapValueT *M,
                                        void *K, void *V);
void *_get(ScillaVM::ScillaExecImpl *SJ, const ScillaVM::ScillaTypes::Typ *T,
           const ScillaVM::ScillaParams::MapValueT *M, const void *K);
void *_contains(ScillaVM::ScillaExecImpl *SJ,
                const ScillaVM::ScillaTypes::Typ *T,
                const ScillaVM::ScillaParams::MapValueT *M, const void *K);

void *_remove(ScillaVM::ScillaExecImpl *SJ, const ScillaVM::ScillaTypes::Typ *T,
              const ScillaVM::ScillaParams::MapValueT *M, const void *K);

// Scilla builtin _size : The size of a map.
ScillaVM::ScillaTypes::Uint32 _size(const ScillaVM::ScillaParams::MapValueT *M);

uint64_t _literal_cost(const ScillaVM::ScillaTypes::Typ *T, const void *V);
uint64_t _mapsortcost(const ScillaVM::ScillaParams::MapValueT *M);

} // extern "C"
#pragma clang diagnostic pop
