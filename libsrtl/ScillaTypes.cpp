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

#include "ScillaTypes.h"
#include "ScillaVM/ScillaErrors.h"

namespace ScillaVM {

namespace ScillaTypes {

Bytes::operator ByteVec() const {
  return ByteVec(m_buffer, m_buffer + m_length);
}

Bytes::operator std::string() const {
  return std::string(m_buffer, m_buffer + m_length);
}

std::string &Typ::toString(const Typ *T, std::string &Out) {

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
      default:
        CREATE_ERROR("Unhandled integer bit-width");
      }
    };
    switch (T->m_sub.m_primt->pt) {
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
    for (int i = 0; i < SP->m_numTArgs; i++) {
      Out += " (";
      toString(SP->m_TArgs[i], Out);
      Out += ")";
    }
  } break;
  case Typ::Map_typ: {
    MapTyp *MP = T->m_sub.m_mapt;
    Out += "Map (";
    toString(MP->m_keyTyp, Out);
    Out += ") (";
    toString(MP->m_valTyp, Out);
    Out += ")";
  } break;
  }

  return Out;
}

} // namespace ScillaTypes
} // namespace ScillaVM