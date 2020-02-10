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

#include "ScillaValue.h"
#include "SafeInt.h"
#include "ScillaVM/Errors.h"

namespace ScillaVM {
namespace ScillaValues {

constexpr char Hexmap[] = {'0', '1', '2', '3', '4', '5', '6', '7',
                           '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

// Adapted from https://codereview.stackexchange.com/a/78539.
std::string rawToHex(uint8_t *Data, int Len) {
  std::string S("0x");
  S.reserve(2 * Len + 2);
  for (int I = 0; I < Len; ++I) {
    S.push_back(Hexmap[(Data[I] >> 4) & 0x0f]);
    S.push_back(Hexmap[(Data[I] >> 0) & 0x0f]);
  }
  return S;
}

std::string toString(const ScillaTypes::Typ *T, void *V) {

  std::string Out;
  // Do the work in a lambda to avoid generating new strings and
  // concatening it to Out. This saves a cop
  std::function<void(const ScillaTypes::Typ *T, void *V)> recurser =
      [&recurser, &Out](const ScillaTypes::Typ *T, void *V) -> void {
    switch (T->m_t) {
    case ScillaTypes::Typ::Prim_typ: {
      switch (T->m_sub.m_primt->pt) {
      case ScillaTypes::PrimTyp::Int_typ: {
        using namespace ScillaTypes;
        auto BW = T->m_sub.m_primt->m_detail.m_intBW;
        switch (BW) {
        case ScillaTypes::PrimTyp::Bits32: {
          auto VV = SafeInt<32>(reinterpret_cast<Int32 *>(V));
          Out += VV.toString();
        } break;
        case ScillaTypes::PrimTyp::Bits64: {
          auto VV = SafeInt<64>(reinterpret_cast<Int64 *>(V));
          Out += VV.toString();
        } break;
        case ScillaTypes::PrimTyp::Bits128: {
          auto VV = SafeInt<128>(reinterpret_cast<Int128 *>(V));
          Out += VV.toString();
        } break;
        case ScillaTypes::PrimTyp::Bits256: {
          auto VV = SafeInt<256>(reinterpret_cast<Int256 *>(V));
          Out += VV.toString();
        } break;
        }
      } break;
      case ScillaTypes::PrimTyp::Uint_typ: {
        using namespace ScillaTypes;
        auto BW = T->m_sub.m_primt->m_detail.m_intBW;
        switch (BW) {
        case ScillaTypes::PrimTyp::Bits32: {
          auto VV = SafeUint<32>(reinterpret_cast<Uint32 *>(V));
          Out += VV.toString();
        } break;
        case ScillaTypes::PrimTyp::Bits64: {
          auto VV = SafeUint<64>(reinterpret_cast<Uint64 *>(V));
          Out += VV.toString();
        } break;
        case ScillaTypes::PrimTyp::Bits128: {
          auto VV = SafeUint<128>(reinterpret_cast<Uint128 *>(V));
          Out += VV.toString();
        } break;
        case ScillaTypes::PrimTyp::Bits256: {
          auto VV = SafeUint<256>(reinterpret_cast<Uint256 *>(V));
          Out += VV.toString();
        } break;
        }
      } break;
      case ScillaTypes::PrimTyp::String_typ: {
        auto SP = reinterpret_cast<ScillaTypes::Bytes *>(V);
        Out += std::string(*SP);
      } break;
      case ScillaTypes::PrimTyp::Bystrx_typ: {
        auto X = T->m_sub.m_primt->m_detail.m_bystX;
        Out += rawToHex(reinterpret_cast<uint8_t *>(V), X);
      } break;
      case ScillaTypes::PrimTyp::Bystr_typ: {
        auto SP = reinterpret_cast<ScillaTypes::Bytes *>(V);
        Out += rawToHex(SP->m_buffer, SP->m_length);
      } break;
      case ScillaTypes::PrimTyp::Bnum_typ:
      case ScillaTypes::PrimTyp::Msg_typ:
      case ScillaTypes::PrimTyp::Event_typ:
      case ScillaTypes::PrimTyp::Exception_typ:
        CREATE_ERROR("Unhandled PrimTyp values");
      }
      break;
    } break;
    case ScillaTypes::Typ::ADT_typ: {
      auto Tag = *reinterpret_cast<uint8_t *>(V);
      auto SpeclP = T->m_sub.m_spladt;
      auto ConstrP = SpeclP->m_constrs[Tag];
      // Print the constructor name.
      Out += std::string(ConstrP->m_cName);
      // Now print each argument.
      auto VP = reinterpret_cast<uint8_t *>(V);
      // Increment VP once to go past the Tag.
      VP++;
      for (int I = 0; I < ConstrP->m_numArgs; I++) {
        auto ArgT = ConstrP->m_args[I];
        Out += "(";
        if (ScillaTypes::Typ::isBoxed(ArgT))
          recurser(ArgT, *reinterpret_cast<void **>(VP));
        else
          recurser(ArgT, reinterpret_cast<void *>(VP));
        Out += ")";
        // Increment our data pointer equal to the size we just finised.
        // structs containing ADTs are packed, so that we don't have to
        // worry about padding here.
        VP += ScillaTypes::Typ::sizeOf(ArgT);
      }
    } break;
    case ScillaTypes::Typ::Map_typ:
      CREATE_ERROR("Unimplemented");
    }

    Out += " : " + ScillaTypes::Typ::toString(T);
  };

  recurser(T, V);

  return Out;
}

} // namespace ScillaValues
} // namespace ScillaVM
