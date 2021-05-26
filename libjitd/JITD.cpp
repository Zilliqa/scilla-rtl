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
#include <secp256k1.h>

#include "llvm/ADT/StringRef.h"
#include "llvm/ExecutionEngine/JITEventListener.h"
#include "llvm/ExecutionEngine/JITSymbol.h"
#include "llvm/ExecutionEngine/ObjectCache.h"
#include "llvm/ExecutionEngine/Orc/CompileUtils.h"
#include "llvm/ExecutionEngine/Orc/Core.h"
#include "llvm/ExecutionEngine/Orc/ExecutionUtils.h"
#include "llvm/ExecutionEngine/Orc/JITTargetMachineBuilder.h"
#include "llvm/ExecutionEngine/Orc/LLJIT.h"
#include "llvm/ExecutionEngine/Orc/RTDyldObjectLinkingLayer.h"
#include "llvm/ExecutionEngine/SectionMemoryManager.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/Path.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/InstCombine/InstCombine.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Transforms/Scalar/GVN.h"
#include "llvm/Transforms/Utils.h"

#include "../libsrtl/ScillaBuiltins.h"
#include "../libsrtl/ScillaTypes.h"
#include "ScillaVM/Debug.h"
#include "ScillaVM/Errors.h"
#include "ScillaVM/JITD.h"
#include "ScillaVM/SRTL.h"

using namespace llvm;

namespace {

// Add functions in SRTL that the JIT'ed code can access.
Error addScillaBuiltins(orc::LLJIT &LLJitter, const DataLayout &DL) {
  orc::SymbolMap M;
  orc::MangleAndInterner Mangle(LLJitter.getExecutionSession(), DL);
  // Register every symbol that can be accessed from the JIT'ed code.
  auto ScillaFuncs = ScillaVM::getAllScillaBuiltins();
  for (auto fa : ScillaFuncs) {
    M[Mangle(fa.FName)] = JITEvaluatedSymbol(
        pointerToJITTargetAddress(fa.FAddr), JITSymbolFlags());
  }

  if (auto Err = (LLJitter.getMainJITDylib().define(absoluteSymbols(M))))
    return Err;

  return Error::success();
}

} // end of anonymous namespace

namespace ScillaVM {

namespace ph = std::placeholders;

#define DEBUG_TYPE "obj_cache"

// Caching mechanism for compiled files. Not thread safe.
class ScillaObjCache : public llvm::ObjectCache {
public:
  // Constructor for memory + disk cache.
  ScillaObjCache(const std::string &CacheDir) : CacheDir(CacheDir){};
  // Constructor for memory only cache.
  ScillaObjCache(){};
  void notifyObjectCompiled(const llvm::Module *M,
                            llvm::MemoryBufferRef ObjBuffer) override;

  std::unique_ptr<llvm::MemoryBuffer> getObject(const llvm::Module *M) override;
  std::unique_ptr<llvm::MemoryBuffer> getObject(const std::string &ModuleID);

private:
  llvm::StringMap<std::unique_ptr<llvm::MemoryBuffer>> CachedObjects;
  const std::string CacheDir;
};

void ScillaObjCache::notifyObjectCompiled(const Module *M,
                                          MemoryBufferRef ObjBuffer) {
  auto ModuleID = M->getModuleIdentifier();

  CachedObjects[ModuleID] = MemoryBuffer::getMemBufferCopy(
      ObjBuffer.getBuffer(), ObjBuffer.getBufferIdentifier());
  SVM_DEBUG(dbgs() << ModuleID << " added to memory cache\n");

  // If there's a cache directory specified, write to disk.
  if (!CacheDir.empty()) {
    if (!sys::fs::exists(CacheDir) && sys::fs::create_directory(CacheDir)) {
      CREATE_ERROR("Cache directory " + CacheDir +
                   " does not exist and cannot be created");
    }
    SmallString<64> CacheFilename(CacheDir);
    sys::path::append(CacheFilename, ModuleID);
    std::error_code EC;
    raw_fd_ostream ObjFile(CacheFilename.c_str(), EC);
    if (EC) {
      CREATE_ERROR(std::string("Cannot write to cache file ") +
                   CacheFilename.c_str() + ": " + EC.message());
    }
    ObjFile << ObjBuffer.getBuffer();
    SVM_DEBUG(dbgs() << ModuleID << " added to disk cache "
                     << CacheFilename.c_str() << "\n");
  }
}

std::unique_ptr<MemoryBuffer>
ScillaObjCache::getObject(const std::string &ModuleID) {
  auto I = CachedObjects.find(ModuleID);
  if (I == CachedObjects.end()) {
    SVM_DEBUG(dbgs() << "Object file for " << ModuleID
                     << " not cached in memory.\n");

    if (CacheDir.empty())
      return nullptr;

    SmallString<64> CacheFilename(CacheDir);
    sys::path::append(CacheFilename, ModuleID);
    if (sys::fs::exists(CacheFilename)) {
      auto MB = MemoryBuffer::getFile(CacheFilename);
      if (auto Err = MB.getError()) {
        SVM_DEBUG(dbgs() << "Error loading object file from "
                         << CacheFilename.c_str() << "\n");
        return nullptr;
      }
      SVM_DEBUG(dbgs() << "Loaded object file from file "
                       << CacheFilename.c_str() << "\n");
      CachedObjects[ModuleID] = MemoryBuffer::getMemBufferCopy(
          (*MB)->getBuffer(), (*MB)->getBufferIdentifier());
      return std::move(*MB);
    }
    SVM_DEBUG(dbgs() << "Object file for " << ModuleID
                     << " not cached on disk.\n");
    return nullptr;
  }

  SVM_DEBUG(dbgs() << "Object for " << ModuleID
                   << " loaded from memory cache.\n");
  return MemoryBuffer::getMemBufferCopy(I->second->getBuffer());
}

std::unique_ptr<MemoryBuffer> ScillaObjCache::getObject(const Module *M) {
  return getObject(M->getModuleIdentifier());
}

#undef DEBUG_TYPE

// Constructor for memory + disk cache.
ScillaCacheManager::ScillaCacheManager(const std::string &CacheDir)
    : SOC(std::make_unique<ScillaObjCache>(CacheDir)) {}
// Constructor for memory only cache.
ScillaCacheManager::ScillaCacheManager()
    : SOC(std::make_unique<ScillaObjCache>()) {}
ScillaCacheManager::~ScillaCacheManager() = default;

using namespace orc;

void ScillaJIT::init() {
  InitializeNativeTarget();
  InitializeNativeTargetAsmPrinter();
}

std::unique_ptr<ScillaJIT> ScillaJIT::create(const ScillaParams &SPs,
                                             const std::string &FileName,
                                             ScillaCacheManager *OC) {

  auto MemBuf = MemoryBuffer::getFile(FileName);
  if (auto Err = MemBuf.getError()) {
    CREATE_ERROR(Err.message());
  }

  // Let's build the ModuleID, which will be the filename without
  // any path prefixes, but extension replace with ".scilla_cache".
  SmallString<64> FNSS(FileName);
  sys::path::replace_extension(FNSS, ".scilla_cache");
  std::string ModuleID = sys::path::filename(FNSS.c_str()).str();

  return create(SPs, (*MemBuf).get(), ModuleID, OC);
}

std::unique_ptr<ScillaJIT> ScillaJIT::create(const ScillaParams &SPs,
                                             const std::string &IR,
                                             const std::string &ModuleID,
                                             ScillaCacheManager *OC) {
  auto MemBuf = MemoryBuffer::getMemBuffer(IR);
  return create(SPs, MemBuf.get(), ModuleID, OC);
}

std::unique_ptr<ScillaJIT> ScillaJIT::create(const ScillaParams &SPs,
                                             llvm::MemoryBuffer *MemBuf,
                                             const std::string &ModuleID,
                                             ScillaCacheManager *SCM) {

  ScillaObjCache *OC = SCM ? SCM->SOC.get() : nullptr;

  // Create an LLJIT instance with a custom CompileFunction and
  // ObjectLinkingLayer.
  auto J =
      LLJITBuilder()
          .setCompileFunctionCreator(
              [&](JITTargetMachineBuilder JTMB)
                  -> Expected<std::unique_ptr<IRCompileLayer::IRCompiler>> {
                auto TM = JTMB.createTargetMachine();
                if (!TM)
                  return TM.takeError();
                return std::make_unique<TMOwningSimpleCompiler>(std::move(*TM),
                                                                OC);
              })
          .setObjectLinkingLayerCreator([&](ExecutionSession &ES,
                                            const Triple &TT)
                                            -> std::unique_ptr<ObjectLayer> {
            // Except for the GDBListener registration, the rest of
            // the code is taken from LLJIT.cpp.
            auto GetMemMgr = []() {
              return std::make_unique<SectionMemoryManager>();
            };
            auto ObjLinkingLayer = std::make_unique<RTDyldObjectLinkingLayer>(
                ES, std::move(GetMemMgr));
            if (TT.isOSBinFormatCOFF()) {
              ObjLinkingLayer->setOverrideObjectFlagsWithResponsibilityFlags(
                  true);
              ObjLinkingLayer->setAutoClaimResponsibilityForObjectSymbols(true);
            }
            auto GDBListener =
                JITEventListener::createGDBRegistrationListener();
            ObjLinkingLayer->setNotifyLoaded(
                std::bind(&JITEventListener::notifyObjectLoaded, GDBListener,
                          ph::_1, ph::_2, ph::_3));
            return ObjLinkingLayer;
          })
          .create();

  if (auto Err = J.takeError())
    CREATE_ERROR(llvm::toString(std::move(Err)));

  if (auto Err = addScillaBuiltins(*(*J), (*J)->getDataLayout()))
    CREATE_ERROR(llvm::toString(std::move(Err)));

  std::unique_ptr<ScillaJIT> THIS(new ScillaJIT(SPs, std::move(*J)));
  auto Ctx = std::make_unique<LLVMContext>();

  std::unique_ptr<llvm::MemoryBuffer> Obj =
      OC ? OC->getObject(ModuleID) : nullptr;
  if (Obj) {
    // We have the object file for this IR module in cache.
    if (auto Err = THIS->Jitter->addObjectFile(std::move(Obj))) {
      CREATE_ERROR(llvm::toString(std::move(Err)));
    }
  } else {
    // IR module not in cache. Parse and compile it.
    SMDiagnostic Smd;
    std::unique_ptr<llvm::Module> M =
        parseIR(MemBuf->getMemBufferRef(), Smd, *Ctx);
    if (!M) {
      std::string ErrMsg;
      raw_string_ostream OS(ErrMsg);
      Smd.print("scilla-vm", OS);
      auto Err = createStringError(inconvertibleErrorCode(), OS.str().c_str());
      CREATE_ERROR(llvm::toString(std::move(Err)));
    }
    M->setModuleIdentifier(ModuleID);
    ThreadSafeModule TSM(std::move(M), std::move(Ctx));
    if (auto Err = THIS->Jitter->addIRModule(std::move(TSM))) {
      CREATE_ERROR(llvm::toString(std::move(Err)));
    }
  }

  // Create an empty type parser partial cache.
  THIS->TPPC = std::make_unique<ScillaTypes::TypParserPartialCache>();
  // Create an object manager.
  THIS->OM = std::make_unique<ObjManager>();

  // Set execptr in the generated code to THIS
  auto ExecPtr = THIS->getAddressFor("_execptr");
  *reinterpret_cast<ScillaJIT **>(ExecPtr) = THIS.get();

  return THIS;
}

void ScillaJIT::initContrParams(const Json::Value &CP,
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

  // TODO: Remove this when BNum types are supported.
  uint32_t CPSize = std::accumulate(
      CP.begin(), CP.end(), 0, [](uint32_t Acc, const Json::Value &IV) {
        const Json::Value &VName = IV["vname"];
        return Acc + (VName.isString() && VName.asString() == "_creation_block"
                          ? 0
                          : 1);
      });

  if (CPSize != NCParams) {
    CREATE_ERROR("Expected " + std::to_string(NCParams) +
                 " contract parameters, but got " + std::to_string(CPSize));
  }
  // Let's put the expected contract parameters into a map for fast access.
  std::unordered_map<std::string, ScillaTypes::Typ *> ParamMap;
  std::for_each(CParams, CParams + NCParams,
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
      ValP = ScillaValues::fromJSON(*OM, T, Value);
      *reinterpret_cast<void **>(P) = ValP;
    } else {
      ValP = P;
      // We create the ScillaValue in place.
      ScillaValues::fromJSONToMem(*OM, ValP, ScillaTypes::Typ::sizeOf(T), T,
                                  Value);
    }
    if (DoDynamicTypechecks &&
        !dynamicTypecheck(this, ExpectedT->second, T, ValP)) {
      CREATE_ERROR("Dynamic typecheck failed: " + VName.asString());
    }
  }
}

uint64_t *ScillaJIT::initGasAndLibs(uint64_t GasLimit) {
  // Set gas limit in the JIT'ed code module.
  auto GasRemPtr = reinterpret_cast<uint64_t *>(getAddressFor("_gasrem"));
  *GasRemPtr = GasLimit;

  // Call the library initialisation function.
  auto initLibs = reinterpret_cast<void (*)()>(getAddressFor("_init_libs"));
  initLibs();

  return GasRemPtr;
}

Json::Value ScillaJIT::deploy(const Json::Value &InitJ, uint64_t GasLimit) {

  // Initialize contract parameters.
  initContrParams(InitJ, true /* DoDynamicTypechecks */);

  auto GasRemPtr = initGasAndLibs(GasLimit);

  // Let's setup the TransitionState for this transition.
  TS = std::make_unique<TransitionState>("0", "0", GasRemPtr);
  auto fIS = reinterpret_cast<void (*)(void)>(getAddressFor("_init_state"));
  fIS();
  return TS->finalize();
}

uint64_t ScillaJIT::getGasRem() const {
  return *reinterpret_cast<const uint64_t *>(getAddressFor("_gasrem"));
}

const ScillaTypes::Typ *
ScillaJIT::parseTypeString(const std::string &TStr) const {
  auto TyDescrs = getTypeDescrTable();
  return ScillaTypes::Typ::fromString(TPPC.get(), TyDescrs.first,
                                      TyDescrs.second, TStr);
}

void *ScillaJIT::getAddressFor(const std::string &Symbol) const {

  auto SA = Jitter->lookup(Symbol);
  if (auto Err = SA.takeError()) {
    CREATE_ERROR(llvm::toString(std::move(Err)));
  }

  return reinterpret_cast<void *>((*SA).getAddress());
}

std::pair<const ScillaTypes::Typ **, int> ScillaJIT::getTypeDescrTable() const {
  auto AllTyDescrs = reinterpret_cast<const ScillaTypes::Typ **>(
      getAddressFor("_tydescr_table"));
  auto TyDescrsLen =
      *reinterpret_cast<int *>(getAddressFor("_tydescr_table_length"));
  return std::make_pair(AllTyDescrs, TyDescrsLen);
}

ScillaJIT::ScillaJIT(const ScillaParams &SPs, std::unique_ptr<LLJIT> &&J)
    : Jitter(std::move(J)), SPs(SPs),
      Ctx_secp256k1(secp256k1_context_create(SECP256K1_CONTEXT_VERIFY)) {}

ScillaJIT::~ScillaJIT() { secp256k1_context_destroy(Ctx_secp256k1); }

Json::Value ScillaJIT::execMsg(const std::string &Balance, uint64_t GasLimit,
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
  TS =
      std::make_unique<TransitionState>(Balance, AmountJ.asString(), GasRemPtr);

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
  std::for_each(PD, PD + NPD, [&TParamsMap](const ScillaTypes::ParamDescr &PD) {
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
      CREATE_ERROR("Incorrect paramter format in message JSON.");
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
  auto *Mem = reinterpret_cast<uint8_t *>(OM->allocBytes(MemSize));
  for (size_t I = 0, Off = 0; I < ParamTypes.size(); I++) {
    const ScillaTypes::Typ *T = ParamTypes[I];
    int Size = ScillaTypes::Typ::sizeOf(T);
    auto *ThisMemP = Mem + Off;
    void *ValP;
    if (ScillaTypes::Typ::isBoxed(T)) {
      ValP = ScillaValues::fromJSON(*OM, T, ParamValues[I]);
      *reinterpret_cast<void **>(ThisMemP) = ValP;
    } else {
      ValP = ThisMemP;
      ScillaValues::fromJSONToMem(*OM, ValP, Size, T, ParamValues[I]);
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
  return TS->finalize();
}

} // namespace ScillaVM