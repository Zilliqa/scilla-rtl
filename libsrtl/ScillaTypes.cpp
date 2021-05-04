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

#include "ScillaTypes.h"
#include "ScillaVM/Errors.h"

namespace ScillaVM {

namespace ScillaTypes {

String::operator std::string() const {
  return std::string(m_buffer, m_buffer + m_length);
}

// Are two types equal?
bool Typ::operator==(const Typ *RHS) {
  // Currently only one Typ instance of each type exists.
  // So a pointer equality is sufficient.
  return static_cast<const void *>(this) == static_cast<const void *>(RHS);
}

// Are two types unequal?
bool Typ::operator!=(const Typ *RHS) { return !(this == RHS); }

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
      ADTTyp::Specl *SP = T->m_sub.m_spladt;
      Out += std::string((SP->m_parent->m_tName));
      for (int i = 0; i < SP->m_parent->m_numTArgs; i++) {
        Out += " (";
        recurser(SP->m_TArgs[i]);
        Out += ")";
      }
    } break;
    case Typ::Map_typ: {
      MapTyp *MP = T->m_sub.m_mapt;
      Out += "Map (";
      recurser(MP->m_keyTyp);
      Out += ") (";
      recurser(MP->m_valTyp);
      Out += ")";
    } break;
    case Typ::Address_typ: {
      AddressTyp *AT = T->m_sub.m_addrt;
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
      CREATE_ERROR("Unimplemented");
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

} // namespace ScillaTypes
} // namespace ScillaVM

#include <boost/config/warning_disable.hpp>
#include <boost/spirit/include/phoenix.hpp>
#include <boost/spirit/include/qi.hpp>

namespace ScillaVM {
namespace ScillaTypes {

const Typ *Typ::fromString(TypParserPartialCache *TPPC, const Typ *Ts[], int NT,
                           const std::string &Input) {

  std::unique_ptr<TypParserPartialCache> TempTPPC;
  if (!TPPC) {
    TempTPPC = std::make_unique<TypParserPartialCache>();
    TPPC = TempTPPC.get();
  }
  auto &PrimMap = TPPC->PrimMap;
  auto &ADTMap = TPPC->ADTMap;
  auto &MapList = TPPC->MapList;
  auto &AddrList = TPPC->AddrList;

  // Classify Ts into PrimTypes, ADTs and Map types.
  if (TPPC->empty()) {
    for (int i = 0; i < NT; i++) {
      switch (Ts[i]->m_t) {
      case Prim_typ:
        // Direct mapping for prim types.
        PrimMap[toString(Ts[i])] = Ts[i];
        break;
      case ADT_typ:
        // List down all Typ objects for this ADT.
        ADTMap[(std::string)Ts[i]->m_sub.m_spladt->m_parent->m_tName].push_back(
            Ts[i]);
        break;
      case Map_typ:
        MapList.push_back(Ts[i]);
        break;
      case Address_typ:
        AddrList.push_back(Ts[i]);
        break;
      }
    }
  }

  typedef std::pair<std::string, const Typ *> FieldTypePair;

  namespace qi = boost::spirit::qi;
  namespace ascii = boost::spirit::ascii;
  namespace px = boost::phoenix;

  qi::rule<std::string::const_iterator, std::string(), ascii::space_type>
      Ident_R;
  qi::rule<std::string::const_iterator, std::string(), ascii::space_type>
      TIdent_R;
  qi::rule<std::string::const_iterator, std::string(), ascii::space_type>
      TByStr_R;
  qi::rule<std::string::const_iterator, FieldTypePair, ascii::space_type>
      FieldTypePair_R;
  qi::rule<std::string::const_iterator, const Typ *, ascii::space_type> T_R;
  qi::rule<std::string::const_iterator, const Typ *, ascii::space_type> TArg_R;
  qi::rule<std::string::const_iterator, const Typ *, ascii::space_type> Start_R;

  // An identifier is "[A-Z][a-zA-Z0-9]*"
  Ident_R = qi::lexeme[qi::char_('a', 'z') >> *(ascii::alnum)];
  // A type identifier is "[A-Z][a-zA-Z0-9]*"
  TIdent_R = qi::lexeme[qi::char_('A', 'Z') >> *(ascii::alnum)];
  // ByStr and ByStrX are primitive types
  TByStr_R = qi::lexeme[qi::string("ByStr") >> *(ascii::digit)];

  // clang-format off
  T_R =
    // Rule-0: Parse non-contract addresses
    (qi::lit("ByStr20") >> qi::lit("with") >> qi::lit("end"))
      [qi::_val = px::bind
        (
          [&AddrList] () {
            for (auto &T : AddrList) {
              ASSERT_MSG(T->m_t == Typ::Address_typ,
                "Non-Address type classified incorrectly as Address");
              if (T->m_sub.m_addrt->m_numFields == -1) {
                return T;
              }
            }
            CREATE_ERROR("Non-contract Address type not found");
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
          [&AddrList](const boost::optional<std::vector<FieldTypePair> > &FieldsOpt) {
            const auto &Fields =
              FieldsOpt ? FieldsOpt.get() : std::vector<FieldTypePair>();
            for (auto &T : AddrList) {
              ASSERT_MSG(T->m_t == Typ::Address_typ,
                "Non-Address type classified incorrectly as Address");
              if ((size_t) T->m_sub.m_addrt->m_numFields == Fields.size()) {
                auto *TDFields = T->m_sub.m_addrt->m_fields;
                size_t I = 0;
                for (I = 0; I < Fields.size(); I++) {
                  if (std::string(TDFields[I].m_Name) != Fields[I].first ||
                      TDFields[I].m_FTyp != Fields[I].second) {
                    break;
                  }
                }
                if (I == Fields.size()) {
                  // We have a match.
                  return T;
                }
              }
            }
            std::string ErrTyp = "\"ByStr20 with contract ";
            for (auto &P : Fields) {
              ErrTyp += P.first + " : " + toString(P.second) + " ";
            }
            ErrTyp += "end\"";
            CREATE_ERROR("Type " + ErrTyp + " not found");
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
            [&MapList]
            (const Typ *KTyp, const Typ *VTyp) {
              for (const Typ *T : MapList) {
                ASSERT_MSG(T->m_t == Typ::Map_typ, "Non MapTyp classfied incorrectly");
                if (T->m_sub.m_mapt->m_keyTyp == KTyp &&
                    T->m_sub.m_mapt->m_valTyp == VTyp) {
                  // We have a match.
                  return T;
                }
              }
              CREATE_ERROR("No matching MapTyp found");
            },
            qi::_1, qi::_2
          )
        ]
    | (TIdent_R >> *TArg_R) // Rule-4 for ADTs
        [qi::_val = px::bind
          (
            [&ADTMap]
            (const std::string &TName, const std::vector<const Typ *> &TArgs) {
              // Check if this is an ADT
              auto itrADT = ADTMap.find(TName);
              if (itrADT != ADTMap.end()) {
                std::vector<const Typ *> &Ts = itrADT->second;
                for (auto *T : Ts) {
                  ASSERT_MSG(T->m_t == Typ::ADT_typ,TName + " classfied incorrectly");
                  ADTTyp::Specl *Spl = T->m_sub.m_spladt;
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
              // No success matching this type.
              CREATE_ERROR("Unknown type " + TName);
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
    | TIdent_R 
      [qi::_val = px::bind
        (
          [&PrimMap, &ADTMap]
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
              if (Ts.empty()) {
                CREATE_ERROR("No specialization found for ADT " + TName);
              }
              const Typ *T = Ts[0];
              ASSERT_MSG(T->m_t == Typ::ADT_typ, TName + " classfied incorrectly");
              // We mimic the behaviour of the OCaml parser here and
              // do not assert that:
              // ASSERT(T->m_sub.m_spladt->m_parent->m_numTArgs == 0,
              //  "Incorrect number of type arguments to ADT " + TName);
              return T;
            }
            CREATE_ERROR("Unknown type " + TName);
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
  if (!phrase_parse(Input.begin(), Input.end(), Start_R, ascii::space, T))
    return nullptr;

  return T;
}

} // namespace ScillaTypes
} // namespace ScillaVM