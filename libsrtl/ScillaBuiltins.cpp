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

#include <functional>
#include <iostream>
#include <string>

#include "SafeInt.h"
#include "ScillaBuiltins.h"
#include "ScillaTypes.h"
#include "ScillaVM/Errors.h"
#include "ScillaVM/SRTL.h"
#include "ScillaValue.h"
#include "Utils.h"

namespace ScillaVM {

std::vector<ScillaFunctionsMap> getAllScillaBuiltins(void) {
  // clang-format off
  ScillaFunctionsMap m[] = {
    {"_print_scilla_val", (void *) _print_scilla_val},
    {"_salloc", (void *) _salloc},
    {"_add_Int32", (void *) _add_Int32},
    {"_add_Int64", (void *) _add_Int64},
    {"_add_Int128", (void *) _add_Int128},
    {"_add_Int256", (void *) _add_Int256},
    {"_add_Uint32", (void *) _add_Uint32},
    {"_add_Uint64", (void *) _add_Uint64},
    {"_add_Uint128", (void *) _add_Uint128},
    {"_add_Uint256", (void *) _add_Uint256},
  };
  // clang-format on

  return std::vector<ScillaFunctionsMap>(std::begin(m), std::end(m));
}

} // namespace ScillaVM

using namespace ScillaVM;

namespace {

// Serialize indices in a Scilla memory buffer.
void prepareStateAccessIndices(
    const std::vector<const ScillaTypes::Typ *> KeyTypes, int NumIdx,
    const uint8_t *Indices, std::vector<std::string> SerializedIndices) {
  for (int I = 0, Off = 0; I < NumIdx; I++) {
    auto *KT = KeyTypes[I];
    const void *VPtr;
    if (ScillaTypes::Typ::isBoxed(KT)) {
      ASSERT_MSG(false, "Key type must be primitive, cannot be boxed");
      VPtr = *reinterpret_cast<void **>(Indices[Off]);
    } else {
      VPtr = reinterpret_cast<void *>(Indices[Off]);
    }
    SerializedIndices.emplace_back(
        ScillaValues::toJSON(KT, VPtr).toStyledString());
    Off += ScillaTypes::Typ::sizeOf(KT);
  }
}
} // namespace

extern "C" {

void _print_scilla_val(const ScillaTypes::Typ *T, void *V) {
  ScillaStdout += ScillaValues::toString(true, T, V) + "\n";
}

void *_salloc(ScillaJIT *SJ, size_t size) { return SJ->sAlloc(size); }

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

void _add_Int256(ScillaTypes::Int256 *Result, ScillaTypes::Int256 *Lhs,
                 ScillaTypes::Int256 *Rhs) {
  *Result = SafeInt256(Lhs) + SafeInt256(Rhs);
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

void _add_Uint256(ScillaTypes::Uint256 *Result, ScillaTypes::Uint256 *Lhs,
                  ScillaTypes::Uint256 *Rhs) {
  *Result = SafeUint256(Lhs) + SafeUint256(Rhs);
}

void *_fetch_field(ScillaJIT *SJ, const char *Name, const ScillaTypes::Typ *T,
                   int32_t NumIdx, const uint8_t *Indices, int32_t FetchVal) {
  std::vector<const ScillaTypes::Typ *> KeyTypes;
  std::vector<std::string> SerializedIndices;

  ScillaTypes::Typ::getMapKeyTypes(T, KeyTypes);
  ASSERT((int)KeyTypes.size() >= NumIdx);
  prepareStateAccessIndices(KeyTypes, NumIdx, Indices, SerializedIndices);

  ScillaParams::StateQuery SQ = {std::string(Name), (int)KeyTypes.size(),
                                 SerializedIndices, !FetchVal};

  std::string Val;
  bool Found;
  ASSERT_MSG(SJ->SPs.fetchStateValue,
             "Incorrect ScillaParams provided to ScillaJIT");
  if (!SJ->SPs.fetchStateValue(SQ, Val, Found)) {
    CREATE_ERROR("State fetch query failed for " + SQ.Name);
  }

  using namespace std::placeholders;
  SAllocator SA(std::bind(&ScillaJIT::sAlloc, SJ, _1));

  if (SerializedIndices.empty()) {
    ASSERT_MSG(FetchVal, "Fetching full state variable, but FetchVal not set");
    // Full access of state variable. No indexing.
    Json::Value ValJ = parseJSONString(Val);
    return ScillaValues::fromJSON(SA, T, ValJ);
  }

  // Map access. Returned value must be wrapped with Option / Bool.
  if (FetchVal) {
    // Wrap with "Option".
    if (Found) {
      // Wrap with "Some".
      Json::Value ValJ = parseJSONString(Val);
      auto ValT = ScillaTypes::Typ::mapAccessType(T, NumIdx);
      // Allocate memory for "Some" = sizeOf (ValT) + 1 byte for Tag.
      int MemSize = ScillaTypes::Typ::sizeOf(ValT) + 1;
      auto Mem = reinterpret_cast<uint8_t *>(SA(MemSize));
      *Mem = ScillaTypes::Option_Some_Tag;
      // Create Scilla value from JSON and place it in Mem + 1.
      // i.e., We are constructing a Scilla "Some" object overall.
      if (ScillaTypes::Typ::isBoxed(ValT)) {
        *reinterpret_cast<void **>(Mem + 1) =
            ScillaValues::fromJSON(SA, ValT, ValJ);
      } else {
        ScillaValues::fromJSONToMem(SA, reinterpret_cast<void *>(Mem + 1), 0,
                                    ValT, ValJ);
      }
      return reinterpret_cast<void *>(Mem);
    } else {
      // Wrap with Scilla object "None", which has only a Tag.
      int MemSize = 1;
      auto Mem = reinterpret_cast<uint8_t *>(SA(MemSize));
      *Mem = ScillaTypes::Option_None_Tag;
      return reinterpret_cast<void *>(Mem);
    }
  } else {
    // We need to construct a Scilla Bool ADT based on "found".
    int MemSize = 1;
    auto Mem = reinterpret_cast<uint8_t *>(SA(MemSize));
    if (Found) {
      *Mem = ScillaTypes::Bool_True_Tag;
    } else {
      *Mem = ScillaTypes::Bool_False_Tag;
    }
    return reinterpret_cast<void *>(Mem);
  }
}

void _update_field(ScillaVM::ScillaJIT *SJ, const char *Name,
                   const ScillaVM::ScillaTypes::Typ *T, int32_t NumIdx,
                   const uint8_t *Indices, void *Val) {

  std::vector<const ScillaTypes::Typ *> KeyTypes;
  std::vector<std::string> SerializedIndices;

  ScillaTypes::Typ::getMapKeyTypes(T, KeyTypes);
  ASSERT((int)KeyTypes.size() >= NumIdx);
  prepareStateAccessIndices(KeyTypes, NumIdx, Indices, SerializedIndices);

  ScillaParams::StateQuery SQ = {std::string(Name), (int)KeyTypes.size(),
                                 SerializedIndices, Val == nullptr};

  std::string ValS;
  if (Val) {
    ValS = ScillaValues::toJSON(T, Val).toStyledString();
  } else {
    ASSERT_MSG(!SerializedIndices.empty(),
               "Value deletion is possible only for indexed map access");
  }

  ASSERT_MSG(SJ->SPs.updateStateValue,
             "Incorrect ScillaParams provided to ScillaJIT");
  if (!SJ->SPs.updateStateValue(SQ, ValS)) {
    CREATE_ERROR("State update query failed for " + SQ.Name);
  }
}

} // end of extern "C".
