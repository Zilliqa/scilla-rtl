

; gas_remaining: 4001329
; ModuleID = 'Registry'
source_filename = "Registry"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_277" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_313" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_312"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_312" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_314"**, %"$TyDescrTy_ADTTyp_313"* }
%"$TyDescrTy_ADTTyp_Constr_314" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_322" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_327" = type { i32, %"$TyDescr_AddrFieldTyp_326"* }
%"$TyDescr_AddrFieldTyp_326" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%TName_List_ByStr20 = type { i8, %CName_Cons_ByStr20*, %CName_Nil_ByStr20* }
%CName_Cons_ByStr20 = type <{ i8, [20 x i8], %TName_List_ByStr20* }>
%CName_Nil_ByStr20 = type <{ i8 }>
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%String = type { i8*, i32 }
%TName_Option_ud-registry.Record = type { i8, %CName_Some_ud-registry.Record*, %CName_None_ud-registry.Record* }
%CName_Some_ud-registry.Record = type <{ i8, %TName_ud-registry.Record* }>
%TName_ud-registry.Record = type { i8, %CName_ud-registry.Record* }
%CName_ud-registry.Record = type <{ i8, [20 x i8], [20 x i8] }>
%CName_None_ud-registry.Record = type <{ i8 }>
%"TName_Option_List_(ByStr20)" = type { i8, %"CName_Some_List_(ByStr20)"*, %"CName_None_List_(ByStr20)"* }
%"CName_Some_List_(ByStr20)" = type <{ i8, %TName_List_ByStr20* }>
%"CName_None_List_(ByStr20)" = type <{ i8 }>
%TName_Option_ByStr20 = type { i8, %CName_Some_ByStr20*, %CName_None_ByStr20* }
%CName_Some_ByStr20 = type <{ i8, [20 x i8] }>
%CName_None_ByStr20 = type <{ i8 }>
%Uint32 = type { i32 }
%"$ParamDescr_5929" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_5930" = type { %ParamDescrString, i32, %"$ParamDescr_5929"* }
%"$$fundef_214_env_405" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, %TName_Option_ByStr20*, [20 x i8], [20 x i8], { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_212_env_406" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, [20 x i8], [20 x i8], { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_210_env_407" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, [20 x i8], { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_208_env_408" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_218_env_409" = type { [32 x i8] }
%"$$fundef_216_env_410" = type {}
%"$$fundef_220_env_411" = type { [20 x i8] }
%"$$fundef_222_env_412" = type {}
%"$$fundef_228_env_413" = type { [32 x i8], [20 x i8] }
%"$$fundef_226_env_414" = type { [32 x i8] }
%"$$fundef_224_env_415" = type {}
%"$$fundef_232_env_416" = type { [32 x i8] }
%"$$fundef_230_env_417" = type {}
%"$$fundef_234_env_418" = type {}
%"$$fundef_236_env_419" = type {}
%"$$fundef_242_env_420" = type { [20 x i8], [20 x i8] }
%"$$fundef_240_env_421" = type { [20 x i8] }
%"$$fundef_238_env_422" = type {}
%"$$fundef_246_env_423" = type { [20 x i8] }
%"$$fundef_244_env_424" = type {}
%"$$fundef_250_env_425" = type { %TName_Bool* }
%"$$fundef_248_env_426" = type {}
%"$$fundef_256_env_427" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, [20 x i8] }
%"$$fundef_254_env_428" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { i8*, i8* }*, %TName_List_ByStr20* }
%"$$fundef_252_env_429" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { i8*, i8* }* }
%"$$fundef_260_env_430" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, %TName_List_ByStr20*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_258_env_431" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_264_env_432" = type { { i8*, i8* }*, %TName_List_ByStr20*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_262_env_433" = type { { i8*, i8* }*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_268_env_434" = type { [20 x i8] }
%"$$fundef_266_env_435" = type {}
%"$$fundef_270_env_436" = type { %TName_List_Message* }
%"$$fundef_182_env_437" = type { { i8*, i8* }*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_180_env_438" = type { { i8*, i8* }* }
%"$$fundef_178_env_439" = type { { i8*, i8* }* }
%"$$fundef_188_env_440" = type { { i8*, i8* }*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_186_env_441" = type { { i8*, i8* }* }
%"$$fundef_184_env_442" = type { { i8*, i8* }* }
%"$$fundef_198_env_443" = type { %TName_Option_ByStr20*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, [20 x i8] }
%"$$fundef_196_env_444" = type { %TName_Option_ByStr20*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_194_env_445" = type { %TName_Option_ByStr20*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_192_env_446" = type { { i8*, i8* }* }
%"$$fundef_190_env_447" = type { { i8*, i8* }* }
%"$$fundef_206_env_448" = type { { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, [20 x i8] }
%"$$fundef_204_env_449" = type { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_202_env_450" = type { { i8*, i8* }* }
%"$$fundef_200_env_451" = type { { i8*, i8* }* }
%"$$fundef_168_env_452" = type {}
%"$$fundef_172_env_453" = type { %TName_Bool* }
%"$$fundef_170_env_454" = type {}
%"$$fundef_176_env_455" = type { %TName_Bool* }
%"$$fundef_174_env_456" = type {}
%"$$fundef_156_env_457" = type { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, %TName_List_ByStr20* }
%"$$fundef_154_env_458" = type { { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, %TName_Option_ByStr20* }
%"$$fundef_152_env_459" = type { { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } }
%"$$fundef_150_env_460" = type {}
%"$$fundef_148_env_461" = type {}
%"$$fundef_146_env_462" = type {}
%"$$fundef_166_env_463" = type { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, %TName_List_ByStr20* }
%"$$fundef_164_env_464" = type { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_162_env_465" = type {}
%"$$fundef_160_env_466" = type {}
%"$$fundef_158_env_467" = type {}
%Map_ByStr32_ud-registry.Record = type { [32 x i8], %TName_ud-registry.Record* }
%Map_ByStr32_ByStr20 = type { [32 x i8], [20 x i8] }
%"Map_ByStr20_List_(ByStr20)" = type { [20 x i8], %TName_List_ByStr20* }
%Uint128 = type { i128 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_278" = global %"$TyDescrTy_PrimTyp_277" zeroinitializer
@"$TyDescr_Int32_279" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_277"* @"$TyDescr_Int32_Prim_278" to i8*) }
@"$TyDescr_Uint32_Prim_280" = global %"$TyDescrTy_PrimTyp_277" { i32 1, i32 0 }
@"$TyDescr_Uint32_281" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_277"* @"$TyDescr_Uint32_Prim_280" to i8*) }
@"$TyDescr_Int64_Prim_282" = global %"$TyDescrTy_PrimTyp_277" { i32 0, i32 1 }
@"$TyDescr_Int64_283" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_277"* @"$TyDescr_Int64_Prim_282" to i8*) }
@"$TyDescr_Uint64_Prim_284" = global %"$TyDescrTy_PrimTyp_277" { i32 1, i32 1 }
@"$TyDescr_Uint64_285" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_277"* @"$TyDescr_Uint64_Prim_284" to i8*) }
@"$TyDescr_Int128_Prim_286" = global %"$TyDescrTy_PrimTyp_277" { i32 0, i32 2 }
@"$TyDescr_Int128_287" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_277"* @"$TyDescr_Int128_Prim_286" to i8*) }
@"$TyDescr_Uint128_Prim_288" = global %"$TyDescrTy_PrimTyp_277" { i32 1, i32 2 }
@"$TyDescr_Uint128_289" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_277"* @"$TyDescr_Uint128_Prim_288" to i8*) }
@"$TyDescr_Int256_Prim_290" = global %"$TyDescrTy_PrimTyp_277" { i32 0, i32 3 }
@"$TyDescr_Int256_291" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_277"* @"$TyDescr_Int256_Prim_290" to i8*) }
@"$TyDescr_Uint256_Prim_292" = global %"$TyDescrTy_PrimTyp_277" { i32 1, i32 3 }
@"$TyDescr_Uint256_293" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_277"* @"$TyDescr_Uint256_Prim_292" to i8*) }
@"$TyDescr_String_Prim_294" = global %"$TyDescrTy_PrimTyp_277" { i32 2, i32 0 }
@"$TyDescr_String_295" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_277"* @"$TyDescr_String_Prim_294" to i8*) }
@"$TyDescr_Bnum_Prim_296" = global %"$TyDescrTy_PrimTyp_277" { i32 3, i32 0 }
@"$TyDescr_Bnum_297" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_277"* @"$TyDescr_Bnum_Prim_296" to i8*) }
@"$TyDescr_Message_Prim_298" = global %"$TyDescrTy_PrimTyp_277" { i32 4, i32 0 }
@"$TyDescr_Message_299" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_277"* @"$TyDescr_Message_Prim_298" to i8*) }
@"$TyDescr_Event_Prim_300" = global %"$TyDescrTy_PrimTyp_277" { i32 5, i32 0 }
@"$TyDescr_Event_301" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_277"* @"$TyDescr_Event_Prim_300" to i8*) }
@"$TyDescr_Exception_Prim_302" = global %"$TyDescrTy_PrimTyp_277" { i32 6, i32 0 }
@"$TyDescr_Exception_303" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_277"* @"$TyDescr_Exception_Prim_302" to i8*) }
@"$TyDescr_Bystr_Prim_304" = global %"$TyDescrTy_PrimTyp_277" { i32 7, i32 0 }
@"$TyDescr_Bystr_305" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_277"* @"$TyDescr_Bystr_Prim_304" to i8*) }
@"$TyDescr_Bystr64_Prim_306" = global %"$TyDescrTy_PrimTyp_277" { i32 8, i32 64 }
@"$TyDescr_Bystr64_307" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_277"* @"$TyDescr_Bystr64_Prim_306" to i8*) }
@"$TyDescr_Bystr32_Prim_308" = global %"$TyDescrTy_PrimTyp_277" { i32 8, i32 32 }
@"$TyDescr_Bystr32_309" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_277"* @"$TyDescr_Bystr32_Prim_308" to i8*) }
@"$TyDescr_Bystr20_Prim_310" = global %"$TyDescrTy_PrimTyp_277" { i32 8, i32 20 }
@"$TyDescr_Bystr20_311" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_277"* @"$TyDescr_Bystr20_Prim_310" to i8*) }
@"$TyDescr_ADT_Option_List_(ByStr20)_315" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_312"* @"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_338" to i8*) }
@"$TyDescr_ADT_Option_ud-registry.Record_316" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_312"* @"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_347" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_317" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_312"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_356" to i8*) }
@"$TyDescr_ADT_ud-registry.Record_318" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_312"* @"$TyDescr_ud-registry.Record_ADTTyp_Specl_365" to i8*) }
@"$TyDescr_ADT_List_Message_319" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_312"* @"$TyDescr_List_Message_ADTTyp_Specl_377" to i8*) }
@"$TyDescr_ADT_List_ByStr20_320" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_312"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_386" to i8*) }
@"$TyDescr_ADT_Bool_321" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_312"* @"$TyDescr_Bool_ADTTyp_Specl_398" to i8*) }
@"$TyDescr_Map_323" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_322"* @"$TyDescr_MapTyp_401" to i8*) }
@"$TyDescr_Map_324" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_322"* @"$TyDescr_MapTyp_402" to i8*) }
@"$TyDescr_Map_325" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_322"* @"$TyDescr_MapTyp_403" to i8*) }
@"$TyDescr_Addr_328" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_327"* @"$TyDescr_AddrFields_404" to i8*) }
@"$TyDescr_Option_ADTTyp_329" = unnamed_addr constant %"$TyDescrTy_ADTTyp_313" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_358", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 3, %"$TyDescrTy_ADTTyp_Specl_312"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_312"*], [3 x %"$TyDescrTy_ADTTyp_Specl_312"*]* @"$TyDescr_Option_ADTTyp_m_specls_357", i32 0, i32 0) }
@"$TyDescr_Option_Some_List_(ByStr20)_Constr_m_args_330" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320"]
@"$TyDescr_ADT_Some_331" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_List_(ByStr20)_ADTTyp_Constr_332" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_314" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_331", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_List_(ByStr20)_Constr_m_args_330", i32 0, i32 0) }
@"$TyDescr_Option_None_List_(ByStr20)_Constr_m_args_333" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_334" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_List_(ByStr20)_ADTTyp_Constr_335" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_314" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_334", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_List_(ByStr20)_Constr_m_args_333", i32 0, i32 0) }
@"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_m_constrs_336" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_314"*] [%"$TyDescrTy_ADTTyp_Constr_314"* @"$TyDescr_Option_Some_List_(ByStr20)_ADTTyp_Constr_332", %"$TyDescrTy_ADTTyp_Constr_314"* @"$TyDescr_Option_None_List_(ByStr20)_ADTTyp_Constr_335"]
@"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_m_TArgs_337" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320"]
@"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_338" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_312" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_m_TArgs_337", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_314"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_314"*], [2 x %"$TyDescrTy_ADTTyp_Constr_314"*]* @"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_m_constrs_336", i32 0, i32 0), %"$TyDescrTy_ADTTyp_313"* @"$TyDescr_Option_ADTTyp_329" }
@"$TyDescr_Option_Some_ud-registry.Record_Constr_m_args_339" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318"]
@"$TyDescr_ADT_Some_340" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ud-registry.Record_ADTTyp_Constr_341" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_314" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_340", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ud-registry.Record_Constr_m_args_339", i32 0, i32 0) }
@"$TyDescr_Option_None_ud-registry.Record_Constr_m_args_342" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_343" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ud-registry.Record_ADTTyp_Constr_344" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_314" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_343", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ud-registry.Record_Constr_m_args_342", i32 0, i32 0) }
@"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_m_constrs_345" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_314"*] [%"$TyDescrTy_ADTTyp_Constr_314"* @"$TyDescr_Option_Some_ud-registry.Record_ADTTyp_Constr_341", %"$TyDescrTy_ADTTyp_Constr_314"* @"$TyDescr_Option_None_ud-registry.Record_ADTTyp_Constr_344"]
@"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_m_TArgs_346" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318"]
@"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_347" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_312" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_m_TArgs_346", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_314"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_314"*], [2 x %"$TyDescrTy_ADTTyp_Constr_314"*]* @"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_m_constrs_345", i32 0, i32 0), %"$TyDescrTy_ADTTyp_313"* @"$TyDescr_Option_ADTTyp_329" }
@"$TyDescr_Option_Some_ByStr20_Constr_m_args_348" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_311"]
@"$TyDescr_ADT_Some_349" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_350" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_314" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_349", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_Constr_m_args_348", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_Constr_m_args_351" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_352" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_353" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_314" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_352", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_Constr_m_args_351", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_354" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_314"*] [%"$TyDescrTy_ADTTyp_Constr_314"* @"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_350", %"$TyDescrTy_ADTTyp_Constr_314"* @"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_353"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_355" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_311"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_356" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_312" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_355", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_314"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_314"*], [2 x %"$TyDescrTy_ADTTyp_Constr_314"*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_354", i32 0, i32 0), %"$TyDescrTy_ADTTyp_313"* @"$TyDescr_Option_ADTTyp_329" }
@"$TyDescr_Option_ADTTyp_m_specls_357" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_312"*] [%"$TyDescrTy_ADTTyp_Specl_312"* @"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_338", %"$TyDescrTy_ADTTyp_Specl_312"* @"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_347", %"$TyDescrTy_ADTTyp_Specl_312"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_356"]
@"$TyDescr_ADT_Option_358" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_ud-registry.Record_ADTTyp_359" = unnamed_addr constant %"$TyDescrTy_ADTTyp_313" { %TyDescrString { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$TyDescr_ADT_ud-registry.Record_367", i32 0, i32 0), i32 18 }, i32 0, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_312"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_312"*], [1 x %"$TyDescrTy_ADTTyp_Specl_312"*]* @"$TyDescr_ud-registry.Record_ADTTyp_m_specls_366", i32 0, i32 0) }
@"$TyDescr_ud-registry.Record_ud-registry.Record_Constr_m_args_360" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311"]
@"$TyDescr_ADT_ud-registry.Record_361" = unnamed_addr constant [18 x i8] c"ud-registry.Record"
@"$TyDescr_ud-registry.Record_ud-registry.Record_ADTTyp_Constr_362" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_314" { %TyDescrString { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$TyDescr_ADT_ud-registry.Record_361", i32 0, i32 0), i32 18 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_ud-registry.Record_ud-registry.Record_Constr_m_args_360", i32 0, i32 0) }
@"$TyDescr_ud-registry.Record_ADTTyp_Specl_m_constrs_363" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_314"*] [%"$TyDescrTy_ADTTyp_Constr_314"* @"$TyDescr_ud-registry.Record_ud-registry.Record_ADTTyp_Constr_362"]
@"$TyDescr_ud-registry.Record_ADTTyp_Specl_m_TArgs_364" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ud-registry.Record_ADTTyp_Specl_365" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_312" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_ud-registry.Record_ADTTyp_Specl_m_TArgs_364", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_314"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_314"*], [1 x %"$TyDescrTy_ADTTyp_Constr_314"*]* @"$TyDescr_ud-registry.Record_ADTTyp_Specl_m_constrs_363", i32 0, i32 0), %"$TyDescrTy_ADTTyp_313"* @"$TyDescr_ud-registry.Record_ADTTyp_359" }
@"$TyDescr_ud-registry.Record_ADTTyp_m_specls_366" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_312"*] [%"$TyDescrTy_ADTTyp_Specl_312"* @"$TyDescr_ud-registry.Record_ADTTyp_Specl_365"]
@"$TyDescr_ADT_ud-registry.Record_367" = unnamed_addr constant [18 x i8] c"ud-registry.Record"
@"$TyDescr_List_ADTTyp_368" = unnamed_addr constant %"$TyDescrTy_ADTTyp_313" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_388", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_312"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_312"*], [2 x %"$TyDescrTy_ADTTyp_Specl_312"*]* @"$TyDescr_List_ADTTyp_m_specls_387", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_369" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_299", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319"]
@"$TyDescr_ADT_Cons_370" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_371" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_314" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_370", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_369", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_372" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_373" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_374" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_314" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_373", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_372", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_375" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_314"*] [%"$TyDescrTy_ADTTyp_Constr_314"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_371", %"$TyDescrTy_ADTTyp_Constr_314"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_374"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_376" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_299"]
@"$TyDescr_List_Message_ADTTyp_Specl_377" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_312" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_376", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_314"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_314"*], [2 x %"$TyDescrTy_ADTTyp_Constr_314"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_375", i32 0, i32 0), %"$TyDescrTy_ADTTyp_313"* @"$TyDescr_List_ADTTyp_368" }
@"$TyDescr_List_Cons_ByStr20_Constr_m_args_378" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320"]
@"$TyDescr_ADT_Cons_379" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_380" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_314" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_379", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_Constr_m_args_378", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_Constr_m_args_381" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_382" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_383" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_314" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_382", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_Constr_m_args_381", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_384" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_314"*] [%"$TyDescrTy_ADTTyp_Constr_314"* @"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_380", %"$TyDescrTy_ADTTyp_Constr_314"* @"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_383"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_385" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_311"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_386" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_312" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_385", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_314"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_314"*], [2 x %"$TyDescrTy_ADTTyp_Constr_314"*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_384", i32 0, i32 0), %"$TyDescrTy_ADTTyp_313"* @"$TyDescr_List_ADTTyp_368" }
@"$TyDescr_List_ADTTyp_m_specls_387" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_312"*] [%"$TyDescrTy_ADTTyp_Specl_312"* @"$TyDescr_List_Message_ADTTyp_Specl_377", %"$TyDescrTy_ADTTyp_Specl_312"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_386"]
@"$TyDescr_ADT_List_388" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Bool_ADTTyp_389" = unnamed_addr constant %"$TyDescrTy_ADTTyp_313" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_400", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_312"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_312"*], [1 x %"$TyDescrTy_ADTTyp_Specl_312"*]* @"$TyDescr_Bool_ADTTyp_m_specls_399", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_390" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_391" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_392" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_314" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_391", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_390", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_393" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_394" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_395" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_314" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_394", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_393", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_396" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_314"*] [%"$TyDescrTy_ADTTyp_Constr_314"* @"$TyDescr_Bool_True_ADTTyp_Constr_392", %"$TyDescrTy_ADTTyp_Constr_314"* @"$TyDescr_Bool_False_ADTTyp_Constr_395"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_397" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_398" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_312" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_397", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_314"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_314"*], [2 x %"$TyDescrTy_ADTTyp_Constr_314"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_396", i32 0, i32 0), %"$TyDescrTy_ADTTyp_313"* @"$TyDescr_Bool_ADTTyp_389" }
@"$TyDescr_Bool_ADTTyp_m_specls_399" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_312"*] [%"$TyDescrTy_ADTTyp_Specl_312"* @"$TyDescr_Bool_ADTTyp_Specl_398"]
@"$TyDescr_ADT_Bool_400" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_401" = unnamed_addr constant %"$TyDescr_MapTyp_322" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320" }
@"$TyDescr_MapTyp_402" = unnamed_addr constant %"$TyDescr_MapTyp_322" { %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }
@"$TyDescr_MapTyp_403" = unnamed_addr constant %"$TyDescr_MapTyp_322" { %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318" }
@"$TyDescr_AddrFields_404" = unnamed_addr constant %"$TyDescr_AddrTyp_327" { i32 -1, %"$TyDescr_AddrFieldTyp_326"* null }
@"$stringlit_1747" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1752" = unnamed_addr constant [8 x i8] c"AdminSet"
@"$stringlit_1755" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1763" = unnamed_addr constant [10 x i8] c"isApproved"
@"$stringlit_1808" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1813" = unnamed_addr constant [11 x i8] c"ApprovedFor"
@"$stringlit_1816" = unnamed_addr constant [4 x i8] c"user"
@"$stringlit_1824" = unnamed_addr constant [8 x i8] c"operator"
@"$stringlit_1832" = unnamed_addr constant [10 x i8] c"isApproved"
@"$stringlit_1847" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1852" = unnamed_addr constant [8 x i8] c"Approved"
@"$stringlit_1855" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1870" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1875" = unnamed_addr constant [12 x i8] c"NewRegistrar"
@"$stringlit_1878" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1906" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1911" = unnamed_addr constant [9 x i8] c"NewDomain"
@"$stringlit_1914" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_1922" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_1967" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1972" = unnamed_addr constant [10 x i8] c"Configured"
@"$stringlit_1975" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_1983" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_1991" = unnamed_addr constant [8 x i8] c"resolver"
@"$stringlit_2006" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_2011" = unnamed_addr constant [5 x i8] c"Error"
@"$stringlit_2014" = unnamed_addr constant [3 x i8] c"msg"
@list_foldr = global { i8*, i8* }* null
@list_foldk = global { i8*, i8* }* null
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.orb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.negb = global { %TName_Bool* (i8*, %TName_Bool*)*, i8* } zeroinitializer
@ListUtils.list_filter = global { i8*, i8* }* null
@ListUtils.list_find = global { i8*, i8* }* null
@ListUtils.list_exists = global { i8*, i8* }* null
@ListUtils.list_mem = global { i8*, i8* }* null
@ud-registry.zeroByStr20 = global [20 x i8] zeroinitializer
@ud-registry.nilByStr20 = global %TName_List_ByStr20* null
@ud-registry.nilMessage = global %TName_List_Message* null
@ud-registry.oneMsg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@ud-registry.eqByStr20 = global { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } zeroinitializer
@ud-registry.listByStr20Contains = global { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } zeroinitializer
@ud-registry.listByStr20Excludes = global { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } zeroinitializer
@ud-registry.listByStr20FilterOut = global { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } zeroinitializer
@ud-registry.xandb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@ud-registry.eAdminSet = global { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } zeroinitializer
@ud-registry.eApprovedFor = global { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } zeroinitializer
@ud-registry.eApproved = global { i8* (i8*, [20 x i8]*)*, i8* } zeroinitializer
@ud-registry.eNewRegistrar = global { i8* (i8*, [20 x i8]*)*, i8* } zeroinitializer
@ud-registry.eNewDomain = global { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } zeroinitializer
@ud-registry.eConfigured = global { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } zeroinitializer
@ud-registry.eError = global { i8* (i8*, %String)*, i8* } zeroinitializer
@ud-registry.recordMemberOwner = global { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } zeroinitializer
@ud-registry.parentLabelToNode = global { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } zeroinitializer
@ud-registry.getIsOAO = global { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@_cparam_initialOwner = global [20 x i8] zeroinitializer
@_cparam_rootNode = global [32 x i8] zeroinitializer
@"$records_2699" = unnamed_addr constant [8 x i8] c"records\00"
@"$registrar_2709" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$approvals_2722" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_2734" = unnamed_addr constant [10 x i8] c"operators\00"
@"$admins_2750" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_2757" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_2910" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_2960" = unnamed_addr constant [26 x i8] c"Sender not root node owner"
@"$records_3000" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3063" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$approvals_3168" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$stringlit_3214" = unnamed_addr constant [21 x i8] c"Sender not node owner"
@"$operators_3253" = unnamed_addr constant [10 x i8] c"operators\00"
@"$operators_3410" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3467" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3483" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3517" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3602" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_3657" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3662" = unnamed_addr constant [18 x i8] c"onConfigureSuccess"
@"$stringlit_3665" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3672" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3679" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3686" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_3732" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$stringlit_3770" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3775" = unnamed_addr constant [18 x i8] c"onConfigureFailure"
@"$stringlit_3778" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3785" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3793" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3800" = unnamed_addr constant [10 x i8] c"_recipient"
@"$records_3849" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3865" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3899" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3985" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4042" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$records_4082" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4098" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_4132" = unnamed_addr constant [10 x i8] c"operators\00"
@"$approvals_4198" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$records_4227" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4283" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4288" = unnamed_addr constant [17 x i8] c"onTransferSuccess"
@"$stringlit_4291" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_4298" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4305" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4312" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_4358" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$stringlit_4396" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4401" = unnamed_addr constant [17 x i8] c"onTransferFailure"
@"$stringlit_4404" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_4411" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4418" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4425" = unnamed_addr constant [10 x i8] c"_recipient"
@"$records_4472" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4488" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_4522" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_4604" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4669" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$records_4699" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4756" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4761" = unnamed_addr constant [15 x i8] c"onAssignSuccess"
@"$stringlit_4764" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_4771" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_4778" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4785" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4792" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_4838" = unnamed_addr constant [45 x i8] c"Sender not parent owner, approved or operator"
@"$stringlit_4876" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4881" = unnamed_addr constant [15 x i8] c"onAssignFailure"
@"$stringlit_4884" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_4891" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_4898" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4906" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4913" = unnamed_addr constant [10 x i8] c"_recipient"
@"$admins_4960" = unnamed_addr constant [7 x i8] c"admins\00"
@"$records_4998" = unnamed_addr constant [8 x i8] c"records\00"
@"$records_5015" = unnamed_addr constant [8 x i8] c"records\00"
@"$registrar_5029" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$records_5305" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_5362" = unnamed_addr constant [12 x i8] c"Sender admin"
@"$admins_5401" = unnamed_addr constant [7 x i8] c"admins\00"
@"$registrar_5482" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$records_5522" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_5539" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$registrar_5603" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$stringlit_5711" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_5716" = unnamed_addr constant [8 x i8] c"register"
@"$stringlit_5719" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_5726" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_5734" = unnamed_addr constant [6 x i8] c"origin"
@"$stringlit_5741" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_5749" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_5756" = unnamed_addr constant [5 x i8] c"label"
@"$records_5804" = unnamed_addr constant [8 x i8] c"records\00"
@_tydescr_table = constant [28 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %_TyDescrTy_Typ* @"$TyDescr_Event_301", %_TyDescrTy_Typ* @"$TyDescr_Int64_283", %_TyDescrTy_Typ* @"$TyDescr_Addr_328", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ* @"$TyDescr_Uint256_293", %_TyDescrTy_Typ* @"$TyDescr_Uint32_281", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_307", %_TyDescrTy_Typ* @"$TyDescr_Uint64_285", %_TyDescrTy_Typ* @"$TyDescr_Bnum_297", %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ* @"$TyDescr_Map_325", %_TyDescrTy_Typ* @"$TyDescr_Exception_303", %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ* @"$TyDescr_Int256_291", %_TyDescrTy_Typ* @"$TyDescr_Int128_287", %_TyDescrTy_Typ* @"$TyDescr_Map_323", %_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", %_TyDescrTy_Typ* @"$TyDescr_Bystr_305", %_TyDescrTy_Typ* @"$TyDescr_Message_299", %_TyDescrTy_Typ* @"$TyDescr_Map_324", %_TyDescrTy_Typ* @"$TyDescr_Int32_279"]
@_tydescr_table_length = constant i32 28
@"$pname__scilla_version_5931" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_5932" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_5933" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_initialOwner_5934" = unnamed_addr constant [12 x i8] c"initialOwner"
@"$pname_rootNode_5935" = unnamed_addr constant [8 x i8] c"rootNode"
@_contract_parameters = constant [5 x %"$ParamDescr_5929"] [%"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_5931", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_281" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_5932", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_5933", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_297" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$pname_initialOwner_5934", i32 0, i32 0), i32 12 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pname_rootNode_5935", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }]
@_contract_parameters_length = constant i32 5
@"$tpname__amount_5936" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5937" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5938" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_5939" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_5940" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_setAdmin_5941" = unnamed_addr constant [5 x %"$ParamDescr_5929"] [%"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5936", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5937", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5938", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5939", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_5940", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321" }]
@"$tname_setAdmin_5942" = unnamed_addr constant [8 x i8] c"setAdmin"
@"$tpname__amount_5943" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5944" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5945" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5946" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_address_5947" = unnamed_addr constant [7 x i8] c"address"
@"$tparams_approve_5948" = unnamed_addr constant [5 x %"$ParamDescr_5929"] [%"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5943", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5944", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5945", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5946", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5947", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_approve_5949" = unnamed_addr constant [7 x i8] c"approve"
@"$tpname__amount_5950" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5951" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5952" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_5953" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_5954" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_approveFor_5955" = unnamed_addr constant [5 x %"$ParamDescr_5929"] [%"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5950", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5951", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5952", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5953", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_5954", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321" }]
@"$tname_approveFor_5956" = unnamed_addr constant [10 x i8] c"approveFor"
@"$tpname__amount_5957" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5958" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5959" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5960" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_owner_5961" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_5962" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_configureNode_5963" = unnamed_addr constant [6 x %"$ParamDescr_5929"] [%"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5957", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5958", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5959", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5960", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5961", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5962", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_configureNode_5964" = unnamed_addr constant [13 x i8] c"configureNode"
@"$tpname__amount_5965" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5966" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5967" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5968" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_resolver_5969" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_configureResolver_5970" = unnamed_addr constant [5 x %"$ParamDescr_5929"] [%"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5965", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5966", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5967", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5968", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5969", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_configureResolver_5971" = unnamed_addr constant [17 x i8] c"configureResolver"
@"$tpname__amount_5972" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5973" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5974" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5975" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_owner_5976" = unnamed_addr constant [5 x i8] c"owner"
@"$tparams_transfer_5977" = unnamed_addr constant [5 x %"$ParamDescr_5929"] [%"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5972", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5973", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5974", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5975", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5976", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_transfer_5978" = unnamed_addr constant [8 x i8] c"transfer"
@"$tpname__amount_5979" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5980" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5981" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_parent_5982" = unnamed_addr constant [6 x i8] c"parent"
@"$tpname_label_5983" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_5984" = unnamed_addr constant [5 x i8] c"owner"
@"$tparams_assign_5985" = unnamed_addr constant [6 x %"$ParamDescr_5929"] [%"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5979", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5980", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5981", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_parent_5982", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_5983", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_295" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5984", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_assign_5986" = unnamed_addr constant [6 x i8] c"assign"
@"$tpname__amount_5987" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5988" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5989" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_label_5990" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_5991" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_5992" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_bestow_5993" = unnamed_addr constant [6 x %"$ParamDescr_5929"] [%"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5987", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5988", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5989", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_5990", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_295" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5991", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5992", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_bestow_5994" = unnamed_addr constant [6 x i8] c"bestow"
@"$tpname__amount_5995" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5996" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5997" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_5998" = unnamed_addr constant [7 x i8] c"address"
@"$tparams_setRegistrar_5999" = unnamed_addr constant [4 x %"$ParamDescr_5929"] [%"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5995", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5996", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5997", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5998", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_setRegistrar_6000" = unnamed_addr constant [12 x i8] c"setRegistrar"
@"$tpname__amount_6001" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_6002" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_6003" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_parent_6004" = unnamed_addr constant [6 x i8] c"parent"
@"$tpname_label_6005" = unnamed_addr constant [5 x i8] c"label"
@"$tparams_register_6006" = unnamed_addr constant [5 x %"$ParamDescr_5929"] [%"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_6001", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_6002", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_6003", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_parent_6004", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_6005", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_295" }]
@"$tname_register_6007" = unnamed_addr constant [8 x i8] c"register"
@"$tpname__amount_6008" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_6009" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_6010" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_6011" = unnamed_addr constant [4 x i8] c"node"
@"$tparams_onResolverConfigured_6012" = unnamed_addr constant [4 x %"$ParamDescr_5929"] [%"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_6008", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_6009", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_6010", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5929" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_6011", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }]
@"$tname_onResolverConfigured_6013" = unnamed_addr constant [20 x i8] c"onResolverConfigured"
@_transition_parameters = constant [11 x %"$TransDescr_5930"] [%"$TransDescr_5930" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setAdmin_5942", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5929"* getelementptr inbounds ([5 x %"$ParamDescr_5929"], [5 x %"$ParamDescr_5929"]* @"$tparams_setAdmin_5941", i32 0, i32 0) }, %"$TransDescr_5930" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_approve_5949", i32 0, i32 0), i32 7 }, i32 5, %"$ParamDescr_5929"* getelementptr inbounds ([5 x %"$ParamDescr_5929"], [5 x %"$ParamDescr_5929"]* @"$tparams_approve_5948", i32 0, i32 0) }, %"$TransDescr_5930" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tname_approveFor_5956", i32 0, i32 0), i32 10 }, i32 5, %"$ParamDescr_5929"* getelementptr inbounds ([5 x %"$ParamDescr_5929"], [5 x %"$ParamDescr_5929"]* @"$tparams_approveFor_5955", i32 0, i32 0) }, %"$TransDescr_5930" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_configureNode_5964", i32 0, i32 0), i32 13 }, i32 6, %"$ParamDescr_5929"* getelementptr inbounds ([6 x %"$ParamDescr_5929"], [6 x %"$ParamDescr_5929"]* @"$tparams_configureNode_5963", i32 0, i32 0) }, %"$TransDescr_5930" { %ParamDescrString { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$tname_configureResolver_5971", i32 0, i32 0), i32 17 }, i32 5, %"$ParamDescr_5929"* getelementptr inbounds ([5 x %"$ParamDescr_5929"], [5 x %"$ParamDescr_5929"]* @"$tparams_configureResolver_5970", i32 0, i32 0) }, %"$TransDescr_5930" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_transfer_5978", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5929"* getelementptr inbounds ([5 x %"$ParamDescr_5929"], [5 x %"$ParamDescr_5929"]* @"$tparams_transfer_5977", i32 0, i32 0) }, %"$TransDescr_5930" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_assign_5986", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_5929"* getelementptr inbounds ([6 x %"$ParamDescr_5929"], [6 x %"$ParamDescr_5929"]* @"$tparams_assign_5985", i32 0, i32 0) }, %"$TransDescr_5930" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_bestow_5994", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_5929"* getelementptr inbounds ([6 x %"$ParamDescr_5929"], [6 x %"$ParamDescr_5929"]* @"$tparams_bestow_5993", i32 0, i32 0) }, %"$TransDescr_5930" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$tname_setRegistrar_6000", i32 0, i32 0), i32 12 }, i32 4, %"$ParamDescr_5929"* getelementptr inbounds ([4 x %"$ParamDescr_5929"], [4 x %"$ParamDescr_5929"]* @"$tparams_setRegistrar_5999", i32 0, i32 0) }, %"$TransDescr_5930" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_register_6007", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5929"* getelementptr inbounds ([5 x %"$ParamDescr_5929"], [5 x %"$ParamDescr_5929"]* @"$tparams_register_6006", i32 0, i32 0) }, %"$TransDescr_5930" { %ParamDescrString { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$tname_onResolverConfigured_6013", i32 0, i32 0), i32 20 }, i32 4, %"$ParamDescr_5929"* getelementptr inbounds ([4 x %"$ParamDescr_5929"], [4 x %"$ParamDescr_5929"]* @"$tparams_onResolverConfigured_6012", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 11

define internal %TName_Bool* @"$fundef_214"(%"$$fundef_214_env_405"* %0, %"TName_Option_List_(ByStr20)"* %1) {
entry:
  %"$$fundef_214_env_BoolUtils.orb_2217" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2218" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_214_env_BoolUtils.orb_2217", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2218", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_214_env_maybeApproved_2219" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %0, i32 0, i32 1
  %"$maybeApproved_envload_2220" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_214_env_maybeApproved_2219", align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  store %TName_Option_ByStr20* %"$maybeApproved_envload_2220", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$fundef_214_env_recordOwner_2221" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %0, i32 0, i32 2
  %"$recordOwner_envload_2222" = load [20 x i8], [20 x i8]* %"$$fundef_214_env_recordOwner_2221", align 1
  %recordOwner = alloca [20 x i8], align 1
  store [20 x i8] %"$recordOwner_envload_2222", [20 x i8]* %recordOwner, align 1
  %"$$fundef_214_env_sender_2223" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %0, i32 0, i32 3
  %"$sender_envload_2224" = load [20 x i8], [20 x i8]* %"$$fundef_214_env_sender_2223", align 1
  %sender = alloca [20 x i8], align 1
  store [20 x i8] %"$sender_envload_2224", [20 x i8]* %sender, align 1
  %"$$fundef_214_env_ud-registry.listByStr20Contains_2225" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %0, i32 0, i32 4
  %"$ud-registry.listByStr20Contains_envload_2226" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_214_env_ud-registry.listByStr20Contains_2225", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2226", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_215" = alloca %TName_Bool*, align 8
  %"$gasrem_2227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2228" = icmp ugt i64 1, %"$gasrem_2227"
  br i1 %"$gascmp_2228", label %"$out_of_gas_2229", label %"$have_gas_2230"

"$out_of_gas_2229":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2230"

"$have_gas_2230":                                 ; preds = %"$out_of_gas_2229", %entry
  %"$consume_2231" = sub i64 %"$gasrem_2227", 1
  store i64 %"$consume_2231", i64* @_gasrem, align 8
  %isOwner = alloca %TName_Bool*, align 8
  %"$gasrem_2232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2233" = icmp ugt i64 20, %"$gasrem_2232"
  br i1 %"$gascmp_2233", label %"$out_of_gas_2234", label %"$have_gas_2235"

"$out_of_gas_2234":                               ; preds = %"$have_gas_2230"
  call void @_out_of_gas()
  br label %"$have_gas_2235"

"$have_gas_2235":                                 ; preds = %"$out_of_gas_2234", %"$have_gas_2230"
  %"$consume_2236" = sub i64 %"$gasrem_2232", 20
  store i64 %"$consume_2236", i64* @_gasrem, align 8
  %"$execptr_load_2237" = load i8*, i8** @_execptr, align 8
  %"$eq_sender_2238" = alloca [20 x i8], align 1
  %"$sender_2239" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2239", [20 x i8]* %"$eq_sender_2238", align 1
  %"$$eq_sender_2238_2240" = bitcast [20 x i8]* %"$eq_sender_2238" to i8*
  %"$eq_recordOwner_2241" = alloca [20 x i8], align 1
  %"$recordOwner_2242" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_2242", [20 x i8]* %"$eq_recordOwner_2241", align 1
  %"$$eq_recordOwner_2241_2243" = bitcast [20 x i8]* %"$eq_recordOwner_2241" to i8*
  %"$eq_call_2244" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2237", i32 20, i8* %"$$eq_sender_2238_2240", i8* %"$$eq_recordOwner_2241_2243")
  store %TName_Bool* %"$eq_call_2244", %TName_Bool** %isOwner, align 8
  %"$gasrem_2246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2247" = icmp ugt i64 1, %"$gasrem_2246"
  br i1 %"$gascmp_2247", label %"$out_of_gas_2248", label %"$have_gas_2249"

"$out_of_gas_2248":                               ; preds = %"$have_gas_2235"
  call void @_out_of_gas()
  br label %"$have_gas_2249"

"$have_gas_2249":                                 ; preds = %"$out_of_gas_2248", %"$have_gas_2235"
  %"$consume_2250" = sub i64 %"$gasrem_2246", 1
  store i64 %"$consume_2250", i64* @_gasrem, align 8
  %isApproved = alloca %TName_Bool*, align 8
  %"$gasrem_2251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2252" = icmp ugt i64 2, %"$gasrem_2251"
  br i1 %"$gascmp_2252", label %"$out_of_gas_2253", label %"$have_gas_2254"

"$out_of_gas_2253":                               ; preds = %"$have_gas_2249"
  call void @_out_of_gas()
  br label %"$have_gas_2254"

"$have_gas_2254":                                 ; preds = %"$out_of_gas_2253", %"$have_gas_2249"
  %"$consume_2255" = sub i64 %"$gasrem_2251", 2
  store i64 %"$consume_2255", i64* @_gasrem, align 8
  %"$maybeApproved_2257" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_2258" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_2257", i32 0, i32 0
  %"$maybeApproved_tag_2259" = load i8, i8* %"$maybeApproved_tag_2258", align 1
  switch i8 %"$maybeApproved_tag_2259", label %"$empty_default_2260" [
    i8 1, label %"$None_2261"
    i8 0, label %"$Some_2271"
  ]

"$None_2261":                                     ; preds = %"$have_gas_2254"
  %"$maybeApproved_2262" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2257" to %CName_None_ByStr20*
  %"$gasrem_2263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2264" = icmp ugt i64 1, %"$gasrem_2263"
  br i1 %"$gascmp_2264", label %"$out_of_gas_2265", label %"$have_gas_2266"

"$out_of_gas_2265":                               ; preds = %"$None_2261"
  call void @_out_of_gas()
  br label %"$have_gas_2266"

"$have_gas_2266":                                 ; preds = %"$out_of_gas_2265", %"$None_2261"
  %"$consume_2267" = sub i64 %"$gasrem_2263", 1
  store i64 %"$consume_2267", i64* @_gasrem, align 8
  %"$adtval_2268_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2268_salloc" = call i8* @_salloc(i8* %"$adtval_2268_load", i64 1)
  %"$adtval_2268" = bitcast i8* %"$adtval_2268_salloc" to %CName_False*
  %"$adtgep_2269" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_2268", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2269", align 1
  %"$adtptr_2270" = bitcast %CName_False* %"$adtval_2268" to %TName_Bool*
  store %TName_Bool* %"$adtptr_2270", %TName_Bool** %isApproved, align 8
  br label %"$matchsucc_2256"

"$Some_2271":                                     ; preds = %"$have_gas_2254"
  %"$maybeApproved_2272" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2257" to %CName_Some_ByStr20*
  %"$approved_gep_2273" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_2272", i32 0, i32 1
  %"$approved_load_2274" = load [20 x i8], [20 x i8]* %"$approved_gep_2273", align 1
  %approved = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_2274", [20 x i8]* %approved, align 1
  %"$gasrem_2275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2276" = icmp ugt i64 20, %"$gasrem_2275"
  br i1 %"$gascmp_2276", label %"$out_of_gas_2277", label %"$have_gas_2278"

"$out_of_gas_2277":                               ; preds = %"$Some_2271"
  call void @_out_of_gas()
  br label %"$have_gas_2278"

"$have_gas_2278":                                 ; preds = %"$out_of_gas_2277", %"$Some_2271"
  %"$consume_2279" = sub i64 %"$gasrem_2275", 20
  store i64 %"$consume_2279", i64* @_gasrem, align 8
  %"$execptr_load_2280" = load i8*, i8** @_execptr, align 8
  %"$eq_sender_2281" = alloca [20 x i8], align 1
  %"$sender_2282" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2282", [20 x i8]* %"$eq_sender_2281", align 1
  %"$$eq_sender_2281_2283" = bitcast [20 x i8]* %"$eq_sender_2281" to i8*
  %"$eq_approved_2284" = alloca [20 x i8], align 1
  %"$approved_2285" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_2285", [20 x i8]* %"$eq_approved_2284", align 1
  %"$$eq_approved_2284_2286" = bitcast [20 x i8]* %"$eq_approved_2284" to i8*
  %"$eq_call_2287" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2280", i32 20, i8* %"$$eq_sender_2281_2283", i8* %"$$eq_approved_2284_2286")
  store %TName_Bool* %"$eq_call_2287", %TName_Bool** %isApproved, align 8
  br label %"$matchsucc_2256"

"$empty_default_2260":                            ; preds = %"$have_gas_2254"
  br label %"$matchsucc_2256"

"$matchsucc_2256":                                ; preds = %"$have_gas_2278", %"$have_gas_2266", %"$empty_default_2260"
  %"$gasrem_2289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2290" = icmp ugt i64 1, %"$gasrem_2289"
  br i1 %"$gascmp_2290", label %"$out_of_gas_2291", label %"$have_gas_2292"

"$out_of_gas_2291":                               ; preds = %"$matchsucc_2256"
  call void @_out_of_gas()
  br label %"$have_gas_2292"

"$have_gas_2292":                                 ; preds = %"$out_of_gas_2291", %"$matchsucc_2256"
  %"$consume_2293" = sub i64 %"$gasrem_2289", 1
  store i64 %"$consume_2293", i64* @_gasrem, align 8
  %isOperator = alloca %TName_Bool*, align 8
  %"$gasrem_2294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2295" = icmp ugt i64 2, %"$gasrem_2294"
  br i1 %"$gascmp_2295", label %"$out_of_gas_2296", label %"$have_gas_2297"

"$out_of_gas_2296":                               ; preds = %"$have_gas_2292"
  call void @_out_of_gas()
  br label %"$have_gas_2297"

"$have_gas_2297":                                 ; preds = %"$out_of_gas_2296", %"$have_gas_2292"
  %"$consume_2298" = sub i64 %"$gasrem_2294", 2
  store i64 %"$consume_2298", i64* @_gasrem, align 8
  %"$maybeOperators_tag_2300" = getelementptr inbounds %"TName_Option_List_(ByStr20)", %"TName_Option_List_(ByStr20)"* %1, i32 0, i32 0
  %"$maybeOperators_tag_2301" = load i8, i8* %"$maybeOperators_tag_2300", align 1
  switch i8 %"$maybeOperators_tag_2301", label %"$empty_default_2302" [
    i8 1, label %"$None_2303"
    i8 0, label %"$Some_2313"
  ]

"$None_2303":                                     ; preds = %"$have_gas_2297"
  %"$maybeOperators_2304" = bitcast %"TName_Option_List_(ByStr20)"* %1 to %"CName_None_List_(ByStr20)"*
  %"$gasrem_2305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2306" = icmp ugt i64 1, %"$gasrem_2305"
  br i1 %"$gascmp_2306", label %"$out_of_gas_2307", label %"$have_gas_2308"

"$out_of_gas_2307":                               ; preds = %"$None_2303"
  call void @_out_of_gas()
  br label %"$have_gas_2308"

"$have_gas_2308":                                 ; preds = %"$out_of_gas_2307", %"$None_2303"
  %"$consume_2309" = sub i64 %"$gasrem_2305", 1
  store i64 %"$consume_2309", i64* @_gasrem, align 8
  %"$adtval_2310_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2310_salloc" = call i8* @_salloc(i8* %"$adtval_2310_load", i64 1)
  %"$adtval_2310" = bitcast i8* %"$adtval_2310_salloc" to %CName_False*
  %"$adtgep_2311" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_2310", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2311", align 1
  %"$adtptr_2312" = bitcast %CName_False* %"$adtval_2310" to %TName_Bool*
  store %TName_Bool* %"$adtptr_2312", %TName_Bool** %isOperator, align 8
  br label %"$matchsucc_2299"

"$Some_2313":                                     ; preds = %"$have_gas_2297"
  %"$maybeOperators_2314" = bitcast %"TName_Option_List_(ByStr20)"* %1 to %"CName_Some_List_(ByStr20)"*
  %"$operators_gep_2315" = getelementptr inbounds %"CName_Some_List_(ByStr20)", %"CName_Some_List_(ByStr20)"* %"$maybeOperators_2314", i32 0, i32 1
  %"$operators_load_2316" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$operators_gep_2315", align 8
  %operators = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$operators_load_2316", %TName_List_ByStr20** %operators, align 8
  %"$gasrem_2317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2318" = icmp ugt i64 1, %"$gasrem_2317"
  br i1 %"$gascmp_2318", label %"$out_of_gas_2319", label %"$have_gas_2320"

"$out_of_gas_2319":                               ; preds = %"$Some_2313"
  call void @_out_of_gas()
  br label %"$have_gas_2320"

"$have_gas_2320":                                 ; preds = %"$out_of_gas_2319", %"$Some_2313"
  %"$consume_2321" = sub i64 %"$gasrem_2317", 1
  store i64 %"$consume_2321", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_39" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_2322" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_2323" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2322", 0
  %"$ud-registry.listByStr20Contains_envptr_2324" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2322", 1
  %"$operators_2325" = load %TName_List_ByStr20*, %TName_List_ByStr20** %operators, align 8
  %"$ud-registry.listByStr20Contains_call_2326" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_2323"(i8* %"$ud-registry.listByStr20Contains_envptr_2324", %TName_List_ByStr20* %"$operators_2325")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_2326", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_39", align 8
  %"$ud-registry.listByStr20Contains_40" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_39_2327" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_39", align 8
  %"$$ud-registry.listByStr20Contains_39_fptr_2328" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_39_2327", 0
  %"$$ud-registry.listByStr20Contains_39_envptr_2329" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_39_2327", 1
  %"$$ud-registry.listByStr20Contains_39_sender_2330" = alloca [20 x i8], align 1
  %"$sender_2331" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2331", [20 x i8]* %"$$ud-registry.listByStr20Contains_39_sender_2330", align 1
  %"$$ud-registry.listByStr20Contains_39_call_2332" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_39_fptr_2328"(i8* %"$$ud-registry.listByStr20Contains_39_envptr_2329", [20 x i8]* %"$$ud-registry.listByStr20Contains_39_sender_2330")
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_39_call_2332", %TName_Bool** %"$ud-registry.listByStr20Contains_40", align 8
  %"$$ud-registry.listByStr20Contains_40_2333" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_40", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_40_2333", %TName_Bool** %isOperator, align 8
  br label %"$matchsucc_2299"

"$empty_default_2302":                            ; preds = %"$have_gas_2297"
  br label %"$matchsucc_2299"

"$matchsucc_2299":                                ; preds = %"$have_gas_2320", %"$have_gas_2308", %"$empty_default_2302"
  %"$gasrem_2334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2335" = icmp ugt i64 1, %"$gasrem_2334"
  br i1 %"$gascmp_2335", label %"$out_of_gas_2336", label %"$have_gas_2337"

"$out_of_gas_2336":                               ; preds = %"$matchsucc_2299"
  call void @_out_of_gas()
  br label %"$have_gas_2337"

"$have_gas_2337":                                 ; preds = %"$out_of_gas_2336", %"$matchsucc_2299"
  %"$consume_2338" = sub i64 %"$gasrem_2334", 1
  store i64 %"$consume_2338", i64* @_gasrem, align 8
  %b1 = alloca %TName_Bool*, align 8
  %"$gasrem_2339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2340" = icmp ugt i64 1, %"$gasrem_2339"
  br i1 %"$gascmp_2340", label %"$out_of_gas_2341", label %"$have_gas_2342"

"$out_of_gas_2341":                               ; preds = %"$have_gas_2337"
  call void @_out_of_gas()
  br label %"$have_gas_2342"

"$have_gas_2342":                                 ; preds = %"$out_of_gas_2341", %"$have_gas_2337"
  %"$consume_2343" = sub i64 %"$gasrem_2339", 1
  store i64 %"$consume_2343", i64* @_gasrem, align 8
  %"$BoolUtils.orb_41" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_2344" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_2345" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2344", 0
  %"$BoolUtils.orb_envptr_2346" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2344", 1
  %"$isOwner_2347" = load %TName_Bool*, %TName_Bool** %isOwner, align 8
  %"$BoolUtils.orb_call_2348" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_2345"(i8* %"$BoolUtils.orb_envptr_2346", %TName_Bool* %"$isOwner_2347")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_2348", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_41", align 8
  %"$BoolUtils.orb_42" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_41_2349" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_41", align 8
  %"$$BoolUtils.orb_41_fptr_2350" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_41_2349", 0
  %"$$BoolUtils.orb_41_envptr_2351" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_41_2349", 1
  %"$isApproved_2352" = load %TName_Bool*, %TName_Bool** %isApproved, align 8
  %"$$BoolUtils.orb_41_call_2353" = call %TName_Bool* %"$$BoolUtils.orb_41_fptr_2350"(i8* %"$$BoolUtils.orb_41_envptr_2351", %TName_Bool* %"$isApproved_2352")
  store %TName_Bool* %"$$BoolUtils.orb_41_call_2353", %TName_Bool** %"$BoolUtils.orb_42", align 8
  %"$$BoolUtils.orb_42_2354" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_42", align 8
  store %TName_Bool* %"$$BoolUtils.orb_42_2354", %TName_Bool** %b1, align 8
  %"$gasrem_2355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2356" = icmp ugt i64 1, %"$gasrem_2355"
  br i1 %"$gascmp_2356", label %"$out_of_gas_2357", label %"$have_gas_2358"

"$out_of_gas_2357":                               ; preds = %"$have_gas_2342"
  call void @_out_of_gas()
  br label %"$have_gas_2358"

"$have_gas_2358":                                 ; preds = %"$out_of_gas_2357", %"$have_gas_2342"
  %"$consume_2359" = sub i64 %"$gasrem_2355", 1
  store i64 %"$consume_2359", i64* @_gasrem, align 8
  %"$BoolUtils.orb_43" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_2360" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_2361" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2360", 0
  %"$BoolUtils.orb_envptr_2362" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2360", 1
  %"$b1_2363" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$BoolUtils.orb_call_2364" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_2361"(i8* %"$BoolUtils.orb_envptr_2362", %TName_Bool* %"$b1_2363")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_2364", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_43", align 8
  %"$BoolUtils.orb_44" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_43_2365" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_43", align 8
  %"$$BoolUtils.orb_43_fptr_2366" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_43_2365", 0
  %"$$BoolUtils.orb_43_envptr_2367" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_43_2365", 1
  %"$isOperator_2368" = load %TName_Bool*, %TName_Bool** %isOperator, align 8
  %"$$BoolUtils.orb_43_call_2369" = call %TName_Bool* %"$$BoolUtils.orb_43_fptr_2366"(i8* %"$$BoolUtils.orb_43_envptr_2367", %TName_Bool* %"$isOperator_2368")
  store %TName_Bool* %"$$BoolUtils.orb_43_call_2369", %TName_Bool** %"$BoolUtils.orb_44", align 8
  %"$$BoolUtils.orb_44_2370" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_44", align 8
  store %TName_Bool* %"$$BoolUtils.orb_44_2370", %TName_Bool** %"$retval_215", align 8
  %"$$retval_215_2371" = load %TName_Bool*, %TName_Bool** %"$retval_215", align 8
  ret %TName_Bool* %"$$retval_215_2371"
}

define internal { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } @"$fundef_212"(%"$$fundef_212_env_406"* %0, %TName_Option_ByStr20* %1) {
entry:
  %"$$fundef_212_env_BoolUtils.orb_2190" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2191" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_212_env_BoolUtils.orb_2190", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2191", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_212_env_recordOwner_2192" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %0, i32 0, i32 1
  %"$recordOwner_envload_2193" = load [20 x i8], [20 x i8]* %"$$fundef_212_env_recordOwner_2192", align 1
  %recordOwner = alloca [20 x i8], align 1
  store [20 x i8] %"$recordOwner_envload_2193", [20 x i8]* %recordOwner, align 1
  %"$$fundef_212_env_sender_2194" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %0, i32 0, i32 2
  %"$sender_envload_2195" = load [20 x i8], [20 x i8]* %"$$fundef_212_env_sender_2194", align 1
  %sender = alloca [20 x i8], align 1
  store [20 x i8] %"$sender_envload_2195", [20 x i8]* %sender, align 1
  %"$$fundef_212_env_ud-registry.listByStr20Contains_2196" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %0, i32 0, i32 3
  %"$ud-registry.listByStr20Contains_envload_2197" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_212_env_ud-registry.listByStr20Contains_2196", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2197", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_213" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$gasrem_2198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2199" = icmp ugt i64 1, %"$gasrem_2198"
  br i1 %"$gascmp_2199", label %"$out_of_gas_2200", label %"$have_gas_2201"

"$out_of_gas_2200":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2201"

"$have_gas_2201":                                 ; preds = %"$out_of_gas_2200", %entry
  %"$consume_2202" = sub i64 %"$gasrem_2198", 1
  store i64 %"$consume_2202", i64* @_gasrem, align 8
  %"$$fundef_214_envp_2203_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_214_envp_2203_salloc" = call i8* @_salloc(i8* %"$$fundef_214_envp_2203_load", i64 80)
  %"$$fundef_214_envp_2203" = bitcast i8* %"$$fundef_214_envp_2203_salloc" to %"$$fundef_214_env_405"*
  %"$$fundef_214_env_voidp_2205" = bitcast %"$$fundef_214_env_405"* %"$$fundef_214_envp_2203" to i8*
  %"$$fundef_214_cloval_2206" = insertvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)* bitcast (%TName_Bool* (%"$$fundef_214_env_405"*, %"TName_Option_List_(ByStr20)"*)* @"$fundef_214" to %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*), i8* undef }, i8* %"$$fundef_214_env_voidp_2205", 1
  %"$$fundef_214_env_BoolUtils.orb_2207" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %"$$fundef_214_envp_2203", i32 0, i32 0
  %"$BoolUtils.orb_2208" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2208", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_214_env_BoolUtils.orb_2207", align 8
  %"$$fundef_214_env_maybeApproved_2209" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %"$$fundef_214_envp_2203", i32 0, i32 1
  store %TName_Option_ByStr20* %1, %TName_Option_ByStr20** %"$$fundef_214_env_maybeApproved_2209", align 8
  %"$$fundef_214_env_recordOwner_2210" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %"$$fundef_214_envp_2203", i32 0, i32 2
  %"$recordOwner_2211" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_2211", [20 x i8]* %"$$fundef_214_env_recordOwner_2210", align 1
  %"$$fundef_214_env_sender_2212" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %"$$fundef_214_envp_2203", i32 0, i32 3
  %"$sender_2213" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2213", [20 x i8]* %"$$fundef_214_env_sender_2212", align 1
  %"$$fundef_214_env_ud-registry.listByStr20Contains_2214" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %"$$fundef_214_envp_2203", i32 0, i32 4
  %"$ud-registry.listByStr20Contains_2215" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2215", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_214_env_ud-registry.listByStr20Contains_2214", align 8
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$fundef_214_cloval_2206", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$retval_213", align 8
  %"$$retval_213_2216" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$retval_213", align 8
  ret { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$retval_213_2216"
}

define internal { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } @"$fundef_210"(%"$$fundef_210_env_407"* %0, [20 x i8]* %1) {
entry:
  %recordOwner = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_210_env_BoolUtils.orb_2167" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2168" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_210_env_BoolUtils.orb_2167", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2168", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_210_env_sender_2169" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %0, i32 0, i32 1
  %"$sender_envload_2170" = load [20 x i8], [20 x i8]* %"$$fundef_210_env_sender_2169", align 1
  %sender = alloca [20 x i8], align 1
  store [20 x i8] %"$sender_envload_2170", [20 x i8]* %sender, align 1
  %"$$fundef_210_env_ud-registry.listByStr20Contains_2171" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %0, i32 0, i32 2
  %"$ud-registry.listByStr20Contains_envload_2172" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_210_env_ud-registry.listByStr20Contains_2171", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2172", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_211" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$gasrem_2173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2174" = icmp ugt i64 1, %"$gasrem_2173"
  br i1 %"$gascmp_2174", label %"$out_of_gas_2175", label %"$have_gas_2176"

"$out_of_gas_2175":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2176"

"$have_gas_2176":                                 ; preds = %"$out_of_gas_2175", %entry
  %"$consume_2177" = sub i64 %"$gasrem_2173", 1
  store i64 %"$consume_2177", i64* @_gasrem, align 8
  %"$$fundef_212_envp_2178_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_212_envp_2178_salloc" = call i8* @_salloc(i8* %"$$fundef_212_envp_2178_load", i64 72)
  %"$$fundef_212_envp_2178" = bitcast i8* %"$$fundef_212_envp_2178_salloc" to %"$$fundef_212_env_406"*
  %"$$fundef_212_env_voidp_2180" = bitcast %"$$fundef_212_env_406"* %"$$fundef_212_envp_2178" to i8*
  %"$$fundef_212_cloval_2181" = insertvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)* bitcast ({ %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (%"$$fundef_212_env_406"*, %TName_Option_ByStr20*)* @"$fundef_212" to { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_212_env_voidp_2180", 1
  %"$$fundef_212_env_BoolUtils.orb_2182" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %"$$fundef_212_envp_2178", i32 0, i32 0
  %"$BoolUtils.orb_2183" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2183", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_212_env_BoolUtils.orb_2182", align 8
  %"$$fundef_212_env_recordOwner_2184" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %"$$fundef_212_envp_2178", i32 0, i32 1
  store [20 x i8] %recordOwner, [20 x i8]* %"$$fundef_212_env_recordOwner_2184", align 1
  %"$$fundef_212_env_sender_2185" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %"$$fundef_212_envp_2178", i32 0, i32 2
  %"$sender_2186" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2186", [20 x i8]* %"$$fundef_212_env_sender_2185", align 1
  %"$$fundef_212_env_ud-registry.listByStr20Contains_2187" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %"$$fundef_212_envp_2178", i32 0, i32 3
  %"$ud-registry.listByStr20Contains_2188" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2188", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_212_env_ud-registry.listByStr20Contains_2187", align 8
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_212_cloval_2181", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_211", align 8
  %"$$retval_211_2189" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_211", align 8
  ret { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$retval_211_2189"
}

define internal { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_208"(%"$$fundef_208_env_408"* %0, [20 x i8]* %1) {
entry:
  %sender = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_208_env_BoolUtils.orb_2148" = getelementptr inbounds %"$$fundef_208_env_408", %"$$fundef_208_env_408"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2149" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_208_env_BoolUtils.orb_2148", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2149", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_208_env_ud-registry.listByStr20Contains_2150" = getelementptr inbounds %"$$fundef_208_env_408", %"$$fundef_208_env_408"* %0, i32 0, i32 1
  %"$ud-registry.listByStr20Contains_envload_2151" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_208_env_ud-registry.listByStr20Contains_2150", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2151", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_209" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_2152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2153" = icmp ugt i64 1, %"$gasrem_2152"
  br i1 %"$gascmp_2153", label %"$out_of_gas_2154", label %"$have_gas_2155"

"$out_of_gas_2154":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2155"

"$have_gas_2155":                                 ; preds = %"$out_of_gas_2154", %entry
  %"$consume_2156" = sub i64 %"$gasrem_2152", 1
  store i64 %"$consume_2156", i64* @_gasrem, align 8
  %"$$fundef_210_envp_2157_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_210_envp_2157_salloc" = call i8* @_salloc(i8* %"$$fundef_210_envp_2157_load", i64 56)
  %"$$fundef_210_envp_2157" = bitcast i8* %"$$fundef_210_envp_2157_salloc" to %"$$fundef_210_env_407"*
  %"$$fundef_210_env_voidp_2159" = bitcast %"$$fundef_210_env_407"* %"$$fundef_210_envp_2157" to i8*
  %"$$fundef_210_cloval_2160" = insertvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (%"$$fundef_210_env_407"*, [20 x i8]*)* @"$fundef_210" to { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_210_env_voidp_2159", 1
  %"$$fundef_210_env_BoolUtils.orb_2161" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %"$$fundef_210_envp_2157", i32 0, i32 0
  %"$BoolUtils.orb_2162" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2162", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_210_env_BoolUtils.orb_2161", align 8
  %"$$fundef_210_env_sender_2163" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %"$$fundef_210_envp_2157", i32 0, i32 1
  store [20 x i8] %sender, [20 x i8]* %"$$fundef_210_env_sender_2163", align 1
  %"$$fundef_210_env_ud-registry.listByStr20Contains_2164" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %"$$fundef_210_envp_2157", i32 0, i32 2
  %"$ud-registry.listByStr20Contains_2165" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2165", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_210_env_ud-registry.listByStr20Contains_2164", align 8
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_210_cloval_2160", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_209", align 8
  %"$$retval_209_2166" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_209", align 8
  ret { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_209_2166"
}

define internal void @"$fundef_218"(%"$$fundef_218_env_409"* %0, [32 x i8]* %1, %String %2) {
entry:
  %"$$fundef_218_env_parent_2080" = getelementptr inbounds %"$$fundef_218_env_409", %"$$fundef_218_env_409"* %0, i32 0, i32 0
  %"$parent_envload_2081" = load [32 x i8], [32 x i8]* %"$$fundef_218_env_parent_2080", align 1
  %parent = alloca [32 x i8], align 1
  store [32 x i8] %"$parent_envload_2081", [32 x i8]* %parent, align 1
  %"$retval_219" = alloca [32 x i8], align 1
  %"$gasrem_2082" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2083" = icmp ugt i64 1, %"$gasrem_2082"
  br i1 %"$gascmp_2083", label %"$out_of_gas_2084", label %"$have_gas_2085"

"$out_of_gas_2084":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2085"

"$have_gas_2085":                                 ; preds = %"$out_of_gas_2084", %entry
  %"$consume_2086" = sub i64 %"$gasrem_2082", 1
  store i64 %"$consume_2086", i64* @_gasrem, align 8
  %labelHash = alloca [32 x i8], align 1
  %"$_literal_cost_label_2087" = alloca %String, align 8
  store %String %2, %String* %"$_literal_cost_label_2087", align 8
  %"$$_literal_cost_label_2087_2088" = bitcast %String* %"$_literal_cost_label_2087" to i8*
  %"$_literal_cost_call_2089" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_295", i8* %"$$_literal_cost_label_2087_2088")
  %"$gasdivceil_2090" = urem i64 %"$_literal_cost_call_2089", 960
  %"$gasdivceil_2091" = udiv i64 %"$_literal_cost_call_2089", 960
  %"$gasdivceil_2092" = icmp eq i64 %"$gasdivceil_2090", 0
  %"$gasdivceil_2093" = add i64 %"$gasdivceil_2091", 1
  %"$gasdivceil_2094" = select i1 %"$gasdivceil_2092", i64 %"$gasdivceil_2091", i64 %"$gasdivceil_2093"
  %"$gasrem_2095" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2096" = icmp ugt i64 %"$gasdivceil_2094", %"$gasrem_2095"
  br i1 %"$gascmp_2096", label %"$out_of_gas_2097", label %"$have_gas_2098"

"$out_of_gas_2097":                               ; preds = %"$have_gas_2085"
  call void @_out_of_gas()
  br label %"$have_gas_2098"

"$have_gas_2098":                                 ; preds = %"$out_of_gas_2097", %"$have_gas_2085"
  %"$consume_2099" = sub i64 %"$gasrem_2095", %"$gasdivceil_2094"
  store i64 %"$consume_2099", i64* @_gasrem, align 8
  %"$execptr_load_2100" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_label_2101" = alloca %String, align 8
  store %String %2, %String* %"$sha256hash_label_2101", align 8
  %"$$sha256hash_label_2101_2102" = bitcast %String* %"$sha256hash_label_2101" to i8*
  %"$sha256hash_call_2103" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_2100", %_TyDescrTy_Typ* @"$TyDescr_String_295", i8* %"$$sha256hash_label_2101_2102")
  %"$sha256hash_2105" = load [32 x i8], [32 x i8]* %"$sha256hash_call_2103", align 1
  store [32 x i8] %"$sha256hash_2105", [32 x i8]* %labelHash, align 1
  %"$gasrem_2106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2107" = icmp ugt i64 1, %"$gasrem_2106"
  br i1 %"$gascmp_2107", label %"$out_of_gas_2108", label %"$have_gas_2109"

"$out_of_gas_2108":                               ; preds = %"$have_gas_2098"
  call void @_out_of_gas()
  br label %"$have_gas_2109"

"$have_gas_2109":                                 ; preds = %"$out_of_gas_2108", %"$have_gas_2098"
  %"$consume_2110" = sub i64 %"$gasrem_2106", 1
  store i64 %"$consume_2110", i64* @_gasrem, align 8
  %nodeInput = alloca [64 x i8], align 1
  %"$gasrem_2111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2112" = icmp ugt i64 64, %"$gasrem_2111"
  br i1 %"$gascmp_2112", label %"$out_of_gas_2113", label %"$have_gas_2114"

"$out_of_gas_2113":                               ; preds = %"$have_gas_2109"
  call void @_out_of_gas()
  br label %"$have_gas_2114"

"$have_gas_2114":                                 ; preds = %"$out_of_gas_2113", %"$have_gas_2109"
  %"$consume_2115" = sub i64 %"$gasrem_2111", 64
  store i64 %"$consume_2115", i64* @_gasrem, align 8
  %"$execptr_load_2116" = load i8*, i8** @_execptr, align 8
  %"$concat_parent_2117" = alloca [32 x i8], align 1
  %"$parent_2118" = load [32 x i8], [32 x i8]* %parent, align 1
  store [32 x i8] %"$parent_2118", [32 x i8]* %"$concat_parent_2117", align 1
  %"$$concat_parent_2117_2119" = bitcast [32 x i8]* %"$concat_parent_2117" to i8*
  %"$concat_labelHash_2120" = alloca [32 x i8], align 1
  %"$labelHash_2121" = load [32 x i8], [32 x i8]* %labelHash, align 1
  store [32 x i8] %"$labelHash_2121", [32 x i8]* %"$concat_labelHash_2120", align 1
  %"$$concat_labelHash_2120_2122" = bitcast [32 x i8]* %"$concat_labelHash_2120" to i8*
  %"$concat_call_2123" = call i8* @_concat_ByStrX(i8* %"$execptr_load_2116", i32 32, i8* %"$$concat_parent_2117_2119", i32 32, i8* %"$$concat_labelHash_2120_2122")
  %"$concat_2124" = bitcast i8* %"$concat_call_2123" to [64 x i8]*
  %"$concat_2125" = load [64 x i8], [64 x i8]* %"$concat_2124", align 1
  store [64 x i8] %"$concat_2125", [64 x i8]* %nodeInput, align 1
  %"$_literal_cost_nodeInput_2126" = alloca [64 x i8], align 1
  %"$nodeInput_2127" = load [64 x i8], [64 x i8]* %nodeInput, align 1
  store [64 x i8] %"$nodeInput_2127", [64 x i8]* %"$_literal_cost_nodeInput_2126", align 1
  %"$$_literal_cost_nodeInput_2126_2128" = bitcast [64 x i8]* %"$_literal_cost_nodeInput_2126" to i8*
  %"$_literal_cost_call_2129" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr64_307", i8* %"$$_literal_cost_nodeInput_2126_2128")
  %"$gasdivceil_2130" = urem i64 %"$_literal_cost_call_2129", 960
  %"$gasdivceil_2131" = udiv i64 %"$_literal_cost_call_2129", 960
  %"$gasdivceil_2132" = icmp eq i64 %"$gasdivceil_2130", 0
  %"$gasdivceil_2133" = add i64 %"$gasdivceil_2131", 1
  %"$gasdivceil_2134" = select i1 %"$gasdivceil_2132", i64 %"$gasdivceil_2131", i64 %"$gasdivceil_2133"
  %"$gasrem_2135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2136" = icmp ugt i64 %"$gasdivceil_2134", %"$gasrem_2135"
  br i1 %"$gascmp_2136", label %"$out_of_gas_2137", label %"$have_gas_2138"

"$out_of_gas_2137":                               ; preds = %"$have_gas_2114"
  call void @_out_of_gas()
  br label %"$have_gas_2138"

"$have_gas_2138":                                 ; preds = %"$out_of_gas_2137", %"$have_gas_2114"
  %"$consume_2139" = sub i64 %"$gasrem_2135", %"$gasdivceil_2134"
  store i64 %"$consume_2139", i64* @_gasrem, align 8
  %"$execptr_load_2140" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_nodeInput_2141" = alloca [64 x i8], align 1
  %"$nodeInput_2142" = load [64 x i8], [64 x i8]* %nodeInput, align 1
  store [64 x i8] %"$nodeInput_2142", [64 x i8]* %"$sha256hash_nodeInput_2141", align 1
  %"$$sha256hash_nodeInput_2141_2143" = bitcast [64 x i8]* %"$sha256hash_nodeInput_2141" to i8*
  %"$sha256hash_call_2144" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_2140", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_307", i8* %"$$sha256hash_nodeInput_2141_2143")
  %"$sha256hash_2146" = load [32 x i8], [32 x i8]* %"$sha256hash_call_2144", align 1
  store [32 x i8] %"$sha256hash_2146", [32 x i8]* %"$retval_219", align 1
  %"$$retval_219_2147" = load [32 x i8], [32 x i8]* %"$retval_219", align 1
  store [32 x i8] %"$$retval_219_2147", [32 x i8]* %1, align 1
  ret void
}

define internal { void (i8*, [32 x i8]*, %String)*, i8* } @"$fundef_216"(%"$$fundef_216_env_410"* %0, [32 x i8]* %1) {
entry:
  %parent = load [32 x i8], [32 x i8]* %1, align 1
  %"$retval_217" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$gasrem_2069" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2070" = icmp ugt i64 1, %"$gasrem_2069"
  br i1 %"$gascmp_2070", label %"$out_of_gas_2071", label %"$have_gas_2072"

"$out_of_gas_2071":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2072"

"$have_gas_2072":                                 ; preds = %"$out_of_gas_2071", %entry
  %"$consume_2073" = sub i64 %"$gasrem_2069", 1
  store i64 %"$consume_2073", i64* @_gasrem, align 8
  %"$$fundef_218_envp_2074_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_218_envp_2074_salloc" = call i8* @_salloc(i8* %"$$fundef_218_envp_2074_load", i64 32)
  %"$$fundef_218_envp_2074" = bitcast i8* %"$$fundef_218_envp_2074_salloc" to %"$$fundef_218_env_409"*
  %"$$fundef_218_env_voidp_2076" = bitcast %"$$fundef_218_env_409"* %"$$fundef_218_envp_2074" to i8*
  %"$$fundef_218_cloval_2077" = insertvalue { void (i8*, [32 x i8]*, %String)*, i8* } { void (i8*, [32 x i8]*, %String)* bitcast (void (%"$$fundef_218_env_409"*, [32 x i8]*, %String)* @"$fundef_218" to void (i8*, [32 x i8]*, %String)*), i8* undef }, i8* %"$$fundef_218_env_voidp_2076", 1
  %"$$fundef_218_env_parent_2078" = getelementptr inbounds %"$$fundef_218_env_409", %"$$fundef_218_env_409"* %"$$fundef_218_envp_2074", i32 0, i32 0
  store [32 x i8] %parent, [32 x i8]* %"$$fundef_218_env_parent_2078", align 1
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$$fundef_218_cloval_2077", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$retval_217", align 8
  %"$$retval_217_2079" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$retval_217", align 8
  ret { void (i8*, [32 x i8]*, %String)*, i8* } %"$$retval_217_2079"
}

define internal void @"$fundef_220"(%"$$fundef_220_env_411"* %0, [20 x i8]* %1, %TName_Option_ud-registry.Record* %2) {
entry:
  %"$$fundef_220_env_ud-registry.zeroByStr20_2023" = getelementptr inbounds %"$$fundef_220_env_411", %"$$fundef_220_env_411"* %0, i32 0, i32 0
  %"$ud-registry.zeroByStr20_envload_2024" = load [20 x i8], [20 x i8]* %"$$fundef_220_env_ud-registry.zeroByStr20_2023", align 1
  %ud-registry.zeroByStr20 = alloca [20 x i8], align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_envload_2024", [20 x i8]* %ud-registry.zeroByStr20, align 1
  %"$retval_221" = alloca [20 x i8], align 1
  %"$gasrem_2025" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2026" = icmp ugt i64 2, %"$gasrem_2025"
  br i1 %"$gascmp_2026", label %"$out_of_gas_2027", label %"$have_gas_2028"

"$out_of_gas_2027":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2028"

"$have_gas_2028":                                 ; preds = %"$out_of_gas_2027", %entry
  %"$consume_2029" = sub i64 %"$gasrem_2025", 2
  store i64 %"$consume_2029", i64* @_gasrem, align 8
  %"$maybeRecord_tag_2031" = getelementptr inbounds %TName_Option_ud-registry.Record, %TName_Option_ud-registry.Record* %2, i32 0, i32 0
  %"$maybeRecord_tag_2032" = load i8, i8* %"$maybeRecord_tag_2031", align 1
  switch i8 %"$maybeRecord_tag_2032", label %"$empty_default_2033" [
    i8 1, label %"$None_2034"
    i8 0, label %"$Some_2042"
  ]

"$None_2034":                                     ; preds = %"$have_gas_2028"
  %"$maybeRecord_2035" = bitcast %TName_Option_ud-registry.Record* %2 to %CName_None_ud-registry.Record*
  %"$gasrem_2036" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2037" = icmp ugt i64 1, %"$gasrem_2036"
  br i1 %"$gascmp_2037", label %"$out_of_gas_2038", label %"$have_gas_2039"

"$out_of_gas_2038":                               ; preds = %"$None_2034"
  call void @_out_of_gas()
  br label %"$have_gas_2039"

"$have_gas_2039":                                 ; preds = %"$out_of_gas_2038", %"$None_2034"
  %"$consume_2040" = sub i64 %"$gasrem_2036", 1
  store i64 %"$consume_2040", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_2041" = load [20 x i8], [20 x i8]* %ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_2041", [20 x i8]* %"$retval_221", align 1
  br label %"$matchsucc_2030"

"$Some_2042":                                     ; preds = %"$have_gas_2028"
  %"$maybeRecord_2043" = bitcast %TName_Option_ud-registry.Record* %2 to %CName_Some_ud-registry.Record*
  %"$record_gep_2044" = getelementptr inbounds %CName_Some_ud-registry.Record, %CName_Some_ud-registry.Record* %"$maybeRecord_2043", i32 0, i32 1
  %"$record_load_2045" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %"$record_gep_2044", align 8
  %record = alloca %TName_ud-registry.Record*, align 8
  store %TName_ud-registry.Record* %"$record_load_2045", %TName_ud-registry.Record** %record, align 8
  %"$gasrem_2046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2047" = icmp ugt i64 1, %"$gasrem_2046"
  br i1 %"$gascmp_2047", label %"$out_of_gas_2048", label %"$have_gas_2049"

"$out_of_gas_2048":                               ; preds = %"$Some_2042"
  call void @_out_of_gas()
  br label %"$have_gas_2049"

"$have_gas_2049":                                 ; preds = %"$out_of_gas_2048", %"$Some_2042"
  %"$consume_2050" = sub i64 %"$gasrem_2046", 1
  store i64 %"$consume_2050", i64* @_gasrem, align 8
  %"$record_2052" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %record, align 8
  %"$record_tag_2053" = getelementptr inbounds %TName_ud-registry.Record, %TName_ud-registry.Record* %"$record_2052", i32 0, i32 0
  %"$record_tag_2054" = load i8, i8* %"$record_tag_2053", align 1
  switch i8 %"$record_tag_2054", label %"$empty_default_2055" [
    i8 0, label %"$ud-registry.Record_2056"
  ]

"$ud-registry.Record_2056":                       ; preds = %"$have_gas_2049"
  %"$record_2057" = bitcast %TName_ud-registry.Record* %"$record_2052" to %CName_ud-registry.Record*
  %"$owner_gep_2058" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_2057", i32 0, i32 1
  %"$owner_load_2059" = load [20 x i8], [20 x i8]* %"$owner_gep_2058", align 1
  %owner = alloca [20 x i8], align 1
  store [20 x i8] %"$owner_load_2059", [20 x i8]* %owner, align 1
  %"$resolver_gep_2060" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_2057", i32 0, i32 2
  %"$resolver_load_2061" = load [20 x i8], [20 x i8]* %"$resolver_gep_2060", align 1
  %resolver = alloca [20 x i8], align 1
  store [20 x i8] %"$resolver_load_2061", [20 x i8]* %resolver, align 1
  %"$gasrem_2062" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2063" = icmp ugt i64 1, %"$gasrem_2062"
  br i1 %"$gascmp_2063", label %"$out_of_gas_2064", label %"$have_gas_2065"

"$out_of_gas_2064":                               ; preds = %"$ud-registry.Record_2056"
  call void @_out_of_gas()
  br label %"$have_gas_2065"

"$have_gas_2065":                                 ; preds = %"$out_of_gas_2064", %"$ud-registry.Record_2056"
  %"$consume_2066" = sub i64 %"$gasrem_2062", 1
  store i64 %"$consume_2066", i64* @_gasrem, align 8
  %"$owner_2067" = load [20 x i8], [20 x i8]* %owner, align 1
  store [20 x i8] %"$owner_2067", [20 x i8]* %"$retval_221", align 1
  br label %"$matchsucc_2051"

"$empty_default_2055":                            ; preds = %"$have_gas_2049"
  br label %"$matchsucc_2051"

"$matchsucc_2051":                                ; preds = %"$have_gas_2065", %"$empty_default_2055"
  br label %"$matchsucc_2030"

"$empty_default_2033":                            ; preds = %"$have_gas_2028"
  br label %"$matchsucc_2030"

"$matchsucc_2030":                                ; preds = %"$matchsucc_2051", %"$have_gas_2039", %"$empty_default_2033"
  %"$$retval_221_2068" = load [20 x i8], [20 x i8]* %"$retval_221", align 1
  store [20 x i8] %"$$retval_221_2068", [20 x i8]* %1, align 1
  ret void
}

define internal i8* @"$fundef_222"(%"$$fundef_222_env_412"* %0, %String %1) {
entry:
  %"$retval_223" = alloca i8*, align 8
  %"$gasrem_2000" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2001" = icmp ugt i64 1, %"$gasrem_2000"
  br i1 %"$gascmp_2001", label %"$out_of_gas_2002", label %"$have_gas_2003"

"$out_of_gas_2002":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2003"

"$have_gas_2003":                                 ; preds = %"$out_of_gas_2002", %entry
  %"$consume_2004" = sub i64 %"$gasrem_2000", 1
  store i64 %"$consume_2004", i64* @_gasrem, align 8
  %"$msgobj_2005_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_2005_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_2005_salloc_load", i64 81)
  %"$msgobj_2005_salloc" = bitcast i8* %"$msgobj_2005_salloc_salloc" to [81 x i8]*
  %"$msgobj_2005" = bitcast [81 x i8]* %"$msgobj_2005_salloc" to i8*
  store i8 2, i8* %"$msgobj_2005", align 1
  %"$msgobj_fname_2007" = getelementptr i8, i8* %"$msgobj_2005", i32 1
  %"$msgobj_fname_2008" = bitcast i8* %"$msgobj_fname_2007" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_2006", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_2008", align 8
  %"$msgobj_td_2009" = getelementptr i8, i8* %"$msgobj_2005", i32 17
  %"$msgobj_td_2010" = bitcast i8* %"$msgobj_td_2009" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_2010", align 8
  %"$msgobj_v_2012" = getelementptr i8, i8* %"$msgobj_2005", i32 25
  %"$msgobj_v_2013" = bitcast i8* %"$msgobj_v_2012" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2011", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_2013", align 8
  %"$msgobj_fname_2015" = getelementptr i8, i8* %"$msgobj_2005", i32 41
  %"$msgobj_fname_2016" = bitcast i8* %"$msgobj_fname_2015" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2014", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_2016", align 8
  %"$msgobj_td_2017" = getelementptr i8, i8* %"$msgobj_2005", i32 57
  %"$msgobj_td_2018" = bitcast i8* %"$msgobj_td_2017" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_2018", align 8
  %"$msgobj_v_2019" = getelementptr i8, i8* %"$msgobj_2005", i32 65
  %"$msgobj_v_2020" = bitcast i8* %"$msgobj_v_2019" to %String*
  store %String %1, %String* %"$msgobj_v_2020", align 8
  store i8* %"$msgobj_2005", i8** %"$retval_223", align 8
  %"$$retval_223_2022" = load i8*, i8** %"$retval_223", align 8
  ret i8* %"$$retval_223_2022"
}

define internal i8* @"$fundef_228"(%"$$fundef_228_env_413"* %0, [20 x i8]* %1) {
entry:
  %resolver = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_228_env_node_1957" = getelementptr inbounds %"$$fundef_228_env_413", %"$$fundef_228_env_413"* %0, i32 0, i32 0
  %"$node_envload_1958" = load [32 x i8], [32 x i8]* %"$$fundef_228_env_node_1957", align 1
  %node = alloca [32 x i8], align 1
  store [32 x i8] %"$node_envload_1958", [32 x i8]* %node, align 1
  %"$$fundef_228_env_owner_1959" = getelementptr inbounds %"$$fundef_228_env_413", %"$$fundef_228_env_413"* %0, i32 0, i32 1
  %"$owner_envload_1960" = load [20 x i8], [20 x i8]* %"$$fundef_228_env_owner_1959", align 1
  %owner = alloca [20 x i8], align 1
  store [20 x i8] %"$owner_envload_1960", [20 x i8]* %owner, align 1
  %"$retval_229" = alloca i8*, align 8
  %"$gasrem_1961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1962" = icmp ugt i64 1, %"$gasrem_1961"
  br i1 %"$gascmp_1962", label %"$out_of_gas_1963", label %"$have_gas_1964"

"$out_of_gas_1963":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1964"

"$have_gas_1964":                                 ; preds = %"$out_of_gas_1963", %entry
  %"$consume_1965" = sub i64 %"$gasrem_1961", 1
  store i64 %"$consume_1965", i64* @_gasrem, align 8
  %"$msgobj_1966_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1966_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1966_salloc_load", i64 185)
  %"$msgobj_1966_salloc" = bitcast i8* %"$msgobj_1966_salloc_salloc" to [185 x i8]*
  %"$msgobj_1966" = bitcast [185 x i8]* %"$msgobj_1966_salloc" to i8*
  store i8 4, i8* %"$msgobj_1966", align 1
  %"$msgobj_fname_1968" = getelementptr i8, i8* %"$msgobj_1966", i32 1
  %"$msgobj_fname_1969" = bitcast i8* %"$msgobj_fname_1968" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1967", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1969", align 8
  %"$msgobj_td_1970" = getelementptr i8, i8* %"$msgobj_1966", i32 17
  %"$msgobj_td_1971" = bitcast i8* %"$msgobj_td_1970" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_1971", align 8
  %"$msgobj_v_1973" = getelementptr i8, i8* %"$msgobj_1966", i32 25
  %"$msgobj_v_1974" = bitcast i8* %"$msgobj_v_1973" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1972", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_1974", align 8
  %"$msgobj_fname_1976" = getelementptr i8, i8* %"$msgobj_1966", i32 41
  %"$msgobj_fname_1977" = bitcast i8* %"$msgobj_fname_1976" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1975", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1977", align 8
  %"$msgobj_td_1978" = getelementptr i8, i8* %"$msgobj_1966", i32 57
  %"$msgobj_td_1979" = bitcast i8* %"$msgobj_td_1978" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_1979", align 8
  %"$node_1980" = load [32 x i8], [32 x i8]* %node, align 1
  %"$msgobj_v_1981" = getelementptr i8, i8* %"$msgobj_1966", i32 65
  %"$msgobj_v_1982" = bitcast i8* %"$msgobj_v_1981" to [32 x i8]*
  store [32 x i8] %"$node_1980", [32 x i8]* %"$msgobj_v_1982", align 1
  %"$msgobj_fname_1984" = getelementptr i8, i8* %"$msgobj_1966", i32 97
  %"$msgobj_fname_1985" = bitcast i8* %"$msgobj_fname_1984" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1983", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1985", align 8
  %"$msgobj_td_1986" = getelementptr i8, i8* %"$msgobj_1966", i32 113
  %"$msgobj_td_1987" = bitcast i8* %"$msgobj_td_1986" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_1987", align 8
  %"$owner_1988" = load [20 x i8], [20 x i8]* %owner, align 1
  %"$msgobj_v_1989" = getelementptr i8, i8* %"$msgobj_1966", i32 121
  %"$msgobj_v_1990" = bitcast i8* %"$msgobj_v_1989" to [20 x i8]*
  store [20 x i8] %"$owner_1988", [20 x i8]* %"$msgobj_v_1990", align 1
  %"$msgobj_fname_1992" = getelementptr i8, i8* %"$msgobj_1966", i32 141
  %"$msgobj_fname_1993" = bitcast i8* %"$msgobj_fname_1992" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1991", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_1993", align 8
  %"$msgobj_td_1994" = getelementptr i8, i8* %"$msgobj_1966", i32 157
  %"$msgobj_td_1995" = bitcast i8* %"$msgobj_td_1994" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_1995", align 8
  %"$msgobj_v_1996" = getelementptr i8, i8* %"$msgobj_1966", i32 165
  %"$msgobj_v_1997" = bitcast i8* %"$msgobj_v_1996" to [20 x i8]*
  store [20 x i8] %resolver, [20 x i8]* %"$msgobj_v_1997", align 1
  store i8* %"$msgobj_1966", i8** %"$retval_229", align 8
  %"$$retval_229_1999" = load i8*, i8** %"$retval_229", align 8
  ret i8* %"$$retval_229_1999"
}

define internal { i8* (i8*, [20 x i8]*)*, i8* } @"$fundef_226"(%"$$fundef_226_env_414"* %0, [20 x i8]* %1) {
entry:
  %owner = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_226_env_node_1942" = getelementptr inbounds %"$$fundef_226_env_414", %"$$fundef_226_env_414"* %0, i32 0, i32 0
  %"$node_envload_1943" = load [32 x i8], [32 x i8]* %"$$fundef_226_env_node_1942", align 1
  %node = alloca [32 x i8], align 1
  store [32 x i8] %"$node_envload_1943", [32 x i8]* %node, align 1
  %"$retval_227" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1945" = icmp ugt i64 1, %"$gasrem_1944"
  br i1 %"$gascmp_1945", label %"$out_of_gas_1946", label %"$have_gas_1947"

"$out_of_gas_1946":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1947"

"$have_gas_1947":                                 ; preds = %"$out_of_gas_1946", %entry
  %"$consume_1948" = sub i64 %"$gasrem_1944", 1
  store i64 %"$consume_1948", i64* @_gasrem, align 8
  %"$$fundef_228_envp_1949_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_228_envp_1949_salloc" = call i8* @_salloc(i8* %"$$fundef_228_envp_1949_load", i64 52)
  %"$$fundef_228_envp_1949" = bitcast i8* %"$$fundef_228_envp_1949_salloc" to %"$$fundef_228_env_413"*
  %"$$fundef_228_env_voidp_1951" = bitcast %"$$fundef_228_env_413"* %"$$fundef_228_envp_1949" to i8*
  %"$$fundef_228_cloval_1952" = insertvalue { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_228_env_413"*, [20 x i8]*)* @"$fundef_228" to i8* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_228_env_voidp_1951", 1
  %"$$fundef_228_env_node_1953" = getelementptr inbounds %"$$fundef_228_env_413", %"$$fundef_228_env_413"* %"$$fundef_228_envp_1949", i32 0, i32 0
  %"$node_1954" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_1954", [32 x i8]* %"$$fundef_228_env_node_1953", align 1
  %"$$fundef_228_env_owner_1955" = getelementptr inbounds %"$$fundef_228_env_413", %"$$fundef_228_env_413"* %"$$fundef_228_envp_1949", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$$fundef_228_env_owner_1955", align 1
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$fundef_228_cloval_1952", { i8* (i8*, [20 x i8]*)*, i8* }* %"$retval_227", align 8
  %"$$retval_227_1956" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$retval_227", align 8
  ret { i8* (i8*, [20 x i8]*)*, i8* } %"$$retval_227_1956"
}

define internal { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_224"(%"$$fundef_224_env_415"* %0, [32 x i8]* %1) {
entry:
  %node = load [32 x i8], [32 x i8]* %1, align 1
  %"$retval_225" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1931" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1932" = icmp ugt i64 1, %"$gasrem_1931"
  br i1 %"$gascmp_1932", label %"$out_of_gas_1933", label %"$have_gas_1934"

"$out_of_gas_1933":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1934"

"$have_gas_1934":                                 ; preds = %"$out_of_gas_1933", %entry
  %"$consume_1935" = sub i64 %"$gasrem_1931", 1
  store i64 %"$consume_1935", i64* @_gasrem, align 8
  %"$$fundef_226_envp_1936_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_226_envp_1936_salloc" = call i8* @_salloc(i8* %"$$fundef_226_envp_1936_load", i64 32)
  %"$$fundef_226_envp_1936" = bitcast i8* %"$$fundef_226_envp_1936_salloc" to %"$$fundef_226_env_414"*
  %"$$fundef_226_env_voidp_1938" = bitcast %"$$fundef_226_env_414"* %"$$fundef_226_envp_1936" to i8*
  %"$$fundef_226_cloval_1939" = insertvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_226_env_414"*, [20 x i8]*)* @"$fundef_226" to { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_226_env_voidp_1938", 1
  %"$$fundef_226_env_node_1940" = getelementptr inbounds %"$$fundef_226_env_414", %"$$fundef_226_env_414"* %"$$fundef_226_envp_1936", i32 0, i32 0
  store [32 x i8] %node, [32 x i8]* %"$$fundef_226_env_node_1940", align 1
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_226_cloval_1939", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_225", align 8
  %"$$retval_225_1941" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_225", align 8
  ret { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_225_1941"
}

define internal i8* @"$fundef_232"(%"$$fundef_232_env_416"* %0, %String %1) {
entry:
  %"$$fundef_232_env_parent_1898" = getelementptr inbounds %"$$fundef_232_env_416", %"$$fundef_232_env_416"* %0, i32 0, i32 0
  %"$parent_envload_1899" = load [32 x i8], [32 x i8]* %"$$fundef_232_env_parent_1898", align 1
  %parent = alloca [32 x i8], align 1
  store [32 x i8] %"$parent_envload_1899", [32 x i8]* %parent, align 1
  %"$retval_233" = alloca i8*, align 8
  %"$gasrem_1900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1901" = icmp ugt i64 1, %"$gasrem_1900"
  br i1 %"$gascmp_1901", label %"$out_of_gas_1902", label %"$have_gas_1903"

"$out_of_gas_1902":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1903"

"$have_gas_1903":                                 ; preds = %"$out_of_gas_1902", %entry
  %"$consume_1904" = sub i64 %"$gasrem_1900", 1
  store i64 %"$consume_1904", i64* @_gasrem, align 8
  %"$msgobj_1905_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1905_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1905_salloc_load", i64 137)
  %"$msgobj_1905_salloc" = bitcast i8* %"$msgobj_1905_salloc_salloc" to [137 x i8]*
  %"$msgobj_1905" = bitcast [137 x i8]* %"$msgobj_1905_salloc" to i8*
  store i8 3, i8* %"$msgobj_1905", align 1
  %"$msgobj_fname_1907" = getelementptr i8, i8* %"$msgobj_1905", i32 1
  %"$msgobj_fname_1908" = bitcast i8* %"$msgobj_fname_1907" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1906", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1908", align 8
  %"$msgobj_td_1909" = getelementptr i8, i8* %"$msgobj_1905", i32 17
  %"$msgobj_td_1910" = bitcast i8* %"$msgobj_td_1909" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_1910", align 8
  %"$msgobj_v_1912" = getelementptr i8, i8* %"$msgobj_1905", i32 25
  %"$msgobj_v_1913" = bitcast i8* %"$msgobj_v_1912" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1911", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1913", align 8
  %"$msgobj_fname_1915" = getelementptr i8, i8* %"$msgobj_1905", i32 41
  %"$msgobj_fname_1916" = bitcast i8* %"$msgobj_fname_1915" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_1914", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_1916", align 8
  %"$msgobj_td_1917" = getelementptr i8, i8* %"$msgobj_1905", i32 57
  %"$msgobj_td_1918" = bitcast i8* %"$msgobj_td_1917" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_1918", align 8
  %"$parent_1919" = load [32 x i8], [32 x i8]* %parent, align 1
  %"$msgobj_v_1920" = getelementptr i8, i8* %"$msgobj_1905", i32 65
  %"$msgobj_v_1921" = bitcast i8* %"$msgobj_v_1920" to [32 x i8]*
  store [32 x i8] %"$parent_1919", [32 x i8]* %"$msgobj_v_1921", align 1
  %"$msgobj_fname_1923" = getelementptr i8, i8* %"$msgobj_1905", i32 97
  %"$msgobj_fname_1924" = bitcast i8* %"$msgobj_fname_1923" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1922", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1924", align 8
  %"$msgobj_td_1925" = getelementptr i8, i8* %"$msgobj_1905", i32 113
  %"$msgobj_td_1926" = bitcast i8* %"$msgobj_td_1925" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_1926", align 8
  %"$msgobj_v_1927" = getelementptr i8, i8* %"$msgobj_1905", i32 121
  %"$msgobj_v_1928" = bitcast i8* %"$msgobj_v_1927" to %String*
  store %String %1, %String* %"$msgobj_v_1928", align 8
  store i8* %"$msgobj_1905", i8** %"$retval_233", align 8
  %"$$retval_233_1930" = load i8*, i8** %"$retval_233", align 8
  ret i8* %"$$retval_233_1930"
}

define internal { i8* (i8*, %String)*, i8* } @"$fundef_230"(%"$$fundef_230_env_417"* %0, [32 x i8]* %1) {
entry:
  %parent = load [32 x i8], [32 x i8]* %1, align 1
  %"$retval_231" = alloca { i8* (i8*, %String)*, i8* }, align 8
  %"$gasrem_1887" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1888" = icmp ugt i64 1, %"$gasrem_1887"
  br i1 %"$gascmp_1888", label %"$out_of_gas_1889", label %"$have_gas_1890"

"$out_of_gas_1889":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1890"

"$have_gas_1890":                                 ; preds = %"$out_of_gas_1889", %entry
  %"$consume_1891" = sub i64 %"$gasrem_1887", 1
  store i64 %"$consume_1891", i64* @_gasrem, align 8
  %"$$fundef_232_envp_1892_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_232_envp_1892_salloc" = call i8* @_salloc(i8* %"$$fundef_232_envp_1892_load", i64 32)
  %"$$fundef_232_envp_1892" = bitcast i8* %"$$fundef_232_envp_1892_salloc" to %"$$fundef_232_env_416"*
  %"$$fundef_232_env_voidp_1894" = bitcast %"$$fundef_232_env_416"* %"$$fundef_232_envp_1892" to i8*
  %"$$fundef_232_cloval_1895" = insertvalue { i8* (i8*, %String)*, i8* } { i8* (i8*, %String)* bitcast (i8* (%"$$fundef_232_env_416"*, %String)* @"$fundef_232" to i8* (i8*, %String)*), i8* undef }, i8* %"$$fundef_232_env_voidp_1894", 1
  %"$$fundef_232_env_parent_1896" = getelementptr inbounds %"$$fundef_232_env_416", %"$$fundef_232_env_416"* %"$$fundef_232_envp_1892", i32 0, i32 0
  store [32 x i8] %parent, [32 x i8]* %"$$fundef_232_env_parent_1896", align 1
  store { i8* (i8*, %String)*, i8* } %"$$fundef_232_cloval_1895", { i8* (i8*, %String)*, i8* }* %"$retval_231", align 8
  %"$$retval_231_1897" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$retval_231", align 8
  ret { i8* (i8*, %String)*, i8* } %"$$retval_231_1897"
}

define internal i8* @"$fundef_234"(%"$$fundef_234_env_418"* %0, [20 x i8]* %1) {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_235" = alloca i8*, align 8
  %"$gasrem_1864" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1865" = icmp ugt i64 1, %"$gasrem_1864"
  br i1 %"$gascmp_1865", label %"$out_of_gas_1866", label %"$have_gas_1867"

"$out_of_gas_1866":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1867"

"$have_gas_1867":                                 ; preds = %"$out_of_gas_1866", %entry
  %"$consume_1868" = sub i64 %"$gasrem_1864", 1
  store i64 %"$consume_1868", i64* @_gasrem, align 8
  %"$msgobj_1869_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1869_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1869_salloc_load", i64 85)
  %"$msgobj_1869_salloc" = bitcast i8* %"$msgobj_1869_salloc_salloc" to [85 x i8]*
  %"$msgobj_1869" = bitcast [85 x i8]* %"$msgobj_1869_salloc" to i8*
  store i8 2, i8* %"$msgobj_1869", align 1
  %"$msgobj_fname_1871" = getelementptr i8, i8* %"$msgobj_1869", i32 1
  %"$msgobj_fname_1872" = bitcast i8* %"$msgobj_fname_1871" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1870", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1872", align 8
  %"$msgobj_td_1873" = getelementptr i8, i8* %"$msgobj_1869", i32 17
  %"$msgobj_td_1874" = bitcast i8* %"$msgobj_td_1873" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_1874", align 8
  %"$msgobj_v_1876" = getelementptr i8, i8* %"$msgobj_1869", i32 25
  %"$msgobj_v_1877" = bitcast i8* %"$msgobj_v_1876" to %String*
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_1875", i32 0, i32 0), i32 12 }, %String* %"$msgobj_v_1877", align 8
  %"$msgobj_fname_1879" = getelementptr i8, i8* %"$msgobj_1869", i32 41
  %"$msgobj_fname_1880" = bitcast i8* %"$msgobj_fname_1879" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1878", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1880", align 8
  %"$msgobj_td_1881" = getelementptr i8, i8* %"$msgobj_1869", i32 57
  %"$msgobj_td_1882" = bitcast i8* %"$msgobj_td_1881" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_1882", align 8
  %"$msgobj_v_1883" = getelementptr i8, i8* %"$msgobj_1869", i32 65
  %"$msgobj_v_1884" = bitcast i8* %"$msgobj_v_1883" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %"$msgobj_v_1884", align 1
  store i8* %"$msgobj_1869", i8** %"$retval_235", align 8
  %"$$retval_235_1886" = load i8*, i8** %"$retval_235", align 8
  ret i8* %"$$retval_235_1886"
}

define internal i8* @"$fundef_236"(%"$$fundef_236_env_419"* %0, [20 x i8]* %1) {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_237" = alloca i8*, align 8
  %"$gasrem_1841" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1842" = icmp ugt i64 1, %"$gasrem_1841"
  br i1 %"$gascmp_1842", label %"$out_of_gas_1843", label %"$have_gas_1844"

"$out_of_gas_1843":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1844"

"$have_gas_1844":                                 ; preds = %"$out_of_gas_1843", %entry
  %"$consume_1845" = sub i64 %"$gasrem_1841", 1
  store i64 %"$consume_1845", i64* @_gasrem, align 8
  %"$msgobj_1846_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1846_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1846_salloc_load", i64 85)
  %"$msgobj_1846_salloc" = bitcast i8* %"$msgobj_1846_salloc_salloc" to [85 x i8]*
  %"$msgobj_1846" = bitcast [85 x i8]* %"$msgobj_1846_salloc" to i8*
  store i8 2, i8* %"$msgobj_1846", align 1
  %"$msgobj_fname_1848" = getelementptr i8, i8* %"$msgobj_1846", i32 1
  %"$msgobj_fname_1849" = bitcast i8* %"$msgobj_fname_1848" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1847", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1849", align 8
  %"$msgobj_td_1850" = getelementptr i8, i8* %"$msgobj_1846", i32 17
  %"$msgobj_td_1851" = bitcast i8* %"$msgobj_td_1850" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_1851", align 8
  %"$msgobj_v_1853" = getelementptr i8, i8* %"$msgobj_1846", i32 25
  %"$msgobj_v_1854" = bitcast i8* %"$msgobj_v_1853" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1852", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_1854", align 8
  %"$msgobj_fname_1856" = getelementptr i8, i8* %"$msgobj_1846", i32 41
  %"$msgobj_fname_1857" = bitcast i8* %"$msgobj_fname_1856" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1855", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1857", align 8
  %"$msgobj_td_1858" = getelementptr i8, i8* %"$msgobj_1846", i32 57
  %"$msgobj_td_1859" = bitcast i8* %"$msgobj_td_1858" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_1859", align 8
  %"$msgobj_v_1860" = getelementptr i8, i8* %"$msgobj_1846", i32 65
  %"$msgobj_v_1861" = bitcast i8* %"$msgobj_v_1860" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %"$msgobj_v_1861", align 1
  store i8* %"$msgobj_1846", i8** %"$retval_237", align 8
  %"$$retval_237_1863" = load i8*, i8** %"$retval_237", align 8
  ret i8* %"$$retval_237_1863"
}

define internal i8* @"$fundef_242"(%"$$fundef_242_env_420"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_242_env_operator_1798" = getelementptr inbounds %"$$fundef_242_env_420", %"$$fundef_242_env_420"* %0, i32 0, i32 0
  %"$operator_envload_1799" = load [20 x i8], [20 x i8]* %"$$fundef_242_env_operator_1798", align 1
  %operator = alloca [20 x i8], align 1
  store [20 x i8] %"$operator_envload_1799", [20 x i8]* %operator, align 1
  %"$$fundef_242_env_user_1800" = getelementptr inbounds %"$$fundef_242_env_420", %"$$fundef_242_env_420"* %0, i32 0, i32 1
  %"$user_envload_1801" = load [20 x i8], [20 x i8]* %"$$fundef_242_env_user_1800", align 1
  %user = alloca [20 x i8], align 1
  store [20 x i8] %"$user_envload_1801", [20 x i8]* %user, align 1
  %"$retval_243" = alloca i8*, align 8
  %"$gasrem_1802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1803" = icmp ugt i64 1, %"$gasrem_1802"
  br i1 %"$gascmp_1803", label %"$out_of_gas_1804", label %"$have_gas_1805"

"$out_of_gas_1804":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1805"

"$have_gas_1805":                                 ; preds = %"$out_of_gas_1804", %entry
  %"$consume_1806" = sub i64 %"$gasrem_1802", 1
  store i64 %"$consume_1806", i64* @_gasrem, align 8
  %"$msgobj_1807_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1807_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1807_salloc_load", i64 161)
  %"$msgobj_1807_salloc" = bitcast i8* %"$msgobj_1807_salloc_salloc" to [161 x i8]*
  %"$msgobj_1807" = bitcast [161 x i8]* %"$msgobj_1807_salloc" to i8*
  store i8 4, i8* %"$msgobj_1807", align 1
  %"$msgobj_fname_1809" = getelementptr i8, i8* %"$msgobj_1807", i32 1
  %"$msgobj_fname_1810" = bitcast i8* %"$msgobj_fname_1809" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1808", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1810", align 8
  %"$msgobj_td_1811" = getelementptr i8, i8* %"$msgobj_1807", i32 17
  %"$msgobj_td_1812" = bitcast i8* %"$msgobj_td_1811" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_1812", align 8
  %"$msgobj_v_1814" = getelementptr i8, i8* %"$msgobj_1807", i32 25
  %"$msgobj_v_1815" = bitcast i8* %"$msgobj_v_1814" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_1813", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_1815", align 8
  %"$msgobj_fname_1817" = getelementptr i8, i8* %"$msgobj_1807", i32 41
  %"$msgobj_fname_1818" = bitcast i8* %"$msgobj_fname_1817" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1816", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1818", align 8
  %"$msgobj_td_1819" = getelementptr i8, i8* %"$msgobj_1807", i32 57
  %"$msgobj_td_1820" = bitcast i8* %"$msgobj_td_1819" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_1820", align 8
  %"$user_1821" = load [20 x i8], [20 x i8]* %user, align 1
  %"$msgobj_v_1822" = getelementptr i8, i8* %"$msgobj_1807", i32 65
  %"$msgobj_v_1823" = bitcast i8* %"$msgobj_v_1822" to [20 x i8]*
  store [20 x i8] %"$user_1821", [20 x i8]* %"$msgobj_v_1823", align 1
  %"$msgobj_fname_1825" = getelementptr i8, i8* %"$msgobj_1807", i32 85
  %"$msgobj_fname_1826" = bitcast i8* %"$msgobj_fname_1825" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1824", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_1826", align 8
  %"$msgobj_td_1827" = getelementptr i8, i8* %"$msgobj_1807", i32 101
  %"$msgobj_td_1828" = bitcast i8* %"$msgobj_td_1827" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_1828", align 8
  %"$operator_1829" = load [20 x i8], [20 x i8]* %operator, align 1
  %"$msgobj_v_1830" = getelementptr i8, i8* %"$msgobj_1807", i32 109
  %"$msgobj_v_1831" = bitcast i8* %"$msgobj_v_1830" to [20 x i8]*
  store [20 x i8] %"$operator_1829", [20 x i8]* %"$msgobj_v_1831", align 1
  %"$msgobj_fname_1833" = getelementptr i8, i8* %"$msgobj_1807", i32 129
  %"$msgobj_fname_1834" = bitcast i8* %"$msgobj_fname_1833" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1832", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1834", align 8
  %"$msgobj_td_1835" = getelementptr i8, i8* %"$msgobj_1807", i32 145
  %"$msgobj_td_1836" = bitcast i8* %"$msgobj_td_1835" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321", %_TyDescrTy_Typ** %"$msgobj_td_1836", align 8
  %"$msgobj_v_1837" = getelementptr i8, i8* %"$msgobj_1807", i32 153
  %"$msgobj_v_1838" = bitcast i8* %"$msgobj_v_1837" to %TName_Bool**
  store %TName_Bool* %1, %TName_Bool** %"$msgobj_v_1838", align 8
  store i8* %"$msgobj_1807", i8** %"$retval_243", align 8
  %"$$retval_243_1840" = load i8*, i8** %"$retval_243", align 8
  ret i8* %"$$retval_243_1840"
}

define internal { i8* (i8*, %TName_Bool*)*, i8* } @"$fundef_240"(%"$$fundef_240_env_421"* %0, [20 x i8]* %1) {
entry:
  %operator = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_240_env_user_1783" = getelementptr inbounds %"$$fundef_240_env_421", %"$$fundef_240_env_421"* %0, i32 0, i32 0
  %"$user_envload_1784" = load [20 x i8], [20 x i8]* %"$$fundef_240_env_user_1783", align 1
  %user = alloca [20 x i8], align 1
  store [20 x i8] %"$user_envload_1784", [20 x i8]* %user, align 1
  %"$retval_241" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_1785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1786" = icmp ugt i64 1, %"$gasrem_1785"
  br i1 %"$gascmp_1786", label %"$out_of_gas_1787", label %"$have_gas_1788"

"$out_of_gas_1787":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1788"

"$have_gas_1788":                                 ; preds = %"$out_of_gas_1787", %entry
  %"$consume_1789" = sub i64 %"$gasrem_1785", 1
  store i64 %"$consume_1789", i64* @_gasrem, align 8
  %"$$fundef_242_envp_1790_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_242_envp_1790_salloc" = call i8* @_salloc(i8* %"$$fundef_242_envp_1790_load", i64 40)
  %"$$fundef_242_envp_1790" = bitcast i8* %"$$fundef_242_envp_1790_salloc" to %"$$fundef_242_env_420"*
  %"$$fundef_242_env_voidp_1792" = bitcast %"$$fundef_242_env_420"* %"$$fundef_242_envp_1790" to i8*
  %"$$fundef_242_cloval_1793" = insertvalue { i8* (i8*, %TName_Bool*)*, i8* } { i8* (i8*, %TName_Bool*)* bitcast (i8* (%"$$fundef_242_env_420"*, %TName_Bool*)* @"$fundef_242" to i8* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_242_env_voidp_1792", 1
  %"$$fundef_242_env_operator_1794" = getelementptr inbounds %"$$fundef_242_env_420", %"$$fundef_242_env_420"* %"$$fundef_242_envp_1790", i32 0, i32 0
  store [20 x i8] %operator, [20 x i8]* %"$$fundef_242_env_operator_1794", align 1
  %"$$fundef_242_env_user_1795" = getelementptr inbounds %"$$fundef_242_env_420", %"$$fundef_242_env_420"* %"$$fundef_242_envp_1790", i32 0, i32 1
  %"$user_1796" = load [20 x i8], [20 x i8]* %user, align 1
  store [20 x i8] %"$user_1796", [20 x i8]* %"$$fundef_242_env_user_1795", align 1
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$fundef_242_cloval_1793", { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_241", align 8
  %"$$retval_241_1797" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_241", align 8
  ret { i8* (i8*, %TName_Bool*)*, i8* } %"$$retval_241_1797"
}

define internal { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_238"(%"$$fundef_238_env_422"* %0, [20 x i8]* %1) {
entry:
  %user = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_239" = alloca { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1773" = icmp ugt i64 1, %"$gasrem_1772"
  br i1 %"$gascmp_1773", label %"$out_of_gas_1774", label %"$have_gas_1775"

"$out_of_gas_1774":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1775"

"$have_gas_1775":                                 ; preds = %"$out_of_gas_1774", %entry
  %"$consume_1776" = sub i64 %"$gasrem_1772", 1
  store i64 %"$consume_1776", i64* @_gasrem, align 8
  %"$$fundef_240_envp_1777_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_240_envp_1777_salloc" = call i8* @_salloc(i8* %"$$fundef_240_envp_1777_load", i64 20)
  %"$$fundef_240_envp_1777" = bitcast i8* %"$$fundef_240_envp_1777_salloc" to %"$$fundef_240_env_421"*
  %"$$fundef_240_env_voidp_1779" = bitcast %"$$fundef_240_env_421"* %"$$fundef_240_envp_1777" to i8*
  %"$$fundef_240_cloval_1780" = insertvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_240_env_421"*, [20 x i8]*)* @"$fundef_240" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_240_env_voidp_1779", 1
  %"$$fundef_240_env_user_1781" = getelementptr inbounds %"$$fundef_240_env_421", %"$$fundef_240_env_421"* %"$$fundef_240_envp_1777", i32 0, i32 0
  store [20 x i8] %user, [20 x i8]* %"$$fundef_240_env_user_1781", align 1
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_240_cloval_1780", { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_239", align 8
  %"$$retval_239_1782" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_239", align 8
  ret { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_239_1782"
}

define internal i8* @"$fundef_246"(%"$$fundef_246_env_423"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_246_env_address_1739" = getelementptr inbounds %"$$fundef_246_env_423", %"$$fundef_246_env_423"* %0, i32 0, i32 0
  %"$address_envload_1740" = load [20 x i8], [20 x i8]* %"$$fundef_246_env_address_1739", align 1
  %address = alloca [20 x i8], align 1
  store [20 x i8] %"$address_envload_1740", [20 x i8]* %address, align 1
  %"$retval_247" = alloca i8*, align 8
  %"$gasrem_1741" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1742" = icmp ugt i64 1, %"$gasrem_1741"
  br i1 %"$gascmp_1742", label %"$out_of_gas_1743", label %"$have_gas_1744"

"$out_of_gas_1743":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1744"

"$have_gas_1744":                                 ; preds = %"$out_of_gas_1743", %entry
  %"$consume_1745" = sub i64 %"$gasrem_1741", 1
  store i64 %"$consume_1745", i64* @_gasrem, align 8
  %"$msgobj_1746_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1746_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1746_salloc_load", i64 117)
  %"$msgobj_1746_salloc" = bitcast i8* %"$msgobj_1746_salloc_salloc" to [117 x i8]*
  %"$msgobj_1746" = bitcast [117 x i8]* %"$msgobj_1746_salloc" to i8*
  store i8 3, i8* %"$msgobj_1746", align 1
  %"$msgobj_fname_1748" = getelementptr i8, i8* %"$msgobj_1746", i32 1
  %"$msgobj_fname_1749" = bitcast i8* %"$msgobj_fname_1748" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1747", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1749", align 8
  %"$msgobj_td_1750" = getelementptr i8, i8* %"$msgobj_1746", i32 17
  %"$msgobj_td_1751" = bitcast i8* %"$msgobj_td_1750" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_1751", align 8
  %"$msgobj_v_1753" = getelementptr i8, i8* %"$msgobj_1746", i32 25
  %"$msgobj_v_1754" = bitcast i8* %"$msgobj_v_1753" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1752", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_1754", align 8
  %"$msgobj_fname_1756" = getelementptr i8, i8* %"$msgobj_1746", i32 41
  %"$msgobj_fname_1757" = bitcast i8* %"$msgobj_fname_1756" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1755", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1757", align 8
  %"$msgobj_td_1758" = getelementptr i8, i8* %"$msgobj_1746", i32 57
  %"$msgobj_td_1759" = bitcast i8* %"$msgobj_td_1758" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_1759", align 8
  %"$address_1760" = load [20 x i8], [20 x i8]* %address, align 1
  %"$msgobj_v_1761" = getelementptr i8, i8* %"$msgobj_1746", i32 65
  %"$msgobj_v_1762" = bitcast i8* %"$msgobj_v_1761" to [20 x i8]*
  store [20 x i8] %"$address_1760", [20 x i8]* %"$msgobj_v_1762", align 1
  %"$msgobj_fname_1764" = getelementptr i8, i8* %"$msgobj_1746", i32 85
  %"$msgobj_fname_1765" = bitcast i8* %"$msgobj_fname_1764" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1763", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1765", align 8
  %"$msgobj_td_1766" = getelementptr i8, i8* %"$msgobj_1746", i32 101
  %"$msgobj_td_1767" = bitcast i8* %"$msgobj_td_1766" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321", %_TyDescrTy_Typ** %"$msgobj_td_1767", align 8
  %"$msgobj_v_1768" = getelementptr i8, i8* %"$msgobj_1746", i32 109
  %"$msgobj_v_1769" = bitcast i8* %"$msgobj_v_1768" to %TName_Bool**
  store %TName_Bool* %1, %TName_Bool** %"$msgobj_v_1769", align 8
  store i8* %"$msgobj_1746", i8** %"$retval_247", align 8
  %"$$retval_247_1771" = load i8*, i8** %"$retval_247", align 8
  ret i8* %"$$retval_247_1771"
}

define internal { i8* (i8*, %TName_Bool*)*, i8* } @"$fundef_244"(%"$$fundef_244_env_424"* %0, [20 x i8]* %1) {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_245" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_1728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1729" = icmp ugt i64 1, %"$gasrem_1728"
  br i1 %"$gascmp_1729", label %"$out_of_gas_1730", label %"$have_gas_1731"

"$out_of_gas_1730":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1731"

"$have_gas_1731":                                 ; preds = %"$out_of_gas_1730", %entry
  %"$consume_1732" = sub i64 %"$gasrem_1728", 1
  store i64 %"$consume_1732", i64* @_gasrem, align 8
  %"$$fundef_246_envp_1733_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_246_envp_1733_salloc" = call i8* @_salloc(i8* %"$$fundef_246_envp_1733_load", i64 20)
  %"$$fundef_246_envp_1733" = bitcast i8* %"$$fundef_246_envp_1733_salloc" to %"$$fundef_246_env_423"*
  %"$$fundef_246_env_voidp_1735" = bitcast %"$$fundef_246_env_423"* %"$$fundef_246_envp_1733" to i8*
  %"$$fundef_246_cloval_1736" = insertvalue { i8* (i8*, %TName_Bool*)*, i8* } { i8* (i8*, %TName_Bool*)* bitcast (i8* (%"$$fundef_246_env_423"*, %TName_Bool*)* @"$fundef_246" to i8* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_246_env_voidp_1735", 1
  %"$$fundef_246_env_address_1737" = getelementptr inbounds %"$$fundef_246_env_423", %"$$fundef_246_env_423"* %"$$fundef_246_envp_1733", i32 0, i32 0
  store [20 x i8] %address, [20 x i8]* %"$$fundef_246_env_address_1737", align 1
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$fundef_246_cloval_1736", { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_245", align 8
  %"$$retval_245_1738" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_245", align 8
  ret { i8* (i8*, %TName_Bool*)*, i8* } %"$$retval_245_1738"
}

define internal %TName_Bool* @"$fundef_250"(%"$$fundef_250_env_425"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_250_env_b1_1653" = getelementptr inbounds %"$$fundef_250_env_425", %"$$fundef_250_env_425"* %0, i32 0, i32 0
  %"$b1_envload_1654" = load %TName_Bool*, %TName_Bool** %"$$fundef_250_env_b1_1653", align 8
  %b1 = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b1_envload_1654", %TName_Bool** %b1, align 8
  %"$retval_251" = alloca %TName_Bool*, align 8
  %"$gasrem_1655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1656" = icmp ugt i64 2, %"$gasrem_1655"
  br i1 %"$gascmp_1656", label %"$out_of_gas_1657", label %"$have_gas_1658"

"$out_of_gas_1657":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1658"

"$have_gas_1658":                                 ; preds = %"$out_of_gas_1657", %entry
  %"$consume_1659" = sub i64 %"$gasrem_1655", 2
  store i64 %"$consume_1659", i64* @_gasrem, align 8
  %"$b1_1661" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$b1_tag_1662" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b1_1661", i32 0, i32 0
  %"$b1_tag_1663" = load i8, i8* %"$b1_tag_1662", align 1
  switch i8 %"$b1_tag_1663", label %"$empty_default_1664" [
    i8 0, label %"$True_1665"
    i8 1, label %"$False_1696"
  ]

"$True_1665":                                     ; preds = %"$have_gas_1658"
  %"$b1_1666" = bitcast %TName_Bool* %"$b1_1661" to %CName_True*
  %"$gasrem_1667" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1668" = icmp ugt i64 2, %"$gasrem_1667"
  br i1 %"$gascmp_1668", label %"$out_of_gas_1669", label %"$have_gas_1670"

"$out_of_gas_1669":                               ; preds = %"$True_1665"
  call void @_out_of_gas()
  br label %"$have_gas_1670"

"$have_gas_1670":                                 ; preds = %"$out_of_gas_1669", %"$True_1665"
  %"$consume_1671" = sub i64 %"$gasrem_1667", 2
  store i64 %"$consume_1671", i64* @_gasrem, align 8
  %"$b2_tag_1673" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b2_tag_1674" = load i8, i8* %"$b2_tag_1673", align 1
  switch i8 %"$b2_tag_1674", label %"$empty_default_1675" [
    i8 0, label %"$True_1676"
    i8 1, label %"$False_1686"
  ]

"$True_1676":                                     ; preds = %"$have_gas_1670"
  %"$b2_1677" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_1678" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1679" = icmp ugt i64 1, %"$gasrem_1678"
  br i1 %"$gascmp_1679", label %"$out_of_gas_1680", label %"$have_gas_1681"

"$out_of_gas_1680":                               ; preds = %"$True_1676"
  call void @_out_of_gas()
  br label %"$have_gas_1681"

"$have_gas_1681":                                 ; preds = %"$out_of_gas_1680", %"$True_1676"
  %"$consume_1682" = sub i64 %"$gasrem_1678", 1
  store i64 %"$consume_1682", i64* @_gasrem, align 8
  %"$adtval_1683_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1683_salloc" = call i8* @_salloc(i8* %"$adtval_1683_load", i64 1)
  %"$adtval_1683" = bitcast i8* %"$adtval_1683_salloc" to %CName_True*
  %"$adtgep_1684" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1683", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1684", align 1
  %"$adtptr_1685" = bitcast %CName_True* %"$adtval_1683" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1685", %TName_Bool** %"$retval_251", align 8
  br label %"$matchsucc_1672"

"$False_1686":                                    ; preds = %"$have_gas_1670"
  %"$b2_1687" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_1688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1689" = icmp ugt i64 1, %"$gasrem_1688"
  br i1 %"$gascmp_1689", label %"$out_of_gas_1690", label %"$have_gas_1691"

"$out_of_gas_1690":                               ; preds = %"$False_1686"
  call void @_out_of_gas()
  br label %"$have_gas_1691"

"$have_gas_1691":                                 ; preds = %"$out_of_gas_1690", %"$False_1686"
  %"$consume_1692" = sub i64 %"$gasrem_1688", 1
  store i64 %"$consume_1692", i64* @_gasrem, align 8
  %"$adtval_1693_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1693_salloc" = call i8* @_salloc(i8* %"$adtval_1693_load", i64 1)
  %"$adtval_1693" = bitcast i8* %"$adtval_1693_salloc" to %CName_False*
  %"$adtgep_1694" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1693", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1694", align 1
  %"$adtptr_1695" = bitcast %CName_False* %"$adtval_1693" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1695", %TName_Bool** %"$retval_251", align 8
  br label %"$matchsucc_1672"

"$empty_default_1675":                            ; preds = %"$have_gas_1670"
  br label %"$matchsucc_1672"

"$matchsucc_1672":                                ; preds = %"$have_gas_1691", %"$have_gas_1681", %"$empty_default_1675"
  br label %"$matchsucc_1660"

"$False_1696":                                    ; preds = %"$have_gas_1658"
  %"$b1_1697" = bitcast %TName_Bool* %"$b1_1661" to %CName_False*
  %"$gasrem_1698" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1699" = icmp ugt i64 2, %"$gasrem_1698"
  br i1 %"$gascmp_1699", label %"$out_of_gas_1700", label %"$have_gas_1701"

"$out_of_gas_1700":                               ; preds = %"$False_1696"
  call void @_out_of_gas()
  br label %"$have_gas_1701"

"$have_gas_1701":                                 ; preds = %"$out_of_gas_1700", %"$False_1696"
  %"$consume_1702" = sub i64 %"$gasrem_1698", 2
  store i64 %"$consume_1702", i64* @_gasrem, align 8
  %"$b2_tag_1704" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b2_tag_1705" = load i8, i8* %"$b2_tag_1704", align 1
  switch i8 %"$b2_tag_1705", label %"$empty_default_1706" [
    i8 0, label %"$True_1707"
    i8 1, label %"$False_1717"
  ]

"$True_1707":                                     ; preds = %"$have_gas_1701"
  %"$b2_1708" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_1709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1710" = icmp ugt i64 1, %"$gasrem_1709"
  br i1 %"$gascmp_1710", label %"$out_of_gas_1711", label %"$have_gas_1712"

"$out_of_gas_1711":                               ; preds = %"$True_1707"
  call void @_out_of_gas()
  br label %"$have_gas_1712"

"$have_gas_1712":                                 ; preds = %"$out_of_gas_1711", %"$True_1707"
  %"$consume_1713" = sub i64 %"$gasrem_1709", 1
  store i64 %"$consume_1713", i64* @_gasrem, align 8
  %"$adtval_1714_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1714_salloc" = call i8* @_salloc(i8* %"$adtval_1714_load", i64 1)
  %"$adtval_1714" = bitcast i8* %"$adtval_1714_salloc" to %CName_False*
  %"$adtgep_1715" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1714", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1715", align 1
  %"$adtptr_1716" = bitcast %CName_False* %"$adtval_1714" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1716", %TName_Bool** %"$retval_251", align 8
  br label %"$matchsucc_1703"

"$False_1717":                                    ; preds = %"$have_gas_1701"
  %"$b2_1718" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_1719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1720" = icmp ugt i64 1, %"$gasrem_1719"
  br i1 %"$gascmp_1720", label %"$out_of_gas_1721", label %"$have_gas_1722"

"$out_of_gas_1721":                               ; preds = %"$False_1717"
  call void @_out_of_gas()
  br label %"$have_gas_1722"

"$have_gas_1722":                                 ; preds = %"$out_of_gas_1721", %"$False_1717"
  %"$consume_1723" = sub i64 %"$gasrem_1719", 1
  store i64 %"$consume_1723", i64* @_gasrem, align 8
  %"$adtval_1724_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1724_salloc" = call i8* @_salloc(i8* %"$adtval_1724_load", i64 1)
  %"$adtval_1724" = bitcast i8* %"$adtval_1724_salloc" to %CName_True*
  %"$adtgep_1725" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1724", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1725", align 1
  %"$adtptr_1726" = bitcast %CName_True* %"$adtval_1724" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1726", %TName_Bool** %"$retval_251", align 8
  br label %"$matchsucc_1703"

"$empty_default_1706":                            ; preds = %"$have_gas_1701"
  br label %"$matchsucc_1703"

"$matchsucc_1703":                                ; preds = %"$have_gas_1722", %"$have_gas_1712", %"$empty_default_1706"
  br label %"$matchsucc_1660"

"$empty_default_1664":                            ; preds = %"$have_gas_1658"
  br label %"$matchsucc_1660"

"$matchsucc_1660":                                ; preds = %"$matchsucc_1703", %"$matchsucc_1672", %"$empty_default_1664"
  %"$$retval_251_1727" = load %TName_Bool*, %TName_Bool** %"$retval_251", align 8
  ret %TName_Bool* %"$$retval_251_1727"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_248"(%"$$fundef_248_env_426"* %0, %TName_Bool* %1) {
entry:
  %"$retval_249" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_1642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1643" = icmp ugt i64 1, %"$gasrem_1642"
  br i1 %"$gascmp_1643", label %"$out_of_gas_1644", label %"$have_gas_1645"

"$out_of_gas_1644":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1645"

"$have_gas_1645":                                 ; preds = %"$out_of_gas_1644", %entry
  %"$consume_1646" = sub i64 %"$gasrem_1642", 1
  store i64 %"$consume_1646", i64* @_gasrem, align 8
  %"$$fundef_250_envp_1647_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_250_envp_1647_salloc" = call i8* @_salloc(i8* %"$$fundef_250_envp_1647_load", i64 8)
  %"$$fundef_250_envp_1647" = bitcast i8* %"$$fundef_250_envp_1647_salloc" to %"$$fundef_250_env_425"*
  %"$$fundef_250_env_voidp_1649" = bitcast %"$$fundef_250_env_425"* %"$$fundef_250_envp_1647" to i8*
  %"$$fundef_250_cloval_1650" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_250_env_425"*, %TName_Bool*)* @"$fundef_250" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_250_env_voidp_1649", 1
  %"$$fundef_250_env_b1_1651" = getelementptr inbounds %"$$fundef_250_env_425", %"$$fundef_250_env_425"* %"$$fundef_250_envp_1647", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_250_env_b1_1651", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_250_cloval_1650", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_249", align 8
  %"$$retval_249_1652" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_249", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_249_1652"
}

define internal %TName_Bool* @"$fundef_256"(%"$$fundef_256_env_427"* %0, [20 x i8]* %1) {
entry:
  %v = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_256_env_BoolUtils.negb_1608" = getelementptr inbounds %"$$fundef_256_env_427", %"$$fundef_256_env_427"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1609" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_256_env_BoolUtils.negb_1608", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1609", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_256_env_bs_1610" = getelementptr inbounds %"$$fundef_256_env_427", %"$$fundef_256_env_427"* %0, i32 0, i32 1
  %"$bs_envload_1611" = load [20 x i8], [20 x i8]* %"$$fundef_256_env_bs_1610", align 1
  %bs = alloca [20 x i8], align 1
  store [20 x i8] %"$bs_envload_1611", [20 x i8]* %bs, align 1
  %"$retval_257" = alloca %TName_Bool*, align 8
  %"$gasrem_1612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1613" = icmp ugt i64 1, %"$gasrem_1612"
  br i1 %"$gascmp_1613", label %"$out_of_gas_1614", label %"$have_gas_1615"

"$out_of_gas_1614":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1615"

"$have_gas_1615":                                 ; preds = %"$out_of_gas_1614", %entry
  %"$consume_1616" = sub i64 %"$gasrem_1612", 1
  store i64 %"$consume_1616", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_1617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1618" = icmp ugt i64 20, %"$gasrem_1617"
  br i1 %"$gascmp_1618", label %"$out_of_gas_1619", label %"$have_gas_1620"

"$out_of_gas_1619":                               ; preds = %"$have_gas_1615"
  call void @_out_of_gas()
  br label %"$have_gas_1620"

"$have_gas_1620":                                 ; preds = %"$out_of_gas_1619", %"$have_gas_1615"
  %"$consume_1621" = sub i64 %"$gasrem_1617", 20
  store i64 %"$consume_1621", i64* @_gasrem, align 8
  %"$execptr_load_1622" = load i8*, i8** @_execptr, align 8
  %"$eq_v_1623" = alloca [20 x i8], align 1
  store [20 x i8] %v, [20 x i8]* %"$eq_v_1623", align 1
  %"$$eq_v_1623_1624" = bitcast [20 x i8]* %"$eq_v_1623" to i8*
  %"$eq_bs_1625" = alloca [20 x i8], align 1
  %"$bs_1626" = load [20 x i8], [20 x i8]* %bs, align 1
  store [20 x i8] %"$bs_1626", [20 x i8]* %"$eq_bs_1625", align 1
  %"$$eq_bs_1625_1627" = bitcast [20 x i8]* %"$eq_bs_1625" to i8*
  %"$eq_call_1628" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_1622", i32 20, i8* %"$$eq_v_1623_1624", i8* %"$$eq_bs_1625_1627")
  store %TName_Bool* %"$eq_call_1628", %TName_Bool** %b, align 8
  %"$gasrem_1630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1631" = icmp ugt i64 1, %"$gasrem_1630"
  br i1 %"$gascmp_1631", label %"$out_of_gas_1632", label %"$have_gas_1633"

"$out_of_gas_1632":                               ; preds = %"$have_gas_1620"
  call void @_out_of_gas()
  br label %"$have_gas_1633"

"$have_gas_1633":                                 ; preds = %"$out_of_gas_1632", %"$have_gas_1620"
  %"$consume_1634" = sub i64 %"$gasrem_1630", 1
  store i64 %"$consume_1634", i64* @_gasrem, align 8
  %"$BoolUtils.negb_36" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_1635" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_1636" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1635", 0
  %"$BoolUtils.negb_envptr_1637" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1635", 1
  %"$b_1638" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$BoolUtils.negb_call_1639" = call %TName_Bool* %"$BoolUtils.negb_fptr_1636"(i8* %"$BoolUtils.negb_envptr_1637", %TName_Bool* %"$b_1638")
  store %TName_Bool* %"$BoolUtils.negb_call_1639", %TName_Bool** %"$BoolUtils.negb_36", align 8
  %"$$BoolUtils.negb_36_1640" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_36", align 8
  store %TName_Bool* %"$$BoolUtils.negb_36_1640", %TName_Bool** %"$retval_257", align 8
  %"$$retval_257_1641" = load %TName_Bool*, %TName_Bool** %"$retval_257", align 8
  ret %TName_Bool* %"$$retval_257_1641"
}

define internal %TName_List_ByStr20* @"$fundef_254"(%"$$fundef_254_env_428"* %0, [20 x i8]* %1) {
entry:
  %bs = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_254_env_BoolUtils.negb_1551" = getelementptr inbounds %"$$fundef_254_env_428", %"$$fundef_254_env_428"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1552" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_254_env_BoolUtils.negb_1551", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1552", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_254_env_ListUtils.list_filter_1553" = getelementptr inbounds %"$$fundef_254_env_428", %"$$fundef_254_env_428"* %0, i32 0, i32 1
  %"$ListUtils.list_filter_envload_1554" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_254_env_ListUtils.list_filter_1553", align 8
  %ListUtils.list_filter = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_envload_1554", { i8*, i8* }** %ListUtils.list_filter, align 8
  %"$$fundef_254_env_list_1555" = getelementptr inbounds %"$$fundef_254_env_428", %"$$fundef_254_env_428"* %0, i32 0, i32 2
  %"$list_envload_1556" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_254_env_list_1555", align 8
  %list = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$list_envload_1556", %TName_List_ByStr20** %list, align 8
  %"$retval_255" = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_1557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1558" = icmp ugt i64 1, %"$gasrem_1557"
  br i1 %"$gascmp_1558", label %"$out_of_gas_1559", label %"$have_gas_1560"

"$out_of_gas_1559":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1560"

"$have_gas_1560":                                 ; preds = %"$out_of_gas_1559", %entry
  %"$consume_1561" = sub i64 %"$gasrem_1557", 1
  store i64 %"$consume_1561", i64* @_gasrem, align 8
  %listByStr20Filter = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1563" = icmp ugt i64 1, %"$gasrem_1562"
  br i1 %"$gascmp_1563", label %"$out_of_gas_1564", label %"$have_gas_1565"

"$out_of_gas_1564":                               ; preds = %"$have_gas_1560"
  call void @_out_of_gas()
  br label %"$have_gas_1565"

"$have_gas_1565":                                 ; preds = %"$out_of_gas_1564", %"$have_gas_1560"
  %"$consume_1566" = sub i64 %"$gasrem_1562", 1
  store i64 %"$consume_1566", i64* @_gasrem, align 8
  %"$ListUtils.list_filter_1567" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_filter, align 8
  %"$ListUtils.list_filter_1568" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_filter_1567", i32 0
  %"$ListUtils.list_filter_1569" = bitcast { i8*, i8* }* %"$ListUtils.list_filter_1568" to { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_filter_1570" = load { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_filter_1569", align 8
  %"$ListUtils.list_filter_fptr_1571" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_filter_1570", 0
  %"$ListUtils.list_filter_envptr_1572" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_filter_1570", 1
  %"$ListUtils.list_filter_call_1573" = call { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_filter_fptr_1571"(i8* %"$ListUtils.list_filter_envptr_1572")
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_filter_call_1573", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %listByStr20Filter, align 8
  %"$gasrem_1574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1575" = icmp ugt i64 1, %"$gasrem_1574"
  br i1 %"$gascmp_1575", label %"$out_of_gas_1576", label %"$have_gas_1577"

"$out_of_gas_1576":                               ; preds = %"$have_gas_1565"
  call void @_out_of_gas()
  br label %"$have_gas_1577"

"$have_gas_1577":                                 ; preds = %"$out_of_gas_1576", %"$have_gas_1565"
  %"$consume_1578" = sub i64 %"$gasrem_1574", 1
  store i64 %"$consume_1578", i64* @_gasrem, align 8
  %fn = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1579" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1580" = icmp ugt i64 1, %"$gasrem_1579"
  br i1 %"$gascmp_1580", label %"$out_of_gas_1581", label %"$have_gas_1582"

"$out_of_gas_1581":                               ; preds = %"$have_gas_1577"
  call void @_out_of_gas()
  br label %"$have_gas_1582"

"$have_gas_1582":                                 ; preds = %"$out_of_gas_1581", %"$have_gas_1577"
  %"$consume_1583" = sub i64 %"$gasrem_1579", 1
  store i64 %"$consume_1583", i64* @_gasrem, align 8
  %"$$fundef_256_envp_1584_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_256_envp_1584_salloc" = call i8* @_salloc(i8* %"$$fundef_256_envp_1584_load", i64 40)
  %"$$fundef_256_envp_1584" = bitcast i8* %"$$fundef_256_envp_1584_salloc" to %"$$fundef_256_env_427"*
  %"$$fundef_256_env_voidp_1586" = bitcast %"$$fundef_256_env_427"* %"$$fundef_256_envp_1584" to i8*
  %"$$fundef_256_cloval_1587" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_256_env_427"*, [20 x i8]*)* @"$fundef_256" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_256_env_voidp_1586", 1
  %"$$fundef_256_env_BoolUtils.negb_1588" = getelementptr inbounds %"$$fundef_256_env_427", %"$$fundef_256_env_427"* %"$$fundef_256_envp_1584", i32 0, i32 0
  %"$BoolUtils.negb_1589" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1589", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_256_env_BoolUtils.negb_1588", align 8
  %"$$fundef_256_env_bs_1590" = getelementptr inbounds %"$$fundef_256_env_427", %"$$fundef_256_env_427"* %"$$fundef_256_envp_1584", i32 0, i32 1
  store [20 x i8] %bs, [20 x i8]* %"$$fundef_256_env_bs_1590", align 1
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_256_cloval_1587", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %fn, align 8
  %"$gasrem_1591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1592" = icmp ugt i64 1, %"$gasrem_1591"
  br i1 %"$gascmp_1592", label %"$out_of_gas_1593", label %"$have_gas_1594"

"$out_of_gas_1593":                               ; preds = %"$have_gas_1582"
  call void @_out_of_gas()
  br label %"$have_gas_1594"

"$have_gas_1594":                                 ; preds = %"$out_of_gas_1593", %"$have_gas_1582"
  %"$consume_1595" = sub i64 %"$gasrem_1591", 1
  store i64 %"$consume_1595", i64* @_gasrem, align 8
  %"$listByStr20Filter_37" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$listByStr20Filter_1596" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %listByStr20Filter, align 8
  %"$listByStr20Filter_fptr_1597" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listByStr20Filter_1596", 0
  %"$listByStr20Filter_envptr_1598" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listByStr20Filter_1596", 1
  %"$fn_1599" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %fn, align 8
  %"$listByStr20Filter_call_1600" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$listByStr20Filter_fptr_1597"(i8* %"$listByStr20Filter_envptr_1598", { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$fn_1599")
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$listByStr20Filter_call_1600", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listByStr20Filter_37", align 8
  %"$listByStr20Filter_38" = alloca %TName_List_ByStr20*, align 8
  %"$$listByStr20Filter_37_1601" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listByStr20Filter_37", align 8
  %"$$listByStr20Filter_37_fptr_1602" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listByStr20Filter_37_1601", 0
  %"$$listByStr20Filter_37_envptr_1603" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listByStr20Filter_37_1601", 1
  %"$list_1604" = load %TName_List_ByStr20*, %TName_List_ByStr20** %list, align 8
  %"$$listByStr20Filter_37_call_1605" = call %TName_List_ByStr20* %"$$listByStr20Filter_37_fptr_1602"(i8* %"$$listByStr20Filter_37_envptr_1603", %TName_List_ByStr20* %"$list_1604")
  store %TName_List_ByStr20* %"$$listByStr20Filter_37_call_1605", %TName_List_ByStr20** %"$listByStr20Filter_38", align 8
  %"$$listByStr20Filter_38_1606" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$listByStr20Filter_38", align 8
  store %TName_List_ByStr20* %"$$listByStr20Filter_38_1606", %TName_List_ByStr20** %"$retval_255", align 8
  %"$$retval_255_1607" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$retval_255", align 8
  ret %TName_List_ByStr20* %"$$retval_255_1607"
}

define internal { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } @"$fundef_252"(%"$$fundef_252_env_429"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_252_env_BoolUtils.negb_1532" = getelementptr inbounds %"$$fundef_252_env_429", %"$$fundef_252_env_429"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1533" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_252_env_BoolUtils.negb_1532", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1533", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_252_env_ListUtils.list_filter_1534" = getelementptr inbounds %"$$fundef_252_env_429", %"$$fundef_252_env_429"* %0, i32 0, i32 1
  %"$ListUtils.list_filter_envload_1535" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_252_env_ListUtils.list_filter_1534", align 8
  %ListUtils.list_filter = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_envload_1535", { i8*, i8* }** %ListUtils.list_filter, align 8
  %"$retval_253" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1537" = icmp ugt i64 1, %"$gasrem_1536"
  br i1 %"$gascmp_1537", label %"$out_of_gas_1538", label %"$have_gas_1539"

"$out_of_gas_1538":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1539"

"$have_gas_1539":                                 ; preds = %"$out_of_gas_1538", %entry
  %"$consume_1540" = sub i64 %"$gasrem_1536", 1
  store i64 %"$consume_1540", i64* @_gasrem, align 8
  %"$$fundef_254_envp_1541_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_254_envp_1541_salloc" = call i8* @_salloc(i8* %"$$fundef_254_envp_1541_load", i64 32)
  %"$$fundef_254_envp_1541" = bitcast i8* %"$$fundef_254_envp_1541_salloc" to %"$$fundef_254_env_428"*
  %"$$fundef_254_env_voidp_1543" = bitcast %"$$fundef_254_env_428"* %"$$fundef_254_envp_1541" to i8*
  %"$$fundef_254_cloval_1544" = insertvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } { %TName_List_ByStr20* (i8*, [20 x i8]*)* bitcast (%TName_List_ByStr20* (%"$$fundef_254_env_428"*, [20 x i8]*)* @"$fundef_254" to %TName_List_ByStr20* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_254_env_voidp_1543", 1
  %"$$fundef_254_env_BoolUtils.negb_1545" = getelementptr inbounds %"$$fundef_254_env_428", %"$$fundef_254_env_428"* %"$$fundef_254_envp_1541", i32 0, i32 0
  %"$BoolUtils.negb_1546" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1546", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_254_env_BoolUtils.negb_1545", align 8
  %"$$fundef_254_env_ListUtils.list_filter_1547" = getelementptr inbounds %"$$fundef_254_env_428", %"$$fundef_254_env_428"* %"$$fundef_254_envp_1541", i32 0, i32 1
  %"$ListUtils.list_filter_1548" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_filter, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_1548", { i8*, i8* }** %"$$fundef_254_env_ListUtils.list_filter_1547", align 8
  %"$$fundef_254_env_list_1549" = getelementptr inbounds %"$$fundef_254_env_428", %"$$fundef_254_env_428"* %"$$fundef_254_envp_1541", i32 0, i32 2
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_254_env_list_1549", align 8
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$fundef_254_cloval_1544", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_253", align 8
  %"$$retval_253_1550" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_253", align 8
  ret { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$retval_253_1550"
}

define internal %TName_Bool* @"$fundef_260"(%"$$fundef_260_env_430"* %0, [20 x i8]* %1) {
entry:
  %bs = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_260_env_BoolUtils.negb_1493" = getelementptr inbounds %"$$fundef_260_env_430", %"$$fundef_260_env_430"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1494" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_260_env_BoolUtils.negb_1493", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1494", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_260_env_list_1495" = getelementptr inbounds %"$$fundef_260_env_430", %"$$fundef_260_env_430"* %0, i32 0, i32 1
  %"$list_envload_1496" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_260_env_list_1495", align 8
  %list = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$list_envload_1496", %TName_List_ByStr20** %list, align 8
  %"$$fundef_260_env_ud-registry.listByStr20Contains_1497" = getelementptr inbounds %"$$fundef_260_env_430", %"$$fundef_260_env_430"* %0, i32 0, i32 2
  %"$ud-registry.listByStr20Contains_envload_1498" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_260_env_ud-registry.listByStr20Contains_1497", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_1498", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_261" = alloca %TName_Bool*, align 8
  %"$gasrem_1499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1500" = icmp ugt i64 1, %"$gasrem_1499"
  br i1 %"$gascmp_1500", label %"$out_of_gas_1501", label %"$have_gas_1502"

"$out_of_gas_1501":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1502"

"$have_gas_1502":                                 ; preds = %"$out_of_gas_1501", %entry
  %"$consume_1503" = sub i64 %"$gasrem_1499", 1
  store i64 %"$consume_1503", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_1504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1505" = icmp ugt i64 1, %"$gasrem_1504"
  br i1 %"$gascmp_1505", label %"$out_of_gas_1506", label %"$have_gas_1507"

"$out_of_gas_1506":                               ; preds = %"$have_gas_1502"
  call void @_out_of_gas()
  br label %"$have_gas_1507"

"$have_gas_1507":                                 ; preds = %"$out_of_gas_1506", %"$have_gas_1502"
  %"$consume_1508" = sub i64 %"$gasrem_1504", 1
  store i64 %"$consume_1508", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_33" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_1509" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_1510" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_1509", 0
  %"$ud-registry.listByStr20Contains_envptr_1511" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_1509", 1
  %"$list_1512" = load %TName_List_ByStr20*, %TName_List_ByStr20** %list, align 8
  %"$ud-registry.listByStr20Contains_call_1513" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_1510"(i8* %"$ud-registry.listByStr20Contains_envptr_1511", %TName_List_ByStr20* %"$list_1512")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_1513", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_33", align 8
  %"$ud-registry.listByStr20Contains_34" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_33_1514" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_33", align 8
  %"$$ud-registry.listByStr20Contains_33_fptr_1515" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_33_1514", 0
  %"$$ud-registry.listByStr20Contains_33_envptr_1516" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_33_1514", 1
  %"$$ud-registry.listByStr20Contains_33_bs_1517" = alloca [20 x i8], align 1
  store [20 x i8] %bs, [20 x i8]* %"$$ud-registry.listByStr20Contains_33_bs_1517", align 1
  %"$$ud-registry.listByStr20Contains_33_call_1518" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_33_fptr_1515"(i8* %"$$ud-registry.listByStr20Contains_33_envptr_1516", [20 x i8]* %"$$ud-registry.listByStr20Contains_33_bs_1517")
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_33_call_1518", %TName_Bool** %"$ud-registry.listByStr20Contains_34", align 8
  %"$$ud-registry.listByStr20Contains_34_1519" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_34", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_34_1519", %TName_Bool** %b, align 8
  %"$gasrem_1520" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1521" = icmp ugt i64 1, %"$gasrem_1520"
  br i1 %"$gascmp_1521", label %"$out_of_gas_1522", label %"$have_gas_1523"

"$out_of_gas_1522":                               ; preds = %"$have_gas_1507"
  call void @_out_of_gas()
  br label %"$have_gas_1523"

"$have_gas_1523":                                 ; preds = %"$out_of_gas_1522", %"$have_gas_1507"
  %"$consume_1524" = sub i64 %"$gasrem_1520", 1
  store i64 %"$consume_1524", i64* @_gasrem, align 8
  %"$BoolUtils.negb_35" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_1525" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_1526" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1525", 0
  %"$BoolUtils.negb_envptr_1527" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1525", 1
  %"$b_1528" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$BoolUtils.negb_call_1529" = call %TName_Bool* %"$BoolUtils.negb_fptr_1526"(i8* %"$BoolUtils.negb_envptr_1527", %TName_Bool* %"$b_1528")
  store %TName_Bool* %"$BoolUtils.negb_call_1529", %TName_Bool** %"$BoolUtils.negb_35", align 8
  %"$$BoolUtils.negb_35_1530" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_35", align 8
  store %TName_Bool* %"$$BoolUtils.negb_35_1530", %TName_Bool** %"$retval_261", align 8
  %"$$retval_261_1531" = load %TName_Bool*, %TName_Bool** %"$retval_261", align 8
  ret %TName_Bool* %"$$retval_261_1531"
}

define internal { %TName_Bool* (i8*, [20 x i8]*)*, i8* } @"$fundef_258"(%"$$fundef_258_env_431"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_258_env_BoolUtils.negb_1474" = getelementptr inbounds %"$$fundef_258_env_431", %"$$fundef_258_env_431"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1475" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_258_env_BoolUtils.negb_1474", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1475", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_258_env_ud-registry.listByStr20Contains_1476" = getelementptr inbounds %"$$fundef_258_env_431", %"$$fundef_258_env_431"* %0, i32 0, i32 1
  %"$ud-registry.listByStr20Contains_envload_1477" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_258_env_ud-registry.listByStr20Contains_1476", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_1477", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_259" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1479" = icmp ugt i64 1, %"$gasrem_1478"
  br i1 %"$gascmp_1479", label %"$out_of_gas_1480", label %"$have_gas_1481"

"$out_of_gas_1480":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1481"

"$have_gas_1481":                                 ; preds = %"$out_of_gas_1480", %entry
  %"$consume_1482" = sub i64 %"$gasrem_1478", 1
  store i64 %"$consume_1482", i64* @_gasrem, align 8
  %"$$fundef_260_envp_1483_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_260_envp_1483_salloc" = call i8* @_salloc(i8* %"$$fundef_260_envp_1483_load", i64 40)
  %"$$fundef_260_envp_1483" = bitcast i8* %"$$fundef_260_envp_1483_salloc" to %"$$fundef_260_env_430"*
  %"$$fundef_260_env_voidp_1485" = bitcast %"$$fundef_260_env_430"* %"$$fundef_260_envp_1483" to i8*
  %"$$fundef_260_cloval_1486" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_260_env_430"*, [20 x i8]*)* @"$fundef_260" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_260_env_voidp_1485", 1
  %"$$fundef_260_env_BoolUtils.negb_1487" = getelementptr inbounds %"$$fundef_260_env_430", %"$$fundef_260_env_430"* %"$$fundef_260_envp_1483", i32 0, i32 0
  %"$BoolUtils.negb_1488" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1488", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_260_env_BoolUtils.negb_1487", align 8
  %"$$fundef_260_env_list_1489" = getelementptr inbounds %"$$fundef_260_env_430", %"$$fundef_260_env_430"* %"$$fundef_260_envp_1483", i32 0, i32 1
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_260_env_list_1489", align 8
  %"$$fundef_260_env_ud-registry.listByStr20Contains_1490" = getelementptr inbounds %"$$fundef_260_env_430", %"$$fundef_260_env_430"* %"$$fundef_260_envp_1483", i32 0, i32 2
  %"$ud-registry.listByStr20Contains_1491" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_1491", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_260_env_ud-registry.listByStr20Contains_1490", align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_260_cloval_1486", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_259", align 8
  %"$$retval_259_1492" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_259", align 8
  ret { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$retval_259_1492"
}

define internal %TName_Bool* @"$fundef_264"(%"$$fundef_264_env_432"* %0, [20 x i8]* %1) {
entry:
  %bs = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_264_env_ListUtils.list_mem_1429" = getelementptr inbounds %"$$fundef_264_env_432", %"$$fundef_264_env_432"* %0, i32 0, i32 0
  %"$ListUtils.list_mem_envload_1430" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_264_env_ListUtils.list_mem_1429", align 8
  %ListUtils.list_mem = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_envload_1430", { i8*, i8* }** %ListUtils.list_mem, align 8
  %"$$fundef_264_env_list_1431" = getelementptr inbounds %"$$fundef_264_env_432", %"$$fundef_264_env_432"* %0, i32 0, i32 1
  %"$list_envload_1432" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_264_env_list_1431", align 8
  %list = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$list_envload_1432", %TName_List_ByStr20** %list, align 8
  %"$$fundef_264_env_ud-registry.eqByStr20_1433" = getelementptr inbounds %"$$fundef_264_env_432", %"$$fundef_264_env_432"* %0, i32 0, i32 2
  %"$ud-registry.eqByStr20_envload_1434" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_264_env_ud-registry.eqByStr20_1433", align 8
  %ud-registry.eqByStr20 = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_envload_1434", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  %"$retval_265" = alloca %TName_Bool*, align 8
  %"$gasrem_1435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1436" = icmp ugt i64 1, %"$gasrem_1435"
  br i1 %"$gascmp_1436", label %"$out_of_gas_1437", label %"$have_gas_1438"

"$out_of_gas_1437":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1438"

"$have_gas_1438":                                 ; preds = %"$out_of_gas_1437", %entry
  %"$consume_1439" = sub i64 %"$gasrem_1435", 1
  store i64 %"$consume_1439", i64* @_gasrem, align 8
  %listMemByStr20 = alloca { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1441" = icmp ugt i64 1, %"$gasrem_1440"
  br i1 %"$gascmp_1441", label %"$out_of_gas_1442", label %"$have_gas_1443"

"$out_of_gas_1442":                               ; preds = %"$have_gas_1438"
  call void @_out_of_gas()
  br label %"$have_gas_1443"

"$have_gas_1443":                                 ; preds = %"$out_of_gas_1442", %"$have_gas_1438"
  %"$consume_1444" = sub i64 %"$gasrem_1440", 1
  store i64 %"$consume_1444", i64* @_gasrem, align 8
  %"$ListUtils.list_mem_1445" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_mem, align 8
  %"$ListUtils.list_mem_1446" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_mem_1445", i32 0
  %"$ListUtils.list_mem_1447" = bitcast { i8*, i8* }* %"$ListUtils.list_mem_1446" to { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_mem_1448" = load { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_mem_1447", align 8
  %"$ListUtils.list_mem_fptr_1449" = extractvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_mem_1448", 0
  %"$ListUtils.list_mem_envptr_1450" = extractvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_mem_1448", 1
  %"$ListUtils.list_mem_call_1451" = call { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_mem_fptr_1449"(i8* %"$ListUtils.list_mem_envptr_1450")
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_mem_call_1451", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %listMemByStr20, align 8
  %"$gasrem_1452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1453" = icmp ugt i64 1, %"$gasrem_1452"
  br i1 %"$gascmp_1453", label %"$out_of_gas_1454", label %"$have_gas_1455"

"$out_of_gas_1454":                               ; preds = %"$have_gas_1443"
  call void @_out_of_gas()
  br label %"$have_gas_1455"

"$have_gas_1455":                                 ; preds = %"$out_of_gas_1454", %"$have_gas_1443"
  %"$consume_1456" = sub i64 %"$gasrem_1452", 1
  store i64 %"$consume_1456", i64* @_gasrem, align 8
  %"$listMemByStr20_30" = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$listMemByStr20_1457" = load { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %listMemByStr20, align 8
  %"$listMemByStr20_fptr_1458" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listMemByStr20_1457", 0
  %"$listMemByStr20_envptr_1459" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listMemByStr20_1457", 1
  %"$ud-registry.eqByStr20_1460" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  %"$listMemByStr20_call_1461" = call { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$listMemByStr20_fptr_1458"(i8* %"$listMemByStr20_envptr_1459", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_1460")
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$listMemByStr20_call_1461", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$listMemByStr20_30", align 8
  %"$listMemByStr20_31" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$$listMemByStr20_30_1462" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$listMemByStr20_30", align 8
  %"$$listMemByStr20_30_fptr_1463" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$listMemByStr20_30_1462", 0
  %"$$listMemByStr20_30_envptr_1464" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$listMemByStr20_30_1462", 1
  %"$$listMemByStr20_30_bs_1465" = alloca [20 x i8], align 1
  store [20 x i8] %bs, [20 x i8]* %"$$listMemByStr20_30_bs_1465", align 1
  %"$$listMemByStr20_30_call_1466" = call { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_30_fptr_1463"(i8* %"$$listMemByStr20_30_envptr_1464", [20 x i8]* %"$$listMemByStr20_30_bs_1465")
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_30_call_1466", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listMemByStr20_31", align 8
  %"$listMemByStr20_32" = alloca %TName_Bool*, align 8
  %"$$listMemByStr20_31_1467" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listMemByStr20_31", align 8
  %"$$listMemByStr20_31_fptr_1468" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_31_1467", 0
  %"$$listMemByStr20_31_envptr_1469" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_31_1467", 1
  %"$list_1470" = load %TName_List_ByStr20*, %TName_List_ByStr20** %list, align 8
  %"$$listMemByStr20_31_call_1471" = call %TName_Bool* %"$$listMemByStr20_31_fptr_1468"(i8* %"$$listMemByStr20_31_envptr_1469", %TName_List_ByStr20* %"$list_1470")
  store %TName_Bool* %"$$listMemByStr20_31_call_1471", %TName_Bool** %"$listMemByStr20_32", align 8
  %"$$listMemByStr20_32_1472" = load %TName_Bool*, %TName_Bool** %"$listMemByStr20_32", align 8
  store %TName_Bool* %"$$listMemByStr20_32_1472", %TName_Bool** %"$retval_265", align 8
  %"$$retval_265_1473" = load %TName_Bool*, %TName_Bool** %"$retval_265", align 8
  ret %TName_Bool* %"$$retval_265_1473"
}

define internal { %TName_Bool* (i8*, [20 x i8]*)*, i8* } @"$fundef_262"(%"$$fundef_262_env_433"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_262_env_ListUtils.list_mem_1410" = getelementptr inbounds %"$$fundef_262_env_433", %"$$fundef_262_env_433"* %0, i32 0, i32 0
  %"$ListUtils.list_mem_envload_1411" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_262_env_ListUtils.list_mem_1410", align 8
  %ListUtils.list_mem = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_envload_1411", { i8*, i8* }** %ListUtils.list_mem, align 8
  %"$$fundef_262_env_ud-registry.eqByStr20_1412" = getelementptr inbounds %"$$fundef_262_env_433", %"$$fundef_262_env_433"* %0, i32 0, i32 1
  %"$ud-registry.eqByStr20_envload_1413" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_262_env_ud-registry.eqByStr20_1412", align 8
  %ud-registry.eqByStr20 = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_envload_1413", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  %"$retval_263" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1415" = icmp ugt i64 1, %"$gasrem_1414"
  br i1 %"$gascmp_1415", label %"$out_of_gas_1416", label %"$have_gas_1417"

"$out_of_gas_1416":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1417"

"$have_gas_1417":                                 ; preds = %"$out_of_gas_1416", %entry
  %"$consume_1418" = sub i64 %"$gasrem_1414", 1
  store i64 %"$consume_1418", i64* @_gasrem, align 8
  %"$$fundef_264_envp_1419_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_264_envp_1419_salloc" = call i8* @_salloc(i8* %"$$fundef_264_envp_1419_load", i64 32)
  %"$$fundef_264_envp_1419" = bitcast i8* %"$$fundef_264_envp_1419_salloc" to %"$$fundef_264_env_432"*
  %"$$fundef_264_env_voidp_1421" = bitcast %"$$fundef_264_env_432"* %"$$fundef_264_envp_1419" to i8*
  %"$$fundef_264_cloval_1422" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_264_env_432"*, [20 x i8]*)* @"$fundef_264" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_264_env_voidp_1421", 1
  %"$$fundef_264_env_ListUtils.list_mem_1423" = getelementptr inbounds %"$$fundef_264_env_432", %"$$fundef_264_env_432"* %"$$fundef_264_envp_1419", i32 0, i32 0
  %"$ListUtils.list_mem_1424" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_mem, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_1424", { i8*, i8* }** %"$$fundef_264_env_ListUtils.list_mem_1423", align 8
  %"$$fundef_264_env_list_1425" = getelementptr inbounds %"$$fundef_264_env_432", %"$$fundef_264_env_432"* %"$$fundef_264_envp_1419", i32 0, i32 1
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_264_env_list_1425", align 8
  %"$$fundef_264_env_ud-registry.eqByStr20_1426" = getelementptr inbounds %"$$fundef_264_env_432", %"$$fundef_264_env_432"* %"$$fundef_264_envp_1419", i32 0, i32 2
  %"$ud-registry.eqByStr20_1427" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_1427", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_264_env_ud-registry.eqByStr20_1426", align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_264_cloval_1422", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_263", align 8
  %"$$retval_263_1428" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_263", align 8
  ret { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$retval_263_1428"
}

define internal %TName_Bool* @"$fundef_268"(%"$$fundef_268_env_434"* %0, [20 x i8]* %1) {
entry:
  %bs2 = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_268_env_bs1_1394" = getelementptr inbounds %"$$fundef_268_env_434", %"$$fundef_268_env_434"* %0, i32 0, i32 0
  %"$bs1_envload_1395" = load [20 x i8], [20 x i8]* %"$$fundef_268_env_bs1_1394", align 1
  %bs1 = alloca [20 x i8], align 1
  store [20 x i8] %"$bs1_envload_1395", [20 x i8]* %bs1, align 1
  %"$retval_269" = alloca %TName_Bool*, align 8
  %"$gasrem_1396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1397" = icmp ugt i64 20, %"$gasrem_1396"
  br i1 %"$gascmp_1397", label %"$out_of_gas_1398", label %"$have_gas_1399"

"$out_of_gas_1398":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1399"

"$have_gas_1399":                                 ; preds = %"$out_of_gas_1398", %entry
  %"$consume_1400" = sub i64 %"$gasrem_1396", 20
  store i64 %"$consume_1400", i64* @_gasrem, align 8
  %"$execptr_load_1401" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_1402" = alloca [20 x i8], align 1
  %"$bs1_1403" = load [20 x i8], [20 x i8]* %bs1, align 1
  store [20 x i8] %"$bs1_1403", [20 x i8]* %"$eq_bs1_1402", align 1
  %"$$eq_bs1_1402_1404" = bitcast [20 x i8]* %"$eq_bs1_1402" to i8*
  %"$eq_bs2_1405" = alloca [20 x i8], align 1
  store [20 x i8] %bs2, [20 x i8]* %"$eq_bs2_1405", align 1
  %"$$eq_bs2_1405_1406" = bitcast [20 x i8]* %"$eq_bs2_1405" to i8*
  %"$eq_call_1407" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_1401", i32 20, i8* %"$$eq_bs1_1402_1404", i8* %"$$eq_bs2_1405_1406")
  store %TName_Bool* %"$eq_call_1407", %TName_Bool** %"$retval_269", align 8
  %"$$retval_269_1409" = load %TName_Bool*, %TName_Bool** %"$retval_269", align 8
  ret %TName_Bool* %"$$retval_269_1409"
}

define internal { %TName_Bool* (i8*, [20 x i8]*)*, i8* } @"$fundef_266"(%"$$fundef_266_env_435"* %0, [20 x i8]* %1) {
entry:
  %bs1 = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_267" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1384" = icmp ugt i64 1, %"$gasrem_1383"
  br i1 %"$gascmp_1384", label %"$out_of_gas_1385", label %"$have_gas_1386"

"$out_of_gas_1385":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1386"

"$have_gas_1386":                                 ; preds = %"$out_of_gas_1385", %entry
  %"$consume_1387" = sub i64 %"$gasrem_1383", 1
  store i64 %"$consume_1387", i64* @_gasrem, align 8
  %"$$fundef_268_envp_1388_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_268_envp_1388_salloc" = call i8* @_salloc(i8* %"$$fundef_268_envp_1388_load", i64 20)
  %"$$fundef_268_envp_1388" = bitcast i8* %"$$fundef_268_envp_1388_salloc" to %"$$fundef_268_env_434"*
  %"$$fundef_268_env_voidp_1390" = bitcast %"$$fundef_268_env_434"* %"$$fundef_268_envp_1388" to i8*
  %"$$fundef_268_cloval_1391" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_268_env_434"*, [20 x i8]*)* @"$fundef_268" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_268_env_voidp_1390", 1
  %"$$fundef_268_env_bs1_1392" = getelementptr inbounds %"$$fundef_268_env_434", %"$$fundef_268_env_434"* %"$$fundef_268_envp_1388", i32 0, i32 0
  store [20 x i8] %bs1, [20 x i8]* %"$$fundef_268_env_bs1_1392", align 1
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_268_cloval_1391", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_267", align 8
  %"$$retval_267_1393" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_267", align 8
  ret { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$retval_267_1393"
}

define internal %TName_List_Message* @"$fundef_270"(%"$$fundef_270_env_436"* %0, i8* %1) {
entry:
  %"$$fundef_270_env_ud-registry.nilMessage_1369" = getelementptr inbounds %"$$fundef_270_env_436", %"$$fundef_270_env_436"* %0, i32 0, i32 0
  %"$ud-registry.nilMessage_envload_1370" = load %TName_List_Message*, %TName_List_Message** %"$$fundef_270_env_ud-registry.nilMessage_1369", align 8
  %ud-registry.nilMessage = alloca %TName_List_Message*, align 8
  store %TName_List_Message* %"$ud-registry.nilMessage_envload_1370", %TName_List_Message** %ud-registry.nilMessage, align 8
  %"$retval_271" = alloca %TName_List_Message*, align 8
  %"$gasrem_1371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1372" = icmp ugt i64 1, %"$gasrem_1371"
  br i1 %"$gascmp_1372", label %"$out_of_gas_1373", label %"$have_gas_1374"

"$out_of_gas_1373":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1374"

"$have_gas_1374":                                 ; preds = %"$out_of_gas_1373", %entry
  %"$consume_1375" = sub i64 %"$gasrem_1371", 1
  store i64 %"$consume_1375", i64* @_gasrem, align 8
  %"$ud-registry.nilMessage_1376" = load %TName_List_Message*, %TName_List_Message** %ud-registry.nilMessage, align 8
  %"$adtval_1377_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1377_salloc" = call i8* @_salloc(i8* %"$adtval_1377_load", i64 17)
  %"$adtval_1377" = bitcast i8* %"$adtval_1377_salloc" to %CName_Cons_Message*
  %"$adtgep_1378" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1377", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1378", align 1
  %"$adtgep_1379" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1377", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_1379", align 8
  %"$adtgep_1380" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1377", i32 0, i32 2
  store %TName_List_Message* %"$ud-registry.nilMessage_1376", %TName_List_Message** %"$adtgep_1380", align 8
  %"$adtptr_1381" = bitcast %CName_Cons_Message* %"$adtval_1377" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_1381", %TName_List_Message** %"$retval_271", align 8
  %"$$retval_271_1382" = load %TName_List_Message*, %TName_List_Message** %"$retval_271", align 8
  ret %TName_List_Message* %"$$retval_271_1382"
}

define internal { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_182"(%"$$fundef_182_env_437"* %0, [20 x i8]* %1) {
entry:
  %m = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_182_env_ListUtils.list_exists_1320" = getelementptr inbounds %"$$fundef_182_env_437", %"$$fundef_182_env_437"* %0, i32 0, i32 0
  %"$ListUtils.list_exists_envload_1321" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_182_env_ListUtils.list_exists_1320", align 8
  %ListUtils.list_exists = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_envload_1321", { i8*, i8* }** %ListUtils.list_exists, align 8
  %"$$fundef_182_env_f_1322" = getelementptr inbounds %"$$fundef_182_env_437", %"$$fundef_182_env_437"* %0, i32 0, i32 1
  %"$f_envload_1323" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_182_env_f_1322", align 8
  %f = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_envload_1323", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$retval_183" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_1324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1325" = icmp ugt i64 1, %"$gasrem_1324"
  br i1 %"$gascmp_1325", label %"$out_of_gas_1326", label %"$have_gas_1327"

"$out_of_gas_1326":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1327"

"$have_gas_1327":                                 ; preds = %"$out_of_gas_1326", %entry
  %"$consume_1328" = sub i64 %"$gasrem_1324", 1
  store i64 %"$consume_1328", i64* @_gasrem, align 8
  %ex_pred = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1330" = icmp ugt i64 1, %"$gasrem_1329"
  br i1 %"$gascmp_1330", label %"$out_of_gas_1331", label %"$have_gas_1332"

"$out_of_gas_1331":                               ; preds = %"$have_gas_1327"
  call void @_out_of_gas()
  br label %"$have_gas_1332"

"$have_gas_1332":                                 ; preds = %"$out_of_gas_1331", %"$have_gas_1327"
  %"$consume_1333" = sub i64 %"$gasrem_1329", 1
  store i64 %"$consume_1333", i64* @_gasrem, align 8
  %"$f_28" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$f_1334" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$f_fptr_1335" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_1334", 0
  %"$f_envptr_1336" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_1334", 1
  %"$f_m_1337" = alloca [20 x i8], align 1
  store [20 x i8] %m, [20 x i8]* %"$f_m_1337", align 1
  %"$f_call_1338" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_fptr_1335"(i8* %"$f_envptr_1336", [20 x i8]* %"$f_m_1337")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_call_1338", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$f_28", align 8
  %"$$f_28_1339" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$f_28", align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$f_28_1339", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %ex_pred, align 8
  %"$gasrem_1340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1341" = icmp ugt i64 1, %"$gasrem_1340"
  br i1 %"$gascmp_1341", label %"$out_of_gas_1342", label %"$have_gas_1343"

"$out_of_gas_1342":                               ; preds = %"$have_gas_1332"
  call void @_out_of_gas()
  br label %"$have_gas_1343"

"$have_gas_1343":                                 ; preds = %"$out_of_gas_1342", %"$have_gas_1332"
  %"$consume_1344" = sub i64 %"$gasrem_1340", 1
  store i64 %"$consume_1344", i64* @_gasrem, align 8
  %ex = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1346" = icmp ugt i64 1, %"$gasrem_1345"
  br i1 %"$gascmp_1346", label %"$out_of_gas_1347", label %"$have_gas_1348"

"$out_of_gas_1347":                               ; preds = %"$have_gas_1343"
  call void @_out_of_gas()
  br label %"$have_gas_1348"

"$have_gas_1348":                                 ; preds = %"$out_of_gas_1347", %"$have_gas_1343"
  %"$consume_1349" = sub i64 %"$gasrem_1345", 1
  store i64 %"$consume_1349", i64* @_gasrem, align 8
  %"$ListUtils.list_exists_1350" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_exists, align 8
  %"$ListUtils.list_exists_1351" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_exists_1350", i32 0
  %"$ListUtils.list_exists_1352" = bitcast { i8*, i8* }* %"$ListUtils.list_exists_1351" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_exists_1353" = load { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_exists_1352", align 8
  %"$ListUtils.list_exists_fptr_1354" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_exists_1353", 0
  %"$ListUtils.list_exists_envptr_1355" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_exists_1353", 1
  %"$ListUtils.list_exists_call_1356" = call { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_exists_fptr_1354"(i8* %"$ListUtils.list_exists_envptr_1355")
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_exists_call_1356", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %ex, align 8
  %"$gasrem_1357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1358" = icmp ugt i64 1, %"$gasrem_1357"
  br i1 %"$gascmp_1358", label %"$out_of_gas_1359", label %"$have_gas_1360"

"$out_of_gas_1359":                               ; preds = %"$have_gas_1348"
  call void @_out_of_gas()
  br label %"$have_gas_1360"

"$have_gas_1360":                                 ; preds = %"$out_of_gas_1359", %"$have_gas_1348"
  %"$consume_1361" = sub i64 %"$gasrem_1357", 1
  store i64 %"$consume_1361", i64* @_gasrem, align 8
  %"$ex_29" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$ex_1362" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %ex, align 8
  %"$ex_fptr_1363" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ex_1362", 0
  %"$ex_envptr_1364" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ex_1362", 1
  %"$ex_pred_1365" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %ex_pred, align 8
  %"$ex_call_1366" = call { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$ex_fptr_1363"(i8* %"$ex_envptr_1364", { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ex_pred_1365")
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$ex_call_1366", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$ex_29", align 8
  %"$$ex_29_1367" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$ex_29", align 8
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$ex_29_1367", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_183", align 8
  %"$$retval_183_1368" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_183", align 8
  ret { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_183_1368"
}

define internal { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_180"(%"$$fundef_180_env_438"* %0, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1) {
entry:
  %"$$fundef_180_env_ListUtils.list_exists_1305" = getelementptr inbounds %"$$fundef_180_env_438", %"$$fundef_180_env_438"* %0, i32 0, i32 0
  %"$ListUtils.list_exists_envload_1306" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_180_env_ListUtils.list_exists_1305", align 8
  %ListUtils.list_exists = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_envload_1306", { i8*, i8* }** %ListUtils.list_exists, align 8
  %"$retval_181" = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1308" = icmp ugt i64 1, %"$gasrem_1307"
  br i1 %"$gascmp_1308", label %"$out_of_gas_1309", label %"$have_gas_1310"

"$out_of_gas_1309":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1310"

"$have_gas_1310":                                 ; preds = %"$out_of_gas_1309", %entry
  %"$consume_1311" = sub i64 %"$gasrem_1307", 1
  store i64 %"$consume_1311", i64* @_gasrem, align 8
  %"$$fundef_182_envp_1312_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_182_envp_1312_salloc" = call i8* @_salloc(i8* %"$$fundef_182_envp_1312_load", i64 24)
  %"$$fundef_182_envp_1312" = bitcast i8* %"$$fundef_182_envp_1312_salloc" to %"$$fundef_182_env_437"*
  %"$$fundef_182_env_voidp_1314" = bitcast %"$$fundef_182_env_437"* %"$$fundef_182_envp_1312" to i8*
  %"$$fundef_182_cloval_1315" = insertvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_182_env_437"*, [20 x i8]*)* @"$fundef_182" to { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_182_env_voidp_1314", 1
  %"$$fundef_182_env_ListUtils.list_exists_1316" = getelementptr inbounds %"$$fundef_182_env_437", %"$$fundef_182_env_437"* %"$$fundef_182_envp_1312", i32 0, i32 0
  %"$ListUtils.list_exists_1317" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_exists, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_1317", { i8*, i8* }** %"$$fundef_182_env_ListUtils.list_exists_1316", align 8
  %"$$fundef_182_env_f_1318" = getelementptr inbounds %"$$fundef_182_env_437", %"$$fundef_182_env_437"* %"$$fundef_182_envp_1312", i32 0, i32 1
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_182_env_f_1318", align 8
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_182_cloval_1315", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_181", align 8
  %"$$retval_181_1319" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_181", align 8
  ret { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_181_1319"
}

define internal { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_178"(%"$$fundef_178_env_439"* %0) {
entry:
  %"$$fundef_178_env_ListUtils.list_exists_1291" = getelementptr inbounds %"$$fundef_178_env_439", %"$$fundef_178_env_439"* %0, i32 0, i32 0
  %"$ListUtils.list_exists_envload_1292" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_178_env_ListUtils.list_exists_1291", align 8
  %ListUtils.list_exists = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_envload_1292", { i8*, i8* }** %ListUtils.list_exists, align 8
  %"$retval_179" = alloca { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1294" = icmp ugt i64 1, %"$gasrem_1293"
  br i1 %"$gascmp_1294", label %"$out_of_gas_1295", label %"$have_gas_1296"

"$out_of_gas_1295":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1296"

"$have_gas_1296":                                 ; preds = %"$out_of_gas_1295", %entry
  %"$consume_1297" = sub i64 %"$gasrem_1293", 1
  store i64 %"$consume_1297", i64* @_gasrem, align 8
  %"$$fundef_180_envp_1298_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_180_envp_1298_salloc" = call i8* @_salloc(i8* %"$$fundef_180_envp_1298_load", i64 8)
  %"$$fundef_180_envp_1298" = bitcast i8* %"$$fundef_180_envp_1298_salloc" to %"$$fundef_180_env_438"*
  %"$$fundef_180_env_voidp_1300" = bitcast %"$$fundef_180_env_438"* %"$$fundef_180_envp_1298" to i8*
  %"$$fundef_180_cloval_1301" = insertvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })* bitcast ({ { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_180_env_438"*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })* @"$fundef_180" to { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*), i8* undef }, i8* %"$$fundef_180_env_voidp_1300", 1
  %"$$fundef_180_env_ListUtils.list_exists_1302" = getelementptr inbounds %"$$fundef_180_env_438", %"$$fundef_180_env_438"* %"$$fundef_180_envp_1298", i32 0, i32 0
  %"$ListUtils.list_exists_1303" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_exists, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_1303", { i8*, i8* }** %"$$fundef_180_env_ListUtils.list_exists_1302", align 8
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_180_cloval_1301", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_179", align 8
  %"$$retval_179_1304" = load { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_179", align 8
  ret { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_179_1304"
}

define internal %TName_Bool* @"$fundef_188"(%"$$fundef_188_env_440"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_188_env_ListUtils.list_find_1217" = getelementptr inbounds %"$$fundef_188_env_440", %"$$fundef_188_env_440"* %0, i32 0, i32 0
  %"$ListUtils.list_find_envload_1218" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_188_env_ListUtils.list_find_1217", align 8
  %ListUtils.list_find = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_envload_1218", { i8*, i8* }** %ListUtils.list_find, align 8
  %"$$fundef_188_env_p_1219" = getelementptr inbounds %"$$fundef_188_env_440", %"$$fundef_188_env_440"* %0, i32 0, i32 1
  %"$p_envload_1220" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_188_env_p_1219", align 8
  %p = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_envload_1220", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$retval_189" = alloca %TName_Bool*, align 8
  %"$gasrem_1221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1222" = icmp ugt i64 1, %"$gasrem_1221"
  br i1 %"$gascmp_1222", label %"$out_of_gas_1223", label %"$have_gas_1224"

"$out_of_gas_1223":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1224"

"$have_gas_1224":                                 ; preds = %"$out_of_gas_1223", %entry
  %"$consume_1225" = sub i64 %"$gasrem_1221", 1
  store i64 %"$consume_1225", i64* @_gasrem, align 8
  %find = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1227" = icmp ugt i64 1, %"$gasrem_1226"
  br i1 %"$gascmp_1227", label %"$out_of_gas_1228", label %"$have_gas_1229"

"$out_of_gas_1228":                               ; preds = %"$have_gas_1224"
  call void @_out_of_gas()
  br label %"$have_gas_1229"

"$have_gas_1229":                                 ; preds = %"$out_of_gas_1228", %"$have_gas_1224"
  %"$consume_1230" = sub i64 %"$gasrem_1226", 1
  store i64 %"$consume_1230", i64* @_gasrem, align 8
  %"$ListUtils.list_find_1231" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_find, align 8
  %"$ListUtils.list_find_1232" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_find_1231", i32 0
  %"$ListUtils.list_find_1233" = bitcast { i8*, i8* }* %"$ListUtils.list_find_1232" to { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_find_1234" = load { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_find_1233", align 8
  %"$ListUtils.list_find_fptr_1235" = extractvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_find_1234", 0
  %"$ListUtils.list_find_envptr_1236" = extractvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_find_1234", 1
  %"$ListUtils.list_find_call_1237" = call { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_find_fptr_1235"(i8* %"$ListUtils.list_find_envptr_1236")
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_find_call_1237", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %find, align 8
  %"$gasrem_1238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1239" = icmp ugt i64 1, %"$gasrem_1238"
  br i1 %"$gascmp_1239", label %"$out_of_gas_1240", label %"$have_gas_1241"

"$out_of_gas_1240":                               ; preds = %"$have_gas_1229"
  call void @_out_of_gas()
  br label %"$have_gas_1241"

"$have_gas_1241":                                 ; preds = %"$out_of_gas_1240", %"$have_gas_1229"
  %"$consume_1242" = sub i64 %"$gasrem_1238", 1
  store i64 %"$consume_1242", i64* @_gasrem, align 8
  %search = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_1243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1244" = icmp ugt i64 1, %"$gasrem_1243"
  br i1 %"$gascmp_1244", label %"$out_of_gas_1245", label %"$have_gas_1246"

"$out_of_gas_1245":                               ; preds = %"$have_gas_1241"
  call void @_out_of_gas()
  br label %"$have_gas_1246"

"$have_gas_1246":                                 ; preds = %"$out_of_gas_1245", %"$have_gas_1241"
  %"$consume_1247" = sub i64 %"$gasrem_1243", 1
  store i64 %"$consume_1247", i64* @_gasrem, align 8
  %"$find_26" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$find_1248" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %find, align 8
  %"$find_fptr_1249" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$find_1248", 0
  %"$find_envptr_1250" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$find_1248", 1
  %"$p_1251" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$find_call_1252" = call { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$find_fptr_1249"(i8* %"$find_envptr_1250", { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_1251")
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$find_call_1252", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$find_26", align 8
  %"$find_27" = alloca %TName_Option_ByStr20*, align 8
  %"$$find_26_1253" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$find_26", align 8
  %"$$find_26_fptr_1254" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$find_26_1253", 0
  %"$$find_26_envptr_1255" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$find_26_1253", 1
  %"$$find_26_call_1256" = call %TName_Option_ByStr20* %"$$find_26_fptr_1254"(i8* %"$$find_26_envptr_1255", %TName_List_ByStr20* %1)
  store %TName_Option_ByStr20* %"$$find_26_call_1256", %TName_Option_ByStr20** %"$find_27", align 8
  %"$$find_27_1257" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$find_27", align 8
  store %TName_Option_ByStr20* %"$$find_27_1257", %TName_Option_ByStr20** %search, align 8
  %"$gasrem_1258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1259" = icmp ugt i64 2, %"$gasrem_1258"
  br i1 %"$gascmp_1259", label %"$out_of_gas_1260", label %"$have_gas_1261"

"$out_of_gas_1260":                               ; preds = %"$have_gas_1246"
  call void @_out_of_gas()
  br label %"$have_gas_1261"

"$have_gas_1261":                                 ; preds = %"$out_of_gas_1260", %"$have_gas_1246"
  %"$consume_1262" = sub i64 %"$gasrem_1258", 2
  store i64 %"$consume_1262", i64* @_gasrem, align 8
  %"$search_1264" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %search, align 8
  %"$search_tag_1265" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$search_1264", i32 0, i32 0
  %"$search_tag_1266" = load i8, i8* %"$search_tag_1265", align 1
  switch i8 %"$search_tag_1266", label %"$empty_default_1267" [
    i8 0, label %"$Some_1268"
    i8 1, label %"$None_1280"
  ]

"$Some_1268":                                     ; preds = %"$have_gas_1261"
  %"$search_1269" = bitcast %TName_Option_ByStr20* %"$search_1264" to %CName_Some_ByStr20*
  %"$$search_3_gep_1270" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$search_1269", i32 0, i32 1
  %"$$search_3_load_1271" = load [20 x i8], [20 x i8]* %"$$search_3_gep_1270", align 1
  %"$search_3" = alloca [20 x i8], align 1
  store [20 x i8] %"$$search_3_load_1271", [20 x i8]* %"$search_3", align 1
  %"$gasrem_1272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1273" = icmp ugt i64 1, %"$gasrem_1272"
  br i1 %"$gascmp_1273", label %"$out_of_gas_1274", label %"$have_gas_1275"

"$out_of_gas_1274":                               ; preds = %"$Some_1268"
  call void @_out_of_gas()
  br label %"$have_gas_1275"

"$have_gas_1275":                                 ; preds = %"$out_of_gas_1274", %"$Some_1268"
  %"$consume_1276" = sub i64 %"$gasrem_1272", 1
  store i64 %"$consume_1276", i64* @_gasrem, align 8
  %"$adtval_1277_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1277_salloc" = call i8* @_salloc(i8* %"$adtval_1277_load", i64 1)
  %"$adtval_1277" = bitcast i8* %"$adtval_1277_salloc" to %CName_True*
  %"$adtgep_1278" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1277", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1278", align 1
  %"$adtptr_1279" = bitcast %CName_True* %"$adtval_1277" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1279", %TName_Bool** %"$retval_189", align 8
  br label %"$matchsucc_1263"

"$None_1280":                                     ; preds = %"$have_gas_1261"
  %"$search_1281" = bitcast %TName_Option_ByStr20* %"$search_1264" to %CName_None_ByStr20*
  %"$gasrem_1282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1283" = icmp ugt i64 1, %"$gasrem_1282"
  br i1 %"$gascmp_1283", label %"$out_of_gas_1284", label %"$have_gas_1285"

"$out_of_gas_1284":                               ; preds = %"$None_1280"
  call void @_out_of_gas()
  br label %"$have_gas_1285"

"$have_gas_1285":                                 ; preds = %"$out_of_gas_1284", %"$None_1280"
  %"$consume_1286" = sub i64 %"$gasrem_1282", 1
  store i64 %"$consume_1286", i64* @_gasrem, align 8
  %"$adtval_1287_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1287_salloc" = call i8* @_salloc(i8* %"$adtval_1287_load", i64 1)
  %"$adtval_1287" = bitcast i8* %"$adtval_1287_salloc" to %CName_False*
  %"$adtgep_1288" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1287", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1288", align 1
  %"$adtptr_1289" = bitcast %CName_False* %"$adtval_1287" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1289", %TName_Bool** %"$retval_189", align 8
  br label %"$matchsucc_1263"

"$empty_default_1267":                            ; preds = %"$have_gas_1261"
  br label %"$matchsucc_1263"

"$matchsucc_1263":                                ; preds = %"$have_gas_1285", %"$have_gas_1275", %"$empty_default_1267"
  %"$$retval_189_1290" = load %TName_Bool*, %TName_Bool** %"$retval_189", align 8
  ret %TName_Bool* %"$$retval_189_1290"
}

define internal { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_186"(%"$$fundef_186_env_441"* %0, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1) {
entry:
  %"$$fundef_186_env_ListUtils.list_find_1202" = getelementptr inbounds %"$$fundef_186_env_441", %"$$fundef_186_env_441"* %0, i32 0, i32 0
  %"$ListUtils.list_find_envload_1203" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_186_env_ListUtils.list_find_1202", align 8
  %ListUtils.list_find = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_envload_1203", { i8*, i8* }** %ListUtils.list_find, align 8
  %"$retval_187" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_1204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1205" = icmp ugt i64 1, %"$gasrem_1204"
  br i1 %"$gascmp_1205", label %"$out_of_gas_1206", label %"$have_gas_1207"

"$out_of_gas_1206":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1207"

"$have_gas_1207":                                 ; preds = %"$out_of_gas_1206", %entry
  %"$consume_1208" = sub i64 %"$gasrem_1204", 1
  store i64 %"$consume_1208", i64* @_gasrem, align 8
  %"$$fundef_188_envp_1209_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_188_envp_1209_salloc" = call i8* @_salloc(i8* %"$$fundef_188_envp_1209_load", i64 24)
  %"$$fundef_188_envp_1209" = bitcast i8* %"$$fundef_188_envp_1209_salloc" to %"$$fundef_188_env_440"*
  %"$$fundef_188_env_voidp_1211" = bitcast %"$$fundef_188_env_440"* %"$$fundef_188_envp_1209" to i8*
  %"$$fundef_188_cloval_1212" = insertvalue { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } { %TName_Bool* (i8*, %TName_List_ByStr20*)* bitcast (%TName_Bool* (%"$$fundef_188_env_440"*, %TName_List_ByStr20*)* @"$fundef_188" to %TName_Bool* (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_188_env_voidp_1211", 1
  %"$$fundef_188_env_ListUtils.list_find_1213" = getelementptr inbounds %"$$fundef_188_env_440", %"$$fundef_188_env_440"* %"$$fundef_188_envp_1209", i32 0, i32 0
  %"$ListUtils.list_find_1214" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_find, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_1214", { i8*, i8* }** %"$$fundef_188_env_ListUtils.list_find_1213", align 8
  %"$$fundef_188_env_p_1215" = getelementptr inbounds %"$$fundef_188_env_440", %"$$fundef_188_env_440"* %"$$fundef_188_envp_1209", i32 0, i32 1
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_188_env_p_1215", align 8
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_188_cloval_1212", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_187", align 8
  %"$$retval_187_1216" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_187", align 8
  ret { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_187_1216"
}

define internal { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_184"(%"$$fundef_184_env_442"* %0) {
entry:
  %"$$fundef_184_env_ListUtils.list_find_1188" = getelementptr inbounds %"$$fundef_184_env_442", %"$$fundef_184_env_442"* %0, i32 0, i32 0
  %"$ListUtils.list_find_envload_1189" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_184_env_ListUtils.list_find_1188", align 8
  %ListUtils.list_find = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_envload_1189", { i8*, i8* }** %ListUtils.list_find, align 8
  %"$retval_185" = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1191" = icmp ugt i64 1, %"$gasrem_1190"
  br i1 %"$gascmp_1191", label %"$out_of_gas_1192", label %"$have_gas_1193"

"$out_of_gas_1192":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1193"

"$have_gas_1193":                                 ; preds = %"$out_of_gas_1192", %entry
  %"$consume_1194" = sub i64 %"$gasrem_1190", 1
  store i64 %"$consume_1194", i64* @_gasrem, align 8
  %"$$fundef_186_envp_1195_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_186_envp_1195_salloc" = call i8* @_salloc(i8* %"$$fundef_186_envp_1195_load", i64 8)
  %"$$fundef_186_envp_1195" = bitcast i8* %"$$fundef_186_envp_1195_salloc" to %"$$fundef_186_env_441"*
  %"$$fundef_186_env_voidp_1197" = bitcast %"$$fundef_186_env_441"* %"$$fundef_186_envp_1195" to i8*
  %"$$fundef_186_cloval_1198" = insertvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* bitcast ({ %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_186_env_441"*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* @"$fundef_186" to { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*), i8* undef }, i8* %"$$fundef_186_env_voidp_1197", 1
  %"$$fundef_186_env_ListUtils.list_find_1199" = getelementptr inbounds %"$$fundef_186_env_441", %"$$fundef_186_env_441"* %"$$fundef_186_envp_1195", i32 0, i32 0
  %"$ListUtils.list_find_1200" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_find, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_1200", { i8*, i8* }** %"$$fundef_186_env_ListUtils.list_find_1199", align 8
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_186_cloval_1198", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_185", align 8
  %"$$retval_185_1201" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_185", align 8
  ret { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_185_1201"
}

define internal %TName_Option_ByStr20* @"$fundef_198"(%"$$fundef_198_env_443"* %0, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %1) {
entry:
  %"$$fundef_198_env_init_1130" = getelementptr inbounds %"$$fundef_198_env_443", %"$$fundef_198_env_443"* %0, i32 0, i32 0
  %"$init_envload_1131" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_198_env_init_1130", align 8
  %init = alloca %TName_Option_ByStr20*, align 8
  store %TName_Option_ByStr20* %"$init_envload_1131", %TName_Option_ByStr20** %init, align 8
  %"$$fundef_198_env_p_1132" = getelementptr inbounds %"$$fundef_198_env_443", %"$$fundef_198_env_443"* %0, i32 0, i32 1
  %"$p_envload_1133" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_198_env_p_1132", align 8
  %p = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_envload_1133", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$$fundef_198_env_x_1134" = getelementptr inbounds %"$$fundef_198_env_443", %"$$fundef_198_env_443"* %0, i32 0, i32 2
  %"$x_envload_1135" = load [20 x i8], [20 x i8]* %"$$fundef_198_env_x_1134", align 1
  %x = alloca [20 x i8], align 1
  store [20 x i8] %"$x_envload_1135", [20 x i8]* %x, align 1
  %"$retval_199" = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_1136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1137" = icmp ugt i64 1, %"$gasrem_1136"
  br i1 %"$gascmp_1137", label %"$out_of_gas_1138", label %"$have_gas_1139"

"$out_of_gas_1138":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1139"

"$have_gas_1139":                                 ; preds = %"$out_of_gas_1138", %entry
  %"$consume_1140" = sub i64 %"$gasrem_1136", 1
  store i64 %"$consume_1140", i64* @_gasrem, align 8
  %p_x = alloca %TName_Bool*, align 8
  %"$gasrem_1141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1142" = icmp ugt i64 1, %"$gasrem_1141"
  br i1 %"$gascmp_1142", label %"$out_of_gas_1143", label %"$have_gas_1144"

"$out_of_gas_1143":                               ; preds = %"$have_gas_1139"
  call void @_out_of_gas()
  br label %"$have_gas_1144"

"$have_gas_1144":                                 ; preds = %"$out_of_gas_1143", %"$have_gas_1139"
  %"$consume_1145" = sub i64 %"$gasrem_1141", 1
  store i64 %"$consume_1145", i64* @_gasrem, align 8
  %"$p_22" = alloca %TName_Bool*, align 8
  %"$p_1146" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$p_fptr_1147" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_1146", 0
  %"$p_envptr_1148" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_1146", 1
  %"$p_x_1149" = alloca [20 x i8], align 1
  %"$x_1150" = load [20 x i8], [20 x i8]* %x, align 1
  store [20 x i8] %"$x_1150", [20 x i8]* %"$p_x_1149", align 1
  %"$p_call_1151" = call %TName_Bool* %"$p_fptr_1147"(i8* %"$p_envptr_1148", [20 x i8]* %"$p_x_1149")
  store %TName_Bool* %"$p_call_1151", %TName_Bool** %"$p_22", align 8
  %"$$p_22_1152" = load %TName_Bool*, %TName_Bool** %"$p_22", align 8
  store %TName_Bool* %"$$p_22_1152", %TName_Bool** %p_x, align 8
  %"$gasrem_1153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1154" = icmp ugt i64 2, %"$gasrem_1153"
  br i1 %"$gascmp_1154", label %"$out_of_gas_1155", label %"$have_gas_1156"

"$out_of_gas_1155":                               ; preds = %"$have_gas_1144"
  call void @_out_of_gas()
  br label %"$have_gas_1156"

"$have_gas_1156":                                 ; preds = %"$out_of_gas_1155", %"$have_gas_1144"
  %"$consume_1157" = sub i64 %"$gasrem_1153", 2
  store i64 %"$consume_1157", i64* @_gasrem, align 8
  %"$p_x_1159" = load %TName_Bool*, %TName_Bool** %p_x, align 8
  %"$p_x_tag_1160" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$p_x_1159", i32 0, i32 0
  %"$p_x_tag_1161" = load i8, i8* %"$p_x_tag_1160", align 1
  switch i8 %"$p_x_tag_1161", label %"$empty_default_1162" [
    i8 0, label %"$True_1163"
    i8 1, label %"$False_1175"
  ]

"$True_1163":                                     ; preds = %"$have_gas_1156"
  %"$p_x_1164" = bitcast %TName_Bool* %"$p_x_1159" to %CName_True*
  %"$gasrem_1165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1166" = icmp ugt i64 1, %"$gasrem_1165"
  br i1 %"$gascmp_1166", label %"$out_of_gas_1167", label %"$have_gas_1168"

"$out_of_gas_1167":                               ; preds = %"$True_1163"
  call void @_out_of_gas()
  br label %"$have_gas_1168"

"$have_gas_1168":                                 ; preds = %"$out_of_gas_1167", %"$True_1163"
  %"$consume_1169" = sub i64 %"$gasrem_1165", 1
  store i64 %"$consume_1169", i64* @_gasrem, align 8
  %"$x_1170" = load [20 x i8], [20 x i8]* %x, align 1
  %"$adtval_1171_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1171_salloc" = call i8* @_salloc(i8* %"$adtval_1171_load", i64 21)
  %"$adtval_1171" = bitcast i8* %"$adtval_1171_salloc" to %CName_Some_ByStr20*
  %"$adtgep_1172" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$adtval_1171", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1172", align 1
  %"$adtgep_1173" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$adtval_1171", i32 0, i32 1
  store [20 x i8] %"$x_1170", [20 x i8]* %"$adtgep_1173", align 1
  %"$adtptr_1174" = bitcast %CName_Some_ByStr20* %"$adtval_1171" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$adtptr_1174", %TName_Option_ByStr20** %"$retval_199", align 8
  br label %"$matchsucc_1158"

"$False_1175":                                    ; preds = %"$have_gas_1156"
  %"$p_x_1176" = bitcast %TName_Bool* %"$p_x_1159" to %CName_False*
  %"$gasrem_1177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1178" = icmp ugt i64 1, %"$gasrem_1177"
  br i1 %"$gascmp_1178", label %"$out_of_gas_1179", label %"$have_gas_1180"

"$out_of_gas_1179":                               ; preds = %"$False_1175"
  call void @_out_of_gas()
  br label %"$have_gas_1180"

"$have_gas_1180":                                 ; preds = %"$out_of_gas_1179", %"$False_1175"
  %"$consume_1181" = sub i64 %"$gasrem_1177", 1
  store i64 %"$consume_1181", i64* @_gasrem, align 8
  %"$recurse_23" = alloca %TName_Option_ByStr20*, align 8
  %"$recurse_fptr_1182" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %1, 0
  %"$recurse_envptr_1183" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %1, 1
  %"$init_1184" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init, align 8
  %"$recurse_call_1185" = call %TName_Option_ByStr20* %"$recurse_fptr_1182"(i8* %"$recurse_envptr_1183", %TName_Option_ByStr20* %"$init_1184")
  store %TName_Option_ByStr20* %"$recurse_call_1185", %TName_Option_ByStr20** %"$recurse_23", align 8
  %"$$recurse_23_1186" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$recurse_23", align 8
  store %TName_Option_ByStr20* %"$$recurse_23_1186", %TName_Option_ByStr20** %"$retval_199", align 8
  br label %"$matchsucc_1158"

"$empty_default_1162":                            ; preds = %"$have_gas_1156"
  br label %"$matchsucc_1158"

"$matchsucc_1158":                                ; preds = %"$have_gas_1180", %"$have_gas_1168", %"$empty_default_1162"
  %"$$retval_199_1187" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$retval_199", align 8
  ret %TName_Option_ByStr20* %"$$retval_199_1187"
}

define internal { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } @"$fundef_196"(%"$$fundef_196_env_444"* %0, [20 x i8]* %1) {
entry:
  %x = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_196_env_init_1111" = getelementptr inbounds %"$$fundef_196_env_444", %"$$fundef_196_env_444"* %0, i32 0, i32 0
  %"$init_envload_1112" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_196_env_init_1111", align 8
  %init = alloca %TName_Option_ByStr20*, align 8
  store %TName_Option_ByStr20* %"$init_envload_1112", %TName_Option_ByStr20** %init, align 8
  %"$$fundef_196_env_p_1113" = getelementptr inbounds %"$$fundef_196_env_444", %"$$fundef_196_env_444"* %0, i32 0, i32 1
  %"$p_envload_1114" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_196_env_p_1113", align 8
  %p = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_envload_1114", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$retval_197" = alloca { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, align 8
  %"$gasrem_1115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1116" = icmp ugt i64 1, %"$gasrem_1115"
  br i1 %"$gascmp_1116", label %"$out_of_gas_1117", label %"$have_gas_1118"

"$out_of_gas_1117":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1118"

"$have_gas_1118":                                 ; preds = %"$out_of_gas_1117", %entry
  %"$consume_1119" = sub i64 %"$gasrem_1115", 1
  store i64 %"$consume_1119", i64* @_gasrem, align 8
  %"$$fundef_198_envp_1120_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_198_envp_1120_salloc" = call i8* @_salloc(i8* %"$$fundef_198_envp_1120_load", i64 48)
  %"$$fundef_198_envp_1120" = bitcast i8* %"$$fundef_198_envp_1120_salloc" to %"$$fundef_198_env_443"*
  %"$$fundef_198_env_voidp_1122" = bitcast %"$$fundef_198_env_443"* %"$$fundef_198_envp_1120" to i8*
  %"$$fundef_198_cloval_1123" = insertvalue { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })* bitcast (%TName_Option_ByStr20* (%"$$fundef_198_env_443"*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })* @"$fundef_198" to %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*), i8* undef }, i8* %"$$fundef_198_env_voidp_1122", 1
  %"$$fundef_198_env_init_1124" = getelementptr inbounds %"$$fundef_198_env_443", %"$$fundef_198_env_443"* %"$$fundef_198_envp_1120", i32 0, i32 0
  %"$init_1125" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init, align 8
  store %TName_Option_ByStr20* %"$init_1125", %TName_Option_ByStr20** %"$$fundef_198_env_init_1124", align 8
  %"$$fundef_198_env_p_1126" = getelementptr inbounds %"$$fundef_198_env_443", %"$$fundef_198_env_443"* %"$$fundef_198_envp_1120", i32 0, i32 1
  %"$p_1127" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_1127", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_198_env_p_1126", align 8
  %"$$fundef_198_env_x_1128" = getelementptr inbounds %"$$fundef_198_env_443", %"$$fundef_198_env_443"* %"$$fundef_198_envp_1120", i32 0, i32 2
  store [20 x i8] %x, [20 x i8]* %"$$fundef_198_env_x_1128", align 1
  store { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$fundef_198_cloval_1123", { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_197", align 8
  %"$$retval_197_1129" = load { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_197", align 8
  ret { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$retval_197_1129"
}

define internal { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_194"(%"$$fundef_194_env_445"* %0, %TName_Option_ByStr20* %1) {
entry:
  %"$$fundef_194_env_init_1093" = getelementptr inbounds %"$$fundef_194_env_445", %"$$fundef_194_env_445"* %0, i32 0, i32 0
  %"$init_envload_1094" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_194_env_init_1093", align 8
  %init = alloca %TName_Option_ByStr20*, align 8
  store %TName_Option_ByStr20* %"$init_envload_1094", %TName_Option_ByStr20** %init, align 8
  %"$$fundef_194_env_p_1095" = getelementptr inbounds %"$$fundef_194_env_445", %"$$fundef_194_env_445"* %0, i32 0, i32 1
  %"$p_envload_1096" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_194_env_p_1095", align 8
  %p = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_envload_1096", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$retval_195" = alloca { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1097" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1098" = icmp ugt i64 1, %"$gasrem_1097"
  br i1 %"$gascmp_1098", label %"$out_of_gas_1099", label %"$have_gas_1100"

"$out_of_gas_1099":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1100"

"$have_gas_1100":                                 ; preds = %"$out_of_gas_1099", %entry
  %"$consume_1101" = sub i64 %"$gasrem_1097", 1
  store i64 %"$consume_1101", i64* @_gasrem, align 8
  %"$$fundef_196_envp_1102_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_196_envp_1102_salloc" = call i8* @_salloc(i8* %"$$fundef_196_envp_1102_load", i64 24)
  %"$$fundef_196_envp_1102" = bitcast i8* %"$$fundef_196_envp_1102_salloc" to %"$$fundef_196_env_444"*
  %"$$fundef_196_env_voidp_1104" = bitcast %"$$fundef_196_env_444"* %"$$fundef_196_envp_1102" to i8*
  %"$$fundef_196_cloval_1105" = insertvalue { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (%"$$fundef_196_env_444"*, [20 x i8]*)* @"$fundef_196" to { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_196_env_voidp_1104", 1
  %"$$fundef_196_env_init_1106" = getelementptr inbounds %"$$fundef_196_env_444", %"$$fundef_196_env_444"* %"$$fundef_196_envp_1102", i32 0, i32 0
  %"$init_1107" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init, align 8
  store %TName_Option_ByStr20* %"$init_1107", %TName_Option_ByStr20** %"$$fundef_196_env_init_1106", align 8
  %"$$fundef_196_env_p_1108" = getelementptr inbounds %"$$fundef_196_env_444", %"$$fundef_196_env_444"* %"$$fundef_196_envp_1102", i32 0, i32 1
  %"$p_1109" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_1109", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_196_env_p_1108", align 8
  store { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_196_cloval_1105", { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_195", align 8
  %"$$retval_195_1110" = load { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_195", align 8
  ret { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_195_1110"
}

define internal { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_192"(%"$$fundef_192_env_446"* %0, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1) {
entry:
  %"$$fundef_192_env_list_foldk_1021" = getelementptr inbounds %"$$fundef_192_env_446", %"$$fundef_192_env_446"* %0, i32 0, i32 0
  %"$list_foldk_envload_1022" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_192_env_list_foldk_1021", align 8
  %list_foldk = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldk_envload_1022", { i8*, i8* }** %list_foldk, align 8
  %"$retval_193" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_1023" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1024" = icmp ugt i64 1, %"$gasrem_1023"
  br i1 %"$gascmp_1024", label %"$out_of_gas_1025", label %"$have_gas_1026"

"$out_of_gas_1025":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1026"

"$have_gas_1026":                                 ; preds = %"$out_of_gas_1025", %entry
  %"$consume_1027" = sub i64 %"$gasrem_1023", 1
  store i64 %"$consume_1027", i64* @_gasrem, align 8
  %foldk = alloca { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, align 8
  %"$gasrem_1028" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1029" = icmp ugt i64 1, %"$gasrem_1028"
  br i1 %"$gascmp_1029", label %"$out_of_gas_1030", label %"$have_gas_1031"

"$out_of_gas_1030":                               ; preds = %"$have_gas_1026"
  call void @_out_of_gas()
  br label %"$have_gas_1031"

"$have_gas_1031":                                 ; preds = %"$out_of_gas_1030", %"$have_gas_1026"
  %"$consume_1032" = sub i64 %"$gasrem_1028", 1
  store i64 %"$consume_1032", i64* @_gasrem, align 8
  %"$list_foldk_1033" = load { i8*, i8* }*, { i8*, i8* }** %list_foldk, align 8
  %"$list_foldk_1034" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldk_1033", i32 0
  %"$list_foldk_1035" = bitcast { i8*, i8* }* %"$list_foldk_1034" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldk_1036" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldk_1035", align 8
  %"$list_foldk_fptr_1037" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldk_1036", 0
  %"$list_foldk_envptr_1038" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldk_1036", 1
  %"$list_foldk_call_1039" = call { i8*, i8* }* %"$list_foldk_fptr_1037"(i8* %"$list_foldk_envptr_1038")
  %"$list_foldk_1040" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldk_call_1039", i32 2
  %"$list_foldk_1041" = bitcast { i8*, i8* }* %"$list_foldk_1040" to { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldk_1042" = load { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldk_1041", align 8
  %"$list_foldk_fptr_1043" = extractvalue { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldk_1042", 0
  %"$list_foldk_envptr_1044" = extractvalue { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldk_1042", 1
  %"$list_foldk_call_1045" = call { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$list_foldk_fptr_1043"(i8* %"$list_foldk_envptr_1044")
  store { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$list_foldk_call_1045", { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %foldk, align 8
  %"$gasrem_1046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1047" = icmp ugt i64 1, %"$gasrem_1046"
  br i1 %"$gascmp_1047", label %"$out_of_gas_1048", label %"$have_gas_1049"

"$out_of_gas_1048":                               ; preds = %"$have_gas_1031"
  call void @_out_of_gas()
  br label %"$have_gas_1049"

"$have_gas_1049":                                 ; preds = %"$out_of_gas_1048", %"$have_gas_1031"
  %"$consume_1050" = sub i64 %"$gasrem_1046", 1
  store i64 %"$consume_1050", i64* @_gasrem, align 8
  %init = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_1051" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1052" = icmp ugt i64 1, %"$gasrem_1051"
  br i1 %"$gascmp_1052", label %"$out_of_gas_1053", label %"$have_gas_1054"

"$out_of_gas_1053":                               ; preds = %"$have_gas_1049"
  call void @_out_of_gas()
  br label %"$have_gas_1054"

"$have_gas_1054":                                 ; preds = %"$out_of_gas_1053", %"$have_gas_1049"
  %"$consume_1055" = sub i64 %"$gasrem_1051", 1
  store i64 %"$consume_1055", i64* @_gasrem, align 8
  %"$adtval_1056_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1056_salloc" = call i8* @_salloc(i8* %"$adtval_1056_load", i64 1)
  %"$adtval_1056" = bitcast i8* %"$adtval_1056_salloc" to %CName_None_ByStr20*
  %"$adtgep_1057" = getelementptr inbounds %CName_None_ByStr20, %CName_None_ByStr20* %"$adtval_1056", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1057", align 1
  %"$adtptr_1058" = bitcast %CName_None_ByStr20* %"$adtval_1056" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$adtptr_1058", %TName_Option_ByStr20** %init, align 8
  %"$gasrem_1059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1060" = icmp ugt i64 1, %"$gasrem_1059"
  br i1 %"$gascmp_1060", label %"$out_of_gas_1061", label %"$have_gas_1062"

"$out_of_gas_1061":                               ; preds = %"$have_gas_1054"
  call void @_out_of_gas()
  br label %"$have_gas_1062"

"$have_gas_1062":                                 ; preds = %"$out_of_gas_1061", %"$have_gas_1054"
  %"$consume_1063" = sub i64 %"$gasrem_1059", 1
  store i64 %"$consume_1063", i64* @_gasrem, align 8
  %predicate_step = alloca { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$gasrem_1064" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1065" = icmp ugt i64 1, %"$gasrem_1064"
  br i1 %"$gascmp_1065", label %"$out_of_gas_1066", label %"$have_gas_1067"

"$out_of_gas_1066":                               ; preds = %"$have_gas_1062"
  call void @_out_of_gas()
  br label %"$have_gas_1067"

"$have_gas_1067":                                 ; preds = %"$out_of_gas_1066", %"$have_gas_1062"
  %"$consume_1068" = sub i64 %"$gasrem_1064", 1
  store i64 %"$consume_1068", i64* @_gasrem, align 8
  %"$$fundef_194_envp_1069_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_194_envp_1069_salloc" = call i8* @_salloc(i8* %"$$fundef_194_envp_1069_load", i64 24)
  %"$$fundef_194_envp_1069" = bitcast i8* %"$$fundef_194_envp_1069_salloc" to %"$$fundef_194_env_445"*
  %"$$fundef_194_env_voidp_1071" = bitcast %"$$fundef_194_env_445"* %"$$fundef_194_envp_1069" to i8*
  %"$$fundef_194_cloval_1072" = insertvalue { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)* bitcast ({ { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_194_env_445"*, %TName_Option_ByStr20*)* @"$fundef_194" to { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_194_env_voidp_1071", 1
  %"$$fundef_194_env_init_1073" = getelementptr inbounds %"$$fundef_194_env_445", %"$$fundef_194_env_445"* %"$$fundef_194_envp_1069", i32 0, i32 0
  %"$init_1074" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init, align 8
  store %TName_Option_ByStr20* %"$init_1074", %TName_Option_ByStr20** %"$$fundef_194_env_init_1073", align 8
  %"$$fundef_194_env_p_1075" = getelementptr inbounds %"$$fundef_194_env_445", %"$$fundef_194_env_445"* %"$$fundef_194_envp_1069", i32 0, i32 1
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_194_env_p_1075", align 8
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_194_cloval_1072", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %predicate_step, align 8
  %"$gasrem_1076" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1077" = icmp ugt i64 1, %"$gasrem_1076"
  br i1 %"$gascmp_1077", label %"$out_of_gas_1078", label %"$have_gas_1079"

"$out_of_gas_1078":                               ; preds = %"$have_gas_1067"
  call void @_out_of_gas()
  br label %"$have_gas_1079"

"$have_gas_1079":                                 ; preds = %"$out_of_gas_1078", %"$have_gas_1067"
  %"$consume_1080" = sub i64 %"$gasrem_1076", 1
  store i64 %"$consume_1080", i64* @_gasrem, align 8
  %"$foldk_24" = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$foldk_1081" = load { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %foldk, align 8
  %"$foldk_fptr_1082" = extractvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$foldk_1081", 0
  %"$foldk_envptr_1083" = extractvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$foldk_1081", 1
  %"$predicate_step_1084" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %predicate_step, align 8
  %"$foldk_call_1085" = call { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$foldk_fptr_1082"(i8* %"$foldk_envptr_1083", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$predicate_step_1084")
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$foldk_call_1085", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$foldk_24", align 8
  %"$foldk_25" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$$foldk_24_1086" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$foldk_24", align 8
  %"$$foldk_24_fptr_1087" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$foldk_24_1086", 0
  %"$$foldk_24_envptr_1088" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$foldk_24_1086", 1
  %"$init_1089" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init, align 8
  %"$$foldk_24_call_1090" = call { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldk_24_fptr_1087"(i8* %"$$foldk_24_envptr_1088", %TName_Option_ByStr20* %"$init_1089")
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldk_24_call_1090", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldk_25", align 8
  %"$$foldk_25_1091" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldk_25", align 8
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldk_25_1091", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_193", align 8
  %"$$retval_193_1092" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_193", align 8
  ret { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_193_1092"
}

define internal { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_190"(%"$$fundef_190_env_447"* %0) {
entry:
  %"$$fundef_190_env_list_foldk_1007" = getelementptr inbounds %"$$fundef_190_env_447", %"$$fundef_190_env_447"* %0, i32 0, i32 0
  %"$list_foldk_envload_1008" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_190_env_list_foldk_1007", align 8
  %list_foldk = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldk_envload_1008", { i8*, i8* }** %list_foldk, align 8
  %"$retval_191" = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1009" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1010" = icmp ugt i64 1, %"$gasrem_1009"
  br i1 %"$gascmp_1010", label %"$out_of_gas_1011", label %"$have_gas_1012"

"$out_of_gas_1011":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1012"

"$have_gas_1012":                                 ; preds = %"$out_of_gas_1011", %entry
  %"$consume_1013" = sub i64 %"$gasrem_1009", 1
  store i64 %"$consume_1013", i64* @_gasrem, align 8
  %"$$fundef_192_envp_1014_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_192_envp_1014_salloc" = call i8* @_salloc(i8* %"$$fundef_192_envp_1014_load", i64 8)
  %"$$fundef_192_envp_1014" = bitcast i8* %"$$fundef_192_envp_1014_salloc" to %"$$fundef_192_env_446"*
  %"$$fundef_192_env_voidp_1016" = bitcast %"$$fundef_192_env_446"* %"$$fundef_192_envp_1014" to i8*
  %"$$fundef_192_cloval_1017" = insertvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* bitcast ({ %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_192_env_446"*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* @"$fundef_192" to { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*), i8* undef }, i8* %"$$fundef_192_env_voidp_1016", 1
  %"$$fundef_192_env_list_foldk_1018" = getelementptr inbounds %"$$fundef_192_env_446", %"$$fundef_192_env_446"* %"$$fundef_192_envp_1014", i32 0, i32 0
  %"$list_foldk_1019" = load { i8*, i8* }*, { i8*, i8* }** %list_foldk, align 8
  store { i8*, i8* }* %"$list_foldk_1019", { i8*, i8* }** %"$$fundef_192_env_list_foldk_1018", align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_192_cloval_1017", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_191", align 8
  %"$$retval_191_1020" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_191", align 8
  ret { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_191_1020"
}

define internal %TName_List_ByStr20* @"$fundef_206"(%"$$fundef_206_env_448"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_206_env_f_955" = getelementptr inbounds %"$$fundef_206_env_448", %"$$fundef_206_env_448"* %0, i32 0, i32 0
  %"$f_envload_956" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_206_env_f_955", align 8
  %f = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_envload_956", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$$fundef_206_env_h_957" = getelementptr inbounds %"$$fundef_206_env_448", %"$$fundef_206_env_448"* %0, i32 0, i32 1
  %"$h_envload_958" = load [20 x i8], [20 x i8]* %"$$fundef_206_env_h_957", align 1
  %h = alloca [20 x i8], align 1
  store [20 x i8] %"$h_envload_958", [20 x i8]* %h, align 1
  %"$retval_207" = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_959" = load i64, i64* @_gasrem, align 8
  %"$gascmp_960" = icmp ugt i64 1, %"$gasrem_959"
  br i1 %"$gascmp_960", label %"$out_of_gas_961", label %"$have_gas_962"

"$out_of_gas_961":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_962"

"$have_gas_962":                                  ; preds = %"$out_of_gas_961", %entry
  %"$consume_963" = sub i64 %"$gasrem_959", 1
  store i64 %"$consume_963", i64* @_gasrem, align 8
  %h1 = alloca %TName_Bool*, align 8
  %"$gasrem_964" = load i64, i64* @_gasrem, align 8
  %"$gascmp_965" = icmp ugt i64 1, %"$gasrem_964"
  br i1 %"$gascmp_965", label %"$out_of_gas_966", label %"$have_gas_967"

"$out_of_gas_966":                                ; preds = %"$have_gas_962"
  call void @_out_of_gas()
  br label %"$have_gas_967"

"$have_gas_967":                                  ; preds = %"$out_of_gas_966", %"$have_gas_962"
  %"$consume_968" = sub i64 %"$gasrem_964", 1
  store i64 %"$consume_968", i64* @_gasrem, align 8
  %"$f_19" = alloca %TName_Bool*, align 8
  %"$f_969" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$f_fptr_970" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_969", 0
  %"$f_envptr_971" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_969", 1
  %"$f_h_972" = alloca [20 x i8], align 1
  %"$h_973" = load [20 x i8], [20 x i8]* %h, align 1
  store [20 x i8] %"$h_973", [20 x i8]* %"$f_h_972", align 1
  %"$f_call_974" = call %TName_Bool* %"$f_fptr_970"(i8* %"$f_envptr_971", [20 x i8]* %"$f_h_972")
  store %TName_Bool* %"$f_call_974", %TName_Bool** %"$f_19", align 8
  %"$$f_19_975" = load %TName_Bool*, %TName_Bool** %"$f_19", align 8
  store %TName_Bool* %"$$f_19_975", %TName_Bool** %h1, align 8
  %"$gasrem_976" = load i64, i64* @_gasrem, align 8
  %"$gascmp_977" = icmp ugt i64 2, %"$gasrem_976"
  br i1 %"$gascmp_977", label %"$out_of_gas_978", label %"$have_gas_979"

"$out_of_gas_978":                                ; preds = %"$have_gas_967"
  call void @_out_of_gas()
  br label %"$have_gas_979"

"$have_gas_979":                                  ; preds = %"$out_of_gas_978", %"$have_gas_967"
  %"$consume_980" = sub i64 %"$gasrem_976", 2
  store i64 %"$consume_980", i64* @_gasrem, align 8
  %"$h1_982" = load %TName_Bool*, %TName_Bool** %h1, align 8
  %"$h1_tag_983" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$h1_982", i32 0, i32 0
  %"$h1_tag_984" = load i8, i8* %"$h1_tag_983", align 1
  switch i8 %"$h1_tag_984", label %"$empty_default_985" [
    i8 0, label %"$True_986"
    i8 1, label %"$False_999"
  ]

"$True_986":                                      ; preds = %"$have_gas_979"
  %"$h1_987" = bitcast %TName_Bool* %"$h1_982" to %CName_True*
  %"$gasrem_988" = load i64, i64* @_gasrem, align 8
  %"$gascmp_989" = icmp ugt i64 1, %"$gasrem_988"
  br i1 %"$gascmp_989", label %"$out_of_gas_990", label %"$have_gas_991"

"$out_of_gas_990":                                ; preds = %"$True_986"
  call void @_out_of_gas()
  br label %"$have_gas_991"

"$have_gas_991":                                  ; preds = %"$out_of_gas_990", %"$True_986"
  %"$consume_992" = sub i64 %"$gasrem_988", 1
  store i64 %"$consume_992", i64* @_gasrem, align 8
  %"$h_993" = load [20 x i8], [20 x i8]* %h, align 1
  %"$adtval_994_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_994_salloc" = call i8* @_salloc(i8* %"$adtval_994_load", i64 29)
  %"$adtval_994" = bitcast i8* %"$adtval_994_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_995" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_994", i32 0, i32 0
  store i8 0, i8* %"$adtgep_995", align 1
  %"$adtgep_996" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_994", i32 0, i32 1
  store [20 x i8] %"$h_993", [20 x i8]* %"$adtgep_996", align 1
  %"$adtgep_997" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_994", i32 0, i32 2
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$adtgep_997", align 8
  %"$adtptr_998" = bitcast %CName_Cons_ByStr20* %"$adtval_994" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_998", %TName_List_ByStr20** %"$retval_207", align 8
  br label %"$matchsucc_981"

"$False_999":                                     ; preds = %"$have_gas_979"
  %"$h1_1000" = bitcast %TName_Bool* %"$h1_982" to %CName_False*
  %"$gasrem_1001" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1002" = icmp ugt i64 1, %"$gasrem_1001"
  br i1 %"$gascmp_1002", label %"$out_of_gas_1003", label %"$have_gas_1004"

"$out_of_gas_1003":                               ; preds = %"$False_999"
  call void @_out_of_gas()
  br label %"$have_gas_1004"

"$have_gas_1004":                                 ; preds = %"$out_of_gas_1003", %"$False_999"
  %"$consume_1005" = sub i64 %"$gasrem_1001", 1
  store i64 %"$consume_1005", i64* @_gasrem, align 8
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$retval_207", align 8
  br label %"$matchsucc_981"

"$empty_default_985":                             ; preds = %"$have_gas_979"
  br label %"$matchsucc_981"

"$matchsucc_981":                                 ; preds = %"$have_gas_1004", %"$have_gas_991", %"$empty_default_985"
  %"$$retval_207_1006" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$retval_207", align 8
  ret %TName_List_ByStr20* %"$$retval_207_1006"
}

define internal { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_204"(%"$$fundef_204_env_449"* %0, [20 x i8]* %1) {
entry:
  %h = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_204_env_f_940" = getelementptr inbounds %"$$fundef_204_env_449", %"$$fundef_204_env_449"* %0, i32 0, i32 0
  %"$f_envload_941" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_204_env_f_940", align 8
  %f = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_envload_941", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$retval_205" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_942" = load i64, i64* @_gasrem, align 8
  %"$gascmp_943" = icmp ugt i64 1, %"$gasrem_942"
  br i1 %"$gascmp_943", label %"$out_of_gas_944", label %"$have_gas_945"

"$out_of_gas_944":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_945"

"$have_gas_945":                                  ; preds = %"$out_of_gas_944", %entry
  %"$consume_946" = sub i64 %"$gasrem_942", 1
  store i64 %"$consume_946", i64* @_gasrem, align 8
  %"$$fundef_206_envp_947_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_206_envp_947_salloc" = call i8* @_salloc(i8* %"$$fundef_206_envp_947_load", i64 40)
  %"$$fundef_206_envp_947" = bitcast i8* %"$$fundef_206_envp_947_salloc" to %"$$fundef_206_env_448"*
  %"$$fundef_206_env_voidp_949" = bitcast %"$$fundef_206_env_448"* %"$$fundef_206_envp_947" to i8*
  %"$$fundef_206_cloval_950" = insertvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)* bitcast (%TName_List_ByStr20* (%"$$fundef_206_env_448"*, %TName_List_ByStr20*)* @"$fundef_206" to %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_206_env_voidp_949", 1
  %"$$fundef_206_env_f_951" = getelementptr inbounds %"$$fundef_206_env_448", %"$$fundef_206_env_448"* %"$$fundef_206_envp_947", i32 0, i32 0
  %"$f_952" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %f, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_952", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_206_env_f_951", align 8
  %"$$fundef_206_env_h_953" = getelementptr inbounds %"$$fundef_206_env_448", %"$$fundef_206_env_448"* %"$$fundef_206_envp_947", i32 0, i32 1
  store [20 x i8] %h, [20 x i8]* %"$$fundef_206_env_h_953", align 1
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_206_cloval_950", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_205", align 8
  %"$$retval_205_954" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_205", align 8
  ret { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_205_954"
}

define internal { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_202"(%"$$fundef_202_env_450"* %0, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1) {
entry:
  %"$$fundef_202_env_list_foldr_870" = getelementptr inbounds %"$$fundef_202_env_450", %"$$fundef_202_env_450"* %0, i32 0, i32 0
  %"$list_foldr_envload_871" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_202_env_list_foldr_870", align 8
  %list_foldr = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldr_envload_871", { i8*, i8* }** %list_foldr, align 8
  %"$retval_203" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_873" = icmp ugt i64 1, %"$gasrem_872"
  br i1 %"$gascmp_873", label %"$out_of_gas_874", label %"$have_gas_875"

"$out_of_gas_874":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_875"

"$have_gas_875":                                  ; preds = %"$out_of_gas_874", %entry
  %"$consume_876" = sub i64 %"$gasrem_872", 1
  store i64 %"$consume_876", i64* @_gasrem, align 8
  %foldr = alloca { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_877" = load i64, i64* @_gasrem, align 8
  %"$gascmp_878" = icmp ugt i64 1, %"$gasrem_877"
  br i1 %"$gascmp_878", label %"$out_of_gas_879", label %"$have_gas_880"

"$out_of_gas_879":                                ; preds = %"$have_gas_875"
  call void @_out_of_gas()
  br label %"$have_gas_880"

"$have_gas_880":                                  ; preds = %"$out_of_gas_879", %"$have_gas_875"
  %"$consume_881" = sub i64 %"$gasrem_877", 1
  store i64 %"$consume_881", i64* @_gasrem, align 8
  %"$list_foldr_882" = load { i8*, i8* }*, { i8*, i8* }** %list_foldr, align 8
  %"$list_foldr_883" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldr_882", i32 0
  %"$list_foldr_884" = bitcast { i8*, i8* }* %"$list_foldr_883" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldr_885" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldr_884", align 8
  %"$list_foldr_fptr_886" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldr_885", 0
  %"$list_foldr_envptr_887" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldr_885", 1
  %"$list_foldr_call_888" = call { i8*, i8* }* %"$list_foldr_fptr_886"(i8* %"$list_foldr_envptr_887")
  %"$list_foldr_889" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldr_call_888", i32 1
  %"$list_foldr_890" = bitcast { i8*, i8* }* %"$list_foldr_889" to { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldr_891" = load { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldr_890", align 8
  %"$list_foldr_fptr_892" = extractvalue { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldr_891", 0
  %"$list_foldr_envptr_893" = extractvalue { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldr_891", 1
  %"$list_foldr_call_894" = call { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$list_foldr_fptr_892"(i8* %"$list_foldr_envptr_893")
  store { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$list_foldr_call_894", { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %foldr, align 8
  %"$gasrem_895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_896" = icmp ugt i64 1, %"$gasrem_895"
  br i1 %"$gascmp_896", label %"$out_of_gas_897", label %"$have_gas_898"

"$out_of_gas_897":                                ; preds = %"$have_gas_880"
  call void @_out_of_gas()
  br label %"$have_gas_898"

"$have_gas_898":                                  ; preds = %"$out_of_gas_897", %"$have_gas_880"
  %"$consume_899" = sub i64 %"$gasrem_895", 1
  store i64 %"$consume_899", i64* @_gasrem, align 8
  %iter = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_901" = icmp ugt i64 1, %"$gasrem_900"
  br i1 %"$gascmp_901", label %"$out_of_gas_902", label %"$have_gas_903"

"$out_of_gas_902":                                ; preds = %"$have_gas_898"
  call void @_out_of_gas()
  br label %"$have_gas_903"

"$have_gas_903":                                  ; preds = %"$out_of_gas_902", %"$have_gas_898"
  %"$consume_904" = sub i64 %"$gasrem_900", 1
  store i64 %"$consume_904", i64* @_gasrem, align 8
  %"$$fundef_204_envp_905_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_204_envp_905_salloc" = call i8* @_salloc(i8* %"$$fundef_204_envp_905_load", i64 16)
  %"$$fundef_204_envp_905" = bitcast i8* %"$$fundef_204_envp_905_salloc" to %"$$fundef_204_env_449"*
  %"$$fundef_204_env_voidp_907" = bitcast %"$$fundef_204_env_449"* %"$$fundef_204_envp_905" to i8*
  %"$$fundef_204_cloval_908" = insertvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_204_env_449"*, [20 x i8]*)* @"$fundef_204" to { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_204_env_voidp_907", 1
  %"$$fundef_204_env_f_909" = getelementptr inbounds %"$$fundef_204_env_449", %"$$fundef_204_env_449"* %"$$fundef_204_envp_905", i32 0, i32 0
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_204_env_f_909", align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_204_cloval_908", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %iter, align 8
  %"$gasrem_910" = load i64, i64* @_gasrem, align 8
  %"$gascmp_911" = icmp ugt i64 1, %"$gasrem_910"
  br i1 %"$gascmp_911", label %"$out_of_gas_912", label %"$have_gas_913"

"$out_of_gas_912":                                ; preds = %"$have_gas_903"
  call void @_out_of_gas()
  br label %"$have_gas_913"

"$have_gas_913":                                  ; preds = %"$out_of_gas_912", %"$have_gas_903"
  %"$consume_914" = sub i64 %"$gasrem_910", 1
  store i64 %"$consume_914", i64* @_gasrem, align 8
  %init = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_915" = load i64, i64* @_gasrem, align 8
  %"$gascmp_916" = icmp ugt i64 1, %"$gasrem_915"
  br i1 %"$gascmp_916", label %"$out_of_gas_917", label %"$have_gas_918"

"$out_of_gas_917":                                ; preds = %"$have_gas_913"
  call void @_out_of_gas()
  br label %"$have_gas_918"

"$have_gas_918":                                  ; preds = %"$out_of_gas_917", %"$have_gas_913"
  %"$consume_919" = sub i64 %"$gasrem_915", 1
  store i64 %"$consume_919", i64* @_gasrem, align 8
  %"$adtval_920_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_920_salloc" = call i8* @_salloc(i8* %"$adtval_920_load", i64 1)
  %"$adtval_920" = bitcast i8* %"$adtval_920_salloc" to %CName_Nil_ByStr20*
  %"$adtgep_921" = getelementptr inbounds %CName_Nil_ByStr20, %CName_Nil_ByStr20* %"$adtval_920", i32 0, i32 0
  store i8 1, i8* %"$adtgep_921", align 1
  %"$adtptr_922" = bitcast %CName_Nil_ByStr20* %"$adtval_920" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_922", %TName_List_ByStr20** %init, align 8
  %"$gasrem_923" = load i64, i64* @_gasrem, align 8
  %"$gascmp_924" = icmp ugt i64 1, %"$gasrem_923"
  br i1 %"$gascmp_924", label %"$out_of_gas_925", label %"$have_gas_926"

"$out_of_gas_925":                                ; preds = %"$have_gas_918"
  call void @_out_of_gas()
  br label %"$have_gas_926"

"$have_gas_926":                                  ; preds = %"$out_of_gas_925", %"$have_gas_918"
  %"$consume_927" = sub i64 %"$gasrem_923", 1
  store i64 %"$consume_927", i64* @_gasrem, align 8
  %"$foldr_20" = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$foldr_928" = load { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %foldr, align 8
  %"$foldr_fptr_929" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$foldr_928", 0
  %"$foldr_envptr_930" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$foldr_928", 1
  %"$iter_931" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %iter, align 8
  %"$foldr_call_932" = call { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$foldr_fptr_929"(i8* %"$foldr_envptr_930", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$iter_931")
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$foldr_call_932", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_20", align 8
  %"$foldr_21" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$$foldr_20_933" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_20", align 8
  %"$$foldr_20_fptr_934" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_20_933", 0
  %"$$foldr_20_envptr_935" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_20_933", 1
  %"$init_936" = load %TName_List_ByStr20*, %TName_List_ByStr20** %init, align 8
  %"$$foldr_20_call_937" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_20_fptr_934"(i8* %"$$foldr_20_envptr_935", %TName_List_ByStr20* %"$init_936")
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_20_call_937", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_21", align 8
  %"$$foldr_21_938" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_21", align 8
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_21_938", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_203", align 8
  %"$$retval_203_939" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_203", align 8
  ret { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_203_939"
}

define internal { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_200"(%"$$fundef_200_env_451"* %0) {
entry:
  %"$$fundef_200_env_list_foldr_856" = getelementptr inbounds %"$$fundef_200_env_451", %"$$fundef_200_env_451"* %0, i32 0, i32 0
  %"$list_foldr_envload_857" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_200_env_list_foldr_856", align 8
  %list_foldr = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldr_envload_857", { i8*, i8* }** %list_foldr, align 8
  %"$retval_201" = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_859" = icmp ugt i64 1, %"$gasrem_858"
  br i1 %"$gascmp_859", label %"$out_of_gas_860", label %"$have_gas_861"

"$out_of_gas_860":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_861"

"$have_gas_861":                                  ; preds = %"$out_of_gas_860", %entry
  %"$consume_862" = sub i64 %"$gasrem_858", 1
  store i64 %"$consume_862", i64* @_gasrem, align 8
  %"$$fundef_202_envp_863_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_202_envp_863_salloc" = call i8* @_salloc(i8* %"$$fundef_202_envp_863_load", i64 8)
  %"$$fundef_202_envp_863" = bitcast i8* %"$$fundef_202_envp_863_salloc" to %"$$fundef_202_env_450"*
  %"$$fundef_202_env_voidp_865" = bitcast %"$$fundef_202_env_450"* %"$$fundef_202_envp_863" to i8*
  %"$$fundef_202_cloval_866" = insertvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* bitcast ({ %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_202_env_450"*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* @"$fundef_202" to { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*), i8* undef }, i8* %"$$fundef_202_env_voidp_865", 1
  %"$$fundef_202_env_list_foldr_867" = getelementptr inbounds %"$$fundef_202_env_450", %"$$fundef_202_env_450"* %"$$fundef_202_envp_863", i32 0, i32 0
  %"$list_foldr_868" = load { i8*, i8* }*, { i8*, i8* }** %list_foldr, align 8
  store { i8*, i8* }* %"$list_foldr_868", { i8*, i8* }** %"$$fundef_202_env_list_foldr_867", align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_202_cloval_866", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_201", align 8
  %"$$retval_201_869" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_201", align 8
  ret { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_201_869"
}

define internal %TName_Bool* @"$fundef_168"(%"$$fundef_168_env_452"* %0, %TName_Bool* %1) {
entry:
  %"$retval_169" = alloca %TName_Bool*, align 8
  %"$gasrem_826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_827" = icmp ugt i64 2, %"$gasrem_826"
  br i1 %"$gascmp_827", label %"$out_of_gas_828", label %"$have_gas_829"

"$out_of_gas_828":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_829"

"$have_gas_829":                                  ; preds = %"$out_of_gas_828", %entry
  %"$consume_830" = sub i64 %"$gasrem_826", 2
  store i64 %"$consume_830", i64* @_gasrem, align 8
  %"$b_tag_832" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_833" = load i8, i8* %"$b_tag_832", align 1
  switch i8 %"$b_tag_833", label %"$empty_default_834" [
    i8 0, label %"$True_835"
    i8 1, label %"$False_845"
  ]

"$True_835":                                      ; preds = %"$have_gas_829"
  %"$b_836" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_837" = load i64, i64* @_gasrem, align 8
  %"$gascmp_838" = icmp ugt i64 1, %"$gasrem_837"
  br i1 %"$gascmp_838", label %"$out_of_gas_839", label %"$have_gas_840"

"$out_of_gas_839":                                ; preds = %"$True_835"
  call void @_out_of_gas()
  br label %"$have_gas_840"

"$have_gas_840":                                  ; preds = %"$out_of_gas_839", %"$True_835"
  %"$consume_841" = sub i64 %"$gasrem_837", 1
  store i64 %"$consume_841", i64* @_gasrem, align 8
  %"$adtval_842_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_842_salloc" = call i8* @_salloc(i8* %"$adtval_842_load", i64 1)
  %"$adtval_842" = bitcast i8* %"$adtval_842_salloc" to %CName_False*
  %"$adtgep_843" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_842", i32 0, i32 0
  store i8 1, i8* %"$adtgep_843", align 1
  %"$adtptr_844" = bitcast %CName_False* %"$adtval_842" to %TName_Bool*
  store %TName_Bool* %"$adtptr_844", %TName_Bool** %"$retval_169", align 8
  br label %"$matchsucc_831"

"$False_845":                                     ; preds = %"$have_gas_829"
  %"$b_846" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_847" = load i64, i64* @_gasrem, align 8
  %"$gascmp_848" = icmp ugt i64 1, %"$gasrem_847"
  br i1 %"$gascmp_848", label %"$out_of_gas_849", label %"$have_gas_850"

"$out_of_gas_849":                                ; preds = %"$False_845"
  call void @_out_of_gas()
  br label %"$have_gas_850"

"$have_gas_850":                                  ; preds = %"$out_of_gas_849", %"$False_845"
  %"$consume_851" = sub i64 %"$gasrem_847", 1
  store i64 %"$consume_851", i64* @_gasrem, align 8
  %"$adtval_852_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_852_salloc" = call i8* @_salloc(i8* %"$adtval_852_load", i64 1)
  %"$adtval_852" = bitcast i8* %"$adtval_852_salloc" to %CName_True*
  %"$adtgep_853" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_852", i32 0, i32 0
  store i8 0, i8* %"$adtgep_853", align 1
  %"$adtptr_854" = bitcast %CName_True* %"$adtval_852" to %TName_Bool*
  store %TName_Bool* %"$adtptr_854", %TName_Bool** %"$retval_169", align 8
  br label %"$matchsucc_831"

"$empty_default_834":                             ; preds = %"$have_gas_829"
  br label %"$matchsucc_831"

"$matchsucc_831":                                 ; preds = %"$have_gas_850", %"$have_gas_840", %"$empty_default_834"
  %"$$retval_169_855" = load %TName_Bool*, %TName_Bool** %"$retval_169", align 8
  ret %TName_Bool* %"$$retval_169_855"
}

define internal %TName_Bool* @"$fundef_172"(%"$$fundef_172_env_453"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_172_env_b_796" = getelementptr inbounds %"$$fundef_172_env_453", %"$$fundef_172_env_453"* %0, i32 0, i32 0
  %"$b_envload_797" = load %TName_Bool*, %TName_Bool** %"$$fundef_172_env_b_796", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_797", %TName_Bool** %b, align 8
  %"$retval_173" = alloca %TName_Bool*, align 8
  %"$gasrem_798" = load i64, i64* @_gasrem, align 8
  %"$gascmp_799" = icmp ugt i64 2, %"$gasrem_798"
  br i1 %"$gascmp_799", label %"$out_of_gas_800", label %"$have_gas_801"

"$out_of_gas_800":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_801"

"$have_gas_801":                                  ; preds = %"$out_of_gas_800", %entry
  %"$consume_802" = sub i64 %"$gasrem_798", 2
  store i64 %"$consume_802", i64* @_gasrem, align 8
  %"$b_804" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_805" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_804", i32 0, i32 0
  %"$b_tag_806" = load i8, i8* %"$b_tag_805", align 1
  switch i8 %"$b_tag_806", label %"$empty_default_807" [
    i8 0, label %"$True_808"
    i8 1, label %"$False_818"
  ]

"$True_808":                                      ; preds = %"$have_gas_801"
  %"$b_809" = bitcast %TName_Bool* %"$b_804" to %CName_True*
  %"$gasrem_810" = load i64, i64* @_gasrem, align 8
  %"$gascmp_811" = icmp ugt i64 1, %"$gasrem_810"
  br i1 %"$gascmp_811", label %"$out_of_gas_812", label %"$have_gas_813"

"$out_of_gas_812":                                ; preds = %"$True_808"
  call void @_out_of_gas()
  br label %"$have_gas_813"

"$have_gas_813":                                  ; preds = %"$out_of_gas_812", %"$True_808"
  %"$consume_814" = sub i64 %"$gasrem_810", 1
  store i64 %"$consume_814", i64* @_gasrem, align 8
  %"$adtval_815_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_815_salloc" = call i8* @_salloc(i8* %"$adtval_815_load", i64 1)
  %"$adtval_815" = bitcast i8* %"$adtval_815_salloc" to %CName_True*
  %"$adtgep_816" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_815", i32 0, i32 0
  store i8 0, i8* %"$adtgep_816", align 1
  %"$adtptr_817" = bitcast %CName_True* %"$adtval_815" to %TName_Bool*
  store %TName_Bool* %"$adtptr_817", %TName_Bool** %"$retval_173", align 8
  br label %"$matchsucc_803"

"$False_818":                                     ; preds = %"$have_gas_801"
  %"$b_819" = bitcast %TName_Bool* %"$b_804" to %CName_False*
  %"$gasrem_820" = load i64, i64* @_gasrem, align 8
  %"$gascmp_821" = icmp ugt i64 1, %"$gasrem_820"
  br i1 %"$gascmp_821", label %"$out_of_gas_822", label %"$have_gas_823"

"$out_of_gas_822":                                ; preds = %"$False_818"
  call void @_out_of_gas()
  br label %"$have_gas_823"

"$have_gas_823":                                  ; preds = %"$out_of_gas_822", %"$False_818"
  %"$consume_824" = sub i64 %"$gasrem_820", 1
  store i64 %"$consume_824", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_173", align 8
  br label %"$matchsucc_803"

"$empty_default_807":                             ; preds = %"$have_gas_801"
  br label %"$matchsucc_803"

"$matchsucc_803":                                 ; preds = %"$have_gas_823", %"$have_gas_813", %"$empty_default_807"
  %"$$retval_173_825" = load %TName_Bool*, %TName_Bool** %"$retval_173", align 8
  ret %TName_Bool* %"$$retval_173_825"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_170"(%"$$fundef_170_env_454"* %0, %TName_Bool* %1) {
entry:
  %"$retval_171" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_786" = icmp ugt i64 1, %"$gasrem_785"
  br i1 %"$gascmp_786", label %"$out_of_gas_787", label %"$have_gas_788"

"$out_of_gas_787":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_788"

"$have_gas_788":                                  ; preds = %"$out_of_gas_787", %entry
  %"$consume_789" = sub i64 %"$gasrem_785", 1
  store i64 %"$consume_789", i64* @_gasrem, align 8
  %"$$fundef_172_envp_790_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_172_envp_790_salloc" = call i8* @_salloc(i8* %"$$fundef_172_envp_790_load", i64 8)
  %"$$fundef_172_envp_790" = bitcast i8* %"$$fundef_172_envp_790_salloc" to %"$$fundef_172_env_453"*
  %"$$fundef_172_env_voidp_792" = bitcast %"$$fundef_172_env_453"* %"$$fundef_172_envp_790" to i8*
  %"$$fundef_172_cloval_793" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_172_env_453"*, %TName_Bool*)* @"$fundef_172" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_172_env_voidp_792", 1
  %"$$fundef_172_env_b_794" = getelementptr inbounds %"$$fundef_172_env_453", %"$$fundef_172_env_453"* %"$$fundef_172_envp_790", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_172_env_b_794", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_172_cloval_793", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_171", align 8
  %"$$retval_171_795" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_171", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_171_795"
}

define internal %TName_Bool* @"$fundef_176"(%"$$fundef_176_env_455"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_176_env_b_755" = getelementptr inbounds %"$$fundef_176_env_455", %"$$fundef_176_env_455"* %0, i32 0, i32 0
  %"$b_envload_756" = load %TName_Bool*, %TName_Bool** %"$$fundef_176_env_b_755", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_756", %TName_Bool** %b, align 8
  %"$retval_177" = alloca %TName_Bool*, align 8
  %"$gasrem_757" = load i64, i64* @_gasrem, align 8
  %"$gascmp_758" = icmp ugt i64 2, %"$gasrem_757"
  br i1 %"$gascmp_758", label %"$out_of_gas_759", label %"$have_gas_760"

"$out_of_gas_759":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_760"

"$have_gas_760":                                  ; preds = %"$out_of_gas_759", %entry
  %"$consume_761" = sub i64 %"$gasrem_757", 2
  store i64 %"$consume_761", i64* @_gasrem, align 8
  %"$b_763" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_764" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_763", i32 0, i32 0
  %"$b_tag_765" = load i8, i8* %"$b_tag_764", align 1
  switch i8 %"$b_tag_765", label %"$empty_default_766" [
    i8 1, label %"$False_767"
    i8 0, label %"$True_777"
  ]

"$False_767":                                     ; preds = %"$have_gas_760"
  %"$b_768" = bitcast %TName_Bool* %"$b_763" to %CName_False*
  %"$gasrem_769" = load i64, i64* @_gasrem, align 8
  %"$gascmp_770" = icmp ugt i64 1, %"$gasrem_769"
  br i1 %"$gascmp_770", label %"$out_of_gas_771", label %"$have_gas_772"

"$out_of_gas_771":                                ; preds = %"$False_767"
  call void @_out_of_gas()
  br label %"$have_gas_772"

"$have_gas_772":                                  ; preds = %"$out_of_gas_771", %"$False_767"
  %"$consume_773" = sub i64 %"$gasrem_769", 1
  store i64 %"$consume_773", i64* @_gasrem, align 8
  %"$adtval_774_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_774_salloc" = call i8* @_salloc(i8* %"$adtval_774_load", i64 1)
  %"$adtval_774" = bitcast i8* %"$adtval_774_salloc" to %CName_False*
  %"$adtgep_775" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_774", i32 0, i32 0
  store i8 1, i8* %"$adtgep_775", align 1
  %"$adtptr_776" = bitcast %CName_False* %"$adtval_774" to %TName_Bool*
  store %TName_Bool* %"$adtptr_776", %TName_Bool** %"$retval_177", align 8
  br label %"$matchsucc_762"

"$True_777":                                      ; preds = %"$have_gas_760"
  %"$b_778" = bitcast %TName_Bool* %"$b_763" to %CName_True*
  %"$gasrem_779" = load i64, i64* @_gasrem, align 8
  %"$gascmp_780" = icmp ugt i64 1, %"$gasrem_779"
  br i1 %"$gascmp_780", label %"$out_of_gas_781", label %"$have_gas_782"

"$out_of_gas_781":                                ; preds = %"$True_777"
  call void @_out_of_gas()
  br label %"$have_gas_782"

"$have_gas_782":                                  ; preds = %"$out_of_gas_781", %"$True_777"
  %"$consume_783" = sub i64 %"$gasrem_779", 1
  store i64 %"$consume_783", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_177", align 8
  br label %"$matchsucc_762"

"$empty_default_766":                             ; preds = %"$have_gas_760"
  br label %"$matchsucc_762"

"$matchsucc_762":                                 ; preds = %"$have_gas_782", %"$have_gas_772", %"$empty_default_766"
  %"$$retval_177_784" = load %TName_Bool*, %TName_Bool** %"$retval_177", align 8
  ret %TName_Bool* %"$$retval_177_784"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_174"(%"$$fundef_174_env_456"* %0, %TName_Bool* %1) {
entry:
  %"$retval_175" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_744" = load i64, i64* @_gasrem, align 8
  %"$gascmp_745" = icmp ugt i64 1, %"$gasrem_744"
  br i1 %"$gascmp_745", label %"$out_of_gas_746", label %"$have_gas_747"

"$out_of_gas_746":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_747"

"$have_gas_747":                                  ; preds = %"$out_of_gas_746", %entry
  %"$consume_748" = sub i64 %"$gasrem_744", 1
  store i64 %"$consume_748", i64* @_gasrem, align 8
  %"$$fundef_176_envp_749_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_176_envp_749_salloc" = call i8* @_salloc(i8* %"$$fundef_176_envp_749_load", i64 8)
  %"$$fundef_176_envp_749" = bitcast i8* %"$$fundef_176_envp_749_salloc" to %"$$fundef_176_env_455"*
  %"$$fundef_176_env_voidp_751" = bitcast %"$$fundef_176_env_455"* %"$$fundef_176_envp_749" to i8*
  %"$$fundef_176_cloval_752" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_176_env_455"*, %TName_Bool*)* @"$fundef_176" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_176_env_voidp_751", 1
  %"$$fundef_176_env_b_753" = getelementptr inbounds %"$$fundef_176_env_455", %"$$fundef_176_env_455"* %"$$fundef_176_envp_749", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_176_env_b_753", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_176_cloval_752", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_175", align 8
  %"$$retval_175_754" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_175", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_175_754"
}

define internal %TName_Option_ByStr20* @"$fundef_156"(%"$$fundef_156_env_457"* %0, %TName_Option_ByStr20* %1) {
entry:
  %"$$fundef_156_env_g_724" = getelementptr inbounds %"$$fundef_156_env_457", %"$$fundef_156_env_457"* %0, i32 0, i32 0
  %"$g_envload_725" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_156_env_g_724", align 8
  %g = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_envload_725", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  %"$$fundef_156_env_t_726" = getelementptr inbounds %"$$fundef_156_env_457", %"$$fundef_156_env_457"* %0, i32 0, i32 1
  %"$t_envload_727" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_156_env_t_726", align 8
  %t = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$t_envload_727", %TName_List_ByStr20** %t, align 8
  %"$retval_157" = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_729" = icmp ugt i64 1, %"$gasrem_728"
  br i1 %"$gascmp_729", label %"$out_of_gas_730", label %"$have_gas_731"

"$out_of_gas_730":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_731"

"$have_gas_731":                                  ; preds = %"$out_of_gas_730", %entry
  %"$consume_732" = sub i64 %"$gasrem_728", 1
  store i64 %"$consume_732", i64* @_gasrem, align 8
  %"$g_14" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$g_733" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  %"$g_fptr_734" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_733", 0
  %"$g_envptr_735" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_733", 1
  %"$g_call_736" = call { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_fptr_734"(i8* %"$g_envptr_735", %TName_Option_ByStr20* %1)
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_call_736", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_14", align 8
  %"$g_15" = alloca %TName_Option_ByStr20*, align 8
  %"$$g_14_737" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_14", align 8
  %"$$g_14_fptr_738" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_14_737", 0
  %"$$g_14_envptr_739" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_14_737", 1
  %"$t_740" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t, align 8
  %"$$g_14_call_741" = call %TName_Option_ByStr20* %"$$g_14_fptr_738"(i8* %"$$g_14_envptr_739", %TName_List_ByStr20* %"$t_740")
  store %TName_Option_ByStr20* %"$$g_14_call_741", %TName_Option_ByStr20** %"$g_15", align 8
  %"$$g_15_742" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$g_15", align 8
  store %TName_Option_ByStr20* %"$$g_15_742", %TName_Option_ByStr20** %"$retval_157", align 8
  %"$$retval_157_743" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$retval_157", align 8
  ret %TName_Option_ByStr20* %"$$retval_157_743"
}

define internal %TName_Option_ByStr20* @"$fundef_154"(%"$$fundef_154_env_458"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_154_env_f_654" = getelementptr inbounds %"$$fundef_154_env_458", %"$$fundef_154_env_458"* %0, i32 0, i32 0
  %"$f_envload_655" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_154_env_f_654", align 8
  %f = alloca { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_envload_655", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %f, align 8
  %"$$fundef_154_env_g_656" = getelementptr inbounds %"$$fundef_154_env_458", %"$$fundef_154_env_458"* %0, i32 0, i32 1
  %"$g_envload_657" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_154_env_g_656", align 8
  %g = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_envload_657", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  %"$$fundef_154_env_z_658" = getelementptr inbounds %"$$fundef_154_env_458", %"$$fundef_154_env_458"* %0, i32 0, i32 2
  %"$z_envload_659" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_154_env_z_658", align 8
  %z = alloca %TName_Option_ByStr20*, align 8
  store %TName_Option_ByStr20* %"$z_envload_659", %TName_Option_ByStr20** %z, align 8
  %"$retval_155" = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_661" = icmp ugt i64 2, %"$gasrem_660"
  br i1 %"$gascmp_661", label %"$out_of_gas_662", label %"$have_gas_663"

"$out_of_gas_662":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_663"

"$have_gas_663":                                  ; preds = %"$out_of_gas_662", %entry
  %"$consume_664" = sub i64 %"$gasrem_660", 2
  store i64 %"$consume_664", i64* @_gasrem, align 8
  %"$l_tag_666" = getelementptr inbounds %TName_List_ByStr20, %TName_List_ByStr20* %1, i32 0, i32 0
  %"$l_tag_667" = load i8, i8* %"$l_tag_666", align 1
  switch i8 %"$l_tag_667", label %"$empty_default_668" [
    i8 0, label %"$Cons_669"
    i8 1, label %"$Nil_715"
  ]

"$Cons_669":                                      ; preds = %"$have_gas_663"
  %"$l_670" = bitcast %TName_List_ByStr20* %1 to %CName_Cons_ByStr20*
  %"$h_gep_671" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_670", i32 0, i32 1
  %"$h_load_672" = load [20 x i8], [20 x i8]* %"$h_gep_671", align 1
  %h = alloca [20 x i8], align 1
  store [20 x i8] %"$h_load_672", [20 x i8]* %h, align 1
  %"$t_gep_673" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_670", i32 0, i32 2
  %"$t_load_674" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$t_gep_673", align 8
  %t = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$t_load_674", %TName_List_ByStr20** %t, align 8
  %"$gasrem_675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_676" = icmp ugt i64 1, %"$gasrem_675"
  br i1 %"$gascmp_676", label %"$out_of_gas_677", label %"$have_gas_678"

"$out_of_gas_677":                                ; preds = %"$Cons_669"
  call void @_out_of_gas()
  br label %"$have_gas_678"

"$have_gas_678":                                  ; preds = %"$out_of_gas_677", %"$Cons_669"
  %"$consume_679" = sub i64 %"$gasrem_675", 1
  store i64 %"$consume_679", i64* @_gasrem, align 8
  %partial = alloca { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$gasrem_680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_681" = icmp ugt i64 1, %"$gasrem_680"
  br i1 %"$gascmp_681", label %"$out_of_gas_682", label %"$have_gas_683"

"$out_of_gas_682":                                ; preds = %"$have_gas_678"
  call void @_out_of_gas()
  br label %"$have_gas_683"

"$have_gas_683":                                  ; preds = %"$out_of_gas_682", %"$have_gas_678"
  %"$consume_684" = sub i64 %"$gasrem_680", 1
  store i64 %"$consume_684", i64* @_gasrem, align 8
  %"$$fundef_156_envp_685_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_156_envp_685_salloc" = call i8* @_salloc(i8* %"$$fundef_156_envp_685_load", i64 24)
  %"$$fundef_156_envp_685" = bitcast i8* %"$$fundef_156_envp_685_salloc" to %"$$fundef_156_env_457"*
  %"$$fundef_156_env_voidp_687" = bitcast %"$$fundef_156_env_457"* %"$$fundef_156_envp_685" to i8*
  %"$$fundef_156_cloval_688" = insertvalue { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)* bitcast (%TName_Option_ByStr20* (%"$$fundef_156_env_457"*, %TName_Option_ByStr20*)* @"$fundef_156" to %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_156_env_voidp_687", 1
  %"$$fundef_156_env_g_689" = getelementptr inbounds %"$$fundef_156_env_457", %"$$fundef_156_env_457"* %"$$fundef_156_envp_685", i32 0, i32 0
  %"$g_690" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_690", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_156_env_g_689", align 8
  %"$$fundef_156_env_t_691" = getelementptr inbounds %"$$fundef_156_env_457", %"$$fundef_156_env_457"* %"$$fundef_156_envp_685", i32 0, i32 1
  %"$t_692" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t, align 8
  store %TName_List_ByStr20* %"$t_692", %TName_List_ByStr20** %"$$fundef_156_env_t_691", align 8
  store { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_156_cloval_688", { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }* %partial, align 8
  %"$gasrem_693" = load i64, i64* @_gasrem, align 8
  %"$gascmp_694" = icmp ugt i64 1, %"$gasrem_693"
  br i1 %"$gascmp_694", label %"$out_of_gas_695", label %"$have_gas_696"

"$out_of_gas_695":                                ; preds = %"$have_gas_683"
  call void @_out_of_gas()
  br label %"$have_gas_696"

"$have_gas_696":                                  ; preds = %"$out_of_gas_695", %"$have_gas_683"
  %"$consume_697" = sub i64 %"$gasrem_693", 1
  store i64 %"$consume_697", i64* @_gasrem, align 8
  %"$f_16" = alloca { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$f_698" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %f, align 8
  %"$f_fptr_699" = extractvalue { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_698", 0
  %"$f_envptr_700" = extractvalue { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_698", 1
  %"$z_701" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %z, align 8
  %"$f_call_702" = call { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_fptr_699"(i8* %"$f_envptr_700", %TName_Option_ByStr20* %"$z_701")
  store { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_call_702", { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$f_16", align 8
  %"$f_17" = alloca { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, align 8
  %"$$f_16_703" = load { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$f_16", align 8
  %"$$f_16_fptr_704" = extractvalue { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$f_16_703", 0
  %"$$f_16_envptr_705" = extractvalue { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$f_16_703", 1
  %"$$f_16_h_706" = alloca [20 x i8], align 1
  %"$h_707" = load [20 x i8], [20 x i8]* %h, align 1
  store [20 x i8] %"$h_707", [20 x i8]* %"$$f_16_h_706", align 1
  %"$$f_16_call_708" = call { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_16_fptr_704"(i8* %"$$f_16_envptr_705", [20 x i8]* %"$$f_16_h_706")
  store { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_16_call_708", { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$f_17", align 8
  %"$f_18" = alloca %TName_Option_ByStr20*, align 8
  %"$$f_17_709" = load { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$f_17", align 8
  %"$$f_17_fptr_710" = extractvalue { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_17_709", 0
  %"$$f_17_envptr_711" = extractvalue { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_17_709", 1
  %"$partial_712" = load { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }* %partial, align 8
  %"$$f_17_call_713" = call %TName_Option_ByStr20* %"$$f_17_fptr_710"(i8* %"$$f_17_envptr_711", { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %"$partial_712")
  store %TName_Option_ByStr20* %"$$f_17_call_713", %TName_Option_ByStr20** %"$f_18", align 8
  %"$$f_18_714" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$f_18", align 8
  store %TName_Option_ByStr20* %"$$f_18_714", %TName_Option_ByStr20** %"$retval_155", align 8
  br label %"$matchsucc_665"

"$Nil_715":                                       ; preds = %"$have_gas_663"
  %"$l_716" = bitcast %TName_List_ByStr20* %1 to %CName_Nil_ByStr20*
  %"$gasrem_717" = load i64, i64* @_gasrem, align 8
  %"$gascmp_718" = icmp ugt i64 1, %"$gasrem_717"
  br i1 %"$gascmp_718", label %"$out_of_gas_719", label %"$have_gas_720"

"$out_of_gas_719":                                ; preds = %"$Nil_715"
  call void @_out_of_gas()
  br label %"$have_gas_720"

"$have_gas_720":                                  ; preds = %"$out_of_gas_719", %"$Nil_715"
  %"$consume_721" = sub i64 %"$gasrem_717", 1
  store i64 %"$consume_721", i64* @_gasrem, align 8
  %"$z_722" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %z, align 8
  store %TName_Option_ByStr20* %"$z_722", %TName_Option_ByStr20** %"$retval_155", align 8
  br label %"$matchsucc_665"

"$empty_default_668":                             ; preds = %"$have_gas_663"
  br label %"$matchsucc_665"

"$matchsucc_665":                                 ; preds = %"$have_gas_720", %"$have_gas_696", %"$empty_default_668"
  %"$$retval_155_723" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$retval_155", align 8
  ret %TName_Option_ByStr20* %"$$retval_155_723"
}

define internal { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_152"(%"$$fundef_152_env_459"* %0, %TName_Option_ByStr20* %1) {
entry:
  %"$$fundef_152_env_f_635" = getelementptr inbounds %"$$fundef_152_env_459", %"$$fundef_152_env_459"* %0, i32 0, i32 0
  %"$f_envload_636" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_152_env_f_635", align 8
  %f = alloca { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_envload_636", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %f, align 8
  %"$$fundef_152_env_g_637" = getelementptr inbounds %"$$fundef_152_env_459", %"$$fundef_152_env_459"* %0, i32 0, i32 1
  %"$g_envload_638" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_152_env_g_637", align 8
  %g = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_envload_638", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  %"$retval_153" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_639" = load i64, i64* @_gasrem, align 8
  %"$gascmp_640" = icmp ugt i64 1, %"$gasrem_639"
  br i1 %"$gascmp_640", label %"$out_of_gas_641", label %"$have_gas_642"

"$out_of_gas_641":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_642"

"$have_gas_642":                                  ; preds = %"$out_of_gas_641", %entry
  %"$consume_643" = sub i64 %"$gasrem_639", 1
  store i64 %"$consume_643", i64* @_gasrem, align 8
  %"$$fundef_154_envp_644_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_154_envp_644_salloc" = call i8* @_salloc(i8* %"$$fundef_154_envp_644_load", i64 40)
  %"$$fundef_154_envp_644" = bitcast i8* %"$$fundef_154_envp_644_salloc" to %"$$fundef_154_env_458"*
  %"$$fundef_154_env_voidp_646" = bitcast %"$$fundef_154_env_458"* %"$$fundef_154_envp_644" to i8*
  %"$$fundef_154_cloval_647" = insertvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)* bitcast (%TName_Option_ByStr20* (%"$$fundef_154_env_458"*, %TName_List_ByStr20*)* @"$fundef_154" to %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_154_env_voidp_646", 1
  %"$$fundef_154_env_f_648" = getelementptr inbounds %"$$fundef_154_env_458", %"$$fundef_154_env_458"* %"$$fundef_154_envp_644", i32 0, i32 0
  %"$f_649" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %f, align 8
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_649", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_154_env_f_648", align 8
  %"$$fundef_154_env_g_650" = getelementptr inbounds %"$$fundef_154_env_458", %"$$fundef_154_env_458"* %"$$fundef_154_envp_644", i32 0, i32 1
  %"$g_651" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_651", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_154_env_g_650", align 8
  %"$$fundef_154_env_z_652" = getelementptr inbounds %"$$fundef_154_env_458", %"$$fundef_154_env_458"* %"$$fundef_154_envp_644", i32 0, i32 2
  store %TName_Option_ByStr20* %1, %TName_Option_ByStr20** %"$$fundef_154_env_z_652", align 8
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_154_cloval_647", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_153", align 8
  %"$$retval_153_653" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_153", align 8
  ret { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_153_653"
}

define internal { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } @"$fundef_150"(%"$$fundef_150_env_460"* %0, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %1) {
entry:
  %"$retval_151" = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$gasrem_616" = load i64, i64* @_gasrem, align 8
  %"$gascmp_617" = icmp ugt i64 1, %"$gasrem_616"
  br i1 %"$gascmp_617", label %"$out_of_gas_618", label %"$have_gas_619"

"$out_of_gas_618":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_619"

"$have_gas_619":                                  ; preds = %"$out_of_gas_618", %entry
  %"$consume_620" = sub i64 %"$gasrem_616", 1
  store i64 %"$consume_620", i64* @_gasrem, align 8
  %"$gasrem_621" = load i64, i64* @_gasrem, align 8
  %"$gascmp_622" = icmp ugt i64 1, %"$gasrem_621"
  br i1 %"$gascmp_622", label %"$out_of_gas_623", label %"$have_gas_624"

"$out_of_gas_623":                                ; preds = %"$have_gas_619"
  call void @_out_of_gas()
  br label %"$have_gas_624"

"$have_gas_624":                                  ; preds = %"$out_of_gas_623", %"$have_gas_619"
  %"$consume_625" = sub i64 %"$gasrem_621", 1
  store i64 %"$consume_625", i64* @_gasrem, align 8
  %"$$fundef_152_envp_626_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_152_envp_626_salloc" = call i8* @_salloc(i8* %"$$fundef_152_envp_626_load", i64 32)
  %"$$fundef_152_envp_626" = bitcast i8* %"$$fundef_152_envp_626_salloc" to %"$$fundef_152_env_459"*
  %"$$fundef_152_env_voidp_628" = bitcast %"$$fundef_152_env_459"* %"$$fundef_152_envp_626" to i8*
  %"$$fundef_152_cloval_629" = insertvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)* bitcast ({ %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_152_env_459"*, %TName_Option_ByStr20*)* @"$fundef_152" to { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_152_env_voidp_628", 1
  %g = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_152_cloval_629", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  %"$$fundef_152_env_f_630" = getelementptr inbounds %"$$fundef_152_env_459", %"$$fundef_152_env_459"* %"$$fundef_152_envp_626", i32 0, i32 0
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %1, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_152_env_f_630", align 8
  %"$$fundef_152_env_g_631" = getelementptr inbounds %"$$fundef_152_env_459", %"$$fundef_152_env_459"* %"$$fundef_152_envp_626", i32 0, i32 1
  %"$g_632" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_632", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_152_env_g_631", align 8
  %"$g_633" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_633", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_151", align 8
  %"$$retval_151_634" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_151", align 8
  ret { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$retval_151_634"
}

define internal { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } @"$fundef_148"(%"$$fundef_148_env_461"* %0) {
entry:
  %"$retval_149" = alloca { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, align 8
  %"$gasrem_607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_608" = icmp ugt i64 1, %"$gasrem_607"
  br i1 %"$gascmp_608", label %"$out_of_gas_609", label %"$have_gas_610"

"$out_of_gas_609":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_610"

"$have_gas_610":                                  ; preds = %"$out_of_gas_609", %entry
  %"$consume_611" = sub i64 %"$gasrem_607", 1
  store i64 %"$consume_611", i64* @_gasrem, align 8
  store { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })* bitcast ({ { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (%"$$fundef_150_env_460"*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })* @"$fundef_150" to { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*), i8* null }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_149", align 8
  %"$$retval_149_615" = load { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_149", align 8
  ret { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$retval_149_615"
}

define internal { i8*, i8* }* @"$fundef_146"(%"$$fundef_146_env_462"* %0) {
entry:
  %"$retval_147" = alloca { i8*, i8* }*, align 8
  %"$gasrem_595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_596" = icmp ugt i64 1, %"$gasrem_595"
  br i1 %"$gascmp_596", label %"$out_of_gas_597", label %"$have_gas_598"

"$out_of_gas_597":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_598"

"$have_gas_598":                                  ; preds = %"$out_of_gas_597", %entry
  %"$consume_599" = sub i64 %"$gasrem_595", 1
  store i64 %"$consume_599", i64* @_gasrem, align 8
  %"$dyndisp_table_603_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_603_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_603_salloc_load", i64 48)
  %"$dyndisp_table_603_salloc" = bitcast i8* %"$dyndisp_table_603_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_603" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_603_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_604" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_603", i32 2
  %"$dyndisp_pcast_605" = bitcast { i8*, i8* }* %"$dyndisp_gep_604" to { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (%"$$fundef_148_env_461"*)* @"$fundef_148" to { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_605", align 8
  store { i8*, i8* }* %"$dyndisp_table_603", { i8*, i8* }** %"$retval_147", align 8
  %"$$retval_147_606" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_147", align 8
  ret { i8*, i8* }* %"$$retval_147_606"
}

define internal %TName_List_ByStr20* @"$fundef_166"(%"$$fundef_166_env_463"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_166_env_f_527" = getelementptr inbounds %"$$fundef_166_env_463", %"$$fundef_166_env_463"* %0, i32 0, i32 0
  %"$f_envload_528" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_166_env_f_527", align 8
  %f = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_envload_528", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$$fundef_166_env_g_529" = getelementptr inbounds %"$$fundef_166_env_463", %"$$fundef_166_env_463"* %0, i32 0, i32 1
  %"$g_envload_530" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_166_env_g_529", align 8
  %g = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_envload_530", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  %"$$fundef_166_env_z_531" = getelementptr inbounds %"$$fundef_166_env_463", %"$$fundef_166_env_463"* %0, i32 0, i32 2
  %"$z_envload_532" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_166_env_z_531", align 8
  %z = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$z_envload_532", %TName_List_ByStr20** %z, align 8
  %"$retval_167" = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_534" = icmp ugt i64 2, %"$gasrem_533"
  br i1 %"$gascmp_534", label %"$out_of_gas_535", label %"$have_gas_536"

"$out_of_gas_535":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_536"

"$have_gas_536":                                  ; preds = %"$out_of_gas_535", %entry
  %"$consume_537" = sub i64 %"$gasrem_533", 2
  store i64 %"$consume_537", i64* @_gasrem, align 8
  %"$l_tag_539" = getelementptr inbounds %TName_List_ByStr20, %TName_List_ByStr20* %1, i32 0, i32 0
  %"$l_tag_540" = load i8, i8* %"$l_tag_539", align 1
  switch i8 %"$l_tag_540", label %"$empty_default_541" [
    i8 0, label %"$Cons_542"
    i8 1, label %"$Nil_586"
  ]

"$Cons_542":                                      ; preds = %"$have_gas_536"
  %"$l_543" = bitcast %TName_List_ByStr20* %1 to %CName_Cons_ByStr20*
  %"$h_gep_544" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_543", i32 0, i32 1
  %"$h_load_545" = load [20 x i8], [20 x i8]* %"$h_gep_544", align 1
  %h = alloca [20 x i8], align 1
  store [20 x i8] %"$h_load_545", [20 x i8]* %h, align 1
  %"$t_gep_546" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_543", i32 0, i32 2
  %"$t_load_547" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$t_gep_546", align 8
  %t = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$t_load_547", %TName_List_ByStr20** %t, align 8
  %"$gasrem_548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_549" = icmp ugt i64 1, %"$gasrem_548"
  br i1 %"$gascmp_549", label %"$out_of_gas_550", label %"$have_gas_551"

"$out_of_gas_550":                                ; preds = %"$Cons_542"
  call void @_out_of_gas()
  br label %"$have_gas_551"

"$have_gas_551":                                  ; preds = %"$out_of_gas_550", %"$Cons_542"
  %"$consume_552" = sub i64 %"$gasrem_548", 1
  store i64 %"$consume_552", i64* @_gasrem, align 8
  %res = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_554" = icmp ugt i64 1, %"$gasrem_553"
  br i1 %"$gascmp_554", label %"$out_of_gas_555", label %"$have_gas_556"

"$out_of_gas_555":                                ; preds = %"$have_gas_551"
  call void @_out_of_gas()
  br label %"$have_gas_556"

"$have_gas_556":                                  ; preds = %"$out_of_gas_555", %"$have_gas_551"
  %"$consume_557" = sub i64 %"$gasrem_553", 1
  store i64 %"$consume_557", i64* @_gasrem, align 8
  %"$g_10" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$g_558" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  %"$g_fptr_559" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_558", 0
  %"$g_envptr_560" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_558", 1
  %"$z_561" = load %TName_List_ByStr20*, %TName_List_ByStr20** %z, align 8
  %"$g_call_562" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_fptr_559"(i8* %"$g_envptr_560", %TName_List_ByStr20* %"$z_561")
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_call_562", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_10", align 8
  %"$g_11" = alloca %TName_List_ByStr20*, align 8
  %"$$g_10_563" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_10", align 8
  %"$$g_10_fptr_564" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_10_563", 0
  %"$$g_10_envptr_565" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_10_563", 1
  %"$t_566" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t, align 8
  %"$$g_10_call_567" = call %TName_List_ByStr20* %"$$g_10_fptr_564"(i8* %"$$g_10_envptr_565", %TName_List_ByStr20* %"$t_566")
  store %TName_List_ByStr20* %"$$g_10_call_567", %TName_List_ByStr20** %"$g_11", align 8
  %"$$g_11_568" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$g_11", align 8
  store %TName_List_ByStr20* %"$$g_11_568", %TName_List_ByStr20** %res, align 8
  %"$gasrem_569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_570" = icmp ugt i64 1, %"$gasrem_569"
  br i1 %"$gascmp_570", label %"$out_of_gas_571", label %"$have_gas_572"

"$out_of_gas_571":                                ; preds = %"$have_gas_556"
  call void @_out_of_gas()
  br label %"$have_gas_572"

"$have_gas_572":                                  ; preds = %"$out_of_gas_571", %"$have_gas_556"
  %"$consume_573" = sub i64 %"$gasrem_569", 1
  store i64 %"$consume_573", i64* @_gasrem, align 8
  %"$f_12" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$f_574" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$f_fptr_575" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_574", 0
  %"$f_envptr_576" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_574", 1
  %"$f_h_577" = alloca [20 x i8], align 1
  %"$h_578" = load [20 x i8], [20 x i8]* %h, align 1
  store [20 x i8] %"$h_578", [20 x i8]* %"$f_h_577", align 1
  %"$f_call_579" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$f_fptr_575"(i8* %"$f_envptr_576", [20 x i8]* %"$f_h_577")
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$f_call_579", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$f_12", align 8
  %"$f_13" = alloca %TName_List_ByStr20*, align 8
  %"$$f_12_580" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$f_12", align 8
  %"$$f_12_fptr_581" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$f_12_580", 0
  %"$$f_12_envptr_582" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$f_12_580", 1
  %"$res_583" = load %TName_List_ByStr20*, %TName_List_ByStr20** %res, align 8
  %"$$f_12_call_584" = call %TName_List_ByStr20* %"$$f_12_fptr_581"(i8* %"$$f_12_envptr_582", %TName_List_ByStr20* %"$res_583")
  store %TName_List_ByStr20* %"$$f_12_call_584", %TName_List_ByStr20** %"$f_13", align 8
  %"$$f_13_585" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$f_13", align 8
  store %TName_List_ByStr20* %"$$f_13_585", %TName_List_ByStr20** %"$retval_167", align 8
  br label %"$matchsucc_538"

"$Nil_586":                                       ; preds = %"$have_gas_536"
  %"$l_587" = bitcast %TName_List_ByStr20* %1 to %CName_Nil_ByStr20*
  %"$gasrem_588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_589" = icmp ugt i64 1, %"$gasrem_588"
  br i1 %"$gascmp_589", label %"$out_of_gas_590", label %"$have_gas_591"

"$out_of_gas_590":                                ; preds = %"$Nil_586"
  call void @_out_of_gas()
  br label %"$have_gas_591"

"$have_gas_591":                                  ; preds = %"$out_of_gas_590", %"$Nil_586"
  %"$consume_592" = sub i64 %"$gasrem_588", 1
  store i64 %"$consume_592", i64* @_gasrem, align 8
  %"$z_593" = load %TName_List_ByStr20*, %TName_List_ByStr20** %z, align 8
  store %TName_List_ByStr20* %"$z_593", %TName_List_ByStr20** %"$retval_167", align 8
  br label %"$matchsucc_538"

"$empty_default_541":                             ; preds = %"$have_gas_536"
  br label %"$matchsucc_538"

"$matchsucc_538":                                 ; preds = %"$have_gas_591", %"$have_gas_572", %"$empty_default_541"
  %"$$retval_167_594" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$retval_167", align 8
  ret %TName_List_ByStr20* %"$$retval_167_594"
}

define internal { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_164"(%"$$fundef_164_env_464"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_164_env_f_508" = getelementptr inbounds %"$$fundef_164_env_464", %"$$fundef_164_env_464"* %0, i32 0, i32 0
  %"$f_envload_509" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_164_env_f_508", align 8
  %f = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_envload_509", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$$fundef_164_env_g_510" = getelementptr inbounds %"$$fundef_164_env_464", %"$$fundef_164_env_464"* %0, i32 0, i32 1
  %"$g_envload_511" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_164_env_g_510", align 8
  %g = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_envload_511", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  %"$retval_165" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 1, %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %entry
  %"$consume_516" = sub i64 %"$gasrem_512", 1
  store i64 %"$consume_516", i64* @_gasrem, align 8
  %"$$fundef_166_envp_517_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_166_envp_517_salloc" = call i8* @_salloc(i8* %"$$fundef_166_envp_517_load", i64 40)
  %"$$fundef_166_envp_517" = bitcast i8* %"$$fundef_166_envp_517_salloc" to %"$$fundef_166_env_463"*
  %"$$fundef_166_env_voidp_519" = bitcast %"$$fundef_166_env_463"* %"$$fundef_166_envp_517" to i8*
  %"$$fundef_166_cloval_520" = insertvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)* bitcast (%TName_List_ByStr20* (%"$$fundef_166_env_463"*, %TName_List_ByStr20*)* @"$fundef_166" to %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_166_env_voidp_519", 1
  %"$$fundef_166_env_f_521" = getelementptr inbounds %"$$fundef_166_env_463", %"$$fundef_166_env_463"* %"$$fundef_166_envp_517", i32 0, i32 0
  %"$f_522" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_522", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_166_env_f_521", align 8
  %"$$fundef_166_env_g_523" = getelementptr inbounds %"$$fundef_166_env_463", %"$$fundef_166_env_463"* %"$$fundef_166_envp_517", i32 0, i32 1
  %"$g_524" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_524", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_166_env_g_523", align 8
  %"$$fundef_166_env_z_525" = getelementptr inbounds %"$$fundef_166_env_463", %"$$fundef_166_env_463"* %"$$fundef_166_envp_517", i32 0, i32 2
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_166_env_z_525", align 8
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_166_cloval_520", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_165", align 8
  %"$$retval_165_526" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_165", align 8
  ret { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_165_526"
}

define internal { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_162"(%"$$fundef_162_env_465"* %0, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1) {
entry:
  %"$retval_163" = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_490" = icmp ugt i64 1, %"$gasrem_489"
  br i1 %"$gascmp_490", label %"$out_of_gas_491", label %"$have_gas_492"

"$out_of_gas_491":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_492"

"$have_gas_492":                                  ; preds = %"$out_of_gas_491", %entry
  %"$consume_493" = sub i64 %"$gasrem_489", 1
  store i64 %"$consume_493", i64* @_gasrem, align 8
  %"$gasrem_494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_495" = icmp ugt i64 1, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %"$have_gas_492"
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %"$have_gas_492"
  %"$consume_498" = sub i64 %"$gasrem_494", 1
  store i64 %"$consume_498", i64* @_gasrem, align 8
  %"$$fundef_164_envp_499_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_164_envp_499_salloc" = call i8* @_salloc(i8* %"$$fundef_164_envp_499_load", i64 32)
  %"$$fundef_164_envp_499" = bitcast i8* %"$$fundef_164_envp_499_salloc" to %"$$fundef_164_env_464"*
  %"$$fundef_164_env_voidp_501" = bitcast %"$$fundef_164_env_464"* %"$$fundef_164_envp_499" to i8*
  %"$$fundef_164_cloval_502" = insertvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_164_env_464"*, %TName_List_ByStr20*)* @"$fundef_164" to { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_164_env_voidp_501", 1
  %g = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_164_cloval_502", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  %"$$fundef_164_env_f_503" = getelementptr inbounds %"$$fundef_164_env_464", %"$$fundef_164_env_464"* %"$$fundef_164_envp_499", i32 0, i32 0
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_164_env_f_503", align 8
  %"$$fundef_164_env_g_504" = getelementptr inbounds %"$$fundef_164_env_464", %"$$fundef_164_env_464"* %"$$fundef_164_envp_499", i32 0, i32 1
  %"$g_505" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_505", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_164_env_g_504", align 8
  %"$g_506" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_506", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_163", align 8
  %"$$retval_163_507" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_163", align 8
  ret { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_163_507"
}

define internal { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_160"(%"$$fundef_160_env_466"* %0) {
entry:
  %"$retval_161" = alloca { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 1, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %entry
  %"$consume_484" = sub i64 %"$gasrem_480", 1
  store i64 %"$consume_484", i64* @_gasrem, align 8
  store { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })* bitcast ({ { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_162_env_465"*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })* @"$fundef_162" to { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*), i8* null }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_161", align 8
  %"$$retval_161_488" = load { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_161", align 8
  ret { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_161_488"
}

define internal { i8*, i8* }* @"$fundef_158"(%"$$fundef_158_env_467"* %0) {
entry:
  %"$retval_159" = alloca { i8*, i8* }*, align 8
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %entry
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  %"$dyndisp_table_476_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_476_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_476_salloc_load", i64 48)
  %"$dyndisp_table_476_salloc" = bitcast i8* %"$dyndisp_table_476_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_476" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_476_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_477" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_476", i32 1
  %"$dyndisp_pcast_478" = bitcast { i8*, i8* }* %"$dyndisp_gep_477" to { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_160_env_466"*)* @"$fundef_160" to { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_478", align 8
  store { i8*, i8* }* %"$dyndisp_table_476", { i8*, i8* }** %"$retval_159", align 8
  %"$$retval_159_479" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_159", align 8
  ret { i8*, i8* }* %"$$retval_159_479"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare [32 x i8]* @_sha256hash(i8*, %_TyDescrTy_Typ*, i8*)

declare i8* @_concat_ByStrX(i8*, i32, i8*, i32, i8*)

define void @_init_libs() {
entry:
  %"$gasrem_2372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2373" = icmp ugt i64 1, %"$gasrem_2372"
  br i1 %"$gascmp_2373", label %"$out_of_gas_2374", label %"$have_gas_2375"

"$out_of_gas_2374":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2375"

"$have_gas_2375":                                 ; preds = %"$out_of_gas_2374", %entry
  %"$consume_2376" = sub i64 %"$gasrem_2372", 1
  store i64 %"$consume_2376", i64* @_gasrem, align 8
  %"$dyndisp_table_2380_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2380_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2380_salloc_load", i64 48)
  %"$dyndisp_table_2380_salloc" = bitcast i8* %"$dyndisp_table_2380_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2380" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2380_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2381" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2380", i32 0
  %"$dyndisp_pcast_2382" = bitcast { i8*, i8* }* %"$dyndisp_gep_2381" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_158_env_467"*)* @"$fundef_158" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_2382", align 8
  store { i8*, i8* }* %"$dyndisp_table_2380", { i8*, i8* }** @list_foldr, align 8
  %"$gasrem_2383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2384" = icmp ugt i64 1, %"$gasrem_2383"
  br i1 %"$gascmp_2384", label %"$out_of_gas_2385", label %"$have_gas_2386"

"$out_of_gas_2385":                               ; preds = %"$have_gas_2375"
  call void @_out_of_gas()
  br label %"$have_gas_2386"

"$have_gas_2386":                                 ; preds = %"$out_of_gas_2385", %"$have_gas_2375"
  %"$consume_2387" = sub i64 %"$gasrem_2383", 1
  store i64 %"$consume_2387", i64* @_gasrem, align 8
  %"$dyndisp_table_2391_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2391_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2391_salloc_load", i64 48)
  %"$dyndisp_table_2391_salloc" = bitcast i8* %"$dyndisp_table_2391_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2391" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2391_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2392" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2391", i32 0
  %"$dyndisp_pcast_2393" = bitcast { i8*, i8* }* %"$dyndisp_gep_2392" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_146_env_462"*)* @"$fundef_146" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_2393", align 8
  store { i8*, i8* }* %"$dyndisp_table_2391", { i8*, i8* }** @list_foldk, align 8
  %"$gasrem_2394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2395" = icmp ugt i64 1, %"$gasrem_2394"
  br i1 %"$gascmp_2395", label %"$out_of_gas_2396", label %"$have_gas_2397"

"$out_of_gas_2396":                               ; preds = %"$have_gas_2386"
  call void @_out_of_gas()
  br label %"$have_gas_2397"

"$have_gas_2397":                                 ; preds = %"$out_of_gas_2396", %"$have_gas_2386"
  %"$consume_2398" = sub i64 %"$gasrem_2394", 1
  store i64 %"$consume_2398", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_174_env_456"*, %TName_Bool*)* @"$fundef_174" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$gasrem_2402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2403" = icmp ugt i64 1, %"$gasrem_2402"
  br i1 %"$gascmp_2403", label %"$out_of_gas_2404", label %"$have_gas_2405"

"$out_of_gas_2404":                               ; preds = %"$have_gas_2397"
  call void @_out_of_gas()
  br label %"$have_gas_2405"

"$have_gas_2405":                                 ; preds = %"$out_of_gas_2404", %"$have_gas_2397"
  %"$consume_2406" = sub i64 %"$gasrem_2402", 1
  store i64 %"$consume_2406", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_170_env_454"*, %TName_Bool*)* @"$fundef_170" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$gasrem_2410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2411" = icmp ugt i64 1, %"$gasrem_2410"
  br i1 %"$gascmp_2411", label %"$out_of_gas_2412", label %"$have_gas_2413"

"$out_of_gas_2412":                               ; preds = %"$have_gas_2405"
  call void @_out_of_gas()
  br label %"$have_gas_2413"

"$have_gas_2413":                                 ; preds = %"$out_of_gas_2412", %"$have_gas_2405"
  %"$consume_2414" = sub i64 %"$gasrem_2410", 1
  store i64 %"$consume_2414", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_168_env_452"*, %TName_Bool*)* @"$fundef_168" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$gasrem_2418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2419" = icmp ugt i64 1, %"$gasrem_2418"
  br i1 %"$gascmp_2419", label %"$out_of_gas_2420", label %"$have_gas_2421"

"$out_of_gas_2420":                               ; preds = %"$have_gas_2413"
  call void @_out_of_gas()
  br label %"$have_gas_2421"

"$have_gas_2421":                                 ; preds = %"$out_of_gas_2420", %"$have_gas_2413"
  %"$consume_2422" = sub i64 %"$gasrem_2418", 1
  store i64 %"$consume_2422", i64* @_gasrem, align 8
  %"$$fundef_200_envp_2423_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_200_envp_2423_salloc" = call i8* @_salloc(i8* %"$$fundef_200_envp_2423_load", i64 8)
  %"$$fundef_200_envp_2423" = bitcast i8* %"$$fundef_200_envp_2423_salloc" to %"$$fundef_200_env_451"*
  %"$$fundef_200_env_voidp_2425" = bitcast %"$$fundef_200_env_451"* %"$$fundef_200_envp_2423" to i8*
  %"$$fundef_200_cloval_2426" = insertvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_200_env_451"*)* @"$fundef_200" to { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_200_env_voidp_2425", 1
  %"$$fundef_200_env_list_foldr_2427" = getelementptr inbounds %"$$fundef_200_env_451", %"$$fundef_200_env_451"* %"$$fundef_200_envp_2423", i32 0, i32 0
  %"$list_foldr_2428" = load { i8*, i8* }*, { i8*, i8* }** @list_foldr, align 8
  store { i8*, i8* }* %"$list_foldr_2428", { i8*, i8* }** %"$$fundef_200_env_list_foldr_2427", align 8
  %"$dyndisp_table_2429_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2429_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2429_salloc_load", i64 48)
  %"$dyndisp_table_2429_salloc" = bitcast i8* %"$dyndisp_table_2429_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2429" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2429_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2430" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2429", i32 0
  %"$dyndisp_pcast_2431" = bitcast { i8*, i8* }* %"$dyndisp_gep_2430" to { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_200_cloval_2426", { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2431", align 8
  store { i8*, i8* }* %"$dyndisp_table_2429", { i8*, i8* }** @ListUtils.list_filter, align 8
  %"$gasrem_2432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2433" = icmp ugt i64 1, %"$gasrem_2432"
  br i1 %"$gascmp_2433", label %"$out_of_gas_2434", label %"$have_gas_2435"

"$out_of_gas_2434":                               ; preds = %"$have_gas_2421"
  call void @_out_of_gas()
  br label %"$have_gas_2435"

"$have_gas_2435":                                 ; preds = %"$out_of_gas_2434", %"$have_gas_2421"
  %"$consume_2436" = sub i64 %"$gasrem_2432", 1
  store i64 %"$consume_2436", i64* @_gasrem, align 8
  %"$$fundef_190_envp_2437_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_190_envp_2437_salloc" = call i8* @_salloc(i8* %"$$fundef_190_envp_2437_load", i64 8)
  %"$$fundef_190_envp_2437" = bitcast i8* %"$$fundef_190_envp_2437_salloc" to %"$$fundef_190_env_447"*
  %"$$fundef_190_env_voidp_2439" = bitcast %"$$fundef_190_env_447"* %"$$fundef_190_envp_2437" to i8*
  %"$$fundef_190_cloval_2440" = insertvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_190_env_447"*)* @"$fundef_190" to { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_190_env_voidp_2439", 1
  %"$$fundef_190_env_list_foldk_2441" = getelementptr inbounds %"$$fundef_190_env_447", %"$$fundef_190_env_447"* %"$$fundef_190_envp_2437", i32 0, i32 0
  %"$list_foldk_2442" = load { i8*, i8* }*, { i8*, i8* }** @list_foldk, align 8
  store { i8*, i8* }* %"$list_foldk_2442", { i8*, i8* }** %"$$fundef_190_env_list_foldk_2441", align 8
  %"$dyndisp_table_2443_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2443_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2443_salloc_load", i64 48)
  %"$dyndisp_table_2443_salloc" = bitcast i8* %"$dyndisp_table_2443_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2443" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2443_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2444" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2443", i32 0
  %"$dyndisp_pcast_2445" = bitcast { i8*, i8* }* %"$dyndisp_gep_2444" to { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_190_cloval_2440", { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2445", align 8
  store { i8*, i8* }* %"$dyndisp_table_2443", { i8*, i8* }** @ListUtils.list_find, align 8
  %"$gasrem_2446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2447" = icmp ugt i64 1, %"$gasrem_2446"
  br i1 %"$gascmp_2447", label %"$out_of_gas_2448", label %"$have_gas_2449"

"$out_of_gas_2448":                               ; preds = %"$have_gas_2435"
  call void @_out_of_gas()
  br label %"$have_gas_2449"

"$have_gas_2449":                                 ; preds = %"$out_of_gas_2448", %"$have_gas_2435"
  %"$consume_2450" = sub i64 %"$gasrem_2446", 1
  store i64 %"$consume_2450", i64* @_gasrem, align 8
  %"$$fundef_184_envp_2451_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_184_envp_2451_salloc" = call i8* @_salloc(i8* %"$$fundef_184_envp_2451_load", i64 8)
  %"$$fundef_184_envp_2451" = bitcast i8* %"$$fundef_184_envp_2451_salloc" to %"$$fundef_184_env_442"*
  %"$$fundef_184_env_voidp_2453" = bitcast %"$$fundef_184_env_442"* %"$$fundef_184_envp_2451" to i8*
  %"$$fundef_184_cloval_2454" = insertvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_184_env_442"*)* @"$fundef_184" to { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_184_env_voidp_2453", 1
  %"$$fundef_184_env_ListUtils.list_find_2455" = getelementptr inbounds %"$$fundef_184_env_442", %"$$fundef_184_env_442"* %"$$fundef_184_envp_2451", i32 0, i32 0
  %"$ListUtils.list_find_2456" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_find, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_2456", { i8*, i8* }** %"$$fundef_184_env_ListUtils.list_find_2455", align 8
  %"$dyndisp_table_2457_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2457_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2457_salloc_load", i64 48)
  %"$dyndisp_table_2457_salloc" = bitcast i8* %"$dyndisp_table_2457_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2457" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2457_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2458" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2457", i32 0
  %"$dyndisp_pcast_2459" = bitcast { i8*, i8* }* %"$dyndisp_gep_2458" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_184_cloval_2454", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2459", align 8
  store { i8*, i8* }* %"$dyndisp_table_2457", { i8*, i8* }** @ListUtils.list_exists, align 8
  %"$gasrem_2460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2461" = icmp ugt i64 1, %"$gasrem_2460"
  br i1 %"$gascmp_2461", label %"$out_of_gas_2462", label %"$have_gas_2463"

"$out_of_gas_2462":                               ; preds = %"$have_gas_2449"
  call void @_out_of_gas()
  br label %"$have_gas_2463"

"$have_gas_2463":                                 ; preds = %"$out_of_gas_2462", %"$have_gas_2449"
  %"$consume_2464" = sub i64 %"$gasrem_2460", 1
  store i64 %"$consume_2464", i64* @_gasrem, align 8
  %"$$fundef_178_envp_2465_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_178_envp_2465_salloc" = call i8* @_salloc(i8* %"$$fundef_178_envp_2465_load", i64 8)
  %"$$fundef_178_envp_2465" = bitcast i8* %"$$fundef_178_envp_2465_salloc" to %"$$fundef_178_env_439"*
  %"$$fundef_178_env_voidp_2467" = bitcast %"$$fundef_178_env_439"* %"$$fundef_178_envp_2465" to i8*
  %"$$fundef_178_cloval_2468" = insertvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_178_env_439"*)* @"$fundef_178" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_178_env_voidp_2467", 1
  %"$$fundef_178_env_ListUtils.list_exists_2469" = getelementptr inbounds %"$$fundef_178_env_439", %"$$fundef_178_env_439"* %"$$fundef_178_envp_2465", i32 0, i32 0
  %"$ListUtils.list_exists_2470" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_exists, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_2470", { i8*, i8* }** %"$$fundef_178_env_ListUtils.list_exists_2469", align 8
  %"$dyndisp_table_2471_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2471_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2471_salloc_load", i64 48)
  %"$dyndisp_table_2471_salloc" = bitcast i8* %"$dyndisp_table_2471_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2471" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2471_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2472" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2471", i32 0
  %"$dyndisp_pcast_2473" = bitcast { i8*, i8* }* %"$dyndisp_gep_2472" to { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_178_cloval_2468", { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2473", align 8
  store { i8*, i8* }* %"$dyndisp_table_2471", { i8*, i8* }** @ListUtils.list_mem, align 8
  %"$gasrem_2474" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2475" = icmp ugt i64 1, %"$gasrem_2474"
  br i1 %"$gascmp_2475", label %"$out_of_gas_2476", label %"$have_gas_2477"

"$out_of_gas_2476":                               ; preds = %"$have_gas_2463"
  call void @_out_of_gas()
  br label %"$have_gas_2477"

"$have_gas_2477":                                 ; preds = %"$out_of_gas_2476", %"$have_gas_2463"
  %"$consume_2478" = sub i64 %"$gasrem_2474", 1
  store i64 %"$consume_2478", i64* @_gasrem, align 8
  store [20 x i8] zeroinitializer, [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$gasrem_2479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2480" = icmp ugt i64 1, %"$gasrem_2479"
  br i1 %"$gascmp_2480", label %"$out_of_gas_2481", label %"$have_gas_2482"

"$out_of_gas_2481":                               ; preds = %"$have_gas_2477"
  call void @_out_of_gas()
  br label %"$have_gas_2482"

"$have_gas_2482":                                 ; preds = %"$out_of_gas_2481", %"$have_gas_2477"
  %"$consume_2483" = sub i64 %"$gasrem_2479", 1
  store i64 %"$consume_2483", i64* @_gasrem, align 8
  %"$adtval_2484_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2484_salloc" = call i8* @_salloc(i8* %"$adtval_2484_load", i64 1)
  %"$adtval_2484" = bitcast i8* %"$adtval_2484_salloc" to %CName_Nil_ByStr20*
  %"$adtgep_2485" = getelementptr inbounds %CName_Nil_ByStr20, %CName_Nil_ByStr20* %"$adtval_2484", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2485", align 1
  %"$adtptr_2486" = bitcast %CName_Nil_ByStr20* %"$adtval_2484" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2486", %TName_List_ByStr20** @ud-registry.nilByStr20, align 8
  %"$gasrem_2487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2488" = icmp ugt i64 1, %"$gasrem_2487"
  br i1 %"$gascmp_2488", label %"$out_of_gas_2489", label %"$have_gas_2490"

"$out_of_gas_2489":                               ; preds = %"$have_gas_2482"
  call void @_out_of_gas()
  br label %"$have_gas_2490"

"$have_gas_2490":                                 ; preds = %"$out_of_gas_2489", %"$have_gas_2482"
  %"$consume_2491" = sub i64 %"$gasrem_2487", 1
  store i64 %"$consume_2491", i64* @_gasrem, align 8
  %"$adtval_2492_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2492_salloc" = call i8* @_salloc(i8* %"$adtval_2492_load", i64 1)
  %"$adtval_2492" = bitcast i8* %"$adtval_2492_salloc" to %CName_Nil_Message*
  %"$adtgep_2493" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_2492", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2493", align 1
  %"$adtptr_2494" = bitcast %CName_Nil_Message* %"$adtval_2492" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_2494", %TName_List_Message** @ud-registry.nilMessage, align 8
  %"$gasrem_2495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2496" = icmp ugt i64 1, %"$gasrem_2495"
  br i1 %"$gascmp_2496", label %"$out_of_gas_2497", label %"$have_gas_2498"

"$out_of_gas_2497":                               ; preds = %"$have_gas_2490"
  call void @_out_of_gas()
  br label %"$have_gas_2498"

"$have_gas_2498":                                 ; preds = %"$out_of_gas_2497", %"$have_gas_2490"
  %"$consume_2499" = sub i64 %"$gasrem_2495", 1
  store i64 %"$consume_2499", i64* @_gasrem, align 8
  %"$$fundef_270_envp_2500_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_270_envp_2500_salloc" = call i8* @_salloc(i8* %"$$fundef_270_envp_2500_load", i64 8)
  %"$$fundef_270_envp_2500" = bitcast i8* %"$$fundef_270_envp_2500_salloc" to %"$$fundef_270_env_436"*
  %"$$fundef_270_env_voidp_2502" = bitcast %"$$fundef_270_env_436"* %"$$fundef_270_envp_2500" to i8*
  %"$$fundef_270_cloval_2503" = insertvalue { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_270_env_436"*, i8*)* @"$fundef_270" to %TName_List_Message* (i8*, i8*)*), i8* undef }, i8* %"$$fundef_270_env_voidp_2502", 1
  %"$$fundef_270_env_ud-registry.nilMessage_2504" = getelementptr inbounds %"$$fundef_270_env_436", %"$$fundef_270_env_436"* %"$$fundef_270_envp_2500", i32 0, i32 0
  %"$ud-registry.nilMessage_2505" = load %TName_List_Message*, %TName_List_Message** @ud-registry.nilMessage, align 8
  store %TName_List_Message* %"$ud-registry.nilMessage_2505", %TName_List_Message** %"$$fundef_270_env_ud-registry.nilMessage_2504", align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } %"$$fundef_270_cloval_2503", { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$gasrem_2506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2507" = icmp ugt i64 1, %"$gasrem_2506"
  br i1 %"$gascmp_2507", label %"$out_of_gas_2508", label %"$have_gas_2509"

"$out_of_gas_2508":                               ; preds = %"$have_gas_2498"
  call void @_out_of_gas()
  br label %"$have_gas_2509"

"$have_gas_2509":                                 ; preds = %"$out_of_gas_2508", %"$have_gas_2498"
  %"$consume_2510" = sub i64 %"$gasrem_2506", 1
  store i64 %"$consume_2510", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_266_env_435"*, [20 x i8]*)* @"$fundef_266" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eqByStr20, align 8
  %"$gasrem_2514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2515" = icmp ugt i64 1, %"$gasrem_2514"
  br i1 %"$gascmp_2515", label %"$out_of_gas_2516", label %"$have_gas_2517"

"$out_of_gas_2516":                               ; preds = %"$have_gas_2509"
  call void @_out_of_gas()
  br label %"$have_gas_2517"

"$have_gas_2517":                                 ; preds = %"$out_of_gas_2516", %"$have_gas_2509"
  %"$consume_2518" = sub i64 %"$gasrem_2514", 1
  store i64 %"$consume_2518", i64* @_gasrem, align 8
  %"$$fundef_262_envp_2519_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_262_envp_2519_salloc" = call i8* @_salloc(i8* %"$$fundef_262_envp_2519_load", i64 24)
  %"$$fundef_262_envp_2519" = bitcast i8* %"$$fundef_262_envp_2519_salloc" to %"$$fundef_262_env_433"*
  %"$$fundef_262_env_voidp_2521" = bitcast %"$$fundef_262_env_433"* %"$$fundef_262_envp_2519" to i8*
  %"$$fundef_262_cloval_2522" = insertvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_262_env_433"*, %TName_List_ByStr20*)* @"$fundef_262" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_262_env_voidp_2521", 1
  %"$$fundef_262_env_ListUtils.list_mem_2523" = getelementptr inbounds %"$$fundef_262_env_433", %"$$fundef_262_env_433"* %"$$fundef_262_envp_2519", i32 0, i32 0
  %"$ListUtils.list_mem_2524" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_mem, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_2524", { i8*, i8* }** %"$$fundef_262_env_ListUtils.list_mem_2523", align 8
  %"$$fundef_262_env_ud-registry.eqByStr20_2525" = getelementptr inbounds %"$$fundef_262_env_433", %"$$fundef_262_env_433"* %"$$fundef_262_envp_2519", i32 0, i32 1
  %"$ud-registry.eqByStr20_2526" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eqByStr20, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_2526", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_262_env_ud-registry.eqByStr20_2525", align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_262_cloval_2522", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$gasrem_2527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2528" = icmp ugt i64 1, %"$gasrem_2527"
  br i1 %"$gascmp_2528", label %"$out_of_gas_2529", label %"$have_gas_2530"

"$out_of_gas_2529":                               ; preds = %"$have_gas_2517"
  call void @_out_of_gas()
  br label %"$have_gas_2530"

"$have_gas_2530":                                 ; preds = %"$out_of_gas_2529", %"$have_gas_2517"
  %"$consume_2531" = sub i64 %"$gasrem_2527", 1
  store i64 %"$consume_2531", i64* @_gasrem, align 8
  %"$$fundef_258_envp_2532_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_258_envp_2532_salloc" = call i8* @_salloc(i8* %"$$fundef_258_envp_2532_load", i64 32)
  %"$$fundef_258_envp_2532" = bitcast i8* %"$$fundef_258_envp_2532_salloc" to %"$$fundef_258_env_431"*
  %"$$fundef_258_env_voidp_2534" = bitcast %"$$fundef_258_env_431"* %"$$fundef_258_envp_2532" to i8*
  %"$$fundef_258_cloval_2535" = insertvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_258_env_431"*, %TName_List_ByStr20*)* @"$fundef_258" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_258_env_voidp_2534", 1
  %"$$fundef_258_env_BoolUtils.negb_2536" = getelementptr inbounds %"$$fundef_258_env_431", %"$$fundef_258_env_431"* %"$$fundef_258_envp_2532", i32 0, i32 0
  %"$BoolUtils.negb_2537" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_2537", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_258_env_BoolUtils.negb_2536", align 8
  %"$$fundef_258_env_ud-registry.listByStr20Contains_2538" = getelementptr inbounds %"$$fundef_258_env_431", %"$$fundef_258_env_431"* %"$$fundef_258_envp_2532", i32 0, i32 1
  %"$ud-registry.listByStr20Contains_2539" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2539", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_258_env_ud-registry.listByStr20Contains_2538", align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_258_cloval_2535", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes, align 8
  %"$gasrem_2540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2541" = icmp ugt i64 1, %"$gasrem_2540"
  br i1 %"$gascmp_2541", label %"$out_of_gas_2542", label %"$have_gas_2543"

"$out_of_gas_2542":                               ; preds = %"$have_gas_2530"
  call void @_out_of_gas()
  br label %"$have_gas_2543"

"$have_gas_2543":                                 ; preds = %"$out_of_gas_2542", %"$have_gas_2530"
  %"$consume_2544" = sub i64 %"$gasrem_2540", 1
  store i64 %"$consume_2544", i64* @_gasrem, align 8
  %"$$fundef_252_envp_2545_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_252_envp_2545_salloc" = call i8* @_salloc(i8* %"$$fundef_252_envp_2545_load", i64 24)
  %"$$fundef_252_envp_2545" = bitcast i8* %"$$fundef_252_envp_2545_salloc" to %"$$fundef_252_env_429"*
  %"$$fundef_252_env_voidp_2547" = bitcast %"$$fundef_252_env_429"* %"$$fundef_252_envp_2545" to i8*
  %"$$fundef_252_cloval_2548" = insertvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_252_env_429"*, %TName_List_ByStr20*)* @"$fundef_252" to { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_252_env_voidp_2547", 1
  %"$$fundef_252_env_BoolUtils.negb_2549" = getelementptr inbounds %"$$fundef_252_env_429", %"$$fundef_252_env_429"* %"$$fundef_252_envp_2545", i32 0, i32 0
  %"$BoolUtils.negb_2550" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_2550", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_252_env_BoolUtils.negb_2549", align 8
  %"$$fundef_252_env_ListUtils.list_filter_2551" = getelementptr inbounds %"$$fundef_252_env_429", %"$$fundef_252_env_429"* %"$$fundef_252_envp_2545", i32 0, i32 1
  %"$ListUtils.list_filter_2552" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_filter, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_2552", { i8*, i8* }** %"$$fundef_252_env_ListUtils.list_filter_2551", align 8
  store { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_252_cloval_2548", { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8
  %"$gasrem_2553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2554" = icmp ugt i64 1, %"$gasrem_2553"
  br i1 %"$gascmp_2554", label %"$out_of_gas_2555", label %"$have_gas_2556"

"$out_of_gas_2555":                               ; preds = %"$have_gas_2543"
  call void @_out_of_gas()
  br label %"$have_gas_2556"

"$have_gas_2556":                                 ; preds = %"$out_of_gas_2555", %"$have_gas_2543"
  %"$consume_2557" = sub i64 %"$gasrem_2553", 1
  store i64 %"$consume_2557", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_248_env_426"*, %TName_Bool*)* @"$fundef_248" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8
  %"$gasrem_2561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2562" = icmp ugt i64 1, %"$gasrem_2561"
  br i1 %"$gascmp_2562", label %"$out_of_gas_2563", label %"$have_gas_2564"

"$out_of_gas_2563":                               ; preds = %"$have_gas_2556"
  call void @_out_of_gas()
  br label %"$have_gas_2564"

"$have_gas_2564":                                 ; preds = %"$out_of_gas_2563", %"$have_gas_2556"
  %"$consume_2565" = sub i64 %"$gasrem_2561", 1
  store i64 %"$consume_2565", i64* @_gasrem, align 8
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_244_env_424"*, [20 x i8]*)* @"$fundef_244" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eAdminSet, align 8
  %"$gasrem_2569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2570" = icmp ugt i64 1, %"$gasrem_2569"
  br i1 %"$gascmp_2570", label %"$out_of_gas_2571", label %"$have_gas_2572"

"$out_of_gas_2571":                               ; preds = %"$have_gas_2564"
  call void @_out_of_gas()
  br label %"$have_gas_2572"

"$have_gas_2572":                                 ; preds = %"$out_of_gas_2571", %"$have_gas_2564"
  %"$consume_2573" = sub i64 %"$gasrem_2569", 1
  store i64 %"$consume_2573", i64* @_gasrem, align 8
  store { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_238_env_422"*, [20 x i8]*)* @"$fundef_238" to { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApprovedFor, align 8
  %"$gasrem_2577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2578" = icmp ugt i64 1, %"$gasrem_2577"
  br i1 %"$gascmp_2578", label %"$out_of_gas_2579", label %"$have_gas_2580"

"$out_of_gas_2579":                               ; preds = %"$have_gas_2572"
  call void @_out_of_gas()
  br label %"$have_gas_2580"

"$have_gas_2580":                                 ; preds = %"$out_of_gas_2579", %"$have_gas_2572"
  %"$consume_2581" = sub i64 %"$gasrem_2577", 1
  store i64 %"$consume_2581", i64* @_gasrem, align 8
  store { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_236_env_419"*, [20 x i8]*)* @"$fundef_236" to i8* (i8*, [20 x i8]*)*), i8* null }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApproved, align 8
  %"$gasrem_2585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2586" = icmp ugt i64 1, %"$gasrem_2585"
  br i1 %"$gascmp_2586", label %"$out_of_gas_2587", label %"$have_gas_2588"

"$out_of_gas_2587":                               ; preds = %"$have_gas_2580"
  call void @_out_of_gas()
  br label %"$have_gas_2588"

"$have_gas_2588":                                 ; preds = %"$out_of_gas_2587", %"$have_gas_2580"
  %"$consume_2589" = sub i64 %"$gasrem_2585", 1
  store i64 %"$consume_2589", i64* @_gasrem, align 8
  store { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_234_env_418"*, [20 x i8]*)* @"$fundef_234" to i8* (i8*, [20 x i8]*)*), i8* null }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eNewRegistrar, align 8
  %"$gasrem_2593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2594" = icmp ugt i64 1, %"$gasrem_2593"
  br i1 %"$gascmp_2594", label %"$out_of_gas_2595", label %"$have_gas_2596"

"$out_of_gas_2595":                               ; preds = %"$have_gas_2588"
  call void @_out_of_gas()
  br label %"$have_gas_2596"

"$have_gas_2596":                                 ; preds = %"$out_of_gas_2595", %"$have_gas_2588"
  %"$consume_2597" = sub i64 %"$gasrem_2593", 1
  store i64 %"$consume_2597", i64* @_gasrem, align 8
  store { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)* bitcast ({ i8* (i8*, %String)*, i8* } (%"$$fundef_230_env_417"*, [32 x i8]*)* @"$fundef_230" to { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain, align 8
  %"$gasrem_2601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2602" = icmp ugt i64 1, %"$gasrem_2601"
  br i1 %"$gascmp_2602", label %"$out_of_gas_2603", label %"$have_gas_2604"

"$out_of_gas_2603":                               ; preds = %"$have_gas_2596"
  call void @_out_of_gas()
  br label %"$have_gas_2604"

"$have_gas_2604":                                 ; preds = %"$out_of_gas_2603", %"$have_gas_2596"
  %"$consume_2605" = sub i64 %"$gasrem_2601", 1
  store i64 %"$consume_2605", i64* @_gasrem, align 8
  store { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)* bitcast ({ { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_224_env_415"*, [32 x i8]*)* @"$fundef_224" to { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$gasrem_2609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2610" = icmp ugt i64 1, %"$gasrem_2609"
  br i1 %"$gascmp_2610", label %"$out_of_gas_2611", label %"$have_gas_2612"

"$out_of_gas_2611":                               ; preds = %"$have_gas_2604"
  call void @_out_of_gas()
  br label %"$have_gas_2612"

"$have_gas_2612":                                 ; preds = %"$out_of_gas_2611", %"$have_gas_2604"
  %"$consume_2613" = sub i64 %"$gasrem_2609", 1
  store i64 %"$consume_2613", i64* @_gasrem, align 8
  store { i8* (i8*, %String)*, i8* } { i8* (i8*, %String)* bitcast (i8* (%"$$fundef_222_env_412"*, %String)* @"$fundef_222" to i8* (i8*, %String)*), i8* null }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$gasrem_2617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2618" = icmp ugt i64 1, %"$gasrem_2617"
  br i1 %"$gascmp_2618", label %"$out_of_gas_2619", label %"$have_gas_2620"

"$out_of_gas_2619":                               ; preds = %"$have_gas_2612"
  call void @_out_of_gas()
  br label %"$have_gas_2620"

"$have_gas_2620":                                 ; preds = %"$out_of_gas_2619", %"$have_gas_2612"
  %"$consume_2621" = sub i64 %"$gasrem_2617", 1
  store i64 %"$consume_2621", i64* @_gasrem, align 8
  %"$$fundef_220_envp_2622_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_220_envp_2622_salloc" = call i8* @_salloc(i8* %"$$fundef_220_envp_2622_load", i64 20)
  %"$$fundef_220_envp_2622" = bitcast i8* %"$$fundef_220_envp_2622_salloc" to %"$$fundef_220_env_411"*
  %"$$fundef_220_env_voidp_2624" = bitcast %"$$fundef_220_env_411"* %"$$fundef_220_envp_2622" to i8*
  %"$$fundef_220_cloval_2625" = insertvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)* bitcast (void (%"$$fundef_220_env_411"*, [20 x i8]*, %TName_Option_ud-registry.Record*)* @"$fundef_220" to void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*), i8* undef }, i8* %"$$fundef_220_env_voidp_2624", 1
  %"$$fundef_220_env_ud-registry.zeroByStr20_2626" = getelementptr inbounds %"$$fundef_220_env_411", %"$$fundef_220_env_411"* %"$$fundef_220_envp_2622", i32 0, i32 0
  %"$ud-registry.zeroByStr20_2627" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_2627", [20 x i8]* %"$$fundef_220_env_ud-registry.zeroByStr20_2626", align 1
  store { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$$fundef_220_cloval_2625", { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$gasrem_2628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2629" = icmp ugt i64 1, %"$gasrem_2628"
  br i1 %"$gascmp_2629", label %"$out_of_gas_2630", label %"$have_gas_2631"

"$out_of_gas_2630":                               ; preds = %"$have_gas_2620"
  call void @_out_of_gas()
  br label %"$have_gas_2631"

"$have_gas_2631":                                 ; preds = %"$out_of_gas_2630", %"$have_gas_2620"
  %"$consume_2632" = sub i64 %"$gasrem_2628", 1
  store i64 %"$consume_2632", i64* @_gasrem, align 8
  store { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)* bitcast ({ void (i8*, [32 x i8]*, %String)*, i8* } (%"$$fundef_216_env_410"*, [32 x i8]*)* @"$fundef_216" to { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$gasrem_2636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2637" = icmp ugt i64 1, %"$gasrem_2636"
  br i1 %"$gascmp_2637", label %"$out_of_gas_2638", label %"$have_gas_2639"

"$out_of_gas_2638":                               ; preds = %"$have_gas_2631"
  call void @_out_of_gas()
  br label %"$have_gas_2639"

"$have_gas_2639":                                 ; preds = %"$out_of_gas_2638", %"$have_gas_2631"
  %"$consume_2640" = sub i64 %"$gasrem_2636", 1
  store i64 %"$consume_2640", i64* @_gasrem, align 8
  %"$$fundef_208_envp_2641_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_208_envp_2641_salloc" = call i8* @_salloc(i8* %"$$fundef_208_envp_2641_load", i64 32)
  %"$$fundef_208_envp_2641" = bitcast i8* %"$$fundef_208_envp_2641_salloc" to %"$$fundef_208_env_408"*
  %"$$fundef_208_env_voidp_2643" = bitcast %"$$fundef_208_env_408"* %"$$fundef_208_envp_2641" to i8*
  %"$$fundef_208_cloval_2644" = insertvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_208_env_408"*, [20 x i8]*)* @"$fundef_208" to { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_208_env_voidp_2643", 1
  %"$$fundef_208_env_BoolUtils.orb_2645" = getelementptr inbounds %"$$fundef_208_env_408", %"$$fundef_208_env_408"* %"$$fundef_208_envp_2641", i32 0, i32 0
  %"$BoolUtils.orb_2646" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2646", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_208_env_BoolUtils.orb_2645", align 8
  %"$$fundef_208_env_ud-registry.listByStr20Contains_2647" = getelementptr inbounds %"$$fundef_208_env_408", %"$$fundef_208_env_408"* %"$$fundef_208_envp_2641", i32 0, i32 1
  %"$ud-registry.listByStr20Contains_2648" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2648", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_208_env_ud-registry.listByStr20Contains_2647", align 8
  store { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_208_cloval_2644", { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  ret void
}

define void @_init_state() {
entry:
  %"$records_272" = alloca %Map_ByStr32_ud-registry.Record*, align 8
  %"$gasrem_2649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2650" = icmp ugt i64 1, %"$gasrem_2649"
  br i1 %"$gascmp_2650", label %"$out_of_gas_2651", label %"$have_gas_2652"

"$out_of_gas_2651":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2652"

"$have_gas_2652":                                 ; preds = %"$out_of_gas_2651", %entry
  %"$consume_2653" = sub i64 %"$gasrem_2649", 1
  store i64 %"$consume_2653", i64* @_gasrem, align 8
  %empty = alloca %Map_ByStr32_ud-registry.Record*, align 8
  %"$gasrem_2654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2655" = icmp ugt i64 1, %"$gasrem_2654"
  br i1 %"$gascmp_2655", label %"$out_of_gas_2656", label %"$have_gas_2657"

"$out_of_gas_2656":                               ; preds = %"$have_gas_2652"
  call void @_out_of_gas()
  br label %"$have_gas_2657"

"$have_gas_2657":                                 ; preds = %"$out_of_gas_2656", %"$have_gas_2652"
  %"$consume_2658" = sub i64 %"$gasrem_2654", 1
  store i64 %"$consume_2658", i64* @_gasrem, align 8
  %"$execptr_load_2659" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2660" = call i8* @_new_empty_map(i8* %"$execptr_load_2659")
  %"$_new_empty_map_2661" = bitcast i8* %"$_new_empty_map_call_2660" to %Map_ByStr32_ud-registry.Record*
  store %Map_ByStr32_ud-registry.Record* %"$_new_empty_map_2661", %Map_ByStr32_ud-registry.Record** %empty, align 8
  %"$gasrem_2662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2663" = icmp ugt i64 1, %"$gasrem_2662"
  br i1 %"$gascmp_2663", label %"$out_of_gas_2664", label %"$have_gas_2665"

"$out_of_gas_2664":                               ; preds = %"$have_gas_2657"
  call void @_out_of_gas()
  br label %"$have_gas_2665"

"$have_gas_2665":                                 ; preds = %"$out_of_gas_2664", %"$have_gas_2657"
  %"$consume_2666" = sub i64 %"$gasrem_2662", 1
  store i64 %"$consume_2666", i64* @_gasrem, align 8
  %rootRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_2667" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2668" = icmp ugt i64 1, %"$gasrem_2667"
  br i1 %"$gascmp_2668", label %"$out_of_gas_2669", label %"$have_gas_2670"

"$out_of_gas_2669":                               ; preds = %"$have_gas_2665"
  call void @_out_of_gas()
  br label %"$have_gas_2670"

"$have_gas_2670":                                 ; preds = %"$out_of_gas_2669", %"$have_gas_2665"
  %"$consume_2671" = sub i64 %"$gasrem_2667", 1
  store i64 %"$consume_2671", i64* @_gasrem, align 8
  %"$initialOwner_2672" = load [20 x i8], [20 x i8]* @_cparam_initialOwner, align 1
  %"$ud-registry.zeroByStr20_2673" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_2674_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2674_salloc" = call i8* @_salloc(i8* %"$adtval_2674_load", i64 41)
  %"$adtval_2674" = bitcast i8* %"$adtval_2674_salloc" to %CName_ud-registry.Record*
  %"$adtgep_2675" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2674", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2675", align 1
  %"$adtgep_2676" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2674", i32 0, i32 1
  store [20 x i8] %"$initialOwner_2672", [20 x i8]* %"$adtgep_2676", align 1
  %"$adtgep_2677" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2674", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_2673", [20 x i8]* %"$adtgep_2677", align 1
  %"$adtptr_2678" = bitcast %CName_ud-registry.Record* %"$adtval_2674" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_2678", %TName_ud-registry.Record** %rootRecord, align 8
  %"$empty_2679" = load %Map_ByStr32_ud-registry.Record*, %Map_ByStr32_ud-registry.Record** %empty, align 8
  %"$$empty_2679_2680" = bitcast %Map_ByStr32_ud-registry.Record* %"$empty_2679" to i8*
  %"$_lengthof_call_2681" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_325", i8* %"$$empty_2679_2680")
  %"$gasadd_2682" = add i64 1, %"$_lengthof_call_2681"
  %"$gasrem_2683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2684" = icmp ugt i64 %"$gasadd_2682", %"$gasrem_2683"
  br i1 %"$gascmp_2684", label %"$out_of_gas_2685", label %"$have_gas_2686"

"$out_of_gas_2685":                               ; preds = %"$have_gas_2670"
  call void @_out_of_gas()
  br label %"$have_gas_2686"

"$have_gas_2686":                                 ; preds = %"$out_of_gas_2685", %"$have_gas_2670"
  %"$consume_2687" = sub i64 %"$gasrem_2683", %"$gasadd_2682"
  store i64 %"$consume_2687", i64* @_gasrem, align 8
  %"$execptr_load_2688" = load i8*, i8** @_execptr, align 8
  %"$empty_2689" = load %Map_ByStr32_ud-registry.Record*, %Map_ByStr32_ud-registry.Record** %empty, align 8
  %"$$empty_2689_2690" = bitcast %Map_ByStr32_ud-registry.Record* %"$empty_2689" to i8*
  %"$put_rootNode_2691" = alloca [32 x i8], align 1
  %"$rootNode_2692" = load [32 x i8], [32 x i8]* @_cparam_rootNode, align 1
  store [32 x i8] %"$rootNode_2692", [32 x i8]* %"$put_rootNode_2691", align 1
  %"$$put_rootNode_2691_2693" = bitcast [32 x i8]* %"$put_rootNode_2691" to i8*
  %"$rootRecord_2694" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %rootRecord, align 8
  %"$$rootRecord_2694_2695" = bitcast %TName_ud-registry.Record* %"$rootRecord_2694" to i8*
  %"$put_call_2696" = call i8* @_put(i8* %"$execptr_load_2688", %_TyDescrTy_Typ* @"$TyDescr_Map_325", i8* %"$$empty_2689_2690", i8* %"$$put_rootNode_2691_2693", i8* %"$$rootRecord_2694_2695")
  %"$put_2697" = bitcast i8* %"$put_call_2696" to %Map_ByStr32_ud-registry.Record*
  store %Map_ByStr32_ud-registry.Record* %"$put_2697", %Map_ByStr32_ud-registry.Record** %"$records_272", align 8
  %"$execptr_load_2698" = load i8*, i8** @_execptr, align 8
  %"$$records_272_2700" = load %Map_ByStr32_ud-registry.Record*, %Map_ByStr32_ud-registry.Record** %"$records_272", align 8
  %"$update_value_2701" = bitcast %Map_ByStr32_ud-registry.Record* %"$$records_272_2700" to i8*
  call void @_update_field(i8* %"$execptr_load_2698", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_2699", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 0, i8* null, i8* %"$update_value_2701")
  %"$registrar_273" = alloca [20 x i8], align 1
  %"$gasrem_2702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2703" = icmp ugt i64 1, %"$gasrem_2702"
  br i1 %"$gascmp_2703", label %"$out_of_gas_2704", label %"$have_gas_2705"

"$out_of_gas_2704":                               ; preds = %"$have_gas_2686"
  call void @_out_of_gas()
  br label %"$have_gas_2705"

"$have_gas_2705":                                 ; preds = %"$out_of_gas_2704", %"$have_gas_2686"
  %"$consume_2706" = sub i64 %"$gasrem_2702", 1
  store i64 %"$consume_2706", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_2707" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_2707", [20 x i8]* %"$registrar_273", align 1
  %"$execptr_load_2708" = load i8*, i8** @_execptr, align 8
  %"$$registrar_273_2710" = load [20 x i8], [20 x i8]* %"$registrar_273", align 1
  %"$update_value_2711" = alloca [20 x i8], align 1
  store [20 x i8] %"$$registrar_273_2710", [20 x i8]* %"$update_value_2711", align 1
  %"$update_value_2712" = bitcast [20 x i8]* %"$update_value_2711" to i8*
  call void @_update_field(i8* %"$execptr_load_2708", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_2709", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i32 0, i8* null, i8* %"$update_value_2712")
  %"$approvals_274" = alloca %Map_ByStr32_ByStr20*, align 8
  %"$gasrem_2713" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2714" = icmp ugt i64 1, %"$gasrem_2713"
  br i1 %"$gascmp_2714", label %"$out_of_gas_2715", label %"$have_gas_2716"

"$out_of_gas_2715":                               ; preds = %"$have_gas_2705"
  call void @_out_of_gas()
  br label %"$have_gas_2716"

"$have_gas_2716":                                 ; preds = %"$out_of_gas_2715", %"$have_gas_2705"
  %"$consume_2717" = sub i64 %"$gasrem_2713", 1
  store i64 %"$consume_2717", i64* @_gasrem, align 8
  %"$execptr_load_2718" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2719" = call i8* @_new_empty_map(i8* %"$execptr_load_2718")
  %"$_new_empty_map_2720" = bitcast i8* %"$_new_empty_map_call_2719" to %Map_ByStr32_ByStr20*
  store %Map_ByStr32_ByStr20* %"$_new_empty_map_2720", %Map_ByStr32_ByStr20** %"$approvals_274", align 8
  %"$execptr_load_2721" = load i8*, i8** @_execptr, align 8
  %"$$approvals_274_2723" = load %Map_ByStr32_ByStr20*, %Map_ByStr32_ByStr20** %"$approvals_274", align 8
  %"$update_value_2724" = bitcast %Map_ByStr32_ByStr20* %"$$approvals_274_2723" to i8*
  call void @_update_field(i8* %"$execptr_load_2721", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_2722", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 0, i8* null, i8* %"$update_value_2724")
  %"$operators_275" = alloca %"Map_ByStr20_List_(ByStr20)"*, align 8
  %"$gasrem_2725" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2726" = icmp ugt i64 1, %"$gasrem_2725"
  br i1 %"$gascmp_2726", label %"$out_of_gas_2727", label %"$have_gas_2728"

"$out_of_gas_2727":                               ; preds = %"$have_gas_2716"
  call void @_out_of_gas()
  br label %"$have_gas_2728"

"$have_gas_2728":                                 ; preds = %"$out_of_gas_2727", %"$have_gas_2716"
  %"$consume_2729" = sub i64 %"$gasrem_2725", 1
  store i64 %"$consume_2729", i64* @_gasrem, align 8
  %"$execptr_load_2730" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2731" = call i8* @_new_empty_map(i8* %"$execptr_load_2730")
  %"$_new_empty_map_2732" = bitcast i8* %"$_new_empty_map_call_2731" to %"Map_ByStr20_List_(ByStr20)"*
  store %"Map_ByStr20_List_(ByStr20)"* %"$_new_empty_map_2732", %"Map_ByStr20_List_(ByStr20)"** %"$operators_275", align 8
  %"$execptr_load_2733" = load i8*, i8** @_execptr, align 8
  %"$$operators_275_2735" = load %"Map_ByStr20_List_(ByStr20)"*, %"Map_ByStr20_List_(ByStr20)"** %"$operators_275", align 8
  %"$update_value_2736" = bitcast %"Map_ByStr20_List_(ByStr20)"* %"$$operators_275_2735" to i8*
  call void @_update_field(i8* %"$execptr_load_2733", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_2734", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 0, i8* null, i8* %"$update_value_2736")
  %"$admins_276" = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_2737" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2738" = icmp ugt i64 1, %"$gasrem_2737"
  br i1 %"$gascmp_2738", label %"$out_of_gas_2739", label %"$have_gas_2740"

"$out_of_gas_2739":                               ; preds = %"$have_gas_2728"
  call void @_out_of_gas()
  br label %"$have_gas_2740"

"$have_gas_2740":                                 ; preds = %"$out_of_gas_2739", %"$have_gas_2728"
  %"$consume_2741" = sub i64 %"$gasrem_2737", 1
  store i64 %"$consume_2741", i64* @_gasrem, align 8
  %"$initialOwner_2742" = load [20 x i8], [20 x i8]* @_cparam_initialOwner, align 1
  %"$ud-registry.nilByStr20_2743" = load %TName_List_ByStr20*, %TName_List_ByStr20** @ud-registry.nilByStr20, align 8
  %"$adtval_2744_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2744_salloc" = call i8* @_salloc(i8* %"$adtval_2744_load", i64 29)
  %"$adtval_2744" = bitcast i8* %"$adtval_2744_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_2745" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2744", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2745", align 1
  %"$adtgep_2746" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2744", i32 0, i32 1
  store [20 x i8] %"$initialOwner_2742", [20 x i8]* %"$adtgep_2746", align 1
  %"$adtgep_2747" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2744", i32 0, i32 2
  store %TName_List_ByStr20* %"$ud-registry.nilByStr20_2743", %TName_List_ByStr20** %"$adtgep_2747", align 8
  %"$adtptr_2748" = bitcast %CName_Cons_ByStr20* %"$adtval_2744" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2748", %TName_List_ByStr20** %"$admins_276", align 8
  %"$execptr_load_2749" = load i8*, i8** @_execptr, align 8
  %"$$admins_276_2751" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$admins_276", align 8
  %"$update_value_2752" = bitcast %TName_List_ByStr20* %"$$admins_276_2751" to i8*
  call void @_update_field(i8* %"$execptr_load_2749", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2750", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i32 0, i8* null, i8* %"$update_value_2752")
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setAdmin_2753"(%Uint128 %_amount, [20 x i8]* %"$_origin_2754", [20 x i8]* %"$_sender_2755", [20 x i8]* %"$address_2756", %TName_Bool* %isApproved) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2754", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2755", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_2756", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_2758" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_2759" = call i8* @_fetch_field(i8* %"$execptr_load_2758", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2757", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i32 0, i8* null, i32 1)
  %"$currentAdmins_2760" = bitcast i8* %"$currentAdmins_call_2759" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_2760", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_2761" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_2761_2762" = bitcast %TName_List_ByStr20* %"$currentAdmins_2761" to i8*
  %"$_literal_cost_call_2763" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i8* %"$$currentAdmins_2761_2762")
  %"$gasadd_2764" = add i64 %"$_literal_cost_call_2763", 0
  %"$gasrem_2765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2766" = icmp ugt i64 %"$gasadd_2764", %"$gasrem_2765"
  br i1 %"$gascmp_2766", label %"$out_of_gas_2767", label %"$have_gas_2768"

"$out_of_gas_2767":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2768"

"$have_gas_2768":                                 ; preds = %"$out_of_gas_2767", %entry
  %"$consume_2769" = sub i64 %"$gasrem_2765", %"$gasadd_2764"
  store i64 %"$consume_2769", i64* @_gasrem, align 8
  %"$gasrem_2770" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2771" = icmp ugt i64 1, %"$gasrem_2770"
  br i1 %"$gascmp_2771", label %"$out_of_gas_2772", label %"$have_gas_2773"

"$out_of_gas_2772":                               ; preds = %"$have_gas_2768"
  call void @_out_of_gas()
  br label %"$have_gas_2773"

"$have_gas_2773":                                 ; preds = %"$out_of_gas_2772", %"$have_gas_2768"
  %"$consume_2774" = sub i64 %"$gasrem_2770", 1
  store i64 %"$consume_2774", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_2775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2776" = icmp ugt i64 1, %"$gasrem_2775"
  br i1 %"$gascmp_2776", label %"$out_of_gas_2777", label %"$have_gas_2778"

"$out_of_gas_2777":                               ; preds = %"$have_gas_2773"
  call void @_out_of_gas()
  br label %"$have_gas_2778"

"$have_gas_2778":                                 ; preds = %"$out_of_gas_2777", %"$have_gas_2773"
  %"$consume_2779" = sub i64 %"$gasrem_2775", 1
  store i64 %"$consume_2779", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_54" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_2780" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_2781" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2780", 0
  %"$ud-registry.listByStr20Contains_envptr_2782" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2780", 1
  %"$currentAdmins_2783" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_2784" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_2781"(i8* %"$ud-registry.listByStr20Contains_envptr_2782", %TName_List_ByStr20* %"$currentAdmins_2783")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_2784", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_54", align 8
  %"$ud-registry.listByStr20Contains_55" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_54_2785" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_54", align 8
  %"$$ud-registry.listByStr20Contains_54_fptr_2786" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_54_2785", 0
  %"$$ud-registry.listByStr20Contains_54_envptr_2787" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_54_2785", 1
  %"$$ud-registry.listByStr20Contains_54__sender_2788" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_54__sender_2788", align 1
  %"$$ud-registry.listByStr20Contains_54_call_2789" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_54_fptr_2786"(i8* %"$$ud-registry.listByStr20Contains_54_envptr_2787", [20 x i8]* %"$$ud-registry.listByStr20Contains_54__sender_2788")
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_54_call_2789", %TName_Bool** %"$ud-registry.listByStr20Contains_55", align 8
  %"$$ud-registry.listByStr20Contains_55_2790" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_55", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_55_2790", %TName_Bool** %isSenderAdmin, align 8
  %"$gasrem_2791" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2792" = icmp ugt i64 2, %"$gasrem_2791"
  br i1 %"$gascmp_2792", label %"$out_of_gas_2793", label %"$have_gas_2794"

"$out_of_gas_2793":                               ; preds = %"$have_gas_2778"
  call void @_out_of_gas()
  br label %"$have_gas_2794"

"$have_gas_2794":                                 ; preds = %"$out_of_gas_2793", %"$have_gas_2778"
  %"$consume_2795" = sub i64 %"$gasrem_2791", 2
  store i64 %"$consume_2795", i64* @_gasrem, align 8
  %"$isSenderAdmin_2797" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_2798" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_2797", i32 0, i32 0
  %"$isSenderAdmin_tag_2799" = load i8, i8* %"$isSenderAdmin_tag_2798", align 1
  switch i8 %"$isSenderAdmin_tag_2799", label %"$empty_default_2800" [
    i8 0, label %"$True_2801"
    i8 1, label %"$False_2943"
  ]

"$True_2801":                                     ; preds = %"$have_gas_2794"
  %"$isSenderAdmin_2802" = bitcast %TName_Bool* %"$isSenderAdmin_2797" to %CName_True*
  %"$gasrem_2803" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2804" = icmp ugt i64 1, %"$gasrem_2803"
  br i1 %"$gascmp_2804", label %"$out_of_gas_2805", label %"$have_gas_2806"

"$out_of_gas_2805":                               ; preds = %"$True_2801"
  call void @_out_of_gas()
  br label %"$have_gas_2806"

"$have_gas_2806":                                 ; preds = %"$out_of_gas_2805", %"$True_2801"
  %"$consume_2807" = sub i64 %"$gasrem_2803", 1
  store i64 %"$consume_2807", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_2808" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2809" = icmp ugt i64 1, %"$gasrem_2808"
  br i1 %"$gascmp_2809", label %"$out_of_gas_2810", label %"$have_gas_2811"

"$out_of_gas_2810":                               ; preds = %"$have_gas_2806"
  call void @_out_of_gas()
  br label %"$have_gas_2811"

"$have_gas_2811":                                 ; preds = %"$out_of_gas_2810", %"$have_gas_2806"
  %"$consume_2812" = sub i64 %"$gasrem_2808", 1
  store i64 %"$consume_2812", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_2813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2814" = icmp ugt i64 1, %"$gasrem_2813"
  br i1 %"$gascmp_2814", label %"$out_of_gas_2815", label %"$have_gas_2816"

"$out_of_gas_2815":                               ; preds = %"$have_gas_2811"
  call void @_out_of_gas()
  br label %"$have_gas_2816"

"$have_gas_2816":                                 ; preds = %"$out_of_gas_2815", %"$have_gas_2811"
  %"$consume_2817" = sub i64 %"$gasrem_2813", 1
  store i64 %"$consume_2817", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Excludes_49" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Excludes_2818" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes, align 8
  %"$ud-registry.listByStr20Excludes_fptr_2819" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_2818", 0
  %"$ud-registry.listByStr20Excludes_envptr_2820" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_2818", 1
  %"$currentAdmins_2821" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Excludes_call_2822" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_fptr_2819"(i8* %"$ud-registry.listByStr20Excludes_envptr_2820", %TName_List_ByStr20* %"$currentAdmins_2821")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_call_2822", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_49", align 8
  %"$ud-registry.listByStr20Excludes_50" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Excludes_49_2823" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_49", align 8
  %"$$ud-registry.listByStr20Excludes_49_fptr_2824" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_49_2823", 0
  %"$$ud-registry.listByStr20Excludes_49_envptr_2825" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_49_2823", 1
  %"$$ud-registry.listByStr20Excludes_49_address_2826" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20Excludes_49_address_2826", align 1
  %"$$ud-registry.listByStr20Excludes_49_call_2827" = call %TName_Bool* %"$$ud-registry.listByStr20Excludes_49_fptr_2824"(i8* %"$$ud-registry.listByStr20Excludes_49_envptr_2825", [20 x i8]* %"$$ud-registry.listByStr20Excludes_49_address_2826")
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_49_call_2827", %TName_Bool** %"$ud-registry.listByStr20Excludes_50", align 8
  %"$$ud-registry.listByStr20Excludes_50_2828" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Excludes_50", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_50_2828", %TName_Bool** %b, align 8
  %"$gasrem_2829" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2830" = icmp ugt i64 1, %"$gasrem_2829"
  br i1 %"$gascmp_2830", label %"$out_of_gas_2831", label %"$have_gas_2832"

"$out_of_gas_2831":                               ; preds = %"$have_gas_2816"
  call void @_out_of_gas()
  br label %"$have_gas_2832"

"$have_gas_2832":                                 ; preds = %"$out_of_gas_2831", %"$have_gas_2816"
  %"$consume_2833" = sub i64 %"$gasrem_2829", 1
  store i64 %"$consume_2833", i64* @_gasrem, align 8
  %"$ud-registry.xandb_51" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.xandb_2834" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8
  %"$ud-registry.xandb_fptr_2835" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2834", 0
  %"$ud-registry.xandb_envptr_2836" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2834", 1
  %"$b_2837" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$ud-registry.xandb_call_2838" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_fptr_2835"(i8* %"$ud-registry.xandb_envptr_2836", %TName_Bool* %"$b_2837")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_call_2838", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_51", align 8
  %"$ud-registry.xandb_52" = alloca %TName_Bool*, align 8
  %"$$ud-registry.xandb_51_2839" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_51", align 8
  %"$$ud-registry.xandb_51_fptr_2840" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_51_2839", 0
  %"$$ud-registry.xandb_51_envptr_2841" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_51_2839", 1
  %"$$ud-registry.xandb_51_call_2842" = call %TName_Bool* %"$$ud-registry.xandb_51_fptr_2840"(i8* %"$$ud-registry.xandb_51_envptr_2841", %TName_Bool* %isApproved)
  store %TName_Bool* %"$$ud-registry.xandb_51_call_2842", %TName_Bool** %"$ud-registry.xandb_52", align 8
  %"$$ud-registry.xandb_52_2843" = load %TName_Bool*, %TName_Bool** %"$ud-registry.xandb_52", align 8
  store %TName_Bool* %"$$ud-registry.xandb_52_2843", %TName_Bool** %needsToChange, align 8
  %"$gasrem_2844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2845" = icmp ugt i64 2, %"$gasrem_2844"
  br i1 %"$gascmp_2845", label %"$out_of_gas_2846", label %"$have_gas_2847"

"$out_of_gas_2846":                               ; preds = %"$have_gas_2832"
  call void @_out_of_gas()
  br label %"$have_gas_2847"

"$have_gas_2847":                                 ; preds = %"$out_of_gas_2846", %"$have_gas_2832"
  %"$consume_2848" = sub i64 %"$gasrem_2844", 2
  store i64 %"$consume_2848", i64* @_gasrem, align 8
  %"$needsToChange_2850" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_2851" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_2850", i32 0, i32 0
  %"$needsToChange_tag_2852" = load i8, i8* %"$needsToChange_tag_2851", align 1
  switch i8 %"$needsToChange_tag_2852", label %"$default_2853" [
    i8 0, label %"$True_2854"
  ]

"$True_2854":                                     ; preds = %"$have_gas_2847"
  %"$needsToChange_2855" = bitcast %TName_Bool* %"$needsToChange_2850" to %CName_True*
  %"$gasrem_2856" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2857" = icmp ugt i64 1, %"$gasrem_2856"
  br i1 %"$gascmp_2857", label %"$out_of_gas_2858", label %"$have_gas_2859"

"$out_of_gas_2858":                               ; preds = %"$True_2854"
  call void @_out_of_gas()
  br label %"$have_gas_2859"

"$have_gas_2859":                                 ; preds = %"$out_of_gas_2858", %"$True_2854"
  %"$consume_2860" = sub i64 %"$gasrem_2856", 1
  store i64 %"$consume_2860", i64* @_gasrem, align 8
  %newAdmins = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_2861" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2862" = icmp ugt i64 2, %"$gasrem_2861"
  br i1 %"$gascmp_2862", label %"$out_of_gas_2863", label %"$have_gas_2864"

"$out_of_gas_2863":                               ; preds = %"$have_gas_2859"
  call void @_out_of_gas()
  br label %"$have_gas_2864"

"$have_gas_2864":                                 ; preds = %"$out_of_gas_2863", %"$have_gas_2859"
  %"$consume_2865" = sub i64 %"$gasrem_2861", 2
  store i64 %"$consume_2865", i64* @_gasrem, align 8
  %"$isApproved_tag_2867" = getelementptr inbounds %TName_Bool, %TName_Bool* %isApproved, i32 0, i32 0
  %"$isApproved_tag_2868" = load i8, i8* %"$isApproved_tag_2867", align 1
  switch i8 %"$isApproved_tag_2868", label %"$empty_default_2869" [
    i8 0, label %"$True_2870"
    i8 1, label %"$False_2883"
  ]

"$True_2870":                                     ; preds = %"$have_gas_2864"
  %"$isApproved_2871" = bitcast %TName_Bool* %isApproved to %CName_True*
  %"$gasrem_2872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2873" = icmp ugt i64 1, %"$gasrem_2872"
  br i1 %"$gascmp_2873", label %"$out_of_gas_2874", label %"$have_gas_2875"

"$out_of_gas_2874":                               ; preds = %"$True_2870"
  call void @_out_of_gas()
  br label %"$have_gas_2875"

"$have_gas_2875":                                 ; preds = %"$out_of_gas_2874", %"$True_2870"
  %"$consume_2876" = sub i64 %"$gasrem_2872", 1
  store i64 %"$consume_2876", i64* @_gasrem, align 8
  %"$currentAdmins_2877" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$adtval_2878_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2878_salloc" = call i8* @_salloc(i8* %"$adtval_2878_load", i64 29)
  %"$adtval_2878" = bitcast i8* %"$adtval_2878_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_2879" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2878", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2879", align 1
  %"$adtgep_2880" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2878", i32 0, i32 1
  store [20 x i8] %address, [20 x i8]* %"$adtgep_2880", align 1
  %"$adtgep_2881" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2878", i32 0, i32 2
  store %TName_List_ByStr20* %"$currentAdmins_2877", %TName_List_ByStr20** %"$adtgep_2881", align 8
  %"$adtptr_2882" = bitcast %CName_Cons_ByStr20* %"$adtval_2878" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2882", %TName_List_ByStr20** %newAdmins, align 8
  br label %"$matchsucc_2866"

"$False_2883":                                    ; preds = %"$have_gas_2864"
  %"$isApproved_2884" = bitcast %TName_Bool* %isApproved to %CName_False*
  %"$gasrem_2885" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2886" = icmp ugt i64 1, %"$gasrem_2885"
  br i1 %"$gascmp_2886", label %"$out_of_gas_2887", label %"$have_gas_2888"

"$out_of_gas_2887":                               ; preds = %"$False_2883"
  call void @_out_of_gas()
  br label %"$have_gas_2888"

"$have_gas_2888":                                 ; preds = %"$out_of_gas_2887", %"$False_2883"
  %"$consume_2889" = sub i64 %"$gasrem_2885", 1
  store i64 %"$consume_2889", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20FilterOut_47" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20FilterOut_2890" = load { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8
  %"$ud-registry.listByStr20FilterOut_fptr_2891" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_2890", 0
  %"$ud-registry.listByStr20FilterOut_envptr_2892" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_2890", 1
  %"$currentAdmins_2893" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20FilterOut_call_2894" = call { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_fptr_2891"(i8* %"$ud-registry.listByStr20FilterOut_envptr_2892", %TName_List_ByStr20* %"$currentAdmins_2893")
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_call_2894", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_47", align 8
  %"$ud-registry.listByStr20FilterOut_48" = alloca %TName_List_ByStr20*, align 8
  %"$$ud-registry.listByStr20FilterOut_47_2895" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_47", align 8
  %"$$ud-registry.listByStr20FilterOut_47_fptr_2896" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_47_2895", 0
  %"$$ud-registry.listByStr20FilterOut_47_envptr_2897" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_47_2895", 1
  %"$$ud-registry.listByStr20FilterOut_47_address_2898" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20FilterOut_47_address_2898", align 1
  %"$$ud-registry.listByStr20FilterOut_47_call_2899" = call %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_47_fptr_2896"(i8* %"$$ud-registry.listByStr20FilterOut_47_envptr_2897", [20 x i8]* %"$$ud-registry.listByStr20FilterOut_47_address_2898")
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_47_call_2899", %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_48", align 8
  %"$$ud-registry.listByStr20FilterOut_48_2900" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_48", align 8
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_48_2900", %TName_List_ByStr20** %newAdmins, align 8
  br label %"$matchsucc_2866"

"$empty_default_2869":                            ; preds = %"$have_gas_2864"
  br label %"$matchsucc_2866"

"$matchsucc_2866":                                ; preds = %"$have_gas_2888", %"$have_gas_2875", %"$empty_default_2869"
  %"$newAdmins_2901" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newAdmins, align 8
  %"$$newAdmins_2901_2902" = bitcast %TName_List_ByStr20* %"$newAdmins_2901" to i8*
  %"$_literal_cost_call_2903" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i8* %"$$newAdmins_2901_2902")
  %"$gasrem_2904" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2905" = icmp ugt i64 %"$_literal_cost_call_2903", %"$gasrem_2904"
  br i1 %"$gascmp_2905", label %"$out_of_gas_2906", label %"$have_gas_2907"

"$out_of_gas_2906":                               ; preds = %"$matchsucc_2866"
  call void @_out_of_gas()
  br label %"$have_gas_2907"

"$have_gas_2907":                                 ; preds = %"$out_of_gas_2906", %"$matchsucc_2866"
  %"$consume_2908" = sub i64 %"$gasrem_2904", %"$_literal_cost_call_2903"
  store i64 %"$consume_2908", i64* @_gasrem, align 8
  %"$execptr_load_2909" = load i8*, i8** @_execptr, align 8
  %"$newAdmins_2911" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newAdmins, align 8
  %"$update_value_2912" = bitcast %TName_List_ByStr20* %"$newAdmins_2911" to i8*
  call void @_update_field(i8* %"$execptr_load_2909", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2910", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i32 0, i8* null, i8* %"$update_value_2912")
  %"$gasrem_2913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2914" = icmp ugt i64 1, %"$gasrem_2913"
  br i1 %"$gascmp_2914", label %"$out_of_gas_2915", label %"$have_gas_2916"

"$out_of_gas_2915":                               ; preds = %"$have_gas_2907"
  call void @_out_of_gas()
  br label %"$have_gas_2916"

"$have_gas_2916":                                 ; preds = %"$out_of_gas_2915", %"$have_gas_2907"
  %"$consume_2917" = sub i64 %"$gasrem_2913", 1
  store i64 %"$consume_2917", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_2918" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2919" = icmp ugt i64 1, %"$gasrem_2918"
  br i1 %"$gascmp_2919", label %"$out_of_gas_2920", label %"$have_gas_2921"

"$out_of_gas_2920":                               ; preds = %"$have_gas_2916"
  call void @_out_of_gas()
  br label %"$have_gas_2921"

"$have_gas_2921":                                 ; preds = %"$out_of_gas_2920", %"$have_gas_2916"
  %"$consume_2922" = sub i64 %"$gasrem_2918", 1
  store i64 %"$consume_2922", i64* @_gasrem, align 8
  %"$ud-registry.eAdminSet_45" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.eAdminSet_2923" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eAdminSet, align 8
  %"$ud-registry.eAdminSet_fptr_2924" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eAdminSet_2923", 0
  %"$ud-registry.eAdminSet_envptr_2925" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eAdminSet_2923", 1
  %"$ud-registry.eAdminSet_address_2926" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eAdminSet_address_2926", align 1
  %"$ud-registry.eAdminSet_call_2927" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.eAdminSet_fptr_2924"(i8* %"$ud-registry.eAdminSet_envptr_2925", [20 x i8]* %"$ud-registry.eAdminSet_address_2926")
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.eAdminSet_call_2927", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eAdminSet_45", align 8
  %"$ud-registry.eAdminSet_46" = alloca i8*, align 8
  %"$$ud-registry.eAdminSet_45_2928" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eAdminSet_45", align 8
  %"$$ud-registry.eAdminSet_45_fptr_2929" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eAdminSet_45_2928", 0
  %"$$ud-registry.eAdminSet_45_envptr_2930" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eAdminSet_45_2928", 1
  %"$$ud-registry.eAdminSet_45_call_2931" = call i8* %"$$ud-registry.eAdminSet_45_fptr_2929"(i8* %"$$ud-registry.eAdminSet_45_envptr_2930", %TName_Bool* %isApproved)
  store i8* %"$$ud-registry.eAdminSet_45_call_2931", i8** %"$ud-registry.eAdminSet_46", align 8
  %"$$ud-registry.eAdminSet_46_2932" = load i8*, i8** %"$ud-registry.eAdminSet_46", align 8
  store i8* %"$$ud-registry.eAdminSet_46_2932", i8** %e, align 8
  %"$e_2933" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_2935" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_2933")
  %"$gasrem_2936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2937" = icmp ugt i64 %"$_literal_cost_call_2935", %"$gasrem_2936"
  br i1 %"$gascmp_2937", label %"$out_of_gas_2938", label %"$have_gas_2939"

"$out_of_gas_2938":                               ; preds = %"$have_gas_2921"
  call void @_out_of_gas()
  br label %"$have_gas_2939"

"$have_gas_2939":                                 ; preds = %"$out_of_gas_2938", %"$have_gas_2921"
  %"$consume_2940" = sub i64 %"$gasrem_2936", %"$_literal_cost_call_2935"
  store i64 %"$consume_2940", i64* @_gasrem, align 8
  %"$execptr_load_2941" = load i8*, i8** @_execptr, align 8
  %"$e_2942" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_2941", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_2942")
  br label %"$matchsucc_2849"

"$default_2853":                                  ; preds = %"$have_gas_2847"
  br label %"$joinp_4"

"$joinp_4":                                       ; preds = %"$default_2853"
  br label %"$matchsucc_2849"

"$matchsucc_2849":                                ; preds = %"$have_gas_2939", %"$joinp_4"
  br label %"$matchsucc_2796"

"$False_2943":                                    ; preds = %"$have_gas_2794"
  %"$isSenderAdmin_2944" = bitcast %TName_Bool* %"$isSenderAdmin_2797" to %CName_False*
  %"$gasrem_2945" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2946" = icmp ugt i64 1, %"$gasrem_2945"
  br i1 %"$gascmp_2946", label %"$out_of_gas_2947", label %"$have_gas_2948"

"$out_of_gas_2947":                               ; preds = %"$False_2943"
  call void @_out_of_gas()
  br label %"$have_gas_2948"

"$have_gas_2948":                                 ; preds = %"$out_of_gas_2947", %"$False_2943"
  %"$consume_2949" = sub i64 %"$gasrem_2945", 1
  store i64 %"$consume_2949", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_2950" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2951" = icmp ugt i64 1, %"$gasrem_2950"
  br i1 %"$gascmp_2951", label %"$out_of_gas_2952", label %"$have_gas_2953"

"$out_of_gas_2952":                               ; preds = %"$have_gas_2948"
  call void @_out_of_gas()
  br label %"$have_gas_2953"

"$have_gas_2953":                                 ; preds = %"$out_of_gas_2952", %"$have_gas_2948"
  %"$consume_2954" = sub i64 %"$gasrem_2950", 1
  store i64 %"$consume_2954", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_2955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2956" = icmp ugt i64 1, %"$gasrem_2955"
  br i1 %"$gascmp_2956", label %"$out_of_gas_2957", label %"$have_gas_2958"

"$out_of_gas_2957":                               ; preds = %"$have_gas_2953"
  call void @_out_of_gas()
  br label %"$have_gas_2958"

"$have_gas_2958":                                 ; preds = %"$out_of_gas_2957", %"$have_gas_2953"
  %"$consume_2959" = sub i64 %"$gasrem_2955", 1
  store i64 %"$consume_2959", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$stringlit_2960", i32 0, i32 0), i32 26 }, %String* %m, align 8
  %"$gasrem_2961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2962" = icmp ugt i64 1, %"$gasrem_2961"
  br i1 %"$gascmp_2962", label %"$out_of_gas_2963", label %"$have_gas_2964"

"$out_of_gas_2963":                               ; preds = %"$have_gas_2958"
  call void @_out_of_gas()
  br label %"$have_gas_2964"

"$have_gas_2964":                                 ; preds = %"$out_of_gas_2963", %"$have_gas_2958"
  %"$consume_2965" = sub i64 %"$gasrem_2961", 1
  store i64 %"$consume_2965", i64* @_gasrem, align 8
  %"$ud-registry.eError_53" = alloca i8*, align 8
  %"$ud-registry.eError_2966" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_2967" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2966", 0
  %"$ud-registry.eError_envptr_2968" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2966", 1
  %"$m_2969" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_2970" = call i8* %"$ud-registry.eError_fptr_2967"(i8* %"$ud-registry.eError_envptr_2968", %String %"$m_2969")
  store i8* %"$ud-registry.eError_call_2970", i8** %"$ud-registry.eError_53", align 8
  %"$$ud-registry.eError_53_2971" = load i8*, i8** %"$ud-registry.eError_53", align 8
  store i8* %"$$ud-registry.eError_53_2971", i8** %e1, align 8
  %"$e_2972" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_2974" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_2972")
  %"$gasrem_2975" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2976" = icmp ugt i64 %"$_literal_cost_call_2974", %"$gasrem_2975"
  br i1 %"$gascmp_2976", label %"$out_of_gas_2977", label %"$have_gas_2978"

"$out_of_gas_2977":                               ; preds = %"$have_gas_2964"
  call void @_out_of_gas()
  br label %"$have_gas_2978"

"$have_gas_2978":                                 ; preds = %"$out_of_gas_2977", %"$have_gas_2964"
  %"$consume_2979" = sub i64 %"$gasrem_2975", %"$_literal_cost_call_2974"
  store i64 %"$consume_2979", i64* @_gasrem, align 8
  %"$execptr_load_2980" = load i8*, i8** @_execptr, align 8
  %"$e_2981" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_2980", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_2981")
  br label %"$matchsucc_2796"

"$empty_default_2800":                            ; preds = %"$have_gas_2794"
  br label %"$matchsucc_2796"

"$matchsucc_2796":                                ; preds = %"$have_gas_2978", %"$matchsucc_2849", %"$empty_default_2800"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) {
entry:
  %"$_amount_2983" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2984" = bitcast i8* %"$_amount_2983" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2984", align 8
  %"$_origin_2985" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2986" = bitcast i8* %"$_origin_2985" to [20 x i8]*
  %"$_sender_2987" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2988" = bitcast i8* %"$_sender_2987" to [20 x i8]*
  %"$address_2989" = getelementptr i8, i8* %0, i32 56
  %"$address_2990" = bitcast i8* %"$address_2989" to [20 x i8]*
  %"$isApproved_2991" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_2992" = bitcast i8* %"$isApproved_2991" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_2992", align 8
  call void @"$setAdmin_2753"(%Uint128 %_amount, [20 x i8]* %"$_origin_2986", [20 x i8]* %"$_sender_2988", [20 x i8]* %"$address_2990", %TName_Bool* %isApproved)
  ret void
}

define internal void @"$approve_2993"(%Uint128 %_amount, [20 x i8]* %"$_origin_2994", [20 x i8]* %"$_sender_2995", [32 x i8]* %"$node_2996", [20 x i8]* %"$address_2997") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2994", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2995", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_2996", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_2997", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_2998_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2998_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2998_salloc_load", i64 32)
  %"$indices_buf_2998_salloc" = bitcast i8* %"$indices_buf_2998_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2998" = bitcast [32 x i8]* %"$indices_buf_2998_salloc" to i8*
  %"$indices_gep_2999" = getelementptr i8, i8* %"$indices_buf_2998", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2999" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3001" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_3002" = call i8* @_fetch_field(i8* %"$execptr_load_3001", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3000", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_2998", i32 1)
  %"$maybeRecord_3003" = bitcast i8* %"$maybeRecord_call_3002" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3003", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3004" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3004_3005" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3004" to i8*
  %"$_literal_cost_call_3006" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_3004_3005")
  %"$gasadd_3007" = add i64 %"$_literal_cost_call_3006", 0
  %"$gasadd_3008" = add i64 %"$gasadd_3007", 1
  %"$gasrem_3009" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3010" = icmp ugt i64 %"$gasadd_3008", %"$gasrem_3009"
  br i1 %"$gascmp_3010", label %"$out_of_gas_3011", label %"$have_gas_3012"

"$out_of_gas_3011":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3012"

"$have_gas_3012":                                 ; preds = %"$out_of_gas_3011", %entry
  %"$consume_3013" = sub i64 %"$gasrem_3009", %"$gasadd_3008"
  store i64 %"$consume_3013", i64* @_gasrem, align 8
  %"$gasrem_3014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3015" = icmp ugt i64 1, %"$gasrem_3014"
  br i1 %"$gascmp_3015", label %"$out_of_gas_3016", label %"$have_gas_3017"

"$out_of_gas_3016":                               ; preds = %"$have_gas_3012"
  call void @_out_of_gas()
  br label %"$have_gas_3017"

"$have_gas_3017":                                 ; preds = %"$out_of_gas_3016", %"$have_gas_3012"
  %"$consume_3018" = sub i64 %"$gasrem_3014", 1
  store i64 %"$consume_3018", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3019" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3020" = icmp ugt i64 1, %"$gasrem_3019"
  br i1 %"$gascmp_3020", label %"$out_of_gas_3021", label %"$have_gas_3022"

"$out_of_gas_3021":                               ; preds = %"$have_gas_3017"
  call void @_out_of_gas()
  br label %"$have_gas_3022"

"$have_gas_3022":                                 ; preds = %"$out_of_gas_3021", %"$have_gas_3017"
  %"$consume_3023" = sub i64 %"$gasrem_3019", 1
  store i64 %"$consume_3023", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_59" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3024" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3025" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3024", 0
  %"$ud-registry.recordMemberOwner_envptr_3026" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3024", 1
  %"$maybeRecord_3027" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3028" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3025"(i8* %"$ud-registry.recordMemberOwner_envptr_3026", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3028", %TName_Option_ud-registry.Record* %"$maybeRecord_3027")
  %"$ud-registry.recordMemberOwner_ret_3029" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3028", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3029", [20 x i8]* %"$ud-registry.recordMemberOwner_59", align 1
  %"$$ud-registry.recordMemberOwner_59_3030" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_59", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_59_3030", [20 x i8]* %recordOwner, align 1
  %"$gasrem_3031" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3032" = icmp ugt i64 1, %"$gasrem_3031"
  br i1 %"$gascmp_3032", label %"$out_of_gas_3033", label %"$have_gas_3034"

"$out_of_gas_3033":                               ; preds = %"$have_gas_3022"
  call void @_out_of_gas()
  br label %"$have_gas_3034"

"$have_gas_3034":                                 ; preds = %"$out_of_gas_3033", %"$have_gas_3022"
  %"$consume_3035" = sub i64 %"$gasrem_3031", 1
  store i64 %"$consume_3035", i64* @_gasrem, align 8
  %isSenderNodeOwner = alloca %TName_Bool*, align 8
  %"$gasrem_3036" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3037" = icmp ugt i64 20, %"$gasrem_3036"
  br i1 %"$gascmp_3037", label %"$out_of_gas_3038", label %"$have_gas_3039"

"$out_of_gas_3038":                               ; preds = %"$have_gas_3034"
  call void @_out_of_gas()
  br label %"$have_gas_3039"

"$have_gas_3039":                                 ; preds = %"$out_of_gas_3038", %"$have_gas_3034"
  %"$consume_3040" = sub i64 %"$gasrem_3036", 20
  store i64 %"$consume_3040", i64* @_gasrem, align 8
  %"$execptr_load_3041" = load i8*, i8** @_execptr, align 8
  %"$eq__sender_3042" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_3042", align 1
  %"$$eq__sender_3042_3043" = bitcast [20 x i8]* %"$eq__sender_3042" to i8*
  %"$eq_recordOwner_3044" = alloca [20 x i8], align 1
  %"$recordOwner_3045" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3045", [20 x i8]* %"$eq_recordOwner_3044", align 1
  %"$$eq_recordOwner_3044_3046" = bitcast [20 x i8]* %"$eq_recordOwner_3044" to i8*
  %"$eq_call_3047" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_3041", i32 20, i8* %"$$eq__sender_3042_3043", i8* %"$$eq_recordOwner_3044_3046")
  store %TName_Bool* %"$eq_call_3047", %TName_Bool** %isSenderNodeOwner, align 8
  %"$gasrem_3049" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3050" = icmp ugt i64 2, %"$gasrem_3049"
  br i1 %"$gascmp_3050", label %"$out_of_gas_3051", label %"$have_gas_3052"

"$out_of_gas_3051":                               ; preds = %"$have_gas_3039"
  call void @_out_of_gas()
  br label %"$have_gas_3052"

"$have_gas_3052":                                 ; preds = %"$out_of_gas_3051", %"$have_gas_3039"
  %"$consume_3053" = sub i64 %"$gasrem_3049", 2
  store i64 %"$consume_3053", i64* @_gasrem, align 8
  %"$isSenderNodeOwner_3055" = load %TName_Bool*, %TName_Bool** %isSenderNodeOwner, align 8
  %"$isSenderNodeOwner_tag_3056" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderNodeOwner_3055", i32 0, i32 0
  %"$isSenderNodeOwner_tag_3057" = load i8, i8* %"$isSenderNodeOwner_tag_3056", align 1
  switch i8 %"$isSenderNodeOwner_tag_3057", label %"$empty_default_3058" [
    i8 0, label %"$True_3059"
    i8 1, label %"$False_3197"
  ]

"$True_3059":                                     ; preds = %"$have_gas_3052"
  %"$isSenderNodeOwner_3060" = bitcast %TName_Bool* %"$isSenderNodeOwner_3055" to %CName_True*
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3061_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3061_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3061_salloc_load", i64 32)
  %"$indices_buf_3061_salloc" = bitcast i8* %"$indices_buf_3061_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3061" = bitcast [32 x i8]* %"$indices_buf_3061_salloc" to i8*
  %"$indices_gep_3062" = getelementptr i8, i8* %"$indices_buf_3061", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3062" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_3064" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_3065" = call i8* @_fetch_field(i8* %"$execptr_load_3064", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3063", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_3061", i32 1)
  %"$maybeApproved_3066" = bitcast i8* %"$maybeApproved_call_3065" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3066", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3067" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3067_3068" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3067" to i8*
  %"$_literal_cost_call_3069" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_3067_3068")
  %"$gasadd_3070" = add i64 %"$_literal_cost_call_3069", 0
  %"$gasadd_3071" = add i64 %"$gasadd_3070", 1
  %"$gasrem_3072" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3073" = icmp ugt i64 %"$gasadd_3071", %"$gasrem_3072"
  br i1 %"$gascmp_3073", label %"$out_of_gas_3074", label %"$have_gas_3075"

"$out_of_gas_3074":                               ; preds = %"$True_3059"
  call void @_out_of_gas()
  br label %"$have_gas_3075"

"$have_gas_3075":                                 ; preds = %"$out_of_gas_3074", %"$True_3059"
  %"$consume_3076" = sub i64 %"$gasrem_3072", %"$gasadd_3071"
  store i64 %"$consume_3076", i64* @_gasrem, align 8
  %"$gasrem_3077" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3078" = icmp ugt i64 1, %"$gasrem_3077"
  br i1 %"$gascmp_3078", label %"$out_of_gas_3079", label %"$have_gas_3080"

"$out_of_gas_3079":                               ; preds = %"$have_gas_3075"
  call void @_out_of_gas()
  br label %"$have_gas_3080"

"$have_gas_3080":                                 ; preds = %"$out_of_gas_3079", %"$have_gas_3075"
  %"$consume_3081" = sub i64 %"$gasrem_3077", 1
  store i64 %"$consume_3081", i64* @_gasrem, align 8
  %currentlyApproved = alloca [20 x i8], align 1
  %"$gasrem_3082" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3083" = icmp ugt i64 2, %"$gasrem_3082"
  br i1 %"$gascmp_3083", label %"$out_of_gas_3084", label %"$have_gas_3085"

"$out_of_gas_3084":                               ; preds = %"$have_gas_3080"
  call void @_out_of_gas()
  br label %"$have_gas_3085"

"$have_gas_3085":                                 ; preds = %"$out_of_gas_3084", %"$have_gas_3080"
  %"$consume_3086" = sub i64 %"$gasrem_3082", 2
  store i64 %"$consume_3086", i64* @_gasrem, align 8
  %"$maybeApproved_3088" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_3089" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_3088", i32 0, i32 0
  %"$maybeApproved_tag_3090" = load i8, i8* %"$maybeApproved_tag_3089", align 1
  switch i8 %"$maybeApproved_tag_3090", label %"$empty_default_3091" [
    i8 1, label %"$None_3092"
    i8 0, label %"$Some_3100"
  ]

"$None_3092":                                     ; preds = %"$have_gas_3085"
  %"$maybeApproved_3093" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3088" to %CName_None_ByStr20*
  %"$gasrem_3094" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3095" = icmp ugt i64 1, %"$gasrem_3094"
  br i1 %"$gascmp_3095", label %"$out_of_gas_3096", label %"$have_gas_3097"

"$out_of_gas_3096":                               ; preds = %"$None_3092"
  call void @_out_of_gas()
  br label %"$have_gas_3097"

"$have_gas_3097":                                 ; preds = %"$out_of_gas_3096", %"$None_3092"
  %"$consume_3098" = sub i64 %"$gasrem_3094", 1
  store i64 %"$consume_3098", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_3099" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_3099", [20 x i8]* %currentlyApproved, align 1
  br label %"$matchsucc_3087"

"$Some_3100":                                     ; preds = %"$have_gas_3085"
  %"$maybeApproved_3101" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3088" to %CName_Some_ByStr20*
  %"$approved_gep_3102" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_3101", i32 0, i32 1
  %"$approved_load_3103" = load [20 x i8], [20 x i8]* %"$approved_gep_3102", align 1
  %approved = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_3103", [20 x i8]* %approved, align 1
  %"$gasrem_3104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3105" = icmp ugt i64 1, %"$gasrem_3104"
  br i1 %"$gascmp_3105", label %"$out_of_gas_3106", label %"$have_gas_3107"

"$out_of_gas_3106":                               ; preds = %"$Some_3100"
  call void @_out_of_gas()
  br label %"$have_gas_3107"

"$have_gas_3107":                                 ; preds = %"$out_of_gas_3106", %"$Some_3100"
  %"$consume_3108" = sub i64 %"$gasrem_3104", 1
  store i64 %"$consume_3108", i64* @_gasrem, align 8
  %"$approved_3109" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_3109", [20 x i8]* %currentlyApproved, align 1
  br label %"$matchsucc_3087"

"$empty_default_3091":                            ; preds = %"$have_gas_3085"
  br label %"$matchsucc_3087"

"$matchsucc_3087":                                ; preds = %"$have_gas_3107", %"$have_gas_3097", %"$empty_default_3091"
  %"$gasrem_3110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3111" = icmp ugt i64 1, %"$gasrem_3110"
  br i1 %"$gascmp_3111", label %"$out_of_gas_3112", label %"$have_gas_3113"

"$out_of_gas_3112":                               ; preds = %"$matchsucc_3087"
  call void @_out_of_gas()
  br label %"$have_gas_3113"

"$have_gas_3113":                                 ; preds = %"$out_of_gas_3112", %"$matchsucc_3087"
  %"$consume_3114" = sub i64 %"$gasrem_3110", 1
  store i64 %"$consume_3114", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_3115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3116" = icmp ugt i64 1, %"$gasrem_3115"
  br i1 %"$gascmp_3116", label %"$out_of_gas_3117", label %"$have_gas_3118"

"$out_of_gas_3117":                               ; preds = %"$have_gas_3113"
  call void @_out_of_gas()
  br label %"$have_gas_3118"

"$have_gas_3118":                                 ; preds = %"$out_of_gas_3117", %"$have_gas_3113"
  %"$consume_3119" = sub i64 %"$gasrem_3115", 1
  store i64 %"$consume_3119", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_3120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3121" = icmp ugt i64 20, %"$gasrem_3120"
  br i1 %"$gascmp_3121", label %"$out_of_gas_3122", label %"$have_gas_3123"

"$out_of_gas_3122":                               ; preds = %"$have_gas_3118"
  call void @_out_of_gas()
  br label %"$have_gas_3123"

"$have_gas_3123":                                 ; preds = %"$out_of_gas_3122", %"$have_gas_3118"
  %"$consume_3124" = sub i64 %"$gasrem_3120", 20
  store i64 %"$consume_3124", i64* @_gasrem, align 8
  %"$execptr_load_3125" = load i8*, i8** @_execptr, align 8
  %"$eq_currentlyApproved_3126" = alloca [20 x i8], align 1
  %"$currentlyApproved_3127" = load [20 x i8], [20 x i8]* %currentlyApproved, align 1
  store [20 x i8] %"$currentlyApproved_3127", [20 x i8]* %"$eq_currentlyApproved_3126", align 1
  %"$$eq_currentlyApproved_3126_3128" = bitcast [20 x i8]* %"$eq_currentlyApproved_3126" to i8*
  %"$eq_address_3129" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$eq_address_3129", align 1
  %"$$eq_address_3129_3130" = bitcast [20 x i8]* %"$eq_address_3129" to i8*
  %"$eq_call_3131" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_3125", i32 20, i8* %"$$eq_currentlyApproved_3126_3128", i8* %"$$eq_address_3129_3130")
  store %TName_Bool* %"$eq_call_3131", %TName_Bool** %b, align 8
  %"$gasrem_3133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3134" = icmp ugt i64 1, %"$gasrem_3133"
  br i1 %"$gascmp_3134", label %"$out_of_gas_3135", label %"$have_gas_3136"

"$out_of_gas_3135":                               ; preds = %"$have_gas_3123"
  call void @_out_of_gas()
  br label %"$have_gas_3136"

"$have_gas_3136":                                 ; preds = %"$out_of_gas_3135", %"$have_gas_3123"
  %"$consume_3137" = sub i64 %"$gasrem_3133", 1
  store i64 %"$consume_3137", i64* @_gasrem, align 8
  %"$BoolUtils.negb_57" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_3138" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_3139" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_3138", 0
  %"$BoolUtils.negb_envptr_3140" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_3138", 1
  %"$b_3141" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$BoolUtils.negb_call_3142" = call %TName_Bool* %"$BoolUtils.negb_fptr_3139"(i8* %"$BoolUtils.negb_envptr_3140", %TName_Bool* %"$b_3141")
  store %TName_Bool* %"$BoolUtils.negb_call_3142", %TName_Bool** %"$BoolUtils.negb_57", align 8
  %"$$BoolUtils.negb_57_3143" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_57", align 8
  store %TName_Bool* %"$$BoolUtils.negb_57_3143", %TName_Bool** %needsToChange, align 8
  %"$gasrem_3144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3145" = icmp ugt i64 2, %"$gasrem_3144"
  br i1 %"$gascmp_3145", label %"$out_of_gas_3146", label %"$have_gas_3147"

"$out_of_gas_3146":                               ; preds = %"$have_gas_3136"
  call void @_out_of_gas()
  br label %"$have_gas_3147"

"$have_gas_3147":                                 ; preds = %"$out_of_gas_3146", %"$have_gas_3136"
  %"$consume_3148" = sub i64 %"$gasrem_3144", 2
  store i64 %"$consume_3148", i64* @_gasrem, align 8
  %"$needsToChange_3150" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_3151" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_3150", i32 0, i32 0
  %"$needsToChange_tag_3152" = load i8, i8* %"$needsToChange_tag_3151", align 1
  switch i8 %"$needsToChange_tag_3152", label %"$default_3153" [
    i8 0, label %"$True_3154"
  ]

"$True_3154":                                     ; preds = %"$have_gas_3147"
  %"$needsToChange_3155" = bitcast %TName_Bool* %"$needsToChange_3150" to %CName_True*
  %"$_literal_cost_address_3156" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$_literal_cost_address_3156", align 1
  %"$$_literal_cost_address_3156_3157" = bitcast [20 x i8]* %"$_literal_cost_address_3156" to i8*
  %"$_literal_cost_call_3158" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i8* %"$$_literal_cost_address_3156_3157")
  %"$gasadd_3159" = add i64 %"$_literal_cost_call_3158", 1
  %"$gasrem_3160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3161" = icmp ugt i64 %"$gasadd_3159", %"$gasrem_3160"
  br i1 %"$gascmp_3161", label %"$out_of_gas_3162", label %"$have_gas_3163"

"$out_of_gas_3162":                               ; preds = %"$True_3154"
  call void @_out_of_gas()
  br label %"$have_gas_3163"

"$have_gas_3163":                                 ; preds = %"$out_of_gas_3162", %"$True_3154"
  %"$consume_3164" = sub i64 %"$gasrem_3160", %"$gasadd_3159"
  store i64 %"$consume_3164", i64* @_gasrem, align 8
  %"$indices_buf_3165_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3165_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3165_salloc_load", i64 32)
  %"$indices_buf_3165_salloc" = bitcast i8* %"$indices_buf_3165_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3165" = bitcast [32 x i8]* %"$indices_buf_3165_salloc" to i8*
  %"$indices_gep_3166" = getelementptr i8, i8* %"$indices_buf_3165", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3166" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast2, align 1
  %"$execptr_load_3167" = load i8*, i8** @_execptr, align 8
  %"$update_value_3169" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$update_value_3169", align 1
  %"$update_value_3170" = bitcast [20 x i8]* %"$update_value_3169" to i8*
  call void @_update_field(i8* %"$execptr_load_3167", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3168", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_3165", i8* %"$update_value_3170")
  %"$gasrem_3171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3172" = icmp ugt i64 1, %"$gasrem_3171"
  br i1 %"$gascmp_3172", label %"$out_of_gas_3173", label %"$have_gas_3174"

"$out_of_gas_3173":                               ; preds = %"$have_gas_3163"
  call void @_out_of_gas()
  br label %"$have_gas_3174"

"$have_gas_3174":                                 ; preds = %"$out_of_gas_3173", %"$have_gas_3163"
  %"$consume_3175" = sub i64 %"$gasrem_3171", 1
  store i64 %"$consume_3175", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3177" = icmp ugt i64 1, %"$gasrem_3176"
  br i1 %"$gascmp_3177", label %"$out_of_gas_3178", label %"$have_gas_3179"

"$out_of_gas_3178":                               ; preds = %"$have_gas_3174"
  call void @_out_of_gas()
  br label %"$have_gas_3179"

"$have_gas_3179":                                 ; preds = %"$out_of_gas_3178", %"$have_gas_3174"
  %"$consume_3180" = sub i64 %"$gasrem_3176", 1
  store i64 %"$consume_3180", i64* @_gasrem, align 8
  %"$ud-registry.eApproved_56" = alloca i8*, align 8
  %"$ud-registry.eApproved_3181" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApproved, align 8
  %"$ud-registry.eApproved_fptr_3182" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApproved_3181", 0
  %"$ud-registry.eApproved_envptr_3183" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApproved_3181", 1
  %"$ud-registry.eApproved_address_3184" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eApproved_address_3184", align 1
  %"$ud-registry.eApproved_call_3185" = call i8* %"$ud-registry.eApproved_fptr_3182"(i8* %"$ud-registry.eApproved_envptr_3183", [20 x i8]* %"$ud-registry.eApproved_address_3184")
  store i8* %"$ud-registry.eApproved_call_3185", i8** %"$ud-registry.eApproved_56", align 8
  %"$$ud-registry.eApproved_56_3186" = load i8*, i8** %"$ud-registry.eApproved_56", align 8
  store i8* %"$$ud-registry.eApproved_56_3186", i8** %e, align 8
  %"$e_3187" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3189" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3187")
  %"$gasrem_3190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3191" = icmp ugt i64 %"$_literal_cost_call_3189", %"$gasrem_3190"
  br i1 %"$gascmp_3191", label %"$out_of_gas_3192", label %"$have_gas_3193"

"$out_of_gas_3192":                               ; preds = %"$have_gas_3179"
  call void @_out_of_gas()
  br label %"$have_gas_3193"

"$have_gas_3193":                                 ; preds = %"$out_of_gas_3192", %"$have_gas_3179"
  %"$consume_3194" = sub i64 %"$gasrem_3190", %"$_literal_cost_call_3189"
  store i64 %"$consume_3194", i64* @_gasrem, align 8
  %"$execptr_load_3195" = load i8*, i8** @_execptr, align 8
  %"$e_3196" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3195", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3196")
  br label %"$matchsucc_3149"

"$default_3153":                                  ; preds = %"$have_gas_3147"
  br label %"$joinp_5"

"$joinp_5":                                       ; preds = %"$default_3153"
  br label %"$matchsucc_3149"

"$matchsucc_3149":                                ; preds = %"$have_gas_3193", %"$joinp_5"
  br label %"$matchsucc_3054"

"$False_3197":                                    ; preds = %"$have_gas_3052"
  %"$isSenderNodeOwner_3198" = bitcast %TName_Bool* %"$isSenderNodeOwner_3055" to %CName_False*
  %"$gasrem_3199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3200" = icmp ugt i64 1, %"$gasrem_3199"
  br i1 %"$gascmp_3200", label %"$out_of_gas_3201", label %"$have_gas_3202"

"$out_of_gas_3201":                               ; preds = %"$False_3197"
  call void @_out_of_gas()
  br label %"$have_gas_3202"

"$have_gas_3202":                                 ; preds = %"$out_of_gas_3201", %"$False_3197"
  %"$consume_3203" = sub i64 %"$gasrem_3199", 1
  store i64 %"$consume_3203", i64* @_gasrem, align 8
  %e3 = alloca i8*, align 8
  %"$gasrem_3204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3205" = icmp ugt i64 1, %"$gasrem_3204"
  br i1 %"$gascmp_3205", label %"$out_of_gas_3206", label %"$have_gas_3207"

"$out_of_gas_3206":                               ; preds = %"$have_gas_3202"
  call void @_out_of_gas()
  br label %"$have_gas_3207"

"$have_gas_3207":                                 ; preds = %"$out_of_gas_3206", %"$have_gas_3202"
  %"$consume_3208" = sub i64 %"$gasrem_3204", 1
  store i64 %"$consume_3208", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_3209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3210" = icmp ugt i64 1, %"$gasrem_3209"
  br i1 %"$gascmp_3210", label %"$out_of_gas_3211", label %"$have_gas_3212"

"$out_of_gas_3211":                               ; preds = %"$have_gas_3207"
  call void @_out_of_gas()
  br label %"$have_gas_3212"

"$have_gas_3212":                                 ; preds = %"$out_of_gas_3211", %"$have_gas_3207"
  %"$consume_3213" = sub i64 %"$gasrem_3209", 1
  store i64 %"$consume_3213", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_3214", i32 0, i32 0), i32 21 }, %String* %m, align 8
  %"$gasrem_3215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3216" = icmp ugt i64 1, %"$gasrem_3215"
  br i1 %"$gascmp_3216", label %"$out_of_gas_3217", label %"$have_gas_3218"

"$out_of_gas_3217":                               ; preds = %"$have_gas_3212"
  call void @_out_of_gas()
  br label %"$have_gas_3218"

"$have_gas_3218":                                 ; preds = %"$out_of_gas_3217", %"$have_gas_3212"
  %"$consume_3219" = sub i64 %"$gasrem_3215", 1
  store i64 %"$consume_3219", i64* @_gasrem, align 8
  %"$ud-registry.eError_58" = alloca i8*, align 8
  %"$ud-registry.eError_3220" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3221" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3220", 0
  %"$ud-registry.eError_envptr_3222" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3220", 1
  %"$m_3223" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_3224" = call i8* %"$ud-registry.eError_fptr_3221"(i8* %"$ud-registry.eError_envptr_3222", %String %"$m_3223")
  store i8* %"$ud-registry.eError_call_3224", i8** %"$ud-registry.eError_58", align 8
  %"$$ud-registry.eError_58_3225" = load i8*, i8** %"$ud-registry.eError_58", align 8
  store i8* %"$$ud-registry.eError_58_3225", i8** %e3, align 8
  %"$e_3226" = load i8*, i8** %e3, align 8
  %"$_literal_cost_call_3228" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3226")
  %"$gasrem_3229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3230" = icmp ugt i64 %"$_literal_cost_call_3228", %"$gasrem_3229"
  br i1 %"$gascmp_3230", label %"$out_of_gas_3231", label %"$have_gas_3232"

"$out_of_gas_3231":                               ; preds = %"$have_gas_3218"
  call void @_out_of_gas()
  br label %"$have_gas_3232"

"$have_gas_3232":                                 ; preds = %"$out_of_gas_3231", %"$have_gas_3218"
  %"$consume_3233" = sub i64 %"$gasrem_3229", %"$_literal_cost_call_3228"
  store i64 %"$consume_3233", i64* @_gasrem, align 8
  %"$execptr_load_3234" = load i8*, i8** @_execptr, align 8
  %"$e_3235" = load i8*, i8** %e3, align 8
  call void @_event(i8* %"$execptr_load_3234", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3235")
  br label %"$matchsucc_3054"

"$empty_default_3058":                            ; preds = %"$have_gas_3052"
  br label %"$matchsucc_3054"

"$matchsucc_3054":                                ; preds = %"$have_gas_3232", %"$matchsucc_3149", %"$empty_default_3058"
  ret void
}

define void @approve(i8* %0) {
entry:
  %"$_amount_3237" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3238" = bitcast i8* %"$_amount_3237" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3238", align 8
  %"$_origin_3239" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3240" = bitcast i8* %"$_origin_3239" to [20 x i8]*
  %"$_sender_3241" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3242" = bitcast i8* %"$_sender_3241" to [20 x i8]*
  %"$node_3243" = getelementptr i8, i8* %0, i32 56
  %"$node_3244" = bitcast i8* %"$node_3243" to [32 x i8]*
  %"$address_3245" = getelementptr i8, i8* %0, i32 88
  %"$address_3246" = bitcast i8* %"$address_3245" to [20 x i8]*
  call void @"$approve_2993"(%Uint128 %_amount, [20 x i8]* %"$_origin_3240", [20 x i8]* %"$_sender_3242", [32 x i8]* %"$node_3244", [20 x i8]* %"$address_3246")
  ret void
}

define internal void @"$approveFor_3247"(%Uint128 %_amount, [20 x i8]* %"$_origin_3248", [20 x i8]* %"$_sender_3249", [20 x i8]* %"$address_3250", %TName_Bool* %isApproved) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3248", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3249", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_3250", align 1
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3251_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3251_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3251_salloc_load", i64 20)
  %"$indices_buf_3251_salloc" = bitcast i8* %"$indices_buf_3251_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3251" = bitcast [20 x i8]* %"$indices_buf_3251_salloc" to i8*
  %"$indices_gep_3252" = getelementptr i8, i8* %"$indices_buf_3251", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3252" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_3254" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3255" = call i8* @_fetch_field(i8* %"$execptr_load_3254", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3253", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_3251", i32 1)
  %"$maybeOperators_3256" = bitcast i8* %"$maybeOperators_call_3255" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3256", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3257" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3257_3258" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3257" to i8*
  %"$_literal_cost_call_3259" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", i8* %"$$maybeOperators_3257_3258")
  %"$gasadd_3260" = add i64 %"$_literal_cost_call_3259", 0
  %"$gasadd_3261" = add i64 %"$gasadd_3260", 1
  %"$gasrem_3262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3263" = icmp ugt i64 %"$gasadd_3261", %"$gasrem_3262"
  br i1 %"$gascmp_3263", label %"$out_of_gas_3264", label %"$have_gas_3265"

"$out_of_gas_3264":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3265"

"$have_gas_3265":                                 ; preds = %"$out_of_gas_3264", %entry
  %"$consume_3266" = sub i64 %"$gasrem_3262", %"$gasadd_3261"
  store i64 %"$consume_3266", i64* @_gasrem, align 8
  %"$gasrem_3267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3268" = icmp ugt i64 1, %"$gasrem_3267"
  br i1 %"$gascmp_3268", label %"$out_of_gas_3269", label %"$have_gas_3270"

"$out_of_gas_3269":                               ; preds = %"$have_gas_3265"
  call void @_out_of_gas()
  br label %"$have_gas_3270"

"$have_gas_3270":                                 ; preds = %"$out_of_gas_3269", %"$have_gas_3265"
  %"$consume_3271" = sub i64 %"$gasrem_3267", 1
  store i64 %"$consume_3271", i64* @_gasrem, align 8
  %currentOperators = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_3272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3273" = icmp ugt i64 2, %"$gasrem_3272"
  br i1 %"$gascmp_3273", label %"$out_of_gas_3274", label %"$have_gas_3275"

"$out_of_gas_3274":                               ; preds = %"$have_gas_3270"
  call void @_out_of_gas()
  br label %"$have_gas_3275"

"$have_gas_3275":                                 ; preds = %"$out_of_gas_3274", %"$have_gas_3270"
  %"$consume_3276" = sub i64 %"$gasrem_3272", 2
  store i64 %"$consume_3276", i64* @_gasrem, align 8
  %"$maybeOperators_3278" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_tag_3279" = getelementptr inbounds %"TName_Option_List_(ByStr20)", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3278", i32 0, i32 0
  %"$maybeOperators_tag_3280" = load i8, i8* %"$maybeOperators_tag_3279", align 1
  switch i8 %"$maybeOperators_tag_3280", label %"$empty_default_3281" [
    i8 1, label %"$None_3282"
    i8 0, label %"$Some_3290"
  ]

"$None_3282":                                     ; preds = %"$have_gas_3275"
  %"$maybeOperators_3283" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3278" to %"CName_None_List_(ByStr20)"*
  %"$gasrem_3284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3285" = icmp ugt i64 1, %"$gasrem_3284"
  br i1 %"$gascmp_3285", label %"$out_of_gas_3286", label %"$have_gas_3287"

"$out_of_gas_3286":                               ; preds = %"$None_3282"
  call void @_out_of_gas()
  br label %"$have_gas_3287"

"$have_gas_3287":                                 ; preds = %"$out_of_gas_3286", %"$None_3282"
  %"$consume_3288" = sub i64 %"$gasrem_3284", 1
  store i64 %"$consume_3288", i64* @_gasrem, align 8
  %"$ud-registry.nilByStr20_3289" = load %TName_List_ByStr20*, %TName_List_ByStr20** @ud-registry.nilByStr20, align 8
  store %TName_List_ByStr20* %"$ud-registry.nilByStr20_3289", %TName_List_ByStr20** %currentOperators, align 8
  br label %"$matchsucc_3277"

"$Some_3290":                                     ; preds = %"$have_gas_3275"
  %"$maybeOperators_3291" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3278" to %"CName_Some_List_(ByStr20)"*
  %"$ops_gep_3292" = getelementptr inbounds %"CName_Some_List_(ByStr20)", %"CName_Some_List_(ByStr20)"* %"$maybeOperators_3291", i32 0, i32 1
  %"$ops_load_3293" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ops_gep_3292", align 8
  %ops = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$ops_load_3293", %TName_List_ByStr20** %ops, align 8
  %"$gasrem_3294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3295" = icmp ugt i64 1, %"$gasrem_3294"
  br i1 %"$gascmp_3295", label %"$out_of_gas_3296", label %"$have_gas_3297"

"$out_of_gas_3296":                               ; preds = %"$Some_3290"
  call void @_out_of_gas()
  br label %"$have_gas_3297"

"$have_gas_3297":                                 ; preds = %"$out_of_gas_3296", %"$Some_3290"
  %"$consume_3298" = sub i64 %"$gasrem_3294", 1
  store i64 %"$consume_3298", i64* @_gasrem, align 8
  %"$ops_3299" = load %TName_List_ByStr20*, %TName_List_ByStr20** %ops, align 8
  store %TName_List_ByStr20* %"$ops_3299", %TName_List_ByStr20** %currentOperators, align 8
  br label %"$matchsucc_3277"

"$empty_default_3281":                            ; preds = %"$have_gas_3275"
  br label %"$matchsucc_3277"

"$matchsucc_3277":                                ; preds = %"$have_gas_3297", %"$have_gas_3287", %"$empty_default_3281"
  %"$gasrem_3300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3301" = icmp ugt i64 1, %"$gasrem_3300"
  br i1 %"$gascmp_3301", label %"$out_of_gas_3302", label %"$have_gas_3303"

"$out_of_gas_3302":                               ; preds = %"$matchsucc_3277"
  call void @_out_of_gas()
  br label %"$have_gas_3303"

"$have_gas_3303":                                 ; preds = %"$out_of_gas_3302", %"$matchsucc_3277"
  %"$consume_3304" = sub i64 %"$gasrem_3300", 1
  store i64 %"$consume_3304", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_3305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3306" = icmp ugt i64 1, %"$gasrem_3305"
  br i1 %"$gascmp_3306", label %"$out_of_gas_3307", label %"$have_gas_3308"

"$out_of_gas_3307":                               ; preds = %"$have_gas_3303"
  call void @_out_of_gas()
  br label %"$have_gas_3308"

"$have_gas_3308":                                 ; preds = %"$out_of_gas_3307", %"$have_gas_3303"
  %"$consume_3309" = sub i64 %"$gasrem_3305", 1
  store i64 %"$consume_3309", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_3310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3311" = icmp ugt i64 1, %"$gasrem_3310"
  br i1 %"$gascmp_3311", label %"$out_of_gas_3312", label %"$have_gas_3313"

"$out_of_gas_3312":                               ; preds = %"$have_gas_3308"
  call void @_out_of_gas()
  br label %"$have_gas_3313"

"$have_gas_3313":                                 ; preds = %"$out_of_gas_3312", %"$have_gas_3308"
  %"$consume_3314" = sub i64 %"$gasrem_3310", 1
  store i64 %"$consume_3314", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Excludes_65" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Excludes_3315" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes, align 8
  %"$ud-registry.listByStr20Excludes_fptr_3316" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_3315", 0
  %"$ud-registry.listByStr20Excludes_envptr_3317" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_3315", 1
  %"$currentOperators_3318" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$ud-registry.listByStr20Excludes_call_3319" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_fptr_3316"(i8* %"$ud-registry.listByStr20Excludes_envptr_3317", %TName_List_ByStr20* %"$currentOperators_3318")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_call_3319", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_65", align 8
  %"$ud-registry.listByStr20Excludes_66" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Excludes_65_3320" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_65", align 8
  %"$$ud-registry.listByStr20Excludes_65_fptr_3321" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_65_3320", 0
  %"$$ud-registry.listByStr20Excludes_65_envptr_3322" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_65_3320", 1
  %"$$ud-registry.listByStr20Excludes_65_address_3323" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20Excludes_65_address_3323", align 1
  %"$$ud-registry.listByStr20Excludes_65_call_3324" = call %TName_Bool* %"$$ud-registry.listByStr20Excludes_65_fptr_3321"(i8* %"$$ud-registry.listByStr20Excludes_65_envptr_3322", [20 x i8]* %"$$ud-registry.listByStr20Excludes_65_address_3323")
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_65_call_3324", %TName_Bool** %"$ud-registry.listByStr20Excludes_66", align 8
  %"$$ud-registry.listByStr20Excludes_66_3325" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Excludes_66", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_66_3325", %TName_Bool** %b, align 8
  %"$gasrem_3326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3327" = icmp ugt i64 1, %"$gasrem_3326"
  br i1 %"$gascmp_3327", label %"$out_of_gas_3328", label %"$have_gas_3329"

"$out_of_gas_3328":                               ; preds = %"$have_gas_3313"
  call void @_out_of_gas()
  br label %"$have_gas_3329"

"$have_gas_3329":                                 ; preds = %"$out_of_gas_3328", %"$have_gas_3313"
  %"$consume_3330" = sub i64 %"$gasrem_3326", 1
  store i64 %"$consume_3330", i64* @_gasrem, align 8
  %"$ud-registry.xandb_67" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.xandb_3331" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8
  %"$ud-registry.xandb_fptr_3332" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_3331", 0
  %"$ud-registry.xandb_envptr_3333" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_3331", 1
  %"$b_3334" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$ud-registry.xandb_call_3335" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_fptr_3332"(i8* %"$ud-registry.xandb_envptr_3333", %TName_Bool* %"$b_3334")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_call_3335", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_67", align 8
  %"$ud-registry.xandb_68" = alloca %TName_Bool*, align 8
  %"$$ud-registry.xandb_67_3336" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_67", align 8
  %"$$ud-registry.xandb_67_fptr_3337" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_67_3336", 0
  %"$$ud-registry.xandb_67_envptr_3338" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_67_3336", 1
  %"$$ud-registry.xandb_67_call_3339" = call %TName_Bool* %"$$ud-registry.xandb_67_fptr_3337"(i8* %"$$ud-registry.xandb_67_envptr_3338", %TName_Bool* %isApproved)
  store %TName_Bool* %"$$ud-registry.xandb_67_call_3339", %TName_Bool** %"$ud-registry.xandb_68", align 8
  %"$$ud-registry.xandb_68_3340" = load %TName_Bool*, %TName_Bool** %"$ud-registry.xandb_68", align 8
  store %TName_Bool* %"$$ud-registry.xandb_68_3340", %TName_Bool** %needsToChange, align 8
  %"$gasrem_3341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3342" = icmp ugt i64 2, %"$gasrem_3341"
  br i1 %"$gascmp_3342", label %"$out_of_gas_3343", label %"$have_gas_3344"

"$out_of_gas_3343":                               ; preds = %"$have_gas_3329"
  call void @_out_of_gas()
  br label %"$have_gas_3344"

"$have_gas_3344":                                 ; preds = %"$out_of_gas_3343", %"$have_gas_3329"
  %"$consume_3345" = sub i64 %"$gasrem_3341", 2
  store i64 %"$consume_3345", i64* @_gasrem, align 8
  %"$needsToChange_3347" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_3348" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_3347", i32 0, i32 0
  %"$needsToChange_tag_3349" = load i8, i8* %"$needsToChange_tag_3348", align 1
  switch i8 %"$needsToChange_tag_3349", label %"$default_3350" [
    i8 0, label %"$True_3351"
  ]

"$True_3351":                                     ; preds = %"$have_gas_3344"
  %"$needsToChange_3352" = bitcast %TName_Bool* %"$needsToChange_3347" to %CName_True*
  %"$gasrem_3353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3354" = icmp ugt i64 1, %"$gasrem_3353"
  br i1 %"$gascmp_3354", label %"$out_of_gas_3355", label %"$have_gas_3356"

"$out_of_gas_3355":                               ; preds = %"$True_3351"
  call void @_out_of_gas()
  br label %"$have_gas_3356"

"$have_gas_3356":                                 ; preds = %"$out_of_gas_3355", %"$True_3351"
  %"$consume_3357" = sub i64 %"$gasrem_3353", 1
  store i64 %"$consume_3357", i64* @_gasrem, align 8
  %newOperators = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_3358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3359" = icmp ugt i64 2, %"$gasrem_3358"
  br i1 %"$gascmp_3359", label %"$out_of_gas_3360", label %"$have_gas_3361"

"$out_of_gas_3360":                               ; preds = %"$have_gas_3356"
  call void @_out_of_gas()
  br label %"$have_gas_3361"

"$have_gas_3361":                                 ; preds = %"$out_of_gas_3360", %"$have_gas_3356"
  %"$consume_3362" = sub i64 %"$gasrem_3358", 2
  store i64 %"$consume_3362", i64* @_gasrem, align 8
  %"$isApproved_tag_3364" = getelementptr inbounds %TName_Bool, %TName_Bool* %isApproved, i32 0, i32 0
  %"$isApproved_tag_3365" = load i8, i8* %"$isApproved_tag_3364", align 1
  switch i8 %"$isApproved_tag_3365", label %"$empty_default_3366" [
    i8 0, label %"$True_3367"
    i8 1, label %"$False_3380"
  ]

"$True_3367":                                     ; preds = %"$have_gas_3361"
  %"$isApproved_3368" = bitcast %TName_Bool* %isApproved to %CName_True*
  %"$gasrem_3369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3370" = icmp ugt i64 1, %"$gasrem_3369"
  br i1 %"$gascmp_3370", label %"$out_of_gas_3371", label %"$have_gas_3372"

"$out_of_gas_3371":                               ; preds = %"$True_3367"
  call void @_out_of_gas()
  br label %"$have_gas_3372"

"$have_gas_3372":                                 ; preds = %"$out_of_gas_3371", %"$True_3367"
  %"$consume_3373" = sub i64 %"$gasrem_3369", 1
  store i64 %"$consume_3373", i64* @_gasrem, align 8
  %"$currentOperators_3374" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$adtval_3375_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3375_salloc" = call i8* @_salloc(i8* %"$adtval_3375_load", i64 29)
  %"$adtval_3375" = bitcast i8* %"$adtval_3375_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_3376" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3375", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3376", align 1
  %"$adtgep_3377" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3375", i32 0, i32 1
  store [20 x i8] %address, [20 x i8]* %"$adtgep_3377", align 1
  %"$adtgep_3378" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3375", i32 0, i32 2
  store %TName_List_ByStr20* %"$currentOperators_3374", %TName_List_ByStr20** %"$adtgep_3378", align 8
  %"$adtptr_3379" = bitcast %CName_Cons_ByStr20* %"$adtval_3375" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_3379", %TName_List_ByStr20** %newOperators, align 8
  br label %"$matchsucc_3363"

"$False_3380":                                    ; preds = %"$have_gas_3361"
  %"$isApproved_3381" = bitcast %TName_Bool* %isApproved to %CName_False*
  %"$gasrem_3382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3383" = icmp ugt i64 1, %"$gasrem_3382"
  br i1 %"$gascmp_3383", label %"$out_of_gas_3384", label %"$have_gas_3385"

"$out_of_gas_3384":                               ; preds = %"$False_3380"
  call void @_out_of_gas()
  br label %"$have_gas_3385"

"$have_gas_3385":                                 ; preds = %"$out_of_gas_3384", %"$False_3380"
  %"$consume_3386" = sub i64 %"$gasrem_3382", 1
  store i64 %"$consume_3386", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20FilterOut_63" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20FilterOut_3387" = load { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8
  %"$ud-registry.listByStr20FilterOut_fptr_3388" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_3387", 0
  %"$ud-registry.listByStr20FilterOut_envptr_3389" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_3387", 1
  %"$currentOperators_3390" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$ud-registry.listByStr20FilterOut_call_3391" = call { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_fptr_3388"(i8* %"$ud-registry.listByStr20FilterOut_envptr_3389", %TName_List_ByStr20* %"$currentOperators_3390")
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_call_3391", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_63", align 8
  %"$ud-registry.listByStr20FilterOut_64" = alloca %TName_List_ByStr20*, align 8
  %"$$ud-registry.listByStr20FilterOut_63_3392" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_63", align 8
  %"$$ud-registry.listByStr20FilterOut_63_fptr_3393" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_63_3392", 0
  %"$$ud-registry.listByStr20FilterOut_63_envptr_3394" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_63_3392", 1
  %"$$ud-registry.listByStr20FilterOut_63_address_3395" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20FilterOut_63_address_3395", align 1
  %"$$ud-registry.listByStr20FilterOut_63_call_3396" = call %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_63_fptr_3393"(i8* %"$$ud-registry.listByStr20FilterOut_63_envptr_3394", [20 x i8]* %"$$ud-registry.listByStr20FilterOut_63_address_3395")
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_63_call_3396", %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_64", align 8
  %"$$ud-registry.listByStr20FilterOut_64_3397" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_64", align 8
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_64_3397", %TName_List_ByStr20** %newOperators, align 8
  br label %"$matchsucc_3363"

"$empty_default_3366":                            ; preds = %"$have_gas_3361"
  br label %"$matchsucc_3363"

"$matchsucc_3363":                                ; preds = %"$have_gas_3385", %"$have_gas_3372", %"$empty_default_3366"
  %"$newOperators_3398" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newOperators, align 8
  %"$$newOperators_3398_3399" = bitcast %TName_List_ByStr20* %"$newOperators_3398" to i8*
  %"$_literal_cost_call_3400" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i8* %"$$newOperators_3398_3399")
  %"$gasadd_3401" = add i64 %"$_literal_cost_call_3400", 1
  %"$gasrem_3402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3403" = icmp ugt i64 %"$gasadd_3401", %"$gasrem_3402"
  br i1 %"$gascmp_3403", label %"$out_of_gas_3404", label %"$have_gas_3405"

"$out_of_gas_3404":                               ; preds = %"$matchsucc_3363"
  call void @_out_of_gas()
  br label %"$have_gas_3405"

"$have_gas_3405":                                 ; preds = %"$out_of_gas_3404", %"$matchsucc_3363"
  %"$consume_3406" = sub i64 %"$gasrem_3402", %"$gasadd_3401"
  store i64 %"$consume_3406", i64* @_gasrem, align 8
  %"$indices_buf_3407_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3407_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3407_salloc_load", i64 20)
  %"$indices_buf_3407_salloc" = bitcast i8* %"$indices_buf_3407_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3407" = bitcast [20 x i8]* %"$indices_buf_3407_salloc" to i8*
  %"$indices_gep_3408" = getelementptr i8, i8* %"$indices_buf_3407", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3408" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_3409" = load i8*, i8** @_execptr, align 8
  %"$newOperators_3411" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newOperators, align 8
  %"$update_value_3412" = bitcast %TName_List_ByStr20* %"$newOperators_3411" to i8*
  call void @_update_field(i8* %"$execptr_load_3409", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3410", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_3407", i8* %"$update_value_3412")
  %"$gasrem_3413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3414" = icmp ugt i64 1, %"$gasrem_3413"
  br i1 %"$gascmp_3414", label %"$out_of_gas_3415", label %"$have_gas_3416"

"$out_of_gas_3415":                               ; preds = %"$have_gas_3405"
  call void @_out_of_gas()
  br label %"$have_gas_3416"

"$have_gas_3416":                                 ; preds = %"$out_of_gas_3415", %"$have_gas_3405"
  %"$consume_3417" = sub i64 %"$gasrem_3413", 1
  store i64 %"$consume_3417", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3419" = icmp ugt i64 1, %"$gasrem_3418"
  br i1 %"$gascmp_3419", label %"$out_of_gas_3420", label %"$have_gas_3421"

"$out_of_gas_3420":                               ; preds = %"$have_gas_3416"
  call void @_out_of_gas()
  br label %"$have_gas_3421"

"$have_gas_3421":                                 ; preds = %"$out_of_gas_3420", %"$have_gas_3416"
  %"$consume_3422" = sub i64 %"$gasrem_3418", 1
  store i64 %"$consume_3422", i64* @_gasrem, align 8
  %"$ud-registry.eApprovedFor_60" = alloca { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eApprovedFor_3423" = load { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApprovedFor, align 8
  %"$ud-registry.eApprovedFor_fptr_3424" = extractvalue { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_3423", 0
  %"$ud-registry.eApprovedFor_envptr_3425" = extractvalue { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_3423", 1
  %"$ud-registry.eApprovedFor__sender_3426" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.eApprovedFor__sender_3426", align 1
  %"$ud-registry.eApprovedFor_call_3427" = call { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_fptr_3424"(i8* %"$ud-registry.eApprovedFor_envptr_3425", [20 x i8]* %"$ud-registry.eApprovedFor__sender_3426")
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_call_3427", { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eApprovedFor_60", align 8
  %"$ud-registry.eApprovedFor_61" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$ud-registry.eApprovedFor_60_3428" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eApprovedFor_60", align 8
  %"$$ud-registry.eApprovedFor_60_fptr_3429" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eApprovedFor_60_3428", 0
  %"$$ud-registry.eApprovedFor_60_envptr_3430" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eApprovedFor_60_3428", 1
  %"$$ud-registry.eApprovedFor_60_address_3431" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.eApprovedFor_60_address_3431", align 1
  %"$$ud-registry.eApprovedFor_60_call_3432" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_60_fptr_3429"(i8* %"$$ud-registry.eApprovedFor_60_envptr_3430", [20 x i8]* %"$$ud-registry.eApprovedFor_60_address_3431")
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_60_call_3432", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eApprovedFor_61", align 8
  %"$ud-registry.eApprovedFor_62" = alloca i8*, align 8
  %"$$ud-registry.eApprovedFor_61_3433" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eApprovedFor_61", align 8
  %"$$ud-registry.eApprovedFor_61_fptr_3434" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_61_3433", 0
  %"$$ud-registry.eApprovedFor_61_envptr_3435" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_61_3433", 1
  %"$$ud-registry.eApprovedFor_61_call_3436" = call i8* %"$$ud-registry.eApprovedFor_61_fptr_3434"(i8* %"$$ud-registry.eApprovedFor_61_envptr_3435", %TName_Bool* %isApproved)
  store i8* %"$$ud-registry.eApprovedFor_61_call_3436", i8** %"$ud-registry.eApprovedFor_62", align 8
  %"$$ud-registry.eApprovedFor_62_3437" = load i8*, i8** %"$ud-registry.eApprovedFor_62", align 8
  store i8* %"$$ud-registry.eApprovedFor_62_3437", i8** %e, align 8
  %"$e_3438" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3440" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3438")
  %"$gasrem_3441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3442" = icmp ugt i64 %"$_literal_cost_call_3440", %"$gasrem_3441"
  br i1 %"$gascmp_3442", label %"$out_of_gas_3443", label %"$have_gas_3444"

"$out_of_gas_3443":                               ; preds = %"$have_gas_3421"
  call void @_out_of_gas()
  br label %"$have_gas_3444"

"$have_gas_3444":                                 ; preds = %"$out_of_gas_3443", %"$have_gas_3421"
  %"$consume_3445" = sub i64 %"$gasrem_3441", %"$_literal_cost_call_3440"
  store i64 %"$consume_3445", i64* @_gasrem, align 8
  %"$execptr_load_3446" = load i8*, i8** @_execptr, align 8
  %"$e_3447" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3446", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3447")
  br label %"$matchsucc_3346"

"$default_3350":                                  ; preds = %"$have_gas_3344"
  br label %"$joinp_6"

"$joinp_6":                                       ; preds = %"$default_3350"
  br label %"$matchsucc_3346"

"$matchsucc_3346":                                ; preds = %"$have_gas_3444", %"$joinp_6"
  ret void
}

define void @approveFor(i8* %0) {
entry:
  %"$_amount_3449" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3450" = bitcast i8* %"$_amount_3449" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3450", align 8
  %"$_origin_3451" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3452" = bitcast i8* %"$_origin_3451" to [20 x i8]*
  %"$_sender_3453" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3454" = bitcast i8* %"$_sender_3453" to [20 x i8]*
  %"$address_3455" = getelementptr i8, i8* %0, i32 56
  %"$address_3456" = bitcast i8* %"$address_3455" to [20 x i8]*
  %"$isApproved_3457" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_3458" = bitcast i8* %"$isApproved_3457" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_3458", align 8
  call void @"$approveFor_3247"(%Uint128 %_amount, [20 x i8]* %"$_origin_3452", [20 x i8]* %"$_sender_3454", [20 x i8]* %"$address_3456", %TName_Bool* %isApproved)
  ret void
}

define internal void @"$configureNode_3459"(%Uint128 %_amount, [20 x i8]* %"$_origin_3460", [20 x i8]* %"$_sender_3461", [32 x i8]* %"$node_3462", [20 x i8]* %"$owner_3463", [20 x i8]* %"$resolver_3464") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3460", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3461", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_3462", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_3463", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_3464", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3465_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3465_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3465_salloc_load", i64 32)
  %"$indices_buf_3465_salloc" = bitcast i8* %"$indices_buf_3465_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3465" = bitcast [32 x i8]* %"$indices_buf_3465_salloc" to i8*
  %"$indices_gep_3466" = getelementptr i8, i8* %"$indices_buf_3465", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3466" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3468" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_3469" = call i8* @_fetch_field(i8* %"$execptr_load_3468", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3467", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_3465", i32 1)
  %"$maybeRecord_3470" = bitcast i8* %"$maybeRecord_call_3469" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3470", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3471" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3471_3472" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3471" to i8*
  %"$_literal_cost_call_3473" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_3471_3472")
  %"$gasadd_3474" = add i64 %"$_literal_cost_call_3473", 0
  %"$gasadd_3475" = add i64 %"$gasadd_3474", 1
  %"$gasrem_3476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3477" = icmp ugt i64 %"$gasadd_3475", %"$gasrem_3476"
  br i1 %"$gascmp_3477", label %"$out_of_gas_3478", label %"$have_gas_3479"

"$out_of_gas_3478":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3479"

"$have_gas_3479":                                 ; preds = %"$out_of_gas_3478", %entry
  %"$consume_3480" = sub i64 %"$gasrem_3476", %"$gasadd_3475"
  store i64 %"$consume_3480", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3481_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3481_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3481_salloc_load", i64 32)
  %"$indices_buf_3481_salloc" = bitcast i8* %"$indices_buf_3481_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3481" = bitcast [32 x i8]* %"$indices_buf_3481_salloc" to i8*
  %"$indices_gep_3482" = getelementptr i8, i8* %"$indices_buf_3481", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3482" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_3484" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_3485" = call i8* @_fetch_field(i8* %"$execptr_load_3484", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3483", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_3481", i32 1)
  %"$maybeApproved_3486" = bitcast i8* %"$maybeApproved_call_3485" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3486", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3487" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3487_3488" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3487" to i8*
  %"$_literal_cost_call_3489" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_3487_3488")
  %"$gasadd_3490" = add i64 %"$_literal_cost_call_3489", 0
  %"$gasadd_3491" = add i64 %"$gasadd_3490", 1
  %"$gasrem_3492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3493" = icmp ugt i64 %"$gasadd_3491", %"$gasrem_3492"
  br i1 %"$gascmp_3493", label %"$out_of_gas_3494", label %"$have_gas_3495"

"$out_of_gas_3494":                               ; preds = %"$have_gas_3479"
  call void @_out_of_gas()
  br label %"$have_gas_3495"

"$have_gas_3495":                                 ; preds = %"$out_of_gas_3494", %"$have_gas_3479"
  %"$consume_3496" = sub i64 %"$gasrem_3492", %"$gasadd_3491"
  store i64 %"$consume_3496", i64* @_gasrem, align 8
  %"$gasrem_3497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3498" = icmp ugt i64 1, %"$gasrem_3497"
  br i1 %"$gascmp_3498", label %"$out_of_gas_3499", label %"$have_gas_3500"

"$out_of_gas_3499":                               ; preds = %"$have_gas_3495"
  call void @_out_of_gas()
  br label %"$have_gas_3500"

"$have_gas_3500":                                 ; preds = %"$out_of_gas_3499", %"$have_gas_3495"
  %"$consume_3501" = sub i64 %"$gasrem_3497", 1
  store i64 %"$consume_3501", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3503" = icmp ugt i64 1, %"$gasrem_3502"
  br i1 %"$gascmp_3503", label %"$out_of_gas_3504", label %"$have_gas_3505"

"$out_of_gas_3504":                               ; preds = %"$have_gas_3500"
  call void @_out_of_gas()
  br label %"$have_gas_3505"

"$have_gas_3505":                                 ; preds = %"$out_of_gas_3504", %"$have_gas_3500"
  %"$consume_3506" = sub i64 %"$gasrem_3502", 1
  store i64 %"$consume_3506", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_79" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3507" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3508" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3507", 0
  %"$ud-registry.recordMemberOwner_envptr_3509" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3507", 1
  %"$maybeRecord_3510" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3511" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3508"(i8* %"$ud-registry.recordMemberOwner_envptr_3509", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3511", %TName_Option_ud-registry.Record* %"$maybeRecord_3510")
  %"$ud-registry.recordMemberOwner_ret_3512" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3511", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3512", [20 x i8]* %"$ud-registry.recordMemberOwner_79", align 1
  %"$$ud-registry.recordMemberOwner_79_3513" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_79", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_79_3513", [20 x i8]* %recordOwner, align 1
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3514_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3514_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3514_salloc_load", i64 20)
  %"$indices_buf_3514_salloc" = bitcast i8* %"$indices_buf_3514_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3514" = bitcast [20 x i8]* %"$indices_buf_3514_salloc" to i8*
  %"$recordOwner_3515" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_3516" = getelementptr i8, i8* %"$indices_buf_3514", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3516" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3515", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_3518" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3519" = call i8* @_fetch_field(i8* %"$execptr_load_3518", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3517", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_3514", i32 1)
  %"$maybeOperators_3520" = bitcast i8* %"$maybeOperators_call_3519" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3520", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3521" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3521_3522" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3521" to i8*
  %"$_literal_cost_call_3523" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", i8* %"$$maybeOperators_3521_3522")
  %"$gasadd_3524" = add i64 %"$_literal_cost_call_3523", 0
  %"$gasadd_3525" = add i64 %"$gasadd_3524", 1
  %"$gasrem_3526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3527" = icmp ugt i64 %"$gasadd_3525", %"$gasrem_3526"
  br i1 %"$gascmp_3527", label %"$out_of_gas_3528", label %"$have_gas_3529"

"$out_of_gas_3528":                               ; preds = %"$have_gas_3505"
  call void @_out_of_gas()
  br label %"$have_gas_3529"

"$have_gas_3529":                                 ; preds = %"$out_of_gas_3528", %"$have_gas_3505"
  %"$consume_3530" = sub i64 %"$gasrem_3526", %"$gasadd_3525"
  store i64 %"$consume_3530", i64* @_gasrem, align 8
  %"$gasrem_3531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3532" = icmp ugt i64 1, %"$gasrem_3531"
  br i1 %"$gascmp_3532", label %"$out_of_gas_3533", label %"$have_gas_3534"

"$out_of_gas_3533":                               ; preds = %"$have_gas_3529"
  call void @_out_of_gas()
  br label %"$have_gas_3534"

"$have_gas_3534":                                 ; preds = %"$out_of_gas_3533", %"$have_gas_3529"
  %"$consume_3535" = sub i64 %"$gasrem_3531", 1
  store i64 %"$consume_3535", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_3536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3537" = icmp ugt i64 1, %"$gasrem_3536"
  br i1 %"$gascmp_3537", label %"$out_of_gas_3538", label %"$have_gas_3539"

"$out_of_gas_3538":                               ; preds = %"$have_gas_3534"
  call void @_out_of_gas()
  br label %"$have_gas_3539"

"$have_gas_3539":                                 ; preds = %"$out_of_gas_3538", %"$have_gas_3534"
  %"$consume_3540" = sub i64 %"$gasrem_3536", 1
  store i64 %"$consume_3540", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_75" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_3541" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_3542" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3541", 0
  %"$ud-registry.getIsOAO_envptr_3543" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3541", 1
  %"$ud-registry.getIsOAO__sender_3544" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3544", align 1
  %"$ud-registry.getIsOAO_call_3545" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_3542"(i8* %"$ud-registry.getIsOAO_envptr_3543", [20 x i8]* %"$ud-registry.getIsOAO__sender_3544")
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_3545", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_75", align 8
  %"$ud-registry.getIsOAO_76" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_75_3546" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_75", align 8
  %"$$ud-registry.getIsOAO_75_fptr_3547" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_75_3546", 0
  %"$$ud-registry.getIsOAO_75_envptr_3548" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_75_3546", 1
  %"$$ud-registry.getIsOAO_75_recordOwner_3549" = alloca [20 x i8], align 1
  %"$recordOwner_3550" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3550", [20 x i8]* %"$$ud-registry.getIsOAO_75_recordOwner_3549", align 1
  %"$$ud-registry.getIsOAO_75_call_3551" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_75_fptr_3547"(i8* %"$$ud-registry.getIsOAO_75_envptr_3548", [20 x i8]* %"$$ud-registry.getIsOAO_75_recordOwner_3549")
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_75_call_3551", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_76", align 8
  %"$ud-registry.getIsOAO_77" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_76_3552" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_76", align 8
  %"$$ud-registry.getIsOAO_76_fptr_3553" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_76_3552", 0
  %"$$ud-registry.getIsOAO_76_envptr_3554" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_76_3552", 1
  %"$maybeApproved_3555" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_76_call_3556" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_76_fptr_3553"(i8* %"$$ud-registry.getIsOAO_76_envptr_3554", %TName_Option_ByStr20* %"$maybeApproved_3555")
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_76_call_3556", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_77", align 8
  %"$ud-registry.getIsOAO_78" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_77_3557" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_77", align 8
  %"$$ud-registry.getIsOAO_77_fptr_3558" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_77_3557", 0
  %"$$ud-registry.getIsOAO_77_envptr_3559" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_77_3557", 1
  %"$maybeOperators_3560" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_77_call_3561" = call %TName_Bool* %"$$ud-registry.getIsOAO_77_fptr_3558"(i8* %"$$ud-registry.getIsOAO_77_envptr_3559", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3560")
  store %TName_Bool* %"$$ud-registry.getIsOAO_77_call_3561", %TName_Bool** %"$ud-registry.getIsOAO_78", align 8
  %"$$ud-registry.getIsOAO_78_3562" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_78", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_78_3562", %TName_Bool** %isSenderOAO, align 8
  %"$gasrem_3563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3564" = icmp ugt i64 2, %"$gasrem_3563"
  br i1 %"$gascmp_3564", label %"$out_of_gas_3565", label %"$have_gas_3566"

"$out_of_gas_3565":                               ; preds = %"$have_gas_3539"
  call void @_out_of_gas()
  br label %"$have_gas_3566"

"$have_gas_3566":                                 ; preds = %"$out_of_gas_3565", %"$have_gas_3539"
  %"$consume_3567" = sub i64 %"$gasrem_3563", 2
  store i64 %"$consume_3567", i64* @_gasrem, align 8
  %"$isSenderOAO_3569" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_3570" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3569", i32 0, i32 0
  %"$isSenderOAO_tag_3571" = load i8, i8* %"$isSenderOAO_tag_3570", align 1
  switch i8 %"$isSenderOAO_tag_3571", label %"$empty_default_3572" [
    i8 0, label %"$True_3573"
    i8 1, label %"$False_3715"
  ]

"$True_3573":                                     ; preds = %"$have_gas_3566"
  %"$isSenderOAO_3574" = bitcast %TName_Bool* %"$isSenderOAO_3569" to %CName_True*
  %"$gasrem_3575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3576" = icmp ugt i64 1, %"$gasrem_3575"
  br i1 %"$gascmp_3576", label %"$out_of_gas_3577", label %"$have_gas_3578"

"$out_of_gas_3577":                               ; preds = %"$True_3573"
  call void @_out_of_gas()
  br label %"$have_gas_3578"

"$have_gas_3578":                                 ; preds = %"$out_of_gas_3577", %"$True_3573"
  %"$consume_3579" = sub i64 %"$gasrem_3575", 1
  store i64 %"$consume_3579", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_3580" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3581" = icmp ugt i64 1, %"$gasrem_3580"
  br i1 %"$gascmp_3581", label %"$out_of_gas_3582", label %"$have_gas_3583"

"$out_of_gas_3582":                               ; preds = %"$have_gas_3578"
  call void @_out_of_gas()
  br label %"$have_gas_3583"

"$have_gas_3583":                                 ; preds = %"$out_of_gas_3582", %"$have_gas_3578"
  %"$consume_3584" = sub i64 %"$gasrem_3580", 1
  store i64 %"$consume_3584", i64* @_gasrem, align 8
  %"$adtval_3585_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3585_salloc" = call i8* @_salloc(i8* %"$adtval_3585_load", i64 41)
  %"$adtval_3585" = bitcast i8* %"$adtval_3585_salloc" to %CName_ud-registry.Record*
  %"$adtgep_3586" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3585", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3586", align 1
  %"$adtgep_3587" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3585", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_3587", align 1
  %"$adtgep_3588" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3585", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_3588", align 1
  %"$adtptr_3589" = bitcast %CName_ud-registry.Record* %"$adtval_3585" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_3589", %TName_ud-registry.Record** %newRecord, align 8
  %"$newRecord_3590" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_3590_3591" = bitcast %TName_ud-registry.Record* %"$newRecord_3590" to i8*
  %"$_literal_cost_call_3592" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", i8* %"$$newRecord_3590_3591")
  %"$gasadd_3593" = add i64 %"$_literal_cost_call_3592", 1
  %"$gasrem_3594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3595" = icmp ugt i64 %"$gasadd_3593", %"$gasrem_3594"
  br i1 %"$gascmp_3595", label %"$out_of_gas_3596", label %"$have_gas_3597"

"$out_of_gas_3596":                               ; preds = %"$have_gas_3583"
  call void @_out_of_gas()
  br label %"$have_gas_3597"

"$have_gas_3597":                                 ; preds = %"$out_of_gas_3596", %"$have_gas_3583"
  %"$consume_3598" = sub i64 %"$gasrem_3594", %"$gasadd_3593"
  store i64 %"$consume_3598", i64* @_gasrem, align 8
  %"$indices_buf_3599_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3599_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3599_salloc_load", i64 32)
  %"$indices_buf_3599_salloc" = bitcast i8* %"$indices_buf_3599_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3599" = bitcast [32 x i8]* %"$indices_buf_3599_salloc" to i8*
  %"$indices_gep_3600" = getelementptr i8, i8* %"$indices_buf_3599", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_3600" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_3601" = load i8*, i8** @_execptr, align 8
  %"$newRecord_3603" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_3604" = bitcast %TName_ud-registry.Record* %"$newRecord_3603" to i8*
  call void @_update_field(i8* %"$execptr_load_3601", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3602", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_3599", i8* %"$update_value_3604")
  %"$gasrem_3605" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3606" = icmp ugt i64 1, %"$gasrem_3605"
  br i1 %"$gascmp_3606", label %"$out_of_gas_3607", label %"$have_gas_3608"

"$out_of_gas_3607":                               ; preds = %"$have_gas_3597"
  call void @_out_of_gas()
  br label %"$have_gas_3608"

"$have_gas_3608":                                 ; preds = %"$out_of_gas_3607", %"$have_gas_3597"
  %"$consume_3609" = sub i64 %"$gasrem_3605", 1
  store i64 %"$consume_3609", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3611" = icmp ugt i64 1, %"$gasrem_3610"
  br i1 %"$gascmp_3611", label %"$out_of_gas_3612", label %"$have_gas_3613"

"$out_of_gas_3612":                               ; preds = %"$have_gas_3608"
  call void @_out_of_gas()
  br label %"$have_gas_3613"

"$have_gas_3613":                                 ; preds = %"$out_of_gas_3612", %"$have_gas_3608"
  %"$consume_3614" = sub i64 %"$gasrem_3610", 1
  store i64 %"$consume_3614", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_70" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_3615" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_3616" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3615", 0
  %"$ud-registry.eConfigured_envptr_3617" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3615", 1
  %"$ud-registry.eConfigured_node_3618" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_3618", align 1
  %"$ud-registry.eConfigured_call_3619" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_3616"(i8* %"$ud-registry.eConfigured_envptr_3617", [32 x i8]* %"$ud-registry.eConfigured_node_3618")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_3619", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_70", align 8
  %"$ud-registry.eConfigured_71" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_70_3620" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_70", align 8
  %"$$ud-registry.eConfigured_70_fptr_3621" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_70_3620", 0
  %"$$ud-registry.eConfigured_70_envptr_3622" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_70_3620", 1
  %"$$ud-registry.eConfigured_70_owner_3623" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_70_owner_3623", align 1
  %"$$ud-registry.eConfigured_70_call_3624" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_70_fptr_3621"(i8* %"$$ud-registry.eConfigured_70_envptr_3622", [20 x i8]* %"$$ud-registry.eConfigured_70_owner_3623")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_70_call_3624", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_71", align 8
  %"$ud-registry.eConfigured_72" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_71_3625" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_71", align 8
  %"$$ud-registry.eConfigured_71_fptr_3626" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_71_3625", 0
  %"$$ud-registry.eConfigured_71_envptr_3627" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_71_3625", 1
  %"$$ud-registry.eConfigured_71_resolver_3628" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_71_resolver_3628", align 1
  %"$$ud-registry.eConfigured_71_call_3629" = call i8* %"$$ud-registry.eConfigured_71_fptr_3626"(i8* %"$$ud-registry.eConfigured_71_envptr_3627", [20 x i8]* %"$$ud-registry.eConfigured_71_resolver_3628")
  store i8* %"$$ud-registry.eConfigured_71_call_3629", i8** %"$ud-registry.eConfigured_72", align 8
  %"$$ud-registry.eConfigured_72_3630" = load i8*, i8** %"$ud-registry.eConfigured_72", align 8
  store i8* %"$$ud-registry.eConfigured_72_3630", i8** %e, align 8
  %"$e_3631" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3633" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3631")
  %"$gasrem_3634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3635" = icmp ugt i64 %"$_literal_cost_call_3633", %"$gasrem_3634"
  br i1 %"$gascmp_3635", label %"$out_of_gas_3636", label %"$have_gas_3637"

"$out_of_gas_3636":                               ; preds = %"$have_gas_3613"
  call void @_out_of_gas()
  br label %"$have_gas_3637"

"$have_gas_3637":                                 ; preds = %"$out_of_gas_3636", %"$have_gas_3613"
  %"$consume_3638" = sub i64 %"$gasrem_3634", %"$_literal_cost_call_3633"
  store i64 %"$consume_3638", i64* @_gasrem, align 8
  %"$execptr_load_3639" = load i8*, i8** @_execptr, align 8
  %"$e_3640" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3639", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3640")
  %"$gasrem_3641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3642" = icmp ugt i64 1, %"$gasrem_3641"
  br i1 %"$gascmp_3642", label %"$out_of_gas_3643", label %"$have_gas_3644"

"$out_of_gas_3643":                               ; preds = %"$have_gas_3637"
  call void @_out_of_gas()
  br label %"$have_gas_3644"

"$have_gas_3644":                                 ; preds = %"$out_of_gas_3643", %"$have_gas_3637"
  %"$consume_3645" = sub i64 %"$gasrem_3641", 1
  store i64 %"$consume_3645", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_3646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3647" = icmp ugt i64 1, %"$gasrem_3646"
  br i1 %"$gascmp_3647", label %"$out_of_gas_3648", label %"$have_gas_3649"

"$out_of_gas_3648":                               ; preds = %"$have_gas_3644"
  call void @_out_of_gas()
  br label %"$have_gas_3649"

"$have_gas_3649":                                 ; preds = %"$out_of_gas_3648", %"$have_gas_3644"
  %"$consume_3650" = sub i64 %"$gasrem_3646", 1
  store i64 %"$consume_3650", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_3651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3652" = icmp ugt i64 1, %"$gasrem_3651"
  br i1 %"$gascmp_3652", label %"$out_of_gas_3653", label %"$have_gas_3654"

"$out_of_gas_3653":                               ; preds = %"$have_gas_3649"
  call void @_out_of_gas()
  br label %"$have_gas_3654"

"$have_gas_3654":                                 ; preds = %"$out_of_gas_3653", %"$have_gas_3649"
  %"$consume_3655" = sub i64 %"$gasrem_3651", 1
  store i64 %"$consume_3655", i64* @_gasrem, align 8
  %"$msgobj_3656_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_3656_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3656_salloc_load", i64 225)
  %"$msgobj_3656_salloc" = bitcast i8* %"$msgobj_3656_salloc_salloc" to [225 x i8]*
  %"$msgobj_3656" = bitcast [225 x i8]* %"$msgobj_3656_salloc" to i8*
  store i8 5, i8* %"$msgobj_3656", align 1
  %"$msgobj_fname_3658" = getelementptr i8, i8* %"$msgobj_3656", i32 1
  %"$msgobj_fname_3659" = bitcast i8* %"$msgobj_fname_3658" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3657", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3659", align 8
  %"$msgobj_td_3660" = getelementptr i8, i8* %"$msgobj_3656", i32 17
  %"$msgobj_td_3661" = bitcast i8* %"$msgobj_td_3660" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_3661", align 8
  %"$msgobj_v_3663" = getelementptr i8, i8* %"$msgobj_3656", i32 25
  %"$msgobj_v_3664" = bitcast i8* %"$msgobj_v_3663" to %String*
  store %String { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$stringlit_3662", i32 0, i32 0), i32 18 }, %String* %"$msgobj_v_3664", align 8
  %"$msgobj_fname_3666" = getelementptr i8, i8* %"$msgobj_3656", i32 41
  %"$msgobj_fname_3667" = bitcast i8* %"$msgobj_fname_3666" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3665", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3667", align 8
  %"$msgobj_td_3668" = getelementptr i8, i8* %"$msgobj_3656", i32 57
  %"$msgobj_td_3669" = bitcast i8* %"$msgobj_td_3668" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_3669", align 8
  %"$msgobj_v_3670" = getelementptr i8, i8* %"$msgobj_3656", i32 65
  %"$msgobj_v_3671" = bitcast i8* %"$msgobj_v_3670" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3671", align 1
  %"$msgobj_fname_3673" = getelementptr i8, i8* %"$msgobj_3656", i32 97
  %"$msgobj_fname_3674" = bitcast i8* %"$msgobj_fname_3673" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3672", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3674", align 8
  %"$msgobj_td_3675" = getelementptr i8, i8* %"$msgobj_3656", i32 113
  %"$msgobj_td_3676" = bitcast i8* %"$msgobj_td_3675" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_3676", align 8
  %"$msgobj_v_3677" = getelementptr i8, i8* %"$msgobj_3656", i32 121
  %"$msgobj_v_3678" = bitcast i8* %"$msgobj_v_3677" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_3678", align 1
  %"$msgobj_fname_3680" = getelementptr i8, i8* %"$msgobj_3656", i32 141
  %"$msgobj_fname_3681" = bitcast i8* %"$msgobj_fname_3680" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3679", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3681", align 8
  %"$msgobj_td_3682" = getelementptr i8, i8* %"$msgobj_3656", i32 157
  %"$msgobj_td_3683" = bitcast i8* %"$msgobj_td_3682" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_3683", align 8
  %"$msgobj_v_3684" = getelementptr i8, i8* %"$msgobj_3656", i32 165
  %"$msgobj_v_3685" = bitcast i8* %"$msgobj_v_3684" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3685", align 8
  %"$msgobj_fname_3687" = getelementptr i8, i8* %"$msgobj_3656", i32 181
  %"$msgobj_fname_3688" = bitcast i8* %"$msgobj_fname_3687" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3686", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3688", align 8
  %"$msgobj_td_3689" = getelementptr i8, i8* %"$msgobj_3656", i32 197
  %"$msgobj_td_3690" = bitcast i8* %"$msgobj_td_3689" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_3690", align 8
  %"$msgobj_v_3691" = getelementptr i8, i8* %"$msgobj_3656", i32 205
  %"$msgobj_v_3692" = bitcast i8* %"$msgobj_v_3691" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3692", align 1
  store i8* %"$msgobj_3656", i8** %m, align 8
  %"$gasrem_3694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3695" = icmp ugt i64 1, %"$gasrem_3694"
  br i1 %"$gascmp_3695", label %"$out_of_gas_3696", label %"$have_gas_3697"

"$out_of_gas_3696":                               ; preds = %"$have_gas_3654"
  call void @_out_of_gas()
  br label %"$have_gas_3697"

"$have_gas_3697":                                 ; preds = %"$out_of_gas_3696", %"$have_gas_3654"
  %"$consume_3698" = sub i64 %"$gasrem_3694", 1
  store i64 %"$consume_3698", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_69" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_3699" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_3700" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3699", 0
  %"$ud-registry.oneMsg_envptr_3701" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3699", 1
  %"$m_3702" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_3703" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3700"(i8* %"$ud-registry.oneMsg_envptr_3701", i8* %"$m_3702")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3703", %TName_List_Message** %"$ud-registry.oneMsg_69", align 8
  %"$$ud-registry.oneMsg_69_3704" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_69", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_69_3704", %TName_List_Message** %msgs, align 8
  %"$msgs_3705" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_3705_3706" = bitcast %TName_List_Message* %"$msgs_3705" to i8*
  %"$_literal_cost_call_3707" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_3705_3706")
  %"$gasrem_3708" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3709" = icmp ugt i64 %"$_literal_cost_call_3707", %"$gasrem_3708"
  br i1 %"$gascmp_3709", label %"$out_of_gas_3710", label %"$have_gas_3711"

"$out_of_gas_3710":                               ; preds = %"$have_gas_3697"
  call void @_out_of_gas()
  br label %"$have_gas_3711"

"$have_gas_3711":                                 ; preds = %"$out_of_gas_3710", %"$have_gas_3697"
  %"$consume_3712" = sub i64 %"$gasrem_3708", %"$_literal_cost_call_3707"
  store i64 %"$consume_3712", i64* @_gasrem, align 8
  %"$execptr_load_3713" = load i8*, i8** @_execptr, align 8
  %"$msgs_3714" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_3713", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_3714")
  br label %"$matchsucc_3568"

"$False_3715":                                    ; preds = %"$have_gas_3566"
  %"$isSenderOAO_3716" = bitcast %TName_Bool* %"$isSenderOAO_3569" to %CName_False*
  %"$gasrem_3717" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3718" = icmp ugt i64 1, %"$gasrem_3717"
  br i1 %"$gascmp_3718", label %"$out_of_gas_3719", label %"$have_gas_3720"

"$out_of_gas_3719":                               ; preds = %"$False_3715"
  call void @_out_of_gas()
  br label %"$have_gas_3720"

"$have_gas_3720":                                 ; preds = %"$out_of_gas_3719", %"$False_3715"
  %"$consume_3721" = sub i64 %"$gasrem_3717", 1
  store i64 %"$consume_3721", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_3722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3723" = icmp ugt i64 1, %"$gasrem_3722"
  br i1 %"$gascmp_3723", label %"$out_of_gas_3724", label %"$have_gas_3725"

"$out_of_gas_3724":                               ; preds = %"$have_gas_3720"
  call void @_out_of_gas()
  br label %"$have_gas_3725"

"$have_gas_3725":                                 ; preds = %"$out_of_gas_3724", %"$have_gas_3720"
  %"$consume_3726" = sub i64 %"$gasrem_3722", 1
  store i64 %"$consume_3726", i64* @_gasrem, align 8
  %m5 = alloca %String, align 8
  %"$gasrem_3727" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3728" = icmp ugt i64 1, %"$gasrem_3727"
  br i1 %"$gascmp_3728", label %"$out_of_gas_3729", label %"$have_gas_3730"

"$out_of_gas_3729":                               ; preds = %"$have_gas_3725"
  call void @_out_of_gas()
  br label %"$have_gas_3730"

"$have_gas_3730":                                 ; preds = %"$out_of_gas_3729", %"$have_gas_3725"
  %"$consume_3731" = sub i64 %"$gasrem_3727", 1
  store i64 %"$consume_3731", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_3732", i32 0, i32 0), i32 43 }, %String* %m5, align 8
  %"$gasrem_3733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3734" = icmp ugt i64 1, %"$gasrem_3733"
  br i1 %"$gascmp_3734", label %"$out_of_gas_3735", label %"$have_gas_3736"

"$out_of_gas_3735":                               ; preds = %"$have_gas_3730"
  call void @_out_of_gas()
  br label %"$have_gas_3736"

"$have_gas_3736":                                 ; preds = %"$out_of_gas_3735", %"$have_gas_3730"
  %"$consume_3737" = sub i64 %"$gasrem_3733", 1
  store i64 %"$consume_3737", i64* @_gasrem, align 8
  %"$ud-registry.eError_74" = alloca i8*, align 8
  %"$ud-registry.eError_3738" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3739" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3738", 0
  %"$ud-registry.eError_envptr_3740" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3738", 1
  %"$m_3741" = load %String, %String* %m5, align 8
  %"$ud-registry.eError_call_3742" = call i8* %"$ud-registry.eError_fptr_3739"(i8* %"$ud-registry.eError_envptr_3740", %String %"$m_3741")
  store i8* %"$ud-registry.eError_call_3742", i8** %"$ud-registry.eError_74", align 8
  %"$$ud-registry.eError_74_3743" = load i8*, i8** %"$ud-registry.eError_74", align 8
  store i8* %"$$ud-registry.eError_74_3743", i8** %e4, align 8
  %"$e_3744" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_3746" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3744")
  %"$gasrem_3747" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3748" = icmp ugt i64 %"$_literal_cost_call_3746", %"$gasrem_3747"
  br i1 %"$gascmp_3748", label %"$out_of_gas_3749", label %"$have_gas_3750"

"$out_of_gas_3749":                               ; preds = %"$have_gas_3736"
  call void @_out_of_gas()
  br label %"$have_gas_3750"

"$have_gas_3750":                                 ; preds = %"$out_of_gas_3749", %"$have_gas_3736"
  %"$consume_3751" = sub i64 %"$gasrem_3747", %"$_literal_cost_call_3746"
  store i64 %"$consume_3751", i64* @_gasrem, align 8
  %"$execptr_load_3752" = load i8*, i8** @_execptr, align 8
  %"$e_3753" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_3752", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3753")
  %"$gasrem_3754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3755" = icmp ugt i64 1, %"$gasrem_3754"
  br i1 %"$gascmp_3755", label %"$out_of_gas_3756", label %"$have_gas_3757"

"$out_of_gas_3756":                               ; preds = %"$have_gas_3750"
  call void @_out_of_gas()
  br label %"$have_gas_3757"

"$have_gas_3757":                                 ; preds = %"$out_of_gas_3756", %"$have_gas_3750"
  %"$consume_3758" = sub i64 %"$gasrem_3754", 1
  store i64 %"$consume_3758", i64* @_gasrem, align 8
  %msgs6 = alloca %TName_List_Message*, align 8
  %"$gasrem_3759" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3760" = icmp ugt i64 1, %"$gasrem_3759"
  br i1 %"$gascmp_3760", label %"$out_of_gas_3761", label %"$have_gas_3762"

"$out_of_gas_3761":                               ; preds = %"$have_gas_3757"
  call void @_out_of_gas()
  br label %"$have_gas_3762"

"$have_gas_3762":                                 ; preds = %"$out_of_gas_3761", %"$have_gas_3757"
  %"$consume_3763" = sub i64 %"$gasrem_3759", 1
  store i64 %"$consume_3763", i64* @_gasrem, align 8
  %"$m_0" = alloca i8*, align 8
  %"$gasrem_3764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3765" = icmp ugt i64 1, %"$gasrem_3764"
  br i1 %"$gascmp_3765", label %"$out_of_gas_3766", label %"$have_gas_3767"

"$out_of_gas_3766":                               ; preds = %"$have_gas_3762"
  call void @_out_of_gas()
  br label %"$have_gas_3767"

"$have_gas_3767":                                 ; preds = %"$out_of_gas_3766", %"$have_gas_3762"
  %"$consume_3768" = sub i64 %"$gasrem_3764", 1
  store i64 %"$consume_3768", i64* @_gasrem, align 8
  %"$msgobj_3769_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_3769_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3769_salloc_load", i64 225)
  %"$msgobj_3769_salloc" = bitcast i8* %"$msgobj_3769_salloc_salloc" to [225 x i8]*
  %"$msgobj_3769" = bitcast [225 x i8]* %"$msgobj_3769_salloc" to i8*
  store i8 5, i8* %"$msgobj_3769", align 1
  %"$msgobj_fname_3771" = getelementptr i8, i8* %"$msgobj_3769", i32 1
  %"$msgobj_fname_3772" = bitcast i8* %"$msgobj_fname_3771" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3770", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3772", align 8
  %"$msgobj_td_3773" = getelementptr i8, i8* %"$msgobj_3769", i32 17
  %"$msgobj_td_3774" = bitcast i8* %"$msgobj_td_3773" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_3774", align 8
  %"$msgobj_v_3776" = getelementptr i8, i8* %"$msgobj_3769", i32 25
  %"$msgobj_v_3777" = bitcast i8* %"$msgobj_v_3776" to %String*
  store %String { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$stringlit_3775", i32 0, i32 0), i32 18 }, %String* %"$msgobj_v_3777", align 8
  %"$msgobj_fname_3779" = getelementptr i8, i8* %"$msgobj_3769", i32 41
  %"$msgobj_fname_3780" = bitcast i8* %"$msgobj_fname_3779" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3778", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3780", align 8
  %"$msgobj_td_3781" = getelementptr i8, i8* %"$msgobj_3769", i32 57
  %"$msgobj_td_3782" = bitcast i8* %"$msgobj_td_3781" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_3782", align 8
  %"$msgobj_v_3783" = getelementptr i8, i8* %"$msgobj_3769", i32 65
  %"$msgobj_v_3784" = bitcast i8* %"$msgobj_v_3783" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3784", align 1
  %"$msgobj_fname_3786" = getelementptr i8, i8* %"$msgobj_3769", i32 97
  %"$msgobj_fname_3787" = bitcast i8* %"$msgobj_fname_3786" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3785", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3787", align 8
  %"$msgobj_td_3788" = getelementptr i8, i8* %"$msgobj_3769", i32 113
  %"$msgobj_td_3789" = bitcast i8* %"$msgobj_td_3788" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_3789", align 8
  %"$recordOwner_3790" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$msgobj_v_3791" = getelementptr i8, i8* %"$msgobj_3769", i32 121
  %"$msgobj_v_3792" = bitcast i8* %"$msgobj_v_3791" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3790", [20 x i8]* %"$msgobj_v_3792", align 1
  %"$msgobj_fname_3794" = getelementptr i8, i8* %"$msgobj_3769", i32 141
  %"$msgobj_fname_3795" = bitcast i8* %"$msgobj_fname_3794" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3793", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3795", align 8
  %"$msgobj_td_3796" = getelementptr i8, i8* %"$msgobj_3769", i32 157
  %"$msgobj_td_3797" = bitcast i8* %"$msgobj_td_3796" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_3797", align 8
  %"$msgobj_v_3798" = getelementptr i8, i8* %"$msgobj_3769", i32 165
  %"$msgobj_v_3799" = bitcast i8* %"$msgobj_v_3798" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3799", align 8
  %"$msgobj_fname_3801" = getelementptr i8, i8* %"$msgobj_3769", i32 181
  %"$msgobj_fname_3802" = bitcast i8* %"$msgobj_fname_3801" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3800", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3802", align 8
  %"$msgobj_td_3803" = getelementptr i8, i8* %"$msgobj_3769", i32 197
  %"$msgobj_td_3804" = bitcast i8* %"$msgobj_td_3803" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_3804", align 8
  %"$msgobj_v_3805" = getelementptr i8, i8* %"$msgobj_3769", i32 205
  %"$msgobj_v_3806" = bitcast i8* %"$msgobj_v_3805" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3806", align 1
  store i8* %"$msgobj_3769", i8** %"$m_0", align 8
  %"$gasrem_3808" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3809" = icmp ugt i64 1, %"$gasrem_3808"
  br i1 %"$gascmp_3809", label %"$out_of_gas_3810", label %"$have_gas_3811"

"$out_of_gas_3810":                               ; preds = %"$have_gas_3767"
  call void @_out_of_gas()
  br label %"$have_gas_3811"

"$have_gas_3811":                                 ; preds = %"$out_of_gas_3810", %"$have_gas_3767"
  %"$consume_3812" = sub i64 %"$gasrem_3808", 1
  store i64 %"$consume_3812", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_73" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_3813" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_3814" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3813", 0
  %"$ud-registry.oneMsg_envptr_3815" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3813", 1
  %"$$m_0_3816" = load i8*, i8** %"$m_0", align 8
  %"$ud-registry.oneMsg_call_3817" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3814"(i8* %"$ud-registry.oneMsg_envptr_3815", i8* %"$$m_0_3816")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3817", %TName_List_Message** %"$ud-registry.oneMsg_73", align 8
  %"$$ud-registry.oneMsg_73_3818" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_73", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_73_3818", %TName_List_Message** %msgs6, align 8
  %"$msgs_3819" = load %TName_List_Message*, %TName_List_Message** %msgs6, align 8
  %"$$msgs_3819_3820" = bitcast %TName_List_Message* %"$msgs_3819" to i8*
  %"$_literal_cost_call_3821" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_3819_3820")
  %"$gasrem_3822" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3823" = icmp ugt i64 %"$_literal_cost_call_3821", %"$gasrem_3822"
  br i1 %"$gascmp_3823", label %"$out_of_gas_3824", label %"$have_gas_3825"

"$out_of_gas_3824":                               ; preds = %"$have_gas_3811"
  call void @_out_of_gas()
  br label %"$have_gas_3825"

"$have_gas_3825":                                 ; preds = %"$out_of_gas_3824", %"$have_gas_3811"
  %"$consume_3826" = sub i64 %"$gasrem_3822", %"$_literal_cost_call_3821"
  store i64 %"$consume_3826", i64* @_gasrem, align 8
  %"$execptr_load_3827" = load i8*, i8** @_execptr, align 8
  %"$msgs_3828" = load %TName_List_Message*, %TName_List_Message** %msgs6, align 8
  call void @_send(i8* %"$execptr_load_3827", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_3828")
  br label %"$matchsucc_3568"

"$empty_default_3572":                            ; preds = %"$have_gas_3566"
  br label %"$matchsucc_3568"

"$matchsucc_3568":                                ; preds = %"$have_gas_3825", %"$have_gas_3711", %"$empty_default_3572"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @configureNode(i8* %0) {
entry:
  %"$_amount_3830" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3831" = bitcast i8* %"$_amount_3830" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3831", align 8
  %"$_origin_3832" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3833" = bitcast i8* %"$_origin_3832" to [20 x i8]*
  %"$_sender_3834" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3835" = bitcast i8* %"$_sender_3834" to [20 x i8]*
  %"$node_3836" = getelementptr i8, i8* %0, i32 56
  %"$node_3837" = bitcast i8* %"$node_3836" to [32 x i8]*
  %"$owner_3838" = getelementptr i8, i8* %0, i32 88
  %"$owner_3839" = bitcast i8* %"$owner_3838" to [20 x i8]*
  %"$resolver_3840" = getelementptr i8, i8* %0, i32 108
  %"$resolver_3841" = bitcast i8* %"$resolver_3840" to [20 x i8]*
  call void @"$configureNode_3459"(%Uint128 %_amount, [20 x i8]* %"$_origin_3833", [20 x i8]* %"$_sender_3835", [32 x i8]* %"$node_3837", [20 x i8]* %"$owner_3839", [20 x i8]* %"$resolver_3841")
  ret void
}

define internal void @"$configureResolver_3842"(%Uint128 %_amount, [20 x i8]* %"$_origin_3843", [20 x i8]* %"$_sender_3844", [32 x i8]* %"$node_3845", [20 x i8]* %"$resolver_3846") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3843", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3844", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_3845", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_3846", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3847_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3847_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3847_salloc_load", i64 32)
  %"$indices_buf_3847_salloc" = bitcast i8* %"$indices_buf_3847_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3847" = bitcast [32 x i8]* %"$indices_buf_3847_salloc" to i8*
  %"$indices_gep_3848" = getelementptr i8, i8* %"$indices_buf_3847", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3848" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3850" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_3851" = call i8* @_fetch_field(i8* %"$execptr_load_3850", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3849", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_3847", i32 1)
  %"$maybeRecord_3852" = bitcast i8* %"$maybeRecord_call_3851" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3852", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3853" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3853_3854" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3853" to i8*
  %"$_literal_cost_call_3855" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_3853_3854")
  %"$gasadd_3856" = add i64 %"$_literal_cost_call_3855", 0
  %"$gasadd_3857" = add i64 %"$gasadd_3856", 1
  %"$gasrem_3858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3859" = icmp ugt i64 %"$gasadd_3857", %"$gasrem_3858"
  br i1 %"$gascmp_3859", label %"$out_of_gas_3860", label %"$have_gas_3861"

"$out_of_gas_3860":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3861"

"$have_gas_3861":                                 ; preds = %"$out_of_gas_3860", %entry
  %"$consume_3862" = sub i64 %"$gasrem_3858", %"$gasadd_3857"
  store i64 %"$consume_3862", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3863_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3863_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3863_salloc_load", i64 32)
  %"$indices_buf_3863_salloc" = bitcast i8* %"$indices_buf_3863_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3863" = bitcast [32 x i8]* %"$indices_buf_3863_salloc" to i8*
  %"$indices_gep_3864" = getelementptr i8, i8* %"$indices_buf_3863", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3864" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_3866" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_3867" = call i8* @_fetch_field(i8* %"$execptr_load_3866", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3865", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_3863", i32 1)
  %"$maybeApproved_3868" = bitcast i8* %"$maybeApproved_call_3867" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3868", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3869" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3869_3870" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3869" to i8*
  %"$_literal_cost_call_3871" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_3869_3870")
  %"$gasadd_3872" = add i64 %"$_literal_cost_call_3871", 0
  %"$gasadd_3873" = add i64 %"$gasadd_3872", 1
  %"$gasrem_3874" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3875" = icmp ugt i64 %"$gasadd_3873", %"$gasrem_3874"
  br i1 %"$gascmp_3875", label %"$out_of_gas_3876", label %"$have_gas_3877"

"$out_of_gas_3876":                               ; preds = %"$have_gas_3861"
  call void @_out_of_gas()
  br label %"$have_gas_3877"

"$have_gas_3877":                                 ; preds = %"$out_of_gas_3876", %"$have_gas_3861"
  %"$consume_3878" = sub i64 %"$gasrem_3874", %"$gasadd_3873"
  store i64 %"$consume_3878", i64* @_gasrem, align 8
  %"$gasrem_3879" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3880" = icmp ugt i64 1, %"$gasrem_3879"
  br i1 %"$gascmp_3880", label %"$out_of_gas_3881", label %"$have_gas_3882"

"$out_of_gas_3881":                               ; preds = %"$have_gas_3877"
  call void @_out_of_gas()
  br label %"$have_gas_3882"

"$have_gas_3882":                                 ; preds = %"$out_of_gas_3881", %"$have_gas_3877"
  %"$consume_3883" = sub i64 %"$gasrem_3879", 1
  store i64 %"$consume_3883", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3885" = icmp ugt i64 1, %"$gasrem_3884"
  br i1 %"$gascmp_3885", label %"$out_of_gas_3886", label %"$have_gas_3887"

"$out_of_gas_3886":                               ; preds = %"$have_gas_3882"
  call void @_out_of_gas()
  br label %"$have_gas_3887"

"$have_gas_3887":                                 ; preds = %"$out_of_gas_3886", %"$have_gas_3882"
  %"$consume_3888" = sub i64 %"$gasrem_3884", 1
  store i64 %"$consume_3888", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_88" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3889" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3890" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3889", 0
  %"$ud-registry.recordMemberOwner_envptr_3891" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3889", 1
  %"$maybeRecord_3892" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3893" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3890"(i8* %"$ud-registry.recordMemberOwner_envptr_3891", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3893", %TName_Option_ud-registry.Record* %"$maybeRecord_3892")
  %"$ud-registry.recordMemberOwner_ret_3894" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3893", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3894", [20 x i8]* %"$ud-registry.recordMemberOwner_88", align 1
  %"$$ud-registry.recordMemberOwner_88_3895" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_88", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_88_3895", [20 x i8]* %recordOwner, align 1
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3896_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3896_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3896_salloc_load", i64 20)
  %"$indices_buf_3896_salloc" = bitcast i8* %"$indices_buf_3896_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3896" = bitcast [20 x i8]* %"$indices_buf_3896_salloc" to i8*
  %"$recordOwner_3897" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_3898" = getelementptr i8, i8* %"$indices_buf_3896", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3898" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3897", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_3900" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3901" = call i8* @_fetch_field(i8* %"$execptr_load_3900", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3899", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_3896", i32 1)
  %"$maybeOperators_3902" = bitcast i8* %"$maybeOperators_call_3901" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3902", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3903" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3903_3904" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3903" to i8*
  %"$_literal_cost_call_3905" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", i8* %"$$maybeOperators_3903_3904")
  %"$gasadd_3906" = add i64 %"$_literal_cost_call_3905", 0
  %"$gasadd_3907" = add i64 %"$gasadd_3906", 1
  %"$gasrem_3908" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3909" = icmp ugt i64 %"$gasadd_3907", %"$gasrem_3908"
  br i1 %"$gascmp_3909", label %"$out_of_gas_3910", label %"$have_gas_3911"

"$out_of_gas_3910":                               ; preds = %"$have_gas_3887"
  call void @_out_of_gas()
  br label %"$have_gas_3911"

"$have_gas_3911":                                 ; preds = %"$out_of_gas_3910", %"$have_gas_3887"
  %"$consume_3912" = sub i64 %"$gasrem_3908", %"$gasadd_3907"
  store i64 %"$consume_3912", i64* @_gasrem, align 8
  %"$gasrem_3913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3914" = icmp ugt i64 1, %"$gasrem_3913"
  br i1 %"$gascmp_3914", label %"$out_of_gas_3915", label %"$have_gas_3916"

"$out_of_gas_3915":                               ; preds = %"$have_gas_3911"
  call void @_out_of_gas()
  br label %"$have_gas_3916"

"$have_gas_3916":                                 ; preds = %"$out_of_gas_3915", %"$have_gas_3911"
  %"$consume_3917" = sub i64 %"$gasrem_3913", 1
  store i64 %"$consume_3917", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_3918" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3919" = icmp ugt i64 1, %"$gasrem_3918"
  br i1 %"$gascmp_3919", label %"$out_of_gas_3920", label %"$have_gas_3921"

"$out_of_gas_3920":                               ; preds = %"$have_gas_3916"
  call void @_out_of_gas()
  br label %"$have_gas_3921"

"$have_gas_3921":                                 ; preds = %"$out_of_gas_3920", %"$have_gas_3916"
  %"$consume_3922" = sub i64 %"$gasrem_3918", 1
  store i64 %"$consume_3922", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_84" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_3923" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_3924" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3923", 0
  %"$ud-registry.getIsOAO_envptr_3925" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3923", 1
  %"$ud-registry.getIsOAO__sender_3926" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3926", align 1
  %"$ud-registry.getIsOAO_call_3927" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_3924"(i8* %"$ud-registry.getIsOAO_envptr_3925", [20 x i8]* %"$ud-registry.getIsOAO__sender_3926")
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_3927", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_84", align 8
  %"$ud-registry.getIsOAO_85" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_84_3928" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_84", align 8
  %"$$ud-registry.getIsOAO_84_fptr_3929" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_84_3928", 0
  %"$$ud-registry.getIsOAO_84_envptr_3930" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_84_3928", 1
  %"$$ud-registry.getIsOAO_84_recordOwner_3931" = alloca [20 x i8], align 1
  %"$recordOwner_3932" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3932", [20 x i8]* %"$$ud-registry.getIsOAO_84_recordOwner_3931", align 1
  %"$$ud-registry.getIsOAO_84_call_3933" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_84_fptr_3929"(i8* %"$$ud-registry.getIsOAO_84_envptr_3930", [20 x i8]* %"$$ud-registry.getIsOAO_84_recordOwner_3931")
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_84_call_3933", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_85", align 8
  %"$ud-registry.getIsOAO_86" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_85_3934" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_85", align 8
  %"$$ud-registry.getIsOAO_85_fptr_3935" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_85_3934", 0
  %"$$ud-registry.getIsOAO_85_envptr_3936" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_85_3934", 1
  %"$maybeApproved_3937" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_85_call_3938" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_85_fptr_3935"(i8* %"$$ud-registry.getIsOAO_85_envptr_3936", %TName_Option_ByStr20* %"$maybeApproved_3937")
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_85_call_3938", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_86", align 8
  %"$ud-registry.getIsOAO_87" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_86_3939" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_86", align 8
  %"$$ud-registry.getIsOAO_86_fptr_3940" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_86_3939", 0
  %"$$ud-registry.getIsOAO_86_envptr_3941" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_86_3939", 1
  %"$maybeOperators_3942" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_86_call_3943" = call %TName_Bool* %"$$ud-registry.getIsOAO_86_fptr_3940"(i8* %"$$ud-registry.getIsOAO_86_envptr_3941", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3942")
  store %TName_Bool* %"$$ud-registry.getIsOAO_86_call_3943", %TName_Bool** %"$ud-registry.getIsOAO_87", align 8
  %"$$ud-registry.getIsOAO_87_3944" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_87", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_87_3944", %TName_Bool** %isSenderOAO, align 8
  %"$gasrem_3945" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3946" = icmp ugt i64 2, %"$gasrem_3945"
  br i1 %"$gascmp_3946", label %"$out_of_gas_3947", label %"$have_gas_3948"

"$out_of_gas_3947":                               ; preds = %"$have_gas_3921"
  call void @_out_of_gas()
  br label %"$have_gas_3948"

"$have_gas_3948":                                 ; preds = %"$out_of_gas_3947", %"$have_gas_3921"
  %"$consume_3949" = sub i64 %"$gasrem_3945", 2
  store i64 %"$consume_3949", i64* @_gasrem, align 8
  %"$isSenderOAO_3951" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_3952" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3951", i32 0, i32 0
  %"$isSenderOAO_tag_3953" = load i8, i8* %"$isSenderOAO_tag_3952", align 1
  switch i8 %"$isSenderOAO_tag_3953", label %"$empty_default_3954" [
    i8 0, label %"$True_3955"
    i8 1, label %"$False_4025"
  ]

"$True_3955":                                     ; preds = %"$have_gas_3948"
  %"$isSenderOAO_3956" = bitcast %TName_Bool* %"$isSenderOAO_3951" to %CName_True*
  %"$gasrem_3957" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3958" = icmp ugt i64 1, %"$gasrem_3957"
  br i1 %"$gascmp_3958", label %"$out_of_gas_3959", label %"$have_gas_3960"

"$out_of_gas_3959":                               ; preds = %"$True_3955"
  call void @_out_of_gas()
  br label %"$have_gas_3960"

"$have_gas_3960":                                 ; preds = %"$out_of_gas_3959", %"$True_3955"
  %"$consume_3961" = sub i64 %"$gasrem_3957", 1
  store i64 %"$consume_3961", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_3962" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3963" = icmp ugt i64 1, %"$gasrem_3962"
  br i1 %"$gascmp_3963", label %"$out_of_gas_3964", label %"$have_gas_3965"

"$out_of_gas_3964":                               ; preds = %"$have_gas_3960"
  call void @_out_of_gas()
  br label %"$have_gas_3965"

"$have_gas_3965":                                 ; preds = %"$out_of_gas_3964", %"$have_gas_3960"
  %"$consume_3966" = sub i64 %"$gasrem_3962", 1
  store i64 %"$consume_3966", i64* @_gasrem, align 8
  %"$recordOwner_3967" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$adtval_3968_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3968_salloc" = call i8* @_salloc(i8* %"$adtval_3968_load", i64 41)
  %"$adtval_3968" = bitcast i8* %"$adtval_3968_salloc" to %CName_ud-registry.Record*
  %"$adtgep_3969" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3968", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3969", align 1
  %"$adtgep_3970" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3968", i32 0, i32 1
  store [20 x i8] %"$recordOwner_3967", [20 x i8]* %"$adtgep_3970", align 1
  %"$adtgep_3971" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3968", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_3971", align 1
  %"$adtptr_3972" = bitcast %CName_ud-registry.Record* %"$adtval_3968" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_3972", %TName_ud-registry.Record** %newRecord, align 8
  %"$newRecord_3973" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_3973_3974" = bitcast %TName_ud-registry.Record* %"$newRecord_3973" to i8*
  %"$_literal_cost_call_3975" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", i8* %"$$newRecord_3973_3974")
  %"$gasadd_3976" = add i64 %"$_literal_cost_call_3975", 1
  %"$gasrem_3977" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3978" = icmp ugt i64 %"$gasadd_3976", %"$gasrem_3977"
  br i1 %"$gascmp_3978", label %"$out_of_gas_3979", label %"$have_gas_3980"

"$out_of_gas_3979":                               ; preds = %"$have_gas_3965"
  call void @_out_of_gas()
  br label %"$have_gas_3980"

"$have_gas_3980":                                 ; preds = %"$out_of_gas_3979", %"$have_gas_3965"
  %"$consume_3981" = sub i64 %"$gasrem_3977", %"$gasadd_3976"
  store i64 %"$consume_3981", i64* @_gasrem, align 8
  %"$indices_buf_3982_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3982_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3982_salloc_load", i64 32)
  %"$indices_buf_3982_salloc" = bitcast i8* %"$indices_buf_3982_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3982" = bitcast [32 x i8]* %"$indices_buf_3982_salloc" to i8*
  %"$indices_gep_3983" = getelementptr i8, i8* %"$indices_buf_3982", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_3983" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_3984" = load i8*, i8** @_execptr, align 8
  %"$newRecord_3986" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_3987" = bitcast %TName_ud-registry.Record* %"$newRecord_3986" to i8*
  call void @_update_field(i8* %"$execptr_load_3984", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3985", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_3982", i8* %"$update_value_3987")
  %"$gasrem_3988" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3989" = icmp ugt i64 1, %"$gasrem_3988"
  br i1 %"$gascmp_3989", label %"$out_of_gas_3990", label %"$have_gas_3991"

"$out_of_gas_3990":                               ; preds = %"$have_gas_3980"
  call void @_out_of_gas()
  br label %"$have_gas_3991"

"$have_gas_3991":                                 ; preds = %"$out_of_gas_3990", %"$have_gas_3980"
  %"$consume_3992" = sub i64 %"$gasrem_3988", 1
  store i64 %"$consume_3992", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3993" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3994" = icmp ugt i64 1, %"$gasrem_3993"
  br i1 %"$gascmp_3994", label %"$out_of_gas_3995", label %"$have_gas_3996"

"$out_of_gas_3995":                               ; preds = %"$have_gas_3991"
  call void @_out_of_gas()
  br label %"$have_gas_3996"

"$have_gas_3996":                                 ; preds = %"$out_of_gas_3995", %"$have_gas_3991"
  %"$consume_3997" = sub i64 %"$gasrem_3993", 1
  store i64 %"$consume_3997", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_80" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_3998" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_3999" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3998", 0
  %"$ud-registry.eConfigured_envptr_4000" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3998", 1
  %"$ud-registry.eConfigured_node_4001" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_4001", align 1
  %"$ud-registry.eConfigured_call_4002" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_3999"(i8* %"$ud-registry.eConfigured_envptr_4000", [32 x i8]* %"$ud-registry.eConfigured_node_4001")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_4002", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_80", align 8
  %"$ud-registry.eConfigured_81" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_80_4003" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_80", align 8
  %"$$ud-registry.eConfigured_80_fptr_4004" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_80_4003", 0
  %"$$ud-registry.eConfigured_80_envptr_4005" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_80_4003", 1
  %"$$ud-registry.eConfigured_80_recordOwner_4006" = alloca [20 x i8], align 1
  %"$recordOwner_4007" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_4007", [20 x i8]* %"$$ud-registry.eConfigured_80_recordOwner_4006", align 1
  %"$$ud-registry.eConfigured_80_call_4008" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_80_fptr_4004"(i8* %"$$ud-registry.eConfigured_80_envptr_4005", [20 x i8]* %"$$ud-registry.eConfigured_80_recordOwner_4006")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_80_call_4008", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_81", align 8
  %"$ud-registry.eConfigured_82" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_81_4009" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_81", align 8
  %"$$ud-registry.eConfigured_81_fptr_4010" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_81_4009", 0
  %"$$ud-registry.eConfigured_81_envptr_4011" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_81_4009", 1
  %"$$ud-registry.eConfigured_81_resolver_4012" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_81_resolver_4012", align 1
  %"$$ud-registry.eConfigured_81_call_4013" = call i8* %"$$ud-registry.eConfigured_81_fptr_4010"(i8* %"$$ud-registry.eConfigured_81_envptr_4011", [20 x i8]* %"$$ud-registry.eConfigured_81_resolver_4012")
  store i8* %"$$ud-registry.eConfigured_81_call_4013", i8** %"$ud-registry.eConfigured_82", align 8
  %"$$ud-registry.eConfigured_82_4014" = load i8*, i8** %"$ud-registry.eConfigured_82", align 8
  store i8* %"$$ud-registry.eConfigured_82_4014", i8** %e, align 8
  %"$e_4015" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_4017" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4015")
  %"$gasrem_4018" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4019" = icmp ugt i64 %"$_literal_cost_call_4017", %"$gasrem_4018"
  br i1 %"$gascmp_4019", label %"$out_of_gas_4020", label %"$have_gas_4021"

"$out_of_gas_4020":                               ; preds = %"$have_gas_3996"
  call void @_out_of_gas()
  br label %"$have_gas_4021"

"$have_gas_4021":                                 ; preds = %"$out_of_gas_4020", %"$have_gas_3996"
  %"$consume_4022" = sub i64 %"$gasrem_4018", %"$_literal_cost_call_4017"
  store i64 %"$consume_4022", i64* @_gasrem, align 8
  %"$execptr_load_4023" = load i8*, i8** @_execptr, align 8
  %"$e_4024" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_4023", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4024")
  br label %"$matchsucc_3950"

"$False_4025":                                    ; preds = %"$have_gas_3948"
  %"$isSenderOAO_4026" = bitcast %TName_Bool* %"$isSenderOAO_3951" to %CName_False*
  %"$gasrem_4027" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4028" = icmp ugt i64 1, %"$gasrem_4027"
  br i1 %"$gascmp_4028", label %"$out_of_gas_4029", label %"$have_gas_4030"

"$out_of_gas_4029":                               ; preds = %"$False_4025"
  call void @_out_of_gas()
  br label %"$have_gas_4030"

"$have_gas_4030":                                 ; preds = %"$out_of_gas_4029", %"$False_4025"
  %"$consume_4031" = sub i64 %"$gasrem_4027", 1
  store i64 %"$consume_4031", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_4032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4033" = icmp ugt i64 1, %"$gasrem_4032"
  br i1 %"$gascmp_4033", label %"$out_of_gas_4034", label %"$have_gas_4035"

"$out_of_gas_4034":                               ; preds = %"$have_gas_4030"
  call void @_out_of_gas()
  br label %"$have_gas_4035"

"$have_gas_4035":                                 ; preds = %"$out_of_gas_4034", %"$have_gas_4030"
  %"$consume_4036" = sub i64 %"$gasrem_4032", 1
  store i64 %"$consume_4036", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_4037" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4038" = icmp ugt i64 1, %"$gasrem_4037"
  br i1 %"$gascmp_4038", label %"$out_of_gas_4039", label %"$have_gas_4040"

"$out_of_gas_4039":                               ; preds = %"$have_gas_4035"
  call void @_out_of_gas()
  br label %"$have_gas_4040"

"$have_gas_4040":                                 ; preds = %"$out_of_gas_4039", %"$have_gas_4035"
  %"$consume_4041" = sub i64 %"$gasrem_4037", 1
  store i64 %"$consume_4041", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_4042", i32 0, i32 0), i32 43 }, %String* %m, align 8
  %"$gasrem_4043" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4044" = icmp ugt i64 1, %"$gasrem_4043"
  br i1 %"$gascmp_4044", label %"$out_of_gas_4045", label %"$have_gas_4046"

"$out_of_gas_4045":                               ; preds = %"$have_gas_4040"
  call void @_out_of_gas()
  br label %"$have_gas_4046"

"$have_gas_4046":                                 ; preds = %"$out_of_gas_4045", %"$have_gas_4040"
  %"$consume_4047" = sub i64 %"$gasrem_4043", 1
  store i64 %"$consume_4047", i64* @_gasrem, align 8
  %"$ud-registry.eError_83" = alloca i8*, align 8
  %"$ud-registry.eError_4048" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_4049" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4048", 0
  %"$ud-registry.eError_envptr_4050" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4048", 1
  %"$m_4051" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_4052" = call i8* %"$ud-registry.eError_fptr_4049"(i8* %"$ud-registry.eError_envptr_4050", %String %"$m_4051")
  store i8* %"$ud-registry.eError_call_4052", i8** %"$ud-registry.eError_83", align 8
  %"$$ud-registry.eError_83_4053" = load i8*, i8** %"$ud-registry.eError_83", align 8
  store i8* %"$$ud-registry.eError_83_4053", i8** %e4, align 8
  %"$e_4054" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_4056" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4054")
  %"$gasrem_4057" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4058" = icmp ugt i64 %"$_literal_cost_call_4056", %"$gasrem_4057"
  br i1 %"$gascmp_4058", label %"$out_of_gas_4059", label %"$have_gas_4060"

"$out_of_gas_4059":                               ; preds = %"$have_gas_4046"
  call void @_out_of_gas()
  br label %"$have_gas_4060"

"$have_gas_4060":                                 ; preds = %"$out_of_gas_4059", %"$have_gas_4046"
  %"$consume_4061" = sub i64 %"$gasrem_4057", %"$_literal_cost_call_4056"
  store i64 %"$consume_4061", i64* @_gasrem, align 8
  %"$execptr_load_4062" = load i8*, i8** @_execptr, align 8
  %"$e_4063" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_4062", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4063")
  br label %"$matchsucc_3950"

"$empty_default_3954":                            ; preds = %"$have_gas_3948"
  br label %"$matchsucc_3950"

"$matchsucc_3950":                                ; preds = %"$have_gas_4060", %"$have_gas_4021", %"$empty_default_3954"
  ret void
}

define void @configureResolver(i8* %0) {
entry:
  %"$_amount_4065" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4066" = bitcast i8* %"$_amount_4065" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4066", align 8
  %"$_origin_4067" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4068" = bitcast i8* %"$_origin_4067" to [20 x i8]*
  %"$_sender_4069" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4070" = bitcast i8* %"$_sender_4069" to [20 x i8]*
  %"$node_4071" = getelementptr i8, i8* %0, i32 56
  %"$node_4072" = bitcast i8* %"$node_4071" to [32 x i8]*
  %"$resolver_4073" = getelementptr i8, i8* %0, i32 88
  %"$resolver_4074" = bitcast i8* %"$resolver_4073" to [20 x i8]*
  call void @"$configureResolver_3842"(%Uint128 %_amount, [20 x i8]* %"$_origin_4068", [20 x i8]* %"$_sender_4070", [32 x i8]* %"$node_4072", [20 x i8]* %"$resolver_4074")
  ret void
}

define internal void @"$transfer_4075"(%Uint128 %_amount, [20 x i8]* %"$_origin_4076", [20 x i8]* %"$_sender_4077", [32 x i8]* %"$node_4078", [20 x i8]* %"$owner_4079") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4076", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4077", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_4078", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_4079", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_4080_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4080_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4080_salloc_load", i64 32)
  %"$indices_buf_4080_salloc" = bitcast i8* %"$indices_buf_4080_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4080" = bitcast [32 x i8]* %"$indices_buf_4080_salloc" to i8*
  %"$indices_gep_4081" = getelementptr i8, i8* %"$indices_buf_4080", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4081" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4083" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_4084" = call i8* @_fetch_field(i8* %"$execptr_load_4083", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4082", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4080", i32 1)
  %"$maybeRecord_4085" = bitcast i8* %"$maybeRecord_call_4084" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4085", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_4086" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_4086_4087" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4086" to i8*
  %"$_literal_cost_call_4088" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_4086_4087")
  %"$gasadd_4089" = add i64 %"$_literal_cost_call_4088", 0
  %"$gasadd_4090" = add i64 %"$gasadd_4089", 1
  %"$gasrem_4091" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4092" = icmp ugt i64 %"$gasadd_4090", %"$gasrem_4091"
  br i1 %"$gascmp_4092", label %"$out_of_gas_4093", label %"$have_gas_4094"

"$out_of_gas_4093":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4094"

"$have_gas_4094":                                 ; preds = %"$out_of_gas_4093", %entry
  %"$consume_4095" = sub i64 %"$gasrem_4091", %"$gasadd_4090"
  store i64 %"$consume_4095", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_4096_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4096_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4096_salloc_load", i64 32)
  %"$indices_buf_4096_salloc" = bitcast i8* %"$indices_buf_4096_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4096" = bitcast [32 x i8]* %"$indices_buf_4096_salloc" to i8*
  %"$indices_gep_4097" = getelementptr i8, i8* %"$indices_buf_4096", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4097" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4099" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_4100" = call i8* @_fetch_field(i8* %"$execptr_load_4099", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4098", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_4096", i32 1)
  %"$maybeApproved_4101" = bitcast i8* %"$maybeApproved_call_4100" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_4101", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_4102" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_4102_4103" = bitcast %TName_Option_ByStr20* %"$maybeApproved_4102" to i8*
  %"$_literal_cost_call_4104" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_4102_4103")
  %"$gasadd_4105" = add i64 %"$_literal_cost_call_4104", 0
  %"$gasadd_4106" = add i64 %"$gasadd_4105", 1
  %"$gasrem_4107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4108" = icmp ugt i64 %"$gasadd_4106", %"$gasrem_4107"
  br i1 %"$gascmp_4108", label %"$out_of_gas_4109", label %"$have_gas_4110"

"$out_of_gas_4109":                               ; preds = %"$have_gas_4094"
  call void @_out_of_gas()
  br label %"$have_gas_4110"

"$have_gas_4110":                                 ; preds = %"$out_of_gas_4109", %"$have_gas_4094"
  %"$consume_4111" = sub i64 %"$gasrem_4107", %"$gasadd_4106"
  store i64 %"$consume_4111", i64* @_gasrem, align 8
  %"$gasrem_4112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4113" = icmp ugt i64 1, %"$gasrem_4112"
  br i1 %"$gascmp_4113", label %"$out_of_gas_4114", label %"$have_gas_4115"

"$out_of_gas_4114":                               ; preds = %"$have_gas_4110"
  call void @_out_of_gas()
  br label %"$have_gas_4115"

"$have_gas_4115":                                 ; preds = %"$out_of_gas_4114", %"$have_gas_4110"
  %"$consume_4116" = sub i64 %"$gasrem_4112", 1
  store i64 %"$consume_4116", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_4117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4118" = icmp ugt i64 1, %"$gasrem_4117"
  br i1 %"$gascmp_4118", label %"$out_of_gas_4119", label %"$have_gas_4120"

"$out_of_gas_4119":                               ; preds = %"$have_gas_4115"
  call void @_out_of_gas()
  br label %"$have_gas_4120"

"$have_gas_4120":                                 ; preds = %"$out_of_gas_4119", %"$have_gas_4115"
  %"$consume_4121" = sub i64 %"$gasrem_4117", 1
  store i64 %"$consume_4121", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_99" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_4122" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_4123" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4122", 0
  %"$ud-registry.recordMemberOwner_envptr_4124" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4122", 1
  %"$maybeRecord_4125" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_4126" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_4123"(i8* %"$ud-registry.recordMemberOwner_envptr_4124", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4126", %TName_Option_ud-registry.Record* %"$maybeRecord_4125")
  %"$ud-registry.recordMemberOwner_ret_4127" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4126", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_4127", [20 x i8]* %"$ud-registry.recordMemberOwner_99", align 1
  %"$$ud-registry.recordMemberOwner_99_4128" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_99", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_99_4128", [20 x i8]* %recordOwner, align 1
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_4129_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4129_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4129_salloc_load", i64 20)
  %"$indices_buf_4129_salloc" = bitcast i8* %"$indices_buf_4129_salloc_salloc" to [20 x i8]*
  %"$indices_buf_4129" = bitcast [20 x i8]* %"$indices_buf_4129_salloc" to i8*
  %"$recordOwner_4130" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_4131" = getelementptr i8, i8* %"$indices_buf_4129", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4131" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4130", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_4133" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_4134" = call i8* @_fetch_field(i8* %"$execptr_load_4133", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_4132", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_4129", i32 1)
  %"$maybeOperators_4135" = bitcast i8* %"$maybeOperators_call_4134" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4135", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_4136" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_4136_4137" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4136" to i8*
  %"$_literal_cost_call_4138" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", i8* %"$$maybeOperators_4136_4137")
  %"$gasadd_4139" = add i64 %"$_literal_cost_call_4138", 0
  %"$gasadd_4140" = add i64 %"$gasadd_4139", 1
  %"$gasrem_4141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4142" = icmp ugt i64 %"$gasadd_4140", %"$gasrem_4141"
  br i1 %"$gascmp_4142", label %"$out_of_gas_4143", label %"$have_gas_4144"

"$out_of_gas_4143":                               ; preds = %"$have_gas_4120"
  call void @_out_of_gas()
  br label %"$have_gas_4144"

"$have_gas_4144":                                 ; preds = %"$out_of_gas_4143", %"$have_gas_4120"
  %"$consume_4145" = sub i64 %"$gasrem_4141", %"$gasadd_4140"
  store i64 %"$consume_4145", i64* @_gasrem, align 8
  %"$gasrem_4146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4147" = icmp ugt i64 1, %"$gasrem_4146"
  br i1 %"$gascmp_4147", label %"$out_of_gas_4148", label %"$have_gas_4149"

"$out_of_gas_4148":                               ; preds = %"$have_gas_4144"
  call void @_out_of_gas()
  br label %"$have_gas_4149"

"$have_gas_4149":                                 ; preds = %"$out_of_gas_4148", %"$have_gas_4144"
  %"$consume_4150" = sub i64 %"$gasrem_4146", 1
  store i64 %"$consume_4150", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_4151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4152" = icmp ugt i64 1, %"$gasrem_4151"
  br i1 %"$gascmp_4152", label %"$out_of_gas_4153", label %"$have_gas_4154"

"$out_of_gas_4153":                               ; preds = %"$have_gas_4149"
  call void @_out_of_gas()
  br label %"$have_gas_4154"

"$have_gas_4154":                                 ; preds = %"$out_of_gas_4153", %"$have_gas_4149"
  %"$consume_4155" = sub i64 %"$gasrem_4151", 1
  store i64 %"$consume_4155", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_95" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_4156" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_4157" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4156", 0
  %"$ud-registry.getIsOAO_envptr_4158" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4156", 1
  %"$ud-registry.getIsOAO__sender_4159" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_4159", align 1
  %"$ud-registry.getIsOAO_call_4160" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_4157"(i8* %"$ud-registry.getIsOAO_envptr_4158", [20 x i8]* %"$ud-registry.getIsOAO__sender_4159")
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_4160", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_95", align 8
  %"$ud-registry.getIsOAO_96" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_95_4161" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_95", align 8
  %"$$ud-registry.getIsOAO_95_fptr_4162" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_95_4161", 0
  %"$$ud-registry.getIsOAO_95_envptr_4163" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_95_4161", 1
  %"$$ud-registry.getIsOAO_95_recordOwner_4164" = alloca [20 x i8], align 1
  %"$recordOwner_4165" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_4165", [20 x i8]* %"$$ud-registry.getIsOAO_95_recordOwner_4164", align 1
  %"$$ud-registry.getIsOAO_95_call_4166" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_95_fptr_4162"(i8* %"$$ud-registry.getIsOAO_95_envptr_4163", [20 x i8]* %"$$ud-registry.getIsOAO_95_recordOwner_4164")
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_95_call_4166", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_96", align 8
  %"$ud-registry.getIsOAO_97" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_96_4167" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_96", align 8
  %"$$ud-registry.getIsOAO_96_fptr_4168" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_96_4167", 0
  %"$$ud-registry.getIsOAO_96_envptr_4169" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_96_4167", 1
  %"$maybeApproved_4170" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_96_call_4171" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_96_fptr_4168"(i8* %"$$ud-registry.getIsOAO_96_envptr_4169", %TName_Option_ByStr20* %"$maybeApproved_4170")
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_96_call_4171", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_97", align 8
  %"$ud-registry.getIsOAO_98" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_97_4172" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_97", align 8
  %"$$ud-registry.getIsOAO_97_fptr_4173" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_97_4172", 0
  %"$$ud-registry.getIsOAO_97_envptr_4174" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_97_4172", 1
  %"$maybeOperators_4175" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_97_call_4176" = call %TName_Bool* %"$$ud-registry.getIsOAO_97_fptr_4173"(i8* %"$$ud-registry.getIsOAO_97_envptr_4174", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4175")
  store %TName_Bool* %"$$ud-registry.getIsOAO_97_call_4176", %TName_Bool** %"$ud-registry.getIsOAO_98", align 8
  %"$$ud-registry.getIsOAO_98_4177" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_98", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_98_4177", %TName_Bool** %isSenderOAO, align 8
  %"$gasrem_4178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4179" = icmp ugt i64 2, %"$gasrem_4178"
  br i1 %"$gascmp_4179", label %"$out_of_gas_4180", label %"$have_gas_4181"

"$out_of_gas_4180":                               ; preds = %"$have_gas_4154"
  call void @_out_of_gas()
  br label %"$have_gas_4181"

"$have_gas_4181":                                 ; preds = %"$out_of_gas_4180", %"$have_gas_4154"
  %"$consume_4182" = sub i64 %"$gasrem_4178", 2
  store i64 %"$consume_4182", i64* @_gasrem, align 8
  %"$isSenderOAO_4184" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_4185" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_4184", i32 0, i32 0
  %"$isSenderOAO_tag_4186" = load i8, i8* %"$isSenderOAO_tag_4185", align 1
  switch i8 %"$isSenderOAO_tag_4186", label %"$empty_default_4187" [
    i8 0, label %"$True_4188"
    i8 1, label %"$False_4341"
  ]

"$True_4188":                                     ; preds = %"$have_gas_4181"
  %"$isSenderOAO_4189" = bitcast %TName_Bool* %"$isSenderOAO_4184" to %CName_True*
  %"$gasrem_4190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4191" = icmp ugt i64 1, %"$gasrem_4190"
  br i1 %"$gascmp_4191", label %"$out_of_gas_4192", label %"$have_gas_4193"

"$out_of_gas_4192":                               ; preds = %"$True_4188"
  call void @_out_of_gas()
  br label %"$have_gas_4193"

"$have_gas_4193":                                 ; preds = %"$out_of_gas_4192", %"$True_4188"
  %"$consume_4194" = sub i64 %"$gasrem_4190", 1
  store i64 %"$consume_4194", i64* @_gasrem, align 8
  %"$indices_buf_4195_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4195_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4195_salloc_load", i64 32)
  %"$indices_buf_4195_salloc" = bitcast i8* %"$indices_buf_4195_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4195" = bitcast [32 x i8]* %"$indices_buf_4195_salloc" to i8*
  %"$indices_gep_4196" = getelementptr i8, i8* %"$indices_buf_4195", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_4196" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_4197" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4197", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4198", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_4195", i8* null)
  %"$gasrem_4199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4200" = icmp ugt i64 1, %"$gasrem_4199"
  br i1 %"$gascmp_4200", label %"$out_of_gas_4201", label %"$have_gas_4202"

"$out_of_gas_4201":                               ; preds = %"$have_gas_4193"
  call void @_out_of_gas()
  br label %"$have_gas_4202"

"$have_gas_4202":                                 ; preds = %"$out_of_gas_4201", %"$have_gas_4193"
  %"$consume_4203" = sub i64 %"$gasrem_4199", 1
  store i64 %"$consume_4203", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_4204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4205" = icmp ugt i64 1, %"$gasrem_4204"
  br i1 %"$gascmp_4205", label %"$out_of_gas_4206", label %"$have_gas_4207"

"$out_of_gas_4206":                               ; preds = %"$have_gas_4202"
  call void @_out_of_gas()
  br label %"$have_gas_4207"

"$have_gas_4207":                                 ; preds = %"$out_of_gas_4206", %"$have_gas_4202"
  %"$consume_4208" = sub i64 %"$gasrem_4204", 1
  store i64 %"$consume_4208", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_4209" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_4210_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4210_salloc" = call i8* @_salloc(i8* %"$adtval_4210_load", i64 41)
  %"$adtval_4210" = bitcast i8* %"$adtval_4210_salloc" to %CName_ud-registry.Record*
  %"$adtgep_4211" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4210", i32 0, i32 0
  store i8 0, i8* %"$adtgep_4211", align 1
  %"$adtgep_4212" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4210", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_4212", align 1
  %"$adtgep_4213" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4210", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_4209", [20 x i8]* %"$adtgep_4213", align 1
  %"$adtptr_4214" = bitcast %CName_ud-registry.Record* %"$adtval_4210" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_4214", %TName_ud-registry.Record** %newRecord, align 8
  %"$newRecord_4215" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_4215_4216" = bitcast %TName_ud-registry.Record* %"$newRecord_4215" to i8*
  %"$_literal_cost_call_4217" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", i8* %"$$newRecord_4215_4216")
  %"$gasadd_4218" = add i64 %"$_literal_cost_call_4217", 1
  %"$gasrem_4219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4220" = icmp ugt i64 %"$gasadd_4218", %"$gasrem_4219"
  br i1 %"$gascmp_4220", label %"$out_of_gas_4221", label %"$have_gas_4222"

"$out_of_gas_4221":                               ; preds = %"$have_gas_4207"
  call void @_out_of_gas()
  br label %"$have_gas_4222"

"$have_gas_4222":                                 ; preds = %"$out_of_gas_4221", %"$have_gas_4207"
  %"$consume_4223" = sub i64 %"$gasrem_4219", %"$gasadd_4218"
  store i64 %"$consume_4223", i64* @_gasrem, align 8
  %"$indices_buf_4224_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4224_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4224_salloc_load", i64 32)
  %"$indices_buf_4224_salloc" = bitcast i8* %"$indices_buf_4224_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4224" = bitcast [32 x i8]* %"$indices_buf_4224_salloc" to i8*
  %"$indices_gep_4225" = getelementptr i8, i8* %"$indices_buf_4224", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4225" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast4, align 1
  %"$execptr_load_4226" = load i8*, i8** @_execptr, align 8
  %"$newRecord_4228" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_4229" = bitcast %TName_ud-registry.Record* %"$newRecord_4228" to i8*
  call void @_update_field(i8* %"$execptr_load_4226", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4227", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4224", i8* %"$update_value_4229")
  %"$gasrem_4230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4231" = icmp ugt i64 1, %"$gasrem_4230"
  br i1 %"$gascmp_4231", label %"$out_of_gas_4232", label %"$have_gas_4233"

"$out_of_gas_4232":                               ; preds = %"$have_gas_4222"
  call void @_out_of_gas()
  br label %"$have_gas_4233"

"$have_gas_4233":                                 ; preds = %"$out_of_gas_4232", %"$have_gas_4222"
  %"$consume_4234" = sub i64 %"$gasrem_4230", 1
  store i64 %"$consume_4234", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_4235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4236" = icmp ugt i64 1, %"$gasrem_4235"
  br i1 %"$gascmp_4236", label %"$out_of_gas_4237", label %"$have_gas_4238"

"$out_of_gas_4237":                               ; preds = %"$have_gas_4233"
  call void @_out_of_gas()
  br label %"$have_gas_4238"

"$have_gas_4238":                                 ; preds = %"$out_of_gas_4237", %"$have_gas_4233"
  %"$consume_4239" = sub i64 %"$gasrem_4235", 1
  store i64 %"$consume_4239", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_90" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_4240" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_4241" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4240", 0
  %"$ud-registry.eConfigured_envptr_4242" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4240", 1
  %"$ud-registry.eConfigured_node_4243" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_4243", align 1
  %"$ud-registry.eConfigured_call_4244" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_4241"(i8* %"$ud-registry.eConfigured_envptr_4242", [32 x i8]* %"$ud-registry.eConfigured_node_4243")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_4244", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_90", align 8
  %"$ud-registry.eConfigured_91" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_90_4245" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_90", align 8
  %"$$ud-registry.eConfigured_90_fptr_4246" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_90_4245", 0
  %"$$ud-registry.eConfigured_90_envptr_4247" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_90_4245", 1
  %"$$ud-registry.eConfigured_90_owner_4248" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_90_owner_4248", align 1
  %"$$ud-registry.eConfigured_90_call_4249" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_90_fptr_4246"(i8* %"$$ud-registry.eConfigured_90_envptr_4247", [20 x i8]* %"$$ud-registry.eConfigured_90_owner_4248")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_90_call_4249", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_91", align 8
  %"$ud-registry.eConfigured_92" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_91_4250" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_91", align 8
  %"$$ud-registry.eConfigured_91_fptr_4251" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_91_4250", 0
  %"$$ud-registry.eConfigured_91_envptr_4252" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_91_4250", 1
  %"$$ud-registry.eConfigured_91_ud-registry.zeroByStr20_4253" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_4254" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_4254", [20 x i8]* %"$$ud-registry.eConfigured_91_ud-registry.zeroByStr20_4253", align 1
  %"$$ud-registry.eConfigured_91_call_4255" = call i8* %"$$ud-registry.eConfigured_91_fptr_4251"(i8* %"$$ud-registry.eConfigured_91_envptr_4252", [20 x i8]* %"$$ud-registry.eConfigured_91_ud-registry.zeroByStr20_4253")
  store i8* %"$$ud-registry.eConfigured_91_call_4255", i8** %"$ud-registry.eConfigured_92", align 8
  %"$$ud-registry.eConfigured_92_4256" = load i8*, i8** %"$ud-registry.eConfigured_92", align 8
  store i8* %"$$ud-registry.eConfigured_92_4256", i8** %e, align 8
  %"$e_4257" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_4259" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4257")
  %"$gasrem_4260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4261" = icmp ugt i64 %"$_literal_cost_call_4259", %"$gasrem_4260"
  br i1 %"$gascmp_4261", label %"$out_of_gas_4262", label %"$have_gas_4263"

"$out_of_gas_4262":                               ; preds = %"$have_gas_4238"
  call void @_out_of_gas()
  br label %"$have_gas_4263"

"$have_gas_4263":                                 ; preds = %"$out_of_gas_4262", %"$have_gas_4238"
  %"$consume_4264" = sub i64 %"$gasrem_4260", %"$_literal_cost_call_4259"
  store i64 %"$consume_4264", i64* @_gasrem, align 8
  %"$execptr_load_4265" = load i8*, i8** @_execptr, align 8
  %"$e_4266" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_4265", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4266")
  %"$gasrem_4267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4268" = icmp ugt i64 1, %"$gasrem_4267"
  br i1 %"$gascmp_4268", label %"$out_of_gas_4269", label %"$have_gas_4270"

"$out_of_gas_4269":                               ; preds = %"$have_gas_4263"
  call void @_out_of_gas()
  br label %"$have_gas_4270"

"$have_gas_4270":                                 ; preds = %"$out_of_gas_4269", %"$have_gas_4263"
  %"$consume_4271" = sub i64 %"$gasrem_4267", 1
  store i64 %"$consume_4271", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_4272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4273" = icmp ugt i64 1, %"$gasrem_4272"
  br i1 %"$gascmp_4273", label %"$out_of_gas_4274", label %"$have_gas_4275"

"$out_of_gas_4274":                               ; preds = %"$have_gas_4270"
  call void @_out_of_gas()
  br label %"$have_gas_4275"

"$have_gas_4275":                                 ; preds = %"$out_of_gas_4274", %"$have_gas_4270"
  %"$consume_4276" = sub i64 %"$gasrem_4272", 1
  store i64 %"$consume_4276", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_4277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4278" = icmp ugt i64 1, %"$gasrem_4277"
  br i1 %"$gascmp_4278", label %"$out_of_gas_4279", label %"$have_gas_4280"

"$out_of_gas_4279":                               ; preds = %"$have_gas_4275"
  call void @_out_of_gas()
  br label %"$have_gas_4280"

"$have_gas_4280":                                 ; preds = %"$out_of_gas_4279", %"$have_gas_4275"
  %"$consume_4281" = sub i64 %"$gasrem_4277", 1
  store i64 %"$consume_4281", i64* @_gasrem, align 8
  %"$msgobj_4282_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4282_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4282_salloc_load", i64 225)
  %"$msgobj_4282_salloc" = bitcast i8* %"$msgobj_4282_salloc_salloc" to [225 x i8]*
  %"$msgobj_4282" = bitcast [225 x i8]* %"$msgobj_4282_salloc" to i8*
  store i8 5, i8* %"$msgobj_4282", align 1
  %"$msgobj_fname_4284" = getelementptr i8, i8* %"$msgobj_4282", i32 1
  %"$msgobj_fname_4285" = bitcast i8* %"$msgobj_fname_4284" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4283", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4285", align 8
  %"$msgobj_td_4286" = getelementptr i8, i8* %"$msgobj_4282", i32 17
  %"$msgobj_td_4287" = bitcast i8* %"$msgobj_td_4286" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4287", align 8
  %"$msgobj_v_4289" = getelementptr i8, i8* %"$msgobj_4282", i32 25
  %"$msgobj_v_4290" = bitcast i8* %"$msgobj_v_4289" to %String*
  store %String { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$stringlit_4288", i32 0, i32 0), i32 17 }, %String* %"$msgobj_v_4290", align 8
  %"$msgobj_fname_4292" = getelementptr i8, i8* %"$msgobj_4282", i32 41
  %"$msgobj_fname_4293" = bitcast i8* %"$msgobj_fname_4292" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4291", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4293", align 8
  %"$msgobj_td_4294" = getelementptr i8, i8* %"$msgobj_4282", i32 57
  %"$msgobj_td_4295" = bitcast i8* %"$msgobj_td_4294" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_4295", align 8
  %"$msgobj_v_4296" = getelementptr i8, i8* %"$msgobj_4282", i32 65
  %"$msgobj_v_4297" = bitcast i8* %"$msgobj_v_4296" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_4297", align 1
  %"$msgobj_fname_4299" = getelementptr i8, i8* %"$msgobj_4282", i32 97
  %"$msgobj_fname_4300" = bitcast i8* %"$msgobj_fname_4299" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4298", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4300", align 8
  %"$msgobj_td_4301" = getelementptr i8, i8* %"$msgobj_4282", i32 113
  %"$msgobj_td_4302" = bitcast i8* %"$msgobj_td_4301" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4302", align 8
  %"$msgobj_v_4303" = getelementptr i8, i8* %"$msgobj_4282", i32 121
  %"$msgobj_v_4304" = bitcast i8* %"$msgobj_v_4303" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4304", align 1
  %"$msgobj_fname_4306" = getelementptr i8, i8* %"$msgobj_4282", i32 141
  %"$msgobj_fname_4307" = bitcast i8* %"$msgobj_fname_4306" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4305", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4307", align 8
  %"$msgobj_td_4308" = getelementptr i8, i8* %"$msgobj_4282", i32 157
  %"$msgobj_td_4309" = bitcast i8* %"$msgobj_td_4308" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_4309", align 8
  %"$msgobj_v_4310" = getelementptr i8, i8* %"$msgobj_4282", i32 165
  %"$msgobj_v_4311" = bitcast i8* %"$msgobj_v_4310" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4311", align 8
  %"$msgobj_fname_4313" = getelementptr i8, i8* %"$msgobj_4282", i32 181
  %"$msgobj_fname_4314" = bitcast i8* %"$msgobj_fname_4313" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4312", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4314", align 8
  %"$msgobj_td_4315" = getelementptr i8, i8* %"$msgobj_4282", i32 197
  %"$msgobj_td_4316" = bitcast i8* %"$msgobj_td_4315" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4316", align 8
  %"$msgobj_v_4317" = getelementptr i8, i8* %"$msgobj_4282", i32 205
  %"$msgobj_v_4318" = bitcast i8* %"$msgobj_v_4317" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4318", align 1
  store i8* %"$msgobj_4282", i8** %m, align 8
  %"$gasrem_4320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4321" = icmp ugt i64 1, %"$gasrem_4320"
  br i1 %"$gascmp_4321", label %"$out_of_gas_4322", label %"$have_gas_4323"

"$out_of_gas_4322":                               ; preds = %"$have_gas_4280"
  call void @_out_of_gas()
  br label %"$have_gas_4323"

"$have_gas_4323":                                 ; preds = %"$out_of_gas_4322", %"$have_gas_4280"
  %"$consume_4324" = sub i64 %"$gasrem_4320", 1
  store i64 %"$consume_4324", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_89" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4325" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4326" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4325", 0
  %"$ud-registry.oneMsg_envptr_4327" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4325", 1
  %"$m_4328" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_4329" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4326"(i8* %"$ud-registry.oneMsg_envptr_4327", i8* %"$m_4328")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4329", %TName_List_Message** %"$ud-registry.oneMsg_89", align 8
  %"$$ud-registry.oneMsg_89_4330" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_89", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_89_4330", %TName_List_Message** %msgs, align 8
  %"$msgs_4331" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_4331_4332" = bitcast %TName_List_Message* %"$msgs_4331" to i8*
  %"$_literal_cost_call_4333" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_4331_4332")
  %"$gasrem_4334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4335" = icmp ugt i64 %"$_literal_cost_call_4333", %"$gasrem_4334"
  br i1 %"$gascmp_4335", label %"$out_of_gas_4336", label %"$have_gas_4337"

"$out_of_gas_4336":                               ; preds = %"$have_gas_4323"
  call void @_out_of_gas()
  br label %"$have_gas_4337"

"$have_gas_4337":                                 ; preds = %"$out_of_gas_4336", %"$have_gas_4323"
  %"$consume_4338" = sub i64 %"$gasrem_4334", %"$_literal_cost_call_4333"
  store i64 %"$consume_4338", i64* @_gasrem, align 8
  %"$execptr_load_4339" = load i8*, i8** @_execptr, align 8
  %"$msgs_4340" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_4339", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_4340")
  br label %"$matchsucc_4183"

"$False_4341":                                    ; preds = %"$have_gas_4181"
  %"$isSenderOAO_4342" = bitcast %TName_Bool* %"$isSenderOAO_4184" to %CName_False*
  %"$gasrem_4343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4344" = icmp ugt i64 1, %"$gasrem_4343"
  br i1 %"$gascmp_4344", label %"$out_of_gas_4345", label %"$have_gas_4346"

"$out_of_gas_4345":                               ; preds = %"$False_4341"
  call void @_out_of_gas()
  br label %"$have_gas_4346"

"$have_gas_4346":                                 ; preds = %"$out_of_gas_4345", %"$False_4341"
  %"$consume_4347" = sub i64 %"$gasrem_4343", 1
  store i64 %"$consume_4347", i64* @_gasrem, align 8
  %e5 = alloca i8*, align 8
  %"$gasrem_4348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4349" = icmp ugt i64 1, %"$gasrem_4348"
  br i1 %"$gascmp_4349", label %"$out_of_gas_4350", label %"$have_gas_4351"

"$out_of_gas_4350":                               ; preds = %"$have_gas_4346"
  call void @_out_of_gas()
  br label %"$have_gas_4351"

"$have_gas_4351":                                 ; preds = %"$out_of_gas_4350", %"$have_gas_4346"
  %"$consume_4352" = sub i64 %"$gasrem_4348", 1
  store i64 %"$consume_4352", i64* @_gasrem, align 8
  %m6 = alloca %String, align 8
  %"$gasrem_4353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4354" = icmp ugt i64 1, %"$gasrem_4353"
  br i1 %"$gascmp_4354", label %"$out_of_gas_4355", label %"$have_gas_4356"

"$out_of_gas_4355":                               ; preds = %"$have_gas_4351"
  call void @_out_of_gas()
  br label %"$have_gas_4356"

"$have_gas_4356":                                 ; preds = %"$out_of_gas_4355", %"$have_gas_4351"
  %"$consume_4357" = sub i64 %"$gasrem_4353", 1
  store i64 %"$consume_4357", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_4358", i32 0, i32 0), i32 43 }, %String* %m6, align 8
  %"$gasrem_4359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4360" = icmp ugt i64 1, %"$gasrem_4359"
  br i1 %"$gascmp_4360", label %"$out_of_gas_4361", label %"$have_gas_4362"

"$out_of_gas_4361":                               ; preds = %"$have_gas_4356"
  call void @_out_of_gas()
  br label %"$have_gas_4362"

"$have_gas_4362":                                 ; preds = %"$out_of_gas_4361", %"$have_gas_4356"
  %"$consume_4363" = sub i64 %"$gasrem_4359", 1
  store i64 %"$consume_4363", i64* @_gasrem, align 8
  %"$ud-registry.eError_94" = alloca i8*, align 8
  %"$ud-registry.eError_4364" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_4365" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4364", 0
  %"$ud-registry.eError_envptr_4366" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4364", 1
  %"$m_4367" = load %String, %String* %m6, align 8
  %"$ud-registry.eError_call_4368" = call i8* %"$ud-registry.eError_fptr_4365"(i8* %"$ud-registry.eError_envptr_4366", %String %"$m_4367")
  store i8* %"$ud-registry.eError_call_4368", i8** %"$ud-registry.eError_94", align 8
  %"$$ud-registry.eError_94_4369" = load i8*, i8** %"$ud-registry.eError_94", align 8
  store i8* %"$$ud-registry.eError_94_4369", i8** %e5, align 8
  %"$e_4370" = load i8*, i8** %e5, align 8
  %"$_literal_cost_call_4372" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4370")
  %"$gasrem_4373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4374" = icmp ugt i64 %"$_literal_cost_call_4372", %"$gasrem_4373"
  br i1 %"$gascmp_4374", label %"$out_of_gas_4375", label %"$have_gas_4376"

"$out_of_gas_4375":                               ; preds = %"$have_gas_4362"
  call void @_out_of_gas()
  br label %"$have_gas_4376"

"$have_gas_4376":                                 ; preds = %"$out_of_gas_4375", %"$have_gas_4362"
  %"$consume_4377" = sub i64 %"$gasrem_4373", %"$_literal_cost_call_4372"
  store i64 %"$consume_4377", i64* @_gasrem, align 8
  %"$execptr_load_4378" = load i8*, i8** @_execptr, align 8
  %"$e_4379" = load i8*, i8** %e5, align 8
  call void @_event(i8* %"$execptr_load_4378", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4379")
  %"$gasrem_4380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4381" = icmp ugt i64 1, %"$gasrem_4380"
  br i1 %"$gascmp_4381", label %"$out_of_gas_4382", label %"$have_gas_4383"

"$out_of_gas_4382":                               ; preds = %"$have_gas_4376"
  call void @_out_of_gas()
  br label %"$have_gas_4383"

"$have_gas_4383":                                 ; preds = %"$out_of_gas_4382", %"$have_gas_4376"
  %"$consume_4384" = sub i64 %"$gasrem_4380", 1
  store i64 %"$consume_4384", i64* @_gasrem, align 8
  %msgs7 = alloca %TName_List_Message*, align 8
  %"$gasrem_4385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4386" = icmp ugt i64 1, %"$gasrem_4385"
  br i1 %"$gascmp_4386", label %"$out_of_gas_4387", label %"$have_gas_4388"

"$out_of_gas_4387":                               ; preds = %"$have_gas_4383"
  call void @_out_of_gas()
  br label %"$have_gas_4388"

"$have_gas_4388":                                 ; preds = %"$out_of_gas_4387", %"$have_gas_4383"
  %"$consume_4389" = sub i64 %"$gasrem_4385", 1
  store i64 %"$consume_4389", i64* @_gasrem, align 8
  %"$m_1" = alloca i8*, align 8
  %"$gasrem_4390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4391" = icmp ugt i64 1, %"$gasrem_4390"
  br i1 %"$gascmp_4391", label %"$out_of_gas_4392", label %"$have_gas_4393"

"$out_of_gas_4392":                               ; preds = %"$have_gas_4388"
  call void @_out_of_gas()
  br label %"$have_gas_4393"

"$have_gas_4393":                                 ; preds = %"$out_of_gas_4392", %"$have_gas_4388"
  %"$consume_4394" = sub i64 %"$gasrem_4390", 1
  store i64 %"$consume_4394", i64* @_gasrem, align 8
  %"$msgobj_4395_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4395_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4395_salloc_load", i64 225)
  %"$msgobj_4395_salloc" = bitcast i8* %"$msgobj_4395_salloc_salloc" to [225 x i8]*
  %"$msgobj_4395" = bitcast [225 x i8]* %"$msgobj_4395_salloc" to i8*
  store i8 5, i8* %"$msgobj_4395", align 1
  %"$msgobj_fname_4397" = getelementptr i8, i8* %"$msgobj_4395", i32 1
  %"$msgobj_fname_4398" = bitcast i8* %"$msgobj_fname_4397" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4396", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4398", align 8
  %"$msgobj_td_4399" = getelementptr i8, i8* %"$msgobj_4395", i32 17
  %"$msgobj_td_4400" = bitcast i8* %"$msgobj_td_4399" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4400", align 8
  %"$msgobj_v_4402" = getelementptr i8, i8* %"$msgobj_4395", i32 25
  %"$msgobj_v_4403" = bitcast i8* %"$msgobj_v_4402" to %String*
  store %String { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$stringlit_4401", i32 0, i32 0), i32 17 }, %String* %"$msgobj_v_4403", align 8
  %"$msgobj_fname_4405" = getelementptr i8, i8* %"$msgobj_4395", i32 41
  %"$msgobj_fname_4406" = bitcast i8* %"$msgobj_fname_4405" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4404", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4406", align 8
  %"$msgobj_td_4407" = getelementptr i8, i8* %"$msgobj_4395", i32 57
  %"$msgobj_td_4408" = bitcast i8* %"$msgobj_td_4407" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_4408", align 8
  %"$msgobj_v_4409" = getelementptr i8, i8* %"$msgobj_4395", i32 65
  %"$msgobj_v_4410" = bitcast i8* %"$msgobj_v_4409" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_4410", align 1
  %"$msgobj_fname_4412" = getelementptr i8, i8* %"$msgobj_4395", i32 97
  %"$msgobj_fname_4413" = bitcast i8* %"$msgobj_fname_4412" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4411", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4413", align 8
  %"$msgobj_td_4414" = getelementptr i8, i8* %"$msgobj_4395", i32 113
  %"$msgobj_td_4415" = bitcast i8* %"$msgobj_td_4414" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4415", align 8
  %"$msgobj_v_4416" = getelementptr i8, i8* %"$msgobj_4395", i32 121
  %"$msgobj_v_4417" = bitcast i8* %"$msgobj_v_4416" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4417", align 1
  %"$msgobj_fname_4419" = getelementptr i8, i8* %"$msgobj_4395", i32 141
  %"$msgobj_fname_4420" = bitcast i8* %"$msgobj_fname_4419" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4418", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4420", align 8
  %"$msgobj_td_4421" = getelementptr i8, i8* %"$msgobj_4395", i32 157
  %"$msgobj_td_4422" = bitcast i8* %"$msgobj_td_4421" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_4422", align 8
  %"$msgobj_v_4423" = getelementptr i8, i8* %"$msgobj_4395", i32 165
  %"$msgobj_v_4424" = bitcast i8* %"$msgobj_v_4423" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4424", align 8
  %"$msgobj_fname_4426" = getelementptr i8, i8* %"$msgobj_4395", i32 181
  %"$msgobj_fname_4427" = bitcast i8* %"$msgobj_fname_4426" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4425", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4427", align 8
  %"$msgobj_td_4428" = getelementptr i8, i8* %"$msgobj_4395", i32 197
  %"$msgobj_td_4429" = bitcast i8* %"$msgobj_td_4428" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4429", align 8
  %"$msgobj_v_4430" = getelementptr i8, i8* %"$msgobj_4395", i32 205
  %"$msgobj_v_4431" = bitcast i8* %"$msgobj_v_4430" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4431", align 1
  store i8* %"$msgobj_4395", i8** %"$m_1", align 8
  %"$gasrem_4433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4434" = icmp ugt i64 1, %"$gasrem_4433"
  br i1 %"$gascmp_4434", label %"$out_of_gas_4435", label %"$have_gas_4436"

"$out_of_gas_4435":                               ; preds = %"$have_gas_4393"
  call void @_out_of_gas()
  br label %"$have_gas_4436"

"$have_gas_4436":                                 ; preds = %"$out_of_gas_4435", %"$have_gas_4393"
  %"$consume_4437" = sub i64 %"$gasrem_4433", 1
  store i64 %"$consume_4437", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_93" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4438" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4439" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4438", 0
  %"$ud-registry.oneMsg_envptr_4440" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4438", 1
  %"$$m_1_4441" = load i8*, i8** %"$m_1", align 8
  %"$ud-registry.oneMsg_call_4442" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4439"(i8* %"$ud-registry.oneMsg_envptr_4440", i8* %"$$m_1_4441")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4442", %TName_List_Message** %"$ud-registry.oneMsg_93", align 8
  %"$$ud-registry.oneMsg_93_4443" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_93", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_93_4443", %TName_List_Message** %msgs7, align 8
  %"$msgs_4444" = load %TName_List_Message*, %TName_List_Message** %msgs7, align 8
  %"$$msgs_4444_4445" = bitcast %TName_List_Message* %"$msgs_4444" to i8*
  %"$_literal_cost_call_4446" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_4444_4445")
  %"$gasrem_4447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4448" = icmp ugt i64 %"$_literal_cost_call_4446", %"$gasrem_4447"
  br i1 %"$gascmp_4448", label %"$out_of_gas_4449", label %"$have_gas_4450"

"$out_of_gas_4449":                               ; preds = %"$have_gas_4436"
  call void @_out_of_gas()
  br label %"$have_gas_4450"

"$have_gas_4450":                                 ; preds = %"$out_of_gas_4449", %"$have_gas_4436"
  %"$consume_4451" = sub i64 %"$gasrem_4447", %"$_literal_cost_call_4446"
  store i64 %"$consume_4451", i64* @_gasrem, align 8
  %"$execptr_load_4452" = load i8*, i8** @_execptr, align 8
  %"$msgs_4453" = load %TName_List_Message*, %TName_List_Message** %msgs7, align 8
  call void @_send(i8* %"$execptr_load_4452", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_4453")
  br label %"$matchsucc_4183"

"$empty_default_4187":                            ; preds = %"$have_gas_4181"
  br label %"$matchsucc_4183"

"$matchsucc_4183":                                ; preds = %"$have_gas_4450", %"$have_gas_4337", %"$empty_default_4187"
  ret void
}

define void @transfer(i8* %0) {
entry:
  %"$_amount_4455" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4456" = bitcast i8* %"$_amount_4455" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4456", align 8
  %"$_origin_4457" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4458" = bitcast i8* %"$_origin_4457" to [20 x i8]*
  %"$_sender_4459" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4460" = bitcast i8* %"$_sender_4459" to [20 x i8]*
  %"$node_4461" = getelementptr i8, i8* %0, i32 56
  %"$node_4462" = bitcast i8* %"$node_4461" to [32 x i8]*
  %"$owner_4463" = getelementptr i8, i8* %0, i32 88
  %"$owner_4464" = bitcast i8* %"$owner_4463" to [20 x i8]*
  call void @"$transfer_4075"(%Uint128 %_amount, [20 x i8]* %"$_origin_4458", [20 x i8]* %"$_sender_4460", [32 x i8]* %"$node_4462", [20 x i8]* %"$owner_4464")
  ret void
}

define internal void @"$assign_4465"(%Uint128 %_amount, [20 x i8]* %"$_origin_4466", [20 x i8]* %"$_sender_4467", [32 x i8]* %"$parent_4468", %String %label, [20 x i8]* %"$owner_4469") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4466", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4467", align 1
  %parent = load [32 x i8], [32 x i8]* %"$parent_4468", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_4469", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_4470_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4470_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4470_salloc_load", i64 32)
  %"$indices_buf_4470_salloc" = bitcast i8* %"$indices_buf_4470_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4470" = bitcast [32 x i8]* %"$indices_buf_4470_salloc" to i8*
  %"$indices_gep_4471" = getelementptr i8, i8* %"$indices_buf_4470", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4471" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4473" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_4474" = call i8* @_fetch_field(i8* %"$execptr_load_4473", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4472", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4470", i32 1)
  %"$maybeRecord_4475" = bitcast i8* %"$maybeRecord_call_4474" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4475", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_4476" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_4476_4477" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4476" to i8*
  %"$_literal_cost_call_4478" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_4476_4477")
  %"$gasadd_4479" = add i64 %"$_literal_cost_call_4478", 0
  %"$gasadd_4480" = add i64 %"$gasadd_4479", 1
  %"$gasrem_4481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4482" = icmp ugt i64 %"$gasadd_4480", %"$gasrem_4481"
  br i1 %"$gascmp_4482", label %"$out_of_gas_4483", label %"$have_gas_4484"

"$out_of_gas_4483":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4484"

"$have_gas_4484":                                 ; preds = %"$out_of_gas_4483", %entry
  %"$consume_4485" = sub i64 %"$gasrem_4481", %"$gasadd_4480"
  store i64 %"$consume_4485", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_4486_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4486_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4486_salloc_load", i64 32)
  %"$indices_buf_4486_salloc" = bitcast i8* %"$indices_buf_4486_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4486" = bitcast [32 x i8]* %"$indices_buf_4486_salloc" to i8*
  %"$indices_gep_4487" = getelementptr i8, i8* %"$indices_buf_4486", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4487" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4489" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_4490" = call i8* @_fetch_field(i8* %"$execptr_load_4489", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4488", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_4486", i32 1)
  %"$maybeApproved_4491" = bitcast i8* %"$maybeApproved_call_4490" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_4491", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_4492" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_4492_4493" = bitcast %TName_Option_ByStr20* %"$maybeApproved_4492" to i8*
  %"$_literal_cost_call_4494" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_4492_4493")
  %"$gasadd_4495" = add i64 %"$_literal_cost_call_4494", 0
  %"$gasadd_4496" = add i64 %"$gasadd_4495", 1
  %"$gasrem_4497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4498" = icmp ugt i64 %"$gasadd_4496", %"$gasrem_4497"
  br i1 %"$gascmp_4498", label %"$out_of_gas_4499", label %"$have_gas_4500"

"$out_of_gas_4499":                               ; preds = %"$have_gas_4484"
  call void @_out_of_gas()
  br label %"$have_gas_4500"

"$have_gas_4500":                                 ; preds = %"$out_of_gas_4499", %"$have_gas_4484"
  %"$consume_4501" = sub i64 %"$gasrem_4497", %"$gasadd_4496"
  store i64 %"$consume_4501", i64* @_gasrem, align 8
  %"$gasrem_4502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4503" = icmp ugt i64 1, %"$gasrem_4502"
  br i1 %"$gascmp_4503", label %"$out_of_gas_4504", label %"$have_gas_4505"

"$out_of_gas_4504":                               ; preds = %"$have_gas_4500"
  call void @_out_of_gas()
  br label %"$have_gas_4505"

"$have_gas_4505":                                 ; preds = %"$out_of_gas_4504", %"$have_gas_4500"
  %"$consume_4506" = sub i64 %"$gasrem_4502", 1
  store i64 %"$consume_4506", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_4507" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4508" = icmp ugt i64 1, %"$gasrem_4507"
  br i1 %"$gascmp_4508", label %"$out_of_gas_4509", label %"$have_gas_4510"

"$out_of_gas_4509":                               ; preds = %"$have_gas_4505"
  call void @_out_of_gas()
  br label %"$have_gas_4510"

"$have_gas_4510":                                 ; preds = %"$out_of_gas_4509", %"$have_gas_4505"
  %"$consume_4511" = sub i64 %"$gasrem_4507", 1
  store i64 %"$consume_4511", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_114" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_4512" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_4513" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4512", 0
  %"$ud-registry.recordMemberOwner_envptr_4514" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4512", 1
  %"$maybeRecord_4515" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_4516" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_4513"(i8* %"$ud-registry.recordMemberOwner_envptr_4514", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4516", %TName_Option_ud-registry.Record* %"$maybeRecord_4515")
  %"$ud-registry.recordMemberOwner_ret_4517" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4516", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_4517", [20 x i8]* %"$ud-registry.recordMemberOwner_114", align 1
  %"$$ud-registry.recordMemberOwner_114_4518" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_114", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_114_4518", [20 x i8]* %recordOwner, align 1
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_4519_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4519_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4519_salloc_load", i64 20)
  %"$indices_buf_4519_salloc" = bitcast i8* %"$indices_buf_4519_salloc_salloc" to [20 x i8]*
  %"$indices_buf_4519" = bitcast [20 x i8]* %"$indices_buf_4519_salloc" to i8*
  %"$recordOwner_4520" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_4521" = getelementptr i8, i8* %"$indices_buf_4519", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4521" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4520", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_4523" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_4524" = call i8* @_fetch_field(i8* %"$execptr_load_4523", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_4522", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_4519", i32 1)
  %"$maybeOperators_4525" = bitcast i8* %"$maybeOperators_call_4524" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4525", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_4526" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_4526_4527" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4526" to i8*
  %"$_literal_cost_call_4528" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", i8* %"$$maybeOperators_4526_4527")
  %"$gasadd_4529" = add i64 %"$_literal_cost_call_4528", 0
  %"$gasadd_4530" = add i64 %"$gasadd_4529", 1
  %"$gasrem_4531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4532" = icmp ugt i64 %"$gasadd_4530", %"$gasrem_4531"
  br i1 %"$gascmp_4532", label %"$out_of_gas_4533", label %"$have_gas_4534"

"$out_of_gas_4533":                               ; preds = %"$have_gas_4510"
  call void @_out_of_gas()
  br label %"$have_gas_4534"

"$have_gas_4534":                                 ; preds = %"$out_of_gas_4533", %"$have_gas_4510"
  %"$consume_4535" = sub i64 %"$gasrem_4531", %"$gasadd_4530"
  store i64 %"$consume_4535", i64* @_gasrem, align 8
  %"$gasrem_4536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4537" = icmp ugt i64 1, %"$gasrem_4536"
  br i1 %"$gascmp_4537", label %"$out_of_gas_4538", label %"$have_gas_4539"

"$out_of_gas_4538":                               ; preds = %"$have_gas_4534"
  call void @_out_of_gas()
  br label %"$have_gas_4539"

"$have_gas_4539":                                 ; preds = %"$out_of_gas_4538", %"$have_gas_4534"
  %"$consume_4540" = sub i64 %"$gasrem_4536", 1
  store i64 %"$consume_4540", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_4541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4542" = icmp ugt i64 1, %"$gasrem_4541"
  br i1 %"$gascmp_4542", label %"$out_of_gas_4543", label %"$have_gas_4544"

"$out_of_gas_4543":                               ; preds = %"$have_gas_4539"
  call void @_out_of_gas()
  br label %"$have_gas_4544"

"$have_gas_4544":                                 ; preds = %"$out_of_gas_4543", %"$have_gas_4539"
  %"$consume_4545" = sub i64 %"$gasrem_4541", 1
  store i64 %"$consume_4545", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_110" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_4546" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_4547" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4546", 0
  %"$ud-registry.getIsOAO_envptr_4548" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4546", 1
  %"$ud-registry.getIsOAO__sender_4549" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_4549", align 1
  %"$ud-registry.getIsOAO_call_4550" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_4547"(i8* %"$ud-registry.getIsOAO_envptr_4548", [20 x i8]* %"$ud-registry.getIsOAO__sender_4549")
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_4550", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_110", align 8
  %"$ud-registry.getIsOAO_111" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_110_4551" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_110", align 8
  %"$$ud-registry.getIsOAO_110_fptr_4552" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_110_4551", 0
  %"$$ud-registry.getIsOAO_110_envptr_4553" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_110_4551", 1
  %"$$ud-registry.getIsOAO_110_recordOwner_4554" = alloca [20 x i8], align 1
  %"$recordOwner_4555" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_4555", [20 x i8]* %"$$ud-registry.getIsOAO_110_recordOwner_4554", align 1
  %"$$ud-registry.getIsOAO_110_call_4556" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_110_fptr_4552"(i8* %"$$ud-registry.getIsOAO_110_envptr_4553", [20 x i8]* %"$$ud-registry.getIsOAO_110_recordOwner_4554")
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_110_call_4556", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_111", align 8
  %"$ud-registry.getIsOAO_112" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_111_4557" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_111", align 8
  %"$$ud-registry.getIsOAO_111_fptr_4558" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_111_4557", 0
  %"$$ud-registry.getIsOAO_111_envptr_4559" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_111_4557", 1
  %"$maybeApproved_4560" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_111_call_4561" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_111_fptr_4558"(i8* %"$$ud-registry.getIsOAO_111_envptr_4559", %TName_Option_ByStr20* %"$maybeApproved_4560")
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_111_call_4561", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_112", align 8
  %"$ud-registry.getIsOAO_113" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_112_4562" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_112", align 8
  %"$$ud-registry.getIsOAO_112_fptr_4563" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_112_4562", 0
  %"$$ud-registry.getIsOAO_112_envptr_4564" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_112_4562", 1
  %"$maybeOperators_4565" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_112_call_4566" = call %TName_Bool* %"$$ud-registry.getIsOAO_112_fptr_4563"(i8* %"$$ud-registry.getIsOAO_112_envptr_4564", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4565")
  store %TName_Bool* %"$$ud-registry.getIsOAO_112_call_4566", %TName_Bool** %"$ud-registry.getIsOAO_113", align 8
  %"$$ud-registry.getIsOAO_113_4567" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_113", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_113_4567", %TName_Bool** %isSenderOAO, align 8
  %"$gasrem_4568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4569" = icmp ugt i64 2, %"$gasrem_4568"
  br i1 %"$gascmp_4569", label %"$out_of_gas_4570", label %"$have_gas_4571"

"$out_of_gas_4570":                               ; preds = %"$have_gas_4544"
  call void @_out_of_gas()
  br label %"$have_gas_4571"

"$have_gas_4571":                                 ; preds = %"$out_of_gas_4570", %"$have_gas_4544"
  %"$consume_4572" = sub i64 %"$gasrem_4568", 2
  store i64 %"$consume_4572", i64* @_gasrem, align 8
  %"$isSenderOAO_4574" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_4575" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_4574", i32 0, i32 0
  %"$isSenderOAO_tag_4576" = load i8, i8* %"$isSenderOAO_tag_4575", align 1
  switch i8 %"$isSenderOAO_tag_4576", label %"$empty_default_4577" [
    i8 0, label %"$True_4578"
    i8 1, label %"$False_4821"
  ]

"$True_4578":                                     ; preds = %"$have_gas_4571"
  %"$isSenderOAO_4579" = bitcast %TName_Bool* %"$isSenderOAO_4574" to %CName_True*
  %"$gasrem_4580" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4581" = icmp ugt i64 1, %"$gasrem_4580"
  br i1 %"$gascmp_4581", label %"$out_of_gas_4582", label %"$have_gas_4583"

"$out_of_gas_4582":                               ; preds = %"$True_4578"
  call void @_out_of_gas()
  br label %"$have_gas_4583"

"$have_gas_4583":                                 ; preds = %"$out_of_gas_4582", %"$True_4578"
  %"$consume_4584" = sub i64 %"$gasrem_4580", 1
  store i64 %"$consume_4584", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_4585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4586" = icmp ugt i64 1, %"$gasrem_4585"
  br i1 %"$gascmp_4586", label %"$out_of_gas_4587", label %"$have_gas_4588"

"$out_of_gas_4587":                               ; preds = %"$have_gas_4583"
  call void @_out_of_gas()
  br label %"$have_gas_4588"

"$have_gas_4588":                                 ; preds = %"$out_of_gas_4587", %"$have_gas_4583"
  %"$consume_4589" = sub i64 %"$gasrem_4585", 1
  store i64 %"$consume_4589", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_106" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_4590" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_4591" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4590", 0
  %"$ud-registry.parentLabelToNode_envptr_4592" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4590", 1
  %"$ud-registry.parentLabelToNode_parent_4593" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4593", align 1
  %"$ud-registry.parentLabelToNode_call_4594" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_4591"(i8* %"$ud-registry.parentLabelToNode_envptr_4592", [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4593")
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_4594", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_106", align 8
  %"$ud-registry.parentLabelToNode_107" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_106_4595" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_106", align 8
  %"$$ud-registry.parentLabelToNode_106_fptr_4596" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_106_4595", 0
  %"$$ud-registry.parentLabelToNode_106_envptr_4597" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_106_4595", 1
  %"$$ud-registry.parentLabelToNode_106_retalloca_4598" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_106_fptr_4596"(i8* %"$$ud-registry.parentLabelToNode_106_envptr_4597", [32 x i8]* %"$$ud-registry.parentLabelToNode_106_retalloca_4598", %String %label)
  %"$$ud-registry.parentLabelToNode_106_ret_4599" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_106_retalloca_4598", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_106_ret_4599", [32 x i8]* %"$ud-registry.parentLabelToNode_107", align 1
  %"$$ud-registry.parentLabelToNode_107_4600" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_107", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_107_4600", [32 x i8]* %node, align 1
  %recordExists = alloca %TName_Bool*, align 8
  %"$indices_buf_4601_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4601_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4601_salloc_load", i64 32)
  %"$indices_buf_4601_salloc" = bitcast i8* %"$indices_buf_4601_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4601" = bitcast [32 x i8]* %"$indices_buf_4601_salloc" to i8*
  %"$node_4602" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4603" = getelementptr i8, i8* %"$indices_buf_4601", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_4603" to [32 x i8]*
  store [32 x i8] %"$node_4602", [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_4605" = load i8*, i8** @_execptr, align 8
  %"$recordExists_call_4606" = call i8* @_fetch_field(i8* %"$execptr_load_4605", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4604", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4601", i32 0)
  %"$recordExists_4607" = bitcast i8* %"$recordExists_call_4606" to %TName_Bool*
  store %TName_Bool* %"$recordExists_4607", %TName_Bool** %recordExists, align 8
  %"$recordExists_4608" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$$recordExists_4608_4609" = bitcast %TName_Bool* %"$recordExists_4608" to i8*
  %"$_literal_cost_call_4610" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321", i8* %"$$recordExists_4608_4609")
  %"$gasadd_4611" = add i64 %"$_literal_cost_call_4610", 0
  %"$gasadd_4612" = add i64 %"$gasadd_4611", 1
  %"$gasrem_4613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4614" = icmp ugt i64 %"$gasadd_4612", %"$gasrem_4613"
  br i1 %"$gascmp_4614", label %"$out_of_gas_4615", label %"$have_gas_4616"

"$out_of_gas_4615":                               ; preds = %"$have_gas_4588"
  call void @_out_of_gas()
  br label %"$have_gas_4616"

"$have_gas_4616":                                 ; preds = %"$out_of_gas_4615", %"$have_gas_4588"
  %"$consume_4617" = sub i64 %"$gasrem_4613", %"$gasadd_4612"
  store i64 %"$consume_4617", i64* @_gasrem, align 8
  %"$gasrem_4618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4619" = icmp ugt i64 2, %"$gasrem_4618"
  br i1 %"$gascmp_4619", label %"$out_of_gas_4620", label %"$have_gas_4621"

"$out_of_gas_4620":                               ; preds = %"$have_gas_4616"
  call void @_out_of_gas()
  br label %"$have_gas_4621"

"$have_gas_4621":                                 ; preds = %"$out_of_gas_4620", %"$have_gas_4616"
  %"$consume_4622" = sub i64 %"$gasrem_4618", 2
  store i64 %"$consume_4622", i64* @_gasrem, align 8
  %"$recordExists_4624" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$recordExists_tag_4625" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$recordExists_4624", i32 0, i32 0
  %"$recordExists_tag_4626" = load i8, i8* %"$recordExists_tag_4625", align 1
  switch i8 %"$recordExists_tag_4626", label %"$default_4627" [
    i8 1, label %"$False_4628"
  ]

"$False_4628":                                    ; preds = %"$have_gas_4621"
  %"$recordExists_4629" = bitcast %TName_Bool* %"$recordExists_4624" to %CName_False*
  %"$gasrem_4630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4631" = icmp ugt i64 1, %"$gasrem_4630"
  br i1 %"$gascmp_4631", label %"$out_of_gas_4632", label %"$have_gas_4633"

"$out_of_gas_4632":                               ; preds = %"$False_4628"
  call void @_out_of_gas()
  br label %"$have_gas_4633"

"$have_gas_4633":                                 ; preds = %"$out_of_gas_4632", %"$False_4628"
  %"$consume_4634" = sub i64 %"$gasrem_4630", 1
  store i64 %"$consume_4634", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_4635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4636" = icmp ugt i64 1, %"$gasrem_4635"
  br i1 %"$gascmp_4636", label %"$out_of_gas_4637", label %"$have_gas_4638"

"$out_of_gas_4637":                               ; preds = %"$have_gas_4633"
  call void @_out_of_gas()
  br label %"$have_gas_4638"

"$have_gas_4638":                                 ; preds = %"$out_of_gas_4637", %"$have_gas_4633"
  %"$consume_4639" = sub i64 %"$gasrem_4635", 1
  store i64 %"$consume_4639", i64* @_gasrem, align 8
  %"$ud-registry.eNewDomain_104" = alloca { i8* (i8*, %String)*, i8* }, align 8
  %"$ud-registry.eNewDomain_4640" = load { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain, align 8
  %"$ud-registry.eNewDomain_fptr_4641" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_4640", 0
  %"$ud-registry.eNewDomain_envptr_4642" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_4640", 1
  %"$ud-registry.eNewDomain_parent_4643" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.eNewDomain_parent_4643", align 1
  %"$ud-registry.eNewDomain_call_4644" = call { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_fptr_4641"(i8* %"$ud-registry.eNewDomain_envptr_4642", [32 x i8]* %"$ud-registry.eNewDomain_parent_4643")
  store { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_call_4644", { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_104", align 8
  %"$ud-registry.eNewDomain_105" = alloca i8*, align 8
  %"$$ud-registry.eNewDomain_104_4645" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_104", align 8
  %"$$ud-registry.eNewDomain_104_fptr_4646" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_104_4645", 0
  %"$$ud-registry.eNewDomain_104_envptr_4647" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_104_4645", 1
  %"$$ud-registry.eNewDomain_104_call_4648" = call i8* %"$$ud-registry.eNewDomain_104_fptr_4646"(i8* %"$$ud-registry.eNewDomain_104_envptr_4647", %String %label)
  store i8* %"$$ud-registry.eNewDomain_104_call_4648", i8** %"$ud-registry.eNewDomain_105", align 8
  %"$$ud-registry.eNewDomain_105_4649" = load i8*, i8** %"$ud-registry.eNewDomain_105", align 8
  store i8* %"$$ud-registry.eNewDomain_105_4649", i8** %e, align 8
  %"$e_4650" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_4652" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4650")
  %"$gasrem_4653" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4654" = icmp ugt i64 %"$_literal_cost_call_4652", %"$gasrem_4653"
  br i1 %"$gascmp_4654", label %"$out_of_gas_4655", label %"$have_gas_4656"

"$out_of_gas_4655":                               ; preds = %"$have_gas_4638"
  call void @_out_of_gas()
  br label %"$have_gas_4656"

"$have_gas_4656":                                 ; preds = %"$out_of_gas_4655", %"$have_gas_4638"
  %"$consume_4657" = sub i64 %"$gasrem_4653", %"$_literal_cost_call_4652"
  store i64 %"$consume_4657", i64* @_gasrem, align 8
  %"$execptr_load_4658" = load i8*, i8** @_execptr, align 8
  %"$e_4659" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_4658", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4659")
  br label %"$matchsucc_4623"

"$default_4627":                                  ; preds = %"$have_gas_4621"
  br label %"$joinp_7"

"$joinp_7":                                       ; preds = %"$default_4627"
  br label %"$matchsucc_4623"

"$matchsucc_4623":                                ; preds = %"$have_gas_4656", %"$joinp_7"
  %"$gasrem_4660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4661" = icmp ugt i64 1, %"$gasrem_4660"
  br i1 %"$gascmp_4661", label %"$out_of_gas_4662", label %"$have_gas_4663"

"$out_of_gas_4662":                               ; preds = %"$matchsucc_4623"
  call void @_out_of_gas()
  br label %"$have_gas_4663"

"$have_gas_4663":                                 ; preds = %"$out_of_gas_4662", %"$matchsucc_4623"
  %"$consume_4664" = sub i64 %"$gasrem_4660", 1
  store i64 %"$consume_4664", i64* @_gasrem, align 8
  %"$indices_buf_4665_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4665_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4665_salloc_load", i64 32)
  %"$indices_buf_4665_salloc" = bitcast i8* %"$indices_buf_4665_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4665" = bitcast [32 x i8]* %"$indices_buf_4665_salloc" to i8*
  %"$node_4666" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4667" = getelementptr i8, i8* %"$indices_buf_4665", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4667" to [32 x i8]*
  store [32 x i8] %"$node_4666", [32 x i8]* %indices_cast4, align 1
  %"$execptr_load_4668" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4668", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4669", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_4665", i8* null)
  %"$gasrem_4670" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4671" = icmp ugt i64 1, %"$gasrem_4670"
  br i1 %"$gascmp_4671", label %"$out_of_gas_4672", label %"$have_gas_4673"

"$out_of_gas_4672":                               ; preds = %"$have_gas_4663"
  call void @_out_of_gas()
  br label %"$have_gas_4673"

"$have_gas_4673":                                 ; preds = %"$out_of_gas_4672", %"$have_gas_4663"
  %"$consume_4674" = sub i64 %"$gasrem_4670", 1
  store i64 %"$consume_4674", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_4675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4676" = icmp ugt i64 1, %"$gasrem_4675"
  br i1 %"$gascmp_4676", label %"$out_of_gas_4677", label %"$have_gas_4678"

"$out_of_gas_4677":                               ; preds = %"$have_gas_4673"
  call void @_out_of_gas()
  br label %"$have_gas_4678"

"$have_gas_4678":                                 ; preds = %"$out_of_gas_4677", %"$have_gas_4673"
  %"$consume_4679" = sub i64 %"$gasrem_4675", 1
  store i64 %"$consume_4679", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_4680" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_4681_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4681_salloc" = call i8* @_salloc(i8* %"$adtval_4681_load", i64 41)
  %"$adtval_4681" = bitcast i8* %"$adtval_4681_salloc" to %CName_ud-registry.Record*
  %"$adtgep_4682" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4681", i32 0, i32 0
  store i8 0, i8* %"$adtgep_4682", align 1
  %"$adtgep_4683" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4681", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_4683", align 1
  %"$adtgep_4684" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4681", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_4680", [20 x i8]* %"$adtgep_4684", align 1
  %"$adtptr_4685" = bitcast %CName_ud-registry.Record* %"$adtval_4681" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_4685", %TName_ud-registry.Record** %newRecord, align 8
  %"$newRecord_4686" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_4686_4687" = bitcast %TName_ud-registry.Record* %"$newRecord_4686" to i8*
  %"$_literal_cost_call_4688" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", i8* %"$$newRecord_4686_4687")
  %"$gasadd_4689" = add i64 %"$_literal_cost_call_4688", 1
  %"$gasrem_4690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4691" = icmp ugt i64 %"$gasadd_4689", %"$gasrem_4690"
  br i1 %"$gascmp_4691", label %"$out_of_gas_4692", label %"$have_gas_4693"

"$out_of_gas_4692":                               ; preds = %"$have_gas_4678"
  call void @_out_of_gas()
  br label %"$have_gas_4693"

"$have_gas_4693":                                 ; preds = %"$out_of_gas_4692", %"$have_gas_4678"
  %"$consume_4694" = sub i64 %"$gasrem_4690", %"$gasadd_4689"
  store i64 %"$consume_4694", i64* @_gasrem, align 8
  %"$indices_buf_4695_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4695_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4695_salloc_load", i64 32)
  %"$indices_buf_4695_salloc" = bitcast i8* %"$indices_buf_4695_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4695" = bitcast [32 x i8]* %"$indices_buf_4695_salloc" to i8*
  %"$node_4696" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4697" = getelementptr i8, i8* %"$indices_buf_4695", i32 0
  %indices_cast5 = bitcast i8* %"$indices_gep_4697" to [32 x i8]*
  store [32 x i8] %"$node_4696", [32 x i8]* %indices_cast5, align 1
  %"$execptr_load_4698" = load i8*, i8** @_execptr, align 8
  %"$newRecord_4700" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_4701" = bitcast %TName_ud-registry.Record* %"$newRecord_4700" to i8*
  call void @_update_field(i8* %"$execptr_load_4698", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4699", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4695", i8* %"$update_value_4701")
  %"$gasrem_4702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4703" = icmp ugt i64 1, %"$gasrem_4702"
  br i1 %"$gascmp_4703", label %"$out_of_gas_4704", label %"$have_gas_4705"

"$out_of_gas_4704":                               ; preds = %"$have_gas_4693"
  call void @_out_of_gas()
  br label %"$have_gas_4705"

"$have_gas_4705":                                 ; preds = %"$out_of_gas_4704", %"$have_gas_4693"
  %"$consume_4706" = sub i64 %"$gasrem_4702", 1
  store i64 %"$consume_4706", i64* @_gasrem, align 8
  %e6 = alloca i8*, align 8
  %"$gasrem_4707" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4708" = icmp ugt i64 1, %"$gasrem_4707"
  br i1 %"$gascmp_4708", label %"$out_of_gas_4709", label %"$have_gas_4710"

"$out_of_gas_4709":                               ; preds = %"$have_gas_4705"
  call void @_out_of_gas()
  br label %"$have_gas_4710"

"$have_gas_4710":                                 ; preds = %"$out_of_gas_4709", %"$have_gas_4705"
  %"$consume_4711" = sub i64 %"$gasrem_4707", 1
  store i64 %"$consume_4711", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_101" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_4712" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_4713" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4712", 0
  %"$ud-registry.eConfigured_envptr_4714" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4712", 1
  %"$ud-registry.eConfigured_node_4715" = alloca [32 x i8], align 1
  %"$node_4716" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_4716", [32 x i8]* %"$ud-registry.eConfigured_node_4715", align 1
  %"$ud-registry.eConfigured_call_4717" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_4713"(i8* %"$ud-registry.eConfigured_envptr_4714", [32 x i8]* %"$ud-registry.eConfigured_node_4715")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_4717", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_101", align 8
  %"$ud-registry.eConfigured_102" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_101_4718" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_101", align 8
  %"$$ud-registry.eConfigured_101_fptr_4719" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_101_4718", 0
  %"$$ud-registry.eConfigured_101_envptr_4720" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_101_4718", 1
  %"$$ud-registry.eConfigured_101_owner_4721" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_101_owner_4721", align 1
  %"$$ud-registry.eConfigured_101_call_4722" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_101_fptr_4719"(i8* %"$$ud-registry.eConfigured_101_envptr_4720", [20 x i8]* %"$$ud-registry.eConfigured_101_owner_4721")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_101_call_4722", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_102", align 8
  %"$ud-registry.eConfigured_103" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_102_4723" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_102", align 8
  %"$$ud-registry.eConfigured_102_fptr_4724" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_102_4723", 0
  %"$$ud-registry.eConfigured_102_envptr_4725" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_102_4723", 1
  %"$$ud-registry.eConfigured_102_ud-registry.zeroByStr20_4726" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_4727" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_4727", [20 x i8]* %"$$ud-registry.eConfigured_102_ud-registry.zeroByStr20_4726", align 1
  %"$$ud-registry.eConfigured_102_call_4728" = call i8* %"$$ud-registry.eConfigured_102_fptr_4724"(i8* %"$$ud-registry.eConfigured_102_envptr_4725", [20 x i8]* %"$$ud-registry.eConfigured_102_ud-registry.zeroByStr20_4726")
  store i8* %"$$ud-registry.eConfigured_102_call_4728", i8** %"$ud-registry.eConfigured_103", align 8
  %"$$ud-registry.eConfigured_103_4729" = load i8*, i8** %"$ud-registry.eConfigured_103", align 8
  store i8* %"$$ud-registry.eConfigured_103_4729", i8** %e6, align 8
  %"$e_4730" = load i8*, i8** %e6, align 8
  %"$_literal_cost_call_4732" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4730")
  %"$gasrem_4733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4734" = icmp ugt i64 %"$_literal_cost_call_4732", %"$gasrem_4733"
  br i1 %"$gascmp_4734", label %"$out_of_gas_4735", label %"$have_gas_4736"

"$out_of_gas_4735":                               ; preds = %"$have_gas_4710"
  call void @_out_of_gas()
  br label %"$have_gas_4736"

"$have_gas_4736":                                 ; preds = %"$out_of_gas_4735", %"$have_gas_4710"
  %"$consume_4737" = sub i64 %"$gasrem_4733", %"$_literal_cost_call_4732"
  store i64 %"$consume_4737", i64* @_gasrem, align 8
  %"$execptr_load_4738" = load i8*, i8** @_execptr, align 8
  %"$e_4739" = load i8*, i8** %e6, align 8
  call void @_event(i8* %"$execptr_load_4738", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4739")
  %"$gasrem_4740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4741" = icmp ugt i64 1, %"$gasrem_4740"
  br i1 %"$gascmp_4741", label %"$out_of_gas_4742", label %"$have_gas_4743"

"$out_of_gas_4742":                               ; preds = %"$have_gas_4736"
  call void @_out_of_gas()
  br label %"$have_gas_4743"

"$have_gas_4743":                                 ; preds = %"$out_of_gas_4742", %"$have_gas_4736"
  %"$consume_4744" = sub i64 %"$gasrem_4740", 1
  store i64 %"$consume_4744", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_4745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4746" = icmp ugt i64 1, %"$gasrem_4745"
  br i1 %"$gascmp_4746", label %"$out_of_gas_4747", label %"$have_gas_4748"

"$out_of_gas_4747":                               ; preds = %"$have_gas_4743"
  call void @_out_of_gas()
  br label %"$have_gas_4748"

"$have_gas_4748":                                 ; preds = %"$out_of_gas_4747", %"$have_gas_4743"
  %"$consume_4749" = sub i64 %"$gasrem_4745", 1
  store i64 %"$consume_4749", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_4750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4751" = icmp ugt i64 1, %"$gasrem_4750"
  br i1 %"$gascmp_4751", label %"$out_of_gas_4752", label %"$have_gas_4753"

"$out_of_gas_4752":                               ; preds = %"$have_gas_4748"
  call void @_out_of_gas()
  br label %"$have_gas_4753"

"$have_gas_4753":                                 ; preds = %"$out_of_gas_4752", %"$have_gas_4748"
  %"$consume_4754" = sub i64 %"$gasrem_4750", 1
  store i64 %"$consume_4754", i64* @_gasrem, align 8
  %"$msgobj_4755_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4755_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4755_salloc_load", i64 265)
  %"$msgobj_4755_salloc" = bitcast i8* %"$msgobj_4755_salloc_salloc" to [265 x i8]*
  %"$msgobj_4755" = bitcast [265 x i8]* %"$msgobj_4755_salloc" to i8*
  store i8 6, i8* %"$msgobj_4755", align 1
  %"$msgobj_fname_4757" = getelementptr i8, i8* %"$msgobj_4755", i32 1
  %"$msgobj_fname_4758" = bitcast i8* %"$msgobj_fname_4757" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4756", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4758", align 8
  %"$msgobj_td_4759" = getelementptr i8, i8* %"$msgobj_4755", i32 17
  %"$msgobj_td_4760" = bitcast i8* %"$msgobj_td_4759" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4760", align 8
  %"$msgobj_v_4762" = getelementptr i8, i8* %"$msgobj_4755", i32 25
  %"$msgobj_v_4763" = bitcast i8* %"$msgobj_v_4762" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_4761", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_4763", align 8
  %"$msgobj_fname_4765" = getelementptr i8, i8* %"$msgobj_4755", i32 41
  %"$msgobj_fname_4766" = bitcast i8* %"$msgobj_fname_4765" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_4764", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_4766", align 8
  %"$msgobj_td_4767" = getelementptr i8, i8* %"$msgobj_4755", i32 57
  %"$msgobj_td_4768" = bitcast i8* %"$msgobj_td_4767" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_4768", align 8
  %"$msgobj_v_4769" = getelementptr i8, i8* %"$msgobj_4755", i32 65
  %"$msgobj_v_4770" = bitcast i8* %"$msgobj_v_4769" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_4770", align 1
  %"$msgobj_fname_4772" = getelementptr i8, i8* %"$msgobj_4755", i32 97
  %"$msgobj_fname_4773" = bitcast i8* %"$msgobj_fname_4772" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4771", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4773", align 8
  %"$msgobj_td_4774" = getelementptr i8, i8* %"$msgobj_4755", i32 113
  %"$msgobj_td_4775" = bitcast i8* %"$msgobj_td_4774" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4775", align 8
  %"$msgobj_v_4776" = getelementptr i8, i8* %"$msgobj_4755", i32 121
  %"$msgobj_v_4777" = bitcast i8* %"$msgobj_v_4776" to %String*
  store %String %label, %String* %"$msgobj_v_4777", align 8
  %"$msgobj_fname_4779" = getelementptr i8, i8* %"$msgobj_4755", i32 137
  %"$msgobj_fname_4780" = bitcast i8* %"$msgobj_fname_4779" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4778", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4780", align 8
  %"$msgobj_td_4781" = getelementptr i8, i8* %"$msgobj_4755", i32 153
  %"$msgobj_td_4782" = bitcast i8* %"$msgobj_td_4781" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4782", align 8
  %"$msgobj_v_4783" = getelementptr i8, i8* %"$msgobj_4755", i32 161
  %"$msgobj_v_4784" = bitcast i8* %"$msgobj_v_4783" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4784", align 1
  %"$msgobj_fname_4786" = getelementptr i8, i8* %"$msgobj_4755", i32 181
  %"$msgobj_fname_4787" = bitcast i8* %"$msgobj_fname_4786" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4785", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4787", align 8
  %"$msgobj_td_4788" = getelementptr i8, i8* %"$msgobj_4755", i32 197
  %"$msgobj_td_4789" = bitcast i8* %"$msgobj_td_4788" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_4789", align 8
  %"$msgobj_v_4790" = getelementptr i8, i8* %"$msgobj_4755", i32 205
  %"$msgobj_v_4791" = bitcast i8* %"$msgobj_v_4790" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4791", align 8
  %"$msgobj_fname_4793" = getelementptr i8, i8* %"$msgobj_4755", i32 221
  %"$msgobj_fname_4794" = bitcast i8* %"$msgobj_fname_4793" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4792", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4794", align 8
  %"$msgobj_td_4795" = getelementptr i8, i8* %"$msgobj_4755", i32 237
  %"$msgobj_td_4796" = bitcast i8* %"$msgobj_td_4795" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4796", align 8
  %"$msgobj_v_4797" = getelementptr i8, i8* %"$msgobj_4755", i32 245
  %"$msgobj_v_4798" = bitcast i8* %"$msgobj_v_4797" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4798", align 1
  store i8* %"$msgobj_4755", i8** %m, align 8
  %"$gasrem_4800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4801" = icmp ugt i64 1, %"$gasrem_4800"
  br i1 %"$gascmp_4801", label %"$out_of_gas_4802", label %"$have_gas_4803"

"$out_of_gas_4802":                               ; preds = %"$have_gas_4753"
  call void @_out_of_gas()
  br label %"$have_gas_4803"

"$have_gas_4803":                                 ; preds = %"$out_of_gas_4802", %"$have_gas_4753"
  %"$consume_4804" = sub i64 %"$gasrem_4800", 1
  store i64 %"$consume_4804", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_100" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4805" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4806" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4805", 0
  %"$ud-registry.oneMsg_envptr_4807" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4805", 1
  %"$m_4808" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_4809" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4806"(i8* %"$ud-registry.oneMsg_envptr_4807", i8* %"$m_4808")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4809", %TName_List_Message** %"$ud-registry.oneMsg_100", align 8
  %"$$ud-registry.oneMsg_100_4810" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_100", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_100_4810", %TName_List_Message** %msgs, align 8
  %"$msgs_4811" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_4811_4812" = bitcast %TName_List_Message* %"$msgs_4811" to i8*
  %"$_literal_cost_call_4813" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_4811_4812")
  %"$gasrem_4814" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4815" = icmp ugt i64 %"$_literal_cost_call_4813", %"$gasrem_4814"
  br i1 %"$gascmp_4815", label %"$out_of_gas_4816", label %"$have_gas_4817"

"$out_of_gas_4816":                               ; preds = %"$have_gas_4803"
  call void @_out_of_gas()
  br label %"$have_gas_4817"

"$have_gas_4817":                                 ; preds = %"$out_of_gas_4816", %"$have_gas_4803"
  %"$consume_4818" = sub i64 %"$gasrem_4814", %"$_literal_cost_call_4813"
  store i64 %"$consume_4818", i64* @_gasrem, align 8
  %"$execptr_load_4819" = load i8*, i8** @_execptr, align 8
  %"$msgs_4820" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_4819", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_4820")
  br label %"$matchsucc_4573"

"$False_4821":                                    ; preds = %"$have_gas_4571"
  %"$isSenderOAO_4822" = bitcast %TName_Bool* %"$isSenderOAO_4574" to %CName_False*
  %"$gasrem_4823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4824" = icmp ugt i64 1, %"$gasrem_4823"
  br i1 %"$gascmp_4824", label %"$out_of_gas_4825", label %"$have_gas_4826"

"$out_of_gas_4825":                               ; preds = %"$False_4821"
  call void @_out_of_gas()
  br label %"$have_gas_4826"

"$have_gas_4826":                                 ; preds = %"$out_of_gas_4825", %"$False_4821"
  %"$consume_4827" = sub i64 %"$gasrem_4823", 1
  store i64 %"$consume_4827", i64* @_gasrem, align 8
  %e7 = alloca i8*, align 8
  %"$gasrem_4828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4829" = icmp ugt i64 1, %"$gasrem_4828"
  br i1 %"$gascmp_4829", label %"$out_of_gas_4830", label %"$have_gas_4831"

"$out_of_gas_4830":                               ; preds = %"$have_gas_4826"
  call void @_out_of_gas()
  br label %"$have_gas_4831"

"$have_gas_4831":                                 ; preds = %"$out_of_gas_4830", %"$have_gas_4826"
  %"$consume_4832" = sub i64 %"$gasrem_4828", 1
  store i64 %"$consume_4832", i64* @_gasrem, align 8
  %m8 = alloca %String, align 8
  %"$gasrem_4833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4834" = icmp ugt i64 1, %"$gasrem_4833"
  br i1 %"$gascmp_4834", label %"$out_of_gas_4835", label %"$have_gas_4836"

"$out_of_gas_4835":                               ; preds = %"$have_gas_4831"
  call void @_out_of_gas()
  br label %"$have_gas_4836"

"$have_gas_4836":                                 ; preds = %"$out_of_gas_4835", %"$have_gas_4831"
  %"$consume_4837" = sub i64 %"$gasrem_4833", 1
  store i64 %"$consume_4837", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"$stringlit_4838", i32 0, i32 0), i32 45 }, %String* %m8, align 8
  %"$gasrem_4839" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4840" = icmp ugt i64 1, %"$gasrem_4839"
  br i1 %"$gascmp_4840", label %"$out_of_gas_4841", label %"$have_gas_4842"

"$out_of_gas_4841":                               ; preds = %"$have_gas_4836"
  call void @_out_of_gas()
  br label %"$have_gas_4842"

"$have_gas_4842":                                 ; preds = %"$out_of_gas_4841", %"$have_gas_4836"
  %"$consume_4843" = sub i64 %"$gasrem_4839", 1
  store i64 %"$consume_4843", i64* @_gasrem, align 8
  %"$ud-registry.eError_109" = alloca i8*, align 8
  %"$ud-registry.eError_4844" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_4845" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4844", 0
  %"$ud-registry.eError_envptr_4846" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4844", 1
  %"$m_4847" = load %String, %String* %m8, align 8
  %"$ud-registry.eError_call_4848" = call i8* %"$ud-registry.eError_fptr_4845"(i8* %"$ud-registry.eError_envptr_4846", %String %"$m_4847")
  store i8* %"$ud-registry.eError_call_4848", i8** %"$ud-registry.eError_109", align 8
  %"$$ud-registry.eError_109_4849" = load i8*, i8** %"$ud-registry.eError_109", align 8
  store i8* %"$$ud-registry.eError_109_4849", i8** %e7, align 8
  %"$e_4850" = load i8*, i8** %e7, align 8
  %"$_literal_cost_call_4852" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4850")
  %"$gasrem_4853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4854" = icmp ugt i64 %"$_literal_cost_call_4852", %"$gasrem_4853"
  br i1 %"$gascmp_4854", label %"$out_of_gas_4855", label %"$have_gas_4856"

"$out_of_gas_4855":                               ; preds = %"$have_gas_4842"
  call void @_out_of_gas()
  br label %"$have_gas_4856"

"$have_gas_4856":                                 ; preds = %"$out_of_gas_4855", %"$have_gas_4842"
  %"$consume_4857" = sub i64 %"$gasrem_4853", %"$_literal_cost_call_4852"
  store i64 %"$consume_4857", i64* @_gasrem, align 8
  %"$execptr_load_4858" = load i8*, i8** @_execptr, align 8
  %"$e_4859" = load i8*, i8** %e7, align 8
  call void @_event(i8* %"$execptr_load_4858", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4859")
  %"$gasrem_4860" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4861" = icmp ugt i64 1, %"$gasrem_4860"
  br i1 %"$gascmp_4861", label %"$out_of_gas_4862", label %"$have_gas_4863"

"$out_of_gas_4862":                               ; preds = %"$have_gas_4856"
  call void @_out_of_gas()
  br label %"$have_gas_4863"

"$have_gas_4863":                                 ; preds = %"$out_of_gas_4862", %"$have_gas_4856"
  %"$consume_4864" = sub i64 %"$gasrem_4860", 1
  store i64 %"$consume_4864", i64* @_gasrem, align 8
  %msgs9 = alloca %TName_List_Message*, align 8
  %"$gasrem_4865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4866" = icmp ugt i64 1, %"$gasrem_4865"
  br i1 %"$gascmp_4866", label %"$out_of_gas_4867", label %"$have_gas_4868"

"$out_of_gas_4867":                               ; preds = %"$have_gas_4863"
  call void @_out_of_gas()
  br label %"$have_gas_4868"

"$have_gas_4868":                                 ; preds = %"$out_of_gas_4867", %"$have_gas_4863"
  %"$consume_4869" = sub i64 %"$gasrem_4865", 1
  store i64 %"$consume_4869", i64* @_gasrem, align 8
  %"$m_2" = alloca i8*, align 8
  %"$gasrem_4870" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4871" = icmp ugt i64 1, %"$gasrem_4870"
  br i1 %"$gascmp_4871", label %"$out_of_gas_4872", label %"$have_gas_4873"

"$out_of_gas_4872":                               ; preds = %"$have_gas_4868"
  call void @_out_of_gas()
  br label %"$have_gas_4873"

"$have_gas_4873":                                 ; preds = %"$out_of_gas_4872", %"$have_gas_4868"
  %"$consume_4874" = sub i64 %"$gasrem_4870", 1
  store i64 %"$consume_4874", i64* @_gasrem, align 8
  %"$msgobj_4875_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4875_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4875_salloc_load", i64 265)
  %"$msgobj_4875_salloc" = bitcast i8* %"$msgobj_4875_salloc_salloc" to [265 x i8]*
  %"$msgobj_4875" = bitcast [265 x i8]* %"$msgobj_4875_salloc" to i8*
  store i8 6, i8* %"$msgobj_4875", align 1
  %"$msgobj_fname_4877" = getelementptr i8, i8* %"$msgobj_4875", i32 1
  %"$msgobj_fname_4878" = bitcast i8* %"$msgobj_fname_4877" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4876", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4878", align 8
  %"$msgobj_td_4879" = getelementptr i8, i8* %"$msgobj_4875", i32 17
  %"$msgobj_td_4880" = bitcast i8* %"$msgobj_td_4879" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4880", align 8
  %"$msgobj_v_4882" = getelementptr i8, i8* %"$msgobj_4875", i32 25
  %"$msgobj_v_4883" = bitcast i8* %"$msgobj_v_4882" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_4881", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_4883", align 8
  %"$msgobj_fname_4885" = getelementptr i8, i8* %"$msgobj_4875", i32 41
  %"$msgobj_fname_4886" = bitcast i8* %"$msgobj_fname_4885" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_4884", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_4886", align 8
  %"$msgobj_td_4887" = getelementptr i8, i8* %"$msgobj_4875", i32 57
  %"$msgobj_td_4888" = bitcast i8* %"$msgobj_td_4887" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_4888", align 8
  %"$msgobj_v_4889" = getelementptr i8, i8* %"$msgobj_4875", i32 65
  %"$msgobj_v_4890" = bitcast i8* %"$msgobj_v_4889" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_4890", align 1
  %"$msgobj_fname_4892" = getelementptr i8, i8* %"$msgobj_4875", i32 97
  %"$msgobj_fname_4893" = bitcast i8* %"$msgobj_fname_4892" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4891", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4893", align 8
  %"$msgobj_td_4894" = getelementptr i8, i8* %"$msgobj_4875", i32 113
  %"$msgobj_td_4895" = bitcast i8* %"$msgobj_td_4894" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4895", align 8
  %"$msgobj_v_4896" = getelementptr i8, i8* %"$msgobj_4875", i32 121
  %"$msgobj_v_4897" = bitcast i8* %"$msgobj_v_4896" to %String*
  store %String %label, %String* %"$msgobj_v_4897", align 8
  %"$msgobj_fname_4899" = getelementptr i8, i8* %"$msgobj_4875", i32 137
  %"$msgobj_fname_4900" = bitcast i8* %"$msgobj_fname_4899" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4898", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4900", align 8
  %"$msgobj_td_4901" = getelementptr i8, i8* %"$msgobj_4875", i32 153
  %"$msgobj_td_4902" = bitcast i8* %"$msgobj_td_4901" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4902", align 8
  %"$recordOwner_4903" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$msgobj_v_4904" = getelementptr i8, i8* %"$msgobj_4875", i32 161
  %"$msgobj_v_4905" = bitcast i8* %"$msgobj_v_4904" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4903", [20 x i8]* %"$msgobj_v_4905", align 1
  %"$msgobj_fname_4907" = getelementptr i8, i8* %"$msgobj_4875", i32 181
  %"$msgobj_fname_4908" = bitcast i8* %"$msgobj_fname_4907" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4906", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4908", align 8
  %"$msgobj_td_4909" = getelementptr i8, i8* %"$msgobj_4875", i32 197
  %"$msgobj_td_4910" = bitcast i8* %"$msgobj_td_4909" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_4910", align 8
  %"$msgobj_v_4911" = getelementptr i8, i8* %"$msgobj_4875", i32 205
  %"$msgobj_v_4912" = bitcast i8* %"$msgobj_v_4911" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4912", align 8
  %"$msgobj_fname_4914" = getelementptr i8, i8* %"$msgobj_4875", i32 221
  %"$msgobj_fname_4915" = bitcast i8* %"$msgobj_fname_4914" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4913", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4915", align 8
  %"$msgobj_td_4916" = getelementptr i8, i8* %"$msgobj_4875", i32 237
  %"$msgobj_td_4917" = bitcast i8* %"$msgobj_td_4916" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4917", align 8
  %"$msgobj_v_4918" = getelementptr i8, i8* %"$msgobj_4875", i32 245
  %"$msgobj_v_4919" = bitcast i8* %"$msgobj_v_4918" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4919", align 1
  store i8* %"$msgobj_4875", i8** %"$m_2", align 8
  %"$gasrem_4921" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4922" = icmp ugt i64 1, %"$gasrem_4921"
  br i1 %"$gascmp_4922", label %"$out_of_gas_4923", label %"$have_gas_4924"

"$out_of_gas_4923":                               ; preds = %"$have_gas_4873"
  call void @_out_of_gas()
  br label %"$have_gas_4924"

"$have_gas_4924":                                 ; preds = %"$out_of_gas_4923", %"$have_gas_4873"
  %"$consume_4925" = sub i64 %"$gasrem_4921", 1
  store i64 %"$consume_4925", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_108" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4926" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4927" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4926", 0
  %"$ud-registry.oneMsg_envptr_4928" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4926", 1
  %"$$m_2_4929" = load i8*, i8** %"$m_2", align 8
  %"$ud-registry.oneMsg_call_4930" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4927"(i8* %"$ud-registry.oneMsg_envptr_4928", i8* %"$$m_2_4929")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4930", %TName_List_Message** %"$ud-registry.oneMsg_108", align 8
  %"$$ud-registry.oneMsg_108_4931" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_108", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_108_4931", %TName_List_Message** %msgs9, align 8
  %"$msgs_4932" = load %TName_List_Message*, %TName_List_Message** %msgs9, align 8
  %"$$msgs_4932_4933" = bitcast %TName_List_Message* %"$msgs_4932" to i8*
  %"$_literal_cost_call_4934" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_4932_4933")
  %"$gasrem_4935" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4936" = icmp ugt i64 %"$_literal_cost_call_4934", %"$gasrem_4935"
  br i1 %"$gascmp_4936", label %"$out_of_gas_4937", label %"$have_gas_4938"

"$out_of_gas_4937":                               ; preds = %"$have_gas_4924"
  call void @_out_of_gas()
  br label %"$have_gas_4938"

"$have_gas_4938":                                 ; preds = %"$out_of_gas_4937", %"$have_gas_4924"
  %"$consume_4939" = sub i64 %"$gasrem_4935", %"$_literal_cost_call_4934"
  store i64 %"$consume_4939", i64* @_gasrem, align 8
  %"$execptr_load_4940" = load i8*, i8** @_execptr, align 8
  %"$msgs_4941" = load %TName_List_Message*, %TName_List_Message** %msgs9, align 8
  call void @_send(i8* %"$execptr_load_4940", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_4941")
  br label %"$matchsucc_4573"

"$empty_default_4577":                            ; preds = %"$have_gas_4571"
  br label %"$matchsucc_4573"

"$matchsucc_4573":                                ; preds = %"$have_gas_4938", %"$have_gas_4817", %"$empty_default_4577"
  ret void
}

define void @assign(i8* %0) {
entry:
  %"$_amount_4943" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4944" = bitcast i8* %"$_amount_4943" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4944", align 8
  %"$_origin_4945" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4946" = bitcast i8* %"$_origin_4945" to [20 x i8]*
  %"$_sender_4947" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4948" = bitcast i8* %"$_sender_4947" to [20 x i8]*
  %"$parent_4949" = getelementptr i8, i8* %0, i32 56
  %"$parent_4950" = bitcast i8* %"$parent_4949" to [32 x i8]*
  %"$label_4951" = getelementptr i8, i8* %0, i32 88
  %"$label_4952" = bitcast i8* %"$label_4951" to %String*
  %label = load %String, %String* %"$label_4952", align 8
  %"$owner_4953" = getelementptr i8, i8* %0, i32 104
  %"$owner_4954" = bitcast i8* %"$owner_4953" to [20 x i8]*
  call void @"$assign_4465"(%Uint128 %_amount, [20 x i8]* %"$_origin_4946", [20 x i8]* %"$_sender_4948", [32 x i8]* %"$parent_4950", %String %label, [20 x i8]* %"$owner_4954")
  ret void
}

define internal void @"$bestow_4955"(%Uint128 %_amount, [20 x i8]* %"$_origin_4956", [20 x i8]* %"$_sender_4957", %String %label, [20 x i8]* %"$owner_4958", [20 x i8]* %"$resolver_4959") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4956", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4957", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_4958", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_4959", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_4961" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_4962" = call i8* @_fetch_field(i8* %"$execptr_load_4961", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_4960", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i32 0, i8* null, i32 1)
  %"$currentAdmins_4963" = bitcast i8* %"$currentAdmins_call_4962" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_4963", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_4964" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_4964_4965" = bitcast %TName_List_ByStr20* %"$currentAdmins_4964" to i8*
  %"$_literal_cost_call_4966" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i8* %"$$currentAdmins_4964_4965")
  %"$gasadd_4967" = add i64 %"$_literal_cost_call_4966", 0
  %"$gasrem_4968" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4969" = icmp ugt i64 %"$gasadd_4967", %"$gasrem_4968"
  br i1 %"$gascmp_4969", label %"$out_of_gas_4970", label %"$have_gas_4971"

"$out_of_gas_4970":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4971"

"$have_gas_4971":                                 ; preds = %"$out_of_gas_4970", %entry
  %"$consume_4972" = sub i64 %"$gasrem_4968", %"$gasadd_4967"
  store i64 %"$consume_4972", i64* @_gasrem, align 8
  %"$gasrem_4973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4974" = icmp ugt i64 1, %"$gasrem_4973"
  br i1 %"$gascmp_4974", label %"$out_of_gas_4975", label %"$have_gas_4976"

"$out_of_gas_4975":                               ; preds = %"$have_gas_4971"
  call void @_out_of_gas()
  br label %"$have_gas_4976"

"$have_gas_4976":                                 ; preds = %"$out_of_gas_4975", %"$have_gas_4971"
  %"$consume_4977" = sub i64 %"$gasrem_4973", 1
  store i64 %"$consume_4977", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_4978" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4979" = icmp ugt i64 1, %"$gasrem_4978"
  br i1 %"$gascmp_4979", label %"$out_of_gas_4980", label %"$have_gas_4981"

"$out_of_gas_4980":                               ; preds = %"$have_gas_4976"
  call void @_out_of_gas()
  br label %"$have_gas_4981"

"$have_gas_4981":                                 ; preds = %"$out_of_gas_4980", %"$have_gas_4976"
  %"$consume_4982" = sub i64 %"$gasrem_4978", 1
  store i64 %"$consume_4982", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_132" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_4983" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_4984" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4983", 0
  %"$ud-registry.parentLabelToNode_envptr_4985" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4983", 1
  %"$ud-registry.parentLabelToNode_rootNode_4986" = alloca [32 x i8], align 1
  %"$rootNode_4987" = load [32 x i8], [32 x i8]* @_cparam_rootNode, align 1
  store [32 x i8] %"$rootNode_4987", [32 x i8]* %"$ud-registry.parentLabelToNode_rootNode_4986", align 1
  %"$ud-registry.parentLabelToNode_call_4988" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_4984"(i8* %"$ud-registry.parentLabelToNode_envptr_4985", [32 x i8]* %"$ud-registry.parentLabelToNode_rootNode_4986")
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_4988", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_132", align 8
  %"$ud-registry.parentLabelToNode_133" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_132_4989" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_132", align 8
  %"$$ud-registry.parentLabelToNode_132_fptr_4990" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_132_4989", 0
  %"$$ud-registry.parentLabelToNode_132_envptr_4991" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_132_4989", 1
  %"$$ud-registry.parentLabelToNode_132_retalloca_4992" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_132_fptr_4990"(i8* %"$$ud-registry.parentLabelToNode_132_envptr_4991", [32 x i8]* %"$$ud-registry.parentLabelToNode_132_retalloca_4992", %String %label)
  %"$$ud-registry.parentLabelToNode_132_ret_4993" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_132_retalloca_4992", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_132_ret_4993", [32 x i8]* %"$ud-registry.parentLabelToNode_133", align 1
  %"$$ud-registry.parentLabelToNode_133_4994" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_133", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_133_4994", [32 x i8]* %node, align 1
  %recordExists = alloca %TName_Bool*, align 8
  %"$indices_buf_4995_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4995_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4995_salloc_load", i64 32)
  %"$indices_buf_4995_salloc" = bitcast i8* %"$indices_buf_4995_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4995" = bitcast [32 x i8]* %"$indices_buf_4995_salloc" to i8*
  %"$node_4996" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4997" = getelementptr i8, i8* %"$indices_buf_4995", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4997" to [32 x i8]*
  store [32 x i8] %"$node_4996", [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4999" = load i8*, i8** @_execptr, align 8
  %"$recordExists_call_5000" = call i8* @_fetch_field(i8* %"$execptr_load_4999", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4998", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4995", i32 0)
  %"$recordExists_5001" = bitcast i8* %"$recordExists_call_5000" to %TName_Bool*
  store %TName_Bool* %"$recordExists_5001", %TName_Bool** %recordExists, align 8
  %"$recordExists_5002" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$$recordExists_5002_5003" = bitcast %TName_Bool* %"$recordExists_5002" to i8*
  %"$_literal_cost_call_5004" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321", i8* %"$$recordExists_5002_5003")
  %"$gasadd_5005" = add i64 %"$_literal_cost_call_5004", 0
  %"$gasadd_5006" = add i64 %"$gasadd_5005", 1
  %"$gasrem_5007" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5008" = icmp ugt i64 %"$gasadd_5006", %"$gasrem_5007"
  br i1 %"$gascmp_5008", label %"$out_of_gas_5009", label %"$have_gas_5010"

"$out_of_gas_5009":                               ; preds = %"$have_gas_4981"
  call void @_out_of_gas()
  br label %"$have_gas_5010"

"$have_gas_5010":                                 ; preds = %"$out_of_gas_5009", %"$have_gas_4981"
  %"$consume_5011" = sub i64 %"$gasrem_5007", %"$gasadd_5006"
  store i64 %"$consume_5011", i64* @_gasrem, align 8
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_5012_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5012_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5012_salloc_load", i64 32)
  %"$indices_buf_5012_salloc" = bitcast i8* %"$indices_buf_5012_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5012" = bitcast [32 x i8]* %"$indices_buf_5012_salloc" to i8*
  %"$node_5013" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5014" = getelementptr i8, i8* %"$indices_buf_5012", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_5014" to [32 x i8]*
  store [32 x i8] %"$node_5013", [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_5016" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_5017" = call i8* @_fetch_field(i8* %"$execptr_load_5016", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5015", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_5012", i32 1)
  %"$maybeRecord_5018" = bitcast i8* %"$maybeRecord_call_5017" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_5018", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_5019" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_5019_5020" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5019" to i8*
  %"$_literal_cost_call_5021" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_5019_5020")
  %"$gasadd_5022" = add i64 %"$_literal_cost_call_5021", 0
  %"$gasadd_5023" = add i64 %"$gasadd_5022", 1
  %"$gasrem_5024" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5025" = icmp ugt i64 %"$gasadd_5023", %"$gasrem_5024"
  br i1 %"$gascmp_5025", label %"$out_of_gas_5026", label %"$have_gas_5027"

"$out_of_gas_5026":                               ; preds = %"$have_gas_5010"
  call void @_out_of_gas()
  br label %"$have_gas_5027"

"$have_gas_5027":                                 ; preds = %"$out_of_gas_5026", %"$have_gas_5010"
  %"$consume_5028" = sub i64 %"$gasrem_5024", %"$gasadd_5023"
  store i64 %"$consume_5028", i64* @_gasrem, align 8
  %currentRegistrar = alloca [20 x i8], align 1
  %"$execptr_load_5030" = load i8*, i8** @_execptr, align 8
  %"$currentRegistrar_call_5031" = call i8* @_fetch_field(i8* %"$execptr_load_5030", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_5029", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i32 0, i8* null, i32 1)
  %"$currentRegistrar_5032" = bitcast i8* %"$currentRegistrar_call_5031" to [20 x i8]*
  %"$currentRegistrar_5033" = load [20 x i8], [20 x i8]* %"$currentRegistrar_5032", align 1
  store [20 x i8] %"$currentRegistrar_5033", [20 x i8]* %currentRegistrar, align 1
  %"$_literal_cost_currentRegistrar_5034" = alloca [20 x i8], align 1
  %"$currentRegistrar_5035" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5035", [20 x i8]* %"$_literal_cost_currentRegistrar_5034", align 1
  %"$$_literal_cost_currentRegistrar_5034_5036" = bitcast [20 x i8]* %"$_literal_cost_currentRegistrar_5034" to i8*
  %"$_literal_cost_call_5037" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i8* %"$$_literal_cost_currentRegistrar_5034_5036")
  %"$gasadd_5038" = add i64 %"$_literal_cost_call_5037", 0
  %"$gasrem_5039" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5040" = icmp ugt i64 %"$gasadd_5038", %"$gasrem_5039"
  br i1 %"$gascmp_5040", label %"$out_of_gas_5041", label %"$have_gas_5042"

"$out_of_gas_5041":                               ; preds = %"$have_gas_5027"
  call void @_out_of_gas()
  br label %"$have_gas_5042"

"$have_gas_5042":                                 ; preds = %"$out_of_gas_5041", %"$have_gas_5027"
  %"$consume_5043" = sub i64 %"$gasrem_5039", %"$gasadd_5038"
  store i64 %"$consume_5043", i64* @_gasrem, align 8
  %"$gasrem_5044" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5045" = icmp ugt i64 1, %"$gasrem_5044"
  br i1 %"$gascmp_5045", label %"$out_of_gas_5046", label %"$have_gas_5047"

"$out_of_gas_5046":                               ; preds = %"$have_gas_5042"
  call void @_out_of_gas()
  br label %"$have_gas_5047"

"$have_gas_5047":                                 ; preds = %"$out_of_gas_5046", %"$have_gas_5042"
  %"$consume_5048" = sub i64 %"$gasrem_5044", 1
  store i64 %"$consume_5048", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_5049" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5050" = icmp ugt i64 1, %"$gasrem_5049"
  br i1 %"$gascmp_5050", label %"$out_of_gas_5051", label %"$have_gas_5052"

"$out_of_gas_5051":                               ; preds = %"$have_gas_5047"
  call void @_out_of_gas()
  br label %"$have_gas_5052"

"$have_gas_5052":                                 ; preds = %"$out_of_gas_5051", %"$have_gas_5047"
  %"$consume_5053" = sub i64 %"$gasrem_5049", 1
  store i64 %"$consume_5053", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_5054" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5055" = icmp ugt i64 1, %"$gasrem_5054"
  br i1 %"$gascmp_5055", label %"$out_of_gas_5056", label %"$have_gas_5057"

"$out_of_gas_5056":                               ; preds = %"$have_gas_5052"
  call void @_out_of_gas()
  br label %"$have_gas_5057"

"$have_gas_5057":                                 ; preds = %"$out_of_gas_5056", %"$have_gas_5052"
  %"$consume_5058" = sub i64 %"$gasrem_5054", 1
  store i64 %"$consume_5058", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_121" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_5059" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_5060" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5059", 0
  %"$ud-registry.listByStr20Contains_envptr_5061" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5059", 1
  %"$currentAdmins_5062" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_5063" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_5060"(i8* %"$ud-registry.listByStr20Contains_envptr_5061", %TName_List_ByStr20* %"$currentAdmins_5062")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_5063", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_121", align 8
  %"$ud-registry.listByStr20Contains_122" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_121_5064" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_121", align 8
  %"$$ud-registry.listByStr20Contains_121_fptr_5065" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_121_5064", 0
  %"$$ud-registry.listByStr20Contains_121_envptr_5066" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_121_5064", 1
  %"$$ud-registry.listByStr20Contains_121__sender_5067" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_121__sender_5067", align 1
  %"$$ud-registry.listByStr20Contains_121_call_5068" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_121_fptr_5065"(i8* %"$$ud-registry.listByStr20Contains_121_envptr_5066", [20 x i8]* %"$$ud-registry.listByStr20Contains_121__sender_5067")
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_121_call_5068", %TName_Bool** %"$ud-registry.listByStr20Contains_122", align 8
  %"$$ud-registry.listByStr20Contains_122_5069" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_122", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_122_5069", %TName_Bool** %isSenderAdmin, align 8
  %"$gasrem_5070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5071" = icmp ugt i64 1, %"$gasrem_5070"
  br i1 %"$gascmp_5071", label %"$out_of_gas_5072", label %"$have_gas_5073"

"$out_of_gas_5072":                               ; preds = %"$have_gas_5057"
  call void @_out_of_gas()
  br label %"$have_gas_5073"

"$have_gas_5073":                                 ; preds = %"$out_of_gas_5072", %"$have_gas_5057"
  %"$consume_5074" = sub i64 %"$gasrem_5070", 1
  store i64 %"$consume_5074", i64* @_gasrem, align 8
  %isSenderRegistrar = alloca %TName_Bool*, align 8
  %"$gasrem_5075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5076" = icmp ugt i64 20, %"$gasrem_5075"
  br i1 %"$gascmp_5076", label %"$out_of_gas_5077", label %"$have_gas_5078"

"$out_of_gas_5077":                               ; preds = %"$have_gas_5073"
  call void @_out_of_gas()
  br label %"$have_gas_5078"

"$have_gas_5078":                                 ; preds = %"$out_of_gas_5077", %"$have_gas_5073"
  %"$consume_5079" = sub i64 %"$gasrem_5075", 20
  store i64 %"$consume_5079", i64* @_gasrem, align 8
  %"$execptr_load_5080" = load i8*, i8** @_execptr, align 8
  %"$eq_currentRegistrar_5081" = alloca [20 x i8], align 1
  %"$currentRegistrar_5082" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5082", [20 x i8]* %"$eq_currentRegistrar_5081", align 1
  %"$$eq_currentRegistrar_5081_5083" = bitcast [20 x i8]* %"$eq_currentRegistrar_5081" to i8*
  %"$eq__sender_5084" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_5084", align 1
  %"$$eq__sender_5084_5085" = bitcast [20 x i8]* %"$eq__sender_5084" to i8*
  %"$eq_call_5086" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5080", i32 20, i8* %"$$eq_currentRegistrar_5081_5083", i8* %"$$eq__sender_5084_5085")
  store %TName_Bool* %"$eq_call_5086", %TName_Bool** %isSenderRegistrar, align 8
  %"$gasrem_5088" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5089" = icmp ugt i64 1, %"$gasrem_5088"
  br i1 %"$gascmp_5089", label %"$out_of_gas_5090", label %"$have_gas_5091"

"$out_of_gas_5090":                               ; preds = %"$have_gas_5078"
  call void @_out_of_gas()
  br label %"$have_gas_5091"

"$have_gas_5091":                                 ; preds = %"$out_of_gas_5090", %"$have_gas_5078"
  %"$consume_5092" = sub i64 %"$gasrem_5088", 1
  store i64 %"$consume_5092", i64* @_gasrem, align 8
  %isOkSender = alloca %TName_Bool*, align 8
  %"$gasrem_5093" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5094" = icmp ugt i64 1, %"$gasrem_5093"
  br i1 %"$gascmp_5094", label %"$out_of_gas_5095", label %"$have_gas_5096"

"$out_of_gas_5095":                               ; preds = %"$have_gas_5091"
  call void @_out_of_gas()
  br label %"$have_gas_5096"

"$have_gas_5096":                                 ; preds = %"$out_of_gas_5095", %"$have_gas_5091"
  %"$consume_5097" = sub i64 %"$gasrem_5093", 1
  store i64 %"$consume_5097", i64* @_gasrem, align 8
  %"$BoolUtils.orb_123" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_5098" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_5099" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5098", 0
  %"$BoolUtils.orb_envptr_5100" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5098", 1
  %"$isSenderRegistrar_5101" = load %TName_Bool*, %TName_Bool** %isSenderRegistrar, align 8
  %"$BoolUtils.orb_call_5102" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_5099"(i8* %"$BoolUtils.orb_envptr_5100", %TName_Bool* %"$isSenderRegistrar_5101")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_5102", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_123", align 8
  %"$BoolUtils.orb_124" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_123_5103" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_123", align 8
  %"$$BoolUtils.orb_123_fptr_5104" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_123_5103", 0
  %"$$BoolUtils.orb_123_envptr_5105" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_123_5103", 1
  %"$isSenderAdmin_5106" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$$BoolUtils.orb_123_call_5107" = call %TName_Bool* %"$$BoolUtils.orb_123_fptr_5104"(i8* %"$$BoolUtils.orb_123_envptr_5105", %TName_Bool* %"$isSenderAdmin_5106")
  store %TName_Bool* %"$$BoolUtils.orb_123_call_5107", %TName_Bool** %"$BoolUtils.orb_124", align 8
  %"$$BoolUtils.orb_124_5108" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_124", align 8
  store %TName_Bool* %"$$BoolUtils.orb_124_5108", %TName_Bool** %isOkSender, align 8
  %"$gasrem_5109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5110" = icmp ugt i64 1, %"$gasrem_5109"
  br i1 %"$gascmp_5110", label %"$out_of_gas_5111", label %"$have_gas_5112"

"$out_of_gas_5111":                               ; preds = %"$have_gas_5096"
  call void @_out_of_gas()
  br label %"$have_gas_5112"

"$have_gas_5112":                                 ; preds = %"$out_of_gas_5111", %"$have_gas_5096"
  %"$consume_5113" = sub i64 %"$gasrem_5109", 1
  store i64 %"$consume_5113", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_5114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5115" = icmp ugt i64 1, %"$gasrem_5114"
  br i1 %"$gascmp_5115", label %"$out_of_gas_5116", label %"$have_gas_5117"

"$out_of_gas_5116":                               ; preds = %"$have_gas_5112"
  call void @_out_of_gas()
  br label %"$have_gas_5117"

"$have_gas_5117":                                 ; preds = %"$out_of_gas_5116", %"$have_gas_5112"
  %"$consume_5118" = sub i64 %"$gasrem_5114", 1
  store i64 %"$consume_5118", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_125" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_5119" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_5120" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5119", 0
  %"$ud-registry.recordMemberOwner_envptr_5121" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5119", 1
  %"$maybeRecord_5122" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_5123" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_5120"(i8* %"$ud-registry.recordMemberOwner_envptr_5121", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5123", %TName_Option_ud-registry.Record* %"$maybeRecord_5122")
  %"$ud-registry.recordMemberOwner_ret_5124" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5123", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_5124", [20 x i8]* %"$ud-registry.recordMemberOwner_125", align 1
  %"$$ud-registry.recordMemberOwner_125_5125" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_125", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_125_5125", [20 x i8]* %recordOwner, align 1
  %"$gasrem_5126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5127" = icmp ugt i64 1, %"$gasrem_5126"
  br i1 %"$gascmp_5127", label %"$out_of_gas_5128", label %"$have_gas_5129"

"$out_of_gas_5128":                               ; preds = %"$have_gas_5117"
  call void @_out_of_gas()
  br label %"$have_gas_5129"

"$have_gas_5129":                                 ; preds = %"$out_of_gas_5128", %"$have_gas_5117"
  %"$consume_5130" = sub i64 %"$gasrem_5126", 1
  store i64 %"$consume_5130", i64* @_gasrem, align 8
  %recordIsUnowned = alloca %TName_Bool*, align 8
  %"$gasrem_5131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5132" = icmp ugt i64 20, %"$gasrem_5131"
  br i1 %"$gascmp_5132", label %"$out_of_gas_5133", label %"$have_gas_5134"

"$out_of_gas_5133":                               ; preds = %"$have_gas_5129"
  call void @_out_of_gas()
  br label %"$have_gas_5134"

"$have_gas_5134":                                 ; preds = %"$out_of_gas_5133", %"$have_gas_5129"
  %"$consume_5135" = sub i64 %"$gasrem_5131", 20
  store i64 %"$consume_5135", i64* @_gasrem, align 8
  %"$execptr_load_5136" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5137" = alloca [20 x i8], align 1
  %"$recordOwner_5138" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5138", [20 x i8]* %"$eq_recordOwner_5137", align 1
  %"$$eq_recordOwner_5137_5139" = bitcast [20 x i8]* %"$eq_recordOwner_5137" to i8*
  %"$eq_ud-registry.zeroByStr20_5140" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5141" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5141", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5140", align 1
  %"$$eq_ud-registry.zeroByStr20_5140_5142" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5140" to i8*
  %"$eq_call_5143" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5136", i32 20, i8* %"$$eq_recordOwner_5137_5139", i8* %"$$eq_ud-registry.zeroByStr20_5140_5142")
  store %TName_Bool* %"$eq_call_5143", %TName_Bool** %recordIsUnowned, align 8
  %"$gasrem_5145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5146" = icmp ugt i64 1, %"$gasrem_5145"
  br i1 %"$gascmp_5146", label %"$out_of_gas_5147", label %"$have_gas_5148"

"$out_of_gas_5147":                               ; preds = %"$have_gas_5134"
  call void @_out_of_gas()
  br label %"$have_gas_5148"

"$have_gas_5148":                                 ; preds = %"$out_of_gas_5147", %"$have_gas_5134"
  %"$consume_5149" = sub i64 %"$gasrem_5145", 1
  store i64 %"$consume_5149", i64* @_gasrem, align 8
  %recordIsOwnedByRegistrar = alloca %TName_Bool*, align 8
  %"$gasrem_5150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5151" = icmp ugt i64 20, %"$gasrem_5150"
  br i1 %"$gascmp_5151", label %"$out_of_gas_5152", label %"$have_gas_5153"

"$out_of_gas_5152":                               ; preds = %"$have_gas_5148"
  call void @_out_of_gas()
  br label %"$have_gas_5153"

"$have_gas_5153":                                 ; preds = %"$out_of_gas_5152", %"$have_gas_5148"
  %"$consume_5154" = sub i64 %"$gasrem_5150", 20
  store i64 %"$consume_5154", i64* @_gasrem, align 8
  %"$execptr_load_5155" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5156" = alloca [20 x i8], align 1
  %"$recordOwner_5157" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5157", [20 x i8]* %"$eq_recordOwner_5156", align 1
  %"$$eq_recordOwner_5156_5158" = bitcast [20 x i8]* %"$eq_recordOwner_5156" to i8*
  %"$eq_currentRegistrar_5159" = alloca [20 x i8], align 1
  %"$currentRegistrar_5160" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5160", [20 x i8]* %"$eq_currentRegistrar_5159", align 1
  %"$$eq_currentRegistrar_5159_5161" = bitcast [20 x i8]* %"$eq_currentRegistrar_5159" to i8*
  %"$eq_call_5162" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5155", i32 20, i8* %"$$eq_recordOwner_5156_5158", i8* %"$$eq_currentRegistrar_5159_5161")
  store %TName_Bool* %"$eq_call_5162", %TName_Bool** %recordIsOwnedByRegistrar, align 8
  %"$gasrem_5164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5165" = icmp ugt i64 1, %"$gasrem_5164"
  br i1 %"$gascmp_5165", label %"$out_of_gas_5166", label %"$have_gas_5167"

"$out_of_gas_5166":                               ; preds = %"$have_gas_5153"
  call void @_out_of_gas()
  br label %"$have_gas_5167"

"$have_gas_5167":                                 ; preds = %"$out_of_gas_5166", %"$have_gas_5153"
  %"$consume_5168" = sub i64 %"$gasrem_5164", 1
  store i64 %"$consume_5168", i64* @_gasrem, align 8
  %isRegistrarSenderAndOwned = alloca %TName_Bool*, align 8
  %"$gasrem_5169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5170" = icmp ugt i64 1, %"$gasrem_5169"
  br i1 %"$gascmp_5170", label %"$out_of_gas_5171", label %"$have_gas_5172"

"$out_of_gas_5171":                               ; preds = %"$have_gas_5167"
  call void @_out_of_gas()
  br label %"$have_gas_5172"

"$have_gas_5172":                                 ; preds = %"$out_of_gas_5171", %"$have_gas_5167"
  %"$consume_5173" = sub i64 %"$gasrem_5169", 1
  store i64 %"$consume_5173", i64* @_gasrem, align 8
  %"$BoolUtils.andb_126" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5174" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5175" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5174", 0
  %"$BoolUtils.andb_envptr_5176" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5174", 1
  %"$recordIsOwnedByRegistrar_5177" = load %TName_Bool*, %TName_Bool** %recordIsOwnedByRegistrar, align 8
  %"$BoolUtils.andb_call_5178" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5175"(i8* %"$BoolUtils.andb_envptr_5176", %TName_Bool* %"$recordIsOwnedByRegistrar_5177")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5178", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_126", align 8
  %"$BoolUtils.andb_127" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_126_5179" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_126", align 8
  %"$$BoolUtils.andb_126_fptr_5180" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_126_5179", 0
  %"$$BoolUtils.andb_126_envptr_5181" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_126_5179", 1
  %"$isSenderRegistrar_5182" = load %TName_Bool*, %TName_Bool** %isSenderRegistrar, align 8
  %"$$BoolUtils.andb_126_call_5183" = call %TName_Bool* %"$$BoolUtils.andb_126_fptr_5180"(i8* %"$$BoolUtils.andb_126_envptr_5181", %TName_Bool* %"$isSenderRegistrar_5182")
  store %TName_Bool* %"$$BoolUtils.andb_126_call_5183", %TName_Bool** %"$BoolUtils.andb_127", align 8
  %"$$BoolUtils.andb_127_5184" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_127", align 8
  store %TName_Bool* %"$$BoolUtils.andb_127_5184", %TName_Bool** %isRegistrarSenderAndOwned, align 8
  %"$gasrem_5185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5186" = icmp ugt i64 1, %"$gasrem_5185"
  br i1 %"$gascmp_5186", label %"$out_of_gas_5187", label %"$have_gas_5188"

"$out_of_gas_5187":                               ; preds = %"$have_gas_5172"
  call void @_out_of_gas()
  br label %"$have_gas_5188"

"$have_gas_5188":                                 ; preds = %"$out_of_gas_5187", %"$have_gas_5172"
  %"$consume_5189" = sub i64 %"$gasrem_5185", 1
  store i64 %"$consume_5189", i64* @_gasrem, align 8
  %isOkRecordOwner = alloca %TName_Bool*, align 8
  %"$gasrem_5190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5191" = icmp ugt i64 1, %"$gasrem_5190"
  br i1 %"$gascmp_5191", label %"$out_of_gas_5192", label %"$have_gas_5193"

"$out_of_gas_5192":                               ; preds = %"$have_gas_5188"
  call void @_out_of_gas()
  br label %"$have_gas_5193"

"$have_gas_5193":                                 ; preds = %"$out_of_gas_5192", %"$have_gas_5188"
  %"$consume_5194" = sub i64 %"$gasrem_5190", 1
  store i64 %"$consume_5194", i64* @_gasrem, align 8
  %"$BoolUtils.orb_128" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_5195" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_5196" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5195", 0
  %"$BoolUtils.orb_envptr_5197" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5195", 1
  %"$recordIsUnowned_5198" = load %TName_Bool*, %TName_Bool** %recordIsUnowned, align 8
  %"$BoolUtils.orb_call_5199" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_5196"(i8* %"$BoolUtils.orb_envptr_5197", %TName_Bool* %"$recordIsUnowned_5198")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_5199", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_128", align 8
  %"$BoolUtils.orb_129" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_128_5200" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_128", align 8
  %"$$BoolUtils.orb_128_fptr_5201" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_128_5200", 0
  %"$$BoolUtils.orb_128_envptr_5202" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_128_5200", 1
  %"$isRegistrarSenderAndOwned_5203" = load %TName_Bool*, %TName_Bool** %isRegistrarSenderAndOwned, align 8
  %"$$BoolUtils.orb_128_call_5204" = call %TName_Bool* %"$$BoolUtils.orb_128_fptr_5201"(i8* %"$$BoolUtils.orb_128_envptr_5202", %TName_Bool* %"$isRegistrarSenderAndOwned_5203")
  store %TName_Bool* %"$$BoolUtils.orb_128_call_5204", %TName_Bool** %"$BoolUtils.orb_129", align 8
  %"$$BoolUtils.orb_129_5205" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_129", align 8
  store %TName_Bool* %"$$BoolUtils.orb_129_5205", %TName_Bool** %isOkRecordOwner, align 8
  %"$gasrem_5206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5207" = icmp ugt i64 1, %"$gasrem_5206"
  br i1 %"$gascmp_5207", label %"$out_of_gas_5208", label %"$have_gas_5209"

"$out_of_gas_5208":                               ; preds = %"$have_gas_5193"
  call void @_out_of_gas()
  br label %"$have_gas_5209"

"$have_gas_5209":                                 ; preds = %"$out_of_gas_5208", %"$have_gas_5193"
  %"$consume_5210" = sub i64 %"$gasrem_5206", 1
  store i64 %"$consume_5210", i64* @_gasrem, align 8
  %"$BoolUtils.andb_130" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5211" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5212" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5211", 0
  %"$BoolUtils.andb_envptr_5213" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5211", 1
  %"$isOkSender_5214" = load %TName_Bool*, %TName_Bool** %isOkSender, align 8
  %"$BoolUtils.andb_call_5215" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5212"(i8* %"$BoolUtils.andb_envptr_5213", %TName_Bool* %"$isOkSender_5214")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5215", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_130", align 8
  %"$BoolUtils.andb_131" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_130_5216" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_130", align 8
  %"$$BoolUtils.andb_130_fptr_5217" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_130_5216", 0
  %"$$BoolUtils.andb_130_envptr_5218" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_130_5216", 1
  %"$isOkRecordOwner_5219" = load %TName_Bool*, %TName_Bool** %isOkRecordOwner, align 8
  %"$$BoolUtils.andb_130_call_5220" = call %TName_Bool* %"$$BoolUtils.andb_130_fptr_5217"(i8* %"$$BoolUtils.andb_130_envptr_5218", %TName_Bool* %"$isOkRecordOwner_5219")
  store %TName_Bool* %"$$BoolUtils.andb_130_call_5220", %TName_Bool** %"$BoolUtils.andb_131", align 8
  %"$$BoolUtils.andb_131_5221" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_131", align 8
  store %TName_Bool* %"$$BoolUtils.andb_131_5221", %TName_Bool** %isOk, align 8
  %"$gasrem_5222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5223" = icmp ugt i64 2, %"$gasrem_5222"
  br i1 %"$gascmp_5223", label %"$out_of_gas_5224", label %"$have_gas_5225"

"$out_of_gas_5224":                               ; preds = %"$have_gas_5209"
  call void @_out_of_gas()
  br label %"$have_gas_5225"

"$have_gas_5225":                                 ; preds = %"$out_of_gas_5224", %"$have_gas_5209"
  %"$consume_5226" = sub i64 %"$gasrem_5222", 2
  store i64 %"$consume_5226", i64* @_gasrem, align 8
  %"$isOk_5228" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5229" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5228", i32 0, i32 0
  %"$isOk_tag_5230" = load i8, i8* %"$isOk_tag_5229", align 1
  switch i8 %"$isOk_tag_5230", label %"$empty_default_5231" [
    i8 0, label %"$True_5232"
    i8 1, label %"$False_5345"
  ]

"$True_5232":                                     ; preds = %"$have_gas_5225"
  %"$isOk_5233" = bitcast %TName_Bool* %"$isOk_5228" to %CName_True*
  %"$gasrem_5234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5235" = icmp ugt i64 2, %"$gasrem_5234"
  br i1 %"$gascmp_5235", label %"$out_of_gas_5236", label %"$have_gas_5237"

"$out_of_gas_5236":                               ; preds = %"$True_5232"
  call void @_out_of_gas()
  br label %"$have_gas_5237"

"$have_gas_5237":                                 ; preds = %"$out_of_gas_5236", %"$True_5232"
  %"$consume_5238" = sub i64 %"$gasrem_5234", 2
  store i64 %"$consume_5238", i64* @_gasrem, align 8
  %"$recordExists_5240" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$recordExists_tag_5241" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$recordExists_5240", i32 0, i32 0
  %"$recordExists_tag_5242" = load i8, i8* %"$recordExists_tag_5241", align 1
  switch i8 %"$recordExists_tag_5242", label %"$default_5243" [
    i8 1, label %"$False_5244"
  ]

"$False_5244":                                    ; preds = %"$have_gas_5237"
  %"$recordExists_5245" = bitcast %TName_Bool* %"$recordExists_5240" to %CName_False*
  %"$gasrem_5246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5247" = icmp ugt i64 1, %"$gasrem_5246"
  br i1 %"$gascmp_5247", label %"$out_of_gas_5248", label %"$have_gas_5249"

"$out_of_gas_5248":                               ; preds = %"$False_5244"
  call void @_out_of_gas()
  br label %"$have_gas_5249"

"$have_gas_5249":                                 ; preds = %"$out_of_gas_5248", %"$False_5244"
  %"$consume_5250" = sub i64 %"$gasrem_5246", 1
  store i64 %"$consume_5250", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5252" = icmp ugt i64 1, %"$gasrem_5251"
  br i1 %"$gascmp_5252", label %"$out_of_gas_5253", label %"$have_gas_5254"

"$out_of_gas_5253":                               ; preds = %"$have_gas_5249"
  call void @_out_of_gas()
  br label %"$have_gas_5254"

"$have_gas_5254":                                 ; preds = %"$out_of_gas_5253", %"$have_gas_5249"
  %"$consume_5255" = sub i64 %"$gasrem_5251", 1
  store i64 %"$consume_5255", i64* @_gasrem, align 8
  %"$ud-registry.eNewDomain_118" = alloca { i8* (i8*, %String)*, i8* }, align 8
  %"$ud-registry.eNewDomain_5256" = load { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain, align 8
  %"$ud-registry.eNewDomain_fptr_5257" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_5256", 0
  %"$ud-registry.eNewDomain_envptr_5258" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_5256", 1
  %"$ud-registry.eNewDomain_rootNode_5259" = alloca [32 x i8], align 1
  %"$rootNode_5260" = load [32 x i8], [32 x i8]* @_cparam_rootNode, align 1
  store [32 x i8] %"$rootNode_5260", [32 x i8]* %"$ud-registry.eNewDomain_rootNode_5259", align 1
  %"$ud-registry.eNewDomain_call_5261" = call { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_fptr_5257"(i8* %"$ud-registry.eNewDomain_envptr_5258", [32 x i8]* %"$ud-registry.eNewDomain_rootNode_5259")
  store { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_call_5261", { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_118", align 8
  %"$ud-registry.eNewDomain_119" = alloca i8*, align 8
  %"$$ud-registry.eNewDomain_118_5262" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_118", align 8
  %"$$ud-registry.eNewDomain_118_fptr_5263" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_118_5262", 0
  %"$$ud-registry.eNewDomain_118_envptr_5264" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_118_5262", 1
  %"$$ud-registry.eNewDomain_118_call_5265" = call i8* %"$$ud-registry.eNewDomain_118_fptr_5263"(i8* %"$$ud-registry.eNewDomain_118_envptr_5264", %String %label)
  store i8* %"$$ud-registry.eNewDomain_118_call_5265", i8** %"$ud-registry.eNewDomain_119", align 8
  %"$$ud-registry.eNewDomain_119_5266" = load i8*, i8** %"$ud-registry.eNewDomain_119", align 8
  store i8* %"$$ud-registry.eNewDomain_119_5266", i8** %e, align 8
  %"$e_5267" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5269" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5267")
  %"$gasrem_5270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5271" = icmp ugt i64 %"$_literal_cost_call_5269", %"$gasrem_5270"
  br i1 %"$gascmp_5271", label %"$out_of_gas_5272", label %"$have_gas_5273"

"$out_of_gas_5272":                               ; preds = %"$have_gas_5254"
  call void @_out_of_gas()
  br label %"$have_gas_5273"

"$have_gas_5273":                                 ; preds = %"$out_of_gas_5272", %"$have_gas_5254"
  %"$consume_5274" = sub i64 %"$gasrem_5270", %"$_literal_cost_call_5269"
  store i64 %"$consume_5274", i64* @_gasrem, align 8
  %"$execptr_load_5275" = load i8*, i8** @_execptr, align 8
  %"$e_5276" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5275", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5276")
  br label %"$matchsucc_5239"

"$default_5243":                                  ; preds = %"$have_gas_5237"
  br label %"$joinp_8"

"$joinp_8":                                       ; preds = %"$default_5243"
  br label %"$matchsucc_5239"

"$matchsucc_5239":                                ; preds = %"$have_gas_5273", %"$joinp_8"
  %"$gasrem_5277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5278" = icmp ugt i64 1, %"$gasrem_5277"
  br i1 %"$gascmp_5278", label %"$out_of_gas_5279", label %"$have_gas_5280"

"$out_of_gas_5279":                               ; preds = %"$matchsucc_5239"
  call void @_out_of_gas()
  br label %"$have_gas_5280"

"$have_gas_5280":                                 ; preds = %"$out_of_gas_5279", %"$matchsucc_5239"
  %"$consume_5281" = sub i64 %"$gasrem_5277", 1
  store i64 %"$consume_5281", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_5282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5283" = icmp ugt i64 1, %"$gasrem_5282"
  br i1 %"$gascmp_5283", label %"$out_of_gas_5284", label %"$have_gas_5285"

"$out_of_gas_5284":                               ; preds = %"$have_gas_5280"
  call void @_out_of_gas()
  br label %"$have_gas_5285"

"$have_gas_5285":                                 ; preds = %"$out_of_gas_5284", %"$have_gas_5280"
  %"$consume_5286" = sub i64 %"$gasrem_5282", 1
  store i64 %"$consume_5286", i64* @_gasrem, align 8
  %"$adtval_5287_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_5287_salloc" = call i8* @_salloc(i8* %"$adtval_5287_load", i64 41)
  %"$adtval_5287" = bitcast i8* %"$adtval_5287_salloc" to %CName_ud-registry.Record*
  %"$adtgep_5288" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5287", i32 0, i32 0
  store i8 0, i8* %"$adtgep_5288", align 1
  %"$adtgep_5289" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5287", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_5289", align 1
  %"$adtgep_5290" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5287", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_5290", align 1
  %"$adtptr_5291" = bitcast %CName_ud-registry.Record* %"$adtval_5287" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_5291", %TName_ud-registry.Record** %newRecord, align 8
  %"$newRecord_5292" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_5292_5293" = bitcast %TName_ud-registry.Record* %"$newRecord_5292" to i8*
  %"$_literal_cost_call_5294" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", i8* %"$$newRecord_5292_5293")
  %"$gasadd_5295" = add i64 %"$_literal_cost_call_5294", 1
  %"$gasrem_5296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5297" = icmp ugt i64 %"$gasadd_5295", %"$gasrem_5296"
  br i1 %"$gascmp_5297", label %"$out_of_gas_5298", label %"$have_gas_5299"

"$out_of_gas_5298":                               ; preds = %"$have_gas_5285"
  call void @_out_of_gas()
  br label %"$have_gas_5299"

"$have_gas_5299":                                 ; preds = %"$out_of_gas_5298", %"$have_gas_5285"
  %"$consume_5300" = sub i64 %"$gasrem_5296", %"$gasadd_5295"
  store i64 %"$consume_5300", i64* @_gasrem, align 8
  %"$indices_buf_5301_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5301_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5301_salloc_load", i64 32)
  %"$indices_buf_5301_salloc" = bitcast i8* %"$indices_buf_5301_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5301" = bitcast [32 x i8]* %"$indices_buf_5301_salloc" to i8*
  %"$node_5302" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5303" = getelementptr i8, i8* %"$indices_buf_5301", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_5303" to [32 x i8]*
  store [32 x i8] %"$node_5302", [32 x i8]* %indices_cast2, align 1
  %"$execptr_load_5304" = load i8*, i8** @_execptr, align 8
  %"$newRecord_5306" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_5307" = bitcast %TName_ud-registry.Record* %"$newRecord_5306" to i8*
  call void @_update_field(i8* %"$execptr_load_5304", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5305", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_5301", i8* %"$update_value_5307")
  %"$gasrem_5308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5309" = icmp ugt i64 1, %"$gasrem_5308"
  br i1 %"$gascmp_5309", label %"$out_of_gas_5310", label %"$have_gas_5311"

"$out_of_gas_5310":                               ; preds = %"$have_gas_5299"
  call void @_out_of_gas()
  br label %"$have_gas_5311"

"$have_gas_5311":                                 ; preds = %"$out_of_gas_5310", %"$have_gas_5299"
  %"$consume_5312" = sub i64 %"$gasrem_5308", 1
  store i64 %"$consume_5312", i64* @_gasrem, align 8
  %e3 = alloca i8*, align 8
  %"$gasrem_5313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5314" = icmp ugt i64 1, %"$gasrem_5313"
  br i1 %"$gascmp_5314", label %"$out_of_gas_5315", label %"$have_gas_5316"

"$out_of_gas_5315":                               ; preds = %"$have_gas_5311"
  call void @_out_of_gas()
  br label %"$have_gas_5316"

"$have_gas_5316":                                 ; preds = %"$out_of_gas_5315", %"$have_gas_5311"
  %"$consume_5317" = sub i64 %"$gasrem_5313", 1
  store i64 %"$consume_5317", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_115" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_5318" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_5319" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5318", 0
  %"$ud-registry.eConfigured_envptr_5320" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5318", 1
  %"$ud-registry.eConfigured_node_5321" = alloca [32 x i8], align 1
  %"$node_5322" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_5322", [32 x i8]* %"$ud-registry.eConfigured_node_5321", align 1
  %"$ud-registry.eConfigured_call_5323" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_5319"(i8* %"$ud-registry.eConfigured_envptr_5320", [32 x i8]* %"$ud-registry.eConfigured_node_5321")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_5323", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_115", align 8
  %"$ud-registry.eConfigured_116" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_115_5324" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_115", align 8
  %"$$ud-registry.eConfigured_115_fptr_5325" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_115_5324", 0
  %"$$ud-registry.eConfigured_115_envptr_5326" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_115_5324", 1
  %"$$ud-registry.eConfigured_115_owner_5327" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_115_owner_5327", align 1
  %"$$ud-registry.eConfigured_115_call_5328" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_115_fptr_5325"(i8* %"$$ud-registry.eConfigured_115_envptr_5326", [20 x i8]* %"$$ud-registry.eConfigured_115_owner_5327")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_115_call_5328", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_116", align 8
  %"$ud-registry.eConfigured_117" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_116_5329" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_116", align 8
  %"$$ud-registry.eConfigured_116_fptr_5330" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_116_5329", 0
  %"$$ud-registry.eConfigured_116_envptr_5331" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_116_5329", 1
  %"$$ud-registry.eConfigured_116_resolver_5332" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_116_resolver_5332", align 1
  %"$$ud-registry.eConfigured_116_call_5333" = call i8* %"$$ud-registry.eConfigured_116_fptr_5330"(i8* %"$$ud-registry.eConfigured_116_envptr_5331", [20 x i8]* %"$$ud-registry.eConfigured_116_resolver_5332")
  store i8* %"$$ud-registry.eConfigured_116_call_5333", i8** %"$ud-registry.eConfigured_117", align 8
  %"$$ud-registry.eConfigured_117_5334" = load i8*, i8** %"$ud-registry.eConfigured_117", align 8
  store i8* %"$$ud-registry.eConfigured_117_5334", i8** %e3, align 8
  %"$e_5335" = load i8*, i8** %e3, align 8
  %"$_literal_cost_call_5337" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5335")
  %"$gasrem_5338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5339" = icmp ugt i64 %"$_literal_cost_call_5337", %"$gasrem_5338"
  br i1 %"$gascmp_5339", label %"$out_of_gas_5340", label %"$have_gas_5341"

"$out_of_gas_5340":                               ; preds = %"$have_gas_5316"
  call void @_out_of_gas()
  br label %"$have_gas_5341"

"$have_gas_5341":                                 ; preds = %"$out_of_gas_5340", %"$have_gas_5316"
  %"$consume_5342" = sub i64 %"$gasrem_5338", %"$_literal_cost_call_5337"
  store i64 %"$consume_5342", i64* @_gasrem, align 8
  %"$execptr_load_5343" = load i8*, i8** @_execptr, align 8
  %"$e_5344" = load i8*, i8** %e3, align 8
  call void @_event(i8* %"$execptr_load_5343", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5344")
  br label %"$matchsucc_5227"

"$False_5345":                                    ; preds = %"$have_gas_5225"
  %"$isOk_5346" = bitcast %TName_Bool* %"$isOk_5228" to %CName_False*
  %"$gasrem_5347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5348" = icmp ugt i64 1, %"$gasrem_5347"
  br i1 %"$gascmp_5348", label %"$out_of_gas_5349", label %"$have_gas_5350"

"$out_of_gas_5349":                               ; preds = %"$False_5345"
  call void @_out_of_gas()
  br label %"$have_gas_5350"

"$have_gas_5350":                                 ; preds = %"$out_of_gas_5349", %"$False_5345"
  %"$consume_5351" = sub i64 %"$gasrem_5347", 1
  store i64 %"$consume_5351", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_5352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5353" = icmp ugt i64 1, %"$gasrem_5352"
  br i1 %"$gascmp_5353", label %"$out_of_gas_5354", label %"$have_gas_5355"

"$out_of_gas_5354":                               ; preds = %"$have_gas_5350"
  call void @_out_of_gas()
  br label %"$have_gas_5355"

"$have_gas_5355":                                 ; preds = %"$out_of_gas_5354", %"$have_gas_5350"
  %"$consume_5356" = sub i64 %"$gasrem_5352", 1
  store i64 %"$consume_5356", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_5357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5358" = icmp ugt i64 1, %"$gasrem_5357"
  br i1 %"$gascmp_5358", label %"$out_of_gas_5359", label %"$have_gas_5360"

"$out_of_gas_5359":                               ; preds = %"$have_gas_5355"
  call void @_out_of_gas()
  br label %"$have_gas_5360"

"$have_gas_5360":                                 ; preds = %"$out_of_gas_5359", %"$have_gas_5355"
  %"$consume_5361" = sub i64 %"$gasrem_5357", 1
  store i64 %"$consume_5361", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_5362", i32 0, i32 0), i32 12 }, %String* %m, align 8
  %"$gasrem_5363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5364" = icmp ugt i64 1, %"$gasrem_5363"
  br i1 %"$gascmp_5364", label %"$out_of_gas_5365", label %"$have_gas_5366"

"$out_of_gas_5365":                               ; preds = %"$have_gas_5360"
  call void @_out_of_gas()
  br label %"$have_gas_5366"

"$have_gas_5366":                                 ; preds = %"$out_of_gas_5365", %"$have_gas_5360"
  %"$consume_5367" = sub i64 %"$gasrem_5363", 1
  store i64 %"$consume_5367", i64* @_gasrem, align 8
  %"$ud-registry.eError_120" = alloca i8*, align 8
  %"$ud-registry.eError_5368" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_5369" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_5368", 0
  %"$ud-registry.eError_envptr_5370" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_5368", 1
  %"$m_5371" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_5372" = call i8* %"$ud-registry.eError_fptr_5369"(i8* %"$ud-registry.eError_envptr_5370", %String %"$m_5371")
  store i8* %"$ud-registry.eError_call_5372", i8** %"$ud-registry.eError_120", align 8
  %"$$ud-registry.eError_120_5373" = load i8*, i8** %"$ud-registry.eError_120", align 8
  store i8* %"$$ud-registry.eError_120_5373", i8** %e4, align 8
  %"$e_5374" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_5376" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5374")
  %"$gasrem_5377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5378" = icmp ugt i64 %"$_literal_cost_call_5376", %"$gasrem_5377"
  br i1 %"$gascmp_5378", label %"$out_of_gas_5379", label %"$have_gas_5380"

"$out_of_gas_5379":                               ; preds = %"$have_gas_5366"
  call void @_out_of_gas()
  br label %"$have_gas_5380"

"$have_gas_5380":                                 ; preds = %"$out_of_gas_5379", %"$have_gas_5366"
  %"$consume_5381" = sub i64 %"$gasrem_5377", %"$_literal_cost_call_5376"
  store i64 %"$consume_5381", i64* @_gasrem, align 8
  %"$execptr_load_5382" = load i8*, i8** @_execptr, align 8
  %"$e_5383" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_5382", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5383")
  br label %"$matchsucc_5227"

"$empty_default_5231":                            ; preds = %"$have_gas_5225"
  br label %"$matchsucc_5227"

"$matchsucc_5227":                                ; preds = %"$have_gas_5380", %"$have_gas_5341", %"$empty_default_5231"
  ret void
}

define void @bestow(i8* %0) {
entry:
  %"$_amount_5385" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5386" = bitcast i8* %"$_amount_5385" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5386", align 8
  %"$_origin_5387" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5388" = bitcast i8* %"$_origin_5387" to [20 x i8]*
  %"$_sender_5389" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5390" = bitcast i8* %"$_sender_5389" to [20 x i8]*
  %"$label_5391" = getelementptr i8, i8* %0, i32 56
  %"$label_5392" = bitcast i8* %"$label_5391" to %String*
  %label = load %String, %String* %"$label_5392", align 8
  %"$owner_5393" = getelementptr i8, i8* %0, i32 72
  %"$owner_5394" = bitcast i8* %"$owner_5393" to [20 x i8]*
  %"$resolver_5395" = getelementptr i8, i8* %0, i32 92
  %"$resolver_5396" = bitcast i8* %"$resolver_5395" to [20 x i8]*
  call void @"$bestow_4955"(%Uint128 %_amount, [20 x i8]* %"$_origin_5388", [20 x i8]* %"$_sender_5390", %String %label, [20 x i8]* %"$owner_5394", [20 x i8]* %"$resolver_5396")
  ret void
}

define internal void @"$setRegistrar_5397"(%Uint128 %_amount, [20 x i8]* %"$_origin_5398", [20 x i8]* %"$_sender_5399", [20 x i8]* %"$address_5400") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_5398", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5399", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_5400", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_5402" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_5403" = call i8* @_fetch_field(i8* %"$execptr_load_5402", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_5401", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i32 0, i8* null, i32 1)
  %"$currentAdmins_5404" = bitcast i8* %"$currentAdmins_call_5403" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_5404", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_5405" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_5405_5406" = bitcast %TName_List_ByStr20* %"$currentAdmins_5405" to i8*
  %"$_literal_cost_call_5407" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i8* %"$$currentAdmins_5405_5406")
  %"$gasadd_5408" = add i64 %"$_literal_cost_call_5407", 0
  %"$gasrem_5409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5410" = icmp ugt i64 %"$gasadd_5408", %"$gasrem_5409"
  br i1 %"$gascmp_5410", label %"$out_of_gas_5411", label %"$have_gas_5412"

"$out_of_gas_5411":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5412"

"$have_gas_5412":                                 ; preds = %"$out_of_gas_5411", %entry
  %"$consume_5413" = sub i64 %"$gasrem_5409", %"$gasadd_5408"
  store i64 %"$consume_5413", i64* @_gasrem, align 8
  %"$gasrem_5414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5415" = icmp ugt i64 1, %"$gasrem_5414"
  br i1 %"$gascmp_5415", label %"$out_of_gas_5416", label %"$have_gas_5417"

"$out_of_gas_5416":                               ; preds = %"$have_gas_5412"
  call void @_out_of_gas()
  br label %"$have_gas_5417"

"$have_gas_5417":                                 ; preds = %"$out_of_gas_5416", %"$have_gas_5412"
  %"$consume_5418" = sub i64 %"$gasrem_5414", 1
  store i64 %"$consume_5418", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_5419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5420" = icmp ugt i64 1, %"$gasrem_5419"
  br i1 %"$gascmp_5420", label %"$out_of_gas_5421", label %"$have_gas_5422"

"$out_of_gas_5421":                               ; preds = %"$have_gas_5417"
  call void @_out_of_gas()
  br label %"$have_gas_5422"

"$have_gas_5422":                                 ; preds = %"$out_of_gas_5421", %"$have_gas_5417"
  %"$consume_5423" = sub i64 %"$gasrem_5419", 1
  store i64 %"$consume_5423", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_135" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_5424" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_5425" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5424", 0
  %"$ud-registry.listByStr20Contains_envptr_5426" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5424", 1
  %"$currentAdmins_5427" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_5428" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_5425"(i8* %"$ud-registry.listByStr20Contains_envptr_5426", %TName_List_ByStr20* %"$currentAdmins_5427")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_5428", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_135", align 8
  %"$ud-registry.listByStr20Contains_136" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_135_5429" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_135", align 8
  %"$$ud-registry.listByStr20Contains_135_fptr_5430" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_135_5429", 0
  %"$$ud-registry.listByStr20Contains_135_envptr_5431" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_135_5429", 1
  %"$$ud-registry.listByStr20Contains_135__sender_5432" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_135__sender_5432", align 1
  %"$$ud-registry.listByStr20Contains_135_call_5433" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_135_fptr_5430"(i8* %"$$ud-registry.listByStr20Contains_135_envptr_5431", [20 x i8]* %"$$ud-registry.listByStr20Contains_135__sender_5432")
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_135_call_5433", %TName_Bool** %"$ud-registry.listByStr20Contains_136", align 8
  %"$$ud-registry.listByStr20Contains_136_5434" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_136", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_136_5434", %TName_Bool** %isOk, align 8
  %"$gasrem_5435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5436" = icmp ugt i64 2, %"$gasrem_5435"
  br i1 %"$gascmp_5436", label %"$out_of_gas_5437", label %"$have_gas_5438"

"$out_of_gas_5437":                               ; preds = %"$have_gas_5422"
  call void @_out_of_gas()
  br label %"$have_gas_5438"

"$have_gas_5438":                                 ; preds = %"$out_of_gas_5437", %"$have_gas_5422"
  %"$consume_5439" = sub i64 %"$gasrem_5435", 2
  store i64 %"$consume_5439", i64* @_gasrem, align 8
  %"$isOk_5441" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5442" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5441", i32 0, i32 0
  %"$isOk_tag_5443" = load i8, i8* %"$isOk_tag_5442", align 1
  switch i8 %"$isOk_tag_5443", label %"$default_5444" [
    i8 0, label %"$True_5445"
  ]

"$True_5445":                                     ; preds = %"$have_gas_5438"
  %"$isOk_5446" = bitcast %TName_Bool* %"$isOk_5441" to %CName_True*
  %"$gasrem_5447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5448" = icmp ugt i64 1, %"$gasrem_5447"
  br i1 %"$gascmp_5448", label %"$out_of_gas_5449", label %"$have_gas_5450"

"$out_of_gas_5449":                               ; preds = %"$True_5445"
  call void @_out_of_gas()
  br label %"$have_gas_5450"

"$have_gas_5450":                                 ; preds = %"$out_of_gas_5449", %"$True_5445"
  %"$consume_5451" = sub i64 %"$gasrem_5447", 1
  store i64 %"$consume_5451", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5453" = icmp ugt i64 1, %"$gasrem_5452"
  br i1 %"$gascmp_5453", label %"$out_of_gas_5454", label %"$have_gas_5455"

"$out_of_gas_5454":                               ; preds = %"$have_gas_5450"
  call void @_out_of_gas()
  br label %"$have_gas_5455"

"$have_gas_5455":                                 ; preds = %"$out_of_gas_5454", %"$have_gas_5450"
  %"$consume_5456" = sub i64 %"$gasrem_5452", 1
  store i64 %"$consume_5456", i64* @_gasrem, align 8
  %"$ud-registry.eNewRegistrar_134" = alloca i8*, align 8
  %"$ud-registry.eNewRegistrar_5457" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eNewRegistrar, align 8
  %"$ud-registry.eNewRegistrar_fptr_5458" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eNewRegistrar_5457", 0
  %"$ud-registry.eNewRegistrar_envptr_5459" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eNewRegistrar_5457", 1
  %"$ud-registry.eNewRegistrar_address_5460" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eNewRegistrar_address_5460", align 1
  %"$ud-registry.eNewRegistrar_call_5461" = call i8* %"$ud-registry.eNewRegistrar_fptr_5458"(i8* %"$ud-registry.eNewRegistrar_envptr_5459", [20 x i8]* %"$ud-registry.eNewRegistrar_address_5460")
  store i8* %"$ud-registry.eNewRegistrar_call_5461", i8** %"$ud-registry.eNewRegistrar_134", align 8
  %"$$ud-registry.eNewRegistrar_134_5462" = load i8*, i8** %"$ud-registry.eNewRegistrar_134", align 8
  store i8* %"$$ud-registry.eNewRegistrar_134_5462", i8** %e, align 8
  %"$e_5463" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5465" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5463")
  %"$gasrem_5466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5467" = icmp ugt i64 %"$_literal_cost_call_5465", %"$gasrem_5466"
  br i1 %"$gascmp_5467", label %"$out_of_gas_5468", label %"$have_gas_5469"

"$out_of_gas_5468":                               ; preds = %"$have_gas_5455"
  call void @_out_of_gas()
  br label %"$have_gas_5469"

"$have_gas_5469":                                 ; preds = %"$out_of_gas_5468", %"$have_gas_5455"
  %"$consume_5470" = sub i64 %"$gasrem_5466", %"$_literal_cost_call_5465"
  store i64 %"$consume_5470", i64* @_gasrem, align 8
  %"$execptr_load_5471" = load i8*, i8** @_execptr, align 8
  %"$e_5472" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5471", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5472")
  %"$_literal_cost_address_5473" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$_literal_cost_address_5473", align 1
  %"$$_literal_cost_address_5473_5474" = bitcast [20 x i8]* %"$_literal_cost_address_5473" to i8*
  %"$_literal_cost_call_5475" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i8* %"$$_literal_cost_address_5473_5474")
  %"$gasrem_5476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5477" = icmp ugt i64 %"$_literal_cost_call_5475", %"$gasrem_5476"
  br i1 %"$gascmp_5477", label %"$out_of_gas_5478", label %"$have_gas_5479"

"$out_of_gas_5478":                               ; preds = %"$have_gas_5469"
  call void @_out_of_gas()
  br label %"$have_gas_5479"

"$have_gas_5479":                                 ; preds = %"$out_of_gas_5478", %"$have_gas_5469"
  %"$consume_5480" = sub i64 %"$gasrem_5476", %"$_literal_cost_call_5475"
  store i64 %"$consume_5480", i64* @_gasrem, align 8
  %"$execptr_load_5481" = load i8*, i8** @_execptr, align 8
  %"$update_value_5483" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$update_value_5483", align 1
  %"$update_value_5484" = bitcast [20 x i8]* %"$update_value_5483" to i8*
  call void @_update_field(i8* %"$execptr_load_5481", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_5482", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i32 0, i8* null, i8* %"$update_value_5484")
  br label %"$matchsucc_5440"

"$default_5444":                                  ; preds = %"$have_gas_5438"
  br label %"$joinp_9"

"$joinp_9":                                       ; preds = %"$default_5444"
  br label %"$matchsucc_5440"

"$matchsucc_5440":                                ; preds = %"$have_gas_5479", %"$joinp_9"
  ret void
}

define void @setRegistrar(i8* %0) {
entry:
  %"$_amount_5486" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5487" = bitcast i8* %"$_amount_5486" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5487", align 8
  %"$_origin_5488" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5489" = bitcast i8* %"$_origin_5488" to [20 x i8]*
  %"$_sender_5490" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5491" = bitcast i8* %"$_sender_5490" to [20 x i8]*
  %"$address_5492" = getelementptr i8, i8* %0, i32 56
  %"$address_5493" = bitcast i8* %"$address_5492" to [20 x i8]*
  call void @"$setRegistrar_5397"(%Uint128 %_amount, [20 x i8]* %"$_origin_5489", [20 x i8]* %"$_sender_5491", [20 x i8]* %"$address_5493")
  ret void
}

define internal void @"$register_5494"(%Uint128 %_amount, [20 x i8]* %"$_origin_5495", [20 x i8]* %"$_sender_5496", [32 x i8]* %"$parent_5497", %String %label) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_5495", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5496", align 1
  %parent = load [32 x i8], [32 x i8]* %"$parent_5497", align 1
  %"$gasrem_5498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5499" = icmp ugt i64 1, %"$gasrem_5498"
  br i1 %"$gascmp_5499", label %"$out_of_gas_5500", label %"$have_gas_5501"

"$out_of_gas_5500":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5501"

"$have_gas_5501":                                 ; preds = %"$out_of_gas_5500", %entry
  %"$consume_5502" = sub i64 %"$gasrem_5498", 1
  store i64 %"$consume_5502", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_5503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5504" = icmp ugt i64 1, %"$gasrem_5503"
  br i1 %"$gascmp_5504", label %"$out_of_gas_5505", label %"$have_gas_5506"

"$out_of_gas_5505":                               ; preds = %"$have_gas_5501"
  call void @_out_of_gas()
  br label %"$have_gas_5506"

"$have_gas_5506":                                 ; preds = %"$out_of_gas_5505", %"$have_gas_5501"
  %"$consume_5507" = sub i64 %"$gasrem_5503", 1
  store i64 %"$consume_5507", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_141" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_5508" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_5509" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_5508", 0
  %"$ud-registry.parentLabelToNode_envptr_5510" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_5508", 1
  %"$ud-registry.parentLabelToNode_parent_5511" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.parentLabelToNode_parent_5511", align 1
  %"$ud-registry.parentLabelToNode_call_5512" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_5509"(i8* %"$ud-registry.parentLabelToNode_envptr_5510", [32 x i8]* %"$ud-registry.parentLabelToNode_parent_5511")
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_5512", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_141", align 8
  %"$ud-registry.parentLabelToNode_142" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_141_5513" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_141", align 8
  %"$$ud-registry.parentLabelToNode_141_fptr_5514" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_141_5513", 0
  %"$$ud-registry.parentLabelToNode_141_envptr_5515" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_141_5513", 1
  %"$$ud-registry.parentLabelToNode_141_retalloca_5516" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_141_fptr_5514"(i8* %"$$ud-registry.parentLabelToNode_141_envptr_5515", [32 x i8]* %"$$ud-registry.parentLabelToNode_141_retalloca_5516", %String %label)
  %"$$ud-registry.parentLabelToNode_141_ret_5517" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_141_retalloca_5516", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_141_ret_5517", [32 x i8]* %"$ud-registry.parentLabelToNode_142", align 1
  %"$$ud-registry.parentLabelToNode_142_5518" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_142", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_142_5518", [32 x i8]* %node, align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_5519_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5519_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5519_salloc_load", i64 32)
  %"$indices_buf_5519_salloc" = bitcast i8* %"$indices_buf_5519_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5519" = bitcast [32 x i8]* %"$indices_buf_5519_salloc" to i8*
  %"$node_5520" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5521" = getelementptr i8, i8* %"$indices_buf_5519", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_5521" to [32 x i8]*
  store [32 x i8] %"$node_5520", [32 x i8]* %indices_cast, align 1
  %"$execptr_load_5523" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_5524" = call i8* @_fetch_field(i8* %"$execptr_load_5523", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5522", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_5519", i32 1)
  %"$maybeRecord_5525" = bitcast i8* %"$maybeRecord_call_5524" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_5525", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_5526" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_5526_5527" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5526" to i8*
  %"$_literal_cost_call_5528" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_5526_5527")
  %"$gasadd_5529" = add i64 %"$_literal_cost_call_5528", 0
  %"$gasadd_5530" = add i64 %"$gasadd_5529", 1
  %"$gasrem_5531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5532" = icmp ugt i64 %"$gasadd_5530", %"$gasrem_5531"
  br i1 %"$gascmp_5532", label %"$out_of_gas_5533", label %"$have_gas_5534"

"$out_of_gas_5533":                               ; preds = %"$have_gas_5506"
  call void @_out_of_gas()
  br label %"$have_gas_5534"

"$have_gas_5534":                                 ; preds = %"$out_of_gas_5533", %"$have_gas_5506"
  %"$consume_5535" = sub i64 %"$gasrem_5531", %"$gasadd_5530"
  store i64 %"$consume_5535", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_5536_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5536_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5536_salloc_load", i64 32)
  %"$indices_buf_5536_salloc" = bitcast i8* %"$indices_buf_5536_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5536" = bitcast [32 x i8]* %"$indices_buf_5536_salloc" to i8*
  %"$node_5537" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5538" = getelementptr i8, i8* %"$indices_buf_5536", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_5538" to [32 x i8]*
  store [32 x i8] %"$node_5537", [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_5540" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_5541" = call i8* @_fetch_field(i8* %"$execptr_load_5540", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_5539", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_5536", i32 1)
  %"$maybeApproved_5542" = bitcast i8* %"$maybeApproved_call_5541" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_5542", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_5543" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_5543_5544" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5543" to i8*
  %"$_literal_cost_call_5545" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_5543_5544")
  %"$gasadd_5546" = add i64 %"$_literal_cost_call_5545", 0
  %"$gasadd_5547" = add i64 %"$gasadd_5546", 1
  %"$gasrem_5548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5549" = icmp ugt i64 %"$gasadd_5547", %"$gasrem_5548"
  br i1 %"$gascmp_5549", label %"$out_of_gas_5550", label %"$have_gas_5551"

"$out_of_gas_5550":                               ; preds = %"$have_gas_5534"
  call void @_out_of_gas()
  br label %"$have_gas_5551"

"$have_gas_5551":                                 ; preds = %"$out_of_gas_5550", %"$have_gas_5534"
  %"$consume_5552" = sub i64 %"$gasrem_5548", %"$gasadd_5547"
  store i64 %"$consume_5552", i64* @_gasrem, align 8
  %"$gasrem_5553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5554" = icmp ugt i64 1, %"$gasrem_5553"
  br i1 %"$gascmp_5554", label %"$out_of_gas_5555", label %"$have_gas_5556"

"$out_of_gas_5555":                               ; preds = %"$have_gas_5551"
  call void @_out_of_gas()
  br label %"$have_gas_5556"

"$have_gas_5556":                                 ; preds = %"$out_of_gas_5555", %"$have_gas_5551"
  %"$consume_5557" = sub i64 %"$gasrem_5553", 1
  store i64 %"$consume_5557", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_5558" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5559" = icmp ugt i64 1, %"$gasrem_5558"
  br i1 %"$gascmp_5559", label %"$out_of_gas_5560", label %"$have_gas_5561"

"$out_of_gas_5560":                               ; preds = %"$have_gas_5556"
  call void @_out_of_gas()
  br label %"$have_gas_5561"

"$have_gas_5561":                                 ; preds = %"$out_of_gas_5560", %"$have_gas_5556"
  %"$consume_5562" = sub i64 %"$gasrem_5558", 1
  store i64 %"$consume_5562", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_140" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_5563" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_5564" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5563", 0
  %"$ud-registry.recordMemberOwner_envptr_5565" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5563", 1
  %"$maybeRecord_5566" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_5567" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_5564"(i8* %"$ud-registry.recordMemberOwner_envptr_5565", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5567", %TName_Option_ud-registry.Record* %"$maybeRecord_5566")
  %"$ud-registry.recordMemberOwner_ret_5568" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5567", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_5568", [20 x i8]* %"$ud-registry.recordMemberOwner_140", align 1
  %"$$ud-registry.recordMemberOwner_140_5569" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_140", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_140_5569", [20 x i8]* %recordOwner, align 1
  %"$gasrem_5570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5571" = icmp ugt i64 1, %"$gasrem_5570"
  br i1 %"$gascmp_5571", label %"$out_of_gas_5572", label %"$have_gas_5573"

"$out_of_gas_5572":                               ; preds = %"$have_gas_5561"
  call void @_out_of_gas()
  br label %"$have_gas_5573"

"$have_gas_5573":                                 ; preds = %"$out_of_gas_5572", %"$have_gas_5561"
  %"$consume_5574" = sub i64 %"$gasrem_5570", 1
  store i64 %"$consume_5574", i64* @_gasrem, align 8
  %approved = alloca [20 x i8], align 1
  %"$gasrem_5575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5576" = icmp ugt i64 2, %"$gasrem_5575"
  br i1 %"$gascmp_5576", label %"$out_of_gas_5577", label %"$have_gas_5578"

"$out_of_gas_5577":                               ; preds = %"$have_gas_5573"
  call void @_out_of_gas()
  br label %"$have_gas_5578"

"$have_gas_5578":                                 ; preds = %"$out_of_gas_5577", %"$have_gas_5573"
  %"$consume_5579" = sub i64 %"$gasrem_5575", 2
  store i64 %"$consume_5579", i64* @_gasrem, align 8
  %"$maybeApproved_5581" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_5582" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_5581", i32 0, i32 0
  %"$maybeApproved_tag_5583" = load i8, i8* %"$maybeApproved_tag_5582", align 1
  switch i8 %"$maybeApproved_tag_5583", label %"$empty_default_5584" [
    i8 1, label %"$None_5585"
    i8 0, label %"$Some_5593"
  ]

"$None_5585":                                     ; preds = %"$have_gas_5578"
  %"$maybeApproved_5586" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5581" to %CName_None_ByStr20*
  %"$gasrem_5587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5588" = icmp ugt i64 1, %"$gasrem_5587"
  br i1 %"$gascmp_5588", label %"$out_of_gas_5589", label %"$have_gas_5590"

"$out_of_gas_5589":                               ; preds = %"$None_5585"
  call void @_out_of_gas()
  br label %"$have_gas_5590"

"$have_gas_5590":                                 ; preds = %"$out_of_gas_5589", %"$None_5585"
  %"$consume_5591" = sub i64 %"$gasrem_5587", 1
  store i64 %"$consume_5591", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_5592" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5592", [20 x i8]* %approved, align 1
  br label %"$matchsucc_5580"

"$Some_5593":                                     ; preds = %"$have_gas_5578"
  %"$maybeApproved_5594" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5581" to %CName_Some_ByStr20*
  %"$approved_gep_5595" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_5594", i32 0, i32 1
  %"$approved_load_5596" = load [20 x i8], [20 x i8]* %"$approved_gep_5595", align 1
  %approved2 = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_5596", [20 x i8]* %approved2, align 1
  %"$gasrem_5597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5598" = icmp ugt i64 1, %"$gasrem_5597"
  br i1 %"$gascmp_5598", label %"$out_of_gas_5599", label %"$have_gas_5600"

"$out_of_gas_5599":                               ; preds = %"$Some_5593"
  call void @_out_of_gas()
  br label %"$have_gas_5600"

"$have_gas_5600":                                 ; preds = %"$out_of_gas_5599", %"$Some_5593"
  %"$consume_5601" = sub i64 %"$gasrem_5597", 1
  store i64 %"$consume_5601", i64* @_gasrem, align 8
  %"$approved_5602" = load [20 x i8], [20 x i8]* %approved2, align 1
  store [20 x i8] %"$approved_5602", [20 x i8]* %approved2, align 1
  br label %"$matchsucc_5580"

"$empty_default_5584":                            ; preds = %"$have_gas_5578"
  br label %"$matchsucc_5580"

"$matchsucc_5580":                                ; preds = %"$have_gas_5600", %"$have_gas_5590", %"$empty_default_5584"
  %currentRegistrar = alloca [20 x i8], align 1
  %"$execptr_load_5604" = load i8*, i8** @_execptr, align 8
  %"$currentRegistrar_call_5605" = call i8* @_fetch_field(i8* %"$execptr_load_5604", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_5603", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i32 0, i8* null, i32 1)
  %"$currentRegistrar_5606" = bitcast i8* %"$currentRegistrar_call_5605" to [20 x i8]*
  %"$currentRegistrar_5607" = load [20 x i8], [20 x i8]* %"$currentRegistrar_5606", align 1
  store [20 x i8] %"$currentRegistrar_5607", [20 x i8]* %currentRegistrar, align 1
  %"$_literal_cost_currentRegistrar_5608" = alloca [20 x i8], align 1
  %"$currentRegistrar_5609" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5609", [20 x i8]* %"$_literal_cost_currentRegistrar_5608", align 1
  %"$$_literal_cost_currentRegistrar_5608_5610" = bitcast [20 x i8]* %"$_literal_cost_currentRegistrar_5608" to i8*
  %"$_literal_cost_call_5611" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i8* %"$$_literal_cost_currentRegistrar_5608_5610")
  %"$gasadd_5612" = add i64 %"$_literal_cost_call_5611", 0
  %"$gasrem_5613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5614" = icmp ugt i64 %"$gasadd_5612", %"$gasrem_5613"
  br i1 %"$gascmp_5614", label %"$out_of_gas_5615", label %"$have_gas_5616"

"$out_of_gas_5615":                               ; preds = %"$matchsucc_5580"
  call void @_out_of_gas()
  br label %"$have_gas_5616"

"$have_gas_5616":                                 ; preds = %"$out_of_gas_5615", %"$matchsucc_5580"
  %"$consume_5617" = sub i64 %"$gasrem_5613", %"$gasadd_5612"
  store i64 %"$consume_5617", i64* @_gasrem, align 8
  %"$gasrem_5618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5619" = icmp ugt i64 1, %"$gasrem_5618"
  br i1 %"$gascmp_5619", label %"$out_of_gas_5620", label %"$have_gas_5621"

"$out_of_gas_5620":                               ; preds = %"$have_gas_5616"
  call void @_out_of_gas()
  br label %"$have_gas_5621"

"$have_gas_5621":                                 ; preds = %"$out_of_gas_5620", %"$have_gas_5616"
  %"$consume_5622" = sub i64 %"$gasrem_5618", 1
  store i64 %"$consume_5622", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_5623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5624" = icmp ugt i64 1, %"$gasrem_5623"
  br i1 %"$gascmp_5624", label %"$out_of_gas_5625", label %"$have_gas_5626"

"$out_of_gas_5625":                               ; preds = %"$have_gas_5621"
  call void @_out_of_gas()
  br label %"$have_gas_5626"

"$have_gas_5626":                                 ; preds = %"$out_of_gas_5625", %"$have_gas_5621"
  %"$consume_5627" = sub i64 %"$gasrem_5623", 1
  store i64 %"$consume_5627", i64* @_gasrem, align 8
  %isRecordUnowned = alloca %TName_Bool*, align 8
  %"$gasrem_5628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5629" = icmp ugt i64 20, %"$gasrem_5628"
  br i1 %"$gascmp_5629", label %"$out_of_gas_5630", label %"$have_gas_5631"

"$out_of_gas_5630":                               ; preds = %"$have_gas_5626"
  call void @_out_of_gas()
  br label %"$have_gas_5631"

"$have_gas_5631":                                 ; preds = %"$out_of_gas_5630", %"$have_gas_5626"
  %"$consume_5632" = sub i64 %"$gasrem_5628", 20
  store i64 %"$consume_5632", i64* @_gasrem, align 8
  %"$execptr_load_5633" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5634" = alloca [20 x i8], align 1
  %"$recordOwner_5635" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5635", [20 x i8]* %"$eq_recordOwner_5634", align 1
  %"$$eq_recordOwner_5634_5636" = bitcast [20 x i8]* %"$eq_recordOwner_5634" to i8*
  %"$eq_ud-registry.zeroByStr20_5637" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5638" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5638", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5637", align 1
  %"$$eq_ud-registry.zeroByStr20_5637_5639" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5637" to i8*
  %"$eq_call_5640" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5633", i32 20, i8* %"$$eq_recordOwner_5634_5636", i8* %"$$eq_ud-registry.zeroByStr20_5637_5639")
  store %TName_Bool* %"$eq_call_5640", %TName_Bool** %isRecordUnowned, align 8
  %"$gasrem_5642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5643" = icmp ugt i64 1, %"$gasrem_5642"
  br i1 %"$gascmp_5643", label %"$out_of_gas_5644", label %"$have_gas_5645"

"$out_of_gas_5644":                               ; preds = %"$have_gas_5631"
  call void @_out_of_gas()
  br label %"$have_gas_5645"

"$have_gas_5645":                                 ; preds = %"$out_of_gas_5644", %"$have_gas_5631"
  %"$consume_5646" = sub i64 %"$gasrem_5642", 1
  store i64 %"$consume_5646", i64* @_gasrem, align 8
  %isUnapproved = alloca %TName_Bool*, align 8
  %"$gasrem_5647" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5648" = icmp ugt i64 20, %"$gasrem_5647"
  br i1 %"$gascmp_5648", label %"$out_of_gas_5649", label %"$have_gas_5650"

"$out_of_gas_5649":                               ; preds = %"$have_gas_5645"
  call void @_out_of_gas()
  br label %"$have_gas_5650"

"$have_gas_5650":                                 ; preds = %"$out_of_gas_5649", %"$have_gas_5645"
  %"$consume_5651" = sub i64 %"$gasrem_5647", 20
  store i64 %"$consume_5651", i64* @_gasrem, align 8
  %"$execptr_load_5652" = load i8*, i8** @_execptr, align 8
  %"$eq_approved_5653" = alloca [20 x i8], align 1
  %"$approved_5654" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_5654", [20 x i8]* %"$eq_approved_5653", align 1
  %"$$eq_approved_5653_5655" = bitcast [20 x i8]* %"$eq_approved_5653" to i8*
  %"$eq_ud-registry.zeroByStr20_5656" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5657" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5657", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5656", align 1
  %"$$eq_ud-registry.zeroByStr20_5656_5658" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5656" to i8*
  %"$eq_call_5659" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5652", i32 20, i8* %"$$eq_approved_5653_5655", i8* %"$$eq_ud-registry.zeroByStr20_5656_5658")
  store %TName_Bool* %"$eq_call_5659", %TName_Bool** %isUnapproved, align 8
  %"$gasrem_5661" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5662" = icmp ugt i64 1, %"$gasrem_5661"
  br i1 %"$gascmp_5662", label %"$out_of_gas_5663", label %"$have_gas_5664"

"$out_of_gas_5663":                               ; preds = %"$have_gas_5650"
  call void @_out_of_gas()
  br label %"$have_gas_5664"

"$have_gas_5664":                                 ; preds = %"$out_of_gas_5663", %"$have_gas_5650"
  %"$consume_5665" = sub i64 %"$gasrem_5661", 1
  store i64 %"$consume_5665", i64* @_gasrem, align 8
  %"$BoolUtils.andb_138" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5666" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5667" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5666", 0
  %"$BoolUtils.andb_envptr_5668" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5666", 1
  %"$isRecordUnowned_5669" = load %TName_Bool*, %TName_Bool** %isRecordUnowned, align 8
  %"$BoolUtils.andb_call_5670" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5667"(i8* %"$BoolUtils.andb_envptr_5668", %TName_Bool* %"$isRecordUnowned_5669")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5670", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_138", align 8
  %"$BoolUtils.andb_139" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_138_5671" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_138", align 8
  %"$$BoolUtils.andb_138_fptr_5672" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_138_5671", 0
  %"$$BoolUtils.andb_138_envptr_5673" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_138_5671", 1
  %"$isUnapproved_5674" = load %TName_Bool*, %TName_Bool** %isUnapproved, align 8
  %"$$BoolUtils.andb_138_call_5675" = call %TName_Bool* %"$$BoolUtils.andb_138_fptr_5672"(i8* %"$$BoolUtils.andb_138_envptr_5673", %TName_Bool* %"$isUnapproved_5674")
  store %TName_Bool* %"$$BoolUtils.andb_138_call_5675", %TName_Bool** %"$BoolUtils.andb_139", align 8
  %"$$BoolUtils.andb_139_5676" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_139", align 8
  store %TName_Bool* %"$$BoolUtils.andb_139_5676", %TName_Bool** %isOk, align 8
  %"$gasrem_5677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5678" = icmp ugt i64 2, %"$gasrem_5677"
  br i1 %"$gascmp_5678", label %"$out_of_gas_5679", label %"$have_gas_5680"

"$out_of_gas_5679":                               ; preds = %"$have_gas_5664"
  call void @_out_of_gas()
  br label %"$have_gas_5680"

"$have_gas_5680":                                 ; preds = %"$out_of_gas_5679", %"$have_gas_5664"
  %"$consume_5681" = sub i64 %"$gasrem_5677", 2
  store i64 %"$consume_5681", i64* @_gasrem, align 8
  %"$isOk_5683" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5684" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5683", i32 0, i32 0
  %"$isOk_tag_5685" = load i8, i8* %"$isOk_tag_5684", align 1
  switch i8 %"$isOk_tag_5685", label %"$empty_default_5686" [
    i8 0, label %"$True_5687"
    i8 1, label %"$False_5785"
  ]

"$True_5687":                                     ; preds = %"$have_gas_5680"
  %"$isOk_5688" = bitcast %TName_Bool* %"$isOk_5683" to %CName_True*
  %"$gasrem_5689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5690" = icmp ugt i64 1, %"$gasrem_5689"
  br i1 %"$gascmp_5690", label %"$out_of_gas_5691", label %"$have_gas_5692"

"$out_of_gas_5691":                               ; preds = %"$True_5687"
  call void @_out_of_gas()
  br label %"$have_gas_5692"

"$have_gas_5692":                                 ; preds = %"$out_of_gas_5691", %"$True_5687"
  %"$consume_5693" = sub i64 %"$gasrem_5689", 1
  store i64 %"$consume_5693", i64* @_gasrem, align 8
  %"$execptr_load_5694" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_5694")
  %"$gasrem_5695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5696" = icmp ugt i64 1, %"$gasrem_5695"
  br i1 %"$gascmp_5696", label %"$out_of_gas_5697", label %"$have_gas_5698"

"$out_of_gas_5697":                               ; preds = %"$have_gas_5692"
  call void @_out_of_gas()
  br label %"$have_gas_5698"

"$have_gas_5698":                                 ; preds = %"$out_of_gas_5697", %"$have_gas_5692"
  %"$consume_5699" = sub i64 %"$gasrem_5695", 1
  store i64 %"$consume_5699", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_5700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5701" = icmp ugt i64 1, %"$gasrem_5700"
  br i1 %"$gascmp_5701", label %"$out_of_gas_5702", label %"$have_gas_5703"

"$out_of_gas_5702":                               ; preds = %"$have_gas_5698"
  call void @_out_of_gas()
  br label %"$have_gas_5703"

"$have_gas_5703":                                 ; preds = %"$out_of_gas_5702", %"$have_gas_5698"
  %"$consume_5704" = sub i64 %"$gasrem_5700", 1
  store i64 %"$consume_5704", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_5705" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5706" = icmp ugt i64 1, %"$gasrem_5705"
  br i1 %"$gascmp_5706", label %"$out_of_gas_5707", label %"$have_gas_5708"

"$out_of_gas_5707":                               ; preds = %"$have_gas_5703"
  call void @_out_of_gas()
  br label %"$have_gas_5708"

"$have_gas_5708":                                 ; preds = %"$out_of_gas_5707", %"$have_gas_5703"
  %"$consume_5709" = sub i64 %"$gasrem_5705", 1
  store i64 %"$consume_5709", i64* @_gasrem, align 8
  %"$msgobj_5710_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_5710_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_5710_salloc_load", i64 321)
  %"$msgobj_5710_salloc" = bitcast i8* %"$msgobj_5710_salloc_salloc" to [321 x i8]*
  %"$msgobj_5710" = bitcast [321 x i8]* %"$msgobj_5710_salloc" to i8*
  store i8 7, i8* %"$msgobj_5710", align 1
  %"$msgobj_fname_5712" = getelementptr i8, i8* %"$msgobj_5710", i32 1
  %"$msgobj_fname_5713" = bitcast i8* %"$msgobj_fname_5712" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_5711", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_5713", align 8
  %"$msgobj_td_5714" = getelementptr i8, i8* %"$msgobj_5710", i32 17
  %"$msgobj_td_5715" = bitcast i8* %"$msgobj_td_5714" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_5715", align 8
  %"$msgobj_v_5717" = getelementptr i8, i8* %"$msgobj_5710", i32 25
  %"$msgobj_v_5718" = bitcast i8* %"$msgobj_v_5717" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_5716", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_5718", align 8
  %"$msgobj_fname_5720" = getelementptr i8, i8* %"$msgobj_5710", i32 41
  %"$msgobj_fname_5721" = bitcast i8* %"$msgobj_fname_5720" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_5719", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_5721", align 8
  %"$msgobj_td_5722" = getelementptr i8, i8* %"$msgobj_5710", i32 57
  %"$msgobj_td_5723" = bitcast i8* %"$msgobj_td_5722" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_5723", align 8
  %"$msgobj_v_5724" = getelementptr i8, i8* %"$msgobj_5710", i32 65
  %"$msgobj_v_5725" = bitcast i8* %"$msgobj_v_5724" to %Uint128*
  store %Uint128 %_amount, %Uint128* %"$msgobj_v_5725", align 8
  %"$msgobj_fname_5727" = getelementptr i8, i8* %"$msgobj_5710", i32 81
  %"$msgobj_fname_5728" = bitcast i8* %"$msgobj_fname_5727" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_5726", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_5728", align 8
  %"$msgobj_td_5729" = getelementptr i8, i8* %"$msgobj_5710", i32 97
  %"$msgobj_td_5730" = bitcast i8* %"$msgobj_td_5729" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_5730", align 8
  %"$currentRegistrar_5731" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  %"$msgobj_v_5732" = getelementptr i8, i8* %"$msgobj_5710", i32 105
  %"$msgobj_v_5733" = bitcast i8* %"$msgobj_v_5732" to [20 x i8]*
  store [20 x i8] %"$currentRegistrar_5731", [20 x i8]* %"$msgobj_v_5733", align 1
  %"$msgobj_fname_5735" = getelementptr i8, i8* %"$msgobj_5710", i32 125
  %"$msgobj_fname_5736" = bitcast i8* %"$msgobj_fname_5735" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_5734", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_5736", align 8
  %"$msgobj_td_5737" = getelementptr i8, i8* %"$msgobj_5710", i32 141
  %"$msgobj_td_5738" = bitcast i8* %"$msgobj_td_5737" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_5738", align 8
  %"$msgobj_v_5739" = getelementptr i8, i8* %"$msgobj_5710", i32 149
  %"$msgobj_v_5740" = bitcast i8* %"$msgobj_v_5739" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_5740", align 1
  %"$msgobj_fname_5742" = getelementptr i8, i8* %"$msgobj_5710", i32 169
  %"$msgobj_fname_5743" = bitcast i8* %"$msgobj_fname_5742" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_5741", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_5743", align 8
  %"$msgobj_td_5744" = getelementptr i8, i8* %"$msgobj_5710", i32 185
  %"$msgobj_td_5745" = bitcast i8* %"$msgobj_td_5744" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_5745", align 8
  %"$node_5746" = load [32 x i8], [32 x i8]* %node, align 1
  %"$msgobj_v_5747" = getelementptr i8, i8* %"$msgobj_5710", i32 193
  %"$msgobj_v_5748" = bitcast i8* %"$msgobj_v_5747" to [32 x i8]*
  store [32 x i8] %"$node_5746", [32 x i8]* %"$msgobj_v_5748", align 1
  %"$msgobj_fname_5750" = getelementptr i8, i8* %"$msgobj_5710", i32 225
  %"$msgobj_fname_5751" = bitcast i8* %"$msgobj_fname_5750" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_5749", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_5751", align 8
  %"$msgobj_td_5752" = getelementptr i8, i8* %"$msgobj_5710", i32 241
  %"$msgobj_td_5753" = bitcast i8* %"$msgobj_td_5752" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_5753", align 8
  %"$msgobj_v_5754" = getelementptr i8, i8* %"$msgobj_5710", i32 249
  %"$msgobj_v_5755" = bitcast i8* %"$msgobj_v_5754" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_5755", align 1
  %"$msgobj_fname_5757" = getelementptr i8, i8* %"$msgobj_5710", i32 281
  %"$msgobj_fname_5758" = bitcast i8* %"$msgobj_fname_5757" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_5756", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_5758", align 8
  %"$msgobj_td_5759" = getelementptr i8, i8* %"$msgobj_5710", i32 297
  %"$msgobj_td_5760" = bitcast i8* %"$msgobj_td_5759" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_5760", align 8
  %"$msgobj_v_5761" = getelementptr i8, i8* %"$msgobj_5710", i32 305
  %"$msgobj_v_5762" = bitcast i8* %"$msgobj_v_5761" to %String*
  store %String %label, %String* %"$msgobj_v_5762", align 8
  store i8* %"$msgobj_5710", i8** %m, align 8
  %"$gasrem_5764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5765" = icmp ugt i64 1, %"$gasrem_5764"
  br i1 %"$gascmp_5765", label %"$out_of_gas_5766", label %"$have_gas_5767"

"$out_of_gas_5766":                               ; preds = %"$have_gas_5708"
  call void @_out_of_gas()
  br label %"$have_gas_5767"

"$have_gas_5767":                                 ; preds = %"$out_of_gas_5766", %"$have_gas_5708"
  %"$consume_5768" = sub i64 %"$gasrem_5764", 1
  store i64 %"$consume_5768", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_137" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_5769" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_5770" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_5769", 0
  %"$ud-registry.oneMsg_envptr_5771" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_5769", 1
  %"$m_5772" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_5773" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_5770"(i8* %"$ud-registry.oneMsg_envptr_5771", i8* %"$m_5772")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_5773", %TName_List_Message** %"$ud-registry.oneMsg_137", align 8
  %"$$ud-registry.oneMsg_137_5774" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_137", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_137_5774", %TName_List_Message** %msgs, align 8
  %"$msgs_5775" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_5775_5776" = bitcast %TName_List_Message* %"$msgs_5775" to i8*
  %"$_literal_cost_call_5777" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_5775_5776")
  %"$gasrem_5778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5779" = icmp ugt i64 %"$_literal_cost_call_5777", %"$gasrem_5778"
  br i1 %"$gascmp_5779", label %"$out_of_gas_5780", label %"$have_gas_5781"

"$out_of_gas_5780":                               ; preds = %"$have_gas_5767"
  call void @_out_of_gas()
  br label %"$have_gas_5781"

"$have_gas_5781":                                 ; preds = %"$out_of_gas_5780", %"$have_gas_5767"
  %"$consume_5782" = sub i64 %"$gasrem_5778", %"$_literal_cost_call_5777"
  store i64 %"$consume_5782", i64* @_gasrem, align 8
  %"$execptr_load_5783" = load i8*, i8** @_execptr, align 8
  %"$msgs_5784" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_5783", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_5784")
  br label %"$matchsucc_5682"

"$False_5785":                                    ; preds = %"$have_gas_5680"
  %"$isOk_5786" = bitcast %TName_Bool* %"$isOk_5683" to %CName_False*
  br label %"$matchsucc_5682"

"$empty_default_5686":                            ; preds = %"$have_gas_5680"
  br label %"$matchsucc_5682"

"$matchsucc_5682":                                ; preds = %"$False_5785", %"$have_gas_5781", %"$empty_default_5686"
  ret void
}

declare void @_accept(i8*)

define void @register(i8* %0) {
entry:
  %"$_amount_5788" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5789" = bitcast i8* %"$_amount_5788" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5789", align 8
  %"$_origin_5790" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5791" = bitcast i8* %"$_origin_5790" to [20 x i8]*
  %"$_sender_5792" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5793" = bitcast i8* %"$_sender_5792" to [20 x i8]*
  %"$parent_5794" = getelementptr i8, i8* %0, i32 56
  %"$parent_5795" = bitcast i8* %"$parent_5794" to [32 x i8]*
  %"$label_5796" = getelementptr i8, i8* %0, i32 88
  %"$label_5797" = bitcast i8* %"$label_5796" to %String*
  %label = load %String, %String* %"$label_5797", align 8
  call void @"$register_5494"(%Uint128 %_amount, [20 x i8]* %"$_origin_5791", [20 x i8]* %"$_sender_5793", [32 x i8]* %"$parent_5795", %String %label)
  ret void
}

define internal void @"$onResolverConfigured_5798"(%Uint128 %_amount, [20 x i8]* %"$_origin_5799", [20 x i8]* %"$_sender_5800", [32 x i8]* %"$node_5801") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_5799", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5800", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_5801", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_5802_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5802_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5802_salloc_load", i64 32)
  %"$indices_buf_5802_salloc" = bitcast i8* %"$indices_buf_5802_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5802" = bitcast [32 x i8]* %"$indices_buf_5802_salloc" to i8*
  %"$indices_gep_5803" = getelementptr i8, i8* %"$indices_buf_5802", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_5803" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_5805" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_5806" = call i8* @_fetch_field(i8* %"$execptr_load_5805", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5804", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_5802", i32 1)
  %"$maybeRecord_5807" = bitcast i8* %"$maybeRecord_call_5806" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_5807", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_5808" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_5808_5809" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5808" to i8*
  %"$_literal_cost_call_5810" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_5808_5809")
  %"$gasadd_5811" = add i64 %"$_literal_cost_call_5810", 0
  %"$gasadd_5812" = add i64 %"$gasadd_5811", 1
  %"$gasrem_5813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5814" = icmp ugt i64 %"$gasadd_5812", %"$gasrem_5813"
  br i1 %"$gascmp_5814", label %"$out_of_gas_5815", label %"$have_gas_5816"

"$out_of_gas_5815":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5816"

"$have_gas_5816":                                 ; preds = %"$out_of_gas_5815", %entry
  %"$consume_5817" = sub i64 %"$gasrem_5813", %"$gasadd_5812"
  store i64 %"$consume_5817", i64* @_gasrem, align 8
  %"$gasrem_5818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5819" = icmp ugt i64 2, %"$gasrem_5818"
  br i1 %"$gascmp_5819", label %"$out_of_gas_5820", label %"$have_gas_5821"

"$out_of_gas_5820":                               ; preds = %"$have_gas_5816"
  call void @_out_of_gas()
  br label %"$have_gas_5821"

"$have_gas_5821":                                 ; preds = %"$out_of_gas_5820", %"$have_gas_5816"
  %"$consume_5822" = sub i64 %"$gasrem_5818", 2
  store i64 %"$consume_5822", i64* @_gasrem, align 8
  %"$maybeRecord_5824" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_tag_5825" = getelementptr inbounds %TName_Option_ud-registry.Record, %TName_Option_ud-registry.Record* %"$maybeRecord_5824", i32 0, i32 0
  %"$maybeRecord_tag_5826" = load i8, i8* %"$maybeRecord_tag_5825", align 1
  switch i8 %"$maybeRecord_tag_5826", label %"$empty_default_5827" [
    i8 1, label %"$None_5828"
    i8 0, label %"$Some_5830"
  ]

"$None_5828":                                     ; preds = %"$have_gas_5821"
  %"$maybeRecord_5829" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5824" to %CName_None_ud-registry.Record*
  br label %"$matchsucc_5823"

"$Some_5830":                                     ; preds = %"$have_gas_5821"
  %"$maybeRecord_5831" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5824" to %CName_Some_ud-registry.Record*
  %"$record_gep_5832" = getelementptr inbounds %CName_Some_ud-registry.Record, %CName_Some_ud-registry.Record* %"$maybeRecord_5831", i32 0, i32 1
  %"$record_load_5833" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %"$record_gep_5832", align 8
  %record = alloca %TName_ud-registry.Record*, align 8
  store %TName_ud-registry.Record* %"$record_load_5833", %TName_ud-registry.Record** %record, align 8
  %"$gasrem_5834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5835" = icmp ugt i64 1, %"$gasrem_5834"
  br i1 %"$gascmp_5835", label %"$out_of_gas_5836", label %"$have_gas_5837"

"$out_of_gas_5836":                               ; preds = %"$Some_5830"
  call void @_out_of_gas()
  br label %"$have_gas_5837"

"$have_gas_5837":                                 ; preds = %"$out_of_gas_5836", %"$Some_5830"
  %"$consume_5838" = sub i64 %"$gasrem_5834", 1
  store i64 %"$consume_5838", i64* @_gasrem, align 8
  %"$record_5840" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %record, align 8
  %"$record_tag_5841" = getelementptr inbounds %TName_ud-registry.Record, %TName_ud-registry.Record* %"$record_5840", i32 0, i32 0
  %"$record_tag_5842" = load i8, i8* %"$record_tag_5841", align 1
  switch i8 %"$record_tag_5842", label %"$empty_default_5843" [
    i8 0, label %"$ud-registry.Record_5844"
  ]

"$ud-registry.Record_5844":                       ; preds = %"$have_gas_5837"
  %"$record_5845" = bitcast %TName_ud-registry.Record* %"$record_5840" to %CName_ud-registry.Record*
  %"$owner_gep_5846" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_5845", i32 0, i32 1
  %"$owner_load_5847" = load [20 x i8], [20 x i8]* %"$owner_gep_5846", align 1
  %owner = alloca [20 x i8], align 1
  store [20 x i8] %"$owner_load_5847", [20 x i8]* %owner, align 1
  %"$resolver_gep_5848" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_5845", i32 0, i32 2
  %"$resolver_load_5849" = load [20 x i8], [20 x i8]* %"$resolver_gep_5848", align 1
  %resolver = alloca [20 x i8], align 1
  store [20 x i8] %"$resolver_load_5849", [20 x i8]* %resolver, align 1
  %"$gasrem_5850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5851" = icmp ugt i64 1, %"$gasrem_5850"
  br i1 %"$gascmp_5851", label %"$out_of_gas_5852", label %"$have_gas_5853"

"$out_of_gas_5852":                               ; preds = %"$ud-registry.Record_5844"
  call void @_out_of_gas()
  br label %"$have_gas_5853"

"$have_gas_5853":                                 ; preds = %"$out_of_gas_5852", %"$ud-registry.Record_5844"
  %"$consume_5854" = sub i64 %"$gasrem_5850", 1
  store i64 %"$consume_5854", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_5855" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5856" = icmp ugt i64 20, %"$gasrem_5855"
  br i1 %"$gascmp_5856", label %"$out_of_gas_5857", label %"$have_gas_5858"

"$out_of_gas_5857":                               ; preds = %"$have_gas_5853"
  call void @_out_of_gas()
  br label %"$have_gas_5858"

"$have_gas_5858":                                 ; preds = %"$out_of_gas_5857", %"$have_gas_5853"
  %"$consume_5859" = sub i64 %"$gasrem_5855", 20
  store i64 %"$consume_5859", i64* @_gasrem, align 8
  %"$execptr_load_5860" = load i8*, i8** @_execptr, align 8
  %"$eq_resolver_5861" = alloca [20 x i8], align 1
  %"$resolver_5862" = load [20 x i8], [20 x i8]* %resolver, align 1
  store [20 x i8] %"$resolver_5862", [20 x i8]* %"$eq_resolver_5861", align 1
  %"$$eq_resolver_5861_5863" = bitcast [20 x i8]* %"$eq_resolver_5861" to i8*
  %"$eq__sender_5864" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_5864", align 1
  %"$$eq__sender_5864_5865" = bitcast [20 x i8]* %"$eq__sender_5864" to i8*
  %"$eq_call_5866" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5860", i32 20, i8* %"$$eq_resolver_5861_5863", i8* %"$$eq__sender_5864_5865")
  store %TName_Bool* %"$eq_call_5866", %TName_Bool** %isOk, align 8
  %"$gasrem_5868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5869" = icmp ugt i64 2, %"$gasrem_5868"
  br i1 %"$gascmp_5869", label %"$out_of_gas_5870", label %"$have_gas_5871"

"$out_of_gas_5870":                               ; preds = %"$have_gas_5858"
  call void @_out_of_gas()
  br label %"$have_gas_5871"

"$have_gas_5871":                                 ; preds = %"$out_of_gas_5870", %"$have_gas_5858"
  %"$consume_5872" = sub i64 %"$gasrem_5868", 2
  store i64 %"$consume_5872", i64* @_gasrem, align 8
  %"$isOk_5874" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5875" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5874", i32 0, i32 0
  %"$isOk_tag_5876" = load i8, i8* %"$isOk_tag_5875", align 1
  switch i8 %"$isOk_tag_5876", label %"$empty_default_5877" [
    i8 0, label %"$True_5878"
    i8 1, label %"$False_5918"
  ]

"$True_5878":                                     ; preds = %"$have_gas_5871"
  %"$isOk_5879" = bitcast %TName_Bool* %"$isOk_5874" to %CName_True*
  %"$gasrem_5880" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5881" = icmp ugt i64 1, %"$gasrem_5880"
  br i1 %"$gascmp_5881", label %"$out_of_gas_5882", label %"$have_gas_5883"

"$out_of_gas_5882":                               ; preds = %"$True_5878"
  call void @_out_of_gas()
  br label %"$have_gas_5883"

"$have_gas_5883":                                 ; preds = %"$out_of_gas_5882", %"$True_5878"
  %"$consume_5884" = sub i64 %"$gasrem_5880", 1
  store i64 %"$consume_5884", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5885" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5886" = icmp ugt i64 1, %"$gasrem_5885"
  br i1 %"$gascmp_5886", label %"$out_of_gas_5887", label %"$have_gas_5888"

"$out_of_gas_5887":                               ; preds = %"$have_gas_5883"
  call void @_out_of_gas()
  br label %"$have_gas_5888"

"$have_gas_5888":                                 ; preds = %"$out_of_gas_5887", %"$have_gas_5883"
  %"$consume_5889" = sub i64 %"$gasrem_5885", 1
  store i64 %"$consume_5889", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_143" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_5890" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_5891" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5890", 0
  %"$ud-registry.eConfigured_envptr_5892" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5890", 1
  %"$ud-registry.eConfigured_node_5893" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_5893", align 1
  %"$ud-registry.eConfigured_call_5894" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_5891"(i8* %"$ud-registry.eConfigured_envptr_5892", [32 x i8]* %"$ud-registry.eConfigured_node_5893")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_5894", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_143", align 8
  %"$ud-registry.eConfigured_144" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_143_5895" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_143", align 8
  %"$$ud-registry.eConfigured_143_fptr_5896" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_143_5895", 0
  %"$$ud-registry.eConfigured_143_envptr_5897" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_143_5895", 1
  %"$$ud-registry.eConfigured_143_owner_5898" = alloca [20 x i8], align 1
  %"$owner_5899" = load [20 x i8], [20 x i8]* %owner, align 1
  store [20 x i8] %"$owner_5899", [20 x i8]* %"$$ud-registry.eConfigured_143_owner_5898", align 1
  %"$$ud-registry.eConfigured_143_call_5900" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_143_fptr_5896"(i8* %"$$ud-registry.eConfigured_143_envptr_5897", [20 x i8]* %"$$ud-registry.eConfigured_143_owner_5898")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_143_call_5900", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_144", align 8
  %"$ud-registry.eConfigured_145" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_144_5901" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_144", align 8
  %"$$ud-registry.eConfigured_144_fptr_5902" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_144_5901", 0
  %"$$ud-registry.eConfigured_144_envptr_5903" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_144_5901", 1
  %"$$ud-registry.eConfigured_144_resolver_5904" = alloca [20 x i8], align 1
  %"$resolver_5905" = load [20 x i8], [20 x i8]* %resolver, align 1
  store [20 x i8] %"$resolver_5905", [20 x i8]* %"$$ud-registry.eConfigured_144_resolver_5904", align 1
  %"$$ud-registry.eConfigured_144_call_5906" = call i8* %"$$ud-registry.eConfigured_144_fptr_5902"(i8* %"$$ud-registry.eConfigured_144_envptr_5903", [20 x i8]* %"$$ud-registry.eConfigured_144_resolver_5904")
  store i8* %"$$ud-registry.eConfigured_144_call_5906", i8** %"$ud-registry.eConfigured_145", align 8
  %"$$ud-registry.eConfigured_145_5907" = load i8*, i8** %"$ud-registry.eConfigured_145", align 8
  store i8* %"$$ud-registry.eConfigured_145_5907", i8** %e, align 8
  %"$e_5908" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5910" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5908")
  %"$gasrem_5911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5912" = icmp ugt i64 %"$_literal_cost_call_5910", %"$gasrem_5911"
  br i1 %"$gascmp_5912", label %"$out_of_gas_5913", label %"$have_gas_5914"

"$out_of_gas_5913":                               ; preds = %"$have_gas_5888"
  call void @_out_of_gas()
  br label %"$have_gas_5914"

"$have_gas_5914":                                 ; preds = %"$out_of_gas_5913", %"$have_gas_5888"
  %"$consume_5915" = sub i64 %"$gasrem_5911", %"$_literal_cost_call_5910"
  store i64 %"$consume_5915", i64* @_gasrem, align 8
  %"$execptr_load_5916" = load i8*, i8** @_execptr, align 8
  %"$e_5917" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5916", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5917")
  br label %"$matchsucc_5873"

"$False_5918":                                    ; preds = %"$have_gas_5871"
  %"$isOk_5919" = bitcast %TName_Bool* %"$isOk_5874" to %CName_False*
  br label %"$matchsucc_5873"

"$empty_default_5877":                            ; preds = %"$have_gas_5871"
  br label %"$matchsucc_5873"

"$matchsucc_5873":                                ; preds = %"$False_5918", %"$have_gas_5914", %"$empty_default_5877"
  br label %"$matchsucc_5839"

"$empty_default_5843":                            ; preds = %"$have_gas_5837"
  br label %"$matchsucc_5839"

"$matchsucc_5839":                                ; preds = %"$matchsucc_5873", %"$empty_default_5843"
  br label %"$matchsucc_5823"

"$empty_default_5827":                            ; preds = %"$have_gas_5821"
  br label %"$matchsucc_5823"

"$matchsucc_5823":                                ; preds = %"$matchsucc_5839", %"$None_5828", %"$empty_default_5827"
  ret void
}

define void @onResolverConfigured(i8* %0) {
entry:
  %"$_amount_5921" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5922" = bitcast i8* %"$_amount_5921" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5922", align 8
  %"$_origin_5923" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5924" = bitcast i8* %"$_origin_5923" to [20 x i8]*
  %"$_sender_5925" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5926" = bitcast i8* %"$_sender_5925" to [20 x i8]*
  %"$node_5927" = getelementptr i8, i8* %0, i32 56
  %"$node_5928" = bitcast i8* %"$node_5927" to [32 x i8]*
  call void @"$onResolverConfigured_5798"(%Uint128 %_amount, [20 x i8]* %"$_origin_5924", [20 x i8]* %"$_sender_5926", [32 x i8]* %"$node_5928")
  ret void
}
