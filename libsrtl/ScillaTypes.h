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
#include <vector>

using ByteVec = std::vector<uint8_t>;

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
struct Bytes {
  uint8_t *m_buffer;
  int32_t m_length;

  explicit operator ByteVec() const;
  explicit operator std::string() const;
  // We don't define this as a constructor because
  // we want a POD, to be used in unions later.
  static Bytes construct(const ByteVec &b);
};
using String = Bytes;

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

  Prims pt; // Tag for the union below
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
    // Number of type arguments to the ADT.
    int32_t m_numTArgs;
    // Types used to instantiate the ADT.
    // Needed to serialize the ADT with full type information.
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
};

} // namespace ScillaTypes

} // end of namespace ScillaVM
