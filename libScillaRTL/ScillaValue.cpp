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

#include <boost/predef.h>

#include "ScillaRTL/Errors.h"
#include "ScillaRTL/Utils.h"

#include "SafeInt.h"
#include "ScillaExecImpl.h"
#include "ScillaTypes.h"
#include "ScillaValue.h"

namespace bmp = boost::multiprecision;

namespace ScillaRTL {

namespace {
constexpr char Hexmap[] = {'0', '1', '2', '3', '4', '5', '6', '7',
                           '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
} // namespace

namespace ScillaValues {

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

uint8_t *hex2Raw(ObjManager &OM, uint8_t *Bin, int BinLen,
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
    Bin = reinterpret_cast<uint8_t *>(OM.allocBytes(NBytes));
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

void revBytes(uint8_t *Buf, int Len) {
  for (int I = 0; I < Len / 2; I++) {
    auto T = Buf[I];
    Buf[I] = Buf[Len - I - 1];
    Buf[Len - I - 1] = T;
  }
}

bool validateStringLiteral(const uint8_t Buf[], size_t Len) {
  return std::all_of(Buf, Buf + Len, [](uint8_t C) {
    uint8_t Specials[] = {'\b', '\012', '\n', '\r', '\t'};
    if (C >= 32 && C <= 126) {
      // Printable, so no problem.
      return true;
    }
    // Check if specially allowed.
    auto Last = Specials + sizeof(Specials);
    if (std::find(Specials, Last, C) != Last) {
      return true;
    }
    return false;
  });
}

std::string toString(bool PrintType, const ScillaTypes::Typ *T, const void *V) {

  std::string Out;
  // Do the work in a lambda to avoid generating new strings and
  // concatening it to Out. This saves a cop
  std::function<void(const ScillaTypes::Typ *T, std::string Tab, const void *V)>
      recurser = [&recurser, &Out, &PrintType](const ScillaTypes::Typ *T,
                                               std::string Tab,
                                               const void *V) -> void {
    switch (T->m_t) {
    case ScillaTypes::Typ::Prim_typ: {
      switch (T->m_sub.m_primt->m_pt) {
      case ScillaTypes::PrimTyp::Int_typ: {
        using namespace ScillaTypes;
        auto BW = T->m_sub.m_primt->m_detail.m_intBW;
        switch (BW) {
        case ScillaTypes::PrimTyp::Bits32: {
          auto *VV = reinterpret_cast<const SafeInt32 *>(V);
          Out += VV->toString();
        } break;
        case ScillaTypes::PrimTyp::Bits64: {
          auto *VV = reinterpret_cast<const SafeInt64 *>(V);
          Out += VV->toString();
        } break;
        case ScillaTypes::PrimTyp::Bits128: {
          auto *VV = reinterpret_cast<const SafeInt128 *>(V);
          Out += VV->toString();
        } break;
        case ScillaTypes::PrimTyp::Bits256: {
          auto *VV = reinterpret_cast<const SafeInt256 *>(V);
          Out += VV->toString();
        } break;
        }
      } break;
      case ScillaTypes::PrimTyp::Uint_typ: {
        using namespace ScillaTypes;
        auto BW = T->m_sub.m_primt->m_detail.m_intBW;
        switch (BW) {
        case ScillaTypes::PrimTyp::Bits32: {
          auto *VV = reinterpret_cast<const SafeUint32 *>(V);
          Out += VV->toString();
        } break;
        case ScillaTypes::PrimTyp::Bits64: {
          auto *VV = reinterpret_cast<const SafeUint64 *>(V);
          Out += VV->toString();
        } break;
        case ScillaTypes::PrimTyp::Bits128: {
          auto *VV = reinterpret_cast<const SafeUint128 *>(V);
          Out += VV->toString();
        } break;
        case ScillaTypes::PrimTyp::Bits256: {
          auto *VV = reinterpret_cast<const SafeUint256 *>(V);
          Out += VV->toString();
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
      case ScillaTypes::PrimTyp::Bnum_typ: {
        auto IP = reinterpret_cast<const BigNum *>(V);
        Out += IP->toString();
      } break;
      case ScillaTypes::PrimTyp::Msg_typ:
      case ScillaTypes::PrimTyp::Event_typ:
      case ScillaTypes::PrimTyp::Exception_typ:
      case ScillaTypes::PrimTyp::ReplicateContr_typ:
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
      iterScillaADTConstrArgs(
          T, V,
          [&Out, &recurser, Tab](const ScillaTypes::Typ *ArgT,
                                 const void *ArgV) {
            Out += "(";
            recurser(ArgT, Tab, ArgV);
            Out += ")";
          });
    } break;
    case ScillaTypes::Typ::Map_typ: {
      auto KeyT = T->m_sub.m_mapt->m_keyTyp;
      auto ValT = T->m_sub.m_mapt->m_valTyp;
      auto M = reinterpret_cast<const ScillaParams::MapValueT *>(V);
      if (M->empty()) {
        Out += "Emp";
      } else {
        // Sort the map for deterministic behaviour.
        std::vector<MapKeyValT> M_(M->begin(), M->end());
        std::sort(M_.begin(), M_.end(),
                  [](const MapKeyValT &El1, const MapKeyValT &El2) {
                    return El1.first > El2.first;
                  });
        auto OneTab = "  ";
        Out += "\n" + Tab + "{\n";
        ObjManager OM;
        for (const auto &Itr : M_) {
          Out += Tab + OneTab;
          Json::Value KeyJ = parseJSONString(Itr.first);
          auto *KeyV = ScillaValues::fromJSON(OM, KeyT, KeyJ);
          recurser(KeyT, Tab, KeyV);
          Out += " => ";
          switch (ValT->m_t) {
          case ScillaTypes::Typ::Map_typ: {
            auto &ValJS =
                std::any_cast<const ScillaParams::MapValueT &>(Itr.second);
            recurser(ValT, Tab + OneTab, &ValJS);
            break;
          }
          default: {
            auto &ValJS = std::any_cast<const std::string &>(Itr.second);
            Json::Value ValJ = parseJSONString(ValJS);
            auto *ValV = ScillaValues::fromJSON(OM, ValT, ValJ);
            recurser(ValT, Tab + OneTab, ValV);
          }
          }
        }
        Out += "\n" + Tab + "}";
      }
    } break;
    case ScillaTypes::Typ::Address_typ: {
      // Same as ByStr20.
      Out += rawToHex(reinterpret_cast<const uint8_t *>(V),
                      ScillaTypes::AddrByStr_Len);
    } break;
    }

    if (PrintType)
      Out += " : " + ScillaTypes::Typ::toString(T);
  };

  recurser(T, "", V);

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
      case ScillaTypes::PrimTyp::Exception_typ: 
      case ScillaTypes::PrimTyp::ReplicateContr_typ: {
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
        case ScillaRTL::ScillaTypes::PrimTyp::ReplicateContr_typ:
          Name = "_replicate_contract";
          break;
        default:
          CREATE_ERROR("Unreachable");
        }
        Out["params"] = Json::arrayValue;
        iterScillaMsgObjectElms(
            T, V,
            [&recurser, &Out, &Name](const ScillaTypes::Typ *T, const void *V,
                                     const std::string &FName) {
              Json::Value VJ;
              recurser(T, V, VJ);
              // Bundle all the data into E.
              if (FName == Name || (Name == "_tag" && (FName == "_recipient" ||
                                                       FName == "_amount"))) {
                Out[FName] = VJ;
              } else {
                Json::Value VV;
                VV["vname"] = FName;
                VV["type"] = ScillaTypes::Typ::toString(T);
                VV["value"] = VJ;
                Out["params"].append(VV);
              }
            });
        if (Name == "_replicate_contract") {
          // If this is a replicate contract Msg object,
          // then output in the form of an init JSON.
          Out = Out["params"];
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
      Out["argtypes"] = Json::arrayValue;
      for (int i = 0; i < ADTP->m_numTArgs; i++) {
        Out["argtypes"].append(
            Json::Value(ScillaTypes::Typ::toString(SpeclP->m_TArgs[i])));
      }
      // Now print each argument.
      Out["arguments"] = Json::arrayValue;
      iterScillaADTConstrArgs(
          T, V, [&Out, &recurser](const ScillaTypes::Typ *ArgT, const void *V) {
            Json::Value Arg;
            recurser(ArgT, V, Arg);
            Out["arguments"].append(Arg);
          });
    } break;
    case ScillaTypes::Typ::Map_typ: {
      auto ValT = T->m_sub.m_mapt->m_valTyp;
      auto M = reinterpret_cast<const ScillaParams::MapValueT *>(V);
      ObjManager MA;
      Out = Json::arrayValue;
      for (auto &Itr : *M) {
        Json::Value KeyJ = parseJSONString(Itr.first);
        Json::Value ValJ;
        switch (ValT->m_t) {
        case ScillaTypes::Typ::Map_typ: {
          auto &ValJS =
              std::any_cast<const ScillaParams::MapValueT &>(Itr.second);
          recurser(ValT, &ValJS, ValJ);
          break;
        }
        default: {
          auto &ValJS = std::any_cast<const std::string &>(Itr.second);
          ValJ = parseJSONString(ValJS);
        }
        }
        Json::Value Assoc;
        Assoc["key"] = KeyJ;
        Assoc["val"] = ValJ;
        Out.append(Assoc);
      }
    } break;
    case ScillaTypes::Typ::Address_typ: {
      // Same as ByStr20, it becomes a string.
      Out = toString(false, T, V);
    } break;
    }
  };

  recurser(T, V, Out);

  return Out;
}

void *fromJSONToMem(ObjManager &OM, void *MemV, int MemSize,
                    const ScillaTypes::Typ *T, const Json::Value &J) {

  auto *Mem = reinterpret_cast<uint8_t *>(MemV);

  ASSERT_MSG(!ScillaTypes::Typ::isBoxed(T) || (!Mem && MemSize == 0),
             "Boxed types cannot have memory pre-allocated");

  switch (T->m_t) {
  case ScillaTypes::Typ::Prim_typ:
  case ScillaTypes::Typ::Address_typ: {
    if (!J.isString()) {
      CREATE_ERROR("Expected string JSON for primitive type");
    }
    auto JS = J.asString();
    // If memory isn't already allocated, allocate now.
    ASSERT_MSG((!Mem && MemSize == 0) ||
                   (Mem && MemSize == ScillaTypes::Typ::sizeOf(T)),
               "Incorrect memory allocation");
    if (!ScillaTypes::Typ::isBoxed(T) && !Mem) {
      MemSize = ScillaTypes::Typ::sizeOf(T);
      Mem = reinterpret_cast<uint8_t *>(OM.allocBytes(MemSize));
    }
    if (T->m_t == ScillaTypes::Typ::Address_typ) {
      ASSERT(MemSize == ScillaTypes::AddrByStr_Len);
      int NBytes;
      hex2Raw(OM, Mem, MemSize, JS, NBytes);
      ASSERT(NBytes == MemSize);
      return Mem;
    }
    switch (T->m_sub.m_primt->m_pt) {
    case ScillaTypes::PrimTyp::Int_typ: {
      using namespace ScillaTypes;
      auto BW = T->m_sub.m_primt->m_detail.m_intBW;
      switch (BW) {
      case ScillaTypes::PrimTyp::Bits32: {
        ASSERT(sizeof(SafeInt32) == MemSize);
        return new (Mem) SafeInt32(JS);
      }
      case ScillaTypes::PrimTyp::Bits64: {
        ASSERT(sizeof(SafeInt64) == MemSize);
        return new (Mem) SafeInt64(JS);
      }
      case ScillaTypes::PrimTyp::Bits128: {
        ASSERT(sizeof(SafeInt128) == MemSize);
        return new (Mem) SafeInt128(JS);
      }
      case ScillaTypes::PrimTyp::Bits256: {
        ASSERT(sizeof(SafeInt256) == MemSize);
        return new (Mem) SafeInt256(JS);
      }
      }
    } break;
    case ScillaTypes::PrimTyp::Uint_typ: {
      using namespace ScillaTypes;
      auto BW = T->m_sub.m_primt->m_detail.m_intBW;
      switch (BW) {
      case ScillaTypes::PrimTyp::Bits32: {
        ASSERT(sizeof(SafeUint32) == MemSize);
        return new (Mem) SafeUint32(JS);
      }
      case ScillaTypes::PrimTyp::Bits64: {
        ASSERT(sizeof(SafeUint64) == MemSize);
        return new (Mem) SafeUint64(JS);
      }
      case ScillaTypes::PrimTyp::Bits128: {
        ASSERT(sizeof(SafeUint128) == MemSize);
        return new (Mem) SafeUint128(JS);
      }
      case ScillaTypes::PrimTyp::Bits256: {
        ASSERT(sizeof(SafeUint256) == MemSize);
        return new (Mem) SafeUint256(JS);
      }
      }
    } break;
    case ScillaTypes::PrimTyp::String_typ: {
      if (!validateStringLiteral(reinterpret_cast<const uint8_t *>(JS.data()),
                                 JS.length())) {
        CREATE_ERROR("Invalid string literal in JSON");
      }
      uint8_t *Buf = reinterpret_cast<uint8_t *>(OM.allocBytes(JS.length()));
      std::memcpy(Buf, JS.data(), JS.length());
      new (Mem) ScillaTypes::String({Buf, (int)JS.length()});
      return Mem;
    }
    case ScillaTypes::PrimTyp::Bystr_typ: {
      int NBytes;
      uint8_t *Buf = hex2Raw(OM, nullptr, 0, JS, NBytes);
      new (Mem) ScillaTypes::String({Buf, NBytes});
      return Mem;
    }
    case ScillaTypes::PrimTyp::Bystrx_typ: {
      int NBytes;
      hex2Raw(OM, Mem, MemSize, JS, NBytes);
      ASSERT(NBytes == MemSize);
      return Mem;
    }
    case ScillaTypes::PrimTyp::Bnum_typ: {
      ASSERT_MSG(!Mem && MemSize == 0,
                 "BNums shouldn't have memory pre-allocated");
      if (!J.isString()) {
        CREATE_ERROR("BNum JSON must be a string");
      }
      return OM.create<BigNum>(J.asString());
    }
    case ScillaTypes::PrimTyp::Msg_typ:
    case ScillaTypes::PrimTyp::Event_typ:
    case ScillaTypes::PrimTyp::Exception_typ: 
    case ScillaTypes::PrimTyp::ReplicateContr_typ: {
      CREATE_ERROR("Unhandled PrimTyp values");
    }
    }
  } break;
  case ScillaTypes::Typ::ADT_typ: {
    auto SpeclP = T->m_sub.m_spladt;
    auto ADTP = SpeclP->m_parent;

    Json::Value JCanon;
    if (!J.isObject()) {
      // For user convenience, we allow writing Lists as JSON lists.
      // So convert them to canonical (Scilla like) lists.
      if (static_cast<std::string>(ADTP->m_tName) != "List" || !J.isArray())
        CREATE_ERROR("Expected ADT to be encoded as JSON object");
      auto TArg = ScillaTypes::Typ::toString(SpeclP->m_TArgs[0]);
      Json::Value Nil;
      Nil["constructor"] = "Nil";
      Nil["arguments"] = Json::arrayValue;
      Nil["argtypes"].append(TArg);
      // Build a canonical List JSON.
      JCanon = Nil;
      for (int I = J.size() - 1; I >= 0; I--) {
        Json::Value V;
        V["constructor"] = "Cons";
        V["argtypes"].append(TArg);
        V["arguments"].append(J[I]);
        V["arguments"].append(JCanon);
        JCanon = V;
      }
    } else {
      JCanon = J;
    }

    Json::Value CnstJ, ArgsJ;
    if ((CnstJ = JCanon.get("constructor", Json::nullValue)) ==
            Json::nullValue ||
        (ArgsJ = JCanon.get("arguments", Json::nullValue)) == Json::nullValue ||
        !CnstJ.isString() || !ArgsJ.isArray()) {
      CREATE_ERROR("Invalid JSON serialization of ADT. Missing or incorrect "
                   "format member");
    }
    std::string CnstS = CnstJ.asString();
    // Let's search for this constructor in our type descriptor.
    uint8_t Tag;
    int I;
    const ScillaTypes::ADTTyp::Constr *ConstrP;
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
    Mem = reinterpret_cast<uint8_t *>(OM.allocBytes(MemSize));
    int Offset = 0;
    // First component is the tag.
    *Mem = Tag;
    Offset++;
    // Place all constructor arguments in the allocated memory.
    for (I = 0; I < (int)ArgsJ.size(); I++) {
      const ScillaTypes::Typ *IT = ConstrP->m_args[I];
      auto ISize = ScillaTypes::Typ::sizeOf(IT);
      if (ScillaTypes::Typ::isBoxed(IT)) {
        uint8_t *BoxedSub = reinterpret_cast<uint8_t *>(
            fromJSONToMem(OM, nullptr, 0, IT, ArgsJ[I]));
        *reinterpret_cast<uint8_t **>(Mem + Offset) = BoxedSub;
        ASSERT_MSG(ISize == (int)sizeof(void *), "Pointer size mismatch");
      } else {
        fromJSONToMem(OM, Mem + Offset, ISize, IT, ArgsJ[I]);
      }
      Offset += ISize;
    }
    return Mem;
  } break;
  case ScillaTypes::Typ::Map_typ: {
    if (!J.isArray()) {
      CREATE_ERROR("Map JSON must be an array");
    }
    auto *M = OM.create<ScillaParams::MapValueT>();
    for (auto &Entry : J) {
      if (!Entry.isObject()) {
        CREATE_ERROR("Each entry in Map JSON must be an associative JSON");
      }
      auto &KeyJ = Entry["key"];
      auto &ValJ = Entry["val"];
      if (KeyJ.isNull() || ValJ.isNull()) {
        CREATE_ERROR("Map JSON entry does not contain key/val entry");
      }
      auto KeyS = serializeJSON(KeyJ);
      auto *ValT = T->m_sub.m_mapt->m_valTyp;
      switch (ValT->m_t) {
      case ScillaTypes::Typ::Map_typ: {
        auto SubM = reinterpret_cast<ScillaParams::MapValueT *>(
            fromJSONToMem(OM, nullptr, 0, ValT, ValJ));
        M->emplace(KeyS, std::move(*SubM));
      } break;
      default:
        M->emplace(KeyS, serializeJSON(ValJ));
        break;
      }
    }
    return M;
  } break;
  }

  CREATE_ERROR("Unreachable");
}

void *fromJSON(ObjManager &A, const ScillaTypes::Typ *T, const Json::Value &J) {
  return fromJSONToMem(A, nullptr, 0, T, J);
}

void serializeForHashing(ByteVec &Ret, const ScillaTypes::Typ *T,
                         const void *VV) {

  auto V = reinterpret_cast<const uint8_t *>(VV);

  switch (T->m_t) {
  case ScillaTypes::Typ::Prim_typ: {
    switch (T->m_sub.m_primt->m_pt) {
    case ScillaTypes::PrimTyp::Int_typ:
    case ScillaTypes::PrimTyp::Uint_typ: {
      auto Len = ScillaTypes::Typ::sizeOf(T);
      Ret.insert(Ret.end(), V, V + Len);
#if BOOST_ENDIAN_LITTLE_BYTE
      // Native integer is little-endian. Convert it to big-endian.
      revBytes(Ret.data() + Ret.size() - Len, Len);
#endif
    } break;
    case ScillaTypes::PrimTyp::String_typ:
    case ScillaTypes::PrimTyp::Bystr_typ: {
      auto *VS = reinterpret_cast<const ScillaTypes::String *>(V);
      Ret.insert(Ret.end(), VS->m_buffer, VS->m_buffer + VS->m_length);
    } break;
    case ScillaTypes::PrimTyp::Bystrx_typ: {
      auto X = T->m_sub.m_primt->m_detail.m_bystX;
      Ret.insert(Ret.end(), V, V + X);
    } break;
    case ScillaTypes::PrimTyp::Bnum_typ: {
      auto VS = toString(false, T, V);
      Ret.insert(Ret.end(), VS.begin(), VS.end());
    } break;
    case ScillaTypes::PrimTyp::Msg_typ:
    case ScillaTypes::PrimTyp::Event_typ:
    case ScillaTypes::PrimTyp::Exception_typ: 
    case ScillaTypes::PrimTyp::ReplicateContr_typ: {
      CREATE_ERROR("Unhandled PrimTyp values");
    }
    }
  } break;
  case ScillaTypes::Typ::ADT_typ: {
    auto Tag = *reinterpret_cast<const uint8_t *>(V);
    auto SpeclP = T->m_sub.m_spladt;
    auto ConstrP = SpeclP->m_constrs[Tag];
    // Append the constructor name.
    Ret.insert(Ret.end(), ConstrP->m_cName.m_buffer,
               ConstrP->m_cName.m_buffer + ConstrP->m_cName.m_length);
    iterScillaADTConstrArgs(T, V,
                            [&Ret](const ScillaTypes::Typ *T, const void *V) {
                              serializeForHashing(Ret, T, V);
                            });
  } break;
  case ScillaTypes::Typ::Map_typ: {
    // Sort map before hashing.
    CREATE_ERROR("Unimplemented");
  } break;
  case ScillaTypes::Typ::Address_typ: {
    Ret.insert(Ret.end(), V, V + ScillaTypes::AddrByStr_Len);
  } break;
  }
}

uint64_t literalCost(const ScillaTypes::Typ *T, const void *V) {

  // StringLits have fixed cost till a certain length
  // and linear cost growth after that.
  auto stringLengthNormalize = [](uint64_t l) -> uint64_t {
    if (l <= 20)
      return 20;
    else
      return l;
  };

  switch (T->m_t) {
  case ScillaTypes::Typ::Prim_typ: {
    switch (T->m_sub.m_primt->m_pt) {
    case ScillaTypes::PrimTyp::Int_typ:
    case ScillaTypes::PrimTyp::Uint_typ:
    case ScillaTypes::PrimTyp::Bystrx_typ:
      return ScillaTypes::Typ::sizeOf(T);
    case ScillaTypes::PrimTyp::String_typ: {
      auto SP = reinterpret_cast<const ScillaTypes::String *>(V);
      return stringLengthNormalize(SP->m_length);
    }
    case ScillaTypes::PrimTyp::Bystr_typ: {
      auto SP = reinterpret_cast<const ScillaTypes::String *>(V);
      return SP->m_length;
    }
    case ScillaTypes::PrimTyp::Bnum_typ: {
      return 64;
    }
    case ScillaTypes::PrimTyp::Msg_typ:
    case ScillaTypes::PrimTyp::Event_typ:
    case ScillaTypes::PrimTyp::Exception_typ: 
    case ScillaTypes::PrimTyp::ReplicateContr_typ: {
      uint64_t Acc = 0;
      iterScillaMsgObjectElms(T, V,
                              [&Acc, &stringLengthNormalize](
                                  const ScillaTypes::Typ *T, const void *V,
                                  const std::string &FName) {
                                Acc += stringLengthNormalize(FName.size());
                                Acc += literalCost(T, V);
                              });
      return Acc;
    }
    }
    break;
  }
  case ScillaTypes::Typ::ADT_typ: {
    uint64_t Acc = 0;
    int NArgs = 0;
    iterScillaADTConstrArgs(
        T, V, [&Acc, &NArgs](const ScillaTypes::Typ *T, const void *V) {
          Acc += literalCost(T, V);
          NArgs++;
        });
    if (NArgs == 0) {
      return 1;
    }
    return Acc;
  };
  case ScillaTypes::Typ::Map_typ: {
    auto ValT = T->m_sub.m_mapt->m_valTyp;
    auto KeyT = T->m_sub.m_mapt->m_keyTyp;
    auto M = reinterpret_cast<const ScillaParams::MapValueT *>(V);
    ObjManager OM;

    uint64_t Acc = 0;
    for (auto &Itr : *M) {
      Json::Value KeyJ = parseJSONString(Itr.first);
      auto *KeyV = fromJSON(OM, KeyT, KeyJ);
      Acc += literalCost(KeyT, KeyV);
      switch (ValT->m_t) {
      case ScillaTypes::Typ::Map_typ: {
        auto &ValV = std::any_cast<const ScillaParams::MapValueT &>(Itr.second);
        Acc += literalCost(ValT, &ValV);
        break;
      }
      default: {
        auto &ValJS = std::any_cast<const std::string &>(Itr.second);
        auto ValJ = parseJSONString(ValJS);
        auto *ValV = fromJSON(OM, ValT, ValJ);
        Acc += literalCost(ValT, ValV);
      }
      }
    }
    return Acc;
  } break;
  case ScillaTypes::Typ::Address_typ: {
    return ScillaTypes::Typ::sizeOf(T);
  } break;
  }

  CREATE_ERROR("Unreachable");
}

void iterScillaList(const ScillaTypes::Typ *T, const void *Val,
                    ScillaValueCallback F) {

  using namespace ScillaTypes;
  ASSERT(T->m_t == ScillaTypes::Typ::ADT_typ);
  const ADTTyp::Specl *Sp = T->m_sub.m_spladt;
  ASSERT(std::string(Sp->m_parent->m_tName) == "List");
  ASSERT(Sp->m_parent->m_numTArgs == 1);

  const ScillaTypes::Typ *ElmT = Sp->m_TArgs[0];

  const void *V = Val;
  auto Tag = *reinterpret_cast<const uint8_t *>(V);
  while (Tag == List_Cons_Tag) {
    ASSERT(std::string(Sp->m_constrs[Tag]->m_cName) == "Cons" &&
           Sp->m_constrs[Tag]->m_numArgs == 2 &&
           ScillaTypes::Typ::equal(Sp->m_constrs[Tag]->m_args[0], ElmT) &&
           ScillaTypes::Typ::equal(Sp->m_constrs[Tag]->m_args[1], T));

    auto VP = reinterpret_cast<const uint8_t *>(V);
    // Increment VP once to go past the Tag.
    VP++;
    if (ScillaTypes::Typ::isBoxed(ElmT))
      F(ElmT, *reinterpret_cast<const void *const *>(VP));
    else
      F(ElmT, reinterpret_cast<const void *>(VP));
    // Go past this element to the next sublist.
    VP += ScillaTypes::Typ::sizeOf(ElmT);
    // Update the iterators.
    V = *reinterpret_cast<const void *const *>(VP);
    Tag = *reinterpret_cast<const uint8_t *>(V);
  }
}

void iterScillaADTConstrArgs(const ScillaTypes::Typ *T, const void *V,
                             ScillaValueCallback F) {

  ASSERT(T->m_t == ScillaTypes::Typ::ADT_typ);
  auto Tag = *reinterpret_cast<const uint8_t *>(V);
  auto SpeclP = T->m_sub.m_spladt;
  auto ConstrP = SpeclP->m_constrs[Tag];
  auto VP = reinterpret_cast<const uint8_t *>(V);
  // Increment VP once to go past the Tag.
  VP++;
  for (int I = 0; I < ConstrP->m_numArgs; I++) {
    auto ArgT = ConstrP->m_args[I];
    if (ScillaTypes::Typ::isBoxed(ArgT))
      F(ArgT, *reinterpret_cast<const void *const *>(VP));
    else
      F(ArgT, reinterpret_cast<const void *>(VP));
    // Increment our data pointer equal to the size we just finised.
    // structs containing ADTs are packed, so that we don't have to
    // worry about padding here.
    VP += ScillaTypes::Typ::sizeOf(ArgT);
  }
}

void iterScillaMsgObjectElms(const ScillaTypes::Typ *T, const void *V,
                             ScillaNamedValueCallback F) {

  ASSERT(T->m_t == ScillaTypes::Typ::Prim_typ);
  switch (T->m_sub.m_primt->m_pt) {
  case ScillaTypes::PrimTyp::Msg_typ:
  case ScillaTypes::PrimTyp::Event_typ:
  case ScillaTypes::PrimTyp::Exception_typ: 
  case ScillaTypes::PrimTyp::ReplicateContr_typ: {
    if (!V) {
      ASSERT(T->m_sub.m_primt->m_pt == ScillaTypes::PrimTyp::Exception_typ);
      return;
    }
  } break;
  default:
    CREATE_ERROR("Expected Scilla Message object");
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
      F(TD, *reinterpret_cast<const void *const *>(V_UC), FName);
    } else {
      F(TD, V_UC, FName);
    }
    V_UC += ScillaTypes::Typ::sizeOf(TD);
  }
}

} // namespace ScillaValues
} // namespace ScillaRTL
