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

#include <vector>

using bytes = std::vector<unsigned char>;

namespace ScillaTypes {

// Equivalent of scilla_bytes_ty in the compiler code.
struct Bytes {
  unsigned char *m_buffer;
  int m_length;

  explicit operator bytes() const;
  // We don't define this as a constructor because
  // we want a POD, to be used in unions later.
  static Bytes construct (const bytes &b);
};
using String = Bytes;

struct PrimTyp {

  enum BitWidth {
    Bits32 = 0,
    Bits64,
    Bits128,
    Bits256
  };

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
    int m_bystX;      // Length of ByStrX
  };
};

struct Typ;

// Describes a monomorphic Scilla ADT.
struct ADTDesc {

  // Describe a constructor.
  struct Constr {
    // Constructor name.
    String m_cName;
    // Number of arguments to this constructor.
    int m_numArgs;
    // The type of each argument of this constructor.
    Typ *m_args;
  };

  // Describe an ADT specialization.
  struct Specl {
    // Number of type arguments to the ADT.
    int m_numTArgs;
    // Types used to instantiate the ADT.
    // Needed to serialize the ADT with full type information.
    Typ *m_TArgs;
    // The constructors for this specialization. The number of
    // constructors is same for all specializations, and hence
    // defined outside in ADTDesc.
    Constr *m_constrs;
    // Pointer to the parent ADTDesc. Necessary when only a Specl is known.
    ADTDesc *m_parent;
  };

  // The ADT name
  String m_tName;
  // Number of constructors
  int m_numConstrs;
  // Number of type specializations
  int m_numSpecls;
  // An array of all specializations.
  Specl *m_specls;
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
    PrimTyp m_prim;
    // Typ can only be specialized.
    ADTDesc::Specl *m_spladt;
    // TODO: Maps.
  };
};

} // end of namespace ScillaTypes
