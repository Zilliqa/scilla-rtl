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
#include <optional>
#include <string>
#include <unordered_map>
#include <vector>

#include "ScillaRTL/Utils.h"

namespace ScillaRTL {

class ObjManager;

// Type descriptor definitions, whose values are generated by the compiler.
// Any changes to the definitions here must be synchronized with the compiler.
namespace ScillaTypes {

// Equivalent of scilla_bytes_ty in the compiler code.
// No constructor is provided because we want
// to use this in a union, it must remain POD.
struct String {
  const uint8_t *m_buffer;
  int32_t m_length;

  explicit operator std::string() const;
  static String fromStdString(ObjManager &, const std::string &);
};

static_assert(std::is_trivially_copyable<String>::value &&
                  std::is_standard_layout<String>::value,
              "String interacts with C code. It must be trivially copyable "
              "with standard layout.");

// ADT tags, based on the definitions in Datatypes.ml.
// TODO: Remove them and replace uses with actual type
// descriptors from the compiled code.
const uint8_t Option_Some_Tag = 0;
const uint8_t Option_None_Tag = 1;
const uint8_t Bool_True_Tag = 0;
const uint8_t Bool_False_Tag = 1;
const uint8_t Nat_Zero_Tag = 0;
const uint8_t Nat_Succ_Tag = 1;
const uint8_t List_Cons_Tag = 0;
const uint8_t List_Nil_Tag = 1;

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
  union PrimU {
    BitWidth m_intBW; // bit-width of Int*, Uint*
    uint32_t m_bystX; // Length of ByStrX
    PrimU(BitWidth IntBW) : m_intBW(IntBW) {}
    PrimU(uint32_t X) : m_bystX(X) {}
  } m_detail;
};

struct Typ;

struct CompleteTyp {
  const Typ *T;
};
struct IncompleteTyp {
  const Typ *T;
};
using ConstructedTyp = std::variant<CompleteTyp, IncompleteTyp>;

// Describes a monomorphic Scilla ADT.
struct ADTTyp {

  // Describe a constructor.
  struct Constr {
    // Constructor name.
    String m_cName;
    // Number of arguments to this constructor.
    int32_t m_numArgs;
    // The type of each argument of this constructor.
    const Typ *const *m_args;
  };

  // Describe an ADT specialization.
  struct Specl {
    // Types used to instantiate the ADT.
    // The number of type args is same for all specializations,
    // and hence defined outside in ADTTyp.
    // This info is needed for ADT (de)serialization.
    const Typ *const *m_TArgs;
    // The constructors for this specialization. The number of
    // constructors is same for all specializations, and hence
    // defined outside in ADTTyp.
    const Constr *const *m_constrs;
    // Pointer to the parent ADTTyp. Necessary when only a Specl is known.
    const ADTTyp *m_parent;
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
  const Specl *const *m_specls;
};

struct MapTyp {
  const Typ *m_keyTyp;
  const Typ *m_valTyp;
};

struct AddressTyp {
  // -1 : None
  // >= 0 ; Some n
  int32_t m_numFields;

  struct Field {
    String m_Name;
    const Typ *m_FTyp;
  };
  const Field *m_fields;
};

const uint32_t AddrByStr_Len = 20;

// Parameter descriptor.
struct ParamDescr {
  String m_PName;
  const Typ *m_PTy;
};
static_assert(std::is_trivially_copyable<ParamDescr>::value &&
                  std::is_standard_layout<ParamDescr>::value,
              "ParamDescr interacts with C code. It must be trivially copyable "
              "with standard layout.");

// Transition descriptor.
struct TransDescr {
  String m_TName;
  int32_t m_NParams;
  const ParamDescr *m_Params;
};
static_assert(std::is_trivially_copyable<TransDescr>::value &&
                  std::is_standard_layout<TransDescr>::value,
              "TransDescr interacts with C code. It must be trivially copyable "
              "with standard layout.");

class TypParserPartialCache {
  std::unordered_map<std::string, const Typ *> PrimMap;
  std::unordered_map<std::string, std::vector<const Typ *>> ADTMap;
  std::vector<const Typ *> MapList;
  std::vector<const Typ *> AddrList;
  friend struct Typ;

public:
  void clear() {
    PrimMap.clear();
    ADTMap.clear();
    MapList.clear();
    AddrList.clear();
  }
  bool empty() { return PrimMap.empty(); }
};

// We don't model Scilla types with inheritance because values
// of these types need to be generated in the compiler, and having
// inheritance makes it harder.
struct Typ {
  enum Typs {
    Prim_typ = 0,
    ADT_typ,
    Map_typ,
    Address_typ,
  };

  Typs m_t; // Tag for the union below
  union TypU {
    const PrimTyp *m_primt;
    // Typ can only be specialized.
    const ADTTyp::Specl *m_spladt;
    // key type, value type.
    const MapTyp *m_mapt;
    // Address type
    const AddressTyp *m_addrt;

    TypU(const PrimTyp *P) : m_primt(P){};
    TypU(const ADTTyp::Specl *P) : m_spladt(P){};
    TypU(const MapTyp *P) : m_mapt(P){};
    TypU(const AddressTyp *P) : m_addrt(P){};

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
  // Raises error if parsing fails.
  static const Typ *fromString(TypParserPartialCache *TPPC, const Typ *Ts[],
                               int NT, const std::string &Input);

  // General version of "fromString". Attempts building (incomplete) types.
  // This function is only for use in attempting to parse remote field types.
  // If unable to parse the string to a known type (i.e., in @Ts),
  // a new (possibly incomplete) Typ (owned by ObjManager) is created.
  // For example, ADT specializations and constructors are set to 0 / nullptr.
  static ConstructedTyp constructTyp(TypParserPartialCache *TPPC,
                                     const Typ *Ts[], int NT,
                                     const std::string &Input,
                                     std::optional<ObjManager *>);
  // Get the type of keys of a Map.
  static void getMapKeyTypes(const Typ *T, std::vector<const Typ *> &Keys);
  // Map depth. 0 for non-Map types.
  static int getMapDepth(const Typ *T);
  // The type of the value accessed in a map access.
  static const Typ *mapAccessType(const Typ *MT, int NumIdx);
  // Checks that the fields of an Address type are sorted
  static bool areAddressFieldsSorted(const Typ *T);

  // Are two types equal?
  static bool equal(const Typ *LHS, const Typ *RHS);
  // Can RHS be assigned to LHS?
  static bool assignable(const Typ *LHS, ConstructedTyp RHS);
  // Are values of type T1 and T2 structurally same?
  static bool valueCompatible(const Typ *T1, const Typ *T2);
};
static_assert(std::is_trivially_copyable<Typ>::value &&
                  std::is_standard_layout<Typ>::value,
              "Typ interacts with C code. It must be trivially copyable "
              "with standard layout.");

} // namespace ScillaTypes

} // end of namespace ScillaRTL
