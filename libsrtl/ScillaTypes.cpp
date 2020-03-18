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
#include <unordered_map>

#include "ScillaTypes.h"
#include "ScillaVM/Errors.h"

namespace ScillaVM {

namespace ScillaTypes {

Bytes::operator ByteVec() const {
  return ByteVec(m_buffer, m_buffer + m_length);
}

Bytes::operator std::string() const {
  return std::string(m_buffer, m_buffer + m_length);
}

// Are two types equal?
bool Typ::operator==(const Typ *RHS) {
  // Currently only once Typ instance of each type exists.
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
        Out += "Bystr";
        break;
      case PrimTyp::Bystrx_typ:
        Out += ("Bystr" + std::to_string(T->m_sub.m_primt->m_detail.m_bystX));
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
    case PrimTyp::String_typ:
    case PrimTyp::Bystr_typ:
      return sizeof(Bytes);
    case PrimTyp::Bystrx_typ:
      return T->m_sub.m_primt->m_detail.m_bystX;
    case PrimTyp::Bnum_typ:
    case PrimTyp::Msg_typ:
    case PrimTyp::Event_typ:
    case PrimTyp::Exception_typ:
      CREATE_ERROR("Unimplemented");
    }
  } break;
  case Typ::ADT_typ:
  case Typ::Map_typ:
    // ADTs and Maps are boxed, so just a pointer.
    return sizeof(void *);
  }

  CREATE_ERROR("Unreachable executed");
}

bool Typ::isBoxed(const Typ *T) {
  switch (T->m_t) {
  case Prim_typ:
    return false;
  case ADT_typ:
  case Map_typ:
    return true;
  }
  CREATE_ERROR("Unreachable executed");
}

} // namespace ScillaTypes
} // namespace ScillaVM

#include <boost/config/warning_disable.hpp>
#include <boost/fusion/include/adapt_struct.hpp>
#include <boost/lambda/lambda.hpp>
#include <boost/spirit/include/phoenix.hpp>
#include <boost/spirit/include/qi.hpp>
#include <boost/spirit/include/qi_lexeme.hpp>

namespace ScillaVM {
namespace ScillaTypes {

const Typ *Typ::fromString(const Typ *Ts[], int NT, const std::string &input) {
  // Classify Ts into PrimTypes, ADTs and Map types.
  // TODO: Cache this classification and re-use across invocations.
  std::unordered_map<std::string, const Typ *> PrimMap;
  std::unordered_map<std::string, std::vector<const Typ *>> ADTMap;
  std::vector<const Typ *> MapList;
  for (int i = 0; i < NT; i++) {
    switch (Ts[i]->m_t) {
    case Prim_typ:
      // Direct mapping for prim types.
      PrimMap[toString(Ts[i])] = Ts[i];
      break;
    case ADT_typ:
      // Use the ADT name to map. It doesn't matter which specialization
      // we point to, we'll need to search through them all later.
      ADTMap[(std::string)Ts[i]->m_sub.m_spladt->m_parent->m_tName].push_back(
          Ts[i]);
      break;
    case Map_typ:
      MapList.push_back(Ts[i]);
      break;
    }
  }

  namespace qi = boost::spirit::qi;
  namespace ascii = boost::spirit::ascii;
  namespace px = boost::phoenix;
  using px::at_c;
  using qi::_1;
  using qi::_2;
  using qi::_val;
  using qi::char_;
  using qi::lexeme;
  using qi::lit;

  qi::rule<std::string::const_iterator, std::string(), ascii::space_type>
      TIdent_R;
  qi::rule<std::string::const_iterator, const Typ *, ascii::space_type> T_R;

  // A type identifier is "[A-Z][a-zA-Z0-9]*"
  TIdent_R = lexeme[char_('A', 'Z') >> *(ascii::alnum)];

  // clang-format off
  T_R =
      (lit("Map") >> T_R >> T_R) // Rule-1 for Map
        [_val = px::bind
          (
            [&MapList]
            (const Typ *KTyp, const Typ *VTyp) {
              for (const Typ *T : MapList) {
                ASSERT(T->m_t == Typ::Map_typ, "Expected MapTyp");
                if (T->m_sub.m_mapt->m_keyTyp == KTyp &&
                    T->m_sub.m_mapt->m_valTyp == VTyp) {
                  // We have a match.
                  return T;
                }
              }
              CREATE_ERROR("No matching MapTyp found");
            },
            _1, _2
          )
        ]
    | (TIdent_R >> *T_R) // Rule-2 for PrimTyp and ADTs
        [_val = px::bind
          (
            [&PrimMap, &ADTMap]
            (std::string &TName, std::vector<const Typ *> TArgs) {
              // Check if this is a PrimTyp.
              auto itrPrim = PrimMap.find(TName);
              if (itrPrim != PrimMap.end()) {
                const Typ *T = itrPrim->second;
                ASSERT(T->m_t == Typ::Prim_typ, "Expected PrimTyp");
                ASSERT(TArgs.empty(), "Primary type " + TName +
                                          " cannot have type arguments");
                return T;
              }
              // Check if this is an ADT
              auto itrADT = ADTMap.find(TName);
              if (itrADT != ADTMap.end()) {
                std::vector<const Typ *> &Ts = itrADT->second;
                for (auto *T : Ts) {
                  ASSERT(T->m_t == Typ::ADT_typ, "Expected ADT");
                  ADTTyp::Specl *Spl = T->m_sub.m_spladt;
                  if (Spl->m_parent->m_numTArgs != (int)TArgs.size()) {
                    CREATE_ERROR("Error parsing " + TName +
                                ": incorrect number of type arguments");
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
              CREATE_ERROR("Unknown typ");
            },
            _1, _2
          )
        ] 
    | ('(' >> T_R >> ')') // Rule-3 for "( typ )"
        [_val = px::bind
          (
            []
            (const Typ *Var) {
              return Var; 
            },
            _1
          )
        ]
    ;
  // clang-format on

  const Typ *T = nullptr;
  if (!phrase_parse(input.begin(), input.end(), T_R, ascii::space, T))
    return nullptr;
  return T;
}

} // namespace ScillaTypes
} // namespace ScillaVM