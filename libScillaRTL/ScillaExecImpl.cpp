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

#include <algorithm>
#include <memory>
#include <numeric>

#include "ScillaRTL/Errors.h"
#include "ScillaRTL/ScillaExec.h"

#include "ObjManager.h"
#include "SRTL.h"
#include "ScillaBuiltins.h"
#include "ScillaExecImpl.h"
#include "ScillaTypes.h"
#include "SharedObject.h"

namespace ScillaRTL {

ScillaContrExec::~ScillaContrExec() = default;

ScillaContrExec::ScillaContrExec(const ScillaParams &SPs,
                                 const std::string &ContrBin) {
  PImpl = std::make_unique<ScillaExecImpl>(SPs, ContrBin);
}

Json::Value ScillaContrExec::execMsg(const std::string &Balance,
                                     uint64_t GasLimit, uint64_t CurBlock,
                                     const Json::Value &InitJ,
                                     const Json::Value &Msg) {
  return PImpl->execMsg(Balance, GasLimit, CurBlock, InitJ, Msg);
}

Json::Value ScillaContrExec::deploy(const Json::Value &InitJ, uint64_t GasLimit,
                                    uint64_t CurBlock) {
  return PImpl->deploy(InitJ, GasLimit, CurBlock);
}

uint64_t ScillaContrExec::getGasRem() const { return PImpl->getGasRem(); }

ScillaExprExec::~ScillaExprExec() = default;

ScillaExprExec::ScillaExprExec(const ScillaParams &SPs,
                               const std::string &ExprBin) {
  PImpl = std::make_unique<ScillaExecImpl>(SPs, ExprBin);
}

std::string ScillaExprExec::exec(uint64_t GasLimit) {
  auto ScillaMainAddr = PImpl->getAddressFor("scilla_main");
  auto ScillaMain = reinterpret_cast<void (*)()>(ScillaMainAddr);
  // Set gas available in the JIT'ed code and then initialize libraries.
  PImpl->initGasAndLibs(GasLimit);
  // Clear the output.
  PImpl->ScillaStdout.clear();
  ScillaMain();
  // Collect and print the remaining gas.
  PImpl->ScillaStdout +=
      "Gas remaining: " + std::to_string(PImpl->getGasRem()) + "\n";
  PImpl->OM.deleteAll();
  return PImpl->ScillaStdout;
}

uint64_t ScillaExprExec::getGasRem() const { return PImpl->getGasRem(); }

ScillaExecImpl::ScillaExecImpl(const ScillaParams &SPs,
                               const std::string &ContrBin)
    : SPs(SPs) {

  SO = std::make_unique<SharedObject>(ContrBin);

  // Set execptr in the generated code to THIS
  auto ExecPtr = getAddressFor("_execptr");
  *reinterpret_cast<ScillaExecImpl **>(ExecPtr) = this;
}

ScillaExecImpl::~ScillaExecImpl() = default;

void ScillaExecImpl::initContrParams(const Json::Value &CP,
                                     bool DoDynamicTypechecks) {

  // First get the name and types of contract parameters.
  auto CParams = reinterpret_cast<const ScillaTypes::ParamDescr *>(
      getAddressFor("_contract_parameters"));
  auto NCParams = *reinterpret_cast<uint32_t *>(
      getAddressFor("_contract_parameters_length"));

  auto ErrMsg = "Invalid init JSON when initializing contract parameters";
  if (!CP.isArray()) {
    CREATE_ERROR(ErrMsg);
  }

  if (CP.size() != NCParams) {
    CREATE_ERROR("Expected " + std::to_string(NCParams) +
                 " contract parameters, but got " + std::to_string(CP.size()));
  }
  // Let's put the expected contract parameters into a map for fast access.
  std::unordered_map<std::string, ScillaTypes::Typ *> ParamMap;
  std::for_each_n(CParams, NCParams,
                  [&ParamMap](const ScillaTypes::ParamDescr &PD) {
                    ParamMap[std::string(PD.m_PName)] = PD.m_PTy;
                  });

  for (const auto &PJ : CP) {
    if (!PJ.isObject()) {
      CREATE_ERROR(ErrMsg);
    }
    auto &VName = PJ["vname"];
    auto &Type = PJ["type"];
    auto &Value = PJ["value"];
    if (!VName.isString() || !Type.isString() || Value.isNull()) {
      CREATE_ERROR(ErrMsg);
    }

    // TODO: The compiler doesn't yet support BNum types.
    if (VName.asString() == "_creation_block")
      continue;

    auto ExpectedT = ParamMap.find(VName.asString());
    if (ExpectedT == ParamMap.end()) {
      CREATE_ERROR("Unknown contract parameter in JSON " + VName.asString());
    }
    auto *T = parseTypeString(Type.asString());
    // Before we parse the value into memory (which is already allocated
    // and of fixed length), ensure that the value is safe.
    if (!ScillaTypes::Typ::valueCompatible(T, ExpectedT->second)) {
      CREATE_ERROR(VName.asString() + ": Type " +
                   ScillaTypes::Typ::toString(T) +
                   " is incompatible with type " +
                   ScillaTypes::Typ::toString(ExpectedT->second) +
                   " specified in the contract.");
    }
    void *P = (getAddressFor(VName.asString()));
    void *ValP;
    if (ScillaTypes::Typ::isBoxed(T)) {
      // Boxed types are just pointers.
      ValP = ScillaValues::fromJSON(OM, T, Value);
      *reinterpret_cast<void **>(P) = ValP;
    } else {
      ValP = P;
      // We create the ScillaValue in place.
      ScillaValues::fromJSONToMem(OM, ValP, ScillaTypes::Typ::sizeOf(T), T,
                                  Value);
    }
    if (DoDynamicTypechecks &&
        !dynamicTypecheck(this, ExpectedT->second, T, ValP)) {
      CREATE_ERROR("Dynamic typecheck failed: " + VName.asString());
    }
  }
}

uint64_t *ScillaExecImpl::initGasAndLibs(uint64_t GasLimit) {
  // Set gas limit in the JIT'ed code module.
  auto GasRemPtr = reinterpret_cast<uint64_t *>(getAddressFor("_gasrem"));
  *GasRemPtr = GasLimit;

  // Call the library initialisation function.
  auto initLibs = reinterpret_cast<void (*)()>(getAddressFor("_init_libs"));
  initLibs();

  return GasRemPtr;
}

Json::Value ScillaExecImpl::deploy(const Json::Value &InitJ, uint64_t GasLimit,
                                   uint64_t CurBlock) {

  // Initialize contract parameters.
  initContrParams(InitJ, true /* DoDynamicTypechecks */);

  auto GasRemPtr = initGasAndLibs(GasLimit);

  // Let's setup the TransitionState for this transition.
  TS = std::make_unique<TransitionState>("0", "0", CurBlock);
  auto fIS = reinterpret_cast<void (*)(void)>(getAddressFor("_init_state"));
  fIS();

  Json::Value Result = TS->finalize(*GasRemPtr);
  OM.deleteAll();
  return Result;
}

uint64_t ScillaExecImpl::getGasRem() const {
  return *reinterpret_cast<const uint64_t *>(getAddressFor("_gasrem"));
}

const ScillaTypes::Typ *
ScillaExecImpl::parseTypeString(const std::string &TStr) const {
  auto TyDescrs = getTypeDescrTable();
  return ScillaTypes::Typ::fromString(TPPC.get(), TyDescrs.first,
                                      TyDescrs.second, TStr);
}

void *ScillaExecImpl::getAddressFor(const std::string &Symbol) const {
  return SO->getAddressFor(Symbol);
}

std::pair<const ScillaTypes::Typ **, int>
ScillaExecImpl::getTypeDescrTable() const {
  auto AllTyDescrs = reinterpret_cast<const ScillaTypes::Typ **>(
      getAddressFor("_tydescr_table"));
  auto TyDescrsLen =
      *reinterpret_cast<int *>(getAddressFor("_tydescr_table_length"));
  return std::make_pair(AllTyDescrs, TyDescrsLen);
}

Json::Value ScillaExecImpl::execMsg(const std::string &Balance,
                                    uint64_t GasLimit, uint64_t CurBlock,
                                    const Json::Value &InitJ,
                                    const Json::Value &Msg) {

  initContrParams(InitJ, false /* DoDynamicTypechecks */);

  Json::Value TransNameJ = Msg.get("_tag", Json::nullValue);
  Json::Value ParamsJ = Msg.get("params", Json::nullValue);
  Json::Value OriginJ = Msg.get("_origin", Json::nullValue);
  Json::Value SenderJ = Msg.get("_sender", Json::nullValue);
  Json::Value AmountJ = Msg.get("_amount", Json::nullValue);
  if (!TransNameJ.isString() || !ParamsJ.isArray() || !SenderJ.isString() ||
      !OriginJ.isString() || !AmountJ.isString())
    CREATE_ERROR("Invalid Message");

  auto GasRemPtr = initGasAndLibs(GasLimit);

  // Let's setup the TransitionState for this transition.
  TS = std::make_unique<TransitionState>(Balance, AmountJ.asString(), CurBlock);

  // Amount and Sender need to be prepended to the parameter list.
  Json::Value AmountParam;
  {
    AmountParam["vname"] = "_amount";
    AmountParam["type"] = "Uint128";
    AmountParam["value"] = AmountJ;
  }
  Json::Value OriginParam;
  {
    OriginParam["vname"] = "_origin";
    OriginParam["type"] = "ByStr20";
    OriginParam["value"] = OriginJ;
  }
  Json::Value SenderParam;
  {
    SenderParam["vname"] = "_sender";
    SenderParam["type"] = "ByStr20";
    SenderParam["value"] = SenderJ;
  }
  std::vector<Json::Value> AllParamsJ;
  AllParamsJ.push_back(AmountParam);
  AllParamsJ.push_back(OriginParam);
  AllParamsJ.push_back(SenderParam);
  AllParamsJ.insert(AllParamsJ.end(), ParamsJ.begin(), ParamsJ.end());

  std::string TransName = TransNameJ.asString();
  auto Transition =
      reinterpret_cast<void (*)(void *)>(getAddressFor(TransName));

  // We have all transition paramters as per the JSON in AllParamsJ.
  // Time to get the same info from the contract for corroboration.
  auto TParams = reinterpret_cast<const ScillaTypes::TransDescr *>(
      getAddressFor("_transition_parameters"));
  auto TCParams = *reinterpret_cast<uint32_t *>(
      getAddressFor("_transition_parameters_length"));
  // Note down all parameters of this transition.
  const auto ThisTParams =
      std::find_if(TParams, TParams + TCParams,
                   [&TransName](const ScillaTypes::TransDescr &TD) {
                     return std::string(TD.m_TName) == TransName;
                   });
  if (ThisTParams == TParams + TCParams) {
    CREATE_ERROR("Unknown transition " + TransName);
  }
  ScillaTypes::ParamDescr *PD = ThisTParams->m_Params;
  uint32_t NPD = ThisTParams->m_NParams;
  if (NPD != AllParamsJ.size()) {
    CREATE_ERROR("Incorrect number of parameters to transition " + TransName);
  }
  std::unordered_map<std::string, const ScillaTypes::Typ *> TParamsMap;
  std::for_each_n(PD, NPD, [&TParamsMap](const ScillaTypes::ParamDescr &PD) {
    TParamsMap[std::string(PD.m_PName)] = PD.m_PTy;
  });

  std::vector<std::string> ParamNames;
  std::vector<const ScillaTypes::Typ *> ParamTypes;
  std::vector<Json::Value> ParamValues;
  for (auto &P : AllParamsJ) {
    Json::Value VNameJ, TypeJ, ValueJ;
    if (!P.isObject() ||
        (VNameJ = P.get("vname", Json::nullValue)) == Json::nullValue ||
        (TypeJ = P.get("type", Json::nullValue)) == Json::nullValue ||
        (ValueJ = P.get("value", Json::nullValue)) == Json::nullValue ||
        !VNameJ.isString() || !TypeJ.isString()) {
      CREATE_ERROR("Incorrect parameter format in message JSON.");
    }
    auto *T = parseTypeString(TypeJ.asString());
    ParamTypes.push_back(T);
    ParamValues.push_back(ValueJ);
    ParamNames.push_back(VNameJ.asString());
  }
  int MemSize = std::accumulate(ParamTypes.begin(), ParamTypes.end(), 0,
                                [](int acc, const ScillaTypes::Typ *T) {
                                  return acc + ScillaTypes::Typ::sizeOf(T);
                                });

  ASSERT(MemSize > 0);
  auto *Mem = reinterpret_cast<uint8_t *>(OM.allocBytes(MemSize));
  for (size_t I = 0, Off = 0; I < ParamTypes.size(); I++) {
    const ScillaTypes::Typ *T = ParamTypes[I];
    int Size = ScillaTypes::Typ::sizeOf(T);
    auto *ThisMemP = Mem + Off;
    void *ValP;
    if (ScillaTypes::Typ::isBoxed(T)) {
      ValP = ScillaValues::fromJSON(OM, T, ParamValues[I]);
      *reinterpret_cast<void **>(ThisMemP) = ValP;
    } else {
      ValP = ThisMemP;
      ScillaValues::fromJSONToMem(OM, ValP, Size, T, ParamValues[I]);
    }
    auto ExpectedT = TParamsMap.find(ParamNames[I]);
    if (ExpectedT == TParamsMap.end()) {
      CREATE_ERROR("Unknown transition parameter " + ParamNames[I]);
    }
    // _sender and _origin are trusted addresses. Otherwise, we must verify.
    if (ParamNames[I] != "_sender" && ParamNames[I] != "_origin" &&
        !dynamicTypecheck(this, ExpectedT->second, T, ValP)) {
      CREATE_ERROR("Dyanamic typecheck failed: " + ParamNames[I]);
    }

    Off += Size;
  }

  Transition(Mem);

  Json::Value Result = TS->finalize(*GasRemPtr);
  OM.deleteAll();
  return Result;
}

} // namespace ScillaRTL