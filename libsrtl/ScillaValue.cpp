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

namespace {

constexpr char Hexmap[] = {'0', '1', '2', '3', '4', '5', '6', '7',
                           '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

// Adapted from https://codereview.stackexchange.com/a/78539.
std::string rawToHex(const uint8_t *Data, int Len) {
  std::string S("0x");
  S.reserve(2 * Len + 2);
  for (int I = 0; I < Len; ++I) {
    S.push_back(Hexmap[(Data[I] >> 4) & 0x0f]);
    S.push_back(Hexmap[(Data[I] >> 0) & 0x0f]);
  }
  return S;
}

// Convert hex string to binary, allocate memory if @Bin is nullptr.
uint8_t *hex2Raw(SAllocator &A, uint8_t *Bin, int BinLen,
                 const std::string &Hex, int &NBytes) {
  int HStart = 0, HLen = Hex.length();
  if (HLen % 2 != 0 || HLen == 0)
    CREATE_ERROR("Invalid hexadecimal string " + Hex);

  if (Hex[0] == '0' && (Hex[1] == 'x' || Hex[1] == 'X')) {
    HStart += 2;
    HLen -= 2;
  }

  auto HexChar2Bin = [](char C) -> uint8_t {
    // clang-format off
    switch (C) {
      case '0': return 0x0;
      case '1': return 0x1;
      case '2': return 0x2;
      case '3': return 0x3;
      case '4': return 0x4;
      case '5': return 0x5;
      case '6': return 0x6;
      case '7': return 0x7;
      case '8': return 0x8;
      case '9': return 0x9;
      case 'a': case 'A': return 0xa;
      case 'b': case 'B': return 0xb;
      case 'c': case 'C': return 0xc;
      case 'd': case 'D': return 0xd;
      case 'e': case 'E': return 0xe;
      case 'f': case 'F': return 0xf;
      default: {
        CREATE_ERROR ("Invalid hexadecimal character " + std::string(1, C) + " in input");
      }
    }
    // clang-format on
  };

  // Allocate HLen / 2 bytes.
  NBytes = HLen / 2;
  if (!Bin) {
    ASSERT(BinLen == 0);
    Bin = reinterpret_cast<uint8_t *>(A(NBytes));
  } else {
    if (NBytes != BinLen) {
      CREATE_ERROR("ByStr" + std::to_string(NBytes) +
                   " value being parsed as ByStr" + std::to_string(BinLen));
    }
  }

  for (int Idx = 0; Idx < NBytes; Idx++) {
    uint8_t msn = HexChar2Bin(Hex[(2 * Idx) + HStart]);
    msn <<= 4;
    uint8_t lsn = HexChar2Bin(Hex[(2 * Idx) + HStart + 1]);
    Bin[Idx] = msn | lsn;
  }

  return Bin;
}
} // namespace

namespace ScillaValues {

std::string toString(bool PrintType, const ScillaTypes::Typ *T, const void *V) {

  std::string Out;
  // Do the work in a lambda to avoid generating new strings and
  // concatening it to Out. This saves a cop
  std::function<void(const ScillaTypes::Typ *T, const void *V)> recurser =
      [&recurser, &Out, &PrintType](const ScillaTypes::Typ *T,
                                    const void *V) -> void {
    switch (T->m_t) {
    case ScillaTypes::Typ::Prim_typ: {
      switch (T->m_sub.m_primt->m_pt) {
      case ScillaTypes::PrimTyp::Int_typ: {
        using namespace ScillaTypes;
        auto BW = T->m_sub.m_primt->m_detail.m_intBW;
        switch (BW) {
        case ScillaTypes::PrimTyp::Bits32: {
          auto VV = SafeInt32(reinterpret_cast<const Int32 *>(V));
          Out += VV.toString();
        } break;
        case ScillaTypes::PrimTyp::Bits64: {
          auto VV = SafeInt64(reinterpret_cast<const Int64 *>(V));
          Out += VV.toString();
        } break;
        case ScillaTypes::PrimTyp::Bits128: {
          auto VV = SafeInt128(reinterpret_cast<const Int128 *>(V));
          Out += VV.toString();
        } break;
        case ScillaTypes::PrimTyp::Bits256: {
          auto VV = SafeInt256(reinterpret_cast<const Int256 *>(V));
          Out += VV.toString();
        } break;
        }
      } break;
      case ScillaTypes::PrimTyp::Uint_typ: {
        using namespace ScillaTypes;
        auto BW = T->m_sub.m_primt->m_detail.m_intBW;
        switch (BW) {
        case ScillaTypes::PrimTyp::Bits32: {
          auto VV = SafeUint32(reinterpret_cast<const Uint32 *>(V));
          Out += VV.toString();
        } break;
        case ScillaTypes::PrimTyp::Bits64: {
          auto VV = SafeUint64(reinterpret_cast<const Uint64 *>(V));
          Out += VV.toString();
        } break;
        case ScillaTypes::PrimTyp::Bits128: {
          auto VV = SafeUint128(reinterpret_cast<const Uint128 *>(V));
          Out += VV.toString();
        } break;
        case ScillaTypes::PrimTyp::Bits256: {
          auto VV = SafeUint256(reinterpret_cast<const Uint256 *>(V));
          Out += VV.toString();
        } break;
        }
      } break;
      case ScillaTypes::PrimTyp::String_typ: {
        auto SP = reinterpret_cast<const ScillaTypes::String *>(V);
        Out += std::string(*SP);
      } break;
      case ScillaTypes::PrimTyp::Bystrx_typ: {
        auto X = T->m_sub.m_primt->m_detail.m_bystX;
        Out += rawToHex(reinterpret_cast<const uint8_t *>(V), X);
      } break;
      case ScillaTypes::PrimTyp::Bystr_typ: {
        auto SP = reinterpret_cast<const ScillaTypes::String *>(V);
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
      auto Tag = *reinterpret_cast<const uint8_t *>(V);
      auto SpeclP = T->m_sub.m_spladt;
      auto ConstrP = SpeclP->m_constrs[Tag];
      // Print the constructor name.
      Out += std::string(ConstrP->m_cName);
      // Now print each argument.
      auto VP = reinterpret_cast<const uint8_t *>(V);
      // Increment VP once to go past the Tag.
      VP++;
      for (int I = 0; I < ConstrP->m_numArgs; I++) {
        auto ArgT = ConstrP->m_args[I];
        Out += "(";
        if (ScillaTypes::Typ::isBoxed(ArgT))
          recurser(ArgT, *reinterpret_cast<const void *const *>(VP));
        else
          recurser(ArgT, reinterpret_cast<const void *>(VP));
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

    if (PrintType)
      Out += " : " + ScillaTypes::Typ::toString(T);
  };

  recurser(T, V);

  return Out;
}

Json::Value toJSON(const ScillaTypes::Typ *T, const void *V) {

  Json::Value Out;

  // Do the work in a lambda.
  std::function<void(const ScillaTypes::Typ *, const void *, Json::Value &)>
      recurser = [&recurser](const ScillaTypes::Typ *T, const void *V,
                             Json::Value &Out) -> void {
    switch (T->m_t) {
    case ScillaTypes::Typ::Prim_typ: {
      switch (T->m_sub.m_primt->m_pt) {
      case ScillaTypes::PrimTyp::Int_typ:
      case ScillaTypes::PrimTyp::Uint_typ:
      case ScillaTypes::PrimTyp::String_typ:
      case ScillaTypes::PrimTyp::Bystrx_typ:
      case ScillaTypes::PrimTyp::Bystr_typ:
      case ScillaTypes::PrimTyp::Bnum_typ: {
        // All these types just become JSON strings.
        Out = toString(false, T, V);
      } break;
      case ScillaTypes::PrimTyp::Msg_typ:
      case ScillaTypes::PrimTyp::Event_typ:
      case ScillaTypes::PrimTyp::Exception_typ: {
        if (!V) {
          ASSERT(T->m_sub.m_primt->m_pt == ScillaTypes::PrimTyp::Exception_typ);
          Out = Json::Value("error");
          break;
        }
        std::string Name;
        switch (T->m_sub.m_primt->m_pt) {
        case ScillaTypes::PrimTyp::Msg_typ:
          Name = "_tag";
          break;
        case ScillaTypes::PrimTyp::Event_typ:
          Name = "_eventname";
          break;
        case ScillaTypes::PrimTyp::Exception_typ:
          Name = "_exception";
          break;
        default:
          CREATE_ERROR("Unreachable");
        }
        auto V_UC = reinterpret_cast<const uint8_t *>(V);
        int NFields = *(V_UC++);

        for (int I = 0; I < NFields; I++) {
          // 1. Field's name.
          auto *FNameP = reinterpret_cast<const ScillaTypes::String *>(V_UC);
          auto FName = FNameP->operator std::string();
          V_UC += sizeof(ScillaTypes::String);
          // 2. Type descriptor for the value.
          auto *TD = *reinterpret_cast<const ScillaTypes::Typ *const *>(V_UC);
          V_UC += sizeof(const ScillaTypes::Typ *);
          // 3. The value itself.
          Json::Value VJ;
          if (ScillaTypes::Typ::isBoxed(TD)) {
            recurser(TD, *reinterpret_cast<const void *const *>(V_UC), VJ);
          } else {
            recurser(TD, V_UC, VJ);
          }
          V_UC += ScillaTypes::Typ::sizeOf(TD);
          // Bundle all the data into E.
          if (FName == Name || (Name == "_tag" && (FName == "_recipient" ||
                                                   FName == "_amount"))) {
            Out[FName] = VJ;
          } else {
            Json::Value VV;
            VV["vname"] = FName;
            VV["type"] = ScillaTypes::Typ::toString(TD);
            VV["value"] = VJ;
            Out["params"].append(VV);
          }
        }
        break;
      }
      }
      break;
    }
    case ScillaTypes::Typ::ADT_typ: {
      auto Tag = *reinterpret_cast<const uint8_t *>(V);
      auto SpeclP = T->m_sub.m_spladt;
      auto ConstrP = SpeclP->m_constrs[Tag];
      auto ADTP = SpeclP->m_parent;
      // Print the constructor name.
      Out["constructor"] = Json::Value(std::string(ConstrP->m_cName));
      for (int i = 0; i < ADTP->m_numTArgs; i++) {
        Out["argtypes"].append(
            Json::Value(ScillaTypes::Typ::toString(SpeclP->m_TArgs[i])));
      }
      // Now print each argument.
      Out["arguments"] = Json::Value(Json::arrayValue);
      auto VP = reinterpret_cast<const uint8_t *>(V);
      // Increment VP once to go past the Tag.
      VP++;
      for (int I = 0; I < ConstrP->m_numArgs; I++) {
        auto ArgT = ConstrP->m_args[I];
        Json::Value Arg;
        if (ScillaTypes::Typ::isBoxed(ArgT))
          recurser(ArgT, *reinterpret_cast<const void *const *>(VP), Arg);
        else
          recurser(ArgT, reinterpret_cast<const void *>(VP), Arg);
        Out["arguments"].append(Arg);
        // Increment our data pointer equal to the size we just finised.
        // structs containing ADTs are packed, so that we don't have to
        // worry about padding here.
        VP += ScillaTypes::Typ::sizeOf(ArgT);
      }
    } break;
    case ScillaTypes::Typ::Map_typ:
      CREATE_ERROR("Unimplemented");
    }
  };

  recurser(T, V, Out);

  return Out;
}

void *fromJSONToMem(SAllocator &A, void *MemV, int MemSize,
                    const ScillaTypes::Typ *T, const Json::Value &J) {

  auto *Mem = reinterpret_cast<uint8_t *>(MemV);

  switch (T->m_t) {
  case ScillaTypes::Typ::Prim_typ: {
    if (!J.isString()) {
      CREATE_ERROR("Expected string JSON for primitive type");
    }
    auto JS = J.asString();
    // If memory isn't already allocated, allocate now.
    if (!Mem) {
      ASSERT(MemSize == 0);
      MemSize = ScillaTypes::Typ::sizeOf(T);
      Mem = reinterpret_cast<uint8_t *>(A(MemSize));
    } else {
      ASSERT_MSG(MemSize == ScillaTypes::Typ::sizeOf(T),
                 "Incorrect memory allocation");
    }
    switch (T->m_sub.m_primt->m_pt) {
    case ScillaTypes::PrimTyp::Int_typ: {
      using namespace ScillaTypes;
      auto BW = T->m_sub.m_primt->m_detail.m_intBW;
      switch (BW) {
      case ScillaTypes::PrimTyp::Bits32: {
        new (Mem) Int32(static_cast<Int32>(SafeInt32(JS)));
        ASSERT(sizeof(Int32) == MemSize);
        return Mem;
      }
      case ScillaTypes::PrimTyp::Bits64: {
        new (Mem) Int64(static_cast<Int64>(SafeInt64(JS)));
        ASSERT(sizeof(Int64) == MemSize);
        return Mem;
      }
      case ScillaTypes::PrimTyp::Bits128: {
        new (Mem) Int128(static_cast<Int128>(SafeInt128(JS)));
        ASSERT(sizeof(Int128) == MemSize);
        return Mem;
      }
      case ScillaTypes::PrimTyp::Bits256: {
        new (Mem) Int256(static_cast<Int256>(SafeInt256(JS)));
        ASSERT(sizeof(Int256) == MemSize);
        return Mem;
      }
      }
    } break;
    case ScillaTypes::PrimTyp::Uint_typ: {
      using namespace ScillaTypes;
      auto BW = T->m_sub.m_primt->m_detail.m_intBW;
      switch (BW) {
      case ScillaTypes::PrimTyp::Bits32: {
        new (Mem) Uint32(static_cast<Uint32>(SafeUint32(JS)));
        ASSERT(sizeof(Uint32) == MemSize);
        return Mem;
      }
      case ScillaTypes::PrimTyp::Bits64: {
        new (Mem) Uint64(static_cast<Uint64>(SafeUint64(JS)));
        ASSERT(sizeof(Uint64) == MemSize);
        return Mem;
      }
      case ScillaTypes::PrimTyp::Bits128: {
        new (Mem) Uint128(static_cast<Uint128>(SafeUint128(JS)));
        ASSERT(sizeof(Uint128) == MemSize);
        return Mem;
      }
      case ScillaTypes::PrimTyp::Bits256: {
        new (Mem) Uint256(static_cast<Uint256>(SafeUint256(JS)));
        ASSERT(sizeof(Uint256) == MemSize);
        return Mem;
      }
      }
    } break;
    case ScillaTypes::PrimTyp::String_typ: {
      uint8_t *Buf = reinterpret_cast<uint8_t *>(A(JS.length()));
      std::memcpy(Buf, JS.data(), JS.length());
      new (Mem) ScillaTypes::String({Buf, (int)JS.length()});
      return Mem;
    }
    case ScillaTypes::PrimTyp::Bystr_typ: {
      int NBytes;
      uint8_t *Buf = hex2Raw(A, nullptr, 0, JS, NBytes);
      new (Mem) ScillaTypes::String({Buf, NBytes});
      return Mem;
    }
    case ScillaTypes::PrimTyp::Bystrx_typ: {
      int NBytes;
      hex2Raw(A, Mem, MemSize, JS, NBytes);
      ASSERT(NBytes == MemSize);
      return Mem;
    }
    case ScillaTypes::PrimTyp::Bnum_typ:
    case ScillaTypes::PrimTyp::Msg_typ:
    case ScillaTypes::PrimTyp::Event_typ:
    case ScillaTypes::PrimTyp::Exception_typ: {
      CREATE_ERROR("Unhandled PrimTyp values");
    }
    }
  } break;
  case ScillaTypes::Typ::ADT_typ: {
    ASSERT_MSG(!Mem && MemSize == 0,
               "ADTs shouldn't have memory pre-allocated");
    if (!J.isObject()) {
      // TODO: JSON can be array for Lists.
      CREATE_ERROR("Expected ADT to be encoded as JSON object");
    }
    Json::Value CnstJ, ArgsJ;
    if ((CnstJ = J.get("constructor", Json::nullValue)) == Json::nullValue ||
        (ArgsJ = J.get("arguments", Json::nullValue)) == Json::nullValue ||
        !CnstJ.isString() || !ArgsJ.isArray()) {
      CREATE_ERROR("Invalid JSON serialization of ADT. Missing or incorrect "
                   "format member");
    }
    std::string CnstS = CnstJ.asString();
    auto SpeclP = T->m_sub.m_spladt;
    auto ADTP = SpeclP->m_parent;
    // Let's search for this constructor in our type descriptor.
    uint8_t Tag;
    int I;
    ScillaTypes::ADTTyp::Constr *ConstrP;
    for (I = 0; I < ADTP->m_numConstrs; I++) {
      ConstrP = SpeclP->m_constrs[I];
      if (ConstrP->m_cName.m_length == (int)CnstS.length() &&
          !strncmp(reinterpret_cast<const char *>(ConstrP->m_cName.m_buffer),
                   CnstS.data(), CnstS.length())) {
        Tag = (uint8_t)I;
        break;
      }
    }
    if (I >= ADTP->m_numConstrs) {
      CREATE_ERROR("Unknown constructor " + CnstS);
    }
    // We now know the concrete constructor we're going to parse.
    if (ConstrP->m_numArgs != (int)ArgsJ.size()) {
      CREATE_ERROR("Constructor " + CnstS +
                   " has incorrect number of arguments");
    }
    // Compute the memory we require to construct this object,
    // starting from 1 to account for uint8_t Tag.
    MemSize = 1;
    for (I = 0; I < (int)ArgsJ.size(); I++) {
      MemSize += ScillaTypes::Typ::sizeOf(ConstrP->m_args[I]);
    }
    Mem = reinterpret_cast<uint8_t *>(A(MemSize));
    int Offset = 0;
    // First component is the tag.
    *Mem = Tag;
    Offset++;
    // Place all constructor arguments in the allocated memory.
    for (I = 0; I < (int)ArgsJ.size(); I++) {
      ScillaTypes::Typ *IT = ConstrP->m_args[I];
      auto ISize = ScillaTypes::Typ::sizeOf(IT);
      if (ScillaTypes::Typ::isBoxed(IT)) {
        uint8_t *BoxedSub = reinterpret_cast<uint8_t *>(
            fromJSONToMem(A, nullptr, 0, IT, ArgsJ[I]));
        *reinterpret_cast<uint8_t **>(Mem + Offset) = BoxedSub;
        ASSERT_MSG(ISize == (int)sizeof(void *), "Pointer size mismatch");
      } else {
        fromJSONToMem(A, Mem + Offset, ISize, IT, ArgsJ[I]);
      }
      Offset += ISize;
    }
    return Mem;
  } break;
  case ScillaTypes::Typ::Map_typ: {
    ASSERT_MSG(!Mem && MemSize == 0,
               "Maps shouldn't have memory pre-allocated");
    CREATE_ERROR("Unimplemented");
  }
  }

  CREATE_ERROR("Unreachable");
}

void *fromJSON(SAllocator &A, const ScillaTypes::Typ *T, const Json::Value &J) {
  return fromJSONToMem(A, nullptr, 0, T, J);
}

} // namespace ScillaValues
} // namespace ScillaVM
