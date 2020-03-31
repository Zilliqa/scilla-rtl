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

#pragma once

#include <cstdint>
#include <string>
#include <unordered_map>

#include "ScillaVM/SRTL.h"

namespace ScillaVM {

// Type descriptor definitions, whose values are generated by the compiler.
// Any changes to the definitions here must be synchronized with the compiler.
namespace ScillaTypes {

template <unsigned Bits> struct RawInt {
  static_assert(Bits % 8 == 0,
                "Cannot instantiate RawInt with non byte-aligned size");
  uint8_t buf[Bits / 8];
};
typedef RawInt<32> Int32;
typedef RawInt<32> Uint32;
typedef RawInt<64> Int64;
typedef RawInt<64> Uint64;
typedef RawInt<128> Int128;
typedef RawInt<128> Uint128;
typedef RawInt<256> Int256;
typedef RawInt<256> Uint256;

// Equivalent of scilla_bytes_ty in the compiler code.
// No constructor is provided because we want
// to use this in a union, it must remain POD.
struct String {
  const uint8_t *m_buffer;
  int32_t m_length;

  explicit operator std::string() const;
};

// ADT tags, based on the definitions in Datatypes.ml.
// TODO: Remove them and replace uses with actual type
// descriptors from the compiled code.
const uint8_t Option_Some_Tag = 1;
const uint8_t Option_None_Tag = 0;
const uint8_t Bool_True_Tag = 0;
const uint8_t Bool_False_Tag = 1;

struct PrimTyp {

  enum BitWidth { Bits32 = 0, Bits64, Bits128, Bits256 };

  enum Prims {
    Int_typ = 0,
    Uint_typ,
    String_typ,
    Bnum_typ,
    Msg_typ,
    Event_typ,
    Exception_typ,
    Bystr_typ,
    Bystrx_typ,
  };

  Prims m_pt; // Tag for the union below
  union {
    BitWidth m_intBW; // bit-width of Int*, Uint*
    uint32_t m_bystX; // Length of ByStrX
  } m_detail;
};

struct Typ;

// Describes a monomorphic Scilla ADT.
struct ADTTyp {

  // Describe a constructor.
  struct Constr {
    // Constructor name.
    String m_cName;
    // Number of arguments to this constructor.
    int32_t m_numArgs;
    // The type of each argument of this constructor.
    Typ **m_args;
  };

  // Describe an ADT specialization.
  struct Specl {
    // Types used to instantiate the ADT.
    // The number of type args is same for all specializations,
    // and hence defined outside in ADTTyp.
    // This info is needed for ADT (de)serialization.
    Typ **m_TArgs;
    // The constructors for this specialization. The number of
    // constructors is same for all specializations, and hence
    // defined outside in ADTTyp.
    Constr **m_constrs;
    // Pointer to the parent ADTTyp. Necessary when only a Specl is known.
    ADTTyp *m_parent;
  };

  // The ADT name
  String m_tName;
  // Number of type arguments to the ADT.
  int32_t m_numTArgs;
  // Number of constructors
  int32_t m_numConstrs;
  // Number of type specializations
  int32_t m_numSpecls;
  // An array of all specializations.
  Specl **m_specls;
};

struct MapTyp {
  Typ *m_keyTyp;
  Typ *m_valTyp;
};

struct Typ;

class TypParserPartialCache {
  std::unordered_map<std::string, const Typ *> PrimMap;
  std::unordered_map<std::string, std::vector<const Typ *>> ADTMap;
  std::vector<const Typ *> MapList;
  friend struct Typ;

public:
  void clear() {
    PrimMap.clear();
    ADTMap.clear();
    MapList.clear();
  }
  bool empty() {
    return PrimMap.empty();
  }
};

// We don't model Scilla types with inheritance because values
// of these types need to be generated in the compiler, and having
// inheritance makes it harder.
struct Typ {
  enum Typs {
    Prim_typ = 0,
    ADT_typ,
    Map_typ,
  };

  Typs m_t; // Tag for the union below
  union {
    PrimTyp *m_primt;
    // Typ can only be specialized.
    ADTTyp::Specl *m_spladt;
    // key type, value type.
    MapTyp *m_mapt;
  } m_sub;

  // Stringify a Scilla type @T to @out and return @out.
  static std::string toString(const Typ *T);
  // The size of a Scilla value of type @T.
  // Boxed values have pointer size.
  static int sizeOf(const Typ *T);
  // Are values of Typ @T boxed?
  static bool isBoxed(const Typ *T);
  // Given an array of all Typ descriptors and a string, parse the string.
  // Typ descriptors are generated by the Scilla compiler and are in the
  // global array "_tydescr_table" with its length "_tydescr_table_length"
  // If @TPPC is non-null:
  //   - If the cache is empty, it is filled.
  //   - If the cache is not empty, it is used.
  // The cache must have been built using the same @Ts argument.
  static const Typ *fromString(TypParserPartialCache *TPPC, const Typ *Ts[],
                               int NT, const std::string &input);

  // Get the type of keys of a Map.
  static void getMapKeyTypes(const Typ *T, std::vector<const Typ *> Keys);
  // Map depth. 0 for non-Map types.
  static int getMapDepth(const Typ *T);
  // The type of the value accessed in a map access.
  static const Typ *mapAccessType(const Typ *MT, int NumIdx);

  bool operator==(const Typ *RHS);
  bool operator!=(const Typ *RHS);
};

} // namespace ScillaTypes

} // end of namespace ScillaVM
