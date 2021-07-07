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

#include <algorithm>
#include <cstring>
#include <functional>

#include "ObjManager.h"
#include "SRTL.h"
#include "ScillaRTL/Errors.h"
#include "ScillaTypes.h"

namespace ScillaRTL {

namespace ScillaTypes {

String::operator std::string() const {
  return std::string(m_buffer, m_buffer + m_length);
}

String String::fromStdString(ObjManager &OM, const std::string &S) {
  auto *Buf = reinterpret_cast<uint8_t *>(OM.allocBytes(S.size()));
  std::memcpy(Buf, S.data(), S.size());
  return {Buf, static_cast<int32_t>(S.size())};
}

bool Typ::equal(const Typ *LHS, const Typ *RHS) {
  // Currently only one Typ instance of each type exists.
  // So a pointer equality is sufficient.
  return static_cast<const void *>(LHS) == static_cast<const void *>(RHS);
}

bool Typ::assignable(const Typ *To, const Typ *From) {

  // A lambda to check assignability of two address types.
  // Every field F_Sub in "Subset" must exist as F_Sup in "Superset"
  //   AND
  // assignable(F_Sub, F_Sup).
  // (Subset->m_numFields < 0), i.e., Subset is (Address None) will return true.
  auto checkAddressSubset = [](const AddressTyp *Subset,
                               const AddressTyp *Superset) -> bool {
    if (Subset->m_numFields > Superset->m_numFields) {
      return false;
    }
    const AddressTyp::Field *SearchFromItr = Superset->m_fields;
    const AddressTyp::Field *SearchFromItrEnd =
        SearchFromItr + Superset->m_numFields;
    // The search below is linear and relies on a strict ordering based on
    // the field names (i.e., the fields in AddressTyp must be sorted).
    for (int I = 0; I < Subset->m_numFields; I++) {
      const AddressTyp::Field &F_Sub = Subset->m_fields[I];
      // This field must exist in "Superset".
      auto Itr = std::find_if(SearchFromItr, SearchFromItrEnd,
                              [&F_Sub](const AddressTyp::Field &F_Sup) {
                                return std::string(F_Sup.m_Name) ==
                                       std::string(F_Sub.m_Name);
                              });
      if (Itr == SearchFromItrEnd || !assignable(F_Sub.m_FTyp, Itr->m_FTyp)) {
        // Either we don't have that field in Superset, or it isn't assignable
        // to the one we have in Subset. Both qualify for non-assignability.
        return false;
      }
      // For the next field in Subset, we search from after what we just found.
      SearchFromItr = Itr + 1;
    }
    return true;
  };

  switch (From->m_t) {
  case Address_typ: {
    // "From" is an Address.
    const AddressTyp *From_AT = From->m_sub.m_addrt;
    if (To->m_t == Address_typ) {
      // Check assignable(To, From).
      return checkAddressSubset(To->m_sub.m_addrt, From_AT);
    } else if (To->m_t == Prim_typ) {
      const PrimTyp *T_PT = To->m_sub.m_primt;
      if (T_PT->m_pt == PrimTyp::Bystrx_typ &&
          T_PT->m_detail.m_bystX == Zilliqa_Address_Len) {
        // Any address is assignable to ByStr20.
        return true;
      }
    }
    return false;
  }
  case Map_typ: {
    if (To->m_t != Map_typ)
      return false;
    const MapTyp *To_MT = To->m_sub.m_mapt;
    const MapTyp *From_MT = From->m_sub.m_mapt;
    return assignable(To_MT->m_keyTyp, From_MT->m_keyTyp) &&
           assignable(To_MT->m_valTyp, From_MT->m_valTyp);
  }
  case ADT_typ: {
    if (To->m_t != ADT_typ)
      return false;
    const ADTTyp::Specl *To_Specls = To->m_sub.m_spladt;
    const ADTTyp::Specl *From_Specls = From->m_sub.m_spladt;
    // They must be the same ADT, otherwise it doesn't make much sense.
    if (std::string(To_Specls->m_parent->m_tName) !=
        std::string(From_Specls->m_parent->m_tName))
      return false;
    // Same ADT specializations must have the same parent ADT type.
    ASSERT(To_Specls->m_parent == From_Specls->m_parent);
    int NTArgs = To_Specls->m_parent->m_numTArgs;
    for (int I = 0; I < NTArgs; I++) {
      if (!assignable(To_Specls->m_TArgs[I], From_Specls->m_TArgs[I]))
        return false;
    }
    return true;
  }
  case Prim_typ:
    // Just equality for primitive types.
    return equal(From, To);
  }

  CREATE_ERROR("Unreachable executed");
}

bool Typ::valueCompatible(const Typ *T1, const Typ *T2) {
  return assignable(T1, T2) || assignable(T2, T1);
}

std::string Typ::toString(const Typ *T) {

  std::string Out;
  // Do the work in a lambda to avoid generating new strings and
  // concatening it to Out. This saves a copy.
  std::function<void(const Typ *)> recurser = [&recurser,
                                               &Out](const Typ *T) -> void {
    switch (T->m_t) {
    case Typ::Prim_typ: {
      auto bwToString = [](PrimTyp::BitWidth bw) -> std::string {
        switch (bw) {
        case PrimTyp::Bits32:
          return "32";
        case PrimTyp::Bits64:
          return "64";
        case PrimTyp::Bits128:
          return "128";
        case PrimTyp::Bits256:
          return "256";
        }
        CREATE_ERROR("Unhandled integer bit-width");
      };
      switch (T->m_sub.m_primt->m_pt) {
      case PrimTyp::Int_typ:
        Out += "Int" + bwToString(T->m_sub.m_primt->m_detail.m_intBW);
        break;
      case PrimTyp::Uint_typ:
        Out += "Uint" + bwToString(T->m_sub.m_primt->m_detail.m_intBW);
        break;
      case PrimTyp::String_typ:
        Out += "String";
        break;
      case PrimTyp::Bnum_typ:
        Out += "BNum";
        break;
      case PrimTyp::Msg_typ:
        Out += "Message";
        break;
      case PrimTyp::Event_typ:
        Out += "Event";
        break;
      case PrimTyp::Exception_typ:
        Out += "Exception";
        break;
      case PrimTyp::Bystr_typ:
        Out += "ByStr";
        break;
      case PrimTyp::Bystrx_typ:
        Out += ("ByStr" + std::to_string(T->m_sub.m_primt->m_detail.m_bystX));
        break;
      }
    } break;
    case Typ::ADT_typ: {
      const ADTTyp::Specl *SP = T->m_sub.m_spladt;
      Out += std::string((SP->m_parent->m_tName));
      for (int i = 0; i < SP->m_parent->m_numTArgs; i++) {
        Out += " (";
        recurser(SP->m_TArgs[i]);
        Out += ")";
      }
    } break;
    case Typ::Map_typ: {
      const MapTyp *MP = T->m_sub.m_mapt;
      Out += "Map (";
      recurser(MP->m_keyTyp);
      Out += ") (";
      recurser(MP->m_valTyp);
      Out += ")";
    } break;
    case Typ::Address_typ: {
      const AddressTyp *AT = T->m_sub.m_addrt;
      if (AT->m_numFields < 0) {
        Out += "ByStr20 with end";
        break;
      }
      Out += "ByStr20 with contract ";
      for (int32_t I = 0; I < AT->m_numFields; I++) {
        Out +=
            std::string("field ") + std::string(AT->m_fields[I].m_Name) + " : ";
        recurser(AT->m_fields[I].m_FTyp);
        if (I == AT->m_numFields - 1)
          Out += " ";
        else
          Out += ", ";
      }
      Out += "end";
    } break;
    }
  };

  // Call the lambda to do the actual work.
  recurser(T);

  return Out;
}

int ScillaTypes::Typ::sizeOf(const Typ *T) {
  switch (T->m_t) {
  case Typ::Prim_typ: {
    switch (T->m_sub.m_primt->m_pt) {
    case PrimTyp::Int_typ:
    case PrimTyp::Uint_typ:
      switch (T->m_sub.m_primt->m_detail.m_intBW) {
      case PrimTyp::Bits32:
        return 32 / 8;
      case PrimTyp::Bits64:
        return 64 / 8;
      case PrimTyp::Bits128:
        return 128 / 8;
      case PrimTyp::Bits256:
        return 256 / 8;
      }
      break;
    case PrimTyp::String_typ:
    case PrimTyp::Bystr_typ:
      return sizeof(String);
    case PrimTyp::Bystrx_typ:
      return T->m_sub.m_primt->m_detail.m_bystX;
    case PrimTyp::Bnum_typ:
      // BNums are boxed.
      return sizeof(void *);
    case PrimTyp::Msg_typ:
    case PrimTyp::Event_typ:
    case PrimTyp::Exception_typ:
      // MsgObjs are boxed. So just a pointer.
      return sizeof(void *);
    }
  } break;
  case Typ::ADT_typ:
  case Typ::Map_typ:
    // ADTs and Maps are boxed, so just a pointer.
    return sizeof(void *);
  case Typ::Address_typ:
    // These are just ByStr20 values.
    return AddrByStr_Len;
  }

  CREATE_ERROR("Unreachable executed");
}

bool Typ::isBoxed(const Typ *T) {
  switch (T->m_t) {
  case Prim_typ:
    switch (T->m_sub.m_primt->m_pt) {
    case PrimTyp::Bnum_typ:
    case PrimTyp::Msg_typ:
    case PrimTyp::Event_typ:
    case PrimTyp::Exception_typ:
      return true;
    default:
      return false;
    }
  case ADT_typ:
  case Map_typ:
    return true;
  case Address_typ:
    return false;
  }
  CREATE_ERROR("Unreachable executed");
}

int Typ::getMapDepth(const Typ *T) {
  switch (T->m_t) {
  case Prim_typ:
  case ADT_typ:
  case Address_typ:
    return 0;
  case Map_typ:
    return 1 + getMapDepth(T->m_sub.m_mapt->m_valTyp);
  }

  CREATE_ERROR("Unreachable executed");
}

void Typ::getMapKeyTypes(const Typ *T, std::vector<const Typ *> &Keys) {
  switch (T->m_t) {
  case Prim_typ:
  case ADT_typ:
  case Address_typ:
    return;
  case Map_typ:
    Keys.push_back(T->m_sub.m_mapt->m_keyTyp);
    getMapKeyTypes(T->m_sub.m_mapt->m_valTyp, Keys);
  }
}

// The type of the value accessed in a map access.
const Typ *Typ::mapAccessType(const Typ *MT, int NumIdx) {
  if (NumIdx == 0) {
    return MT;
  }
  switch (MT->m_t) {
  case Prim_typ:
  case ADT_typ:
  case Address_typ:
    CREATE_ERROR("Trying to access non Map value with indexing");
  case Map_typ:
    return mapAccessType(MT->m_sub.m_mapt->m_valTyp, NumIdx - 1);
  }

  CREATE_ERROR("Unreachable executed");
}

bool Typ::areAddressFieldsSorted(const Typ *T) {
  switch (T->m_t) {
  case Typ::Prim_typ:
    return true;
  case Typ::ADT_typ: {
    auto *Specl = T->m_sub.m_spladt;
    int NumTArgs = Specl->m_parent->m_numTArgs;
    return std::all_of(Specl->m_TArgs, Specl->m_TArgs + NumTArgs,
                       areAddressFieldsSorted);
  }
  case Typ::Map_typ: {
    auto *MT = T->m_sub.m_mapt;
    return areAddressFieldsSorted(MT->m_keyTyp) &&
           areAddressFieldsSorted(MT->m_valTyp);
  }
  case Typ::Address_typ: {
    auto *AT = T->m_sub.m_addrt;
    auto NumFields = AT->m_numFields;
    if (NumFields < 0)
      return true;
    return std::is_sorted(
               AT->m_fields, AT->m_fields + NumFields,
               [](const AddressTyp::Field &F1, const AddressTyp::Field &F2) {
                 return std::string(F1.m_Name) < std::string(F2.m_Name);
               }) &&
           std::all_of(AT->m_fields, AT->m_fields + NumFields,
                       [](const AddressTyp::Field &F) {
                         return areAddressFieldsSorted(F.m_FTyp);
                       });
  }
  }

  CREATE_ERROR("Unreachable executed");
}

} // namespace ScillaTypes
} // namespace ScillaRTL

#include <boost/config/warning_disable.hpp>
#include <boost/spirit/include/phoenix.hpp>
#include <boost/spirit/include/qi.hpp>

namespace ScillaRTL {
namespace ScillaTypes {

const Typ *Typ::fromString(TypParserPartialCache *TPPC, const Typ *Ts[], int NT,
                           const std::string &Input) {
  return fromStringUnsafe(TPPC, Ts, NT, Input, std::nullopt);
}

const Typ *Typ::fromStringUnsafe(TypParserPartialCache *TPPC, const Typ *Ts[],
                                 int NT, const std::string &Input,
                                 std::optional<ObjManager *> OM) {

  std::unique_ptr<TypParserPartialCache> TempTPPC;
  if (!TPPC) {
    TempTPPC = std::make_unique<TypParserPartialCache>();
    TPPC = TempTPPC.get();
  }

  // Classify Ts into PrimTypes, ADTs and Map types.
  if (TPPC->empty()) {
    for (int I = 0; I < NT; I++) {
      ASSERT(areAddressFieldsSorted(Ts[I]));
      switch (Ts[I]->m_t) {
      case Prim_typ:
        // Direct mapping for prim types.
        TPPC->PrimMap[toString(Ts[I])] = Ts[I];
        break;
      case ADT_typ:
        // List down all Typ objects for this ADT.
        TPPC->ADTMap[(std::string)Ts[I]->m_sub.m_spladt->m_parent->m_tName]
            .push_back(Ts[I]);
        break;
      case Map_typ:
        TPPC->MapList.push_back(Ts[I]);
        break;
      case Address_typ:
        TPPC->AddrList.push_back(Ts[I]);
        break;
      }
    }
  }

  std::unordered_map<std::string, const ScillaRTL::ScillaTypes::Typ *>
      PrimMapLocal;
  std::unordered_map<std::string,
                     std::vector<const ScillaRTL::ScillaTypes::Typ *>>
      ADTMapLocal;
  std::vector<const ScillaRTL::ScillaTypes::Typ *> MapListLocal;
  std::vector<const ScillaRTL::ScillaTypes::Typ *> AddrListLocal;

  // If we must create new types than the ones in Ts, we make a copy for it.
  if (OM) {
    PrimMapLocal = TPPC->PrimMap;
    ADTMapLocal = TPPC->ADTMap;
    MapListLocal = TPPC->MapList;
    AddrListLocal = TPPC->AddrList;
  }

  auto &PrimMap = OM ? PrimMapLocal : TPPC->PrimMap;
  auto &ADTMap = OM ? ADTMapLocal : TPPC->ADTMap;
  auto &MapList = OM ? MapListLocal : TPPC->MapList;
  auto &AddrList = OM ? AddrListLocal : TPPC->AddrList;

  typedef std::pair<std::string, const Typ *> FieldTypePair;

  namespace qi = boost::spirit::qi;
  namespace ascii = boost::spirit::ascii;
  namespace px = boost::phoenix;

  qi::rule<std::string::const_iterator, std::string(), ascii::space_type>
      Ident_R, TByStr_R, QualifiedTypeName_R;
  qi::rule<std::string::const_iterator, std::string(), ascii::space_type>
      HexQual, FilenameQual, NoQual;
  qi::rule<std::string::const_iterator, FieldTypePair, ascii::space_type>
      FieldTypePair_R;
  qi::rule<std::string::const_iterator, const Typ *, ascii::space_type> T_R;
  qi::rule<std::string::const_iterator, const Typ *, ascii::space_type> TArg_R;
  qi::rule<std::string::const_iterator, const Typ *, ascii::space_type> Start_R;

  // An identifier is "[a-z][a-zA-Z0-9_]*"
  Ident_R =
      qi::lexeme[qi::char_('a', 'z') >> *((ascii::alnum) | qi::char_('_'))];
  // ByStr and ByStrX are primitive types
  TByStr_R = qi::lexeme[qi::string("ByStr") >> *(ascii::digit)];

  // Qualified type names
  HexQual =
      qi::lexeme[qi::string("0x") >> *(ascii::xdigit) >> qi::char_('.') >>
                 qi::char_('A', 'Z') >> *((ascii::alnum) | qi::char_('_'))];
  FilenameQual =
      qi::lexeme[*((ascii::alnum) | qi::char_('-') | qi::char_('_')) >>
                 qi::char_('.') >> qi::char_('A', 'Z') >>
                 *((ascii::alnum) | qi::char_('_'))];
  NoQual =
      qi::lexeme[qi::char_('A', 'Z') >> *((ascii::alnum) | qi::char_('_'))];

  auto IdFun = [](const std::string &I) { return I; };
  QualifiedTypeName_R = (HexQual)[qi::_val = px::bind(IdFun, qi::_1)] |
                        (FilenameQual)[qi::_val = px::bind(IdFun, qi::_1)] |
                        (NoQual)[qi::_val = px::bind(IdFun, qi::_1)];
  ;

  // clang-format off
  T_R =
    // Rule-0: Parse non-contract addresses
    (qi::lit("ByStr20") >> qi::lit("with") >> qi::lit("end"))
      [qi::_val = px::bind
        (
          [&AddrList, &OM] () -> const Typ* {
            for (auto &T : AddrList) {
              ASSERT_MSG(T->m_t == Typ::Address_typ,
                "Non-Address type classified incorrectly as Address");
              if (T->m_sub.m_addrt->m_numFields == -1) {
                return T;
              }
            }
            if (OM) {
              auto *AT = (*OM)->create<const AddressTyp>({-1, nullptr});
              auto *T = (*OM)->create<const Typ>
                ({Typ::Address_typ, Typ::TypU(AT)});
              AddrList.push_back(T);
              return T;
            } else {
              CREATE_ERROR("Non-contract Address type not found");
            }
          }
        )
      ]
    // Rule-1: Parse contract addresses into an optional non-empty list of
    //         comma-separated FieldTypePairs. That's just another way of
    //         specifying a comma-separated list of 0 or more FieldTypePairs.
    | (qi::lit("ByStr20") >> qi::lit("with") >> qi::lit("contract") >>
        -((qi::lit("field") >> FieldTypePair_R) % ',') >> qi::lit("end"))
      [qi::_val = px::bind
        (
          [&AddrList, &OM]
          (const boost::optional<std::vector<FieldTypePair> > &FieldsOpt) 
            -> const Typ* {
            const auto &Fields =
              FieldsOpt ? FieldsOpt.get() : std::vector<FieldTypePair>();
            for (auto &T : AddrList) {
              ASSERT_MSG(T->m_t == Typ::Address_typ,
                "Non-Address type classified incorrectly as Address");
              auto T_NFields = (size_t) T->m_sub.m_addrt->m_numFields;
              // Check if the fields in T are equivalent to those in Fields.
              if (T_NFields == Fields.size()) {
                auto *TDFields = T->m_sub.m_addrt->m_fields;
                // Does every field in TDFields exist in Fields?
                bool all_matched = std::all_of(TDFields, TDFields + T_NFields,
                  [&Fields](const AddressTyp::Field &TF) {
                    auto ToMatchName = std::string(TF.m_Name);
                    auto *ToMatchTyp = TF.m_FTyp;
                    // Check if TF exists in Fields.
                    return std::any_of(Fields.begin(), Fields.end(), 
                      [ToMatchName, ToMatchTyp] (const FieldTypePair &Parsed) {
                        return Parsed.first == ToMatchName 
                               && equal(Parsed.second, ToMatchTyp);
                      });
                  });
                // T exactly matches the Fields. We're done.
                if (all_matched)
                  return T;
              }
            }
            if (OM) {
              auto FieldsSorted = reinterpret_cast<AddressTyp::Field*>(
                (Fields.size() > 0) ?
                (*OM)->allocBytes(sizeof(AddressTyp::Field) * Fields.size()) : 
                nullptr);
              // Copy over the data before we sort.
              for (size_t I = 0; I < Fields.size(); I++) {
                FieldsSorted[I] = {
                  String::fromStdString(**OM, Fields[I].first),
                  Fields[I].second
                };
              }
              std::sort(FieldsSorted, FieldsSorted + Fields.size(), 
                [](const AddressTyp::Field &Lhs, const AddressTyp::Field &Rhs) {
                  return std::string(Lhs.m_Name) < std::string(Rhs.m_Name);
                });
              // Create an new type.
              auto *AT = (*OM)->create<const AddressTyp>
                ({static_cast<int32_t>(Fields.size()), FieldsSorted});
              auto *T = (*OM)->create<const Typ>
                ({Typ::Address_typ, Typ::TypU(AT)});
              AddrList.push_back(T);
              return T;
            } else {
              std::string ErrTyp = "\"ByStr20 with contract ";
              for (auto &P : Fields) {
                ErrTyp += std::string("field ") + P.first +
                    " : " + toString(P.second) + " ";
              }
              ErrTyp += "end\"";
              CREATE_ERROR("Type " + ErrTyp + " not found");
            }
          },
          qi::_1
        )
      ]
    // Rule-2 Get all the PrimTyps.
    | (qi::string("Int32")   | qi::string("Int64") 
    | qi::string("Int128")  | qi::string("Int256")
    | qi::string("Uint32")  | qi::string("Uint64")
    | qi::string("Uint128") | qi::string("Uint256")
    | qi::string("String")  | qi::string("BNum")
    | TByStr_R)
       [qi::_val = px::bind
        (
          [&PrimMap]
          (const std::string &TName) {
              auto itrPrim = PrimMap.find(TName);
              if (itrPrim == PrimMap.end()) {
                CREATE_ERROR("PrimTyp " + TName + " not found");
              }
              const Typ *T = itrPrim->second;
              ASSERT_MSG(T->m_t == Typ::Prim_typ, TName + " classified incorrectly");
              return T;
            },
            qi::_1
          )
        ]
    |  (qi::lit("Map") >> T_R >> T_R) // Rule-3 for Map
        [qi::_val = px::bind
          (
            [&MapList, &OM]
            (const Typ *KTyp, const Typ *VTyp) -> const Typ * {
              for (const Typ *T : MapList) {
                ASSERT_MSG(T->m_t == Typ::Map_typ, "Non MapTyp classfied incorrectly");
                if (equal(T->m_sub.m_mapt->m_keyTyp, KTyp) &&
                    equal(T->m_sub.m_mapt->m_valTyp, VTyp)) {
                  // We have a match.
                  return T;
                }
              }
              if (OM) {
                auto *MT = (*OM)->create<const MapTyp>({KTyp, VTyp});
                auto *T = (*OM)->create<const Typ>({Typ::Map_typ, Typ::TypU(MT)});
                MapList.push_back(T);
                return T;
              } else {
                CREATE_ERROR("MapTyp (" + Typ::toString(KTyp) + ") (" +
                  Typ::toString(VTyp) + ") not found");
              }
            },
            qi::_1, qi::_2
          )
        ]
    | (QualifiedTypeName_R >> *TArg_R) // Rule-4 for ADTs
        [qi::_val = px::bind
          (
            [&ADTMap, &OM]
            (const std::string &TName, const std::vector<const Typ *> &TArgs)
              -> const Typ * {
              const ADTTyp *ADT_Parent = nullptr;
              // Check if this is an ADT
              auto itrADT = ADTMap.find(TName);
              if (itrADT != ADTMap.end()) {
                std::vector<const Typ *> &Ts = itrADT->second;
                ASSERT(!Ts.empty());
                for (auto *T : Ts) {
                  ASSERT_MSG(T->m_t == Typ::ADT_typ,TName + " classfied incorrectly");
                  const ADTTyp::Specl *Spl = T->m_sub.m_spladt;
                  ASSERT(!ADT_Parent || ADT_Parent == Spl->m_parent);
                  ADT_Parent = Spl->m_parent;
                  if (Spl->m_parent->m_numTArgs != (int)TArgs.size()) {
                    CREATE_ERROR(TName + " expects " +
                      std::to_string(Spl->m_parent->m_numTArgs) +
                      " type arguments, but got " + std::to_string(TArgs.size()));
                  }
                  // Test if this is the specialization we want.
                  if (std::equal(TArgs.begin(), TArgs.end(),
                                Spl->m_TArgs)) {
                    // We have a match.
                    return T;
                  }
                }
              }
              if (OM) {
                if (!ADT_Parent) {
                  // If there isn't already a parent ADT struct, create one.
                  ADT_Parent = (*OM)->create<const ADTTyp>({
                    String::fromStdString(**OM, TName), // m_TName
                    static_cast<int32_t>(TArgs.size()), // m_numTArgs,
                    0,                                  // m_numConstrs
                    0,                                  // m_numSpecls
                    nullptr                             // m_specls
                  });
                }
                auto *TArgsMem = reinterpret_cast<Typ **>
                  ((*OM)->allocBytes(sizeof(Typ*) * TArgs.size()));
                std::memcpy(TArgsMem, TArgs.data(), TArgs.size());
                auto *SpeclP = (*OM)->create<const ADTTyp::Specl>({
                  TArgsMem,          // m_TArgs
                  nullptr,           // m_constrs
                  ADT_Parent         // m_parent
                });
                auto *ADTP = (*OM)->create<const Typ>
                  ({Typ::ADT_typ, Typ::TypU(SpeclP)});
                ADTMap[TName].push_back(ADTP);
                return ADTP;
              } else {
                // No success matching this type.
                CREATE_ERROR("Unknown type " + TName);
              }
            },
            qi::_1, qi::_2
          )
        ] 
    | ('(' >> T_R >> ')') // Rule-5 for "( typ )"
        [qi::_val = px::bind
          (
            []
            (const Typ *Var) {
              return Var; 
            },
            qi::_1
          )
        ]
    ;

  TArg_R =
      ('(' >> T_R >> ')')
        [qi::_val = px::bind
          (
            []
            (const Typ *Var) {
              return Var; 
            },
            qi::_1
          )
        ]
    | QualifiedTypeName_R
      [qi::_val = px::bind
        (
          [&PrimMap, &ADTMap, &OM]
          (const std::string &TName) {
            auto itrPrim = PrimMap.find(TName);
            if (itrPrim != PrimMap.end()) {
              const Typ *T = itrPrim->second;
              ASSERT_MSG(T->m_t == Typ::Prim_typ, TName + " classified incorrectly");
              return T;
            }
            auto itrADT = ADTMap.find(TName);
            if (itrADT != ADTMap.end()) {
              std::vector<const Typ *> &Ts = itrADT->second;
              ASSERT(!Ts.empty());
              const Typ *T = Ts[0];
              ASSERT_MSG(T->m_t == Typ::ADT_typ, TName + " classfied incorrectly");
              // We mimic the behaviour of the OCaml parser here and
              // do not assert that:
              // ASSERT(T->m_sub.m_spladt->m_parent->m_numTArgs == 0,
              //  "Incorrect number of type arguments to ADT " + TName);
              return T;
            }
            if (OM) {
              // If there isn't already a parent ADT struct, create one.
              auto *ADT_Parent = (*OM)->create<const ADTTyp>({
                String::fromStdString(**OM, TName), // m_TName
                0,                                  // m_numTArgs,
                0,                                  // m_numConstrs
                0,                                  // m_numSpecls
                nullptr                             // m_specls
              });
              auto *SpeclP = (*OM)->create<const ADTTyp::Specl>({
                nullptr,           // m_TArgs
                nullptr,           // m_constrs
                ADT_Parent         // m_parent
              });
              auto *ADTP = (*OM)->create<const Typ>
                ({Typ::ADT_typ, Typ::TypU(SpeclP)});
              ADTMap[TName].push_back(ADTP);
              return ADTP;
            } else {
              CREATE_ERROR("Unknown type " + TName);
            }
          },
          qi::_1
        )
      ]
    ;

  FieldTypePair_R =
    (Ident_R >> ':' >> T_R)
      [qi::_val = px::bind
        (
          [](const std::string &FName, const Typ *FTyp) {
            return FieldTypePair(FName, FTyp);
          }, qi::_1, qi::_2
        )
      ]
    ;

  // clang-format on

  Start_R %= T_R >> qi::eoi;

  const Typ *T = nullptr;
  if (!phrase_parse(Input.begin(), Input.end(), Start_R, ascii::space, T) || !T)
    CREATE_ERROR("Parsing type " + Input + " failed");

  return T;
}

} // namespace ScillaTypes
} // namespace ScillaRTL