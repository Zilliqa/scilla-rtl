

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
%"$ParamDescr_5828" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_5829" = type { %ParamDescrString, i32, %"$ParamDescr_5828"* }
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
@"$stringlit_1737" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1742" = unnamed_addr constant [8 x i8] c"AdminSet"
@"$stringlit_1745" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1753" = unnamed_addr constant [10 x i8] c"isApproved"
@"$stringlit_1798" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1803" = unnamed_addr constant [11 x i8] c"ApprovedFor"
@"$stringlit_1806" = unnamed_addr constant [4 x i8] c"user"
@"$stringlit_1814" = unnamed_addr constant [8 x i8] c"operator"
@"$stringlit_1822" = unnamed_addr constant [10 x i8] c"isApproved"
@"$stringlit_1837" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1842" = unnamed_addr constant [8 x i8] c"Approved"
@"$stringlit_1845" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1860" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1865" = unnamed_addr constant [12 x i8] c"NewRegistrar"
@"$stringlit_1868" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1896" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1901" = unnamed_addr constant [9 x i8] c"NewDomain"
@"$stringlit_1904" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_1912" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_1957" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1962" = unnamed_addr constant [10 x i8] c"Configured"
@"$stringlit_1965" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_1973" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_1981" = unnamed_addr constant [8 x i8] c"resolver"
@"$stringlit_1996" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_2001" = unnamed_addr constant [5 x i8] c"Error"
@"$stringlit_2004" = unnamed_addr constant [3 x i8] c"msg"
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
@"$records_2638" = unnamed_addr constant [8 x i8] c"records\00"
@"$registrar_2648" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$approvals_2661" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_2673" = unnamed_addr constant [10 x i8] c"operators\00"
@"$admins_2689" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_2696" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_2849" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_2899" = unnamed_addr constant [26 x i8] c"Sender not root node owner"
@"$records_2939" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_2997" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$approvals_3097" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$stringlit_3143" = unnamed_addr constant [21 x i8] c"Sender not node owner"
@"$operators_3182" = unnamed_addr constant [10 x i8] c"operators\00"
@"$operators_3339" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3396" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3412" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3446" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3531" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_3586" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3591" = unnamed_addr constant [18 x i8] c"onConfigureSuccess"
@"$stringlit_3594" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3601" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3608" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3615" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_3661" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$stringlit_3699" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3704" = unnamed_addr constant [18 x i8] c"onConfigureFailure"
@"$stringlit_3707" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3714" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3722" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3729" = unnamed_addr constant [10 x i8] c"_recipient"
@"$records_3778" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3794" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3828" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3914" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_3971" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$records_4011" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4027" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_4061" = unnamed_addr constant [10 x i8] c"operators\00"
@"$approvals_4127" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$records_4156" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4212" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4217" = unnamed_addr constant [17 x i8] c"onTransferSuccess"
@"$stringlit_4220" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_4227" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4234" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4241" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_4287" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$stringlit_4325" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4330" = unnamed_addr constant [17 x i8] c"onTransferFailure"
@"$stringlit_4333" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_4340" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4347" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4354" = unnamed_addr constant [10 x i8] c"_recipient"
@"$records_4401" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4417" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_4451" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_4533" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4598" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$records_4628" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4685" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4690" = unnamed_addr constant [15 x i8] c"onAssignSuccess"
@"$stringlit_4693" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_4700" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_4707" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4714" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4721" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_4767" = unnamed_addr constant [45 x i8] c"Sender not parent owner, approved or operator"
@"$stringlit_4805" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4810" = unnamed_addr constant [15 x i8] c"onAssignFailure"
@"$stringlit_4813" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_4820" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_4827" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4835" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4842" = unnamed_addr constant [10 x i8] c"_recipient"
@"$admins_4889" = unnamed_addr constant [7 x i8] c"admins\00"
@"$records_4927" = unnamed_addr constant [8 x i8] c"records\00"
@"$records_4944" = unnamed_addr constant [8 x i8] c"records\00"
@"$registrar_4958" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$records_5219" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_5276" = unnamed_addr constant [12 x i8] c"Sender admin"
@"$admins_5315" = unnamed_addr constant [7 x i8] c"admins\00"
@"$registrar_5396" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$records_5436" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_5453" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$registrar_5517" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$stringlit_5615" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_5620" = unnamed_addr constant [8 x i8] c"register"
@"$stringlit_5623" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_5630" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_5638" = unnamed_addr constant [6 x i8] c"origin"
@"$stringlit_5645" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_5653" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_5660" = unnamed_addr constant [5 x i8] c"label"
@"$records_5708" = unnamed_addr constant [8 x i8] c"records\00"
@_tydescr_table = constant [28 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %_TyDescrTy_Typ* @"$TyDescr_Event_301", %_TyDescrTy_Typ* @"$TyDescr_Int64_283", %_TyDescrTy_Typ* @"$TyDescr_Addr_328", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ* @"$TyDescr_Uint256_293", %_TyDescrTy_Typ* @"$TyDescr_Uint32_281", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_307", %_TyDescrTy_Typ* @"$TyDescr_Uint64_285", %_TyDescrTy_Typ* @"$TyDescr_Bnum_297", %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ* @"$TyDescr_Map_325", %_TyDescrTy_Typ* @"$TyDescr_Exception_303", %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ* @"$TyDescr_Int256_291", %_TyDescrTy_Typ* @"$TyDescr_Int128_287", %_TyDescrTy_Typ* @"$TyDescr_Map_323", %_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", %_TyDescrTy_Typ* @"$TyDescr_Bystr_305", %_TyDescrTy_Typ* @"$TyDescr_Message_299", %_TyDescrTy_Typ* @"$TyDescr_Map_324", %_TyDescrTy_Typ* @"$TyDescr_Int32_279"]
@_tydescr_table_length = constant i32 28
@"$pname__scilla_version_5830" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_5831" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_5832" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_initialOwner_5833" = unnamed_addr constant [12 x i8] c"initialOwner"
@"$pname_rootNode_5834" = unnamed_addr constant [8 x i8] c"rootNode"
@_contract_parameters = constant [5 x %"$ParamDescr_5828"] [%"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_5830", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_281" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_5831", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_5832", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_297" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$pname_initialOwner_5833", i32 0, i32 0), i32 12 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pname_rootNode_5834", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }]
@_contract_parameters_length = constant i32 5
@"$tpname__amount_5835" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5836" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5837" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_5838" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_5839" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_setAdmin_5840" = unnamed_addr constant [5 x %"$ParamDescr_5828"] [%"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5835", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5836", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5837", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5838", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_5839", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321" }]
@"$tname_setAdmin_5841" = unnamed_addr constant [8 x i8] c"setAdmin"
@"$tpname__amount_5842" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5843" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5844" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5845" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_address_5846" = unnamed_addr constant [7 x i8] c"address"
@"$tparams_approve_5847" = unnamed_addr constant [5 x %"$ParamDescr_5828"] [%"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5842", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5843", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5844", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5845", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5846", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_approve_5848" = unnamed_addr constant [7 x i8] c"approve"
@"$tpname__amount_5849" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5850" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5851" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_5852" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_5853" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_approveFor_5854" = unnamed_addr constant [5 x %"$ParamDescr_5828"] [%"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5849", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5850", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5851", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5852", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_5853", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321" }]
@"$tname_approveFor_5855" = unnamed_addr constant [10 x i8] c"approveFor"
@"$tpname__amount_5856" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5857" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5858" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5859" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_owner_5860" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_5861" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_configureNode_5862" = unnamed_addr constant [6 x %"$ParamDescr_5828"] [%"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5856", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5857", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5858", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5859", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5860", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5861", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_configureNode_5863" = unnamed_addr constant [13 x i8] c"configureNode"
@"$tpname__amount_5864" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5865" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5866" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5867" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_resolver_5868" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_configureResolver_5869" = unnamed_addr constant [5 x %"$ParamDescr_5828"] [%"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5864", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5865", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5866", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5867", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5868", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_configureResolver_5870" = unnamed_addr constant [17 x i8] c"configureResolver"
@"$tpname__amount_5871" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5872" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5873" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5874" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_owner_5875" = unnamed_addr constant [5 x i8] c"owner"
@"$tparams_transfer_5876" = unnamed_addr constant [5 x %"$ParamDescr_5828"] [%"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5871", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5872", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5873", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5874", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5875", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_transfer_5877" = unnamed_addr constant [8 x i8] c"transfer"
@"$tpname__amount_5878" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5879" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5880" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_parent_5881" = unnamed_addr constant [6 x i8] c"parent"
@"$tpname_label_5882" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_5883" = unnamed_addr constant [5 x i8] c"owner"
@"$tparams_assign_5884" = unnamed_addr constant [6 x %"$ParamDescr_5828"] [%"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5878", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5879", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5880", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_parent_5881", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_5882", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_295" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5883", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_assign_5885" = unnamed_addr constant [6 x i8] c"assign"
@"$tpname__amount_5886" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5887" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5888" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_label_5889" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_5890" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_5891" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_bestow_5892" = unnamed_addr constant [6 x %"$ParamDescr_5828"] [%"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5886", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5887", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5888", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_5889", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_295" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5890", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5891", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_bestow_5893" = unnamed_addr constant [6 x i8] c"bestow"
@"$tpname__amount_5894" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5895" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5896" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_5897" = unnamed_addr constant [7 x i8] c"address"
@"$tparams_setRegistrar_5898" = unnamed_addr constant [4 x %"$ParamDescr_5828"] [%"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5894", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5895", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5896", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5897", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_setRegistrar_5899" = unnamed_addr constant [12 x i8] c"setRegistrar"
@"$tpname__amount_5900" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5901" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5902" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_parent_5903" = unnamed_addr constant [6 x i8] c"parent"
@"$tpname_label_5904" = unnamed_addr constant [5 x i8] c"label"
@"$tparams_register_5905" = unnamed_addr constant [5 x %"$ParamDescr_5828"] [%"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5900", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5901", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5902", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_parent_5903", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_5904", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_295" }]
@"$tname_register_5906" = unnamed_addr constant [8 x i8] c"register"
@"$tpname__amount_5907" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5908" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5909" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5910" = unnamed_addr constant [4 x i8] c"node"
@"$tparams_onResolverConfigured_5911" = unnamed_addr constant [4 x %"$ParamDescr_5828"] [%"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5907", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5908", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5909", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5828" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5910", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }]
@"$tname_onResolverConfigured_5912" = unnamed_addr constant [20 x i8] c"onResolverConfigured"
@_transition_parameters = constant [11 x %"$TransDescr_5829"] [%"$TransDescr_5829" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setAdmin_5841", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5828"* getelementptr inbounds ([5 x %"$ParamDescr_5828"], [5 x %"$ParamDescr_5828"]* @"$tparams_setAdmin_5840", i32 0, i32 0) }, %"$TransDescr_5829" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_approve_5848", i32 0, i32 0), i32 7 }, i32 5, %"$ParamDescr_5828"* getelementptr inbounds ([5 x %"$ParamDescr_5828"], [5 x %"$ParamDescr_5828"]* @"$tparams_approve_5847", i32 0, i32 0) }, %"$TransDescr_5829" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tname_approveFor_5855", i32 0, i32 0), i32 10 }, i32 5, %"$ParamDescr_5828"* getelementptr inbounds ([5 x %"$ParamDescr_5828"], [5 x %"$ParamDescr_5828"]* @"$tparams_approveFor_5854", i32 0, i32 0) }, %"$TransDescr_5829" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_configureNode_5863", i32 0, i32 0), i32 13 }, i32 6, %"$ParamDescr_5828"* getelementptr inbounds ([6 x %"$ParamDescr_5828"], [6 x %"$ParamDescr_5828"]* @"$tparams_configureNode_5862", i32 0, i32 0) }, %"$TransDescr_5829" { %ParamDescrString { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$tname_configureResolver_5870", i32 0, i32 0), i32 17 }, i32 5, %"$ParamDescr_5828"* getelementptr inbounds ([5 x %"$ParamDescr_5828"], [5 x %"$ParamDescr_5828"]* @"$tparams_configureResolver_5869", i32 0, i32 0) }, %"$TransDescr_5829" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_transfer_5877", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5828"* getelementptr inbounds ([5 x %"$ParamDescr_5828"], [5 x %"$ParamDescr_5828"]* @"$tparams_transfer_5876", i32 0, i32 0) }, %"$TransDescr_5829" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_assign_5885", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_5828"* getelementptr inbounds ([6 x %"$ParamDescr_5828"], [6 x %"$ParamDescr_5828"]* @"$tparams_assign_5884", i32 0, i32 0) }, %"$TransDescr_5829" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_bestow_5893", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_5828"* getelementptr inbounds ([6 x %"$ParamDescr_5828"], [6 x %"$ParamDescr_5828"]* @"$tparams_bestow_5892", i32 0, i32 0) }, %"$TransDescr_5829" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$tname_setRegistrar_5899", i32 0, i32 0), i32 12 }, i32 4, %"$ParamDescr_5828"* getelementptr inbounds ([4 x %"$ParamDescr_5828"], [4 x %"$ParamDescr_5828"]* @"$tparams_setRegistrar_5898", i32 0, i32 0) }, %"$TransDescr_5829" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_register_5906", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5828"* getelementptr inbounds ([5 x %"$ParamDescr_5828"], [5 x %"$ParamDescr_5828"]* @"$tparams_register_5905", i32 0, i32 0) }, %"$TransDescr_5829" { %ParamDescrString { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$tname_onResolverConfigured_5912", i32 0, i32 0), i32 20 }, i32 4, %"$ParamDescr_5828"* getelementptr inbounds ([4 x %"$ParamDescr_5828"], [4 x %"$ParamDescr_5828"]* @"$tparams_onResolverConfigured_5911", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 11

define internal %TName_Bool* @"$fundef_214"(%"$$fundef_214_env_405"* %0, %"TName_Option_List_(ByStr20)"* %1) !dbg !4 {
entry:
  %"$$fundef_214_env_BoolUtils.orb_2175" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2176" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_214_env_BoolUtils.orb_2175", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2176", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_214_env_maybeApproved_2177" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %0, i32 0, i32 1
  %"$maybeApproved_envload_2178" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_214_env_maybeApproved_2177", align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  store %TName_Option_ByStr20* %"$maybeApproved_envload_2178", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$fundef_214_env_recordOwner_2179" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %0, i32 0, i32 2
  %"$recordOwner_envload_2180" = load [20 x i8], [20 x i8]* %"$$fundef_214_env_recordOwner_2179", align 1
  %recordOwner = alloca [20 x i8], align 1
  store [20 x i8] %"$recordOwner_envload_2180", [20 x i8]* %recordOwner, align 1
  %"$$fundef_214_env_sender_2181" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %0, i32 0, i32 3
  %"$sender_envload_2182" = load [20 x i8], [20 x i8]* %"$$fundef_214_env_sender_2181", align 1
  %sender = alloca [20 x i8], align 1
  store [20 x i8] %"$sender_envload_2182", [20 x i8]* %sender, align 1
  %"$$fundef_214_env_ud-registry.listByStr20Contains_2183" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %0, i32 0, i32 4
  %"$ud-registry.listByStr20Contains_envload_2184" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_214_env_ud-registry.listByStr20Contains_2183", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2184", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_215" = alloca %TName_Bool*, align 8
  %"$gasrem_2185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2186" = icmp ugt i64 1, %"$gasrem_2185"
  br i1 %"$gascmp_2186", label %"$out_of_gas_2187", label %"$have_gas_2188"

"$out_of_gas_2187":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2188"

"$have_gas_2188":                                 ; preds = %"$out_of_gas_2187", %entry
  %"$consume_2189" = sub i64 %"$gasrem_2185", 1
  store i64 %"$consume_2189", i64* @_gasrem, align 8
  %isOwner = alloca %TName_Bool*, align 8
  %"$execptr_load_2190" = load i8*, i8** @_execptr, align 8
  %"$eq_sender_2191" = alloca [20 x i8], align 1
  %"$sender_2192" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2192", [20 x i8]* %"$eq_sender_2191", align 1
  %"$$eq_sender_2191_2193" = bitcast [20 x i8]* %"$eq_sender_2191" to i8*
  %"$eq_recordOwner_2194" = alloca [20 x i8], align 1
  %"$recordOwner_2195" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_2195", [20 x i8]* %"$eq_recordOwner_2194", align 1
  %"$$eq_recordOwner_2194_2196" = bitcast [20 x i8]* %"$eq_recordOwner_2194" to i8*
  %"$eq_call_2197" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2190", i32 20, i8* %"$$eq_sender_2191_2193", i8* %"$$eq_recordOwner_2194_2196"), !dbg !8
  store %TName_Bool* %"$eq_call_2197", %TName_Bool** %isOwner, align 8, !dbg !8
  %"$gasrem_2199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2200" = icmp ugt i64 1, %"$gasrem_2199"
  br i1 %"$gascmp_2200", label %"$out_of_gas_2201", label %"$have_gas_2202"

"$out_of_gas_2201":                               ; preds = %"$have_gas_2188"
  call void @_out_of_gas()
  br label %"$have_gas_2202"

"$have_gas_2202":                                 ; preds = %"$out_of_gas_2201", %"$have_gas_2188"
  %"$consume_2203" = sub i64 %"$gasrem_2199", 1
  store i64 %"$consume_2203", i64* @_gasrem, align 8
  %isApproved = alloca %TName_Bool*, align 8
  %"$gasrem_2204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2205" = icmp ugt i64 2, %"$gasrem_2204"
  br i1 %"$gascmp_2205", label %"$out_of_gas_2206", label %"$have_gas_2207"

"$out_of_gas_2206":                               ; preds = %"$have_gas_2202"
  call void @_out_of_gas()
  br label %"$have_gas_2207"

"$have_gas_2207":                                 ; preds = %"$out_of_gas_2206", %"$have_gas_2202"
  %"$consume_2208" = sub i64 %"$gasrem_2204", 2
  store i64 %"$consume_2208", i64* @_gasrem, align 8
  %"$maybeApproved_2210" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_2211" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_2210", i32 0, i32 0
  %"$maybeApproved_tag_2212" = load i8, i8* %"$maybeApproved_tag_2211", align 1
  switch i8 %"$maybeApproved_tag_2212", label %"$empty_default_2213" [
    i8 1, label %"$None_2214"
    i8 0, label %"$Some_2224"
  ], !dbg !9

"$None_2214":                                     ; preds = %"$have_gas_2207"
  %"$maybeApproved_2215" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2210" to %CName_None_ByStr20*
  %"$gasrem_2216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2217" = icmp ugt i64 1, %"$gasrem_2216"
  br i1 %"$gascmp_2217", label %"$out_of_gas_2218", label %"$have_gas_2219"

"$out_of_gas_2218":                               ; preds = %"$None_2214"
  call void @_out_of_gas()
  br label %"$have_gas_2219"

"$have_gas_2219":                                 ; preds = %"$out_of_gas_2218", %"$None_2214"
  %"$consume_2220" = sub i64 %"$gasrem_2216", 1
  store i64 %"$consume_2220", i64* @_gasrem, align 8
  %"$adtval_2221_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2221_salloc" = call i8* @_salloc(i8* %"$adtval_2221_load", i64 1)
  %"$adtval_2221" = bitcast i8* %"$adtval_2221_salloc" to %CName_False*
  %"$adtgep_2222" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_2221", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2222", align 1
  %"$adtptr_2223" = bitcast %CName_False* %"$adtval_2221" to %TName_Bool*
  store %TName_Bool* %"$adtptr_2223", %TName_Bool** %isApproved, align 8, !dbg !10
  br label %"$matchsucc_2209"

"$Some_2224":                                     ; preds = %"$have_gas_2207"
  %"$maybeApproved_2225" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2210" to %CName_Some_ByStr20*
  %"$approved_gep_2226" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_2225", i32 0, i32 1
  %"$approved_load_2227" = load [20 x i8], [20 x i8]* %"$approved_gep_2226", align 1
  %approved = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_2227", [20 x i8]* %approved, align 1
  %"$execptr_load_2228" = load i8*, i8** @_execptr, align 8
  %"$eq_sender_2229" = alloca [20 x i8], align 1
  %"$sender_2230" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2230", [20 x i8]* %"$eq_sender_2229", align 1
  %"$$eq_sender_2229_2231" = bitcast [20 x i8]* %"$eq_sender_2229" to i8*
  %"$eq_approved_2232" = alloca [20 x i8], align 1
  %"$approved_2233" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_2233", [20 x i8]* %"$eq_approved_2232", align 1
  %"$$eq_approved_2232_2234" = bitcast [20 x i8]* %"$eq_approved_2232" to i8*
  %"$eq_call_2235" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2228", i32 20, i8* %"$$eq_sender_2229_2231", i8* %"$$eq_approved_2232_2234"), !dbg !13
  store %TName_Bool* %"$eq_call_2235", %TName_Bool** %isApproved, align 8, !dbg !13
  br label %"$matchsucc_2209"

"$empty_default_2213":                            ; preds = %"$have_gas_2207"
  br label %"$matchsucc_2209"

"$matchsucc_2209":                                ; preds = %"$Some_2224", %"$have_gas_2219", %"$empty_default_2213"
  %"$gasrem_2237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2238" = icmp ugt i64 1, %"$gasrem_2237"
  br i1 %"$gascmp_2238", label %"$out_of_gas_2239", label %"$have_gas_2240"

"$out_of_gas_2239":                               ; preds = %"$matchsucc_2209"
  call void @_out_of_gas()
  br label %"$have_gas_2240"

"$have_gas_2240":                                 ; preds = %"$out_of_gas_2239", %"$matchsucc_2209"
  %"$consume_2241" = sub i64 %"$gasrem_2237", 1
  store i64 %"$consume_2241", i64* @_gasrem, align 8
  %isOperator = alloca %TName_Bool*, align 8
  %"$gasrem_2242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2243" = icmp ugt i64 2, %"$gasrem_2242"
  br i1 %"$gascmp_2243", label %"$out_of_gas_2244", label %"$have_gas_2245"

"$out_of_gas_2244":                               ; preds = %"$have_gas_2240"
  call void @_out_of_gas()
  br label %"$have_gas_2245"

"$have_gas_2245":                                 ; preds = %"$out_of_gas_2244", %"$have_gas_2240"
  %"$consume_2246" = sub i64 %"$gasrem_2242", 2
  store i64 %"$consume_2246", i64* @_gasrem, align 8
  %"$maybeOperators_tag_2248" = getelementptr inbounds %"TName_Option_List_(ByStr20)", %"TName_Option_List_(ByStr20)"* %1, i32 0, i32 0
  %"$maybeOperators_tag_2249" = load i8, i8* %"$maybeOperators_tag_2248", align 1
  switch i8 %"$maybeOperators_tag_2249", label %"$empty_default_2250" [
    i8 1, label %"$None_2251"
    i8 0, label %"$Some_2261"
  ], !dbg !15

"$None_2251":                                     ; preds = %"$have_gas_2245"
  %"$maybeOperators_2252" = bitcast %"TName_Option_List_(ByStr20)"* %1 to %"CName_None_List_(ByStr20)"*
  %"$gasrem_2253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2254" = icmp ugt i64 1, %"$gasrem_2253"
  br i1 %"$gascmp_2254", label %"$out_of_gas_2255", label %"$have_gas_2256"

"$out_of_gas_2255":                               ; preds = %"$None_2251"
  call void @_out_of_gas()
  br label %"$have_gas_2256"

"$have_gas_2256":                                 ; preds = %"$out_of_gas_2255", %"$None_2251"
  %"$consume_2257" = sub i64 %"$gasrem_2253", 1
  store i64 %"$consume_2257", i64* @_gasrem, align 8
  %"$adtval_2258_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2258_salloc" = call i8* @_salloc(i8* %"$adtval_2258_load", i64 1)
  %"$adtval_2258" = bitcast i8* %"$adtval_2258_salloc" to %CName_False*
  %"$adtgep_2259" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_2258", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2259", align 1
  %"$adtptr_2260" = bitcast %CName_False* %"$adtval_2258" to %TName_Bool*
  store %TName_Bool* %"$adtptr_2260", %TName_Bool** %isOperator, align 8, !dbg !16
  br label %"$matchsucc_2247"

"$Some_2261":                                     ; preds = %"$have_gas_2245"
  %"$maybeOperators_2262" = bitcast %"TName_Option_List_(ByStr20)"* %1 to %"CName_Some_List_(ByStr20)"*
  %"$operators_gep_2263" = getelementptr inbounds %"CName_Some_List_(ByStr20)", %"CName_Some_List_(ByStr20)"* %"$maybeOperators_2262", i32 0, i32 1
  %"$operators_load_2264" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$operators_gep_2263", align 8
  %operators = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$operators_load_2264", %TName_List_ByStr20** %operators, align 8
  %"$gasrem_2265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2266" = icmp ugt i64 1, %"$gasrem_2265"
  br i1 %"$gascmp_2266", label %"$out_of_gas_2267", label %"$have_gas_2268"

"$out_of_gas_2267":                               ; preds = %"$Some_2261"
  call void @_out_of_gas()
  br label %"$have_gas_2268"

"$have_gas_2268":                                 ; preds = %"$out_of_gas_2267", %"$Some_2261"
  %"$consume_2269" = sub i64 %"$gasrem_2265", 1
  store i64 %"$consume_2269", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_39" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_2270" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_2271" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2270", 0
  %"$ud-registry.listByStr20Contains_envptr_2272" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2270", 1
  %"$operators_2273" = load %TName_List_ByStr20*, %TName_List_ByStr20** %operators, align 8
  %"$ud-registry.listByStr20Contains_call_2274" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_2271"(i8* %"$ud-registry.listByStr20Contains_envptr_2272", %TName_List_ByStr20* %"$operators_2273"), !dbg !19
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_2274", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_39", align 8, !dbg !19
  %"$ud-registry.listByStr20Contains_40" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_39_2275" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_39", align 8
  %"$$ud-registry.listByStr20Contains_39_fptr_2276" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_39_2275", 0
  %"$$ud-registry.listByStr20Contains_39_envptr_2277" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_39_2275", 1
  %"$$ud-registry.listByStr20Contains_39_sender_2278" = alloca [20 x i8], align 1
  %"$sender_2279" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2279", [20 x i8]* %"$$ud-registry.listByStr20Contains_39_sender_2278", align 1
  %"$$ud-registry.listByStr20Contains_39_call_2280" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_39_fptr_2276"(i8* %"$$ud-registry.listByStr20Contains_39_envptr_2277", [20 x i8]* %"$$ud-registry.listByStr20Contains_39_sender_2278"), !dbg !19
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_39_call_2280", %TName_Bool** %"$ud-registry.listByStr20Contains_40", align 8, !dbg !19
  %"$$ud-registry.listByStr20Contains_40_2281" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_40", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_40_2281", %TName_Bool** %isOperator, align 8, !dbg !19
  br label %"$matchsucc_2247"

"$empty_default_2250":                            ; preds = %"$have_gas_2245"
  br label %"$matchsucc_2247"

"$matchsucc_2247":                                ; preds = %"$have_gas_2268", %"$have_gas_2256", %"$empty_default_2250"
  %"$gasrem_2282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2283" = icmp ugt i64 1, %"$gasrem_2282"
  br i1 %"$gascmp_2283", label %"$out_of_gas_2284", label %"$have_gas_2285"

"$out_of_gas_2284":                               ; preds = %"$matchsucc_2247"
  call void @_out_of_gas()
  br label %"$have_gas_2285"

"$have_gas_2285":                                 ; preds = %"$out_of_gas_2284", %"$matchsucc_2247"
  %"$consume_2286" = sub i64 %"$gasrem_2282", 1
  store i64 %"$consume_2286", i64* @_gasrem, align 8
  %b1 = alloca %TName_Bool*, align 8
  %"$gasrem_2287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2288" = icmp ugt i64 1, %"$gasrem_2287"
  br i1 %"$gascmp_2288", label %"$out_of_gas_2289", label %"$have_gas_2290"

"$out_of_gas_2289":                               ; preds = %"$have_gas_2285"
  call void @_out_of_gas()
  br label %"$have_gas_2290"

"$have_gas_2290":                                 ; preds = %"$out_of_gas_2289", %"$have_gas_2285"
  %"$consume_2291" = sub i64 %"$gasrem_2287", 1
  store i64 %"$consume_2291", i64* @_gasrem, align 8
  %"$BoolUtils.orb_41" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_2292" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_2293" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2292", 0
  %"$BoolUtils.orb_envptr_2294" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2292", 1
  %"$isOwner_2295" = load %TName_Bool*, %TName_Bool** %isOwner, align 8
  %"$BoolUtils.orb_call_2296" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_2293"(i8* %"$BoolUtils.orb_envptr_2294", %TName_Bool* %"$isOwner_2295"), !dbg !21
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_2296", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_41", align 8, !dbg !21
  %"$BoolUtils.orb_42" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_41_2297" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_41", align 8
  %"$$BoolUtils.orb_41_fptr_2298" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_41_2297", 0
  %"$$BoolUtils.orb_41_envptr_2299" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_41_2297", 1
  %"$isApproved_2300" = load %TName_Bool*, %TName_Bool** %isApproved, align 8
  %"$$BoolUtils.orb_41_call_2301" = call %TName_Bool* %"$$BoolUtils.orb_41_fptr_2298"(i8* %"$$BoolUtils.orb_41_envptr_2299", %TName_Bool* %"$isApproved_2300"), !dbg !21
  store %TName_Bool* %"$$BoolUtils.orb_41_call_2301", %TName_Bool** %"$BoolUtils.orb_42", align 8, !dbg !21
  %"$$BoolUtils.orb_42_2302" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_42", align 8
  store %TName_Bool* %"$$BoolUtils.orb_42_2302", %TName_Bool** %b1, align 8, !dbg !21
  %"$gasrem_2303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2304" = icmp ugt i64 1, %"$gasrem_2303"
  br i1 %"$gascmp_2304", label %"$out_of_gas_2305", label %"$have_gas_2306"

"$out_of_gas_2305":                               ; preds = %"$have_gas_2290"
  call void @_out_of_gas()
  br label %"$have_gas_2306"

"$have_gas_2306":                                 ; preds = %"$out_of_gas_2305", %"$have_gas_2290"
  %"$consume_2307" = sub i64 %"$gasrem_2303", 1
  store i64 %"$consume_2307", i64* @_gasrem, align 8
  %"$BoolUtils.orb_43" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_2308" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_2309" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2308", 0
  %"$BoolUtils.orb_envptr_2310" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2308", 1
  %"$b1_2311" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$BoolUtils.orb_call_2312" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_2309"(i8* %"$BoolUtils.orb_envptr_2310", %TName_Bool* %"$b1_2311"), !dbg !22
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_2312", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_43", align 8, !dbg !22
  %"$BoolUtils.orb_44" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_43_2313" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_43", align 8
  %"$$BoolUtils.orb_43_fptr_2314" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_43_2313", 0
  %"$$BoolUtils.orb_43_envptr_2315" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_43_2313", 1
  %"$isOperator_2316" = load %TName_Bool*, %TName_Bool** %isOperator, align 8
  %"$$BoolUtils.orb_43_call_2317" = call %TName_Bool* %"$$BoolUtils.orb_43_fptr_2314"(i8* %"$$BoolUtils.orb_43_envptr_2315", %TName_Bool* %"$isOperator_2316"), !dbg !22
  store %TName_Bool* %"$$BoolUtils.orb_43_call_2317", %TName_Bool** %"$BoolUtils.orb_44", align 8, !dbg !22
  %"$$BoolUtils.orb_44_2318" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_44", align 8
  store %TName_Bool* %"$$BoolUtils.orb_44_2318", %TName_Bool** %"$retval_215", align 8, !dbg !22
  %"$$retval_215_2319" = load %TName_Bool*, %TName_Bool** %"$retval_215", align 8
  ret %TName_Bool* %"$$retval_215_2319"
}

define internal { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } @"$fundef_212"(%"$$fundef_212_env_406"* %0, %TName_Option_ByStr20* %1) !dbg !23 {
entry:
  %"$$fundef_212_env_BoolUtils.orb_2148" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2149" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_212_env_BoolUtils.orb_2148", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2149", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_212_env_recordOwner_2150" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %0, i32 0, i32 1
  %"$recordOwner_envload_2151" = load [20 x i8], [20 x i8]* %"$$fundef_212_env_recordOwner_2150", align 1
  %recordOwner = alloca [20 x i8], align 1
  store [20 x i8] %"$recordOwner_envload_2151", [20 x i8]* %recordOwner, align 1
  %"$$fundef_212_env_sender_2152" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %0, i32 0, i32 2
  %"$sender_envload_2153" = load [20 x i8], [20 x i8]* %"$$fundef_212_env_sender_2152", align 1
  %sender = alloca [20 x i8], align 1
  store [20 x i8] %"$sender_envload_2153", [20 x i8]* %sender, align 1
  %"$$fundef_212_env_ud-registry.listByStr20Contains_2154" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %0, i32 0, i32 3
  %"$ud-registry.listByStr20Contains_envload_2155" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_212_env_ud-registry.listByStr20Contains_2154", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2155", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_213" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$gasrem_2156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2157" = icmp ugt i64 1, %"$gasrem_2156"
  br i1 %"$gascmp_2157", label %"$out_of_gas_2158", label %"$have_gas_2159"

"$out_of_gas_2158":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2159"

"$have_gas_2159":                                 ; preds = %"$out_of_gas_2158", %entry
  %"$consume_2160" = sub i64 %"$gasrem_2156", 1
  store i64 %"$consume_2160", i64* @_gasrem, align 8
  %"$$fundef_214_envp_2161_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_214_envp_2161_salloc" = call i8* @_salloc(i8* %"$$fundef_214_envp_2161_load", i64 80)
  %"$$fundef_214_envp_2161" = bitcast i8* %"$$fundef_214_envp_2161_salloc" to %"$$fundef_214_env_405"*
  %"$$fundef_214_env_voidp_2163" = bitcast %"$$fundef_214_env_405"* %"$$fundef_214_envp_2161" to i8*
  %"$$fundef_214_cloval_2164" = insertvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)* bitcast (%TName_Bool* (%"$$fundef_214_env_405"*, %"TName_Option_List_(ByStr20)"*)* @"$fundef_214" to %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*), i8* undef }, i8* %"$$fundef_214_env_voidp_2163", 1
  %"$$fundef_214_env_BoolUtils.orb_2165" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %"$$fundef_214_envp_2161", i32 0, i32 0
  %"$BoolUtils.orb_2166" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2166", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_214_env_BoolUtils.orb_2165", align 8
  %"$$fundef_214_env_maybeApproved_2167" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %"$$fundef_214_envp_2161", i32 0, i32 1
  store %TName_Option_ByStr20* %1, %TName_Option_ByStr20** %"$$fundef_214_env_maybeApproved_2167", align 8
  %"$$fundef_214_env_recordOwner_2168" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %"$$fundef_214_envp_2161", i32 0, i32 2
  %"$recordOwner_2169" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_2169", [20 x i8]* %"$$fundef_214_env_recordOwner_2168", align 1
  %"$$fundef_214_env_sender_2170" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %"$$fundef_214_envp_2161", i32 0, i32 3
  %"$sender_2171" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2171", [20 x i8]* %"$$fundef_214_env_sender_2170", align 1
  %"$$fundef_214_env_ud-registry.listByStr20Contains_2172" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %"$$fundef_214_envp_2161", i32 0, i32 4
  %"$ud-registry.listByStr20Contains_2173" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2173", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_214_env_ud-registry.listByStr20Contains_2172", align 8
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$fundef_214_cloval_2164", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$retval_213", align 8, !dbg !24
  %"$$retval_213_2174" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$retval_213", align 8
  ret { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$retval_213_2174"
}

define internal { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } @"$fundef_210"(%"$$fundef_210_env_407"* %0, [20 x i8]* %1) !dbg !25 {
entry:
  %recordOwner = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_210_env_BoolUtils.orb_2125" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2126" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_210_env_BoolUtils.orb_2125", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2126", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_210_env_sender_2127" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %0, i32 0, i32 1
  %"$sender_envload_2128" = load [20 x i8], [20 x i8]* %"$$fundef_210_env_sender_2127", align 1
  %sender = alloca [20 x i8], align 1
  store [20 x i8] %"$sender_envload_2128", [20 x i8]* %sender, align 1
  %"$$fundef_210_env_ud-registry.listByStr20Contains_2129" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %0, i32 0, i32 2
  %"$ud-registry.listByStr20Contains_envload_2130" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_210_env_ud-registry.listByStr20Contains_2129", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2130", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_211" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$gasrem_2131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2132" = icmp ugt i64 1, %"$gasrem_2131"
  br i1 %"$gascmp_2132", label %"$out_of_gas_2133", label %"$have_gas_2134"

"$out_of_gas_2133":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2134"

"$have_gas_2134":                                 ; preds = %"$out_of_gas_2133", %entry
  %"$consume_2135" = sub i64 %"$gasrem_2131", 1
  store i64 %"$consume_2135", i64* @_gasrem, align 8
  %"$$fundef_212_envp_2136_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_212_envp_2136_salloc" = call i8* @_salloc(i8* %"$$fundef_212_envp_2136_load", i64 72)
  %"$$fundef_212_envp_2136" = bitcast i8* %"$$fundef_212_envp_2136_salloc" to %"$$fundef_212_env_406"*
  %"$$fundef_212_env_voidp_2138" = bitcast %"$$fundef_212_env_406"* %"$$fundef_212_envp_2136" to i8*
  %"$$fundef_212_cloval_2139" = insertvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)* bitcast ({ %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (%"$$fundef_212_env_406"*, %TName_Option_ByStr20*)* @"$fundef_212" to { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_212_env_voidp_2138", 1
  %"$$fundef_212_env_BoolUtils.orb_2140" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %"$$fundef_212_envp_2136", i32 0, i32 0
  %"$BoolUtils.orb_2141" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2141", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_212_env_BoolUtils.orb_2140", align 8
  %"$$fundef_212_env_recordOwner_2142" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %"$$fundef_212_envp_2136", i32 0, i32 1
  store [20 x i8] %recordOwner, [20 x i8]* %"$$fundef_212_env_recordOwner_2142", align 1
  %"$$fundef_212_env_sender_2143" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %"$$fundef_212_envp_2136", i32 0, i32 2
  %"$sender_2144" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2144", [20 x i8]* %"$$fundef_212_env_sender_2143", align 1
  %"$$fundef_212_env_ud-registry.listByStr20Contains_2145" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %"$$fundef_212_envp_2136", i32 0, i32 3
  %"$ud-registry.listByStr20Contains_2146" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2146", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_212_env_ud-registry.listByStr20Contains_2145", align 8
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_212_cloval_2139", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_211", align 8, !dbg !26
  %"$$retval_211_2147" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_211", align 8
  ret { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$retval_211_2147"
}

define internal { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_208"(%"$$fundef_208_env_408"* %0, [20 x i8]* %1) !dbg !27 {
entry:
  %sender = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_208_env_BoolUtils.orb_2106" = getelementptr inbounds %"$$fundef_208_env_408", %"$$fundef_208_env_408"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2107" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_208_env_BoolUtils.orb_2106", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2107", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_208_env_ud-registry.listByStr20Contains_2108" = getelementptr inbounds %"$$fundef_208_env_408", %"$$fundef_208_env_408"* %0, i32 0, i32 1
  %"$ud-registry.listByStr20Contains_envload_2109" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_208_env_ud-registry.listByStr20Contains_2108", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2109", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_209" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_2110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2111" = icmp ugt i64 1, %"$gasrem_2110"
  br i1 %"$gascmp_2111", label %"$out_of_gas_2112", label %"$have_gas_2113"

"$out_of_gas_2112":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2113"

"$have_gas_2113":                                 ; preds = %"$out_of_gas_2112", %entry
  %"$consume_2114" = sub i64 %"$gasrem_2110", 1
  store i64 %"$consume_2114", i64* @_gasrem, align 8
  %"$$fundef_210_envp_2115_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_210_envp_2115_salloc" = call i8* @_salloc(i8* %"$$fundef_210_envp_2115_load", i64 56)
  %"$$fundef_210_envp_2115" = bitcast i8* %"$$fundef_210_envp_2115_salloc" to %"$$fundef_210_env_407"*
  %"$$fundef_210_env_voidp_2117" = bitcast %"$$fundef_210_env_407"* %"$$fundef_210_envp_2115" to i8*
  %"$$fundef_210_cloval_2118" = insertvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (%"$$fundef_210_env_407"*, [20 x i8]*)* @"$fundef_210" to { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_210_env_voidp_2117", 1
  %"$$fundef_210_env_BoolUtils.orb_2119" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %"$$fundef_210_envp_2115", i32 0, i32 0
  %"$BoolUtils.orb_2120" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2120", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_210_env_BoolUtils.orb_2119", align 8
  %"$$fundef_210_env_sender_2121" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %"$$fundef_210_envp_2115", i32 0, i32 1
  store [20 x i8] %sender, [20 x i8]* %"$$fundef_210_env_sender_2121", align 1
  %"$$fundef_210_env_ud-registry.listByStr20Contains_2122" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %"$$fundef_210_envp_2115", i32 0, i32 2
  %"$ud-registry.listByStr20Contains_2123" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2123", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_210_env_ud-registry.listByStr20Contains_2122", align 8
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_210_cloval_2118", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_209", align 8, !dbg !28
  %"$$retval_209_2124" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_209", align 8
  ret { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_209_2124"
}

define internal void @"$fundef_218"(%"$$fundef_218_env_409"* %0, [32 x i8]* %1, %String %2) !dbg !29 {
entry:
  %"$$fundef_218_env_parent_2070" = getelementptr inbounds %"$$fundef_218_env_409", %"$$fundef_218_env_409"* %0, i32 0, i32 0
  %"$parent_envload_2071" = load [32 x i8], [32 x i8]* %"$$fundef_218_env_parent_2070", align 1
  %parent = alloca [32 x i8], align 1
  store [32 x i8] %"$parent_envload_2071", [32 x i8]* %parent, align 1
  %"$retval_219" = alloca [32 x i8], align 1
  %"$gasrem_2072" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2073" = icmp ugt i64 1, %"$gasrem_2072"
  br i1 %"$gascmp_2073", label %"$out_of_gas_2074", label %"$have_gas_2075"

"$out_of_gas_2074":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2075"

"$have_gas_2075":                                 ; preds = %"$out_of_gas_2074", %entry
  %"$consume_2076" = sub i64 %"$gasrem_2072", 1
  store i64 %"$consume_2076", i64* @_gasrem, align 8
  %labelHash = alloca [32 x i8], align 1
  %"$execptr_load_2077" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_label_2078" = alloca %String, align 8
  store %String %2, %String* %"$sha256hash_label_2078", align 8
  %"$$sha256hash_label_2078_2079" = bitcast %String* %"$sha256hash_label_2078" to i8*
  %"$sha256hash_call_2080" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_2077", %_TyDescrTy_Typ* @"$TyDescr_String_295", i8* %"$$sha256hash_label_2078_2079"), !dbg !30
  %"$sha256hash_2082" = load [32 x i8], [32 x i8]* %"$sha256hash_call_2080", align 1
  store [32 x i8] %"$sha256hash_2082", [32 x i8]* %labelHash, align 1, !dbg !30
  %"$gasrem_2083" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2084" = icmp ugt i64 1, %"$gasrem_2083"
  br i1 %"$gascmp_2084", label %"$out_of_gas_2085", label %"$have_gas_2086"

"$out_of_gas_2085":                               ; preds = %"$have_gas_2075"
  call void @_out_of_gas()
  br label %"$have_gas_2086"

"$have_gas_2086":                                 ; preds = %"$out_of_gas_2085", %"$have_gas_2075"
  %"$consume_2087" = sub i64 %"$gasrem_2083", 1
  store i64 %"$consume_2087", i64* @_gasrem, align 8
  %nodeInput = alloca [64 x i8], align 1
  %"$execptr_load_2088" = load i8*, i8** @_execptr, align 8
  %"$concat_parent_2089" = alloca [32 x i8], align 1
  %"$parent_2090" = load [32 x i8], [32 x i8]* %parent, align 1
  store [32 x i8] %"$parent_2090", [32 x i8]* %"$concat_parent_2089", align 1
  %"$$concat_parent_2089_2091" = bitcast [32 x i8]* %"$concat_parent_2089" to i8*
  %"$concat_labelHash_2092" = alloca [32 x i8], align 1
  %"$labelHash_2093" = load [32 x i8], [32 x i8]* %labelHash, align 1
  store [32 x i8] %"$labelHash_2093", [32 x i8]* %"$concat_labelHash_2092", align 1
  %"$$concat_labelHash_2092_2094" = bitcast [32 x i8]* %"$concat_labelHash_2092" to i8*
  %"$concat_call_2095" = call i8* @_concat_ByStrX(i8* %"$execptr_load_2088", i32 32, i8* %"$$concat_parent_2089_2091", i32 32, i8* %"$$concat_labelHash_2092_2094"), !dbg !31
  %"$concat_2096" = bitcast i8* %"$concat_call_2095" to [64 x i8]*
  %"$concat_2097" = load [64 x i8], [64 x i8]* %"$concat_2096", align 1
  store [64 x i8] %"$concat_2097", [64 x i8]* %nodeInput, align 1, !dbg !31
  %"$execptr_load_2098" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_nodeInput_2099" = alloca [64 x i8], align 1
  %"$nodeInput_2100" = load [64 x i8], [64 x i8]* %nodeInput, align 1
  store [64 x i8] %"$nodeInput_2100", [64 x i8]* %"$sha256hash_nodeInput_2099", align 1
  %"$$sha256hash_nodeInput_2099_2101" = bitcast [64 x i8]* %"$sha256hash_nodeInput_2099" to i8*
  %"$sha256hash_call_2102" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_2098", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_307", i8* %"$$sha256hash_nodeInput_2099_2101"), !dbg !32
  %"$sha256hash_2104" = load [32 x i8], [32 x i8]* %"$sha256hash_call_2102", align 1
  store [32 x i8] %"$sha256hash_2104", [32 x i8]* %"$retval_219", align 1, !dbg !32
  %"$$retval_219_2105" = load [32 x i8], [32 x i8]* %"$retval_219", align 1
  store [32 x i8] %"$$retval_219_2105", [32 x i8]* %1, align 1
  ret void
}

define internal { void (i8*, [32 x i8]*, %String)*, i8* } @"$fundef_216"(%"$$fundef_216_env_410"* %0, [32 x i8]* %1) !dbg !33 {
entry:
  %parent = load [32 x i8], [32 x i8]* %1, align 1
  %"$retval_217" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$gasrem_2059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2060" = icmp ugt i64 1, %"$gasrem_2059"
  br i1 %"$gascmp_2060", label %"$out_of_gas_2061", label %"$have_gas_2062"

"$out_of_gas_2061":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2062"

"$have_gas_2062":                                 ; preds = %"$out_of_gas_2061", %entry
  %"$consume_2063" = sub i64 %"$gasrem_2059", 1
  store i64 %"$consume_2063", i64* @_gasrem, align 8
  %"$$fundef_218_envp_2064_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_218_envp_2064_salloc" = call i8* @_salloc(i8* %"$$fundef_218_envp_2064_load", i64 32)
  %"$$fundef_218_envp_2064" = bitcast i8* %"$$fundef_218_envp_2064_salloc" to %"$$fundef_218_env_409"*
  %"$$fundef_218_env_voidp_2066" = bitcast %"$$fundef_218_env_409"* %"$$fundef_218_envp_2064" to i8*
  %"$$fundef_218_cloval_2067" = insertvalue { void (i8*, [32 x i8]*, %String)*, i8* } { void (i8*, [32 x i8]*, %String)* bitcast (void (%"$$fundef_218_env_409"*, [32 x i8]*, %String)* @"$fundef_218" to void (i8*, [32 x i8]*, %String)*), i8* undef }, i8* %"$$fundef_218_env_voidp_2066", 1
  %"$$fundef_218_env_parent_2068" = getelementptr inbounds %"$$fundef_218_env_409", %"$$fundef_218_env_409"* %"$$fundef_218_envp_2064", i32 0, i32 0
  store [32 x i8] %parent, [32 x i8]* %"$$fundef_218_env_parent_2068", align 1
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$$fundef_218_cloval_2067", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$retval_217", align 8, !dbg !34
  %"$$retval_217_2069" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$retval_217", align 8
  ret { void (i8*, [32 x i8]*, %String)*, i8* } %"$$retval_217_2069"
}

define internal void @"$fundef_220"(%"$$fundef_220_env_411"* %0, [20 x i8]* %1, %TName_Option_ud-registry.Record* %2) !dbg !35 {
entry:
  %"$$fundef_220_env_ud-registry.zeroByStr20_2013" = getelementptr inbounds %"$$fundef_220_env_411", %"$$fundef_220_env_411"* %0, i32 0, i32 0
  %"$ud-registry.zeroByStr20_envload_2014" = load [20 x i8], [20 x i8]* %"$$fundef_220_env_ud-registry.zeroByStr20_2013", align 1
  %ud-registry.zeroByStr20 = alloca [20 x i8], align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_envload_2014", [20 x i8]* %ud-registry.zeroByStr20, align 1
  %"$retval_221" = alloca [20 x i8], align 1
  %"$gasrem_2015" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2016" = icmp ugt i64 2, %"$gasrem_2015"
  br i1 %"$gascmp_2016", label %"$out_of_gas_2017", label %"$have_gas_2018"

"$out_of_gas_2017":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2018"

"$have_gas_2018":                                 ; preds = %"$out_of_gas_2017", %entry
  %"$consume_2019" = sub i64 %"$gasrem_2015", 2
  store i64 %"$consume_2019", i64* @_gasrem, align 8
  %"$maybeRecord_tag_2021" = getelementptr inbounds %TName_Option_ud-registry.Record, %TName_Option_ud-registry.Record* %2, i32 0, i32 0
  %"$maybeRecord_tag_2022" = load i8, i8* %"$maybeRecord_tag_2021", align 1
  switch i8 %"$maybeRecord_tag_2022", label %"$empty_default_2023" [
    i8 1, label %"$None_2024"
    i8 0, label %"$Some_2032"
  ], !dbg !36

"$None_2024":                                     ; preds = %"$have_gas_2018"
  %"$maybeRecord_2025" = bitcast %TName_Option_ud-registry.Record* %2 to %CName_None_ud-registry.Record*
  %"$gasrem_2026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2027" = icmp ugt i64 1, %"$gasrem_2026"
  br i1 %"$gascmp_2027", label %"$out_of_gas_2028", label %"$have_gas_2029"

"$out_of_gas_2028":                               ; preds = %"$None_2024"
  call void @_out_of_gas()
  br label %"$have_gas_2029"

"$have_gas_2029":                                 ; preds = %"$out_of_gas_2028", %"$None_2024"
  %"$consume_2030" = sub i64 %"$gasrem_2026", 1
  store i64 %"$consume_2030", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_2031" = load [20 x i8], [20 x i8]* %ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_2031", [20 x i8]* %"$retval_221", align 1, !dbg !37
  br label %"$matchsucc_2020"

"$Some_2032":                                     ; preds = %"$have_gas_2018"
  %"$maybeRecord_2033" = bitcast %TName_Option_ud-registry.Record* %2 to %CName_Some_ud-registry.Record*
  %"$record_gep_2034" = getelementptr inbounds %CName_Some_ud-registry.Record, %CName_Some_ud-registry.Record* %"$maybeRecord_2033", i32 0, i32 1
  %"$record_load_2035" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %"$record_gep_2034", align 8
  %record = alloca %TName_ud-registry.Record*, align 8
  store %TName_ud-registry.Record* %"$record_load_2035", %TName_ud-registry.Record** %record, align 8
  %"$gasrem_2036" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2037" = icmp ugt i64 1, %"$gasrem_2036"
  br i1 %"$gascmp_2037", label %"$out_of_gas_2038", label %"$have_gas_2039"

"$out_of_gas_2038":                               ; preds = %"$Some_2032"
  call void @_out_of_gas()
  br label %"$have_gas_2039"

"$have_gas_2039":                                 ; preds = %"$out_of_gas_2038", %"$Some_2032"
  %"$consume_2040" = sub i64 %"$gasrem_2036", 1
  store i64 %"$consume_2040", i64* @_gasrem, align 8
  %"$record_2042" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %record, align 8
  %"$record_tag_2043" = getelementptr inbounds %TName_ud-registry.Record, %TName_ud-registry.Record* %"$record_2042", i32 0, i32 0
  %"$record_tag_2044" = load i8, i8* %"$record_tag_2043", align 1
  switch i8 %"$record_tag_2044", label %"$empty_default_2045" [
    i8 0, label %"$ud-registry.Record_2046"
  ], !dbg !40

"$ud-registry.Record_2046":                       ; preds = %"$have_gas_2039"
  %"$record_2047" = bitcast %TName_ud-registry.Record* %"$record_2042" to %CName_ud-registry.Record*
  %"$owner_gep_2048" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_2047", i32 0, i32 1
  %"$owner_load_2049" = load [20 x i8], [20 x i8]* %"$owner_gep_2048", align 1
  %owner = alloca [20 x i8], align 1
  store [20 x i8] %"$owner_load_2049", [20 x i8]* %owner, align 1
  %"$resolver_gep_2050" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_2047", i32 0, i32 2
  %"$resolver_load_2051" = load [20 x i8], [20 x i8]* %"$resolver_gep_2050", align 1
  %resolver = alloca [20 x i8], align 1
  store [20 x i8] %"$resolver_load_2051", [20 x i8]* %resolver, align 1
  %"$gasrem_2052" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2053" = icmp ugt i64 1, %"$gasrem_2052"
  br i1 %"$gascmp_2053", label %"$out_of_gas_2054", label %"$have_gas_2055"

"$out_of_gas_2054":                               ; preds = %"$ud-registry.Record_2046"
  call void @_out_of_gas()
  br label %"$have_gas_2055"

"$have_gas_2055":                                 ; preds = %"$out_of_gas_2054", %"$ud-registry.Record_2046"
  %"$consume_2056" = sub i64 %"$gasrem_2052", 1
  store i64 %"$consume_2056", i64* @_gasrem, align 8
  %"$owner_2057" = load [20 x i8], [20 x i8]* %owner, align 1
  store [20 x i8] %"$owner_2057", [20 x i8]* %"$retval_221", align 1, !dbg !42
  br label %"$matchsucc_2041"

"$empty_default_2045":                            ; preds = %"$have_gas_2039"
  br label %"$matchsucc_2041"

"$matchsucc_2041":                                ; preds = %"$have_gas_2055", %"$empty_default_2045"
  br label %"$matchsucc_2020"

"$empty_default_2023":                            ; preds = %"$have_gas_2018"
  br label %"$matchsucc_2020"

"$matchsucc_2020":                                ; preds = %"$matchsucc_2041", %"$have_gas_2029", %"$empty_default_2023"
  %"$$retval_221_2058" = load [20 x i8], [20 x i8]* %"$retval_221", align 1
  store [20 x i8] %"$$retval_221_2058", [20 x i8]* %1, align 1
  ret void
}

define internal i8* @"$fundef_222"(%"$$fundef_222_env_412"* %0, %String %1) !dbg !45 {
entry:
  %"$retval_223" = alloca i8*, align 8
  %"$gasrem_1990" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1991" = icmp ugt i64 1, %"$gasrem_1990"
  br i1 %"$gascmp_1991", label %"$out_of_gas_1992", label %"$have_gas_1993"

"$out_of_gas_1992":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1993"

"$have_gas_1993":                                 ; preds = %"$out_of_gas_1992", %entry
  %"$consume_1994" = sub i64 %"$gasrem_1990", 1
  store i64 %"$consume_1994", i64* @_gasrem, align 8
  %"$msgobj_1995_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1995_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1995_salloc_load", i64 81)
  %"$msgobj_1995_salloc" = bitcast i8* %"$msgobj_1995_salloc_salloc" to [81 x i8]*
  %"$msgobj_1995" = bitcast [81 x i8]* %"$msgobj_1995_salloc" to i8*
  store i8 2, i8* %"$msgobj_1995", align 1
  %"$msgobj_fname_1997" = getelementptr i8, i8* %"$msgobj_1995", i32 1
  %"$msgobj_fname_1998" = bitcast i8* %"$msgobj_fname_1997" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1996", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1998", align 8
  %"$msgobj_td_1999" = getelementptr i8, i8* %"$msgobj_1995", i32 17
  %"$msgobj_td_2000" = bitcast i8* %"$msgobj_td_1999" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_2000", align 8
  %"$msgobj_v_2002" = getelementptr i8, i8* %"$msgobj_1995", i32 25
  %"$msgobj_v_2003" = bitcast i8* %"$msgobj_v_2002" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2001", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_2003", align 8
  %"$msgobj_fname_2005" = getelementptr i8, i8* %"$msgobj_1995", i32 41
  %"$msgobj_fname_2006" = bitcast i8* %"$msgobj_fname_2005" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2004", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_2006", align 8
  %"$msgobj_td_2007" = getelementptr i8, i8* %"$msgobj_1995", i32 57
  %"$msgobj_td_2008" = bitcast i8* %"$msgobj_td_2007" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_2008", align 8
  %"$msgobj_v_2009" = getelementptr i8, i8* %"$msgobj_1995", i32 65
  %"$msgobj_v_2010" = bitcast i8* %"$msgobj_v_2009" to %String*
  store %String %1, %String* %"$msgobj_v_2010", align 8
  store i8* %"$msgobj_1995", i8** %"$retval_223", align 8, !dbg !46
  %"$$retval_223_2012" = load i8*, i8** %"$retval_223", align 8
  ret i8* %"$$retval_223_2012"
}

define internal i8* @"$fundef_228"(%"$$fundef_228_env_413"* %0, [20 x i8]* %1) !dbg !47 {
entry:
  %resolver = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_228_env_node_1947" = getelementptr inbounds %"$$fundef_228_env_413", %"$$fundef_228_env_413"* %0, i32 0, i32 0
  %"$node_envload_1948" = load [32 x i8], [32 x i8]* %"$$fundef_228_env_node_1947", align 1
  %node = alloca [32 x i8], align 1
  store [32 x i8] %"$node_envload_1948", [32 x i8]* %node, align 1
  %"$$fundef_228_env_owner_1949" = getelementptr inbounds %"$$fundef_228_env_413", %"$$fundef_228_env_413"* %0, i32 0, i32 1
  %"$owner_envload_1950" = load [20 x i8], [20 x i8]* %"$$fundef_228_env_owner_1949", align 1
  %owner = alloca [20 x i8], align 1
  store [20 x i8] %"$owner_envload_1950", [20 x i8]* %owner, align 1
  %"$retval_229" = alloca i8*, align 8
  %"$gasrem_1951" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1952" = icmp ugt i64 1, %"$gasrem_1951"
  br i1 %"$gascmp_1952", label %"$out_of_gas_1953", label %"$have_gas_1954"

"$out_of_gas_1953":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1954"

"$have_gas_1954":                                 ; preds = %"$out_of_gas_1953", %entry
  %"$consume_1955" = sub i64 %"$gasrem_1951", 1
  store i64 %"$consume_1955", i64* @_gasrem, align 8
  %"$msgobj_1956_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1956_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1956_salloc_load", i64 185)
  %"$msgobj_1956_salloc" = bitcast i8* %"$msgobj_1956_salloc_salloc" to [185 x i8]*
  %"$msgobj_1956" = bitcast [185 x i8]* %"$msgobj_1956_salloc" to i8*
  store i8 4, i8* %"$msgobj_1956", align 1
  %"$msgobj_fname_1958" = getelementptr i8, i8* %"$msgobj_1956", i32 1
  %"$msgobj_fname_1959" = bitcast i8* %"$msgobj_fname_1958" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1957", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1959", align 8
  %"$msgobj_td_1960" = getelementptr i8, i8* %"$msgobj_1956", i32 17
  %"$msgobj_td_1961" = bitcast i8* %"$msgobj_td_1960" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_1961", align 8
  %"$msgobj_v_1963" = getelementptr i8, i8* %"$msgobj_1956", i32 25
  %"$msgobj_v_1964" = bitcast i8* %"$msgobj_v_1963" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1962", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_1964", align 8
  %"$msgobj_fname_1966" = getelementptr i8, i8* %"$msgobj_1956", i32 41
  %"$msgobj_fname_1967" = bitcast i8* %"$msgobj_fname_1966" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1965", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1967", align 8
  %"$msgobj_td_1968" = getelementptr i8, i8* %"$msgobj_1956", i32 57
  %"$msgobj_td_1969" = bitcast i8* %"$msgobj_td_1968" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_1969", align 8
  %"$node_1970" = load [32 x i8], [32 x i8]* %node, align 1
  %"$msgobj_v_1971" = getelementptr i8, i8* %"$msgobj_1956", i32 65
  %"$msgobj_v_1972" = bitcast i8* %"$msgobj_v_1971" to [32 x i8]*
  store [32 x i8] %"$node_1970", [32 x i8]* %"$msgobj_v_1972", align 1
  %"$msgobj_fname_1974" = getelementptr i8, i8* %"$msgobj_1956", i32 97
  %"$msgobj_fname_1975" = bitcast i8* %"$msgobj_fname_1974" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1973", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1975", align 8
  %"$msgobj_td_1976" = getelementptr i8, i8* %"$msgobj_1956", i32 113
  %"$msgobj_td_1977" = bitcast i8* %"$msgobj_td_1976" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_1977", align 8
  %"$owner_1978" = load [20 x i8], [20 x i8]* %owner, align 1
  %"$msgobj_v_1979" = getelementptr i8, i8* %"$msgobj_1956", i32 121
  %"$msgobj_v_1980" = bitcast i8* %"$msgobj_v_1979" to [20 x i8]*
  store [20 x i8] %"$owner_1978", [20 x i8]* %"$msgobj_v_1980", align 1
  %"$msgobj_fname_1982" = getelementptr i8, i8* %"$msgobj_1956", i32 141
  %"$msgobj_fname_1983" = bitcast i8* %"$msgobj_fname_1982" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1981", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_1983", align 8
  %"$msgobj_td_1984" = getelementptr i8, i8* %"$msgobj_1956", i32 157
  %"$msgobj_td_1985" = bitcast i8* %"$msgobj_td_1984" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_1985", align 8
  %"$msgobj_v_1986" = getelementptr i8, i8* %"$msgobj_1956", i32 165
  %"$msgobj_v_1987" = bitcast i8* %"$msgobj_v_1986" to [20 x i8]*
  store [20 x i8] %resolver, [20 x i8]* %"$msgobj_v_1987", align 1
  store i8* %"$msgobj_1956", i8** %"$retval_229", align 8, !dbg !48
  %"$$retval_229_1989" = load i8*, i8** %"$retval_229", align 8
  ret i8* %"$$retval_229_1989"
}

define internal { i8* (i8*, [20 x i8]*)*, i8* } @"$fundef_226"(%"$$fundef_226_env_414"* %0, [20 x i8]* %1) !dbg !49 {
entry:
  %owner = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_226_env_node_1932" = getelementptr inbounds %"$$fundef_226_env_414", %"$$fundef_226_env_414"* %0, i32 0, i32 0
  %"$node_envload_1933" = load [32 x i8], [32 x i8]* %"$$fundef_226_env_node_1932", align 1
  %node = alloca [32 x i8], align 1
  store [32 x i8] %"$node_envload_1933", [32 x i8]* %node, align 1
  %"$retval_227" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1934" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1935" = icmp ugt i64 1, %"$gasrem_1934"
  br i1 %"$gascmp_1935", label %"$out_of_gas_1936", label %"$have_gas_1937"

"$out_of_gas_1936":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1937"

"$have_gas_1937":                                 ; preds = %"$out_of_gas_1936", %entry
  %"$consume_1938" = sub i64 %"$gasrem_1934", 1
  store i64 %"$consume_1938", i64* @_gasrem, align 8
  %"$$fundef_228_envp_1939_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_228_envp_1939_salloc" = call i8* @_salloc(i8* %"$$fundef_228_envp_1939_load", i64 52)
  %"$$fundef_228_envp_1939" = bitcast i8* %"$$fundef_228_envp_1939_salloc" to %"$$fundef_228_env_413"*
  %"$$fundef_228_env_voidp_1941" = bitcast %"$$fundef_228_env_413"* %"$$fundef_228_envp_1939" to i8*
  %"$$fundef_228_cloval_1942" = insertvalue { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_228_env_413"*, [20 x i8]*)* @"$fundef_228" to i8* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_228_env_voidp_1941", 1
  %"$$fundef_228_env_node_1943" = getelementptr inbounds %"$$fundef_228_env_413", %"$$fundef_228_env_413"* %"$$fundef_228_envp_1939", i32 0, i32 0
  %"$node_1944" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_1944", [32 x i8]* %"$$fundef_228_env_node_1943", align 1
  %"$$fundef_228_env_owner_1945" = getelementptr inbounds %"$$fundef_228_env_413", %"$$fundef_228_env_413"* %"$$fundef_228_envp_1939", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$$fundef_228_env_owner_1945", align 1
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$fundef_228_cloval_1942", { i8* (i8*, [20 x i8]*)*, i8* }* %"$retval_227", align 8, !dbg !50
  %"$$retval_227_1946" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$retval_227", align 8
  ret { i8* (i8*, [20 x i8]*)*, i8* } %"$$retval_227_1946"
}

define internal { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_224"(%"$$fundef_224_env_415"* %0, [32 x i8]* %1) !dbg !51 {
entry:
  %node = load [32 x i8], [32 x i8]* %1, align 1
  %"$retval_225" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1921" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1922" = icmp ugt i64 1, %"$gasrem_1921"
  br i1 %"$gascmp_1922", label %"$out_of_gas_1923", label %"$have_gas_1924"

"$out_of_gas_1923":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1924"

"$have_gas_1924":                                 ; preds = %"$out_of_gas_1923", %entry
  %"$consume_1925" = sub i64 %"$gasrem_1921", 1
  store i64 %"$consume_1925", i64* @_gasrem, align 8
  %"$$fundef_226_envp_1926_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_226_envp_1926_salloc" = call i8* @_salloc(i8* %"$$fundef_226_envp_1926_load", i64 32)
  %"$$fundef_226_envp_1926" = bitcast i8* %"$$fundef_226_envp_1926_salloc" to %"$$fundef_226_env_414"*
  %"$$fundef_226_env_voidp_1928" = bitcast %"$$fundef_226_env_414"* %"$$fundef_226_envp_1926" to i8*
  %"$$fundef_226_cloval_1929" = insertvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_226_env_414"*, [20 x i8]*)* @"$fundef_226" to { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_226_env_voidp_1928", 1
  %"$$fundef_226_env_node_1930" = getelementptr inbounds %"$$fundef_226_env_414", %"$$fundef_226_env_414"* %"$$fundef_226_envp_1926", i32 0, i32 0
  store [32 x i8] %node, [32 x i8]* %"$$fundef_226_env_node_1930", align 1
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_226_cloval_1929", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_225", align 8, !dbg !52
  %"$$retval_225_1931" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_225", align 8
  ret { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_225_1931"
}

define internal i8* @"$fundef_232"(%"$$fundef_232_env_416"* %0, %String %1) !dbg !53 {
entry:
  %"$$fundef_232_env_parent_1888" = getelementptr inbounds %"$$fundef_232_env_416", %"$$fundef_232_env_416"* %0, i32 0, i32 0
  %"$parent_envload_1889" = load [32 x i8], [32 x i8]* %"$$fundef_232_env_parent_1888", align 1
  %parent = alloca [32 x i8], align 1
  store [32 x i8] %"$parent_envload_1889", [32 x i8]* %parent, align 1
  %"$retval_233" = alloca i8*, align 8
  %"$gasrem_1890" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1891" = icmp ugt i64 1, %"$gasrem_1890"
  br i1 %"$gascmp_1891", label %"$out_of_gas_1892", label %"$have_gas_1893"

"$out_of_gas_1892":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1893"

"$have_gas_1893":                                 ; preds = %"$out_of_gas_1892", %entry
  %"$consume_1894" = sub i64 %"$gasrem_1890", 1
  store i64 %"$consume_1894", i64* @_gasrem, align 8
  %"$msgobj_1895_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1895_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1895_salloc_load", i64 137)
  %"$msgobj_1895_salloc" = bitcast i8* %"$msgobj_1895_salloc_salloc" to [137 x i8]*
  %"$msgobj_1895" = bitcast [137 x i8]* %"$msgobj_1895_salloc" to i8*
  store i8 3, i8* %"$msgobj_1895", align 1
  %"$msgobj_fname_1897" = getelementptr i8, i8* %"$msgobj_1895", i32 1
  %"$msgobj_fname_1898" = bitcast i8* %"$msgobj_fname_1897" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1896", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1898", align 8
  %"$msgobj_td_1899" = getelementptr i8, i8* %"$msgobj_1895", i32 17
  %"$msgobj_td_1900" = bitcast i8* %"$msgobj_td_1899" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_1900", align 8
  %"$msgobj_v_1902" = getelementptr i8, i8* %"$msgobj_1895", i32 25
  %"$msgobj_v_1903" = bitcast i8* %"$msgobj_v_1902" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1901", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1903", align 8
  %"$msgobj_fname_1905" = getelementptr i8, i8* %"$msgobj_1895", i32 41
  %"$msgobj_fname_1906" = bitcast i8* %"$msgobj_fname_1905" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_1904", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_1906", align 8
  %"$msgobj_td_1907" = getelementptr i8, i8* %"$msgobj_1895", i32 57
  %"$msgobj_td_1908" = bitcast i8* %"$msgobj_td_1907" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_1908", align 8
  %"$parent_1909" = load [32 x i8], [32 x i8]* %parent, align 1
  %"$msgobj_v_1910" = getelementptr i8, i8* %"$msgobj_1895", i32 65
  %"$msgobj_v_1911" = bitcast i8* %"$msgobj_v_1910" to [32 x i8]*
  store [32 x i8] %"$parent_1909", [32 x i8]* %"$msgobj_v_1911", align 1
  %"$msgobj_fname_1913" = getelementptr i8, i8* %"$msgobj_1895", i32 97
  %"$msgobj_fname_1914" = bitcast i8* %"$msgobj_fname_1913" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1912", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1914", align 8
  %"$msgobj_td_1915" = getelementptr i8, i8* %"$msgobj_1895", i32 113
  %"$msgobj_td_1916" = bitcast i8* %"$msgobj_td_1915" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_1916", align 8
  %"$msgobj_v_1917" = getelementptr i8, i8* %"$msgobj_1895", i32 121
  %"$msgobj_v_1918" = bitcast i8* %"$msgobj_v_1917" to %String*
  store %String %1, %String* %"$msgobj_v_1918", align 8
  store i8* %"$msgobj_1895", i8** %"$retval_233", align 8, !dbg !54
  %"$$retval_233_1920" = load i8*, i8** %"$retval_233", align 8
  ret i8* %"$$retval_233_1920"
}

define internal { i8* (i8*, %String)*, i8* } @"$fundef_230"(%"$$fundef_230_env_417"* %0, [32 x i8]* %1) !dbg !55 {
entry:
  %parent = load [32 x i8], [32 x i8]* %1, align 1
  %"$retval_231" = alloca { i8* (i8*, %String)*, i8* }, align 8
  %"$gasrem_1877" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1878" = icmp ugt i64 1, %"$gasrem_1877"
  br i1 %"$gascmp_1878", label %"$out_of_gas_1879", label %"$have_gas_1880"

"$out_of_gas_1879":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1880"

"$have_gas_1880":                                 ; preds = %"$out_of_gas_1879", %entry
  %"$consume_1881" = sub i64 %"$gasrem_1877", 1
  store i64 %"$consume_1881", i64* @_gasrem, align 8
  %"$$fundef_232_envp_1882_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_232_envp_1882_salloc" = call i8* @_salloc(i8* %"$$fundef_232_envp_1882_load", i64 32)
  %"$$fundef_232_envp_1882" = bitcast i8* %"$$fundef_232_envp_1882_salloc" to %"$$fundef_232_env_416"*
  %"$$fundef_232_env_voidp_1884" = bitcast %"$$fundef_232_env_416"* %"$$fundef_232_envp_1882" to i8*
  %"$$fundef_232_cloval_1885" = insertvalue { i8* (i8*, %String)*, i8* } { i8* (i8*, %String)* bitcast (i8* (%"$$fundef_232_env_416"*, %String)* @"$fundef_232" to i8* (i8*, %String)*), i8* undef }, i8* %"$$fundef_232_env_voidp_1884", 1
  %"$$fundef_232_env_parent_1886" = getelementptr inbounds %"$$fundef_232_env_416", %"$$fundef_232_env_416"* %"$$fundef_232_envp_1882", i32 0, i32 0
  store [32 x i8] %parent, [32 x i8]* %"$$fundef_232_env_parent_1886", align 1
  store { i8* (i8*, %String)*, i8* } %"$$fundef_232_cloval_1885", { i8* (i8*, %String)*, i8* }* %"$retval_231", align 8, !dbg !56
  %"$$retval_231_1887" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$retval_231", align 8
  ret { i8* (i8*, %String)*, i8* } %"$$retval_231_1887"
}

define internal i8* @"$fundef_234"(%"$$fundef_234_env_418"* %0, [20 x i8]* %1) !dbg !57 {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_235" = alloca i8*, align 8
  %"$gasrem_1854" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1855" = icmp ugt i64 1, %"$gasrem_1854"
  br i1 %"$gascmp_1855", label %"$out_of_gas_1856", label %"$have_gas_1857"

"$out_of_gas_1856":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1857"

"$have_gas_1857":                                 ; preds = %"$out_of_gas_1856", %entry
  %"$consume_1858" = sub i64 %"$gasrem_1854", 1
  store i64 %"$consume_1858", i64* @_gasrem, align 8
  %"$msgobj_1859_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1859_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1859_salloc_load", i64 85)
  %"$msgobj_1859_salloc" = bitcast i8* %"$msgobj_1859_salloc_salloc" to [85 x i8]*
  %"$msgobj_1859" = bitcast [85 x i8]* %"$msgobj_1859_salloc" to i8*
  store i8 2, i8* %"$msgobj_1859", align 1
  %"$msgobj_fname_1861" = getelementptr i8, i8* %"$msgobj_1859", i32 1
  %"$msgobj_fname_1862" = bitcast i8* %"$msgobj_fname_1861" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1860", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1862", align 8
  %"$msgobj_td_1863" = getelementptr i8, i8* %"$msgobj_1859", i32 17
  %"$msgobj_td_1864" = bitcast i8* %"$msgobj_td_1863" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_1864", align 8
  %"$msgobj_v_1866" = getelementptr i8, i8* %"$msgobj_1859", i32 25
  %"$msgobj_v_1867" = bitcast i8* %"$msgobj_v_1866" to %String*
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_1865", i32 0, i32 0), i32 12 }, %String* %"$msgobj_v_1867", align 8
  %"$msgobj_fname_1869" = getelementptr i8, i8* %"$msgobj_1859", i32 41
  %"$msgobj_fname_1870" = bitcast i8* %"$msgobj_fname_1869" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1868", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1870", align 8
  %"$msgobj_td_1871" = getelementptr i8, i8* %"$msgobj_1859", i32 57
  %"$msgobj_td_1872" = bitcast i8* %"$msgobj_td_1871" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_1872", align 8
  %"$msgobj_v_1873" = getelementptr i8, i8* %"$msgobj_1859", i32 65
  %"$msgobj_v_1874" = bitcast i8* %"$msgobj_v_1873" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %"$msgobj_v_1874", align 1
  store i8* %"$msgobj_1859", i8** %"$retval_235", align 8, !dbg !58
  %"$$retval_235_1876" = load i8*, i8** %"$retval_235", align 8
  ret i8* %"$$retval_235_1876"
}

define internal i8* @"$fundef_236"(%"$$fundef_236_env_419"* %0, [20 x i8]* %1) !dbg !59 {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_237" = alloca i8*, align 8
  %"$gasrem_1831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1832" = icmp ugt i64 1, %"$gasrem_1831"
  br i1 %"$gascmp_1832", label %"$out_of_gas_1833", label %"$have_gas_1834"

"$out_of_gas_1833":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1834"

"$have_gas_1834":                                 ; preds = %"$out_of_gas_1833", %entry
  %"$consume_1835" = sub i64 %"$gasrem_1831", 1
  store i64 %"$consume_1835", i64* @_gasrem, align 8
  %"$msgobj_1836_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1836_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1836_salloc_load", i64 85)
  %"$msgobj_1836_salloc" = bitcast i8* %"$msgobj_1836_salloc_salloc" to [85 x i8]*
  %"$msgobj_1836" = bitcast [85 x i8]* %"$msgobj_1836_salloc" to i8*
  store i8 2, i8* %"$msgobj_1836", align 1
  %"$msgobj_fname_1838" = getelementptr i8, i8* %"$msgobj_1836", i32 1
  %"$msgobj_fname_1839" = bitcast i8* %"$msgobj_fname_1838" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1837", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1839", align 8
  %"$msgobj_td_1840" = getelementptr i8, i8* %"$msgobj_1836", i32 17
  %"$msgobj_td_1841" = bitcast i8* %"$msgobj_td_1840" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_1841", align 8
  %"$msgobj_v_1843" = getelementptr i8, i8* %"$msgobj_1836", i32 25
  %"$msgobj_v_1844" = bitcast i8* %"$msgobj_v_1843" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1842", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_1844", align 8
  %"$msgobj_fname_1846" = getelementptr i8, i8* %"$msgobj_1836", i32 41
  %"$msgobj_fname_1847" = bitcast i8* %"$msgobj_fname_1846" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1845", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1847", align 8
  %"$msgobj_td_1848" = getelementptr i8, i8* %"$msgobj_1836", i32 57
  %"$msgobj_td_1849" = bitcast i8* %"$msgobj_td_1848" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_1849", align 8
  %"$msgobj_v_1850" = getelementptr i8, i8* %"$msgobj_1836", i32 65
  %"$msgobj_v_1851" = bitcast i8* %"$msgobj_v_1850" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %"$msgobj_v_1851", align 1
  store i8* %"$msgobj_1836", i8** %"$retval_237", align 8, !dbg !60
  %"$$retval_237_1853" = load i8*, i8** %"$retval_237", align 8
  ret i8* %"$$retval_237_1853"
}

define internal i8* @"$fundef_242"(%"$$fundef_242_env_420"* %0, %TName_Bool* %1) !dbg !61 {
entry:
  %"$$fundef_242_env_operator_1788" = getelementptr inbounds %"$$fundef_242_env_420", %"$$fundef_242_env_420"* %0, i32 0, i32 0
  %"$operator_envload_1789" = load [20 x i8], [20 x i8]* %"$$fundef_242_env_operator_1788", align 1
  %operator = alloca [20 x i8], align 1
  store [20 x i8] %"$operator_envload_1789", [20 x i8]* %operator, align 1
  %"$$fundef_242_env_user_1790" = getelementptr inbounds %"$$fundef_242_env_420", %"$$fundef_242_env_420"* %0, i32 0, i32 1
  %"$user_envload_1791" = load [20 x i8], [20 x i8]* %"$$fundef_242_env_user_1790", align 1
  %user = alloca [20 x i8], align 1
  store [20 x i8] %"$user_envload_1791", [20 x i8]* %user, align 1
  %"$retval_243" = alloca i8*, align 8
  %"$gasrem_1792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1793" = icmp ugt i64 1, %"$gasrem_1792"
  br i1 %"$gascmp_1793", label %"$out_of_gas_1794", label %"$have_gas_1795"

"$out_of_gas_1794":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1795"

"$have_gas_1795":                                 ; preds = %"$out_of_gas_1794", %entry
  %"$consume_1796" = sub i64 %"$gasrem_1792", 1
  store i64 %"$consume_1796", i64* @_gasrem, align 8
  %"$msgobj_1797_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1797_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1797_salloc_load", i64 161)
  %"$msgobj_1797_salloc" = bitcast i8* %"$msgobj_1797_salloc_salloc" to [161 x i8]*
  %"$msgobj_1797" = bitcast [161 x i8]* %"$msgobj_1797_salloc" to i8*
  store i8 4, i8* %"$msgobj_1797", align 1
  %"$msgobj_fname_1799" = getelementptr i8, i8* %"$msgobj_1797", i32 1
  %"$msgobj_fname_1800" = bitcast i8* %"$msgobj_fname_1799" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1798", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1800", align 8
  %"$msgobj_td_1801" = getelementptr i8, i8* %"$msgobj_1797", i32 17
  %"$msgobj_td_1802" = bitcast i8* %"$msgobj_td_1801" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_1802", align 8
  %"$msgobj_v_1804" = getelementptr i8, i8* %"$msgobj_1797", i32 25
  %"$msgobj_v_1805" = bitcast i8* %"$msgobj_v_1804" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_1803", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_1805", align 8
  %"$msgobj_fname_1807" = getelementptr i8, i8* %"$msgobj_1797", i32 41
  %"$msgobj_fname_1808" = bitcast i8* %"$msgobj_fname_1807" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1806", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1808", align 8
  %"$msgobj_td_1809" = getelementptr i8, i8* %"$msgobj_1797", i32 57
  %"$msgobj_td_1810" = bitcast i8* %"$msgobj_td_1809" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_1810", align 8
  %"$user_1811" = load [20 x i8], [20 x i8]* %user, align 1
  %"$msgobj_v_1812" = getelementptr i8, i8* %"$msgobj_1797", i32 65
  %"$msgobj_v_1813" = bitcast i8* %"$msgobj_v_1812" to [20 x i8]*
  store [20 x i8] %"$user_1811", [20 x i8]* %"$msgobj_v_1813", align 1
  %"$msgobj_fname_1815" = getelementptr i8, i8* %"$msgobj_1797", i32 85
  %"$msgobj_fname_1816" = bitcast i8* %"$msgobj_fname_1815" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1814", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_1816", align 8
  %"$msgobj_td_1817" = getelementptr i8, i8* %"$msgobj_1797", i32 101
  %"$msgobj_td_1818" = bitcast i8* %"$msgobj_td_1817" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_1818", align 8
  %"$operator_1819" = load [20 x i8], [20 x i8]* %operator, align 1
  %"$msgobj_v_1820" = getelementptr i8, i8* %"$msgobj_1797", i32 109
  %"$msgobj_v_1821" = bitcast i8* %"$msgobj_v_1820" to [20 x i8]*
  store [20 x i8] %"$operator_1819", [20 x i8]* %"$msgobj_v_1821", align 1
  %"$msgobj_fname_1823" = getelementptr i8, i8* %"$msgobj_1797", i32 129
  %"$msgobj_fname_1824" = bitcast i8* %"$msgobj_fname_1823" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1822", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1824", align 8
  %"$msgobj_td_1825" = getelementptr i8, i8* %"$msgobj_1797", i32 145
  %"$msgobj_td_1826" = bitcast i8* %"$msgobj_td_1825" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321", %_TyDescrTy_Typ** %"$msgobj_td_1826", align 8
  %"$msgobj_v_1827" = getelementptr i8, i8* %"$msgobj_1797", i32 153
  %"$msgobj_v_1828" = bitcast i8* %"$msgobj_v_1827" to %TName_Bool**
  store %TName_Bool* %1, %TName_Bool** %"$msgobj_v_1828", align 8
  store i8* %"$msgobj_1797", i8** %"$retval_243", align 8, !dbg !62
  %"$$retval_243_1830" = load i8*, i8** %"$retval_243", align 8
  ret i8* %"$$retval_243_1830"
}

define internal { i8* (i8*, %TName_Bool*)*, i8* } @"$fundef_240"(%"$$fundef_240_env_421"* %0, [20 x i8]* %1) !dbg !63 {
entry:
  %operator = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_240_env_user_1773" = getelementptr inbounds %"$$fundef_240_env_421", %"$$fundef_240_env_421"* %0, i32 0, i32 0
  %"$user_envload_1774" = load [20 x i8], [20 x i8]* %"$$fundef_240_env_user_1773", align 1
  %user = alloca [20 x i8], align 1
  store [20 x i8] %"$user_envload_1774", [20 x i8]* %user, align 1
  %"$retval_241" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_1775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1776" = icmp ugt i64 1, %"$gasrem_1775"
  br i1 %"$gascmp_1776", label %"$out_of_gas_1777", label %"$have_gas_1778"

"$out_of_gas_1777":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1778"

"$have_gas_1778":                                 ; preds = %"$out_of_gas_1777", %entry
  %"$consume_1779" = sub i64 %"$gasrem_1775", 1
  store i64 %"$consume_1779", i64* @_gasrem, align 8
  %"$$fundef_242_envp_1780_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_242_envp_1780_salloc" = call i8* @_salloc(i8* %"$$fundef_242_envp_1780_load", i64 40)
  %"$$fundef_242_envp_1780" = bitcast i8* %"$$fundef_242_envp_1780_salloc" to %"$$fundef_242_env_420"*
  %"$$fundef_242_env_voidp_1782" = bitcast %"$$fundef_242_env_420"* %"$$fundef_242_envp_1780" to i8*
  %"$$fundef_242_cloval_1783" = insertvalue { i8* (i8*, %TName_Bool*)*, i8* } { i8* (i8*, %TName_Bool*)* bitcast (i8* (%"$$fundef_242_env_420"*, %TName_Bool*)* @"$fundef_242" to i8* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_242_env_voidp_1782", 1
  %"$$fundef_242_env_operator_1784" = getelementptr inbounds %"$$fundef_242_env_420", %"$$fundef_242_env_420"* %"$$fundef_242_envp_1780", i32 0, i32 0
  store [20 x i8] %operator, [20 x i8]* %"$$fundef_242_env_operator_1784", align 1
  %"$$fundef_242_env_user_1785" = getelementptr inbounds %"$$fundef_242_env_420", %"$$fundef_242_env_420"* %"$$fundef_242_envp_1780", i32 0, i32 1
  %"$user_1786" = load [20 x i8], [20 x i8]* %user, align 1
  store [20 x i8] %"$user_1786", [20 x i8]* %"$$fundef_242_env_user_1785", align 1
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$fundef_242_cloval_1783", { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_241", align 8, !dbg !64
  %"$$retval_241_1787" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_241", align 8
  ret { i8* (i8*, %TName_Bool*)*, i8* } %"$$retval_241_1787"
}

define internal { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_238"(%"$$fundef_238_env_422"* %0, [20 x i8]* %1) !dbg !65 {
entry:
  %user = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_239" = alloca { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1763" = icmp ugt i64 1, %"$gasrem_1762"
  br i1 %"$gascmp_1763", label %"$out_of_gas_1764", label %"$have_gas_1765"

"$out_of_gas_1764":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1765"

"$have_gas_1765":                                 ; preds = %"$out_of_gas_1764", %entry
  %"$consume_1766" = sub i64 %"$gasrem_1762", 1
  store i64 %"$consume_1766", i64* @_gasrem, align 8
  %"$$fundef_240_envp_1767_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_240_envp_1767_salloc" = call i8* @_salloc(i8* %"$$fundef_240_envp_1767_load", i64 20)
  %"$$fundef_240_envp_1767" = bitcast i8* %"$$fundef_240_envp_1767_salloc" to %"$$fundef_240_env_421"*
  %"$$fundef_240_env_voidp_1769" = bitcast %"$$fundef_240_env_421"* %"$$fundef_240_envp_1767" to i8*
  %"$$fundef_240_cloval_1770" = insertvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_240_env_421"*, [20 x i8]*)* @"$fundef_240" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_240_env_voidp_1769", 1
  %"$$fundef_240_env_user_1771" = getelementptr inbounds %"$$fundef_240_env_421", %"$$fundef_240_env_421"* %"$$fundef_240_envp_1767", i32 0, i32 0
  store [20 x i8] %user, [20 x i8]* %"$$fundef_240_env_user_1771", align 1
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_240_cloval_1770", { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_239", align 8, !dbg !66
  %"$$retval_239_1772" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_239", align 8
  ret { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_239_1772"
}

define internal i8* @"$fundef_246"(%"$$fundef_246_env_423"* %0, %TName_Bool* %1) !dbg !67 {
entry:
  %"$$fundef_246_env_address_1729" = getelementptr inbounds %"$$fundef_246_env_423", %"$$fundef_246_env_423"* %0, i32 0, i32 0
  %"$address_envload_1730" = load [20 x i8], [20 x i8]* %"$$fundef_246_env_address_1729", align 1
  %address = alloca [20 x i8], align 1
  store [20 x i8] %"$address_envload_1730", [20 x i8]* %address, align 1
  %"$retval_247" = alloca i8*, align 8
  %"$gasrem_1731" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1732" = icmp ugt i64 1, %"$gasrem_1731"
  br i1 %"$gascmp_1732", label %"$out_of_gas_1733", label %"$have_gas_1734"

"$out_of_gas_1733":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1734"

"$have_gas_1734":                                 ; preds = %"$out_of_gas_1733", %entry
  %"$consume_1735" = sub i64 %"$gasrem_1731", 1
  store i64 %"$consume_1735", i64* @_gasrem, align 8
  %"$msgobj_1736_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1736_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1736_salloc_load", i64 117)
  %"$msgobj_1736_salloc" = bitcast i8* %"$msgobj_1736_salloc_salloc" to [117 x i8]*
  %"$msgobj_1736" = bitcast [117 x i8]* %"$msgobj_1736_salloc" to i8*
  store i8 3, i8* %"$msgobj_1736", align 1
  %"$msgobj_fname_1738" = getelementptr i8, i8* %"$msgobj_1736", i32 1
  %"$msgobj_fname_1739" = bitcast i8* %"$msgobj_fname_1738" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1737", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1739", align 8
  %"$msgobj_td_1740" = getelementptr i8, i8* %"$msgobj_1736", i32 17
  %"$msgobj_td_1741" = bitcast i8* %"$msgobj_td_1740" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_1741", align 8
  %"$msgobj_v_1743" = getelementptr i8, i8* %"$msgobj_1736", i32 25
  %"$msgobj_v_1744" = bitcast i8* %"$msgobj_v_1743" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1742", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_1744", align 8
  %"$msgobj_fname_1746" = getelementptr i8, i8* %"$msgobj_1736", i32 41
  %"$msgobj_fname_1747" = bitcast i8* %"$msgobj_fname_1746" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1745", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1747", align 8
  %"$msgobj_td_1748" = getelementptr i8, i8* %"$msgobj_1736", i32 57
  %"$msgobj_td_1749" = bitcast i8* %"$msgobj_td_1748" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_1749", align 8
  %"$address_1750" = load [20 x i8], [20 x i8]* %address, align 1
  %"$msgobj_v_1751" = getelementptr i8, i8* %"$msgobj_1736", i32 65
  %"$msgobj_v_1752" = bitcast i8* %"$msgobj_v_1751" to [20 x i8]*
  store [20 x i8] %"$address_1750", [20 x i8]* %"$msgobj_v_1752", align 1
  %"$msgobj_fname_1754" = getelementptr i8, i8* %"$msgobj_1736", i32 85
  %"$msgobj_fname_1755" = bitcast i8* %"$msgobj_fname_1754" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1753", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1755", align 8
  %"$msgobj_td_1756" = getelementptr i8, i8* %"$msgobj_1736", i32 101
  %"$msgobj_td_1757" = bitcast i8* %"$msgobj_td_1756" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321", %_TyDescrTy_Typ** %"$msgobj_td_1757", align 8
  %"$msgobj_v_1758" = getelementptr i8, i8* %"$msgobj_1736", i32 109
  %"$msgobj_v_1759" = bitcast i8* %"$msgobj_v_1758" to %TName_Bool**
  store %TName_Bool* %1, %TName_Bool** %"$msgobj_v_1759", align 8
  store i8* %"$msgobj_1736", i8** %"$retval_247", align 8, !dbg !68
  %"$$retval_247_1761" = load i8*, i8** %"$retval_247", align 8
  ret i8* %"$$retval_247_1761"
}

define internal { i8* (i8*, %TName_Bool*)*, i8* } @"$fundef_244"(%"$$fundef_244_env_424"* %0, [20 x i8]* %1) !dbg !69 {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_245" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_1718" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1719" = icmp ugt i64 1, %"$gasrem_1718"
  br i1 %"$gascmp_1719", label %"$out_of_gas_1720", label %"$have_gas_1721"

"$out_of_gas_1720":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1721"

"$have_gas_1721":                                 ; preds = %"$out_of_gas_1720", %entry
  %"$consume_1722" = sub i64 %"$gasrem_1718", 1
  store i64 %"$consume_1722", i64* @_gasrem, align 8
  %"$$fundef_246_envp_1723_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_246_envp_1723_salloc" = call i8* @_salloc(i8* %"$$fundef_246_envp_1723_load", i64 20)
  %"$$fundef_246_envp_1723" = bitcast i8* %"$$fundef_246_envp_1723_salloc" to %"$$fundef_246_env_423"*
  %"$$fundef_246_env_voidp_1725" = bitcast %"$$fundef_246_env_423"* %"$$fundef_246_envp_1723" to i8*
  %"$$fundef_246_cloval_1726" = insertvalue { i8* (i8*, %TName_Bool*)*, i8* } { i8* (i8*, %TName_Bool*)* bitcast (i8* (%"$$fundef_246_env_423"*, %TName_Bool*)* @"$fundef_246" to i8* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_246_env_voidp_1725", 1
  %"$$fundef_246_env_address_1727" = getelementptr inbounds %"$$fundef_246_env_423", %"$$fundef_246_env_423"* %"$$fundef_246_envp_1723", i32 0, i32 0
  store [20 x i8] %address, [20 x i8]* %"$$fundef_246_env_address_1727", align 1
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$fundef_246_cloval_1726", { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_245", align 8, !dbg !70
  %"$$retval_245_1728" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_245", align 8
  ret { i8* (i8*, %TName_Bool*)*, i8* } %"$$retval_245_1728"
}

define internal %TName_Bool* @"$fundef_250"(%"$$fundef_250_env_425"* %0, %TName_Bool* %1) !dbg !71 {
entry:
  %"$$fundef_250_env_b1_1643" = getelementptr inbounds %"$$fundef_250_env_425", %"$$fundef_250_env_425"* %0, i32 0, i32 0
  %"$b1_envload_1644" = load %TName_Bool*, %TName_Bool** %"$$fundef_250_env_b1_1643", align 8
  %b1 = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b1_envload_1644", %TName_Bool** %b1, align 8
  %"$retval_251" = alloca %TName_Bool*, align 8
  %"$gasrem_1645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1646" = icmp ugt i64 2, %"$gasrem_1645"
  br i1 %"$gascmp_1646", label %"$out_of_gas_1647", label %"$have_gas_1648"

"$out_of_gas_1647":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1648"

"$have_gas_1648":                                 ; preds = %"$out_of_gas_1647", %entry
  %"$consume_1649" = sub i64 %"$gasrem_1645", 2
  store i64 %"$consume_1649", i64* @_gasrem, align 8
  %"$b1_1651" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$b1_tag_1652" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b1_1651", i32 0, i32 0
  %"$b1_tag_1653" = load i8, i8* %"$b1_tag_1652", align 1
  switch i8 %"$b1_tag_1653", label %"$empty_default_1654" [
    i8 0, label %"$True_1655"
    i8 1, label %"$False_1686"
  ], !dbg !72

"$True_1655":                                     ; preds = %"$have_gas_1648"
  %"$b1_1656" = bitcast %TName_Bool* %"$b1_1651" to %CName_True*
  %"$gasrem_1657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1658" = icmp ugt i64 2, %"$gasrem_1657"
  br i1 %"$gascmp_1658", label %"$out_of_gas_1659", label %"$have_gas_1660"

"$out_of_gas_1659":                               ; preds = %"$True_1655"
  call void @_out_of_gas()
  br label %"$have_gas_1660"

"$have_gas_1660":                                 ; preds = %"$out_of_gas_1659", %"$True_1655"
  %"$consume_1661" = sub i64 %"$gasrem_1657", 2
  store i64 %"$consume_1661", i64* @_gasrem, align 8
  %"$b2_tag_1663" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b2_tag_1664" = load i8, i8* %"$b2_tag_1663", align 1
  switch i8 %"$b2_tag_1664", label %"$empty_default_1665" [
    i8 0, label %"$True_1666"
    i8 1, label %"$False_1676"
  ], !dbg !73

"$True_1666":                                     ; preds = %"$have_gas_1660"
  %"$b2_1667" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_1668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1669" = icmp ugt i64 1, %"$gasrem_1668"
  br i1 %"$gascmp_1669", label %"$out_of_gas_1670", label %"$have_gas_1671"

"$out_of_gas_1670":                               ; preds = %"$True_1666"
  call void @_out_of_gas()
  br label %"$have_gas_1671"

"$have_gas_1671":                                 ; preds = %"$out_of_gas_1670", %"$True_1666"
  %"$consume_1672" = sub i64 %"$gasrem_1668", 1
  store i64 %"$consume_1672", i64* @_gasrem, align 8
  %"$adtval_1673_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1673_salloc" = call i8* @_salloc(i8* %"$adtval_1673_load", i64 1)
  %"$adtval_1673" = bitcast i8* %"$adtval_1673_salloc" to %CName_True*
  %"$adtgep_1674" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1673", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1674", align 1
  %"$adtptr_1675" = bitcast %CName_True* %"$adtval_1673" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1675", %TName_Bool** %"$retval_251", align 8, !dbg !76
  br label %"$matchsucc_1662"

"$False_1676":                                    ; preds = %"$have_gas_1660"
  %"$b2_1677" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_1678" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1679" = icmp ugt i64 1, %"$gasrem_1678"
  br i1 %"$gascmp_1679", label %"$out_of_gas_1680", label %"$have_gas_1681"

"$out_of_gas_1680":                               ; preds = %"$False_1676"
  call void @_out_of_gas()
  br label %"$have_gas_1681"

"$have_gas_1681":                                 ; preds = %"$out_of_gas_1680", %"$False_1676"
  %"$consume_1682" = sub i64 %"$gasrem_1678", 1
  store i64 %"$consume_1682", i64* @_gasrem, align 8
  %"$adtval_1683_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1683_salloc" = call i8* @_salloc(i8* %"$adtval_1683_load", i64 1)
  %"$adtval_1683" = bitcast i8* %"$adtval_1683_salloc" to %CName_False*
  %"$adtgep_1684" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1683", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1684", align 1
  %"$adtptr_1685" = bitcast %CName_False* %"$adtval_1683" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1685", %TName_Bool** %"$retval_251", align 8, !dbg !79
  br label %"$matchsucc_1662"

"$empty_default_1665":                            ; preds = %"$have_gas_1660"
  br label %"$matchsucc_1662"

"$matchsucc_1662":                                ; preds = %"$have_gas_1681", %"$have_gas_1671", %"$empty_default_1665"
  br label %"$matchsucc_1650"

"$False_1686":                                    ; preds = %"$have_gas_1648"
  %"$b1_1687" = bitcast %TName_Bool* %"$b1_1651" to %CName_False*
  %"$gasrem_1688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1689" = icmp ugt i64 2, %"$gasrem_1688"
  br i1 %"$gascmp_1689", label %"$out_of_gas_1690", label %"$have_gas_1691"

"$out_of_gas_1690":                               ; preds = %"$False_1686"
  call void @_out_of_gas()
  br label %"$have_gas_1691"

"$have_gas_1691":                                 ; preds = %"$out_of_gas_1690", %"$False_1686"
  %"$consume_1692" = sub i64 %"$gasrem_1688", 2
  store i64 %"$consume_1692", i64* @_gasrem, align 8
  %"$b2_tag_1694" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b2_tag_1695" = load i8, i8* %"$b2_tag_1694", align 1
  switch i8 %"$b2_tag_1695", label %"$empty_default_1696" [
    i8 0, label %"$True_1697"
    i8 1, label %"$False_1707"
  ], !dbg !81

"$True_1697":                                     ; preds = %"$have_gas_1691"
  %"$b2_1698" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_1699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1700" = icmp ugt i64 1, %"$gasrem_1699"
  br i1 %"$gascmp_1700", label %"$out_of_gas_1701", label %"$have_gas_1702"

"$out_of_gas_1701":                               ; preds = %"$True_1697"
  call void @_out_of_gas()
  br label %"$have_gas_1702"

"$have_gas_1702":                                 ; preds = %"$out_of_gas_1701", %"$True_1697"
  %"$consume_1703" = sub i64 %"$gasrem_1699", 1
  store i64 %"$consume_1703", i64* @_gasrem, align 8
  %"$adtval_1704_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1704_salloc" = call i8* @_salloc(i8* %"$adtval_1704_load", i64 1)
  %"$adtval_1704" = bitcast i8* %"$adtval_1704_salloc" to %CName_False*
  %"$adtgep_1705" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1704", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1705", align 1
  %"$adtptr_1706" = bitcast %CName_False* %"$adtval_1704" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1706", %TName_Bool** %"$retval_251", align 8, !dbg !83
  br label %"$matchsucc_1693"

"$False_1707":                                    ; preds = %"$have_gas_1691"
  %"$b2_1708" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_1709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1710" = icmp ugt i64 1, %"$gasrem_1709"
  br i1 %"$gascmp_1710", label %"$out_of_gas_1711", label %"$have_gas_1712"

"$out_of_gas_1711":                               ; preds = %"$False_1707"
  call void @_out_of_gas()
  br label %"$have_gas_1712"

"$have_gas_1712":                                 ; preds = %"$out_of_gas_1711", %"$False_1707"
  %"$consume_1713" = sub i64 %"$gasrem_1709", 1
  store i64 %"$consume_1713", i64* @_gasrem, align 8
  %"$adtval_1714_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1714_salloc" = call i8* @_salloc(i8* %"$adtval_1714_load", i64 1)
  %"$adtval_1714" = bitcast i8* %"$adtval_1714_salloc" to %CName_True*
  %"$adtgep_1715" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1714", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1715", align 1
  %"$adtptr_1716" = bitcast %CName_True* %"$adtval_1714" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1716", %TName_Bool** %"$retval_251", align 8, !dbg !86
  br label %"$matchsucc_1693"

"$empty_default_1696":                            ; preds = %"$have_gas_1691"
  br label %"$matchsucc_1693"

"$matchsucc_1693":                                ; preds = %"$have_gas_1712", %"$have_gas_1702", %"$empty_default_1696"
  br label %"$matchsucc_1650"

"$empty_default_1654":                            ; preds = %"$have_gas_1648"
  br label %"$matchsucc_1650"

"$matchsucc_1650":                                ; preds = %"$matchsucc_1693", %"$matchsucc_1662", %"$empty_default_1654"
  %"$$retval_251_1717" = load %TName_Bool*, %TName_Bool** %"$retval_251", align 8
  ret %TName_Bool* %"$$retval_251_1717"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_248"(%"$$fundef_248_env_426"* %0, %TName_Bool* %1) !dbg !88 {
entry:
  %"$retval_249" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_1632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1633" = icmp ugt i64 1, %"$gasrem_1632"
  br i1 %"$gascmp_1633", label %"$out_of_gas_1634", label %"$have_gas_1635"

"$out_of_gas_1634":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1635"

"$have_gas_1635":                                 ; preds = %"$out_of_gas_1634", %entry
  %"$consume_1636" = sub i64 %"$gasrem_1632", 1
  store i64 %"$consume_1636", i64* @_gasrem, align 8
  %"$$fundef_250_envp_1637_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_250_envp_1637_salloc" = call i8* @_salloc(i8* %"$$fundef_250_envp_1637_load", i64 8)
  %"$$fundef_250_envp_1637" = bitcast i8* %"$$fundef_250_envp_1637_salloc" to %"$$fundef_250_env_425"*
  %"$$fundef_250_env_voidp_1639" = bitcast %"$$fundef_250_env_425"* %"$$fundef_250_envp_1637" to i8*
  %"$$fundef_250_cloval_1640" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_250_env_425"*, %TName_Bool*)* @"$fundef_250" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_250_env_voidp_1639", 1
  %"$$fundef_250_env_b1_1641" = getelementptr inbounds %"$$fundef_250_env_425", %"$$fundef_250_env_425"* %"$$fundef_250_envp_1637", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_250_env_b1_1641", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_250_cloval_1640", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_249", align 8, !dbg !89
  %"$$retval_249_1642" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_249", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_249_1642"
}

define internal %TName_Bool* @"$fundef_256"(%"$$fundef_256_env_427"* %0, [20 x i8]* %1) !dbg !90 {
entry:
  %v = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_256_env_BoolUtils.negb_1603" = getelementptr inbounds %"$$fundef_256_env_427", %"$$fundef_256_env_427"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1604" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_256_env_BoolUtils.negb_1603", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1604", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_256_env_bs_1605" = getelementptr inbounds %"$$fundef_256_env_427", %"$$fundef_256_env_427"* %0, i32 0, i32 1
  %"$bs_envload_1606" = load [20 x i8], [20 x i8]* %"$$fundef_256_env_bs_1605", align 1
  %bs = alloca [20 x i8], align 1
  store [20 x i8] %"$bs_envload_1606", [20 x i8]* %bs, align 1
  %"$retval_257" = alloca %TName_Bool*, align 8
  %"$gasrem_1607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1608" = icmp ugt i64 1, %"$gasrem_1607"
  br i1 %"$gascmp_1608", label %"$out_of_gas_1609", label %"$have_gas_1610"

"$out_of_gas_1609":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1610"

"$have_gas_1610":                                 ; preds = %"$out_of_gas_1609", %entry
  %"$consume_1611" = sub i64 %"$gasrem_1607", 1
  store i64 %"$consume_1611", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$execptr_load_1612" = load i8*, i8** @_execptr, align 8
  %"$eq_v_1613" = alloca [20 x i8], align 1
  store [20 x i8] %v, [20 x i8]* %"$eq_v_1613", align 1
  %"$$eq_v_1613_1614" = bitcast [20 x i8]* %"$eq_v_1613" to i8*
  %"$eq_bs_1615" = alloca [20 x i8], align 1
  %"$bs_1616" = load [20 x i8], [20 x i8]* %bs, align 1
  store [20 x i8] %"$bs_1616", [20 x i8]* %"$eq_bs_1615", align 1
  %"$$eq_bs_1615_1617" = bitcast [20 x i8]* %"$eq_bs_1615" to i8*
  %"$eq_call_1618" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_1612", i32 20, i8* %"$$eq_v_1613_1614", i8* %"$$eq_bs_1615_1617"), !dbg !91
  store %TName_Bool* %"$eq_call_1618", %TName_Bool** %b, align 8, !dbg !91
  %"$gasrem_1620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1621" = icmp ugt i64 1, %"$gasrem_1620"
  br i1 %"$gascmp_1621", label %"$out_of_gas_1622", label %"$have_gas_1623"

"$out_of_gas_1622":                               ; preds = %"$have_gas_1610"
  call void @_out_of_gas()
  br label %"$have_gas_1623"

"$have_gas_1623":                                 ; preds = %"$out_of_gas_1622", %"$have_gas_1610"
  %"$consume_1624" = sub i64 %"$gasrem_1620", 1
  store i64 %"$consume_1624", i64* @_gasrem, align 8
  %"$BoolUtils.negb_36" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_1625" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_1626" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1625", 0
  %"$BoolUtils.negb_envptr_1627" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1625", 1
  %"$b_1628" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$BoolUtils.negb_call_1629" = call %TName_Bool* %"$BoolUtils.negb_fptr_1626"(i8* %"$BoolUtils.negb_envptr_1627", %TName_Bool* %"$b_1628"), !dbg !92
  store %TName_Bool* %"$BoolUtils.negb_call_1629", %TName_Bool** %"$BoolUtils.negb_36", align 8, !dbg !92
  %"$$BoolUtils.negb_36_1630" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_36", align 8
  store %TName_Bool* %"$$BoolUtils.negb_36_1630", %TName_Bool** %"$retval_257", align 8, !dbg !92
  %"$$retval_257_1631" = load %TName_Bool*, %TName_Bool** %"$retval_257", align 8
  ret %TName_Bool* %"$$retval_257_1631"
}

define internal %TName_List_ByStr20* @"$fundef_254"(%"$$fundef_254_env_428"* %0, [20 x i8]* %1) !dbg !93 {
entry:
  %bs = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_254_env_BoolUtils.negb_1546" = getelementptr inbounds %"$$fundef_254_env_428", %"$$fundef_254_env_428"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1547" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_254_env_BoolUtils.negb_1546", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1547", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_254_env_ListUtils.list_filter_1548" = getelementptr inbounds %"$$fundef_254_env_428", %"$$fundef_254_env_428"* %0, i32 0, i32 1
  %"$ListUtils.list_filter_envload_1549" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_254_env_ListUtils.list_filter_1548", align 8
  %ListUtils.list_filter = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_envload_1549", { i8*, i8* }** %ListUtils.list_filter, align 8
  %"$$fundef_254_env_list_1550" = getelementptr inbounds %"$$fundef_254_env_428", %"$$fundef_254_env_428"* %0, i32 0, i32 2
  %"$list_envload_1551" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_254_env_list_1550", align 8
  %list = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$list_envload_1551", %TName_List_ByStr20** %list, align 8
  %"$retval_255" = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_1552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1553" = icmp ugt i64 1, %"$gasrem_1552"
  br i1 %"$gascmp_1553", label %"$out_of_gas_1554", label %"$have_gas_1555"

"$out_of_gas_1554":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1555"

"$have_gas_1555":                                 ; preds = %"$out_of_gas_1554", %entry
  %"$consume_1556" = sub i64 %"$gasrem_1552", 1
  store i64 %"$consume_1556", i64* @_gasrem, align 8
  %listByStr20Filter = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1558" = icmp ugt i64 1, %"$gasrem_1557"
  br i1 %"$gascmp_1558", label %"$out_of_gas_1559", label %"$have_gas_1560"

"$out_of_gas_1559":                               ; preds = %"$have_gas_1555"
  call void @_out_of_gas()
  br label %"$have_gas_1560"

"$have_gas_1560":                                 ; preds = %"$out_of_gas_1559", %"$have_gas_1555"
  %"$consume_1561" = sub i64 %"$gasrem_1557", 1
  store i64 %"$consume_1561", i64* @_gasrem, align 8
  %"$ListUtils.list_filter_1562" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_filter, align 8
  %"$ListUtils.list_filter_1563" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_filter_1562", i32 0
  %"$ListUtils.list_filter_1564" = bitcast { i8*, i8* }* %"$ListUtils.list_filter_1563" to { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_filter_1565" = load { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_filter_1564", align 8
  %"$ListUtils.list_filter_fptr_1566" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_filter_1565", 0
  %"$ListUtils.list_filter_envptr_1567" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_filter_1565", 1
  %"$ListUtils.list_filter_call_1568" = call { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_filter_fptr_1566"(i8* %"$ListUtils.list_filter_envptr_1567"), !dbg !94
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_filter_call_1568", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %listByStr20Filter, align 8, !dbg !95
  %"$gasrem_1569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1570" = icmp ugt i64 1, %"$gasrem_1569"
  br i1 %"$gascmp_1570", label %"$out_of_gas_1571", label %"$have_gas_1572"

"$out_of_gas_1571":                               ; preds = %"$have_gas_1560"
  call void @_out_of_gas()
  br label %"$have_gas_1572"

"$have_gas_1572":                                 ; preds = %"$out_of_gas_1571", %"$have_gas_1560"
  %"$consume_1573" = sub i64 %"$gasrem_1569", 1
  store i64 %"$consume_1573", i64* @_gasrem, align 8
  %fn = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1575" = icmp ugt i64 1, %"$gasrem_1574"
  br i1 %"$gascmp_1575", label %"$out_of_gas_1576", label %"$have_gas_1577"

"$out_of_gas_1576":                               ; preds = %"$have_gas_1572"
  call void @_out_of_gas()
  br label %"$have_gas_1577"

"$have_gas_1577":                                 ; preds = %"$out_of_gas_1576", %"$have_gas_1572"
  %"$consume_1578" = sub i64 %"$gasrem_1574", 1
  store i64 %"$consume_1578", i64* @_gasrem, align 8
  %"$$fundef_256_envp_1579_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_256_envp_1579_salloc" = call i8* @_salloc(i8* %"$$fundef_256_envp_1579_load", i64 40)
  %"$$fundef_256_envp_1579" = bitcast i8* %"$$fundef_256_envp_1579_salloc" to %"$$fundef_256_env_427"*
  %"$$fundef_256_env_voidp_1581" = bitcast %"$$fundef_256_env_427"* %"$$fundef_256_envp_1579" to i8*
  %"$$fundef_256_cloval_1582" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_256_env_427"*, [20 x i8]*)* @"$fundef_256" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_256_env_voidp_1581", 1
  %"$$fundef_256_env_BoolUtils.negb_1583" = getelementptr inbounds %"$$fundef_256_env_427", %"$$fundef_256_env_427"* %"$$fundef_256_envp_1579", i32 0, i32 0
  %"$BoolUtils.negb_1584" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1584", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_256_env_BoolUtils.negb_1583", align 8
  %"$$fundef_256_env_bs_1585" = getelementptr inbounds %"$$fundef_256_env_427", %"$$fundef_256_env_427"* %"$$fundef_256_envp_1579", i32 0, i32 1
  store [20 x i8] %bs, [20 x i8]* %"$$fundef_256_env_bs_1585", align 1
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_256_cloval_1582", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %fn, align 8, !dbg !96
  %"$gasrem_1586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1587" = icmp ugt i64 1, %"$gasrem_1586"
  br i1 %"$gascmp_1587", label %"$out_of_gas_1588", label %"$have_gas_1589"

"$out_of_gas_1588":                               ; preds = %"$have_gas_1577"
  call void @_out_of_gas()
  br label %"$have_gas_1589"

"$have_gas_1589":                                 ; preds = %"$out_of_gas_1588", %"$have_gas_1577"
  %"$consume_1590" = sub i64 %"$gasrem_1586", 1
  store i64 %"$consume_1590", i64* @_gasrem, align 8
  %"$listByStr20Filter_37" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$listByStr20Filter_1591" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %listByStr20Filter, align 8
  %"$listByStr20Filter_fptr_1592" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listByStr20Filter_1591", 0
  %"$listByStr20Filter_envptr_1593" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listByStr20Filter_1591", 1
  %"$fn_1594" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %fn, align 8
  %"$listByStr20Filter_call_1595" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$listByStr20Filter_fptr_1592"(i8* %"$listByStr20Filter_envptr_1593", { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$fn_1594"), !dbg !97
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$listByStr20Filter_call_1595", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listByStr20Filter_37", align 8, !dbg !97
  %"$listByStr20Filter_38" = alloca %TName_List_ByStr20*, align 8
  %"$$listByStr20Filter_37_1596" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listByStr20Filter_37", align 8
  %"$$listByStr20Filter_37_fptr_1597" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listByStr20Filter_37_1596", 0
  %"$$listByStr20Filter_37_envptr_1598" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listByStr20Filter_37_1596", 1
  %"$list_1599" = load %TName_List_ByStr20*, %TName_List_ByStr20** %list, align 8
  %"$$listByStr20Filter_37_call_1600" = call %TName_List_ByStr20* %"$$listByStr20Filter_37_fptr_1597"(i8* %"$$listByStr20Filter_37_envptr_1598", %TName_List_ByStr20* %"$list_1599"), !dbg !97
  store %TName_List_ByStr20* %"$$listByStr20Filter_37_call_1600", %TName_List_ByStr20** %"$listByStr20Filter_38", align 8, !dbg !97
  %"$$listByStr20Filter_38_1601" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$listByStr20Filter_38", align 8
  store %TName_List_ByStr20* %"$$listByStr20Filter_38_1601", %TName_List_ByStr20** %"$retval_255", align 8, !dbg !97
  %"$$retval_255_1602" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$retval_255", align 8
  ret %TName_List_ByStr20* %"$$retval_255_1602"
}

define internal { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } @"$fundef_252"(%"$$fundef_252_env_429"* %0, %TName_List_ByStr20* %1) !dbg !98 {
entry:
  %"$$fundef_252_env_BoolUtils.negb_1527" = getelementptr inbounds %"$$fundef_252_env_429", %"$$fundef_252_env_429"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1528" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_252_env_BoolUtils.negb_1527", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1528", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_252_env_ListUtils.list_filter_1529" = getelementptr inbounds %"$$fundef_252_env_429", %"$$fundef_252_env_429"* %0, i32 0, i32 1
  %"$ListUtils.list_filter_envload_1530" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_252_env_ListUtils.list_filter_1529", align 8
  %ListUtils.list_filter = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_envload_1530", { i8*, i8* }** %ListUtils.list_filter, align 8
  %"$retval_253" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1532" = icmp ugt i64 1, %"$gasrem_1531"
  br i1 %"$gascmp_1532", label %"$out_of_gas_1533", label %"$have_gas_1534"

"$out_of_gas_1533":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1534"

"$have_gas_1534":                                 ; preds = %"$out_of_gas_1533", %entry
  %"$consume_1535" = sub i64 %"$gasrem_1531", 1
  store i64 %"$consume_1535", i64* @_gasrem, align 8
  %"$$fundef_254_envp_1536_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_254_envp_1536_salloc" = call i8* @_salloc(i8* %"$$fundef_254_envp_1536_load", i64 32)
  %"$$fundef_254_envp_1536" = bitcast i8* %"$$fundef_254_envp_1536_salloc" to %"$$fundef_254_env_428"*
  %"$$fundef_254_env_voidp_1538" = bitcast %"$$fundef_254_env_428"* %"$$fundef_254_envp_1536" to i8*
  %"$$fundef_254_cloval_1539" = insertvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } { %TName_List_ByStr20* (i8*, [20 x i8]*)* bitcast (%TName_List_ByStr20* (%"$$fundef_254_env_428"*, [20 x i8]*)* @"$fundef_254" to %TName_List_ByStr20* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_254_env_voidp_1538", 1
  %"$$fundef_254_env_BoolUtils.negb_1540" = getelementptr inbounds %"$$fundef_254_env_428", %"$$fundef_254_env_428"* %"$$fundef_254_envp_1536", i32 0, i32 0
  %"$BoolUtils.negb_1541" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1541", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_254_env_BoolUtils.negb_1540", align 8
  %"$$fundef_254_env_ListUtils.list_filter_1542" = getelementptr inbounds %"$$fundef_254_env_428", %"$$fundef_254_env_428"* %"$$fundef_254_envp_1536", i32 0, i32 1
  %"$ListUtils.list_filter_1543" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_filter, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_1543", { i8*, i8* }** %"$$fundef_254_env_ListUtils.list_filter_1542", align 8
  %"$$fundef_254_env_list_1544" = getelementptr inbounds %"$$fundef_254_env_428", %"$$fundef_254_env_428"* %"$$fundef_254_envp_1536", i32 0, i32 2
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_254_env_list_1544", align 8
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$fundef_254_cloval_1539", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_253", align 8, !dbg !99
  %"$$retval_253_1545" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_253", align 8
  ret { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$retval_253_1545"
}

define internal %TName_Bool* @"$fundef_260"(%"$$fundef_260_env_430"* %0, [20 x i8]* %1) !dbg !100 {
entry:
  %bs = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_260_env_BoolUtils.negb_1488" = getelementptr inbounds %"$$fundef_260_env_430", %"$$fundef_260_env_430"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1489" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_260_env_BoolUtils.negb_1488", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1489", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_260_env_list_1490" = getelementptr inbounds %"$$fundef_260_env_430", %"$$fundef_260_env_430"* %0, i32 0, i32 1
  %"$list_envload_1491" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_260_env_list_1490", align 8
  %list = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$list_envload_1491", %TName_List_ByStr20** %list, align 8
  %"$$fundef_260_env_ud-registry.listByStr20Contains_1492" = getelementptr inbounds %"$$fundef_260_env_430", %"$$fundef_260_env_430"* %0, i32 0, i32 2
  %"$ud-registry.listByStr20Contains_envload_1493" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_260_env_ud-registry.listByStr20Contains_1492", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_1493", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_261" = alloca %TName_Bool*, align 8
  %"$gasrem_1494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1495" = icmp ugt i64 1, %"$gasrem_1494"
  br i1 %"$gascmp_1495", label %"$out_of_gas_1496", label %"$have_gas_1497"

"$out_of_gas_1496":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1497"

"$have_gas_1497":                                 ; preds = %"$out_of_gas_1496", %entry
  %"$consume_1498" = sub i64 %"$gasrem_1494", 1
  store i64 %"$consume_1498", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_1499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1500" = icmp ugt i64 1, %"$gasrem_1499"
  br i1 %"$gascmp_1500", label %"$out_of_gas_1501", label %"$have_gas_1502"

"$out_of_gas_1501":                               ; preds = %"$have_gas_1497"
  call void @_out_of_gas()
  br label %"$have_gas_1502"

"$have_gas_1502":                                 ; preds = %"$out_of_gas_1501", %"$have_gas_1497"
  %"$consume_1503" = sub i64 %"$gasrem_1499", 1
  store i64 %"$consume_1503", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_33" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_1504" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_1505" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_1504", 0
  %"$ud-registry.listByStr20Contains_envptr_1506" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_1504", 1
  %"$list_1507" = load %TName_List_ByStr20*, %TName_List_ByStr20** %list, align 8
  %"$ud-registry.listByStr20Contains_call_1508" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_1505"(i8* %"$ud-registry.listByStr20Contains_envptr_1506", %TName_List_ByStr20* %"$list_1507"), !dbg !101
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_1508", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_33", align 8, !dbg !101
  %"$ud-registry.listByStr20Contains_34" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_33_1509" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_33", align 8
  %"$$ud-registry.listByStr20Contains_33_fptr_1510" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_33_1509", 0
  %"$$ud-registry.listByStr20Contains_33_envptr_1511" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_33_1509", 1
  %"$$ud-registry.listByStr20Contains_33_bs_1512" = alloca [20 x i8], align 1
  store [20 x i8] %bs, [20 x i8]* %"$$ud-registry.listByStr20Contains_33_bs_1512", align 1
  %"$$ud-registry.listByStr20Contains_33_call_1513" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_33_fptr_1510"(i8* %"$$ud-registry.listByStr20Contains_33_envptr_1511", [20 x i8]* %"$$ud-registry.listByStr20Contains_33_bs_1512"), !dbg !101
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_33_call_1513", %TName_Bool** %"$ud-registry.listByStr20Contains_34", align 8, !dbg !101
  %"$$ud-registry.listByStr20Contains_34_1514" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_34", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_34_1514", %TName_Bool** %b, align 8, !dbg !101
  %"$gasrem_1515" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1516" = icmp ugt i64 1, %"$gasrem_1515"
  br i1 %"$gascmp_1516", label %"$out_of_gas_1517", label %"$have_gas_1518"

"$out_of_gas_1517":                               ; preds = %"$have_gas_1502"
  call void @_out_of_gas()
  br label %"$have_gas_1518"

"$have_gas_1518":                                 ; preds = %"$out_of_gas_1517", %"$have_gas_1502"
  %"$consume_1519" = sub i64 %"$gasrem_1515", 1
  store i64 %"$consume_1519", i64* @_gasrem, align 8
  %"$BoolUtils.negb_35" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_1520" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_1521" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1520", 0
  %"$BoolUtils.negb_envptr_1522" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1520", 1
  %"$b_1523" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$BoolUtils.negb_call_1524" = call %TName_Bool* %"$BoolUtils.negb_fptr_1521"(i8* %"$BoolUtils.negb_envptr_1522", %TName_Bool* %"$b_1523"), !dbg !102
  store %TName_Bool* %"$BoolUtils.negb_call_1524", %TName_Bool** %"$BoolUtils.negb_35", align 8, !dbg !102
  %"$$BoolUtils.negb_35_1525" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_35", align 8
  store %TName_Bool* %"$$BoolUtils.negb_35_1525", %TName_Bool** %"$retval_261", align 8, !dbg !102
  %"$$retval_261_1526" = load %TName_Bool*, %TName_Bool** %"$retval_261", align 8
  ret %TName_Bool* %"$$retval_261_1526"
}

define internal { %TName_Bool* (i8*, [20 x i8]*)*, i8* } @"$fundef_258"(%"$$fundef_258_env_431"* %0, %TName_List_ByStr20* %1) !dbg !103 {
entry:
  %"$$fundef_258_env_BoolUtils.negb_1469" = getelementptr inbounds %"$$fundef_258_env_431", %"$$fundef_258_env_431"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1470" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_258_env_BoolUtils.negb_1469", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1470", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_258_env_ud-registry.listByStr20Contains_1471" = getelementptr inbounds %"$$fundef_258_env_431", %"$$fundef_258_env_431"* %0, i32 0, i32 1
  %"$ud-registry.listByStr20Contains_envload_1472" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_258_env_ud-registry.listByStr20Contains_1471", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_1472", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_259" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1474" = icmp ugt i64 1, %"$gasrem_1473"
  br i1 %"$gascmp_1474", label %"$out_of_gas_1475", label %"$have_gas_1476"

"$out_of_gas_1475":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1476"

"$have_gas_1476":                                 ; preds = %"$out_of_gas_1475", %entry
  %"$consume_1477" = sub i64 %"$gasrem_1473", 1
  store i64 %"$consume_1477", i64* @_gasrem, align 8
  %"$$fundef_260_envp_1478_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_260_envp_1478_salloc" = call i8* @_salloc(i8* %"$$fundef_260_envp_1478_load", i64 40)
  %"$$fundef_260_envp_1478" = bitcast i8* %"$$fundef_260_envp_1478_salloc" to %"$$fundef_260_env_430"*
  %"$$fundef_260_env_voidp_1480" = bitcast %"$$fundef_260_env_430"* %"$$fundef_260_envp_1478" to i8*
  %"$$fundef_260_cloval_1481" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_260_env_430"*, [20 x i8]*)* @"$fundef_260" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_260_env_voidp_1480", 1
  %"$$fundef_260_env_BoolUtils.negb_1482" = getelementptr inbounds %"$$fundef_260_env_430", %"$$fundef_260_env_430"* %"$$fundef_260_envp_1478", i32 0, i32 0
  %"$BoolUtils.negb_1483" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1483", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_260_env_BoolUtils.negb_1482", align 8
  %"$$fundef_260_env_list_1484" = getelementptr inbounds %"$$fundef_260_env_430", %"$$fundef_260_env_430"* %"$$fundef_260_envp_1478", i32 0, i32 1
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_260_env_list_1484", align 8
  %"$$fundef_260_env_ud-registry.listByStr20Contains_1485" = getelementptr inbounds %"$$fundef_260_env_430", %"$$fundef_260_env_430"* %"$$fundef_260_envp_1478", i32 0, i32 2
  %"$ud-registry.listByStr20Contains_1486" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_1486", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_260_env_ud-registry.listByStr20Contains_1485", align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_260_cloval_1481", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_259", align 8, !dbg !104
  %"$$retval_259_1487" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_259", align 8
  ret { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$retval_259_1487"
}

define internal %TName_Bool* @"$fundef_264"(%"$$fundef_264_env_432"* %0, [20 x i8]* %1) !dbg !105 {
entry:
  %bs = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_264_env_ListUtils.list_mem_1424" = getelementptr inbounds %"$$fundef_264_env_432", %"$$fundef_264_env_432"* %0, i32 0, i32 0
  %"$ListUtils.list_mem_envload_1425" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_264_env_ListUtils.list_mem_1424", align 8
  %ListUtils.list_mem = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_envload_1425", { i8*, i8* }** %ListUtils.list_mem, align 8
  %"$$fundef_264_env_list_1426" = getelementptr inbounds %"$$fundef_264_env_432", %"$$fundef_264_env_432"* %0, i32 0, i32 1
  %"$list_envload_1427" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_264_env_list_1426", align 8
  %list = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$list_envload_1427", %TName_List_ByStr20** %list, align 8
  %"$$fundef_264_env_ud-registry.eqByStr20_1428" = getelementptr inbounds %"$$fundef_264_env_432", %"$$fundef_264_env_432"* %0, i32 0, i32 2
  %"$ud-registry.eqByStr20_envload_1429" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_264_env_ud-registry.eqByStr20_1428", align 8
  %ud-registry.eqByStr20 = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_envload_1429", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  %"$retval_265" = alloca %TName_Bool*, align 8
  %"$gasrem_1430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1431" = icmp ugt i64 1, %"$gasrem_1430"
  br i1 %"$gascmp_1431", label %"$out_of_gas_1432", label %"$have_gas_1433"

"$out_of_gas_1432":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1433"

"$have_gas_1433":                                 ; preds = %"$out_of_gas_1432", %entry
  %"$consume_1434" = sub i64 %"$gasrem_1430", 1
  store i64 %"$consume_1434", i64* @_gasrem, align 8
  %listMemByStr20 = alloca { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1436" = icmp ugt i64 1, %"$gasrem_1435"
  br i1 %"$gascmp_1436", label %"$out_of_gas_1437", label %"$have_gas_1438"

"$out_of_gas_1437":                               ; preds = %"$have_gas_1433"
  call void @_out_of_gas()
  br label %"$have_gas_1438"

"$have_gas_1438":                                 ; preds = %"$out_of_gas_1437", %"$have_gas_1433"
  %"$consume_1439" = sub i64 %"$gasrem_1435", 1
  store i64 %"$consume_1439", i64* @_gasrem, align 8
  %"$ListUtils.list_mem_1440" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_mem, align 8
  %"$ListUtils.list_mem_1441" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_mem_1440", i32 0
  %"$ListUtils.list_mem_1442" = bitcast { i8*, i8* }* %"$ListUtils.list_mem_1441" to { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_mem_1443" = load { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_mem_1442", align 8
  %"$ListUtils.list_mem_fptr_1444" = extractvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_mem_1443", 0
  %"$ListUtils.list_mem_envptr_1445" = extractvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_mem_1443", 1
  %"$ListUtils.list_mem_call_1446" = call { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_mem_fptr_1444"(i8* %"$ListUtils.list_mem_envptr_1445"), !dbg !106
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_mem_call_1446", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %listMemByStr20, align 8, !dbg !107
  %"$gasrem_1447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1448" = icmp ugt i64 1, %"$gasrem_1447"
  br i1 %"$gascmp_1448", label %"$out_of_gas_1449", label %"$have_gas_1450"

"$out_of_gas_1449":                               ; preds = %"$have_gas_1438"
  call void @_out_of_gas()
  br label %"$have_gas_1450"

"$have_gas_1450":                                 ; preds = %"$out_of_gas_1449", %"$have_gas_1438"
  %"$consume_1451" = sub i64 %"$gasrem_1447", 1
  store i64 %"$consume_1451", i64* @_gasrem, align 8
  %"$listMemByStr20_30" = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$listMemByStr20_1452" = load { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %listMemByStr20, align 8
  %"$listMemByStr20_fptr_1453" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listMemByStr20_1452", 0
  %"$listMemByStr20_envptr_1454" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listMemByStr20_1452", 1
  %"$ud-registry.eqByStr20_1455" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  %"$listMemByStr20_call_1456" = call { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$listMemByStr20_fptr_1453"(i8* %"$listMemByStr20_envptr_1454", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_1455"), !dbg !108
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$listMemByStr20_call_1456", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$listMemByStr20_30", align 8, !dbg !108
  %"$listMemByStr20_31" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$$listMemByStr20_30_1457" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$listMemByStr20_30", align 8
  %"$$listMemByStr20_30_fptr_1458" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$listMemByStr20_30_1457", 0
  %"$$listMemByStr20_30_envptr_1459" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$listMemByStr20_30_1457", 1
  %"$$listMemByStr20_30_bs_1460" = alloca [20 x i8], align 1
  store [20 x i8] %bs, [20 x i8]* %"$$listMemByStr20_30_bs_1460", align 1
  %"$$listMemByStr20_30_call_1461" = call { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_30_fptr_1458"(i8* %"$$listMemByStr20_30_envptr_1459", [20 x i8]* %"$$listMemByStr20_30_bs_1460"), !dbg !108
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_30_call_1461", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listMemByStr20_31", align 8, !dbg !108
  %"$listMemByStr20_32" = alloca %TName_Bool*, align 8
  %"$$listMemByStr20_31_1462" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listMemByStr20_31", align 8
  %"$$listMemByStr20_31_fptr_1463" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_31_1462", 0
  %"$$listMemByStr20_31_envptr_1464" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_31_1462", 1
  %"$list_1465" = load %TName_List_ByStr20*, %TName_List_ByStr20** %list, align 8
  %"$$listMemByStr20_31_call_1466" = call %TName_Bool* %"$$listMemByStr20_31_fptr_1463"(i8* %"$$listMemByStr20_31_envptr_1464", %TName_List_ByStr20* %"$list_1465"), !dbg !108
  store %TName_Bool* %"$$listMemByStr20_31_call_1466", %TName_Bool** %"$listMemByStr20_32", align 8, !dbg !108
  %"$$listMemByStr20_32_1467" = load %TName_Bool*, %TName_Bool** %"$listMemByStr20_32", align 8
  store %TName_Bool* %"$$listMemByStr20_32_1467", %TName_Bool** %"$retval_265", align 8, !dbg !108
  %"$$retval_265_1468" = load %TName_Bool*, %TName_Bool** %"$retval_265", align 8
  ret %TName_Bool* %"$$retval_265_1468"
}

define internal { %TName_Bool* (i8*, [20 x i8]*)*, i8* } @"$fundef_262"(%"$$fundef_262_env_433"* %0, %TName_List_ByStr20* %1) !dbg !109 {
entry:
  %"$$fundef_262_env_ListUtils.list_mem_1405" = getelementptr inbounds %"$$fundef_262_env_433", %"$$fundef_262_env_433"* %0, i32 0, i32 0
  %"$ListUtils.list_mem_envload_1406" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_262_env_ListUtils.list_mem_1405", align 8
  %ListUtils.list_mem = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_envload_1406", { i8*, i8* }** %ListUtils.list_mem, align 8
  %"$$fundef_262_env_ud-registry.eqByStr20_1407" = getelementptr inbounds %"$$fundef_262_env_433", %"$$fundef_262_env_433"* %0, i32 0, i32 1
  %"$ud-registry.eqByStr20_envload_1408" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_262_env_ud-registry.eqByStr20_1407", align 8
  %ud-registry.eqByStr20 = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_envload_1408", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  %"$retval_263" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1410" = icmp ugt i64 1, %"$gasrem_1409"
  br i1 %"$gascmp_1410", label %"$out_of_gas_1411", label %"$have_gas_1412"

"$out_of_gas_1411":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1412"

"$have_gas_1412":                                 ; preds = %"$out_of_gas_1411", %entry
  %"$consume_1413" = sub i64 %"$gasrem_1409", 1
  store i64 %"$consume_1413", i64* @_gasrem, align 8
  %"$$fundef_264_envp_1414_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_264_envp_1414_salloc" = call i8* @_salloc(i8* %"$$fundef_264_envp_1414_load", i64 32)
  %"$$fundef_264_envp_1414" = bitcast i8* %"$$fundef_264_envp_1414_salloc" to %"$$fundef_264_env_432"*
  %"$$fundef_264_env_voidp_1416" = bitcast %"$$fundef_264_env_432"* %"$$fundef_264_envp_1414" to i8*
  %"$$fundef_264_cloval_1417" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_264_env_432"*, [20 x i8]*)* @"$fundef_264" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_264_env_voidp_1416", 1
  %"$$fundef_264_env_ListUtils.list_mem_1418" = getelementptr inbounds %"$$fundef_264_env_432", %"$$fundef_264_env_432"* %"$$fundef_264_envp_1414", i32 0, i32 0
  %"$ListUtils.list_mem_1419" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_mem, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_1419", { i8*, i8* }** %"$$fundef_264_env_ListUtils.list_mem_1418", align 8
  %"$$fundef_264_env_list_1420" = getelementptr inbounds %"$$fundef_264_env_432", %"$$fundef_264_env_432"* %"$$fundef_264_envp_1414", i32 0, i32 1
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_264_env_list_1420", align 8
  %"$$fundef_264_env_ud-registry.eqByStr20_1421" = getelementptr inbounds %"$$fundef_264_env_432", %"$$fundef_264_env_432"* %"$$fundef_264_envp_1414", i32 0, i32 2
  %"$ud-registry.eqByStr20_1422" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_1422", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_264_env_ud-registry.eqByStr20_1421", align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_264_cloval_1417", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_263", align 8, !dbg !110
  %"$$retval_263_1423" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_263", align 8
  ret { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$retval_263_1423"
}

define internal %TName_Bool* @"$fundef_268"(%"$$fundef_268_env_434"* %0, [20 x i8]* %1) !dbg !111 {
entry:
  %bs2 = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_268_env_bs1_1394" = getelementptr inbounds %"$$fundef_268_env_434", %"$$fundef_268_env_434"* %0, i32 0, i32 0
  %"$bs1_envload_1395" = load [20 x i8], [20 x i8]* %"$$fundef_268_env_bs1_1394", align 1
  %bs1 = alloca [20 x i8], align 1
  store [20 x i8] %"$bs1_envload_1395", [20 x i8]* %bs1, align 1
  %"$retval_269" = alloca %TName_Bool*, align 8
  %"$execptr_load_1396" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_1397" = alloca [20 x i8], align 1
  %"$bs1_1398" = load [20 x i8], [20 x i8]* %bs1, align 1
  store [20 x i8] %"$bs1_1398", [20 x i8]* %"$eq_bs1_1397", align 1
  %"$$eq_bs1_1397_1399" = bitcast [20 x i8]* %"$eq_bs1_1397" to i8*
  %"$eq_bs2_1400" = alloca [20 x i8], align 1
  store [20 x i8] %bs2, [20 x i8]* %"$eq_bs2_1400", align 1
  %"$$eq_bs2_1400_1401" = bitcast [20 x i8]* %"$eq_bs2_1400" to i8*
  %"$eq_call_1402" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_1396", i32 20, i8* %"$$eq_bs1_1397_1399", i8* %"$$eq_bs2_1400_1401"), !dbg !112
  store %TName_Bool* %"$eq_call_1402", %TName_Bool** %"$retval_269", align 8, !dbg !112
  %"$$retval_269_1404" = load %TName_Bool*, %TName_Bool** %"$retval_269", align 8
  ret %TName_Bool* %"$$retval_269_1404"
}

define internal { %TName_Bool* (i8*, [20 x i8]*)*, i8* } @"$fundef_266"(%"$$fundef_266_env_435"* %0, [20 x i8]* %1) !dbg !113 {
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
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_268_cloval_1391", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_267", align 8, !dbg !114
  %"$$retval_267_1393" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_267", align 8
  ret { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$retval_267_1393"
}

define internal %TName_List_Message* @"$fundef_270"(%"$$fundef_270_env_436"* %0, i8* %1) !dbg !115 {
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
  store %TName_List_Message* %"$adtptr_1381", %TName_List_Message** %"$retval_271", align 8, !dbg !116
  %"$$retval_271_1382" = load %TName_List_Message*, %TName_List_Message** %"$retval_271", align 8
  ret %TName_List_Message* %"$$retval_271_1382"
}

define internal { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_182"(%"$$fundef_182_env_437"* %0, [20 x i8]* %1) !dbg !117 {
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
  %"$f_call_1338" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_fptr_1335"(i8* %"$f_envptr_1336", [20 x i8]* %"$f_m_1337"), !dbg !119
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_call_1338", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$f_28", align 8, !dbg !119
  %"$$f_28_1339" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$f_28", align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$f_28_1339", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %ex_pred, align 8, !dbg !119
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
  %"$ListUtils.list_exists_call_1356" = call { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_exists_fptr_1354"(i8* %"$ListUtils.list_exists_envptr_1355"), !dbg !120
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_exists_call_1356", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %ex, align 8, !dbg !121
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
  %"$ex_call_1366" = call { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$ex_fptr_1363"(i8* %"$ex_envptr_1364", { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ex_pred_1365"), !dbg !122
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$ex_call_1366", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$ex_29", align 8, !dbg !122
  %"$$ex_29_1367" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$ex_29", align 8
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$ex_29_1367", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_183", align 8, !dbg !122
  %"$$retval_183_1368" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_183", align 8
  ret { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_183_1368"
}

define internal { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_180"(%"$$fundef_180_env_438"* %0, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1) !dbg !123 {
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
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_182_cloval_1315", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_181", align 8, !dbg !124
  %"$$retval_181_1319" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_181", align 8
  ret { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_181_1319"
}

define internal { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_178"(%"$$fundef_178_env_439"* %0) !dbg !125 {
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
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_180_cloval_1301", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_179", align 8, !dbg !126
  %"$$retval_179_1304" = load { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_179", align 8
  ret { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_179_1304"
}

define internal %TName_Bool* @"$fundef_188"(%"$$fundef_188_env_440"* %0, %TName_List_ByStr20* %1) !dbg !127 {
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
  %"$ListUtils.list_find_call_1237" = call { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_find_fptr_1235"(i8* %"$ListUtils.list_find_envptr_1236"), !dbg !128
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_find_call_1237", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %find, align 8, !dbg !129
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
  %"$find_call_1252" = call { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$find_fptr_1249"(i8* %"$find_envptr_1250", { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_1251"), !dbg !130
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$find_call_1252", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$find_26", align 8, !dbg !130
  %"$find_27" = alloca %TName_Option_ByStr20*, align 8
  %"$$find_26_1253" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$find_26", align 8
  %"$$find_26_fptr_1254" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$find_26_1253", 0
  %"$$find_26_envptr_1255" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$find_26_1253", 1
  %"$$find_26_call_1256" = call %TName_Option_ByStr20* %"$$find_26_fptr_1254"(i8* %"$$find_26_envptr_1255", %TName_List_ByStr20* %1), !dbg !130
  store %TName_Option_ByStr20* %"$$find_26_call_1256", %TName_Option_ByStr20** %"$find_27", align 8, !dbg !130
  %"$$find_27_1257" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$find_27", align 8
  store %TName_Option_ByStr20* %"$$find_27_1257", %TName_Option_ByStr20** %search, align 8, !dbg !130
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
  ], !dbg !131

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
  store %TName_Bool* %"$adtptr_1279", %TName_Bool** %"$retval_189", align 8, !dbg !132
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
  store %TName_Bool* %"$adtptr_1289", %TName_Bool** %"$retval_189", align 8, !dbg !135
  br label %"$matchsucc_1263"

"$empty_default_1267":                            ; preds = %"$have_gas_1261"
  br label %"$matchsucc_1263"

"$matchsucc_1263":                                ; preds = %"$have_gas_1285", %"$have_gas_1275", %"$empty_default_1267"
  %"$$retval_189_1290" = load %TName_Bool*, %TName_Bool** %"$retval_189", align 8
  ret %TName_Bool* %"$$retval_189_1290"
}

define internal { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_186"(%"$$fundef_186_env_441"* %0, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1) !dbg !137 {
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
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_188_cloval_1212", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_187", align 8, !dbg !138
  %"$$retval_187_1216" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_187", align 8
  ret { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_187_1216"
}

define internal { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_184"(%"$$fundef_184_env_442"* %0) !dbg !139 {
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
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_186_cloval_1198", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_185", align 8, !dbg !140
  %"$$retval_185_1201" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_185", align 8
  ret { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_185_1201"
}

define internal %TName_Option_ByStr20* @"$fundef_198"(%"$$fundef_198_env_443"* %0, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %1) !dbg !141 {
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
  %"$p_call_1151" = call %TName_Bool* %"$p_fptr_1147"(i8* %"$p_envptr_1148", [20 x i8]* %"$p_x_1149"), !dbg !142
  store %TName_Bool* %"$p_call_1151", %TName_Bool** %"$p_22", align 8, !dbg !142
  %"$$p_22_1152" = load %TName_Bool*, %TName_Bool** %"$p_22", align 8
  store %TName_Bool* %"$$p_22_1152", %TName_Bool** %p_x, align 8, !dbg !142
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
  ], !dbg !143

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
  store %TName_Option_ByStr20* %"$adtptr_1174", %TName_Option_ByStr20** %"$retval_199", align 8, !dbg !144
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
  %"$recurse_call_1185" = call %TName_Option_ByStr20* %"$recurse_fptr_1182"(i8* %"$recurse_envptr_1183", %TName_Option_ByStr20* %"$init_1184"), !dbg !147
  store %TName_Option_ByStr20* %"$recurse_call_1185", %TName_Option_ByStr20** %"$recurse_23", align 8, !dbg !147
  %"$$recurse_23_1186" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$recurse_23", align 8
  store %TName_Option_ByStr20* %"$$recurse_23_1186", %TName_Option_ByStr20** %"$retval_199", align 8, !dbg !147
  br label %"$matchsucc_1158"

"$empty_default_1162":                            ; preds = %"$have_gas_1156"
  br label %"$matchsucc_1158"

"$matchsucc_1158":                                ; preds = %"$have_gas_1180", %"$have_gas_1168", %"$empty_default_1162"
  %"$$retval_199_1187" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$retval_199", align 8
  ret %TName_Option_ByStr20* %"$$retval_199_1187"
}

define internal { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } @"$fundef_196"(%"$$fundef_196_env_444"* %0, [20 x i8]* %1) !dbg !149 {
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
  store { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$fundef_198_cloval_1123", { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_197", align 8, !dbg !150
  %"$$retval_197_1129" = load { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_197", align 8
  ret { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$retval_197_1129"
}

define internal { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_194"(%"$$fundef_194_env_445"* %0, %TName_Option_ByStr20* %1) !dbg !151 {
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
  store { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_196_cloval_1105", { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_195", align 8, !dbg !152
  %"$$retval_195_1110" = load { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_195", align 8
  ret { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_195_1110"
}

define internal { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_192"(%"$$fundef_192_env_446"* %0, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1) !dbg !153 {
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
  %"$list_foldk_call_1039" = call { i8*, i8* }* %"$list_foldk_fptr_1037"(i8* %"$list_foldk_envptr_1038"), !dbg !154
  %"$list_foldk_1040" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldk_call_1039", i32 2
  %"$list_foldk_1041" = bitcast { i8*, i8* }* %"$list_foldk_1040" to { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldk_1042" = load { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldk_1041", align 8
  %"$list_foldk_fptr_1043" = extractvalue { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldk_1042", 0
  %"$list_foldk_envptr_1044" = extractvalue { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldk_1042", 1
  %"$list_foldk_call_1045" = call { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$list_foldk_fptr_1043"(i8* %"$list_foldk_envptr_1044"), !dbg !154
  store { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$list_foldk_call_1045", { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %foldk, align 8, !dbg !155
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
  store %TName_Option_ByStr20* %"$adtptr_1058", %TName_Option_ByStr20** %init, align 8, !dbg !156
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
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_194_cloval_1072", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %predicate_step, align 8, !dbg !157
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
  %"$foldk_call_1085" = call { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$foldk_fptr_1082"(i8* %"$foldk_envptr_1083", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$predicate_step_1084"), !dbg !158
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$foldk_call_1085", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$foldk_24", align 8, !dbg !158
  %"$foldk_25" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$$foldk_24_1086" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$foldk_24", align 8
  %"$$foldk_24_fptr_1087" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$foldk_24_1086", 0
  %"$$foldk_24_envptr_1088" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$foldk_24_1086", 1
  %"$init_1089" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init, align 8
  %"$$foldk_24_call_1090" = call { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldk_24_fptr_1087"(i8* %"$$foldk_24_envptr_1088", %TName_Option_ByStr20* %"$init_1089"), !dbg !158
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldk_24_call_1090", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldk_25", align 8, !dbg !158
  %"$$foldk_25_1091" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldk_25", align 8
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldk_25_1091", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_193", align 8, !dbg !158
  %"$$retval_193_1092" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_193", align 8
  ret { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_193_1092"
}

define internal { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_190"(%"$$fundef_190_env_447"* %0) !dbg !159 {
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
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_192_cloval_1017", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_191", align 8, !dbg !160
  %"$$retval_191_1020" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_191", align 8
  ret { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_191_1020"
}

define internal %TName_List_ByStr20* @"$fundef_206"(%"$$fundef_206_env_448"* %0, %TName_List_ByStr20* %1) !dbg !161 {
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
  %"$f_call_974" = call %TName_Bool* %"$f_fptr_970"(i8* %"$f_envptr_971", [20 x i8]* %"$f_h_972"), !dbg !162
  store %TName_Bool* %"$f_call_974", %TName_Bool** %"$f_19", align 8, !dbg !162
  %"$$f_19_975" = load %TName_Bool*, %TName_Bool** %"$f_19", align 8
  store %TName_Bool* %"$$f_19_975", %TName_Bool** %h1, align 8, !dbg !162
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
  ], !dbg !163

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
  store %TName_List_ByStr20* %"$adtptr_998", %TName_List_ByStr20** %"$retval_207", align 8, !dbg !164
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
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$retval_207", align 8, !dbg !167
  br label %"$matchsucc_981"

"$empty_default_985":                             ; preds = %"$have_gas_979"
  br label %"$matchsucc_981"

"$matchsucc_981":                                 ; preds = %"$have_gas_1004", %"$have_gas_991", %"$empty_default_985"
  %"$$retval_207_1006" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$retval_207", align 8
  ret %TName_List_ByStr20* %"$$retval_207_1006"
}

define internal { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_204"(%"$$fundef_204_env_449"* %0, [20 x i8]* %1) !dbg !169 {
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
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_206_cloval_950", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_205", align 8, !dbg !170
  %"$$retval_205_954" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_205", align 8
  ret { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_205_954"
}

define internal { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_202"(%"$$fundef_202_env_450"* %0, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1) !dbg !171 {
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
  %"$list_foldr_call_888" = call { i8*, i8* }* %"$list_foldr_fptr_886"(i8* %"$list_foldr_envptr_887"), !dbg !172
  %"$list_foldr_889" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldr_call_888", i32 1
  %"$list_foldr_890" = bitcast { i8*, i8* }* %"$list_foldr_889" to { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldr_891" = load { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldr_890", align 8
  %"$list_foldr_fptr_892" = extractvalue { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldr_891", 0
  %"$list_foldr_envptr_893" = extractvalue { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldr_891", 1
  %"$list_foldr_call_894" = call { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$list_foldr_fptr_892"(i8* %"$list_foldr_envptr_893"), !dbg !172
  store { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$list_foldr_call_894", { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %foldr, align 8, !dbg !173
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
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_204_cloval_908", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %iter, align 8, !dbg !174
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
  store %TName_List_ByStr20* %"$adtptr_922", %TName_List_ByStr20** %init, align 8, !dbg !175
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
  %"$foldr_call_932" = call { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$foldr_fptr_929"(i8* %"$foldr_envptr_930", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$iter_931"), !dbg !176
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$foldr_call_932", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_20", align 8, !dbg !176
  %"$foldr_21" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$$foldr_20_933" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_20", align 8
  %"$$foldr_20_fptr_934" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_20_933", 0
  %"$$foldr_20_envptr_935" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_20_933", 1
  %"$init_936" = load %TName_List_ByStr20*, %TName_List_ByStr20** %init, align 8
  %"$$foldr_20_call_937" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_20_fptr_934"(i8* %"$$foldr_20_envptr_935", %TName_List_ByStr20* %"$init_936"), !dbg !176
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_20_call_937", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_21", align 8, !dbg !176
  %"$$foldr_21_938" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_21", align 8
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_21_938", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_203", align 8, !dbg !176
  %"$$retval_203_939" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_203", align 8
  ret { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_203_939"
}

define internal { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_200"(%"$$fundef_200_env_451"* %0) !dbg !177 {
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
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_202_cloval_866", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_201", align 8, !dbg !178
  %"$$retval_201_869" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_201", align 8
  ret { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_201_869"
}

define internal %TName_Bool* @"$fundef_168"(%"$$fundef_168_env_452"* %0, %TName_Bool* %1) !dbg !179 {
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
  ], !dbg !181

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
  store %TName_Bool* %"$adtptr_844", %TName_Bool** %"$retval_169", align 8, !dbg !182
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
  store %TName_Bool* %"$adtptr_854", %TName_Bool** %"$retval_169", align 8, !dbg !185
  br label %"$matchsucc_831"

"$empty_default_834":                             ; preds = %"$have_gas_829"
  br label %"$matchsucc_831"

"$matchsucc_831":                                 ; preds = %"$have_gas_850", %"$have_gas_840", %"$empty_default_834"
  %"$$retval_169_855" = load %TName_Bool*, %TName_Bool** %"$retval_169", align 8
  ret %TName_Bool* %"$$retval_169_855"
}

define internal %TName_Bool* @"$fundef_172"(%"$$fundef_172_env_453"* %0, %TName_Bool* %1) !dbg !187 {
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
  ], !dbg !188

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
  store %TName_Bool* %"$adtptr_817", %TName_Bool** %"$retval_173", align 8, !dbg !189
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
  store %TName_Bool* %1, %TName_Bool** %"$retval_173", align 8, !dbg !192
  br label %"$matchsucc_803"

"$empty_default_807":                             ; preds = %"$have_gas_801"
  br label %"$matchsucc_803"

"$matchsucc_803":                                 ; preds = %"$have_gas_823", %"$have_gas_813", %"$empty_default_807"
  %"$$retval_173_825" = load %TName_Bool*, %TName_Bool** %"$retval_173", align 8
  ret %TName_Bool* %"$$retval_173_825"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_170"(%"$$fundef_170_env_454"* %0, %TName_Bool* %1) !dbg !194 {
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
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_172_cloval_793", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_171", align 8, !dbg !195
  %"$$retval_171_795" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_171", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_171_795"
}

define internal %TName_Bool* @"$fundef_176"(%"$$fundef_176_env_455"* %0, %TName_Bool* %1) !dbg !196 {
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
  ], !dbg !197

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
  store %TName_Bool* %"$adtptr_776", %TName_Bool** %"$retval_177", align 8, !dbg !198
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
  store %TName_Bool* %1, %TName_Bool** %"$retval_177", align 8, !dbg !201
  br label %"$matchsucc_762"

"$empty_default_766":                             ; preds = %"$have_gas_760"
  br label %"$matchsucc_762"

"$matchsucc_762":                                 ; preds = %"$have_gas_782", %"$have_gas_772", %"$empty_default_766"
  %"$$retval_177_784" = load %TName_Bool*, %TName_Bool** %"$retval_177", align 8
  ret %TName_Bool* %"$$retval_177_784"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_174"(%"$$fundef_174_env_456"* %0, %TName_Bool* %1) !dbg !203 {
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
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_176_cloval_752", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_175", align 8, !dbg !204
  %"$$retval_175_754" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_175", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_175_754"
}

define internal %TName_Option_ByStr20* @"$fundef_156"(%"$$fundef_156_env_457"* %0, %TName_Option_ByStr20* %1) !dbg !205 {
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
  %"$g_call_736" = call { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_fptr_734"(i8* %"$g_envptr_735", %TName_Option_ByStr20* %1), !dbg !207
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_call_736", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_14", align 8, !dbg !207
  %"$g_15" = alloca %TName_Option_ByStr20*, align 8
  %"$$g_14_737" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_14", align 8
  %"$$g_14_fptr_738" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_14_737", 0
  %"$$g_14_envptr_739" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_14_737", 1
  %"$t_740" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t, align 8
  %"$$g_14_call_741" = call %TName_Option_ByStr20* %"$$g_14_fptr_738"(i8* %"$$g_14_envptr_739", %TName_List_ByStr20* %"$t_740"), !dbg !207
  store %TName_Option_ByStr20* %"$$g_14_call_741", %TName_Option_ByStr20** %"$g_15", align 8, !dbg !207
  %"$$g_15_742" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$g_15", align 8
  store %TName_Option_ByStr20* %"$$g_15_742", %TName_Option_ByStr20** %"$retval_157", align 8, !dbg !207
  %"$$retval_157_743" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$retval_157", align 8
  ret %TName_Option_ByStr20* %"$$retval_157_743"
}

define internal %TName_Option_ByStr20* @"$fundef_154"(%"$$fundef_154_env_458"* %0, %TName_List_ByStr20* %1) !dbg !208 {
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
  ], !dbg !209

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
  store { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_156_cloval_688", { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }* %partial, align 8, !dbg !210
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
  %"$f_call_702" = call { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_fptr_699"(i8* %"$f_envptr_700", %TName_Option_ByStr20* %"$z_701"), !dbg !213
  store { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_call_702", { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$f_16", align 8, !dbg !213
  %"$f_17" = alloca { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, align 8
  %"$$f_16_703" = load { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$f_16", align 8
  %"$$f_16_fptr_704" = extractvalue { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$f_16_703", 0
  %"$$f_16_envptr_705" = extractvalue { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$f_16_703", 1
  %"$$f_16_h_706" = alloca [20 x i8], align 1
  %"$h_707" = load [20 x i8], [20 x i8]* %h, align 1
  store [20 x i8] %"$h_707", [20 x i8]* %"$$f_16_h_706", align 1
  %"$$f_16_call_708" = call { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_16_fptr_704"(i8* %"$$f_16_envptr_705", [20 x i8]* %"$$f_16_h_706"), !dbg !213
  store { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_16_call_708", { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$f_17", align 8, !dbg !213
  %"$f_18" = alloca %TName_Option_ByStr20*, align 8
  %"$$f_17_709" = load { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$f_17", align 8
  %"$$f_17_fptr_710" = extractvalue { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_17_709", 0
  %"$$f_17_envptr_711" = extractvalue { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_17_709", 1
  %"$partial_712" = load { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }* %partial, align 8
  %"$$f_17_call_713" = call %TName_Option_ByStr20* %"$$f_17_fptr_710"(i8* %"$$f_17_envptr_711", { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %"$partial_712"), !dbg !213
  store %TName_Option_ByStr20* %"$$f_17_call_713", %TName_Option_ByStr20** %"$f_18", align 8, !dbg !213
  %"$$f_18_714" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$f_18", align 8
  store %TName_Option_ByStr20* %"$$f_18_714", %TName_Option_ByStr20** %"$retval_155", align 8, !dbg !213
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
  store %TName_Option_ByStr20* %"$z_722", %TName_Option_ByStr20** %"$retval_155", align 8, !dbg !214
  br label %"$matchsucc_665"

"$empty_default_668":                             ; preds = %"$have_gas_663"
  br label %"$matchsucc_665"

"$matchsucc_665":                                 ; preds = %"$have_gas_720", %"$have_gas_696", %"$empty_default_668"
  %"$$retval_155_723" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$retval_155", align 8
  ret %TName_Option_ByStr20* %"$$retval_155_723"
}

define internal { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_152"(%"$$fundef_152_env_459"* %0, %TName_Option_ByStr20* %1) !dbg !216 {
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
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_154_cloval_647", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_153", align 8, !dbg !217
  %"$$retval_153_653" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_153", align 8
  ret { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_153_653"
}

define internal { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } @"$fundef_150"(%"$$fundef_150_env_460"* %0, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %1) !dbg !218 {
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
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_152_cloval_629", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8, !dbg !219
  %"$$fundef_152_env_f_630" = getelementptr inbounds %"$$fundef_152_env_459", %"$$fundef_152_env_459"* %"$$fundef_152_envp_626", i32 0, i32 0
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %1, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_152_env_f_630", align 8
  %"$$fundef_152_env_g_631" = getelementptr inbounds %"$$fundef_152_env_459", %"$$fundef_152_env_459"* %"$$fundef_152_envp_626", i32 0, i32 1
  %"$g_632" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_632", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_152_env_g_631", align 8
  %"$g_633" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_633", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_151", align 8, !dbg !219
  %"$$retval_151_634" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_151", align 8
  ret { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$retval_151_634"
}

define internal { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } @"$fundef_148"(%"$$fundef_148_env_461"* %0) !dbg !220 {
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
  store { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })* bitcast ({ { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (%"$$fundef_150_env_460"*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })* @"$fundef_150" to { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*), i8* null }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_149", align 8, !dbg !221
  %"$$retval_149_615" = load { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_149", align 8
  ret { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$retval_149_615"
}

define internal { i8*, i8* }* @"$fundef_146"(%"$$fundef_146_env_462"* %0) !dbg !222 {
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
  store { i8*, i8* }* %"$dyndisp_table_603", { i8*, i8* }** %"$retval_147", align 8, !dbg !223
  %"$$retval_147_606" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_147", align 8
  ret { i8*, i8* }* %"$$retval_147_606"
}

define internal %TName_List_ByStr20* @"$fundef_166"(%"$$fundef_166_env_463"* %0, %TName_List_ByStr20* %1) !dbg !224 {
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
  ], !dbg !225

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
  %"$g_call_562" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_fptr_559"(i8* %"$g_envptr_560", %TName_List_ByStr20* %"$z_561"), !dbg !226
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_call_562", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_10", align 8, !dbg !226
  %"$g_11" = alloca %TName_List_ByStr20*, align 8
  %"$$g_10_563" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_10", align 8
  %"$$g_10_fptr_564" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_10_563", 0
  %"$$g_10_envptr_565" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_10_563", 1
  %"$t_566" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t, align 8
  %"$$g_10_call_567" = call %TName_List_ByStr20* %"$$g_10_fptr_564"(i8* %"$$g_10_envptr_565", %TName_List_ByStr20* %"$t_566"), !dbg !226
  store %TName_List_ByStr20* %"$$g_10_call_567", %TName_List_ByStr20** %"$g_11", align 8, !dbg !226
  %"$$g_11_568" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$g_11", align 8
  store %TName_List_ByStr20* %"$$g_11_568", %TName_List_ByStr20** %res, align 8, !dbg !226
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
  %"$f_call_579" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$f_fptr_575"(i8* %"$f_envptr_576", [20 x i8]* %"$f_h_577"), !dbg !229
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$f_call_579", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$f_12", align 8, !dbg !229
  %"$f_13" = alloca %TName_List_ByStr20*, align 8
  %"$$f_12_580" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$f_12", align 8
  %"$$f_12_fptr_581" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$f_12_580", 0
  %"$$f_12_envptr_582" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$f_12_580", 1
  %"$res_583" = load %TName_List_ByStr20*, %TName_List_ByStr20** %res, align 8
  %"$$f_12_call_584" = call %TName_List_ByStr20* %"$$f_12_fptr_581"(i8* %"$$f_12_envptr_582", %TName_List_ByStr20* %"$res_583"), !dbg !229
  store %TName_List_ByStr20* %"$$f_12_call_584", %TName_List_ByStr20** %"$f_13", align 8, !dbg !229
  %"$$f_13_585" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$f_13", align 8
  store %TName_List_ByStr20* %"$$f_13_585", %TName_List_ByStr20** %"$retval_167", align 8, !dbg !229
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
  store %TName_List_ByStr20* %"$z_593", %TName_List_ByStr20** %"$retval_167", align 8, !dbg !230
  br label %"$matchsucc_538"

"$empty_default_541":                             ; preds = %"$have_gas_536"
  br label %"$matchsucc_538"

"$matchsucc_538":                                 ; preds = %"$have_gas_591", %"$have_gas_572", %"$empty_default_541"
  %"$$retval_167_594" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$retval_167", align 8
  ret %TName_List_ByStr20* %"$$retval_167_594"
}

define internal { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_164"(%"$$fundef_164_env_464"* %0, %TName_List_ByStr20* %1) !dbg !232 {
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
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_166_cloval_520", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_165", align 8, !dbg !233
  %"$$retval_165_526" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_165", align 8
  ret { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_165_526"
}

define internal { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_162"(%"$$fundef_162_env_465"* %0, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1) !dbg !234 {
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
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_164_cloval_502", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8, !dbg !235
  %"$$fundef_164_env_f_503" = getelementptr inbounds %"$$fundef_164_env_464", %"$$fundef_164_env_464"* %"$$fundef_164_envp_499", i32 0, i32 0
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_164_env_f_503", align 8
  %"$$fundef_164_env_g_504" = getelementptr inbounds %"$$fundef_164_env_464", %"$$fundef_164_env_464"* %"$$fundef_164_envp_499", i32 0, i32 1
  %"$g_505" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_505", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_164_env_g_504", align 8
  %"$g_506" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_506", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_163", align 8, !dbg !235
  %"$$retval_163_507" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_163", align 8
  ret { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_163_507"
}

define internal { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_160"(%"$$fundef_160_env_466"* %0) !dbg !236 {
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
  store { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })* bitcast ({ { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_162_env_465"*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })* @"$fundef_162" to { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*), i8* null }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_161", align 8, !dbg !237
  %"$$retval_161_488" = load { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_161", align 8
  ret { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_161_488"
}

define internal { i8*, i8* }* @"$fundef_158"(%"$$fundef_158_env_467"* %0) !dbg !238 {
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
  store { i8*, i8* }* %"$dyndisp_table_476", { i8*, i8* }** %"$retval_159", align 8, !dbg !239
  %"$$retval_159_479" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_159", align 8
  ret { i8*, i8* }* %"$$retval_159_479"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare [32 x i8]* @_sha256hash(i8*, %_TyDescrTy_Typ*, i8*)

declare i8* @_concat_ByStrX(i8*, i32, i8*, i32, i8*)

define void @_init_libs() !dbg !240 {
entry:
  %"$gasrem_2320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2321" = icmp ugt i64 1, %"$gasrem_2320"
  br i1 %"$gascmp_2321", label %"$out_of_gas_2322", label %"$have_gas_2323"

"$out_of_gas_2322":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2323"

"$have_gas_2323":                                 ; preds = %"$out_of_gas_2322", %entry
  %"$consume_2324" = sub i64 %"$gasrem_2320", 1
  store i64 %"$consume_2324", i64* @_gasrem, align 8
  %"$dyndisp_table_2328_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2328_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2328_salloc_load", i64 48)
  %"$dyndisp_table_2328_salloc" = bitcast i8* %"$dyndisp_table_2328_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2328" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2328_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2329" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2328", i32 0
  %"$dyndisp_pcast_2330" = bitcast { i8*, i8* }* %"$dyndisp_gep_2329" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_158_env_467"*)* @"$fundef_158" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_2330", align 8
  store { i8*, i8* }* %"$dyndisp_table_2328", { i8*, i8* }** @list_foldr, align 8, !dbg !242
  %"$gasrem_2331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2332" = icmp ugt i64 1, %"$gasrem_2331"
  br i1 %"$gascmp_2332", label %"$out_of_gas_2333", label %"$have_gas_2334"

"$out_of_gas_2333":                               ; preds = %"$have_gas_2323"
  call void @_out_of_gas()
  br label %"$have_gas_2334"

"$have_gas_2334":                                 ; preds = %"$out_of_gas_2333", %"$have_gas_2323"
  %"$consume_2335" = sub i64 %"$gasrem_2331", 1
  store i64 %"$consume_2335", i64* @_gasrem, align 8
  %"$dyndisp_table_2339_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2339_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2339_salloc_load", i64 48)
  %"$dyndisp_table_2339_salloc" = bitcast i8* %"$dyndisp_table_2339_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2339" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2339_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2340" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2339", i32 0
  %"$dyndisp_pcast_2341" = bitcast { i8*, i8* }* %"$dyndisp_gep_2340" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_146_env_462"*)* @"$fundef_146" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_2341", align 8
  store { i8*, i8* }* %"$dyndisp_table_2339", { i8*, i8* }** @list_foldk, align 8, !dbg !242
  %"$gasrem_2342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2343" = icmp ugt i64 1, %"$gasrem_2342"
  br i1 %"$gascmp_2343", label %"$out_of_gas_2344", label %"$have_gas_2345"

"$out_of_gas_2344":                               ; preds = %"$have_gas_2334"
  call void @_out_of_gas()
  br label %"$have_gas_2345"

"$have_gas_2345":                                 ; preds = %"$out_of_gas_2344", %"$have_gas_2334"
  %"$consume_2346" = sub i64 %"$gasrem_2342", 1
  store i64 %"$consume_2346", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_174_env_456"*, %TName_Bool*)* @"$fundef_174" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !243
  %"$gasrem_2350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2351" = icmp ugt i64 1, %"$gasrem_2350"
  br i1 %"$gascmp_2351", label %"$out_of_gas_2352", label %"$have_gas_2353"

"$out_of_gas_2352":                               ; preds = %"$have_gas_2345"
  call void @_out_of_gas()
  br label %"$have_gas_2353"

"$have_gas_2353":                                 ; preds = %"$out_of_gas_2352", %"$have_gas_2345"
  %"$consume_2354" = sub i64 %"$gasrem_2350", 1
  store i64 %"$consume_2354", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_170_env_454"*, %TName_Bool*)* @"$fundef_170" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8, !dbg !244
  %"$gasrem_2358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2359" = icmp ugt i64 1, %"$gasrem_2358"
  br i1 %"$gascmp_2359", label %"$out_of_gas_2360", label %"$have_gas_2361"

"$out_of_gas_2360":                               ; preds = %"$have_gas_2353"
  call void @_out_of_gas()
  br label %"$have_gas_2361"

"$have_gas_2361":                                 ; preds = %"$out_of_gas_2360", %"$have_gas_2353"
  %"$consume_2362" = sub i64 %"$gasrem_2358", 1
  store i64 %"$consume_2362", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_168_env_452"*, %TName_Bool*)* @"$fundef_168" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8, !dbg !245
  %"$gasrem_2366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2367" = icmp ugt i64 1, %"$gasrem_2366"
  br i1 %"$gascmp_2367", label %"$out_of_gas_2368", label %"$have_gas_2369"

"$out_of_gas_2368":                               ; preds = %"$have_gas_2361"
  call void @_out_of_gas()
  br label %"$have_gas_2369"

"$have_gas_2369":                                 ; preds = %"$out_of_gas_2368", %"$have_gas_2361"
  %"$consume_2370" = sub i64 %"$gasrem_2366", 1
  store i64 %"$consume_2370", i64* @_gasrem, align 8
  %"$$fundef_200_envp_2371_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_200_envp_2371_salloc" = call i8* @_salloc(i8* %"$$fundef_200_envp_2371_load", i64 8)
  %"$$fundef_200_envp_2371" = bitcast i8* %"$$fundef_200_envp_2371_salloc" to %"$$fundef_200_env_451"*
  %"$$fundef_200_env_voidp_2373" = bitcast %"$$fundef_200_env_451"* %"$$fundef_200_envp_2371" to i8*
  %"$$fundef_200_cloval_2374" = insertvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_200_env_451"*)* @"$fundef_200" to { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_200_env_voidp_2373", 1
  %"$$fundef_200_env_list_foldr_2375" = getelementptr inbounds %"$$fundef_200_env_451", %"$$fundef_200_env_451"* %"$$fundef_200_envp_2371", i32 0, i32 0
  %"$list_foldr_2376" = load { i8*, i8* }*, { i8*, i8* }** @list_foldr, align 8
  store { i8*, i8* }* %"$list_foldr_2376", { i8*, i8* }** %"$$fundef_200_env_list_foldr_2375", align 8
  %"$dyndisp_table_2377_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2377_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2377_salloc_load", i64 48)
  %"$dyndisp_table_2377_salloc" = bitcast i8* %"$dyndisp_table_2377_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2377" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2377_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2378" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2377", i32 0
  %"$dyndisp_pcast_2379" = bitcast { i8*, i8* }* %"$dyndisp_gep_2378" to { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_200_cloval_2374", { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2379", align 8
  store { i8*, i8* }* %"$dyndisp_table_2377", { i8*, i8* }** @ListUtils.list_filter, align 8, !dbg !246
  %"$gasrem_2380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2381" = icmp ugt i64 1, %"$gasrem_2380"
  br i1 %"$gascmp_2381", label %"$out_of_gas_2382", label %"$have_gas_2383"

"$out_of_gas_2382":                               ; preds = %"$have_gas_2369"
  call void @_out_of_gas()
  br label %"$have_gas_2383"

"$have_gas_2383":                                 ; preds = %"$out_of_gas_2382", %"$have_gas_2369"
  %"$consume_2384" = sub i64 %"$gasrem_2380", 1
  store i64 %"$consume_2384", i64* @_gasrem, align 8
  %"$$fundef_190_envp_2385_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_190_envp_2385_salloc" = call i8* @_salloc(i8* %"$$fundef_190_envp_2385_load", i64 8)
  %"$$fundef_190_envp_2385" = bitcast i8* %"$$fundef_190_envp_2385_salloc" to %"$$fundef_190_env_447"*
  %"$$fundef_190_env_voidp_2387" = bitcast %"$$fundef_190_env_447"* %"$$fundef_190_envp_2385" to i8*
  %"$$fundef_190_cloval_2388" = insertvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_190_env_447"*)* @"$fundef_190" to { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_190_env_voidp_2387", 1
  %"$$fundef_190_env_list_foldk_2389" = getelementptr inbounds %"$$fundef_190_env_447", %"$$fundef_190_env_447"* %"$$fundef_190_envp_2385", i32 0, i32 0
  %"$list_foldk_2390" = load { i8*, i8* }*, { i8*, i8* }** @list_foldk, align 8
  store { i8*, i8* }* %"$list_foldk_2390", { i8*, i8* }** %"$$fundef_190_env_list_foldk_2389", align 8
  %"$dyndisp_table_2391_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2391_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2391_salloc_load", i64 48)
  %"$dyndisp_table_2391_salloc" = bitcast i8* %"$dyndisp_table_2391_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2391" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2391_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2392" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2391", i32 0
  %"$dyndisp_pcast_2393" = bitcast { i8*, i8* }* %"$dyndisp_gep_2392" to { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_190_cloval_2388", { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2393", align 8
  store { i8*, i8* }* %"$dyndisp_table_2391", { i8*, i8* }** @ListUtils.list_find, align 8, !dbg !247
  %"$gasrem_2394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2395" = icmp ugt i64 1, %"$gasrem_2394"
  br i1 %"$gascmp_2395", label %"$out_of_gas_2396", label %"$have_gas_2397"

"$out_of_gas_2396":                               ; preds = %"$have_gas_2383"
  call void @_out_of_gas()
  br label %"$have_gas_2397"

"$have_gas_2397":                                 ; preds = %"$out_of_gas_2396", %"$have_gas_2383"
  %"$consume_2398" = sub i64 %"$gasrem_2394", 1
  store i64 %"$consume_2398", i64* @_gasrem, align 8
  %"$$fundef_184_envp_2399_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_184_envp_2399_salloc" = call i8* @_salloc(i8* %"$$fundef_184_envp_2399_load", i64 8)
  %"$$fundef_184_envp_2399" = bitcast i8* %"$$fundef_184_envp_2399_salloc" to %"$$fundef_184_env_442"*
  %"$$fundef_184_env_voidp_2401" = bitcast %"$$fundef_184_env_442"* %"$$fundef_184_envp_2399" to i8*
  %"$$fundef_184_cloval_2402" = insertvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_184_env_442"*)* @"$fundef_184" to { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_184_env_voidp_2401", 1
  %"$$fundef_184_env_ListUtils.list_find_2403" = getelementptr inbounds %"$$fundef_184_env_442", %"$$fundef_184_env_442"* %"$$fundef_184_envp_2399", i32 0, i32 0
  %"$ListUtils.list_find_2404" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_find, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_2404", { i8*, i8* }** %"$$fundef_184_env_ListUtils.list_find_2403", align 8
  %"$dyndisp_table_2405_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2405_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2405_salloc_load", i64 48)
  %"$dyndisp_table_2405_salloc" = bitcast i8* %"$dyndisp_table_2405_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2405" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2405_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2406" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2405", i32 0
  %"$dyndisp_pcast_2407" = bitcast { i8*, i8* }* %"$dyndisp_gep_2406" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_184_cloval_2402", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2407", align 8
  store { i8*, i8* }* %"$dyndisp_table_2405", { i8*, i8* }** @ListUtils.list_exists, align 8, !dbg !248
  %"$gasrem_2408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2409" = icmp ugt i64 1, %"$gasrem_2408"
  br i1 %"$gascmp_2409", label %"$out_of_gas_2410", label %"$have_gas_2411"

"$out_of_gas_2410":                               ; preds = %"$have_gas_2397"
  call void @_out_of_gas()
  br label %"$have_gas_2411"

"$have_gas_2411":                                 ; preds = %"$out_of_gas_2410", %"$have_gas_2397"
  %"$consume_2412" = sub i64 %"$gasrem_2408", 1
  store i64 %"$consume_2412", i64* @_gasrem, align 8
  %"$$fundef_178_envp_2413_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_178_envp_2413_salloc" = call i8* @_salloc(i8* %"$$fundef_178_envp_2413_load", i64 8)
  %"$$fundef_178_envp_2413" = bitcast i8* %"$$fundef_178_envp_2413_salloc" to %"$$fundef_178_env_439"*
  %"$$fundef_178_env_voidp_2415" = bitcast %"$$fundef_178_env_439"* %"$$fundef_178_envp_2413" to i8*
  %"$$fundef_178_cloval_2416" = insertvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_178_env_439"*)* @"$fundef_178" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_178_env_voidp_2415", 1
  %"$$fundef_178_env_ListUtils.list_exists_2417" = getelementptr inbounds %"$$fundef_178_env_439", %"$$fundef_178_env_439"* %"$$fundef_178_envp_2413", i32 0, i32 0
  %"$ListUtils.list_exists_2418" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_exists, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_2418", { i8*, i8* }** %"$$fundef_178_env_ListUtils.list_exists_2417", align 8
  %"$dyndisp_table_2419_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2419_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2419_salloc_load", i64 48)
  %"$dyndisp_table_2419_salloc" = bitcast i8* %"$dyndisp_table_2419_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2419" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2419_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2420" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2419", i32 0
  %"$dyndisp_pcast_2421" = bitcast { i8*, i8* }* %"$dyndisp_gep_2420" to { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_178_cloval_2416", { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2421", align 8
  store { i8*, i8* }* %"$dyndisp_table_2419", { i8*, i8* }** @ListUtils.list_mem, align 8, !dbg !249
  %"$gasrem_2422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2423" = icmp ugt i64 1, %"$gasrem_2422"
  br i1 %"$gascmp_2423", label %"$out_of_gas_2424", label %"$have_gas_2425"

"$out_of_gas_2424":                               ; preds = %"$have_gas_2411"
  call void @_out_of_gas()
  br label %"$have_gas_2425"

"$have_gas_2425":                                 ; preds = %"$out_of_gas_2424", %"$have_gas_2411"
  %"$consume_2426" = sub i64 %"$gasrem_2422", 1
  store i64 %"$consume_2426", i64* @_gasrem, align 8
  store [20 x i8] zeroinitializer, [20 x i8]* @ud-registry.zeroByStr20, align 1, !dbg !250
  %"$gasrem_2427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2428" = icmp ugt i64 1, %"$gasrem_2427"
  br i1 %"$gascmp_2428", label %"$out_of_gas_2429", label %"$have_gas_2430"

"$out_of_gas_2429":                               ; preds = %"$have_gas_2425"
  call void @_out_of_gas()
  br label %"$have_gas_2430"

"$have_gas_2430":                                 ; preds = %"$out_of_gas_2429", %"$have_gas_2425"
  %"$consume_2431" = sub i64 %"$gasrem_2427", 1
  store i64 %"$consume_2431", i64* @_gasrem, align 8
  %"$adtval_2432_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2432_salloc" = call i8* @_salloc(i8* %"$adtval_2432_load", i64 1)
  %"$adtval_2432" = bitcast i8* %"$adtval_2432_salloc" to %CName_Nil_ByStr20*
  %"$adtgep_2433" = getelementptr inbounds %CName_Nil_ByStr20, %CName_Nil_ByStr20* %"$adtval_2432", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2433", align 1
  %"$adtptr_2434" = bitcast %CName_Nil_ByStr20* %"$adtval_2432" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2434", %TName_List_ByStr20** @ud-registry.nilByStr20, align 8, !dbg !251
  %"$gasrem_2435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2436" = icmp ugt i64 1, %"$gasrem_2435"
  br i1 %"$gascmp_2436", label %"$out_of_gas_2437", label %"$have_gas_2438"

"$out_of_gas_2437":                               ; preds = %"$have_gas_2430"
  call void @_out_of_gas()
  br label %"$have_gas_2438"

"$have_gas_2438":                                 ; preds = %"$out_of_gas_2437", %"$have_gas_2430"
  %"$consume_2439" = sub i64 %"$gasrem_2435", 1
  store i64 %"$consume_2439", i64* @_gasrem, align 8
  %"$adtval_2440_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2440_salloc" = call i8* @_salloc(i8* %"$adtval_2440_load", i64 1)
  %"$adtval_2440" = bitcast i8* %"$adtval_2440_salloc" to %CName_Nil_Message*
  %"$adtgep_2441" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_2440", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2441", align 1
  %"$adtptr_2442" = bitcast %CName_Nil_Message* %"$adtval_2440" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_2442", %TName_List_Message** @ud-registry.nilMessage, align 8, !dbg !252
  %"$gasrem_2443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2444" = icmp ugt i64 1, %"$gasrem_2443"
  br i1 %"$gascmp_2444", label %"$out_of_gas_2445", label %"$have_gas_2446"

"$out_of_gas_2445":                               ; preds = %"$have_gas_2438"
  call void @_out_of_gas()
  br label %"$have_gas_2446"

"$have_gas_2446":                                 ; preds = %"$out_of_gas_2445", %"$have_gas_2438"
  %"$consume_2447" = sub i64 %"$gasrem_2443", 1
  store i64 %"$consume_2447", i64* @_gasrem, align 8
  %"$$fundef_270_envp_2448_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_270_envp_2448_salloc" = call i8* @_salloc(i8* %"$$fundef_270_envp_2448_load", i64 8)
  %"$$fundef_270_envp_2448" = bitcast i8* %"$$fundef_270_envp_2448_salloc" to %"$$fundef_270_env_436"*
  %"$$fundef_270_env_voidp_2450" = bitcast %"$$fundef_270_env_436"* %"$$fundef_270_envp_2448" to i8*
  %"$$fundef_270_cloval_2451" = insertvalue { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_270_env_436"*, i8*)* @"$fundef_270" to %TName_List_Message* (i8*, i8*)*), i8* undef }, i8* %"$$fundef_270_env_voidp_2450", 1
  %"$$fundef_270_env_ud-registry.nilMessage_2452" = getelementptr inbounds %"$$fundef_270_env_436", %"$$fundef_270_env_436"* %"$$fundef_270_envp_2448", i32 0, i32 0
  %"$ud-registry.nilMessage_2453" = load %TName_List_Message*, %TName_List_Message** @ud-registry.nilMessage, align 8
  store %TName_List_Message* %"$ud-registry.nilMessage_2453", %TName_List_Message** %"$$fundef_270_env_ud-registry.nilMessage_2452", align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } %"$$fundef_270_cloval_2451", { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8, !dbg !253
  %"$gasrem_2454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2455" = icmp ugt i64 1, %"$gasrem_2454"
  br i1 %"$gascmp_2455", label %"$out_of_gas_2456", label %"$have_gas_2457"

"$out_of_gas_2456":                               ; preds = %"$have_gas_2446"
  call void @_out_of_gas()
  br label %"$have_gas_2457"

"$have_gas_2457":                                 ; preds = %"$out_of_gas_2456", %"$have_gas_2446"
  %"$consume_2458" = sub i64 %"$gasrem_2454", 1
  store i64 %"$consume_2458", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_266_env_435"*, [20 x i8]*)* @"$fundef_266" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eqByStr20, align 8, !dbg !254
  %"$gasrem_2462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2463" = icmp ugt i64 1, %"$gasrem_2462"
  br i1 %"$gascmp_2463", label %"$out_of_gas_2464", label %"$have_gas_2465"

"$out_of_gas_2464":                               ; preds = %"$have_gas_2457"
  call void @_out_of_gas()
  br label %"$have_gas_2465"

"$have_gas_2465":                                 ; preds = %"$out_of_gas_2464", %"$have_gas_2457"
  %"$consume_2466" = sub i64 %"$gasrem_2462", 1
  store i64 %"$consume_2466", i64* @_gasrem, align 8
  %"$$fundef_262_envp_2467_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_262_envp_2467_salloc" = call i8* @_salloc(i8* %"$$fundef_262_envp_2467_load", i64 24)
  %"$$fundef_262_envp_2467" = bitcast i8* %"$$fundef_262_envp_2467_salloc" to %"$$fundef_262_env_433"*
  %"$$fundef_262_env_voidp_2469" = bitcast %"$$fundef_262_env_433"* %"$$fundef_262_envp_2467" to i8*
  %"$$fundef_262_cloval_2470" = insertvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_262_env_433"*, %TName_List_ByStr20*)* @"$fundef_262" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_262_env_voidp_2469", 1
  %"$$fundef_262_env_ListUtils.list_mem_2471" = getelementptr inbounds %"$$fundef_262_env_433", %"$$fundef_262_env_433"* %"$$fundef_262_envp_2467", i32 0, i32 0
  %"$ListUtils.list_mem_2472" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_mem, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_2472", { i8*, i8* }** %"$$fundef_262_env_ListUtils.list_mem_2471", align 8
  %"$$fundef_262_env_ud-registry.eqByStr20_2473" = getelementptr inbounds %"$$fundef_262_env_433", %"$$fundef_262_env_433"* %"$$fundef_262_envp_2467", i32 0, i32 1
  %"$ud-registry.eqByStr20_2474" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eqByStr20, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_2474", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_262_env_ud-registry.eqByStr20_2473", align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_262_cloval_2470", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8, !dbg !255
  %"$gasrem_2475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2476" = icmp ugt i64 1, %"$gasrem_2475"
  br i1 %"$gascmp_2476", label %"$out_of_gas_2477", label %"$have_gas_2478"

"$out_of_gas_2477":                               ; preds = %"$have_gas_2465"
  call void @_out_of_gas()
  br label %"$have_gas_2478"

"$have_gas_2478":                                 ; preds = %"$out_of_gas_2477", %"$have_gas_2465"
  %"$consume_2479" = sub i64 %"$gasrem_2475", 1
  store i64 %"$consume_2479", i64* @_gasrem, align 8
  %"$$fundef_258_envp_2480_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_258_envp_2480_salloc" = call i8* @_salloc(i8* %"$$fundef_258_envp_2480_load", i64 32)
  %"$$fundef_258_envp_2480" = bitcast i8* %"$$fundef_258_envp_2480_salloc" to %"$$fundef_258_env_431"*
  %"$$fundef_258_env_voidp_2482" = bitcast %"$$fundef_258_env_431"* %"$$fundef_258_envp_2480" to i8*
  %"$$fundef_258_cloval_2483" = insertvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_258_env_431"*, %TName_List_ByStr20*)* @"$fundef_258" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_258_env_voidp_2482", 1
  %"$$fundef_258_env_BoolUtils.negb_2484" = getelementptr inbounds %"$$fundef_258_env_431", %"$$fundef_258_env_431"* %"$$fundef_258_envp_2480", i32 0, i32 0
  %"$BoolUtils.negb_2485" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_2485", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_258_env_BoolUtils.negb_2484", align 8
  %"$$fundef_258_env_ud-registry.listByStr20Contains_2486" = getelementptr inbounds %"$$fundef_258_env_431", %"$$fundef_258_env_431"* %"$$fundef_258_envp_2480", i32 0, i32 1
  %"$ud-registry.listByStr20Contains_2487" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2487", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_258_env_ud-registry.listByStr20Contains_2486", align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_258_cloval_2483", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes, align 8, !dbg !256
  %"$gasrem_2488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2489" = icmp ugt i64 1, %"$gasrem_2488"
  br i1 %"$gascmp_2489", label %"$out_of_gas_2490", label %"$have_gas_2491"

"$out_of_gas_2490":                               ; preds = %"$have_gas_2478"
  call void @_out_of_gas()
  br label %"$have_gas_2491"

"$have_gas_2491":                                 ; preds = %"$out_of_gas_2490", %"$have_gas_2478"
  %"$consume_2492" = sub i64 %"$gasrem_2488", 1
  store i64 %"$consume_2492", i64* @_gasrem, align 8
  %"$$fundef_252_envp_2493_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_252_envp_2493_salloc" = call i8* @_salloc(i8* %"$$fundef_252_envp_2493_load", i64 24)
  %"$$fundef_252_envp_2493" = bitcast i8* %"$$fundef_252_envp_2493_salloc" to %"$$fundef_252_env_429"*
  %"$$fundef_252_env_voidp_2495" = bitcast %"$$fundef_252_env_429"* %"$$fundef_252_envp_2493" to i8*
  %"$$fundef_252_cloval_2496" = insertvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_252_env_429"*, %TName_List_ByStr20*)* @"$fundef_252" to { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_252_env_voidp_2495", 1
  %"$$fundef_252_env_BoolUtils.negb_2497" = getelementptr inbounds %"$$fundef_252_env_429", %"$$fundef_252_env_429"* %"$$fundef_252_envp_2493", i32 0, i32 0
  %"$BoolUtils.negb_2498" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_2498", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_252_env_BoolUtils.negb_2497", align 8
  %"$$fundef_252_env_ListUtils.list_filter_2499" = getelementptr inbounds %"$$fundef_252_env_429", %"$$fundef_252_env_429"* %"$$fundef_252_envp_2493", i32 0, i32 1
  %"$ListUtils.list_filter_2500" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_filter, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_2500", { i8*, i8* }** %"$$fundef_252_env_ListUtils.list_filter_2499", align 8
  store { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_252_cloval_2496", { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8, !dbg !257
  %"$gasrem_2501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2502" = icmp ugt i64 1, %"$gasrem_2501"
  br i1 %"$gascmp_2502", label %"$out_of_gas_2503", label %"$have_gas_2504"

"$out_of_gas_2503":                               ; preds = %"$have_gas_2491"
  call void @_out_of_gas()
  br label %"$have_gas_2504"

"$have_gas_2504":                                 ; preds = %"$out_of_gas_2503", %"$have_gas_2491"
  %"$consume_2505" = sub i64 %"$gasrem_2501", 1
  store i64 %"$consume_2505", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_248_env_426"*, %TName_Bool*)* @"$fundef_248" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8, !dbg !258
  %"$gasrem_2509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2510" = icmp ugt i64 1, %"$gasrem_2509"
  br i1 %"$gascmp_2510", label %"$out_of_gas_2511", label %"$have_gas_2512"

"$out_of_gas_2511":                               ; preds = %"$have_gas_2504"
  call void @_out_of_gas()
  br label %"$have_gas_2512"

"$have_gas_2512":                                 ; preds = %"$out_of_gas_2511", %"$have_gas_2504"
  %"$consume_2513" = sub i64 %"$gasrem_2509", 1
  store i64 %"$consume_2513", i64* @_gasrem, align 8
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_244_env_424"*, [20 x i8]*)* @"$fundef_244" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eAdminSet, align 8, !dbg !259
  %"$gasrem_2517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2518" = icmp ugt i64 1, %"$gasrem_2517"
  br i1 %"$gascmp_2518", label %"$out_of_gas_2519", label %"$have_gas_2520"

"$out_of_gas_2519":                               ; preds = %"$have_gas_2512"
  call void @_out_of_gas()
  br label %"$have_gas_2520"

"$have_gas_2520":                                 ; preds = %"$out_of_gas_2519", %"$have_gas_2512"
  %"$consume_2521" = sub i64 %"$gasrem_2517", 1
  store i64 %"$consume_2521", i64* @_gasrem, align 8
  store { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_238_env_422"*, [20 x i8]*)* @"$fundef_238" to { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApprovedFor, align 8, !dbg !260
  %"$gasrem_2525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2526" = icmp ugt i64 1, %"$gasrem_2525"
  br i1 %"$gascmp_2526", label %"$out_of_gas_2527", label %"$have_gas_2528"

"$out_of_gas_2527":                               ; preds = %"$have_gas_2520"
  call void @_out_of_gas()
  br label %"$have_gas_2528"

"$have_gas_2528":                                 ; preds = %"$out_of_gas_2527", %"$have_gas_2520"
  %"$consume_2529" = sub i64 %"$gasrem_2525", 1
  store i64 %"$consume_2529", i64* @_gasrem, align 8
  store { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_236_env_419"*, [20 x i8]*)* @"$fundef_236" to i8* (i8*, [20 x i8]*)*), i8* null }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApproved, align 8, !dbg !261
  %"$gasrem_2533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2534" = icmp ugt i64 1, %"$gasrem_2533"
  br i1 %"$gascmp_2534", label %"$out_of_gas_2535", label %"$have_gas_2536"

"$out_of_gas_2535":                               ; preds = %"$have_gas_2528"
  call void @_out_of_gas()
  br label %"$have_gas_2536"

"$have_gas_2536":                                 ; preds = %"$out_of_gas_2535", %"$have_gas_2528"
  %"$consume_2537" = sub i64 %"$gasrem_2533", 1
  store i64 %"$consume_2537", i64* @_gasrem, align 8
  store { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_234_env_418"*, [20 x i8]*)* @"$fundef_234" to i8* (i8*, [20 x i8]*)*), i8* null }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eNewRegistrar, align 8, !dbg !262
  %"$gasrem_2541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2542" = icmp ugt i64 1, %"$gasrem_2541"
  br i1 %"$gascmp_2542", label %"$out_of_gas_2543", label %"$have_gas_2544"

"$out_of_gas_2543":                               ; preds = %"$have_gas_2536"
  call void @_out_of_gas()
  br label %"$have_gas_2544"

"$have_gas_2544":                                 ; preds = %"$out_of_gas_2543", %"$have_gas_2536"
  %"$consume_2545" = sub i64 %"$gasrem_2541", 1
  store i64 %"$consume_2545", i64* @_gasrem, align 8
  store { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)* bitcast ({ i8* (i8*, %String)*, i8* } (%"$$fundef_230_env_417"*, [32 x i8]*)* @"$fundef_230" to { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain, align 8, !dbg !263
  %"$gasrem_2549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2550" = icmp ugt i64 1, %"$gasrem_2549"
  br i1 %"$gascmp_2550", label %"$out_of_gas_2551", label %"$have_gas_2552"

"$out_of_gas_2551":                               ; preds = %"$have_gas_2544"
  call void @_out_of_gas()
  br label %"$have_gas_2552"

"$have_gas_2552":                                 ; preds = %"$out_of_gas_2551", %"$have_gas_2544"
  %"$consume_2553" = sub i64 %"$gasrem_2549", 1
  store i64 %"$consume_2553", i64* @_gasrem, align 8
  store { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)* bitcast ({ { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_224_env_415"*, [32 x i8]*)* @"$fundef_224" to { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8, !dbg !264
  %"$gasrem_2557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2558" = icmp ugt i64 1, %"$gasrem_2557"
  br i1 %"$gascmp_2558", label %"$out_of_gas_2559", label %"$have_gas_2560"

"$out_of_gas_2559":                               ; preds = %"$have_gas_2552"
  call void @_out_of_gas()
  br label %"$have_gas_2560"

"$have_gas_2560":                                 ; preds = %"$out_of_gas_2559", %"$have_gas_2552"
  %"$consume_2561" = sub i64 %"$gasrem_2557", 1
  store i64 %"$consume_2561", i64* @_gasrem, align 8
  store { i8* (i8*, %String)*, i8* } { i8* (i8*, %String)* bitcast (i8* (%"$$fundef_222_env_412"*, %String)* @"$fundef_222" to i8* (i8*, %String)*), i8* null }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8, !dbg !265
  %"$gasrem_2565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2566" = icmp ugt i64 1, %"$gasrem_2565"
  br i1 %"$gascmp_2566", label %"$out_of_gas_2567", label %"$have_gas_2568"

"$out_of_gas_2567":                               ; preds = %"$have_gas_2560"
  call void @_out_of_gas()
  br label %"$have_gas_2568"

"$have_gas_2568":                                 ; preds = %"$out_of_gas_2567", %"$have_gas_2560"
  %"$consume_2569" = sub i64 %"$gasrem_2565", 1
  store i64 %"$consume_2569", i64* @_gasrem, align 8
  %"$$fundef_220_envp_2570_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_220_envp_2570_salloc" = call i8* @_salloc(i8* %"$$fundef_220_envp_2570_load", i64 20)
  %"$$fundef_220_envp_2570" = bitcast i8* %"$$fundef_220_envp_2570_salloc" to %"$$fundef_220_env_411"*
  %"$$fundef_220_env_voidp_2572" = bitcast %"$$fundef_220_env_411"* %"$$fundef_220_envp_2570" to i8*
  %"$$fundef_220_cloval_2573" = insertvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)* bitcast (void (%"$$fundef_220_env_411"*, [20 x i8]*, %TName_Option_ud-registry.Record*)* @"$fundef_220" to void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*), i8* undef }, i8* %"$$fundef_220_env_voidp_2572", 1
  %"$$fundef_220_env_ud-registry.zeroByStr20_2574" = getelementptr inbounds %"$$fundef_220_env_411", %"$$fundef_220_env_411"* %"$$fundef_220_envp_2570", i32 0, i32 0
  %"$ud-registry.zeroByStr20_2575" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_2575", [20 x i8]* %"$$fundef_220_env_ud-registry.zeroByStr20_2574", align 1
  store { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$$fundef_220_cloval_2573", { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8, !dbg !266
  %"$gasrem_2576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2577" = icmp ugt i64 1, %"$gasrem_2576"
  br i1 %"$gascmp_2577", label %"$out_of_gas_2578", label %"$have_gas_2579"

"$out_of_gas_2578":                               ; preds = %"$have_gas_2568"
  call void @_out_of_gas()
  br label %"$have_gas_2579"

"$have_gas_2579":                                 ; preds = %"$out_of_gas_2578", %"$have_gas_2568"
  %"$consume_2580" = sub i64 %"$gasrem_2576", 1
  store i64 %"$consume_2580", i64* @_gasrem, align 8
  store { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)* bitcast ({ void (i8*, [32 x i8]*, %String)*, i8* } (%"$$fundef_216_env_410"*, [32 x i8]*)* @"$fundef_216" to { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8, !dbg !267
  %"$gasrem_2584" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2585" = icmp ugt i64 1, %"$gasrem_2584"
  br i1 %"$gascmp_2585", label %"$out_of_gas_2586", label %"$have_gas_2587"

"$out_of_gas_2586":                               ; preds = %"$have_gas_2579"
  call void @_out_of_gas()
  br label %"$have_gas_2587"

"$have_gas_2587":                                 ; preds = %"$out_of_gas_2586", %"$have_gas_2579"
  %"$consume_2588" = sub i64 %"$gasrem_2584", 1
  store i64 %"$consume_2588", i64* @_gasrem, align 8
  %"$$fundef_208_envp_2589_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_208_envp_2589_salloc" = call i8* @_salloc(i8* %"$$fundef_208_envp_2589_load", i64 32)
  %"$$fundef_208_envp_2589" = bitcast i8* %"$$fundef_208_envp_2589_salloc" to %"$$fundef_208_env_408"*
  %"$$fundef_208_env_voidp_2591" = bitcast %"$$fundef_208_env_408"* %"$$fundef_208_envp_2589" to i8*
  %"$$fundef_208_cloval_2592" = insertvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_208_env_408"*, [20 x i8]*)* @"$fundef_208" to { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_208_env_voidp_2591", 1
  %"$$fundef_208_env_BoolUtils.orb_2593" = getelementptr inbounds %"$$fundef_208_env_408", %"$$fundef_208_env_408"* %"$$fundef_208_envp_2589", i32 0, i32 0
  %"$BoolUtils.orb_2594" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2594", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_208_env_BoolUtils.orb_2593", align 8
  %"$$fundef_208_env_ud-registry.listByStr20Contains_2595" = getelementptr inbounds %"$$fundef_208_env_408", %"$$fundef_208_env_408"* %"$$fundef_208_envp_2589", i32 0, i32 1
  %"$ud-registry.listByStr20Contains_2596" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2596", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_208_env_ud-registry.listByStr20Contains_2595", align 8
  store { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_208_cloval_2592", { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8, !dbg !268
  ret void
}

define void @_init_state() !dbg !269 {
entry:
  %"$records_272" = alloca %Map_ByStr32_ud-registry.Record*, align 8
  %"$gasrem_2597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2598" = icmp ugt i64 1, %"$gasrem_2597"
  br i1 %"$gascmp_2598", label %"$out_of_gas_2599", label %"$have_gas_2600"

"$out_of_gas_2599":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2600"

"$have_gas_2600":                                 ; preds = %"$out_of_gas_2599", %entry
  %"$consume_2601" = sub i64 %"$gasrem_2597", 1
  store i64 %"$consume_2601", i64* @_gasrem, align 8
  %empty = alloca %Map_ByStr32_ud-registry.Record*, align 8
  %"$gasrem_2602" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2603" = icmp ugt i64 1, %"$gasrem_2602"
  br i1 %"$gascmp_2603", label %"$out_of_gas_2604", label %"$have_gas_2605"

"$out_of_gas_2604":                               ; preds = %"$have_gas_2600"
  call void @_out_of_gas()
  br label %"$have_gas_2605"

"$have_gas_2605":                                 ; preds = %"$out_of_gas_2604", %"$have_gas_2600"
  %"$consume_2606" = sub i64 %"$gasrem_2602", 1
  store i64 %"$consume_2606", i64* @_gasrem, align 8
  %"$execptr_load_2607" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2608" = call i8* @_new_empty_map(i8* %"$execptr_load_2607")
  %"$_new_empty_map_2609" = bitcast i8* %"$_new_empty_map_call_2608" to %Map_ByStr32_ud-registry.Record*
  store %Map_ByStr32_ud-registry.Record* %"$_new_empty_map_2609", %Map_ByStr32_ud-registry.Record** %empty, align 8, !dbg !270
  %"$gasrem_2610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2611" = icmp ugt i64 1, %"$gasrem_2610"
  br i1 %"$gascmp_2611", label %"$out_of_gas_2612", label %"$have_gas_2613"

"$out_of_gas_2612":                               ; preds = %"$have_gas_2605"
  call void @_out_of_gas()
  br label %"$have_gas_2613"

"$have_gas_2613":                                 ; preds = %"$out_of_gas_2612", %"$have_gas_2605"
  %"$consume_2614" = sub i64 %"$gasrem_2610", 1
  store i64 %"$consume_2614", i64* @_gasrem, align 8
  %rootRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_2615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2616" = icmp ugt i64 1, %"$gasrem_2615"
  br i1 %"$gascmp_2616", label %"$out_of_gas_2617", label %"$have_gas_2618"

"$out_of_gas_2617":                               ; preds = %"$have_gas_2613"
  call void @_out_of_gas()
  br label %"$have_gas_2618"

"$have_gas_2618":                                 ; preds = %"$out_of_gas_2617", %"$have_gas_2613"
  %"$consume_2619" = sub i64 %"$gasrem_2615", 1
  store i64 %"$consume_2619", i64* @_gasrem, align 8
  %"$initialOwner_2620" = load [20 x i8], [20 x i8]* @_cparam_initialOwner, align 1
  %"$ud-registry.zeroByStr20_2621" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_2622_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2622_salloc" = call i8* @_salloc(i8* %"$adtval_2622_load", i64 41)
  %"$adtval_2622" = bitcast i8* %"$adtval_2622_salloc" to %CName_ud-registry.Record*
  %"$adtgep_2623" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2622", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2623", align 1
  %"$adtgep_2624" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2622", i32 0, i32 1
  store [20 x i8] %"$initialOwner_2620", [20 x i8]* %"$adtgep_2624", align 1
  %"$adtgep_2625" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2622", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_2621", [20 x i8]* %"$adtgep_2625", align 1
  %"$adtptr_2626" = bitcast %CName_ud-registry.Record* %"$adtval_2622" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_2626", %TName_ud-registry.Record** %rootRecord, align 8, !dbg !271
  %"$execptr_load_2627" = load i8*, i8** @_execptr, align 8
  %"$empty_2628" = load %Map_ByStr32_ud-registry.Record*, %Map_ByStr32_ud-registry.Record** %empty, align 8
  %"$$empty_2628_2629" = bitcast %Map_ByStr32_ud-registry.Record* %"$empty_2628" to i8*
  %"$put_rootNode_2630" = alloca [32 x i8], align 1
  %"$rootNode_2631" = load [32 x i8], [32 x i8]* @_cparam_rootNode, align 1
  store [32 x i8] %"$rootNode_2631", [32 x i8]* %"$put_rootNode_2630", align 1
  %"$$put_rootNode_2630_2632" = bitcast [32 x i8]* %"$put_rootNode_2630" to i8*
  %"$rootRecord_2633" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %rootRecord, align 8
  %"$$rootRecord_2633_2634" = bitcast %TName_ud-registry.Record* %"$rootRecord_2633" to i8*
  %"$put_call_2635" = call i8* @_put(i8* %"$execptr_load_2627", %_TyDescrTy_Typ* @"$TyDescr_Map_325", i8* %"$$empty_2628_2629", i8* %"$$put_rootNode_2630_2632", i8* %"$$rootRecord_2633_2634"), !dbg !272
  %"$put_2636" = bitcast i8* %"$put_call_2635" to %Map_ByStr32_ud-registry.Record*
  store %Map_ByStr32_ud-registry.Record* %"$put_2636", %Map_ByStr32_ud-registry.Record** %"$records_272", align 8, !dbg !272
  %"$execptr_load_2637" = load i8*, i8** @_execptr, align 8
  %"$$records_272_2639" = load %Map_ByStr32_ud-registry.Record*, %Map_ByStr32_ud-registry.Record** %"$records_272", align 8
  %"$update_value_2640" = bitcast %Map_ByStr32_ud-registry.Record* %"$$records_272_2639" to i8*
  call void @_update_field(i8* %"$execptr_load_2637", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_2638", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 0, i8* null, i8* %"$update_value_2640"), !dbg !270
  %"$registrar_273" = alloca [20 x i8], align 1
  %"$gasrem_2641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2642" = icmp ugt i64 1, %"$gasrem_2641"
  br i1 %"$gascmp_2642", label %"$out_of_gas_2643", label %"$have_gas_2644"

"$out_of_gas_2643":                               ; preds = %"$have_gas_2618"
  call void @_out_of_gas()
  br label %"$have_gas_2644"

"$have_gas_2644":                                 ; preds = %"$out_of_gas_2643", %"$have_gas_2618"
  %"$consume_2645" = sub i64 %"$gasrem_2641", 1
  store i64 %"$consume_2645", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_2646" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_2646", [20 x i8]* %"$registrar_273", align 1, !dbg !273
  %"$execptr_load_2647" = load i8*, i8** @_execptr, align 8
  %"$$registrar_273_2649" = load [20 x i8], [20 x i8]* %"$registrar_273", align 1
  %"$update_value_2650" = alloca [20 x i8], align 1
  store [20 x i8] %"$$registrar_273_2649", [20 x i8]* %"$update_value_2650", align 1
  %"$update_value_2651" = bitcast [20 x i8]* %"$update_value_2650" to i8*
  call void @_update_field(i8* %"$execptr_load_2647", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_2648", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i32 0, i8* null, i8* %"$update_value_2651"), !dbg !273
  %"$approvals_274" = alloca %Map_ByStr32_ByStr20*, align 8
  %"$gasrem_2652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2653" = icmp ugt i64 1, %"$gasrem_2652"
  br i1 %"$gascmp_2653", label %"$out_of_gas_2654", label %"$have_gas_2655"

"$out_of_gas_2654":                               ; preds = %"$have_gas_2644"
  call void @_out_of_gas()
  br label %"$have_gas_2655"

"$have_gas_2655":                                 ; preds = %"$out_of_gas_2654", %"$have_gas_2644"
  %"$consume_2656" = sub i64 %"$gasrem_2652", 1
  store i64 %"$consume_2656", i64* @_gasrem, align 8
  %"$execptr_load_2657" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2658" = call i8* @_new_empty_map(i8* %"$execptr_load_2657")
  %"$_new_empty_map_2659" = bitcast i8* %"$_new_empty_map_call_2658" to %Map_ByStr32_ByStr20*
  store %Map_ByStr32_ByStr20* %"$_new_empty_map_2659", %Map_ByStr32_ByStr20** %"$approvals_274", align 8, !dbg !274
  %"$execptr_load_2660" = load i8*, i8** @_execptr, align 8
  %"$$approvals_274_2662" = load %Map_ByStr32_ByStr20*, %Map_ByStr32_ByStr20** %"$approvals_274", align 8
  %"$update_value_2663" = bitcast %Map_ByStr32_ByStr20* %"$$approvals_274_2662" to i8*
  call void @_update_field(i8* %"$execptr_load_2660", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_2661", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 0, i8* null, i8* %"$update_value_2663"), !dbg !274
  %"$operators_275" = alloca %"Map_ByStr20_List_(ByStr20)"*, align 8
  %"$gasrem_2664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2665" = icmp ugt i64 1, %"$gasrem_2664"
  br i1 %"$gascmp_2665", label %"$out_of_gas_2666", label %"$have_gas_2667"

"$out_of_gas_2666":                               ; preds = %"$have_gas_2655"
  call void @_out_of_gas()
  br label %"$have_gas_2667"

"$have_gas_2667":                                 ; preds = %"$out_of_gas_2666", %"$have_gas_2655"
  %"$consume_2668" = sub i64 %"$gasrem_2664", 1
  store i64 %"$consume_2668", i64* @_gasrem, align 8
  %"$execptr_load_2669" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2670" = call i8* @_new_empty_map(i8* %"$execptr_load_2669")
  %"$_new_empty_map_2671" = bitcast i8* %"$_new_empty_map_call_2670" to %"Map_ByStr20_List_(ByStr20)"*
  store %"Map_ByStr20_List_(ByStr20)"* %"$_new_empty_map_2671", %"Map_ByStr20_List_(ByStr20)"** %"$operators_275", align 8, !dbg !275
  %"$execptr_load_2672" = load i8*, i8** @_execptr, align 8
  %"$$operators_275_2674" = load %"Map_ByStr20_List_(ByStr20)"*, %"Map_ByStr20_List_(ByStr20)"** %"$operators_275", align 8
  %"$update_value_2675" = bitcast %"Map_ByStr20_List_(ByStr20)"* %"$$operators_275_2674" to i8*
  call void @_update_field(i8* %"$execptr_load_2672", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_2673", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 0, i8* null, i8* %"$update_value_2675"), !dbg !275
  %"$admins_276" = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_2676" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2677" = icmp ugt i64 1, %"$gasrem_2676"
  br i1 %"$gascmp_2677", label %"$out_of_gas_2678", label %"$have_gas_2679"

"$out_of_gas_2678":                               ; preds = %"$have_gas_2667"
  call void @_out_of_gas()
  br label %"$have_gas_2679"

"$have_gas_2679":                                 ; preds = %"$out_of_gas_2678", %"$have_gas_2667"
  %"$consume_2680" = sub i64 %"$gasrem_2676", 1
  store i64 %"$consume_2680", i64* @_gasrem, align 8
  %"$initialOwner_2681" = load [20 x i8], [20 x i8]* @_cparam_initialOwner, align 1
  %"$ud-registry.nilByStr20_2682" = load %TName_List_ByStr20*, %TName_List_ByStr20** @ud-registry.nilByStr20, align 8
  %"$adtval_2683_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2683_salloc" = call i8* @_salloc(i8* %"$adtval_2683_load", i64 29)
  %"$adtval_2683" = bitcast i8* %"$adtval_2683_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_2684" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2683", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2684", align 1
  %"$adtgep_2685" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2683", i32 0, i32 1
  store [20 x i8] %"$initialOwner_2681", [20 x i8]* %"$adtgep_2685", align 1
  %"$adtgep_2686" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2683", i32 0, i32 2
  store %TName_List_ByStr20* %"$ud-registry.nilByStr20_2682", %TName_List_ByStr20** %"$adtgep_2686", align 8
  %"$adtptr_2687" = bitcast %CName_Cons_ByStr20* %"$adtval_2683" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2687", %TName_List_ByStr20** %"$admins_276", align 8, !dbg !276
  %"$execptr_load_2688" = load i8*, i8** @_execptr, align 8
  %"$$admins_276_2690" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$admins_276", align 8
  %"$update_value_2691" = bitcast %TName_List_ByStr20* %"$$admins_276_2690" to i8*
  call void @_update_field(i8* %"$execptr_load_2688", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2689", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i32 0, i8* null, i8* %"$update_value_2691"), !dbg !276
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setAdmin_2692"(%Uint128 %_amount, [20 x i8]* %"$_origin_2693", [20 x i8]* %"$_sender_2694", [20 x i8]* %"$address_2695", %TName_Bool* %isApproved) !dbg !277 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2693", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2694", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_2695", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_2697" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_2698" = call i8* @_fetch_field(i8* %"$execptr_load_2697", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2696", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i32 0, i8* null, i32 1), !dbg !278
  %"$currentAdmins_2699" = bitcast i8* %"$currentAdmins_call_2698" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_2699", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_2700" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_2700_2701" = bitcast %TName_List_ByStr20* %"$currentAdmins_2700" to i8*
  %"$_literal_cost_call_2702" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i8* %"$$currentAdmins_2700_2701")
  %"$gasadd_2703" = add i64 %"$_literal_cost_call_2702", 0
  %"$gasrem_2704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2705" = icmp ugt i64 %"$gasadd_2703", %"$gasrem_2704"
  br i1 %"$gascmp_2705", label %"$out_of_gas_2706", label %"$have_gas_2707"

"$out_of_gas_2706":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2707"

"$have_gas_2707":                                 ; preds = %"$out_of_gas_2706", %entry
  %"$consume_2708" = sub i64 %"$gasrem_2704", %"$gasadd_2703"
  store i64 %"$consume_2708", i64* @_gasrem, align 8
  %"$gasrem_2709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2710" = icmp ugt i64 1, %"$gasrem_2709"
  br i1 %"$gascmp_2710", label %"$out_of_gas_2711", label %"$have_gas_2712"

"$out_of_gas_2711":                               ; preds = %"$have_gas_2707"
  call void @_out_of_gas()
  br label %"$have_gas_2712"

"$have_gas_2712":                                 ; preds = %"$out_of_gas_2711", %"$have_gas_2707"
  %"$consume_2713" = sub i64 %"$gasrem_2709", 1
  store i64 %"$consume_2713", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_2714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2715" = icmp ugt i64 1, %"$gasrem_2714"
  br i1 %"$gascmp_2715", label %"$out_of_gas_2716", label %"$have_gas_2717"

"$out_of_gas_2716":                               ; preds = %"$have_gas_2712"
  call void @_out_of_gas()
  br label %"$have_gas_2717"

"$have_gas_2717":                                 ; preds = %"$out_of_gas_2716", %"$have_gas_2712"
  %"$consume_2718" = sub i64 %"$gasrem_2714", 1
  store i64 %"$consume_2718", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_54" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_2719" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_2720" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2719", 0
  %"$ud-registry.listByStr20Contains_envptr_2721" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2719", 1
  %"$currentAdmins_2722" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_2723" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_2720"(i8* %"$ud-registry.listByStr20Contains_envptr_2721", %TName_List_ByStr20* %"$currentAdmins_2722"), !dbg !279
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_2723", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_54", align 8, !dbg !279
  %"$ud-registry.listByStr20Contains_55" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_54_2724" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_54", align 8
  %"$$ud-registry.listByStr20Contains_54_fptr_2725" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_54_2724", 0
  %"$$ud-registry.listByStr20Contains_54_envptr_2726" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_54_2724", 1
  %"$$ud-registry.listByStr20Contains_54__sender_2727" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_54__sender_2727", align 1
  %"$$ud-registry.listByStr20Contains_54_call_2728" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_54_fptr_2725"(i8* %"$$ud-registry.listByStr20Contains_54_envptr_2726", [20 x i8]* %"$$ud-registry.listByStr20Contains_54__sender_2727"), !dbg !279
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_54_call_2728", %TName_Bool** %"$ud-registry.listByStr20Contains_55", align 8, !dbg !279
  %"$$ud-registry.listByStr20Contains_55_2729" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_55", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_55_2729", %TName_Bool** %isSenderAdmin, align 8, !dbg !279
  %"$gasrem_2730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2731" = icmp ugt i64 2, %"$gasrem_2730"
  br i1 %"$gascmp_2731", label %"$out_of_gas_2732", label %"$have_gas_2733"

"$out_of_gas_2732":                               ; preds = %"$have_gas_2717"
  call void @_out_of_gas()
  br label %"$have_gas_2733"

"$have_gas_2733":                                 ; preds = %"$out_of_gas_2732", %"$have_gas_2717"
  %"$consume_2734" = sub i64 %"$gasrem_2730", 2
  store i64 %"$consume_2734", i64* @_gasrem, align 8
  %"$isSenderAdmin_2736" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_2737" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_2736", i32 0, i32 0
  %"$isSenderAdmin_tag_2738" = load i8, i8* %"$isSenderAdmin_tag_2737", align 1
  switch i8 %"$isSenderAdmin_tag_2738", label %"$empty_default_2739" [
    i8 0, label %"$True_2740"
    i8 1, label %"$False_2882"
  ], !dbg !280

"$True_2740":                                     ; preds = %"$have_gas_2733"
  %"$isSenderAdmin_2741" = bitcast %TName_Bool* %"$isSenderAdmin_2736" to %CName_True*
  %"$gasrem_2742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2743" = icmp ugt i64 1, %"$gasrem_2742"
  br i1 %"$gascmp_2743", label %"$out_of_gas_2744", label %"$have_gas_2745"

"$out_of_gas_2744":                               ; preds = %"$True_2740"
  call void @_out_of_gas()
  br label %"$have_gas_2745"

"$have_gas_2745":                                 ; preds = %"$out_of_gas_2744", %"$True_2740"
  %"$consume_2746" = sub i64 %"$gasrem_2742", 1
  store i64 %"$consume_2746", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_2747" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2748" = icmp ugt i64 1, %"$gasrem_2747"
  br i1 %"$gascmp_2748", label %"$out_of_gas_2749", label %"$have_gas_2750"

"$out_of_gas_2749":                               ; preds = %"$have_gas_2745"
  call void @_out_of_gas()
  br label %"$have_gas_2750"

"$have_gas_2750":                                 ; preds = %"$out_of_gas_2749", %"$have_gas_2745"
  %"$consume_2751" = sub i64 %"$gasrem_2747", 1
  store i64 %"$consume_2751", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_2752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2753" = icmp ugt i64 1, %"$gasrem_2752"
  br i1 %"$gascmp_2753", label %"$out_of_gas_2754", label %"$have_gas_2755"

"$out_of_gas_2754":                               ; preds = %"$have_gas_2750"
  call void @_out_of_gas()
  br label %"$have_gas_2755"

"$have_gas_2755":                                 ; preds = %"$out_of_gas_2754", %"$have_gas_2750"
  %"$consume_2756" = sub i64 %"$gasrem_2752", 1
  store i64 %"$consume_2756", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Excludes_49" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Excludes_2757" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes, align 8
  %"$ud-registry.listByStr20Excludes_fptr_2758" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_2757", 0
  %"$ud-registry.listByStr20Excludes_envptr_2759" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_2757", 1
  %"$currentAdmins_2760" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Excludes_call_2761" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_fptr_2758"(i8* %"$ud-registry.listByStr20Excludes_envptr_2759", %TName_List_ByStr20* %"$currentAdmins_2760"), !dbg !281
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_call_2761", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_49", align 8, !dbg !281
  %"$ud-registry.listByStr20Excludes_50" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Excludes_49_2762" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_49", align 8
  %"$$ud-registry.listByStr20Excludes_49_fptr_2763" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_49_2762", 0
  %"$$ud-registry.listByStr20Excludes_49_envptr_2764" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_49_2762", 1
  %"$$ud-registry.listByStr20Excludes_49_address_2765" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20Excludes_49_address_2765", align 1
  %"$$ud-registry.listByStr20Excludes_49_call_2766" = call %TName_Bool* %"$$ud-registry.listByStr20Excludes_49_fptr_2763"(i8* %"$$ud-registry.listByStr20Excludes_49_envptr_2764", [20 x i8]* %"$$ud-registry.listByStr20Excludes_49_address_2765"), !dbg !281
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_49_call_2766", %TName_Bool** %"$ud-registry.listByStr20Excludes_50", align 8, !dbg !281
  %"$$ud-registry.listByStr20Excludes_50_2767" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Excludes_50", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_50_2767", %TName_Bool** %b, align 8, !dbg !281
  %"$gasrem_2768" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2769" = icmp ugt i64 1, %"$gasrem_2768"
  br i1 %"$gascmp_2769", label %"$out_of_gas_2770", label %"$have_gas_2771"

"$out_of_gas_2770":                               ; preds = %"$have_gas_2755"
  call void @_out_of_gas()
  br label %"$have_gas_2771"

"$have_gas_2771":                                 ; preds = %"$out_of_gas_2770", %"$have_gas_2755"
  %"$consume_2772" = sub i64 %"$gasrem_2768", 1
  store i64 %"$consume_2772", i64* @_gasrem, align 8
  %"$ud-registry.xandb_51" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.xandb_2773" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8
  %"$ud-registry.xandb_fptr_2774" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2773", 0
  %"$ud-registry.xandb_envptr_2775" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2773", 1
  %"$b_2776" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$ud-registry.xandb_call_2777" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_fptr_2774"(i8* %"$ud-registry.xandb_envptr_2775", %TName_Bool* %"$b_2776"), !dbg !284
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_call_2777", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_51", align 8, !dbg !284
  %"$ud-registry.xandb_52" = alloca %TName_Bool*, align 8
  %"$$ud-registry.xandb_51_2778" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_51", align 8
  %"$$ud-registry.xandb_51_fptr_2779" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_51_2778", 0
  %"$$ud-registry.xandb_51_envptr_2780" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_51_2778", 1
  %"$$ud-registry.xandb_51_call_2781" = call %TName_Bool* %"$$ud-registry.xandb_51_fptr_2779"(i8* %"$$ud-registry.xandb_51_envptr_2780", %TName_Bool* %isApproved), !dbg !284
  store %TName_Bool* %"$$ud-registry.xandb_51_call_2781", %TName_Bool** %"$ud-registry.xandb_52", align 8, !dbg !284
  %"$$ud-registry.xandb_52_2782" = load %TName_Bool*, %TName_Bool** %"$ud-registry.xandb_52", align 8
  store %TName_Bool* %"$$ud-registry.xandb_52_2782", %TName_Bool** %needsToChange, align 8, !dbg !284
  %"$gasrem_2783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2784" = icmp ugt i64 2, %"$gasrem_2783"
  br i1 %"$gascmp_2784", label %"$out_of_gas_2785", label %"$have_gas_2786"

"$out_of_gas_2785":                               ; preds = %"$have_gas_2771"
  call void @_out_of_gas()
  br label %"$have_gas_2786"

"$have_gas_2786":                                 ; preds = %"$out_of_gas_2785", %"$have_gas_2771"
  %"$consume_2787" = sub i64 %"$gasrem_2783", 2
  store i64 %"$consume_2787", i64* @_gasrem, align 8
  %"$needsToChange_2789" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_2790" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_2789", i32 0, i32 0
  %"$needsToChange_tag_2791" = load i8, i8* %"$needsToChange_tag_2790", align 1
  switch i8 %"$needsToChange_tag_2791", label %"$default_2792" [
    i8 0, label %"$True_2793"
  ], !dbg !285

"$True_2793":                                     ; preds = %"$have_gas_2786"
  %"$needsToChange_2794" = bitcast %TName_Bool* %"$needsToChange_2789" to %CName_True*
  %"$gasrem_2795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2796" = icmp ugt i64 1, %"$gasrem_2795"
  br i1 %"$gascmp_2796", label %"$out_of_gas_2797", label %"$have_gas_2798"

"$out_of_gas_2797":                               ; preds = %"$True_2793"
  call void @_out_of_gas()
  br label %"$have_gas_2798"

"$have_gas_2798":                                 ; preds = %"$out_of_gas_2797", %"$True_2793"
  %"$consume_2799" = sub i64 %"$gasrem_2795", 1
  store i64 %"$consume_2799", i64* @_gasrem, align 8
  %newAdmins = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_2800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2801" = icmp ugt i64 2, %"$gasrem_2800"
  br i1 %"$gascmp_2801", label %"$out_of_gas_2802", label %"$have_gas_2803"

"$out_of_gas_2802":                               ; preds = %"$have_gas_2798"
  call void @_out_of_gas()
  br label %"$have_gas_2803"

"$have_gas_2803":                                 ; preds = %"$out_of_gas_2802", %"$have_gas_2798"
  %"$consume_2804" = sub i64 %"$gasrem_2800", 2
  store i64 %"$consume_2804", i64* @_gasrem, align 8
  %"$isApproved_tag_2806" = getelementptr inbounds %TName_Bool, %TName_Bool* %isApproved, i32 0, i32 0
  %"$isApproved_tag_2807" = load i8, i8* %"$isApproved_tag_2806", align 1
  switch i8 %"$isApproved_tag_2807", label %"$empty_default_2808" [
    i8 0, label %"$True_2809"
    i8 1, label %"$False_2822"
  ], !dbg !286

"$True_2809":                                     ; preds = %"$have_gas_2803"
  %"$isApproved_2810" = bitcast %TName_Bool* %isApproved to %CName_True*
  %"$gasrem_2811" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2812" = icmp ugt i64 1, %"$gasrem_2811"
  br i1 %"$gascmp_2812", label %"$out_of_gas_2813", label %"$have_gas_2814"

"$out_of_gas_2813":                               ; preds = %"$True_2809"
  call void @_out_of_gas()
  br label %"$have_gas_2814"

"$have_gas_2814":                                 ; preds = %"$out_of_gas_2813", %"$True_2809"
  %"$consume_2815" = sub i64 %"$gasrem_2811", 1
  store i64 %"$consume_2815", i64* @_gasrem, align 8
  %"$currentAdmins_2816" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$adtval_2817_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2817_salloc" = call i8* @_salloc(i8* %"$adtval_2817_load", i64 29)
  %"$adtval_2817" = bitcast i8* %"$adtval_2817_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_2818" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2817", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2818", align 1
  %"$adtgep_2819" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2817", i32 0, i32 1
  store [20 x i8] %address, [20 x i8]* %"$adtgep_2819", align 1
  %"$adtgep_2820" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2817", i32 0, i32 2
  store %TName_List_ByStr20* %"$currentAdmins_2816", %TName_List_ByStr20** %"$adtgep_2820", align 8
  %"$adtptr_2821" = bitcast %CName_Cons_ByStr20* %"$adtval_2817" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2821", %TName_List_ByStr20** %newAdmins, align 8, !dbg !289
  br label %"$matchsucc_2805"

"$False_2822":                                    ; preds = %"$have_gas_2803"
  %"$isApproved_2823" = bitcast %TName_Bool* %isApproved to %CName_False*
  %"$gasrem_2824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2825" = icmp ugt i64 1, %"$gasrem_2824"
  br i1 %"$gascmp_2825", label %"$out_of_gas_2826", label %"$have_gas_2827"

"$out_of_gas_2826":                               ; preds = %"$False_2822"
  call void @_out_of_gas()
  br label %"$have_gas_2827"

"$have_gas_2827":                                 ; preds = %"$out_of_gas_2826", %"$False_2822"
  %"$consume_2828" = sub i64 %"$gasrem_2824", 1
  store i64 %"$consume_2828", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20FilterOut_47" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20FilterOut_2829" = load { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8
  %"$ud-registry.listByStr20FilterOut_fptr_2830" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_2829", 0
  %"$ud-registry.listByStr20FilterOut_envptr_2831" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_2829", 1
  %"$currentAdmins_2832" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20FilterOut_call_2833" = call { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_fptr_2830"(i8* %"$ud-registry.listByStr20FilterOut_envptr_2831", %TName_List_ByStr20* %"$currentAdmins_2832"), !dbg !292
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_call_2833", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_47", align 8, !dbg !292
  %"$ud-registry.listByStr20FilterOut_48" = alloca %TName_List_ByStr20*, align 8
  %"$$ud-registry.listByStr20FilterOut_47_2834" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_47", align 8
  %"$$ud-registry.listByStr20FilterOut_47_fptr_2835" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_47_2834", 0
  %"$$ud-registry.listByStr20FilterOut_47_envptr_2836" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_47_2834", 1
  %"$$ud-registry.listByStr20FilterOut_47_address_2837" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20FilterOut_47_address_2837", align 1
  %"$$ud-registry.listByStr20FilterOut_47_call_2838" = call %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_47_fptr_2835"(i8* %"$$ud-registry.listByStr20FilterOut_47_envptr_2836", [20 x i8]* %"$$ud-registry.listByStr20FilterOut_47_address_2837"), !dbg !292
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_47_call_2838", %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_48", align 8, !dbg !292
  %"$$ud-registry.listByStr20FilterOut_48_2839" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_48", align 8
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_48_2839", %TName_List_ByStr20** %newAdmins, align 8, !dbg !292
  br label %"$matchsucc_2805"

"$empty_default_2808":                            ; preds = %"$have_gas_2803"
  br label %"$matchsucc_2805"

"$matchsucc_2805":                                ; preds = %"$have_gas_2827", %"$have_gas_2814", %"$empty_default_2808"
  %"$newAdmins_2840" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newAdmins, align 8
  %"$$newAdmins_2840_2841" = bitcast %TName_List_ByStr20* %"$newAdmins_2840" to i8*
  %"$_literal_cost_call_2842" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i8* %"$$newAdmins_2840_2841")
  %"$gasrem_2843" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2844" = icmp ugt i64 %"$_literal_cost_call_2842", %"$gasrem_2843"
  br i1 %"$gascmp_2844", label %"$out_of_gas_2845", label %"$have_gas_2846"

"$out_of_gas_2845":                               ; preds = %"$matchsucc_2805"
  call void @_out_of_gas()
  br label %"$have_gas_2846"

"$have_gas_2846":                                 ; preds = %"$out_of_gas_2845", %"$matchsucc_2805"
  %"$consume_2847" = sub i64 %"$gasrem_2843", %"$_literal_cost_call_2842"
  store i64 %"$consume_2847", i64* @_gasrem, align 8
  %"$execptr_load_2848" = load i8*, i8** @_execptr, align 8
  %"$newAdmins_2850" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newAdmins, align 8
  %"$update_value_2851" = bitcast %TName_List_ByStr20* %"$newAdmins_2850" to i8*
  call void @_update_field(i8* %"$execptr_load_2848", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2849", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i32 0, i8* null, i8* %"$update_value_2851"), !dbg !294
  %"$gasrem_2852" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2853" = icmp ugt i64 1, %"$gasrem_2852"
  br i1 %"$gascmp_2853", label %"$out_of_gas_2854", label %"$have_gas_2855"

"$out_of_gas_2854":                               ; preds = %"$have_gas_2846"
  call void @_out_of_gas()
  br label %"$have_gas_2855"

"$have_gas_2855":                                 ; preds = %"$out_of_gas_2854", %"$have_gas_2846"
  %"$consume_2856" = sub i64 %"$gasrem_2852", 1
  store i64 %"$consume_2856", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_2857" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2858" = icmp ugt i64 1, %"$gasrem_2857"
  br i1 %"$gascmp_2858", label %"$out_of_gas_2859", label %"$have_gas_2860"

"$out_of_gas_2859":                               ; preds = %"$have_gas_2855"
  call void @_out_of_gas()
  br label %"$have_gas_2860"

"$have_gas_2860":                                 ; preds = %"$out_of_gas_2859", %"$have_gas_2855"
  %"$consume_2861" = sub i64 %"$gasrem_2857", 1
  store i64 %"$consume_2861", i64* @_gasrem, align 8
  %"$ud-registry.eAdminSet_45" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.eAdminSet_2862" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eAdminSet, align 8
  %"$ud-registry.eAdminSet_fptr_2863" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eAdminSet_2862", 0
  %"$ud-registry.eAdminSet_envptr_2864" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eAdminSet_2862", 1
  %"$ud-registry.eAdminSet_address_2865" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eAdminSet_address_2865", align 1
  %"$ud-registry.eAdminSet_call_2866" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.eAdminSet_fptr_2863"(i8* %"$ud-registry.eAdminSet_envptr_2864", [20 x i8]* %"$ud-registry.eAdminSet_address_2865"), !dbg !295
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.eAdminSet_call_2866", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eAdminSet_45", align 8, !dbg !295
  %"$ud-registry.eAdminSet_46" = alloca i8*, align 8
  %"$$ud-registry.eAdminSet_45_2867" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eAdminSet_45", align 8
  %"$$ud-registry.eAdminSet_45_fptr_2868" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eAdminSet_45_2867", 0
  %"$$ud-registry.eAdminSet_45_envptr_2869" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eAdminSet_45_2867", 1
  %"$$ud-registry.eAdminSet_45_call_2870" = call i8* %"$$ud-registry.eAdminSet_45_fptr_2868"(i8* %"$$ud-registry.eAdminSet_45_envptr_2869", %TName_Bool* %isApproved), !dbg !295
  store i8* %"$$ud-registry.eAdminSet_45_call_2870", i8** %"$ud-registry.eAdminSet_46", align 8, !dbg !295
  %"$$ud-registry.eAdminSet_46_2871" = load i8*, i8** %"$ud-registry.eAdminSet_46", align 8
  store i8* %"$$ud-registry.eAdminSet_46_2871", i8** %e, align 8, !dbg !295
  %"$e_2872" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_2874" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_2872")
  %"$gasrem_2875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2876" = icmp ugt i64 %"$_literal_cost_call_2874", %"$gasrem_2875"
  br i1 %"$gascmp_2876", label %"$out_of_gas_2877", label %"$have_gas_2878"

"$out_of_gas_2877":                               ; preds = %"$have_gas_2860"
  call void @_out_of_gas()
  br label %"$have_gas_2878"

"$have_gas_2878":                                 ; preds = %"$out_of_gas_2877", %"$have_gas_2860"
  %"$consume_2879" = sub i64 %"$gasrem_2875", %"$_literal_cost_call_2874"
  store i64 %"$consume_2879", i64* @_gasrem, align 8
  %"$execptr_load_2880" = load i8*, i8** @_execptr, align 8
  %"$e_2881" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_2880", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_2881"), !dbg !296
  br label %"$matchsucc_2788"

"$default_2792":                                  ; preds = %"$have_gas_2786"
  br label %"$joinp_4"

"$joinp_4":                                       ; preds = %"$default_2792"
  br label %"$matchsucc_2788"

"$matchsucc_2788":                                ; preds = %"$have_gas_2878", %"$joinp_4"
  br label %"$matchsucc_2735"

"$False_2882":                                    ; preds = %"$have_gas_2733"
  %"$isSenderAdmin_2883" = bitcast %TName_Bool* %"$isSenderAdmin_2736" to %CName_False*
  %"$gasrem_2884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2885" = icmp ugt i64 1, %"$gasrem_2884"
  br i1 %"$gascmp_2885", label %"$out_of_gas_2886", label %"$have_gas_2887"

"$out_of_gas_2886":                               ; preds = %"$False_2882"
  call void @_out_of_gas()
  br label %"$have_gas_2887"

"$have_gas_2887":                                 ; preds = %"$out_of_gas_2886", %"$False_2882"
  %"$consume_2888" = sub i64 %"$gasrem_2884", 1
  store i64 %"$consume_2888", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_2889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2890" = icmp ugt i64 1, %"$gasrem_2889"
  br i1 %"$gascmp_2890", label %"$out_of_gas_2891", label %"$have_gas_2892"

"$out_of_gas_2891":                               ; preds = %"$have_gas_2887"
  call void @_out_of_gas()
  br label %"$have_gas_2892"

"$have_gas_2892":                                 ; preds = %"$out_of_gas_2891", %"$have_gas_2887"
  %"$consume_2893" = sub i64 %"$gasrem_2889", 1
  store i64 %"$consume_2893", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_2894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2895" = icmp ugt i64 1, %"$gasrem_2894"
  br i1 %"$gascmp_2895", label %"$out_of_gas_2896", label %"$have_gas_2897"

"$out_of_gas_2896":                               ; preds = %"$have_gas_2892"
  call void @_out_of_gas()
  br label %"$have_gas_2897"

"$have_gas_2897":                                 ; preds = %"$out_of_gas_2896", %"$have_gas_2892"
  %"$consume_2898" = sub i64 %"$gasrem_2894", 1
  store i64 %"$consume_2898", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$stringlit_2899", i32 0, i32 0), i32 26 }, %String* %m, align 8, !dbg !297
  %"$gasrem_2900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2901" = icmp ugt i64 1, %"$gasrem_2900"
  br i1 %"$gascmp_2901", label %"$out_of_gas_2902", label %"$have_gas_2903"

"$out_of_gas_2902":                               ; preds = %"$have_gas_2897"
  call void @_out_of_gas()
  br label %"$have_gas_2903"

"$have_gas_2903":                                 ; preds = %"$out_of_gas_2902", %"$have_gas_2897"
  %"$consume_2904" = sub i64 %"$gasrem_2900", 1
  store i64 %"$consume_2904", i64* @_gasrem, align 8
  %"$ud-registry.eError_53" = alloca i8*, align 8
  %"$ud-registry.eError_2905" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_2906" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2905", 0
  %"$ud-registry.eError_envptr_2907" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2905", 1
  %"$m_2908" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_2909" = call i8* %"$ud-registry.eError_fptr_2906"(i8* %"$ud-registry.eError_envptr_2907", %String %"$m_2908"), !dbg !299
  store i8* %"$ud-registry.eError_call_2909", i8** %"$ud-registry.eError_53", align 8, !dbg !299
  %"$$ud-registry.eError_53_2910" = load i8*, i8** %"$ud-registry.eError_53", align 8
  store i8* %"$$ud-registry.eError_53_2910", i8** %e1, align 8, !dbg !299
  %"$e_2911" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_2913" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_2911")
  %"$gasrem_2914" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2915" = icmp ugt i64 %"$_literal_cost_call_2913", %"$gasrem_2914"
  br i1 %"$gascmp_2915", label %"$out_of_gas_2916", label %"$have_gas_2917"

"$out_of_gas_2916":                               ; preds = %"$have_gas_2903"
  call void @_out_of_gas()
  br label %"$have_gas_2917"

"$have_gas_2917":                                 ; preds = %"$out_of_gas_2916", %"$have_gas_2903"
  %"$consume_2918" = sub i64 %"$gasrem_2914", %"$_literal_cost_call_2913"
  store i64 %"$consume_2918", i64* @_gasrem, align 8
  %"$execptr_load_2919" = load i8*, i8** @_execptr, align 8
  %"$e_2920" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_2919", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_2920"), !dbg !300
  br label %"$matchsucc_2735"

"$empty_default_2739":                            ; preds = %"$have_gas_2733"
  br label %"$matchsucc_2735"

"$matchsucc_2735":                                ; preds = %"$have_gas_2917", %"$matchsucc_2788", %"$empty_default_2739"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) !dbg !301 {
entry:
  %"$_amount_2922" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2923" = bitcast i8* %"$_amount_2922" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2923", align 8
  %"$_origin_2924" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2925" = bitcast i8* %"$_origin_2924" to [20 x i8]*
  %"$_sender_2926" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2927" = bitcast i8* %"$_sender_2926" to [20 x i8]*
  %"$address_2928" = getelementptr i8, i8* %0, i32 56
  %"$address_2929" = bitcast i8* %"$address_2928" to [20 x i8]*
  %"$isApproved_2930" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_2931" = bitcast i8* %"$isApproved_2930" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_2931", align 8
  call void @"$setAdmin_2692"(%Uint128 %_amount, [20 x i8]* %"$_origin_2925", [20 x i8]* %"$_sender_2927", [20 x i8]* %"$address_2929", %TName_Bool* %isApproved), !dbg !302
  ret void
}

define internal void @"$approve_2932"(%Uint128 %_amount, [20 x i8]* %"$_origin_2933", [20 x i8]* %"$_sender_2934", [32 x i8]* %"$node_2935", [20 x i8]* %"$address_2936") !dbg !303 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2933", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2934", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_2935", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_2936", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_2937_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2937_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2937_salloc_load", i64 32)
  %"$indices_buf_2937_salloc" = bitcast i8* %"$indices_buf_2937_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2937" = bitcast [32 x i8]* %"$indices_buf_2937_salloc" to i8*
  %"$indices_gep_2938" = getelementptr i8, i8* %"$indices_buf_2937", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2938" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_2940" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_2941" = call i8* @_fetch_field(i8* %"$execptr_load_2940", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_2939", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_2937", i32 1), !dbg !304
  %"$maybeRecord_2942" = bitcast i8* %"$maybeRecord_call_2941" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_2942", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_2943" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_2943_2944" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_2943" to i8*
  %"$_literal_cost_call_2945" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_2943_2944")
  %"$gasadd_2946" = add i64 %"$_literal_cost_call_2945", 0
  %"$gasadd_2947" = add i64 %"$gasadd_2946", 1
  %"$gasrem_2948" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2949" = icmp ugt i64 %"$gasadd_2947", %"$gasrem_2948"
  br i1 %"$gascmp_2949", label %"$out_of_gas_2950", label %"$have_gas_2951"

"$out_of_gas_2950":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2951"

"$have_gas_2951":                                 ; preds = %"$out_of_gas_2950", %entry
  %"$consume_2952" = sub i64 %"$gasrem_2948", %"$gasadd_2947"
  store i64 %"$consume_2952", i64* @_gasrem, align 8
  %"$gasrem_2953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2954" = icmp ugt i64 1, %"$gasrem_2953"
  br i1 %"$gascmp_2954", label %"$out_of_gas_2955", label %"$have_gas_2956"

"$out_of_gas_2955":                               ; preds = %"$have_gas_2951"
  call void @_out_of_gas()
  br label %"$have_gas_2956"

"$have_gas_2956":                                 ; preds = %"$out_of_gas_2955", %"$have_gas_2951"
  %"$consume_2957" = sub i64 %"$gasrem_2953", 1
  store i64 %"$consume_2957", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_2958" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2959" = icmp ugt i64 1, %"$gasrem_2958"
  br i1 %"$gascmp_2959", label %"$out_of_gas_2960", label %"$have_gas_2961"

"$out_of_gas_2960":                               ; preds = %"$have_gas_2956"
  call void @_out_of_gas()
  br label %"$have_gas_2961"

"$have_gas_2961":                                 ; preds = %"$out_of_gas_2960", %"$have_gas_2956"
  %"$consume_2962" = sub i64 %"$gasrem_2958", 1
  store i64 %"$consume_2962", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_59" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_2963" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_2964" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_2963", 0
  %"$ud-registry.recordMemberOwner_envptr_2965" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_2963", 1
  %"$maybeRecord_2966" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_2967" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_2964"(i8* %"$ud-registry.recordMemberOwner_envptr_2965", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_2967", %TName_Option_ud-registry.Record* %"$maybeRecord_2966"), !dbg !305
  %"$ud-registry.recordMemberOwner_ret_2968" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_2967", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_2968", [20 x i8]* %"$ud-registry.recordMemberOwner_59", align 1, !dbg !305
  %"$$ud-registry.recordMemberOwner_59_2969" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_59", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_59_2969", [20 x i8]* %recordOwner, align 1, !dbg !305
  %"$gasrem_2970" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2971" = icmp ugt i64 1, %"$gasrem_2970"
  br i1 %"$gascmp_2971", label %"$out_of_gas_2972", label %"$have_gas_2973"

"$out_of_gas_2972":                               ; preds = %"$have_gas_2961"
  call void @_out_of_gas()
  br label %"$have_gas_2973"

"$have_gas_2973":                                 ; preds = %"$out_of_gas_2972", %"$have_gas_2961"
  %"$consume_2974" = sub i64 %"$gasrem_2970", 1
  store i64 %"$consume_2974", i64* @_gasrem, align 8
  %isSenderNodeOwner = alloca %TName_Bool*, align 8
  %"$execptr_load_2975" = load i8*, i8** @_execptr, align 8
  %"$eq__sender_2976" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_2976", align 1
  %"$$eq__sender_2976_2977" = bitcast [20 x i8]* %"$eq__sender_2976" to i8*
  %"$eq_recordOwner_2978" = alloca [20 x i8], align 1
  %"$recordOwner_2979" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_2979", [20 x i8]* %"$eq_recordOwner_2978", align 1
  %"$$eq_recordOwner_2978_2980" = bitcast [20 x i8]* %"$eq_recordOwner_2978" to i8*
  %"$eq_call_2981" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2975", i32 20, i8* %"$$eq__sender_2976_2977", i8* %"$$eq_recordOwner_2978_2980"), !dbg !306
  store %TName_Bool* %"$eq_call_2981", %TName_Bool** %isSenderNodeOwner, align 8, !dbg !306
  %"$gasrem_2983" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2984" = icmp ugt i64 2, %"$gasrem_2983"
  br i1 %"$gascmp_2984", label %"$out_of_gas_2985", label %"$have_gas_2986"

"$out_of_gas_2985":                               ; preds = %"$have_gas_2973"
  call void @_out_of_gas()
  br label %"$have_gas_2986"

"$have_gas_2986":                                 ; preds = %"$out_of_gas_2985", %"$have_gas_2973"
  %"$consume_2987" = sub i64 %"$gasrem_2983", 2
  store i64 %"$consume_2987", i64* @_gasrem, align 8
  %"$isSenderNodeOwner_2989" = load %TName_Bool*, %TName_Bool** %isSenderNodeOwner, align 8
  %"$isSenderNodeOwner_tag_2990" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderNodeOwner_2989", i32 0, i32 0
  %"$isSenderNodeOwner_tag_2991" = load i8, i8* %"$isSenderNodeOwner_tag_2990", align 1
  switch i8 %"$isSenderNodeOwner_tag_2991", label %"$empty_default_2992" [
    i8 0, label %"$True_2993"
    i8 1, label %"$False_3126"
  ], !dbg !307

"$True_2993":                                     ; preds = %"$have_gas_2986"
  %"$isSenderNodeOwner_2994" = bitcast %TName_Bool* %"$isSenderNodeOwner_2989" to %CName_True*
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_2995_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2995_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2995_salloc_load", i64 32)
  %"$indices_buf_2995_salloc" = bitcast i8* %"$indices_buf_2995_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2995" = bitcast [32 x i8]* %"$indices_buf_2995_salloc" to i8*
  %"$indices_gep_2996" = getelementptr i8, i8* %"$indices_buf_2995", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_2996" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_2998" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_2999" = call i8* @_fetch_field(i8* %"$execptr_load_2998", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_2997", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_2995", i32 1), !dbg !308
  %"$maybeApproved_3000" = bitcast i8* %"$maybeApproved_call_2999" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3000", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3001" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3001_3002" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3001" to i8*
  %"$_literal_cost_call_3003" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_3001_3002")
  %"$gasadd_3004" = add i64 %"$_literal_cost_call_3003", 0
  %"$gasadd_3005" = add i64 %"$gasadd_3004", 1
  %"$gasrem_3006" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3007" = icmp ugt i64 %"$gasadd_3005", %"$gasrem_3006"
  br i1 %"$gascmp_3007", label %"$out_of_gas_3008", label %"$have_gas_3009"

"$out_of_gas_3008":                               ; preds = %"$True_2993"
  call void @_out_of_gas()
  br label %"$have_gas_3009"

"$have_gas_3009":                                 ; preds = %"$out_of_gas_3008", %"$True_2993"
  %"$consume_3010" = sub i64 %"$gasrem_3006", %"$gasadd_3005"
  store i64 %"$consume_3010", i64* @_gasrem, align 8
  %"$gasrem_3011" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3012" = icmp ugt i64 1, %"$gasrem_3011"
  br i1 %"$gascmp_3012", label %"$out_of_gas_3013", label %"$have_gas_3014"

"$out_of_gas_3013":                               ; preds = %"$have_gas_3009"
  call void @_out_of_gas()
  br label %"$have_gas_3014"

"$have_gas_3014":                                 ; preds = %"$out_of_gas_3013", %"$have_gas_3009"
  %"$consume_3015" = sub i64 %"$gasrem_3011", 1
  store i64 %"$consume_3015", i64* @_gasrem, align 8
  %currentlyApproved = alloca [20 x i8], align 1
  %"$gasrem_3016" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3017" = icmp ugt i64 2, %"$gasrem_3016"
  br i1 %"$gascmp_3017", label %"$out_of_gas_3018", label %"$have_gas_3019"

"$out_of_gas_3018":                               ; preds = %"$have_gas_3014"
  call void @_out_of_gas()
  br label %"$have_gas_3019"

"$have_gas_3019":                                 ; preds = %"$out_of_gas_3018", %"$have_gas_3014"
  %"$consume_3020" = sub i64 %"$gasrem_3016", 2
  store i64 %"$consume_3020", i64* @_gasrem, align 8
  %"$maybeApproved_3022" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_3023" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_3022", i32 0, i32 0
  %"$maybeApproved_tag_3024" = load i8, i8* %"$maybeApproved_tag_3023", align 1
  switch i8 %"$maybeApproved_tag_3024", label %"$empty_default_3025" [
    i8 1, label %"$None_3026"
    i8 0, label %"$Some_3034"
  ], !dbg !311

"$None_3026":                                     ; preds = %"$have_gas_3019"
  %"$maybeApproved_3027" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3022" to %CName_None_ByStr20*
  %"$gasrem_3028" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3029" = icmp ugt i64 1, %"$gasrem_3028"
  br i1 %"$gascmp_3029", label %"$out_of_gas_3030", label %"$have_gas_3031"

"$out_of_gas_3030":                               ; preds = %"$None_3026"
  call void @_out_of_gas()
  br label %"$have_gas_3031"

"$have_gas_3031":                                 ; preds = %"$out_of_gas_3030", %"$None_3026"
  %"$consume_3032" = sub i64 %"$gasrem_3028", 1
  store i64 %"$consume_3032", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_3033" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_3033", [20 x i8]* %currentlyApproved, align 1, !dbg !312
  br label %"$matchsucc_3021"

"$Some_3034":                                     ; preds = %"$have_gas_3019"
  %"$maybeApproved_3035" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3022" to %CName_Some_ByStr20*
  %"$approved_gep_3036" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_3035", i32 0, i32 1
  %"$approved_load_3037" = load [20 x i8], [20 x i8]* %"$approved_gep_3036", align 1
  %approved = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_3037", [20 x i8]* %approved, align 1
  %"$gasrem_3038" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3039" = icmp ugt i64 1, %"$gasrem_3038"
  br i1 %"$gascmp_3039", label %"$out_of_gas_3040", label %"$have_gas_3041"

"$out_of_gas_3040":                               ; preds = %"$Some_3034"
  call void @_out_of_gas()
  br label %"$have_gas_3041"

"$have_gas_3041":                                 ; preds = %"$out_of_gas_3040", %"$Some_3034"
  %"$consume_3042" = sub i64 %"$gasrem_3038", 1
  store i64 %"$consume_3042", i64* @_gasrem, align 8
  %"$approved_3043" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_3043", [20 x i8]* %currentlyApproved, align 1, !dbg !315
  br label %"$matchsucc_3021"

"$empty_default_3025":                            ; preds = %"$have_gas_3019"
  br label %"$matchsucc_3021"

"$matchsucc_3021":                                ; preds = %"$have_gas_3041", %"$have_gas_3031", %"$empty_default_3025"
  %"$gasrem_3044" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3045" = icmp ugt i64 1, %"$gasrem_3044"
  br i1 %"$gascmp_3045", label %"$out_of_gas_3046", label %"$have_gas_3047"

"$out_of_gas_3046":                               ; preds = %"$matchsucc_3021"
  call void @_out_of_gas()
  br label %"$have_gas_3047"

"$have_gas_3047":                                 ; preds = %"$out_of_gas_3046", %"$matchsucc_3021"
  %"$consume_3048" = sub i64 %"$gasrem_3044", 1
  store i64 %"$consume_3048", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_3049" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3050" = icmp ugt i64 1, %"$gasrem_3049"
  br i1 %"$gascmp_3050", label %"$out_of_gas_3051", label %"$have_gas_3052"

"$out_of_gas_3051":                               ; preds = %"$have_gas_3047"
  call void @_out_of_gas()
  br label %"$have_gas_3052"

"$have_gas_3052":                                 ; preds = %"$out_of_gas_3051", %"$have_gas_3047"
  %"$consume_3053" = sub i64 %"$gasrem_3049", 1
  store i64 %"$consume_3053", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$execptr_load_3054" = load i8*, i8** @_execptr, align 8
  %"$eq_currentlyApproved_3055" = alloca [20 x i8], align 1
  %"$currentlyApproved_3056" = load [20 x i8], [20 x i8]* %currentlyApproved, align 1
  store [20 x i8] %"$currentlyApproved_3056", [20 x i8]* %"$eq_currentlyApproved_3055", align 1
  %"$$eq_currentlyApproved_3055_3057" = bitcast [20 x i8]* %"$eq_currentlyApproved_3055" to i8*
  %"$eq_address_3058" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$eq_address_3058", align 1
  %"$$eq_address_3058_3059" = bitcast [20 x i8]* %"$eq_address_3058" to i8*
  %"$eq_call_3060" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_3054", i32 20, i8* %"$$eq_currentlyApproved_3055_3057", i8* %"$$eq_address_3058_3059"), !dbg !317
  store %TName_Bool* %"$eq_call_3060", %TName_Bool** %b, align 8, !dbg !317
  %"$gasrem_3062" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3063" = icmp ugt i64 1, %"$gasrem_3062"
  br i1 %"$gascmp_3063", label %"$out_of_gas_3064", label %"$have_gas_3065"

"$out_of_gas_3064":                               ; preds = %"$have_gas_3052"
  call void @_out_of_gas()
  br label %"$have_gas_3065"

"$have_gas_3065":                                 ; preds = %"$out_of_gas_3064", %"$have_gas_3052"
  %"$consume_3066" = sub i64 %"$gasrem_3062", 1
  store i64 %"$consume_3066", i64* @_gasrem, align 8
  %"$BoolUtils.negb_57" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_3067" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_3068" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_3067", 0
  %"$BoolUtils.negb_envptr_3069" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_3067", 1
  %"$b_3070" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$BoolUtils.negb_call_3071" = call %TName_Bool* %"$BoolUtils.negb_fptr_3068"(i8* %"$BoolUtils.negb_envptr_3069", %TName_Bool* %"$b_3070"), !dbg !318
  store %TName_Bool* %"$BoolUtils.negb_call_3071", %TName_Bool** %"$BoolUtils.negb_57", align 8, !dbg !318
  %"$$BoolUtils.negb_57_3072" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_57", align 8
  store %TName_Bool* %"$$BoolUtils.negb_57_3072", %TName_Bool** %needsToChange, align 8, !dbg !318
  %"$gasrem_3073" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3074" = icmp ugt i64 2, %"$gasrem_3073"
  br i1 %"$gascmp_3074", label %"$out_of_gas_3075", label %"$have_gas_3076"

"$out_of_gas_3075":                               ; preds = %"$have_gas_3065"
  call void @_out_of_gas()
  br label %"$have_gas_3076"

"$have_gas_3076":                                 ; preds = %"$out_of_gas_3075", %"$have_gas_3065"
  %"$consume_3077" = sub i64 %"$gasrem_3073", 2
  store i64 %"$consume_3077", i64* @_gasrem, align 8
  %"$needsToChange_3079" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_3080" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_3079", i32 0, i32 0
  %"$needsToChange_tag_3081" = load i8, i8* %"$needsToChange_tag_3080", align 1
  switch i8 %"$needsToChange_tag_3081", label %"$default_3082" [
    i8 0, label %"$True_3083"
  ], !dbg !319

"$True_3083":                                     ; preds = %"$have_gas_3076"
  %"$needsToChange_3084" = bitcast %TName_Bool* %"$needsToChange_3079" to %CName_True*
  %"$_literal_cost_address_3085" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$_literal_cost_address_3085", align 1
  %"$$_literal_cost_address_3085_3086" = bitcast [20 x i8]* %"$_literal_cost_address_3085" to i8*
  %"$_literal_cost_call_3087" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i8* %"$$_literal_cost_address_3085_3086")
  %"$gasadd_3088" = add i64 %"$_literal_cost_call_3087", 1
  %"$gasrem_3089" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3090" = icmp ugt i64 %"$gasadd_3088", %"$gasrem_3089"
  br i1 %"$gascmp_3090", label %"$out_of_gas_3091", label %"$have_gas_3092"

"$out_of_gas_3091":                               ; preds = %"$True_3083"
  call void @_out_of_gas()
  br label %"$have_gas_3092"

"$have_gas_3092":                                 ; preds = %"$out_of_gas_3091", %"$True_3083"
  %"$consume_3093" = sub i64 %"$gasrem_3089", %"$gasadd_3088"
  store i64 %"$consume_3093", i64* @_gasrem, align 8
  %"$indices_buf_3094_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3094_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3094_salloc_load", i64 32)
  %"$indices_buf_3094_salloc" = bitcast i8* %"$indices_buf_3094_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3094" = bitcast [32 x i8]* %"$indices_buf_3094_salloc" to i8*
  %"$indices_gep_3095" = getelementptr i8, i8* %"$indices_buf_3094", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3095" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast2, align 1
  %"$execptr_load_3096" = load i8*, i8** @_execptr, align 8
  %"$update_value_3098" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$update_value_3098", align 1
  %"$update_value_3099" = bitcast [20 x i8]* %"$update_value_3098" to i8*
  call void @_update_field(i8* %"$execptr_load_3096", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3097", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_3094", i8* %"$update_value_3099"), !dbg !320
  %"$gasrem_3100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3101" = icmp ugt i64 1, %"$gasrem_3100"
  br i1 %"$gascmp_3101", label %"$out_of_gas_3102", label %"$have_gas_3103"

"$out_of_gas_3102":                               ; preds = %"$have_gas_3092"
  call void @_out_of_gas()
  br label %"$have_gas_3103"

"$have_gas_3103":                                 ; preds = %"$out_of_gas_3102", %"$have_gas_3092"
  %"$consume_3104" = sub i64 %"$gasrem_3100", 1
  store i64 %"$consume_3104", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3106" = icmp ugt i64 1, %"$gasrem_3105"
  br i1 %"$gascmp_3106", label %"$out_of_gas_3107", label %"$have_gas_3108"

"$out_of_gas_3107":                               ; preds = %"$have_gas_3103"
  call void @_out_of_gas()
  br label %"$have_gas_3108"

"$have_gas_3108":                                 ; preds = %"$out_of_gas_3107", %"$have_gas_3103"
  %"$consume_3109" = sub i64 %"$gasrem_3105", 1
  store i64 %"$consume_3109", i64* @_gasrem, align 8
  %"$ud-registry.eApproved_56" = alloca i8*, align 8
  %"$ud-registry.eApproved_3110" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApproved, align 8
  %"$ud-registry.eApproved_fptr_3111" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApproved_3110", 0
  %"$ud-registry.eApproved_envptr_3112" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApproved_3110", 1
  %"$ud-registry.eApproved_address_3113" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eApproved_address_3113", align 1
  %"$ud-registry.eApproved_call_3114" = call i8* %"$ud-registry.eApproved_fptr_3111"(i8* %"$ud-registry.eApproved_envptr_3112", [20 x i8]* %"$ud-registry.eApproved_address_3113"), !dbg !323
  store i8* %"$ud-registry.eApproved_call_3114", i8** %"$ud-registry.eApproved_56", align 8, !dbg !323
  %"$$ud-registry.eApproved_56_3115" = load i8*, i8** %"$ud-registry.eApproved_56", align 8
  store i8* %"$$ud-registry.eApproved_56_3115", i8** %e, align 8, !dbg !323
  %"$e_3116" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3118" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3116")
  %"$gasrem_3119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3120" = icmp ugt i64 %"$_literal_cost_call_3118", %"$gasrem_3119"
  br i1 %"$gascmp_3120", label %"$out_of_gas_3121", label %"$have_gas_3122"

"$out_of_gas_3121":                               ; preds = %"$have_gas_3108"
  call void @_out_of_gas()
  br label %"$have_gas_3122"

"$have_gas_3122":                                 ; preds = %"$out_of_gas_3121", %"$have_gas_3108"
  %"$consume_3123" = sub i64 %"$gasrem_3119", %"$_literal_cost_call_3118"
  store i64 %"$consume_3123", i64* @_gasrem, align 8
  %"$execptr_load_3124" = load i8*, i8** @_execptr, align 8
  %"$e_3125" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3124", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3125"), !dbg !324
  br label %"$matchsucc_3078"

"$default_3082":                                  ; preds = %"$have_gas_3076"
  br label %"$joinp_5"

"$joinp_5":                                       ; preds = %"$default_3082"
  br label %"$matchsucc_3078"

"$matchsucc_3078":                                ; preds = %"$have_gas_3122", %"$joinp_5"
  br label %"$matchsucc_2988"

"$False_3126":                                    ; preds = %"$have_gas_2986"
  %"$isSenderNodeOwner_3127" = bitcast %TName_Bool* %"$isSenderNodeOwner_2989" to %CName_False*
  %"$gasrem_3128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3129" = icmp ugt i64 1, %"$gasrem_3128"
  br i1 %"$gascmp_3129", label %"$out_of_gas_3130", label %"$have_gas_3131"

"$out_of_gas_3130":                               ; preds = %"$False_3126"
  call void @_out_of_gas()
  br label %"$have_gas_3131"

"$have_gas_3131":                                 ; preds = %"$out_of_gas_3130", %"$False_3126"
  %"$consume_3132" = sub i64 %"$gasrem_3128", 1
  store i64 %"$consume_3132", i64* @_gasrem, align 8
  %e3 = alloca i8*, align 8
  %"$gasrem_3133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3134" = icmp ugt i64 1, %"$gasrem_3133"
  br i1 %"$gascmp_3134", label %"$out_of_gas_3135", label %"$have_gas_3136"

"$out_of_gas_3135":                               ; preds = %"$have_gas_3131"
  call void @_out_of_gas()
  br label %"$have_gas_3136"

"$have_gas_3136":                                 ; preds = %"$out_of_gas_3135", %"$have_gas_3131"
  %"$consume_3137" = sub i64 %"$gasrem_3133", 1
  store i64 %"$consume_3137", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_3138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3139" = icmp ugt i64 1, %"$gasrem_3138"
  br i1 %"$gascmp_3139", label %"$out_of_gas_3140", label %"$have_gas_3141"

"$out_of_gas_3140":                               ; preds = %"$have_gas_3136"
  call void @_out_of_gas()
  br label %"$have_gas_3141"

"$have_gas_3141":                                 ; preds = %"$out_of_gas_3140", %"$have_gas_3136"
  %"$consume_3142" = sub i64 %"$gasrem_3138", 1
  store i64 %"$consume_3142", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_3143", i32 0, i32 0), i32 21 }, %String* %m, align 8, !dbg !325
  %"$gasrem_3144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3145" = icmp ugt i64 1, %"$gasrem_3144"
  br i1 %"$gascmp_3145", label %"$out_of_gas_3146", label %"$have_gas_3147"

"$out_of_gas_3146":                               ; preds = %"$have_gas_3141"
  call void @_out_of_gas()
  br label %"$have_gas_3147"

"$have_gas_3147":                                 ; preds = %"$out_of_gas_3146", %"$have_gas_3141"
  %"$consume_3148" = sub i64 %"$gasrem_3144", 1
  store i64 %"$consume_3148", i64* @_gasrem, align 8
  %"$ud-registry.eError_58" = alloca i8*, align 8
  %"$ud-registry.eError_3149" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3150" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3149", 0
  %"$ud-registry.eError_envptr_3151" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3149", 1
  %"$m_3152" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_3153" = call i8* %"$ud-registry.eError_fptr_3150"(i8* %"$ud-registry.eError_envptr_3151", %String %"$m_3152"), !dbg !327
  store i8* %"$ud-registry.eError_call_3153", i8** %"$ud-registry.eError_58", align 8, !dbg !327
  %"$$ud-registry.eError_58_3154" = load i8*, i8** %"$ud-registry.eError_58", align 8
  store i8* %"$$ud-registry.eError_58_3154", i8** %e3, align 8, !dbg !327
  %"$e_3155" = load i8*, i8** %e3, align 8
  %"$_literal_cost_call_3157" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3155")
  %"$gasrem_3158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3159" = icmp ugt i64 %"$_literal_cost_call_3157", %"$gasrem_3158"
  br i1 %"$gascmp_3159", label %"$out_of_gas_3160", label %"$have_gas_3161"

"$out_of_gas_3160":                               ; preds = %"$have_gas_3147"
  call void @_out_of_gas()
  br label %"$have_gas_3161"

"$have_gas_3161":                                 ; preds = %"$out_of_gas_3160", %"$have_gas_3147"
  %"$consume_3162" = sub i64 %"$gasrem_3158", %"$_literal_cost_call_3157"
  store i64 %"$consume_3162", i64* @_gasrem, align 8
  %"$execptr_load_3163" = load i8*, i8** @_execptr, align 8
  %"$e_3164" = load i8*, i8** %e3, align 8
  call void @_event(i8* %"$execptr_load_3163", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3164"), !dbg !328
  br label %"$matchsucc_2988"

"$empty_default_2992":                            ; preds = %"$have_gas_2986"
  br label %"$matchsucc_2988"

"$matchsucc_2988":                                ; preds = %"$have_gas_3161", %"$matchsucc_3078", %"$empty_default_2992"
  ret void
}

define void @approve(i8* %0) !dbg !329 {
entry:
  %"$_amount_3166" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3167" = bitcast i8* %"$_amount_3166" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3167", align 8
  %"$_origin_3168" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3169" = bitcast i8* %"$_origin_3168" to [20 x i8]*
  %"$_sender_3170" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3171" = bitcast i8* %"$_sender_3170" to [20 x i8]*
  %"$node_3172" = getelementptr i8, i8* %0, i32 56
  %"$node_3173" = bitcast i8* %"$node_3172" to [32 x i8]*
  %"$address_3174" = getelementptr i8, i8* %0, i32 88
  %"$address_3175" = bitcast i8* %"$address_3174" to [20 x i8]*
  call void @"$approve_2932"(%Uint128 %_amount, [20 x i8]* %"$_origin_3169", [20 x i8]* %"$_sender_3171", [32 x i8]* %"$node_3173", [20 x i8]* %"$address_3175"), !dbg !330
  ret void
}

define internal void @"$approveFor_3176"(%Uint128 %_amount, [20 x i8]* %"$_origin_3177", [20 x i8]* %"$_sender_3178", [20 x i8]* %"$address_3179", %TName_Bool* %isApproved) !dbg !331 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3177", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3178", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_3179", align 1
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3180_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3180_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3180_salloc_load", i64 20)
  %"$indices_buf_3180_salloc" = bitcast i8* %"$indices_buf_3180_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3180" = bitcast [20 x i8]* %"$indices_buf_3180_salloc" to i8*
  %"$indices_gep_3181" = getelementptr i8, i8* %"$indices_buf_3180", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3181" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_3183" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3184" = call i8* @_fetch_field(i8* %"$execptr_load_3183", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3182", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_3180", i32 1), !dbg !332
  %"$maybeOperators_3185" = bitcast i8* %"$maybeOperators_call_3184" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3185", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3186" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3186_3187" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3186" to i8*
  %"$_literal_cost_call_3188" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", i8* %"$$maybeOperators_3186_3187")
  %"$gasadd_3189" = add i64 %"$_literal_cost_call_3188", 0
  %"$gasadd_3190" = add i64 %"$gasadd_3189", 1
  %"$gasrem_3191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3192" = icmp ugt i64 %"$gasadd_3190", %"$gasrem_3191"
  br i1 %"$gascmp_3192", label %"$out_of_gas_3193", label %"$have_gas_3194"

"$out_of_gas_3193":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3194"

"$have_gas_3194":                                 ; preds = %"$out_of_gas_3193", %entry
  %"$consume_3195" = sub i64 %"$gasrem_3191", %"$gasadd_3190"
  store i64 %"$consume_3195", i64* @_gasrem, align 8
  %"$gasrem_3196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3197" = icmp ugt i64 1, %"$gasrem_3196"
  br i1 %"$gascmp_3197", label %"$out_of_gas_3198", label %"$have_gas_3199"

"$out_of_gas_3198":                               ; preds = %"$have_gas_3194"
  call void @_out_of_gas()
  br label %"$have_gas_3199"

"$have_gas_3199":                                 ; preds = %"$out_of_gas_3198", %"$have_gas_3194"
  %"$consume_3200" = sub i64 %"$gasrem_3196", 1
  store i64 %"$consume_3200", i64* @_gasrem, align 8
  %currentOperators = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_3201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3202" = icmp ugt i64 2, %"$gasrem_3201"
  br i1 %"$gascmp_3202", label %"$out_of_gas_3203", label %"$have_gas_3204"

"$out_of_gas_3203":                               ; preds = %"$have_gas_3199"
  call void @_out_of_gas()
  br label %"$have_gas_3204"

"$have_gas_3204":                                 ; preds = %"$out_of_gas_3203", %"$have_gas_3199"
  %"$consume_3205" = sub i64 %"$gasrem_3201", 2
  store i64 %"$consume_3205", i64* @_gasrem, align 8
  %"$maybeOperators_3207" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_tag_3208" = getelementptr inbounds %"TName_Option_List_(ByStr20)", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3207", i32 0, i32 0
  %"$maybeOperators_tag_3209" = load i8, i8* %"$maybeOperators_tag_3208", align 1
  switch i8 %"$maybeOperators_tag_3209", label %"$empty_default_3210" [
    i8 1, label %"$None_3211"
    i8 0, label %"$Some_3219"
  ], !dbg !333

"$None_3211":                                     ; preds = %"$have_gas_3204"
  %"$maybeOperators_3212" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3207" to %"CName_None_List_(ByStr20)"*
  %"$gasrem_3213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3214" = icmp ugt i64 1, %"$gasrem_3213"
  br i1 %"$gascmp_3214", label %"$out_of_gas_3215", label %"$have_gas_3216"

"$out_of_gas_3215":                               ; preds = %"$None_3211"
  call void @_out_of_gas()
  br label %"$have_gas_3216"

"$have_gas_3216":                                 ; preds = %"$out_of_gas_3215", %"$None_3211"
  %"$consume_3217" = sub i64 %"$gasrem_3213", 1
  store i64 %"$consume_3217", i64* @_gasrem, align 8
  %"$ud-registry.nilByStr20_3218" = load %TName_List_ByStr20*, %TName_List_ByStr20** @ud-registry.nilByStr20, align 8
  store %TName_List_ByStr20* %"$ud-registry.nilByStr20_3218", %TName_List_ByStr20** %currentOperators, align 8, !dbg !334
  br label %"$matchsucc_3206"

"$Some_3219":                                     ; preds = %"$have_gas_3204"
  %"$maybeOperators_3220" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3207" to %"CName_Some_List_(ByStr20)"*
  %"$ops_gep_3221" = getelementptr inbounds %"CName_Some_List_(ByStr20)", %"CName_Some_List_(ByStr20)"* %"$maybeOperators_3220", i32 0, i32 1
  %"$ops_load_3222" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ops_gep_3221", align 8
  %ops = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$ops_load_3222", %TName_List_ByStr20** %ops, align 8
  %"$gasrem_3223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3224" = icmp ugt i64 1, %"$gasrem_3223"
  br i1 %"$gascmp_3224", label %"$out_of_gas_3225", label %"$have_gas_3226"

"$out_of_gas_3225":                               ; preds = %"$Some_3219"
  call void @_out_of_gas()
  br label %"$have_gas_3226"

"$have_gas_3226":                                 ; preds = %"$out_of_gas_3225", %"$Some_3219"
  %"$consume_3227" = sub i64 %"$gasrem_3223", 1
  store i64 %"$consume_3227", i64* @_gasrem, align 8
  %"$ops_3228" = load %TName_List_ByStr20*, %TName_List_ByStr20** %ops, align 8
  store %TName_List_ByStr20* %"$ops_3228", %TName_List_ByStr20** %currentOperators, align 8, !dbg !337
  br label %"$matchsucc_3206"

"$empty_default_3210":                            ; preds = %"$have_gas_3204"
  br label %"$matchsucc_3206"

"$matchsucc_3206":                                ; preds = %"$have_gas_3226", %"$have_gas_3216", %"$empty_default_3210"
  %"$gasrem_3229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3230" = icmp ugt i64 1, %"$gasrem_3229"
  br i1 %"$gascmp_3230", label %"$out_of_gas_3231", label %"$have_gas_3232"

"$out_of_gas_3231":                               ; preds = %"$matchsucc_3206"
  call void @_out_of_gas()
  br label %"$have_gas_3232"

"$have_gas_3232":                                 ; preds = %"$out_of_gas_3231", %"$matchsucc_3206"
  %"$consume_3233" = sub i64 %"$gasrem_3229", 1
  store i64 %"$consume_3233", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_3234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3235" = icmp ugt i64 1, %"$gasrem_3234"
  br i1 %"$gascmp_3235", label %"$out_of_gas_3236", label %"$have_gas_3237"

"$out_of_gas_3236":                               ; preds = %"$have_gas_3232"
  call void @_out_of_gas()
  br label %"$have_gas_3237"

"$have_gas_3237":                                 ; preds = %"$out_of_gas_3236", %"$have_gas_3232"
  %"$consume_3238" = sub i64 %"$gasrem_3234", 1
  store i64 %"$consume_3238", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_3239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3240" = icmp ugt i64 1, %"$gasrem_3239"
  br i1 %"$gascmp_3240", label %"$out_of_gas_3241", label %"$have_gas_3242"

"$out_of_gas_3241":                               ; preds = %"$have_gas_3237"
  call void @_out_of_gas()
  br label %"$have_gas_3242"

"$have_gas_3242":                                 ; preds = %"$out_of_gas_3241", %"$have_gas_3237"
  %"$consume_3243" = sub i64 %"$gasrem_3239", 1
  store i64 %"$consume_3243", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Excludes_65" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Excludes_3244" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes, align 8
  %"$ud-registry.listByStr20Excludes_fptr_3245" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_3244", 0
  %"$ud-registry.listByStr20Excludes_envptr_3246" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_3244", 1
  %"$currentOperators_3247" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$ud-registry.listByStr20Excludes_call_3248" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_fptr_3245"(i8* %"$ud-registry.listByStr20Excludes_envptr_3246", %TName_List_ByStr20* %"$currentOperators_3247"), !dbg !339
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_call_3248", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_65", align 8, !dbg !339
  %"$ud-registry.listByStr20Excludes_66" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Excludes_65_3249" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_65", align 8
  %"$$ud-registry.listByStr20Excludes_65_fptr_3250" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_65_3249", 0
  %"$$ud-registry.listByStr20Excludes_65_envptr_3251" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_65_3249", 1
  %"$$ud-registry.listByStr20Excludes_65_address_3252" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20Excludes_65_address_3252", align 1
  %"$$ud-registry.listByStr20Excludes_65_call_3253" = call %TName_Bool* %"$$ud-registry.listByStr20Excludes_65_fptr_3250"(i8* %"$$ud-registry.listByStr20Excludes_65_envptr_3251", [20 x i8]* %"$$ud-registry.listByStr20Excludes_65_address_3252"), !dbg !339
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_65_call_3253", %TName_Bool** %"$ud-registry.listByStr20Excludes_66", align 8, !dbg !339
  %"$$ud-registry.listByStr20Excludes_66_3254" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Excludes_66", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_66_3254", %TName_Bool** %b, align 8, !dbg !339
  %"$gasrem_3255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3256" = icmp ugt i64 1, %"$gasrem_3255"
  br i1 %"$gascmp_3256", label %"$out_of_gas_3257", label %"$have_gas_3258"

"$out_of_gas_3257":                               ; preds = %"$have_gas_3242"
  call void @_out_of_gas()
  br label %"$have_gas_3258"

"$have_gas_3258":                                 ; preds = %"$out_of_gas_3257", %"$have_gas_3242"
  %"$consume_3259" = sub i64 %"$gasrem_3255", 1
  store i64 %"$consume_3259", i64* @_gasrem, align 8
  %"$ud-registry.xandb_67" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.xandb_3260" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8
  %"$ud-registry.xandb_fptr_3261" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_3260", 0
  %"$ud-registry.xandb_envptr_3262" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_3260", 1
  %"$b_3263" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$ud-registry.xandb_call_3264" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_fptr_3261"(i8* %"$ud-registry.xandb_envptr_3262", %TName_Bool* %"$b_3263"), !dbg !340
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_call_3264", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_67", align 8, !dbg !340
  %"$ud-registry.xandb_68" = alloca %TName_Bool*, align 8
  %"$$ud-registry.xandb_67_3265" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_67", align 8
  %"$$ud-registry.xandb_67_fptr_3266" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_67_3265", 0
  %"$$ud-registry.xandb_67_envptr_3267" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_67_3265", 1
  %"$$ud-registry.xandb_67_call_3268" = call %TName_Bool* %"$$ud-registry.xandb_67_fptr_3266"(i8* %"$$ud-registry.xandb_67_envptr_3267", %TName_Bool* %isApproved), !dbg !340
  store %TName_Bool* %"$$ud-registry.xandb_67_call_3268", %TName_Bool** %"$ud-registry.xandb_68", align 8, !dbg !340
  %"$$ud-registry.xandb_68_3269" = load %TName_Bool*, %TName_Bool** %"$ud-registry.xandb_68", align 8
  store %TName_Bool* %"$$ud-registry.xandb_68_3269", %TName_Bool** %needsToChange, align 8, !dbg !340
  %"$gasrem_3270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3271" = icmp ugt i64 2, %"$gasrem_3270"
  br i1 %"$gascmp_3271", label %"$out_of_gas_3272", label %"$have_gas_3273"

"$out_of_gas_3272":                               ; preds = %"$have_gas_3258"
  call void @_out_of_gas()
  br label %"$have_gas_3273"

"$have_gas_3273":                                 ; preds = %"$out_of_gas_3272", %"$have_gas_3258"
  %"$consume_3274" = sub i64 %"$gasrem_3270", 2
  store i64 %"$consume_3274", i64* @_gasrem, align 8
  %"$needsToChange_3276" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_3277" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_3276", i32 0, i32 0
  %"$needsToChange_tag_3278" = load i8, i8* %"$needsToChange_tag_3277", align 1
  switch i8 %"$needsToChange_tag_3278", label %"$default_3279" [
    i8 0, label %"$True_3280"
  ], !dbg !341

"$True_3280":                                     ; preds = %"$have_gas_3273"
  %"$needsToChange_3281" = bitcast %TName_Bool* %"$needsToChange_3276" to %CName_True*
  %"$gasrem_3282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3283" = icmp ugt i64 1, %"$gasrem_3282"
  br i1 %"$gascmp_3283", label %"$out_of_gas_3284", label %"$have_gas_3285"

"$out_of_gas_3284":                               ; preds = %"$True_3280"
  call void @_out_of_gas()
  br label %"$have_gas_3285"

"$have_gas_3285":                                 ; preds = %"$out_of_gas_3284", %"$True_3280"
  %"$consume_3286" = sub i64 %"$gasrem_3282", 1
  store i64 %"$consume_3286", i64* @_gasrem, align 8
  %newOperators = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_3287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3288" = icmp ugt i64 2, %"$gasrem_3287"
  br i1 %"$gascmp_3288", label %"$out_of_gas_3289", label %"$have_gas_3290"

"$out_of_gas_3289":                               ; preds = %"$have_gas_3285"
  call void @_out_of_gas()
  br label %"$have_gas_3290"

"$have_gas_3290":                                 ; preds = %"$out_of_gas_3289", %"$have_gas_3285"
  %"$consume_3291" = sub i64 %"$gasrem_3287", 2
  store i64 %"$consume_3291", i64* @_gasrem, align 8
  %"$isApproved_tag_3293" = getelementptr inbounds %TName_Bool, %TName_Bool* %isApproved, i32 0, i32 0
  %"$isApproved_tag_3294" = load i8, i8* %"$isApproved_tag_3293", align 1
  switch i8 %"$isApproved_tag_3294", label %"$empty_default_3295" [
    i8 0, label %"$True_3296"
    i8 1, label %"$False_3309"
  ], !dbg !342

"$True_3296":                                     ; preds = %"$have_gas_3290"
  %"$isApproved_3297" = bitcast %TName_Bool* %isApproved to %CName_True*
  %"$gasrem_3298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3299" = icmp ugt i64 1, %"$gasrem_3298"
  br i1 %"$gascmp_3299", label %"$out_of_gas_3300", label %"$have_gas_3301"

"$out_of_gas_3300":                               ; preds = %"$True_3296"
  call void @_out_of_gas()
  br label %"$have_gas_3301"

"$have_gas_3301":                                 ; preds = %"$out_of_gas_3300", %"$True_3296"
  %"$consume_3302" = sub i64 %"$gasrem_3298", 1
  store i64 %"$consume_3302", i64* @_gasrem, align 8
  %"$currentOperators_3303" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$adtval_3304_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3304_salloc" = call i8* @_salloc(i8* %"$adtval_3304_load", i64 29)
  %"$adtval_3304" = bitcast i8* %"$adtval_3304_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_3305" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3304", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3305", align 1
  %"$adtgep_3306" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3304", i32 0, i32 1
  store [20 x i8] %address, [20 x i8]* %"$adtgep_3306", align 1
  %"$adtgep_3307" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3304", i32 0, i32 2
  store %TName_List_ByStr20* %"$currentOperators_3303", %TName_List_ByStr20** %"$adtgep_3307", align 8
  %"$adtptr_3308" = bitcast %CName_Cons_ByStr20* %"$adtval_3304" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_3308", %TName_List_ByStr20** %newOperators, align 8, !dbg !345
  br label %"$matchsucc_3292"

"$False_3309":                                    ; preds = %"$have_gas_3290"
  %"$isApproved_3310" = bitcast %TName_Bool* %isApproved to %CName_False*
  %"$gasrem_3311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3312" = icmp ugt i64 1, %"$gasrem_3311"
  br i1 %"$gascmp_3312", label %"$out_of_gas_3313", label %"$have_gas_3314"

"$out_of_gas_3313":                               ; preds = %"$False_3309"
  call void @_out_of_gas()
  br label %"$have_gas_3314"

"$have_gas_3314":                                 ; preds = %"$out_of_gas_3313", %"$False_3309"
  %"$consume_3315" = sub i64 %"$gasrem_3311", 1
  store i64 %"$consume_3315", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20FilterOut_63" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20FilterOut_3316" = load { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8
  %"$ud-registry.listByStr20FilterOut_fptr_3317" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_3316", 0
  %"$ud-registry.listByStr20FilterOut_envptr_3318" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_3316", 1
  %"$currentOperators_3319" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$ud-registry.listByStr20FilterOut_call_3320" = call { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_fptr_3317"(i8* %"$ud-registry.listByStr20FilterOut_envptr_3318", %TName_List_ByStr20* %"$currentOperators_3319"), !dbg !348
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_call_3320", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_63", align 8, !dbg !348
  %"$ud-registry.listByStr20FilterOut_64" = alloca %TName_List_ByStr20*, align 8
  %"$$ud-registry.listByStr20FilterOut_63_3321" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_63", align 8
  %"$$ud-registry.listByStr20FilterOut_63_fptr_3322" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_63_3321", 0
  %"$$ud-registry.listByStr20FilterOut_63_envptr_3323" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_63_3321", 1
  %"$$ud-registry.listByStr20FilterOut_63_address_3324" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20FilterOut_63_address_3324", align 1
  %"$$ud-registry.listByStr20FilterOut_63_call_3325" = call %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_63_fptr_3322"(i8* %"$$ud-registry.listByStr20FilterOut_63_envptr_3323", [20 x i8]* %"$$ud-registry.listByStr20FilterOut_63_address_3324"), !dbg !348
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_63_call_3325", %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_64", align 8, !dbg !348
  %"$$ud-registry.listByStr20FilterOut_64_3326" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_64", align 8
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_64_3326", %TName_List_ByStr20** %newOperators, align 8, !dbg !348
  br label %"$matchsucc_3292"

"$empty_default_3295":                            ; preds = %"$have_gas_3290"
  br label %"$matchsucc_3292"

"$matchsucc_3292":                                ; preds = %"$have_gas_3314", %"$have_gas_3301", %"$empty_default_3295"
  %"$newOperators_3327" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newOperators, align 8
  %"$$newOperators_3327_3328" = bitcast %TName_List_ByStr20* %"$newOperators_3327" to i8*
  %"$_literal_cost_call_3329" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i8* %"$$newOperators_3327_3328")
  %"$gasadd_3330" = add i64 %"$_literal_cost_call_3329", 1
  %"$gasrem_3331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3332" = icmp ugt i64 %"$gasadd_3330", %"$gasrem_3331"
  br i1 %"$gascmp_3332", label %"$out_of_gas_3333", label %"$have_gas_3334"

"$out_of_gas_3333":                               ; preds = %"$matchsucc_3292"
  call void @_out_of_gas()
  br label %"$have_gas_3334"

"$have_gas_3334":                                 ; preds = %"$out_of_gas_3333", %"$matchsucc_3292"
  %"$consume_3335" = sub i64 %"$gasrem_3331", %"$gasadd_3330"
  store i64 %"$consume_3335", i64* @_gasrem, align 8
  %"$indices_buf_3336_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3336_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3336_salloc_load", i64 20)
  %"$indices_buf_3336_salloc" = bitcast i8* %"$indices_buf_3336_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3336" = bitcast [20 x i8]* %"$indices_buf_3336_salloc" to i8*
  %"$indices_gep_3337" = getelementptr i8, i8* %"$indices_buf_3336", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3337" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_3338" = load i8*, i8** @_execptr, align 8
  %"$newOperators_3340" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newOperators, align 8
  %"$update_value_3341" = bitcast %TName_List_ByStr20* %"$newOperators_3340" to i8*
  call void @_update_field(i8* %"$execptr_load_3338", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3339", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_3336", i8* %"$update_value_3341"), !dbg !350
  %"$gasrem_3342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3343" = icmp ugt i64 1, %"$gasrem_3342"
  br i1 %"$gascmp_3343", label %"$out_of_gas_3344", label %"$have_gas_3345"

"$out_of_gas_3344":                               ; preds = %"$have_gas_3334"
  call void @_out_of_gas()
  br label %"$have_gas_3345"

"$have_gas_3345":                                 ; preds = %"$out_of_gas_3344", %"$have_gas_3334"
  %"$consume_3346" = sub i64 %"$gasrem_3342", 1
  store i64 %"$consume_3346", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3348" = icmp ugt i64 1, %"$gasrem_3347"
  br i1 %"$gascmp_3348", label %"$out_of_gas_3349", label %"$have_gas_3350"

"$out_of_gas_3349":                               ; preds = %"$have_gas_3345"
  call void @_out_of_gas()
  br label %"$have_gas_3350"

"$have_gas_3350":                                 ; preds = %"$out_of_gas_3349", %"$have_gas_3345"
  %"$consume_3351" = sub i64 %"$gasrem_3347", 1
  store i64 %"$consume_3351", i64* @_gasrem, align 8
  %"$ud-registry.eApprovedFor_60" = alloca { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eApprovedFor_3352" = load { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApprovedFor, align 8
  %"$ud-registry.eApprovedFor_fptr_3353" = extractvalue { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_3352", 0
  %"$ud-registry.eApprovedFor_envptr_3354" = extractvalue { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_3352", 1
  %"$ud-registry.eApprovedFor__sender_3355" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.eApprovedFor__sender_3355", align 1
  %"$ud-registry.eApprovedFor_call_3356" = call { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_fptr_3353"(i8* %"$ud-registry.eApprovedFor_envptr_3354", [20 x i8]* %"$ud-registry.eApprovedFor__sender_3355"), !dbg !351
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_call_3356", { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eApprovedFor_60", align 8, !dbg !351
  %"$ud-registry.eApprovedFor_61" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$ud-registry.eApprovedFor_60_3357" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eApprovedFor_60", align 8
  %"$$ud-registry.eApprovedFor_60_fptr_3358" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eApprovedFor_60_3357", 0
  %"$$ud-registry.eApprovedFor_60_envptr_3359" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eApprovedFor_60_3357", 1
  %"$$ud-registry.eApprovedFor_60_address_3360" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.eApprovedFor_60_address_3360", align 1
  %"$$ud-registry.eApprovedFor_60_call_3361" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_60_fptr_3358"(i8* %"$$ud-registry.eApprovedFor_60_envptr_3359", [20 x i8]* %"$$ud-registry.eApprovedFor_60_address_3360"), !dbg !351
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_60_call_3361", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eApprovedFor_61", align 8, !dbg !351
  %"$ud-registry.eApprovedFor_62" = alloca i8*, align 8
  %"$$ud-registry.eApprovedFor_61_3362" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eApprovedFor_61", align 8
  %"$$ud-registry.eApprovedFor_61_fptr_3363" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_61_3362", 0
  %"$$ud-registry.eApprovedFor_61_envptr_3364" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_61_3362", 1
  %"$$ud-registry.eApprovedFor_61_call_3365" = call i8* %"$$ud-registry.eApprovedFor_61_fptr_3363"(i8* %"$$ud-registry.eApprovedFor_61_envptr_3364", %TName_Bool* %isApproved), !dbg !351
  store i8* %"$$ud-registry.eApprovedFor_61_call_3365", i8** %"$ud-registry.eApprovedFor_62", align 8, !dbg !351
  %"$$ud-registry.eApprovedFor_62_3366" = load i8*, i8** %"$ud-registry.eApprovedFor_62", align 8
  store i8* %"$$ud-registry.eApprovedFor_62_3366", i8** %e, align 8, !dbg !351
  %"$e_3367" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3369" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3367")
  %"$gasrem_3370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3371" = icmp ugt i64 %"$_literal_cost_call_3369", %"$gasrem_3370"
  br i1 %"$gascmp_3371", label %"$out_of_gas_3372", label %"$have_gas_3373"

"$out_of_gas_3372":                               ; preds = %"$have_gas_3350"
  call void @_out_of_gas()
  br label %"$have_gas_3373"

"$have_gas_3373":                                 ; preds = %"$out_of_gas_3372", %"$have_gas_3350"
  %"$consume_3374" = sub i64 %"$gasrem_3370", %"$_literal_cost_call_3369"
  store i64 %"$consume_3374", i64* @_gasrem, align 8
  %"$execptr_load_3375" = load i8*, i8** @_execptr, align 8
  %"$e_3376" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3375", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3376"), !dbg !352
  br label %"$matchsucc_3275"

"$default_3279":                                  ; preds = %"$have_gas_3273"
  br label %"$joinp_6"

"$joinp_6":                                       ; preds = %"$default_3279"
  br label %"$matchsucc_3275"

"$matchsucc_3275":                                ; preds = %"$have_gas_3373", %"$joinp_6"
  ret void
}

define void @approveFor(i8* %0) !dbg !353 {
entry:
  %"$_amount_3378" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3379" = bitcast i8* %"$_amount_3378" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3379", align 8
  %"$_origin_3380" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3381" = bitcast i8* %"$_origin_3380" to [20 x i8]*
  %"$_sender_3382" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3383" = bitcast i8* %"$_sender_3382" to [20 x i8]*
  %"$address_3384" = getelementptr i8, i8* %0, i32 56
  %"$address_3385" = bitcast i8* %"$address_3384" to [20 x i8]*
  %"$isApproved_3386" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_3387" = bitcast i8* %"$isApproved_3386" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_3387", align 8
  call void @"$approveFor_3176"(%Uint128 %_amount, [20 x i8]* %"$_origin_3381", [20 x i8]* %"$_sender_3383", [20 x i8]* %"$address_3385", %TName_Bool* %isApproved), !dbg !354
  ret void
}

define internal void @"$configureNode_3388"(%Uint128 %_amount, [20 x i8]* %"$_origin_3389", [20 x i8]* %"$_sender_3390", [32 x i8]* %"$node_3391", [20 x i8]* %"$owner_3392", [20 x i8]* %"$resolver_3393") !dbg !355 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3389", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3390", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_3391", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_3392", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_3393", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3394_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3394_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3394_salloc_load", i64 32)
  %"$indices_buf_3394_salloc" = bitcast i8* %"$indices_buf_3394_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3394" = bitcast [32 x i8]* %"$indices_buf_3394_salloc" to i8*
  %"$indices_gep_3395" = getelementptr i8, i8* %"$indices_buf_3394", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3395" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3397" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_3398" = call i8* @_fetch_field(i8* %"$execptr_load_3397", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3396", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_3394", i32 1), !dbg !356
  %"$maybeRecord_3399" = bitcast i8* %"$maybeRecord_call_3398" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3399", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3400" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3400_3401" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3400" to i8*
  %"$_literal_cost_call_3402" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_3400_3401")
  %"$gasadd_3403" = add i64 %"$_literal_cost_call_3402", 0
  %"$gasadd_3404" = add i64 %"$gasadd_3403", 1
  %"$gasrem_3405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3406" = icmp ugt i64 %"$gasadd_3404", %"$gasrem_3405"
  br i1 %"$gascmp_3406", label %"$out_of_gas_3407", label %"$have_gas_3408"

"$out_of_gas_3407":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3408"

"$have_gas_3408":                                 ; preds = %"$out_of_gas_3407", %entry
  %"$consume_3409" = sub i64 %"$gasrem_3405", %"$gasadd_3404"
  store i64 %"$consume_3409", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3410_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3410_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3410_salloc_load", i64 32)
  %"$indices_buf_3410_salloc" = bitcast i8* %"$indices_buf_3410_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3410" = bitcast [32 x i8]* %"$indices_buf_3410_salloc" to i8*
  %"$indices_gep_3411" = getelementptr i8, i8* %"$indices_buf_3410", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3411" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_3413" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_3414" = call i8* @_fetch_field(i8* %"$execptr_load_3413", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3412", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_3410", i32 1), !dbg !357
  %"$maybeApproved_3415" = bitcast i8* %"$maybeApproved_call_3414" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3415", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3416" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3416_3417" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3416" to i8*
  %"$_literal_cost_call_3418" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_3416_3417")
  %"$gasadd_3419" = add i64 %"$_literal_cost_call_3418", 0
  %"$gasadd_3420" = add i64 %"$gasadd_3419", 1
  %"$gasrem_3421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3422" = icmp ugt i64 %"$gasadd_3420", %"$gasrem_3421"
  br i1 %"$gascmp_3422", label %"$out_of_gas_3423", label %"$have_gas_3424"

"$out_of_gas_3423":                               ; preds = %"$have_gas_3408"
  call void @_out_of_gas()
  br label %"$have_gas_3424"

"$have_gas_3424":                                 ; preds = %"$out_of_gas_3423", %"$have_gas_3408"
  %"$consume_3425" = sub i64 %"$gasrem_3421", %"$gasadd_3420"
  store i64 %"$consume_3425", i64* @_gasrem, align 8
  %"$gasrem_3426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3427" = icmp ugt i64 1, %"$gasrem_3426"
  br i1 %"$gascmp_3427", label %"$out_of_gas_3428", label %"$have_gas_3429"

"$out_of_gas_3428":                               ; preds = %"$have_gas_3424"
  call void @_out_of_gas()
  br label %"$have_gas_3429"

"$have_gas_3429":                                 ; preds = %"$out_of_gas_3428", %"$have_gas_3424"
  %"$consume_3430" = sub i64 %"$gasrem_3426", 1
  store i64 %"$consume_3430", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3432" = icmp ugt i64 1, %"$gasrem_3431"
  br i1 %"$gascmp_3432", label %"$out_of_gas_3433", label %"$have_gas_3434"

"$out_of_gas_3433":                               ; preds = %"$have_gas_3429"
  call void @_out_of_gas()
  br label %"$have_gas_3434"

"$have_gas_3434":                                 ; preds = %"$out_of_gas_3433", %"$have_gas_3429"
  %"$consume_3435" = sub i64 %"$gasrem_3431", 1
  store i64 %"$consume_3435", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_79" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3436" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3437" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3436", 0
  %"$ud-registry.recordMemberOwner_envptr_3438" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3436", 1
  %"$maybeRecord_3439" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3440" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3437"(i8* %"$ud-registry.recordMemberOwner_envptr_3438", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3440", %TName_Option_ud-registry.Record* %"$maybeRecord_3439"), !dbg !358
  %"$ud-registry.recordMemberOwner_ret_3441" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3440", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3441", [20 x i8]* %"$ud-registry.recordMemberOwner_79", align 1, !dbg !358
  %"$$ud-registry.recordMemberOwner_79_3442" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_79", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_79_3442", [20 x i8]* %recordOwner, align 1, !dbg !358
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3443_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3443_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3443_salloc_load", i64 20)
  %"$indices_buf_3443_salloc" = bitcast i8* %"$indices_buf_3443_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3443" = bitcast [20 x i8]* %"$indices_buf_3443_salloc" to i8*
  %"$recordOwner_3444" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_3445" = getelementptr i8, i8* %"$indices_buf_3443", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3445" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3444", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_3447" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3448" = call i8* @_fetch_field(i8* %"$execptr_load_3447", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3446", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_3443", i32 1), !dbg !359
  %"$maybeOperators_3449" = bitcast i8* %"$maybeOperators_call_3448" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3449", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3450" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3450_3451" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3450" to i8*
  %"$_literal_cost_call_3452" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", i8* %"$$maybeOperators_3450_3451")
  %"$gasadd_3453" = add i64 %"$_literal_cost_call_3452", 0
  %"$gasadd_3454" = add i64 %"$gasadd_3453", 1
  %"$gasrem_3455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3456" = icmp ugt i64 %"$gasadd_3454", %"$gasrem_3455"
  br i1 %"$gascmp_3456", label %"$out_of_gas_3457", label %"$have_gas_3458"

"$out_of_gas_3457":                               ; preds = %"$have_gas_3434"
  call void @_out_of_gas()
  br label %"$have_gas_3458"

"$have_gas_3458":                                 ; preds = %"$out_of_gas_3457", %"$have_gas_3434"
  %"$consume_3459" = sub i64 %"$gasrem_3455", %"$gasadd_3454"
  store i64 %"$consume_3459", i64* @_gasrem, align 8
  %"$gasrem_3460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3461" = icmp ugt i64 1, %"$gasrem_3460"
  br i1 %"$gascmp_3461", label %"$out_of_gas_3462", label %"$have_gas_3463"

"$out_of_gas_3462":                               ; preds = %"$have_gas_3458"
  call void @_out_of_gas()
  br label %"$have_gas_3463"

"$have_gas_3463":                                 ; preds = %"$out_of_gas_3462", %"$have_gas_3458"
  %"$consume_3464" = sub i64 %"$gasrem_3460", 1
  store i64 %"$consume_3464", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_3465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3466" = icmp ugt i64 1, %"$gasrem_3465"
  br i1 %"$gascmp_3466", label %"$out_of_gas_3467", label %"$have_gas_3468"

"$out_of_gas_3467":                               ; preds = %"$have_gas_3463"
  call void @_out_of_gas()
  br label %"$have_gas_3468"

"$have_gas_3468":                                 ; preds = %"$out_of_gas_3467", %"$have_gas_3463"
  %"$consume_3469" = sub i64 %"$gasrem_3465", 1
  store i64 %"$consume_3469", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_75" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_3470" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_3471" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3470", 0
  %"$ud-registry.getIsOAO_envptr_3472" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3470", 1
  %"$ud-registry.getIsOAO__sender_3473" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3473", align 1
  %"$ud-registry.getIsOAO_call_3474" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_3471"(i8* %"$ud-registry.getIsOAO_envptr_3472", [20 x i8]* %"$ud-registry.getIsOAO__sender_3473"), !dbg !360
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_3474", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_75", align 8, !dbg !360
  %"$ud-registry.getIsOAO_76" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_75_3475" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_75", align 8
  %"$$ud-registry.getIsOAO_75_fptr_3476" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_75_3475", 0
  %"$$ud-registry.getIsOAO_75_envptr_3477" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_75_3475", 1
  %"$$ud-registry.getIsOAO_75_recordOwner_3478" = alloca [20 x i8], align 1
  %"$recordOwner_3479" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3479", [20 x i8]* %"$$ud-registry.getIsOAO_75_recordOwner_3478", align 1
  %"$$ud-registry.getIsOAO_75_call_3480" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_75_fptr_3476"(i8* %"$$ud-registry.getIsOAO_75_envptr_3477", [20 x i8]* %"$$ud-registry.getIsOAO_75_recordOwner_3478"), !dbg !360
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_75_call_3480", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_76", align 8, !dbg !360
  %"$ud-registry.getIsOAO_77" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_76_3481" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_76", align 8
  %"$$ud-registry.getIsOAO_76_fptr_3482" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_76_3481", 0
  %"$$ud-registry.getIsOAO_76_envptr_3483" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_76_3481", 1
  %"$maybeApproved_3484" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_76_call_3485" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_76_fptr_3482"(i8* %"$$ud-registry.getIsOAO_76_envptr_3483", %TName_Option_ByStr20* %"$maybeApproved_3484"), !dbg !360
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_76_call_3485", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_77", align 8, !dbg !360
  %"$ud-registry.getIsOAO_78" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_77_3486" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_77", align 8
  %"$$ud-registry.getIsOAO_77_fptr_3487" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_77_3486", 0
  %"$$ud-registry.getIsOAO_77_envptr_3488" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_77_3486", 1
  %"$maybeOperators_3489" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_77_call_3490" = call %TName_Bool* %"$$ud-registry.getIsOAO_77_fptr_3487"(i8* %"$$ud-registry.getIsOAO_77_envptr_3488", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3489"), !dbg !360
  store %TName_Bool* %"$$ud-registry.getIsOAO_77_call_3490", %TName_Bool** %"$ud-registry.getIsOAO_78", align 8, !dbg !360
  %"$$ud-registry.getIsOAO_78_3491" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_78", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_78_3491", %TName_Bool** %isSenderOAO, align 8, !dbg !360
  %"$gasrem_3492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3493" = icmp ugt i64 2, %"$gasrem_3492"
  br i1 %"$gascmp_3493", label %"$out_of_gas_3494", label %"$have_gas_3495"

"$out_of_gas_3494":                               ; preds = %"$have_gas_3468"
  call void @_out_of_gas()
  br label %"$have_gas_3495"

"$have_gas_3495":                                 ; preds = %"$out_of_gas_3494", %"$have_gas_3468"
  %"$consume_3496" = sub i64 %"$gasrem_3492", 2
  store i64 %"$consume_3496", i64* @_gasrem, align 8
  %"$isSenderOAO_3498" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_3499" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3498", i32 0, i32 0
  %"$isSenderOAO_tag_3500" = load i8, i8* %"$isSenderOAO_tag_3499", align 1
  switch i8 %"$isSenderOAO_tag_3500", label %"$empty_default_3501" [
    i8 0, label %"$True_3502"
    i8 1, label %"$False_3644"
  ], !dbg !361

"$True_3502":                                     ; preds = %"$have_gas_3495"
  %"$isSenderOAO_3503" = bitcast %TName_Bool* %"$isSenderOAO_3498" to %CName_True*
  %"$gasrem_3504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3505" = icmp ugt i64 1, %"$gasrem_3504"
  br i1 %"$gascmp_3505", label %"$out_of_gas_3506", label %"$have_gas_3507"

"$out_of_gas_3506":                               ; preds = %"$True_3502"
  call void @_out_of_gas()
  br label %"$have_gas_3507"

"$have_gas_3507":                                 ; preds = %"$out_of_gas_3506", %"$True_3502"
  %"$consume_3508" = sub i64 %"$gasrem_3504", 1
  store i64 %"$consume_3508", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_3509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3510" = icmp ugt i64 1, %"$gasrem_3509"
  br i1 %"$gascmp_3510", label %"$out_of_gas_3511", label %"$have_gas_3512"

"$out_of_gas_3511":                               ; preds = %"$have_gas_3507"
  call void @_out_of_gas()
  br label %"$have_gas_3512"

"$have_gas_3512":                                 ; preds = %"$out_of_gas_3511", %"$have_gas_3507"
  %"$consume_3513" = sub i64 %"$gasrem_3509", 1
  store i64 %"$consume_3513", i64* @_gasrem, align 8
  %"$adtval_3514_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3514_salloc" = call i8* @_salloc(i8* %"$adtval_3514_load", i64 41)
  %"$adtval_3514" = bitcast i8* %"$adtval_3514_salloc" to %CName_ud-registry.Record*
  %"$adtgep_3515" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3514", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3515", align 1
  %"$adtgep_3516" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3514", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_3516", align 1
  %"$adtgep_3517" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3514", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_3517", align 1
  %"$adtptr_3518" = bitcast %CName_ud-registry.Record* %"$adtval_3514" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_3518", %TName_ud-registry.Record** %newRecord, align 8, !dbg !362
  %"$newRecord_3519" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_3519_3520" = bitcast %TName_ud-registry.Record* %"$newRecord_3519" to i8*
  %"$_literal_cost_call_3521" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", i8* %"$$newRecord_3519_3520")
  %"$gasadd_3522" = add i64 %"$_literal_cost_call_3521", 1
  %"$gasrem_3523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3524" = icmp ugt i64 %"$gasadd_3522", %"$gasrem_3523"
  br i1 %"$gascmp_3524", label %"$out_of_gas_3525", label %"$have_gas_3526"

"$out_of_gas_3525":                               ; preds = %"$have_gas_3512"
  call void @_out_of_gas()
  br label %"$have_gas_3526"

"$have_gas_3526":                                 ; preds = %"$out_of_gas_3525", %"$have_gas_3512"
  %"$consume_3527" = sub i64 %"$gasrem_3523", %"$gasadd_3522"
  store i64 %"$consume_3527", i64* @_gasrem, align 8
  %"$indices_buf_3528_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3528_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3528_salloc_load", i64 32)
  %"$indices_buf_3528_salloc" = bitcast i8* %"$indices_buf_3528_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3528" = bitcast [32 x i8]* %"$indices_buf_3528_salloc" to i8*
  %"$indices_gep_3529" = getelementptr i8, i8* %"$indices_buf_3528", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_3529" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_3530" = load i8*, i8** @_execptr, align 8
  %"$newRecord_3532" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_3533" = bitcast %TName_ud-registry.Record* %"$newRecord_3532" to i8*
  call void @_update_field(i8* %"$execptr_load_3530", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3531", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_3528", i8* %"$update_value_3533"), !dbg !365
  %"$gasrem_3534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3535" = icmp ugt i64 1, %"$gasrem_3534"
  br i1 %"$gascmp_3535", label %"$out_of_gas_3536", label %"$have_gas_3537"

"$out_of_gas_3536":                               ; preds = %"$have_gas_3526"
  call void @_out_of_gas()
  br label %"$have_gas_3537"

"$have_gas_3537":                                 ; preds = %"$out_of_gas_3536", %"$have_gas_3526"
  %"$consume_3538" = sub i64 %"$gasrem_3534", 1
  store i64 %"$consume_3538", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3540" = icmp ugt i64 1, %"$gasrem_3539"
  br i1 %"$gascmp_3540", label %"$out_of_gas_3541", label %"$have_gas_3542"

"$out_of_gas_3541":                               ; preds = %"$have_gas_3537"
  call void @_out_of_gas()
  br label %"$have_gas_3542"

"$have_gas_3542":                                 ; preds = %"$out_of_gas_3541", %"$have_gas_3537"
  %"$consume_3543" = sub i64 %"$gasrem_3539", 1
  store i64 %"$consume_3543", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_70" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_3544" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_3545" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3544", 0
  %"$ud-registry.eConfigured_envptr_3546" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3544", 1
  %"$ud-registry.eConfigured_node_3547" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_3547", align 1
  %"$ud-registry.eConfigured_call_3548" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_3545"(i8* %"$ud-registry.eConfigured_envptr_3546", [32 x i8]* %"$ud-registry.eConfigured_node_3547"), !dbg !366
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_3548", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_70", align 8, !dbg !366
  %"$ud-registry.eConfigured_71" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_70_3549" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_70", align 8
  %"$$ud-registry.eConfigured_70_fptr_3550" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_70_3549", 0
  %"$$ud-registry.eConfigured_70_envptr_3551" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_70_3549", 1
  %"$$ud-registry.eConfigured_70_owner_3552" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_70_owner_3552", align 1
  %"$$ud-registry.eConfigured_70_call_3553" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_70_fptr_3550"(i8* %"$$ud-registry.eConfigured_70_envptr_3551", [20 x i8]* %"$$ud-registry.eConfigured_70_owner_3552"), !dbg !366
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_70_call_3553", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_71", align 8, !dbg !366
  %"$ud-registry.eConfigured_72" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_71_3554" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_71", align 8
  %"$$ud-registry.eConfigured_71_fptr_3555" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_71_3554", 0
  %"$$ud-registry.eConfigured_71_envptr_3556" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_71_3554", 1
  %"$$ud-registry.eConfigured_71_resolver_3557" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_71_resolver_3557", align 1
  %"$$ud-registry.eConfigured_71_call_3558" = call i8* %"$$ud-registry.eConfigured_71_fptr_3555"(i8* %"$$ud-registry.eConfigured_71_envptr_3556", [20 x i8]* %"$$ud-registry.eConfigured_71_resolver_3557"), !dbg !366
  store i8* %"$$ud-registry.eConfigured_71_call_3558", i8** %"$ud-registry.eConfigured_72", align 8, !dbg !366
  %"$$ud-registry.eConfigured_72_3559" = load i8*, i8** %"$ud-registry.eConfigured_72", align 8
  store i8* %"$$ud-registry.eConfigured_72_3559", i8** %e, align 8, !dbg !366
  %"$e_3560" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3562" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3560")
  %"$gasrem_3563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3564" = icmp ugt i64 %"$_literal_cost_call_3562", %"$gasrem_3563"
  br i1 %"$gascmp_3564", label %"$out_of_gas_3565", label %"$have_gas_3566"

"$out_of_gas_3565":                               ; preds = %"$have_gas_3542"
  call void @_out_of_gas()
  br label %"$have_gas_3566"

"$have_gas_3566":                                 ; preds = %"$out_of_gas_3565", %"$have_gas_3542"
  %"$consume_3567" = sub i64 %"$gasrem_3563", %"$_literal_cost_call_3562"
  store i64 %"$consume_3567", i64* @_gasrem, align 8
  %"$execptr_load_3568" = load i8*, i8** @_execptr, align 8
  %"$e_3569" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3568", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3569"), !dbg !367
  %"$gasrem_3570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3571" = icmp ugt i64 1, %"$gasrem_3570"
  br i1 %"$gascmp_3571", label %"$out_of_gas_3572", label %"$have_gas_3573"

"$out_of_gas_3572":                               ; preds = %"$have_gas_3566"
  call void @_out_of_gas()
  br label %"$have_gas_3573"

"$have_gas_3573":                                 ; preds = %"$out_of_gas_3572", %"$have_gas_3566"
  %"$consume_3574" = sub i64 %"$gasrem_3570", 1
  store i64 %"$consume_3574", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_3575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3576" = icmp ugt i64 1, %"$gasrem_3575"
  br i1 %"$gascmp_3576", label %"$out_of_gas_3577", label %"$have_gas_3578"

"$out_of_gas_3577":                               ; preds = %"$have_gas_3573"
  call void @_out_of_gas()
  br label %"$have_gas_3578"

"$have_gas_3578":                                 ; preds = %"$out_of_gas_3577", %"$have_gas_3573"
  %"$consume_3579" = sub i64 %"$gasrem_3575", 1
  store i64 %"$consume_3579", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_3580" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3581" = icmp ugt i64 1, %"$gasrem_3580"
  br i1 %"$gascmp_3581", label %"$out_of_gas_3582", label %"$have_gas_3583"

"$out_of_gas_3582":                               ; preds = %"$have_gas_3578"
  call void @_out_of_gas()
  br label %"$have_gas_3583"

"$have_gas_3583":                                 ; preds = %"$out_of_gas_3582", %"$have_gas_3578"
  %"$consume_3584" = sub i64 %"$gasrem_3580", 1
  store i64 %"$consume_3584", i64* @_gasrem, align 8
  %"$msgobj_3585_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_3585_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3585_salloc_load", i64 225)
  %"$msgobj_3585_salloc" = bitcast i8* %"$msgobj_3585_salloc_salloc" to [225 x i8]*
  %"$msgobj_3585" = bitcast [225 x i8]* %"$msgobj_3585_salloc" to i8*
  store i8 5, i8* %"$msgobj_3585", align 1
  %"$msgobj_fname_3587" = getelementptr i8, i8* %"$msgobj_3585", i32 1
  %"$msgobj_fname_3588" = bitcast i8* %"$msgobj_fname_3587" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3586", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3588", align 8
  %"$msgobj_td_3589" = getelementptr i8, i8* %"$msgobj_3585", i32 17
  %"$msgobj_td_3590" = bitcast i8* %"$msgobj_td_3589" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_3590", align 8
  %"$msgobj_v_3592" = getelementptr i8, i8* %"$msgobj_3585", i32 25
  %"$msgobj_v_3593" = bitcast i8* %"$msgobj_v_3592" to %String*
  store %String { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$stringlit_3591", i32 0, i32 0), i32 18 }, %String* %"$msgobj_v_3593", align 8
  %"$msgobj_fname_3595" = getelementptr i8, i8* %"$msgobj_3585", i32 41
  %"$msgobj_fname_3596" = bitcast i8* %"$msgobj_fname_3595" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3594", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3596", align 8
  %"$msgobj_td_3597" = getelementptr i8, i8* %"$msgobj_3585", i32 57
  %"$msgobj_td_3598" = bitcast i8* %"$msgobj_td_3597" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_3598", align 8
  %"$msgobj_v_3599" = getelementptr i8, i8* %"$msgobj_3585", i32 65
  %"$msgobj_v_3600" = bitcast i8* %"$msgobj_v_3599" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3600", align 1
  %"$msgobj_fname_3602" = getelementptr i8, i8* %"$msgobj_3585", i32 97
  %"$msgobj_fname_3603" = bitcast i8* %"$msgobj_fname_3602" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3601", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3603", align 8
  %"$msgobj_td_3604" = getelementptr i8, i8* %"$msgobj_3585", i32 113
  %"$msgobj_td_3605" = bitcast i8* %"$msgobj_td_3604" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_3605", align 8
  %"$msgobj_v_3606" = getelementptr i8, i8* %"$msgobj_3585", i32 121
  %"$msgobj_v_3607" = bitcast i8* %"$msgobj_v_3606" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_3607", align 1
  %"$msgobj_fname_3609" = getelementptr i8, i8* %"$msgobj_3585", i32 141
  %"$msgobj_fname_3610" = bitcast i8* %"$msgobj_fname_3609" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3608", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3610", align 8
  %"$msgobj_td_3611" = getelementptr i8, i8* %"$msgobj_3585", i32 157
  %"$msgobj_td_3612" = bitcast i8* %"$msgobj_td_3611" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_3612", align 8
  %"$msgobj_v_3613" = getelementptr i8, i8* %"$msgobj_3585", i32 165
  %"$msgobj_v_3614" = bitcast i8* %"$msgobj_v_3613" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3614", align 8
  %"$msgobj_fname_3616" = getelementptr i8, i8* %"$msgobj_3585", i32 181
  %"$msgobj_fname_3617" = bitcast i8* %"$msgobj_fname_3616" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3615", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3617", align 8
  %"$msgobj_td_3618" = getelementptr i8, i8* %"$msgobj_3585", i32 197
  %"$msgobj_td_3619" = bitcast i8* %"$msgobj_td_3618" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_3619", align 8
  %"$msgobj_v_3620" = getelementptr i8, i8* %"$msgobj_3585", i32 205
  %"$msgobj_v_3621" = bitcast i8* %"$msgobj_v_3620" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3621", align 1
  store i8* %"$msgobj_3585", i8** %m, align 8, !dbg !368
  %"$gasrem_3623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3624" = icmp ugt i64 1, %"$gasrem_3623"
  br i1 %"$gascmp_3624", label %"$out_of_gas_3625", label %"$have_gas_3626"

"$out_of_gas_3625":                               ; preds = %"$have_gas_3583"
  call void @_out_of_gas()
  br label %"$have_gas_3626"

"$have_gas_3626":                                 ; preds = %"$out_of_gas_3625", %"$have_gas_3583"
  %"$consume_3627" = sub i64 %"$gasrem_3623", 1
  store i64 %"$consume_3627", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_69" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_3628" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_3629" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3628", 0
  %"$ud-registry.oneMsg_envptr_3630" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3628", 1
  %"$m_3631" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_3632" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3629"(i8* %"$ud-registry.oneMsg_envptr_3630", i8* %"$m_3631"), !dbg !369
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3632", %TName_List_Message** %"$ud-registry.oneMsg_69", align 8, !dbg !369
  %"$$ud-registry.oneMsg_69_3633" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_69", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_69_3633", %TName_List_Message** %msgs, align 8, !dbg !369
  %"$msgs_3634" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_3634_3635" = bitcast %TName_List_Message* %"$msgs_3634" to i8*
  %"$_literal_cost_call_3636" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_3634_3635")
  %"$gasrem_3637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3638" = icmp ugt i64 %"$_literal_cost_call_3636", %"$gasrem_3637"
  br i1 %"$gascmp_3638", label %"$out_of_gas_3639", label %"$have_gas_3640"

"$out_of_gas_3639":                               ; preds = %"$have_gas_3626"
  call void @_out_of_gas()
  br label %"$have_gas_3640"

"$have_gas_3640":                                 ; preds = %"$out_of_gas_3639", %"$have_gas_3626"
  %"$consume_3641" = sub i64 %"$gasrem_3637", %"$_literal_cost_call_3636"
  store i64 %"$consume_3641", i64* @_gasrem, align 8
  %"$execptr_load_3642" = load i8*, i8** @_execptr, align 8
  %"$msgs_3643" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_3642", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_3643"), !dbg !370
  br label %"$matchsucc_3497"

"$False_3644":                                    ; preds = %"$have_gas_3495"
  %"$isSenderOAO_3645" = bitcast %TName_Bool* %"$isSenderOAO_3498" to %CName_False*
  %"$gasrem_3646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3647" = icmp ugt i64 1, %"$gasrem_3646"
  br i1 %"$gascmp_3647", label %"$out_of_gas_3648", label %"$have_gas_3649"

"$out_of_gas_3648":                               ; preds = %"$False_3644"
  call void @_out_of_gas()
  br label %"$have_gas_3649"

"$have_gas_3649":                                 ; preds = %"$out_of_gas_3648", %"$False_3644"
  %"$consume_3650" = sub i64 %"$gasrem_3646", 1
  store i64 %"$consume_3650", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_3651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3652" = icmp ugt i64 1, %"$gasrem_3651"
  br i1 %"$gascmp_3652", label %"$out_of_gas_3653", label %"$have_gas_3654"

"$out_of_gas_3653":                               ; preds = %"$have_gas_3649"
  call void @_out_of_gas()
  br label %"$have_gas_3654"

"$have_gas_3654":                                 ; preds = %"$out_of_gas_3653", %"$have_gas_3649"
  %"$consume_3655" = sub i64 %"$gasrem_3651", 1
  store i64 %"$consume_3655", i64* @_gasrem, align 8
  %m5 = alloca %String, align 8
  %"$gasrem_3656" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3657" = icmp ugt i64 1, %"$gasrem_3656"
  br i1 %"$gascmp_3657", label %"$out_of_gas_3658", label %"$have_gas_3659"

"$out_of_gas_3658":                               ; preds = %"$have_gas_3654"
  call void @_out_of_gas()
  br label %"$have_gas_3659"

"$have_gas_3659":                                 ; preds = %"$out_of_gas_3658", %"$have_gas_3654"
  %"$consume_3660" = sub i64 %"$gasrem_3656", 1
  store i64 %"$consume_3660", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_3661", i32 0, i32 0), i32 43 }, %String* %m5, align 8, !dbg !371
  %"$gasrem_3662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3663" = icmp ugt i64 1, %"$gasrem_3662"
  br i1 %"$gascmp_3663", label %"$out_of_gas_3664", label %"$have_gas_3665"

"$out_of_gas_3664":                               ; preds = %"$have_gas_3659"
  call void @_out_of_gas()
  br label %"$have_gas_3665"

"$have_gas_3665":                                 ; preds = %"$out_of_gas_3664", %"$have_gas_3659"
  %"$consume_3666" = sub i64 %"$gasrem_3662", 1
  store i64 %"$consume_3666", i64* @_gasrem, align 8
  %"$ud-registry.eError_74" = alloca i8*, align 8
  %"$ud-registry.eError_3667" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3668" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3667", 0
  %"$ud-registry.eError_envptr_3669" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3667", 1
  %"$m_3670" = load %String, %String* %m5, align 8
  %"$ud-registry.eError_call_3671" = call i8* %"$ud-registry.eError_fptr_3668"(i8* %"$ud-registry.eError_envptr_3669", %String %"$m_3670"), !dbg !373
  store i8* %"$ud-registry.eError_call_3671", i8** %"$ud-registry.eError_74", align 8, !dbg !373
  %"$$ud-registry.eError_74_3672" = load i8*, i8** %"$ud-registry.eError_74", align 8
  store i8* %"$$ud-registry.eError_74_3672", i8** %e4, align 8, !dbg !373
  %"$e_3673" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_3675" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3673")
  %"$gasrem_3676" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3677" = icmp ugt i64 %"$_literal_cost_call_3675", %"$gasrem_3676"
  br i1 %"$gascmp_3677", label %"$out_of_gas_3678", label %"$have_gas_3679"

"$out_of_gas_3678":                               ; preds = %"$have_gas_3665"
  call void @_out_of_gas()
  br label %"$have_gas_3679"

"$have_gas_3679":                                 ; preds = %"$out_of_gas_3678", %"$have_gas_3665"
  %"$consume_3680" = sub i64 %"$gasrem_3676", %"$_literal_cost_call_3675"
  store i64 %"$consume_3680", i64* @_gasrem, align 8
  %"$execptr_load_3681" = load i8*, i8** @_execptr, align 8
  %"$e_3682" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_3681", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3682"), !dbg !374
  %"$gasrem_3683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3684" = icmp ugt i64 1, %"$gasrem_3683"
  br i1 %"$gascmp_3684", label %"$out_of_gas_3685", label %"$have_gas_3686"

"$out_of_gas_3685":                               ; preds = %"$have_gas_3679"
  call void @_out_of_gas()
  br label %"$have_gas_3686"

"$have_gas_3686":                                 ; preds = %"$out_of_gas_3685", %"$have_gas_3679"
  %"$consume_3687" = sub i64 %"$gasrem_3683", 1
  store i64 %"$consume_3687", i64* @_gasrem, align 8
  %msgs6 = alloca %TName_List_Message*, align 8
  %"$gasrem_3688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3689" = icmp ugt i64 1, %"$gasrem_3688"
  br i1 %"$gascmp_3689", label %"$out_of_gas_3690", label %"$have_gas_3691"

"$out_of_gas_3690":                               ; preds = %"$have_gas_3686"
  call void @_out_of_gas()
  br label %"$have_gas_3691"

"$have_gas_3691":                                 ; preds = %"$out_of_gas_3690", %"$have_gas_3686"
  %"$consume_3692" = sub i64 %"$gasrem_3688", 1
  store i64 %"$consume_3692", i64* @_gasrem, align 8
  %"$m_0" = alloca i8*, align 8
  %"$gasrem_3693" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3694" = icmp ugt i64 1, %"$gasrem_3693"
  br i1 %"$gascmp_3694", label %"$out_of_gas_3695", label %"$have_gas_3696"

"$out_of_gas_3695":                               ; preds = %"$have_gas_3691"
  call void @_out_of_gas()
  br label %"$have_gas_3696"

"$have_gas_3696":                                 ; preds = %"$out_of_gas_3695", %"$have_gas_3691"
  %"$consume_3697" = sub i64 %"$gasrem_3693", 1
  store i64 %"$consume_3697", i64* @_gasrem, align 8
  %"$msgobj_3698_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_3698_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3698_salloc_load", i64 225)
  %"$msgobj_3698_salloc" = bitcast i8* %"$msgobj_3698_salloc_salloc" to [225 x i8]*
  %"$msgobj_3698" = bitcast [225 x i8]* %"$msgobj_3698_salloc" to i8*
  store i8 5, i8* %"$msgobj_3698", align 1
  %"$msgobj_fname_3700" = getelementptr i8, i8* %"$msgobj_3698", i32 1
  %"$msgobj_fname_3701" = bitcast i8* %"$msgobj_fname_3700" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3699", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3701", align 8
  %"$msgobj_td_3702" = getelementptr i8, i8* %"$msgobj_3698", i32 17
  %"$msgobj_td_3703" = bitcast i8* %"$msgobj_td_3702" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_3703", align 8
  %"$msgobj_v_3705" = getelementptr i8, i8* %"$msgobj_3698", i32 25
  %"$msgobj_v_3706" = bitcast i8* %"$msgobj_v_3705" to %String*
  store %String { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$stringlit_3704", i32 0, i32 0), i32 18 }, %String* %"$msgobj_v_3706", align 8
  %"$msgobj_fname_3708" = getelementptr i8, i8* %"$msgobj_3698", i32 41
  %"$msgobj_fname_3709" = bitcast i8* %"$msgobj_fname_3708" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3707", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3709", align 8
  %"$msgobj_td_3710" = getelementptr i8, i8* %"$msgobj_3698", i32 57
  %"$msgobj_td_3711" = bitcast i8* %"$msgobj_td_3710" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_3711", align 8
  %"$msgobj_v_3712" = getelementptr i8, i8* %"$msgobj_3698", i32 65
  %"$msgobj_v_3713" = bitcast i8* %"$msgobj_v_3712" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3713", align 1
  %"$msgobj_fname_3715" = getelementptr i8, i8* %"$msgobj_3698", i32 97
  %"$msgobj_fname_3716" = bitcast i8* %"$msgobj_fname_3715" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3714", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3716", align 8
  %"$msgobj_td_3717" = getelementptr i8, i8* %"$msgobj_3698", i32 113
  %"$msgobj_td_3718" = bitcast i8* %"$msgobj_td_3717" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_3718", align 8
  %"$recordOwner_3719" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$msgobj_v_3720" = getelementptr i8, i8* %"$msgobj_3698", i32 121
  %"$msgobj_v_3721" = bitcast i8* %"$msgobj_v_3720" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3719", [20 x i8]* %"$msgobj_v_3721", align 1
  %"$msgobj_fname_3723" = getelementptr i8, i8* %"$msgobj_3698", i32 141
  %"$msgobj_fname_3724" = bitcast i8* %"$msgobj_fname_3723" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3722", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3724", align 8
  %"$msgobj_td_3725" = getelementptr i8, i8* %"$msgobj_3698", i32 157
  %"$msgobj_td_3726" = bitcast i8* %"$msgobj_td_3725" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_3726", align 8
  %"$msgobj_v_3727" = getelementptr i8, i8* %"$msgobj_3698", i32 165
  %"$msgobj_v_3728" = bitcast i8* %"$msgobj_v_3727" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3728", align 8
  %"$msgobj_fname_3730" = getelementptr i8, i8* %"$msgobj_3698", i32 181
  %"$msgobj_fname_3731" = bitcast i8* %"$msgobj_fname_3730" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3729", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3731", align 8
  %"$msgobj_td_3732" = getelementptr i8, i8* %"$msgobj_3698", i32 197
  %"$msgobj_td_3733" = bitcast i8* %"$msgobj_td_3732" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_3733", align 8
  %"$msgobj_v_3734" = getelementptr i8, i8* %"$msgobj_3698", i32 205
  %"$msgobj_v_3735" = bitcast i8* %"$msgobj_v_3734" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3735", align 1
  store i8* %"$msgobj_3698", i8** %"$m_0", align 8, !dbg !375
  %"$gasrem_3737" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3738" = icmp ugt i64 1, %"$gasrem_3737"
  br i1 %"$gascmp_3738", label %"$out_of_gas_3739", label %"$have_gas_3740"

"$out_of_gas_3739":                               ; preds = %"$have_gas_3696"
  call void @_out_of_gas()
  br label %"$have_gas_3740"

"$have_gas_3740":                                 ; preds = %"$out_of_gas_3739", %"$have_gas_3696"
  %"$consume_3741" = sub i64 %"$gasrem_3737", 1
  store i64 %"$consume_3741", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_73" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_3742" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_3743" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3742", 0
  %"$ud-registry.oneMsg_envptr_3744" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3742", 1
  %"$$m_0_3745" = load i8*, i8** %"$m_0", align 8
  %"$ud-registry.oneMsg_call_3746" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3743"(i8* %"$ud-registry.oneMsg_envptr_3744", i8* %"$$m_0_3745"), !dbg !376
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3746", %TName_List_Message** %"$ud-registry.oneMsg_73", align 8, !dbg !376
  %"$$ud-registry.oneMsg_73_3747" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_73", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_73_3747", %TName_List_Message** %msgs6, align 8, !dbg !376
  %"$msgs_3748" = load %TName_List_Message*, %TName_List_Message** %msgs6, align 8
  %"$$msgs_3748_3749" = bitcast %TName_List_Message* %"$msgs_3748" to i8*
  %"$_literal_cost_call_3750" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_3748_3749")
  %"$gasrem_3751" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3752" = icmp ugt i64 %"$_literal_cost_call_3750", %"$gasrem_3751"
  br i1 %"$gascmp_3752", label %"$out_of_gas_3753", label %"$have_gas_3754"

"$out_of_gas_3753":                               ; preds = %"$have_gas_3740"
  call void @_out_of_gas()
  br label %"$have_gas_3754"

"$have_gas_3754":                                 ; preds = %"$out_of_gas_3753", %"$have_gas_3740"
  %"$consume_3755" = sub i64 %"$gasrem_3751", %"$_literal_cost_call_3750"
  store i64 %"$consume_3755", i64* @_gasrem, align 8
  %"$execptr_load_3756" = load i8*, i8** @_execptr, align 8
  %"$msgs_3757" = load %TName_List_Message*, %TName_List_Message** %msgs6, align 8
  call void @_send(i8* %"$execptr_load_3756", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_3757"), !dbg !377
  br label %"$matchsucc_3497"

"$empty_default_3501":                            ; preds = %"$have_gas_3495"
  br label %"$matchsucc_3497"

"$matchsucc_3497":                                ; preds = %"$have_gas_3754", %"$have_gas_3640", %"$empty_default_3501"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @configureNode(i8* %0) !dbg !378 {
entry:
  %"$_amount_3759" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3760" = bitcast i8* %"$_amount_3759" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3760", align 8
  %"$_origin_3761" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3762" = bitcast i8* %"$_origin_3761" to [20 x i8]*
  %"$_sender_3763" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3764" = bitcast i8* %"$_sender_3763" to [20 x i8]*
  %"$node_3765" = getelementptr i8, i8* %0, i32 56
  %"$node_3766" = bitcast i8* %"$node_3765" to [32 x i8]*
  %"$owner_3767" = getelementptr i8, i8* %0, i32 88
  %"$owner_3768" = bitcast i8* %"$owner_3767" to [20 x i8]*
  %"$resolver_3769" = getelementptr i8, i8* %0, i32 108
  %"$resolver_3770" = bitcast i8* %"$resolver_3769" to [20 x i8]*
  call void @"$configureNode_3388"(%Uint128 %_amount, [20 x i8]* %"$_origin_3762", [20 x i8]* %"$_sender_3764", [32 x i8]* %"$node_3766", [20 x i8]* %"$owner_3768", [20 x i8]* %"$resolver_3770"), !dbg !379
  ret void
}

define internal void @"$configureResolver_3771"(%Uint128 %_amount, [20 x i8]* %"$_origin_3772", [20 x i8]* %"$_sender_3773", [32 x i8]* %"$node_3774", [20 x i8]* %"$resolver_3775") !dbg !380 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3772", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3773", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_3774", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_3775", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3776_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3776_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3776_salloc_load", i64 32)
  %"$indices_buf_3776_salloc" = bitcast i8* %"$indices_buf_3776_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3776" = bitcast [32 x i8]* %"$indices_buf_3776_salloc" to i8*
  %"$indices_gep_3777" = getelementptr i8, i8* %"$indices_buf_3776", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3777" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3779" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_3780" = call i8* @_fetch_field(i8* %"$execptr_load_3779", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3778", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_3776", i32 1), !dbg !381
  %"$maybeRecord_3781" = bitcast i8* %"$maybeRecord_call_3780" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3781", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3782" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3782_3783" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3782" to i8*
  %"$_literal_cost_call_3784" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_3782_3783")
  %"$gasadd_3785" = add i64 %"$_literal_cost_call_3784", 0
  %"$gasadd_3786" = add i64 %"$gasadd_3785", 1
  %"$gasrem_3787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3788" = icmp ugt i64 %"$gasadd_3786", %"$gasrem_3787"
  br i1 %"$gascmp_3788", label %"$out_of_gas_3789", label %"$have_gas_3790"

"$out_of_gas_3789":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3790"

"$have_gas_3790":                                 ; preds = %"$out_of_gas_3789", %entry
  %"$consume_3791" = sub i64 %"$gasrem_3787", %"$gasadd_3786"
  store i64 %"$consume_3791", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3792_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3792_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3792_salloc_load", i64 32)
  %"$indices_buf_3792_salloc" = bitcast i8* %"$indices_buf_3792_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3792" = bitcast [32 x i8]* %"$indices_buf_3792_salloc" to i8*
  %"$indices_gep_3793" = getelementptr i8, i8* %"$indices_buf_3792", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3793" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_3795" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_3796" = call i8* @_fetch_field(i8* %"$execptr_load_3795", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3794", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_3792", i32 1), !dbg !382
  %"$maybeApproved_3797" = bitcast i8* %"$maybeApproved_call_3796" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3797", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3798" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3798_3799" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3798" to i8*
  %"$_literal_cost_call_3800" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_3798_3799")
  %"$gasadd_3801" = add i64 %"$_literal_cost_call_3800", 0
  %"$gasadd_3802" = add i64 %"$gasadd_3801", 1
  %"$gasrem_3803" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3804" = icmp ugt i64 %"$gasadd_3802", %"$gasrem_3803"
  br i1 %"$gascmp_3804", label %"$out_of_gas_3805", label %"$have_gas_3806"

"$out_of_gas_3805":                               ; preds = %"$have_gas_3790"
  call void @_out_of_gas()
  br label %"$have_gas_3806"

"$have_gas_3806":                                 ; preds = %"$out_of_gas_3805", %"$have_gas_3790"
  %"$consume_3807" = sub i64 %"$gasrem_3803", %"$gasadd_3802"
  store i64 %"$consume_3807", i64* @_gasrem, align 8
  %"$gasrem_3808" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3809" = icmp ugt i64 1, %"$gasrem_3808"
  br i1 %"$gascmp_3809", label %"$out_of_gas_3810", label %"$have_gas_3811"

"$out_of_gas_3810":                               ; preds = %"$have_gas_3806"
  call void @_out_of_gas()
  br label %"$have_gas_3811"

"$have_gas_3811":                                 ; preds = %"$out_of_gas_3810", %"$have_gas_3806"
  %"$consume_3812" = sub i64 %"$gasrem_3808", 1
  store i64 %"$consume_3812", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3814" = icmp ugt i64 1, %"$gasrem_3813"
  br i1 %"$gascmp_3814", label %"$out_of_gas_3815", label %"$have_gas_3816"

"$out_of_gas_3815":                               ; preds = %"$have_gas_3811"
  call void @_out_of_gas()
  br label %"$have_gas_3816"

"$have_gas_3816":                                 ; preds = %"$out_of_gas_3815", %"$have_gas_3811"
  %"$consume_3817" = sub i64 %"$gasrem_3813", 1
  store i64 %"$consume_3817", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_88" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3818" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3819" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3818", 0
  %"$ud-registry.recordMemberOwner_envptr_3820" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3818", 1
  %"$maybeRecord_3821" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3822" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3819"(i8* %"$ud-registry.recordMemberOwner_envptr_3820", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3822", %TName_Option_ud-registry.Record* %"$maybeRecord_3821"), !dbg !383
  %"$ud-registry.recordMemberOwner_ret_3823" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3822", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3823", [20 x i8]* %"$ud-registry.recordMemberOwner_88", align 1, !dbg !383
  %"$$ud-registry.recordMemberOwner_88_3824" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_88", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_88_3824", [20 x i8]* %recordOwner, align 1, !dbg !383
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3825_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3825_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3825_salloc_load", i64 20)
  %"$indices_buf_3825_salloc" = bitcast i8* %"$indices_buf_3825_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3825" = bitcast [20 x i8]* %"$indices_buf_3825_salloc" to i8*
  %"$recordOwner_3826" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_3827" = getelementptr i8, i8* %"$indices_buf_3825", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3827" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3826", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_3829" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3830" = call i8* @_fetch_field(i8* %"$execptr_load_3829", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3828", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_3825", i32 1), !dbg !384
  %"$maybeOperators_3831" = bitcast i8* %"$maybeOperators_call_3830" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3831", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3832" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3832_3833" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3832" to i8*
  %"$_literal_cost_call_3834" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", i8* %"$$maybeOperators_3832_3833")
  %"$gasadd_3835" = add i64 %"$_literal_cost_call_3834", 0
  %"$gasadd_3836" = add i64 %"$gasadd_3835", 1
  %"$gasrem_3837" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3838" = icmp ugt i64 %"$gasadd_3836", %"$gasrem_3837"
  br i1 %"$gascmp_3838", label %"$out_of_gas_3839", label %"$have_gas_3840"

"$out_of_gas_3839":                               ; preds = %"$have_gas_3816"
  call void @_out_of_gas()
  br label %"$have_gas_3840"

"$have_gas_3840":                                 ; preds = %"$out_of_gas_3839", %"$have_gas_3816"
  %"$consume_3841" = sub i64 %"$gasrem_3837", %"$gasadd_3836"
  store i64 %"$consume_3841", i64* @_gasrem, align 8
  %"$gasrem_3842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3843" = icmp ugt i64 1, %"$gasrem_3842"
  br i1 %"$gascmp_3843", label %"$out_of_gas_3844", label %"$have_gas_3845"

"$out_of_gas_3844":                               ; preds = %"$have_gas_3840"
  call void @_out_of_gas()
  br label %"$have_gas_3845"

"$have_gas_3845":                                 ; preds = %"$out_of_gas_3844", %"$have_gas_3840"
  %"$consume_3846" = sub i64 %"$gasrem_3842", 1
  store i64 %"$consume_3846", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_3847" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3848" = icmp ugt i64 1, %"$gasrem_3847"
  br i1 %"$gascmp_3848", label %"$out_of_gas_3849", label %"$have_gas_3850"

"$out_of_gas_3849":                               ; preds = %"$have_gas_3845"
  call void @_out_of_gas()
  br label %"$have_gas_3850"

"$have_gas_3850":                                 ; preds = %"$out_of_gas_3849", %"$have_gas_3845"
  %"$consume_3851" = sub i64 %"$gasrem_3847", 1
  store i64 %"$consume_3851", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_84" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_3852" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_3853" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3852", 0
  %"$ud-registry.getIsOAO_envptr_3854" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3852", 1
  %"$ud-registry.getIsOAO__sender_3855" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3855", align 1
  %"$ud-registry.getIsOAO_call_3856" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_3853"(i8* %"$ud-registry.getIsOAO_envptr_3854", [20 x i8]* %"$ud-registry.getIsOAO__sender_3855"), !dbg !385
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_3856", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_84", align 8, !dbg !385
  %"$ud-registry.getIsOAO_85" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_84_3857" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_84", align 8
  %"$$ud-registry.getIsOAO_84_fptr_3858" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_84_3857", 0
  %"$$ud-registry.getIsOAO_84_envptr_3859" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_84_3857", 1
  %"$$ud-registry.getIsOAO_84_recordOwner_3860" = alloca [20 x i8], align 1
  %"$recordOwner_3861" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3861", [20 x i8]* %"$$ud-registry.getIsOAO_84_recordOwner_3860", align 1
  %"$$ud-registry.getIsOAO_84_call_3862" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_84_fptr_3858"(i8* %"$$ud-registry.getIsOAO_84_envptr_3859", [20 x i8]* %"$$ud-registry.getIsOAO_84_recordOwner_3860"), !dbg !385
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_84_call_3862", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_85", align 8, !dbg !385
  %"$ud-registry.getIsOAO_86" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_85_3863" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_85", align 8
  %"$$ud-registry.getIsOAO_85_fptr_3864" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_85_3863", 0
  %"$$ud-registry.getIsOAO_85_envptr_3865" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_85_3863", 1
  %"$maybeApproved_3866" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_85_call_3867" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_85_fptr_3864"(i8* %"$$ud-registry.getIsOAO_85_envptr_3865", %TName_Option_ByStr20* %"$maybeApproved_3866"), !dbg !385
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_85_call_3867", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_86", align 8, !dbg !385
  %"$ud-registry.getIsOAO_87" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_86_3868" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_86", align 8
  %"$$ud-registry.getIsOAO_86_fptr_3869" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_86_3868", 0
  %"$$ud-registry.getIsOAO_86_envptr_3870" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_86_3868", 1
  %"$maybeOperators_3871" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_86_call_3872" = call %TName_Bool* %"$$ud-registry.getIsOAO_86_fptr_3869"(i8* %"$$ud-registry.getIsOAO_86_envptr_3870", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3871"), !dbg !385
  store %TName_Bool* %"$$ud-registry.getIsOAO_86_call_3872", %TName_Bool** %"$ud-registry.getIsOAO_87", align 8, !dbg !385
  %"$$ud-registry.getIsOAO_87_3873" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_87", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_87_3873", %TName_Bool** %isSenderOAO, align 8, !dbg !385
  %"$gasrem_3874" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3875" = icmp ugt i64 2, %"$gasrem_3874"
  br i1 %"$gascmp_3875", label %"$out_of_gas_3876", label %"$have_gas_3877"

"$out_of_gas_3876":                               ; preds = %"$have_gas_3850"
  call void @_out_of_gas()
  br label %"$have_gas_3877"

"$have_gas_3877":                                 ; preds = %"$out_of_gas_3876", %"$have_gas_3850"
  %"$consume_3878" = sub i64 %"$gasrem_3874", 2
  store i64 %"$consume_3878", i64* @_gasrem, align 8
  %"$isSenderOAO_3880" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_3881" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3880", i32 0, i32 0
  %"$isSenderOAO_tag_3882" = load i8, i8* %"$isSenderOAO_tag_3881", align 1
  switch i8 %"$isSenderOAO_tag_3882", label %"$empty_default_3883" [
    i8 0, label %"$True_3884"
    i8 1, label %"$False_3954"
  ], !dbg !386

"$True_3884":                                     ; preds = %"$have_gas_3877"
  %"$isSenderOAO_3885" = bitcast %TName_Bool* %"$isSenderOAO_3880" to %CName_True*
  %"$gasrem_3886" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3887" = icmp ugt i64 1, %"$gasrem_3886"
  br i1 %"$gascmp_3887", label %"$out_of_gas_3888", label %"$have_gas_3889"

"$out_of_gas_3888":                               ; preds = %"$True_3884"
  call void @_out_of_gas()
  br label %"$have_gas_3889"

"$have_gas_3889":                                 ; preds = %"$out_of_gas_3888", %"$True_3884"
  %"$consume_3890" = sub i64 %"$gasrem_3886", 1
  store i64 %"$consume_3890", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_3891" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3892" = icmp ugt i64 1, %"$gasrem_3891"
  br i1 %"$gascmp_3892", label %"$out_of_gas_3893", label %"$have_gas_3894"

"$out_of_gas_3893":                               ; preds = %"$have_gas_3889"
  call void @_out_of_gas()
  br label %"$have_gas_3894"

"$have_gas_3894":                                 ; preds = %"$out_of_gas_3893", %"$have_gas_3889"
  %"$consume_3895" = sub i64 %"$gasrem_3891", 1
  store i64 %"$consume_3895", i64* @_gasrem, align 8
  %"$recordOwner_3896" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$adtval_3897_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3897_salloc" = call i8* @_salloc(i8* %"$adtval_3897_load", i64 41)
  %"$adtval_3897" = bitcast i8* %"$adtval_3897_salloc" to %CName_ud-registry.Record*
  %"$adtgep_3898" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3897", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3898", align 1
  %"$adtgep_3899" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3897", i32 0, i32 1
  store [20 x i8] %"$recordOwner_3896", [20 x i8]* %"$adtgep_3899", align 1
  %"$adtgep_3900" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3897", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_3900", align 1
  %"$adtptr_3901" = bitcast %CName_ud-registry.Record* %"$adtval_3897" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_3901", %TName_ud-registry.Record** %newRecord, align 8, !dbg !387
  %"$newRecord_3902" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_3902_3903" = bitcast %TName_ud-registry.Record* %"$newRecord_3902" to i8*
  %"$_literal_cost_call_3904" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", i8* %"$$newRecord_3902_3903")
  %"$gasadd_3905" = add i64 %"$_literal_cost_call_3904", 1
  %"$gasrem_3906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3907" = icmp ugt i64 %"$gasadd_3905", %"$gasrem_3906"
  br i1 %"$gascmp_3907", label %"$out_of_gas_3908", label %"$have_gas_3909"

"$out_of_gas_3908":                               ; preds = %"$have_gas_3894"
  call void @_out_of_gas()
  br label %"$have_gas_3909"

"$have_gas_3909":                                 ; preds = %"$out_of_gas_3908", %"$have_gas_3894"
  %"$consume_3910" = sub i64 %"$gasrem_3906", %"$gasadd_3905"
  store i64 %"$consume_3910", i64* @_gasrem, align 8
  %"$indices_buf_3911_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3911_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3911_salloc_load", i64 32)
  %"$indices_buf_3911_salloc" = bitcast i8* %"$indices_buf_3911_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3911" = bitcast [32 x i8]* %"$indices_buf_3911_salloc" to i8*
  %"$indices_gep_3912" = getelementptr i8, i8* %"$indices_buf_3911", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_3912" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_3913" = load i8*, i8** @_execptr, align 8
  %"$newRecord_3915" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_3916" = bitcast %TName_ud-registry.Record* %"$newRecord_3915" to i8*
  call void @_update_field(i8* %"$execptr_load_3913", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3914", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_3911", i8* %"$update_value_3916"), !dbg !390
  %"$gasrem_3917" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3918" = icmp ugt i64 1, %"$gasrem_3917"
  br i1 %"$gascmp_3918", label %"$out_of_gas_3919", label %"$have_gas_3920"

"$out_of_gas_3919":                               ; preds = %"$have_gas_3909"
  call void @_out_of_gas()
  br label %"$have_gas_3920"

"$have_gas_3920":                                 ; preds = %"$out_of_gas_3919", %"$have_gas_3909"
  %"$consume_3921" = sub i64 %"$gasrem_3917", 1
  store i64 %"$consume_3921", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3923" = icmp ugt i64 1, %"$gasrem_3922"
  br i1 %"$gascmp_3923", label %"$out_of_gas_3924", label %"$have_gas_3925"

"$out_of_gas_3924":                               ; preds = %"$have_gas_3920"
  call void @_out_of_gas()
  br label %"$have_gas_3925"

"$have_gas_3925":                                 ; preds = %"$out_of_gas_3924", %"$have_gas_3920"
  %"$consume_3926" = sub i64 %"$gasrem_3922", 1
  store i64 %"$consume_3926", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_80" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_3927" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_3928" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3927", 0
  %"$ud-registry.eConfigured_envptr_3929" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3927", 1
  %"$ud-registry.eConfigured_node_3930" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_3930", align 1
  %"$ud-registry.eConfigured_call_3931" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_3928"(i8* %"$ud-registry.eConfigured_envptr_3929", [32 x i8]* %"$ud-registry.eConfigured_node_3930"), !dbg !391
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_3931", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_80", align 8, !dbg !391
  %"$ud-registry.eConfigured_81" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_80_3932" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_80", align 8
  %"$$ud-registry.eConfigured_80_fptr_3933" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_80_3932", 0
  %"$$ud-registry.eConfigured_80_envptr_3934" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_80_3932", 1
  %"$$ud-registry.eConfigured_80_recordOwner_3935" = alloca [20 x i8], align 1
  %"$recordOwner_3936" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3936", [20 x i8]* %"$$ud-registry.eConfigured_80_recordOwner_3935", align 1
  %"$$ud-registry.eConfigured_80_call_3937" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_80_fptr_3933"(i8* %"$$ud-registry.eConfigured_80_envptr_3934", [20 x i8]* %"$$ud-registry.eConfigured_80_recordOwner_3935"), !dbg !391
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_80_call_3937", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_81", align 8, !dbg !391
  %"$ud-registry.eConfigured_82" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_81_3938" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_81", align 8
  %"$$ud-registry.eConfigured_81_fptr_3939" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_81_3938", 0
  %"$$ud-registry.eConfigured_81_envptr_3940" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_81_3938", 1
  %"$$ud-registry.eConfigured_81_resolver_3941" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_81_resolver_3941", align 1
  %"$$ud-registry.eConfigured_81_call_3942" = call i8* %"$$ud-registry.eConfigured_81_fptr_3939"(i8* %"$$ud-registry.eConfigured_81_envptr_3940", [20 x i8]* %"$$ud-registry.eConfigured_81_resolver_3941"), !dbg !391
  store i8* %"$$ud-registry.eConfigured_81_call_3942", i8** %"$ud-registry.eConfigured_82", align 8, !dbg !391
  %"$$ud-registry.eConfigured_82_3943" = load i8*, i8** %"$ud-registry.eConfigured_82", align 8
  store i8* %"$$ud-registry.eConfigured_82_3943", i8** %e, align 8, !dbg !391
  %"$e_3944" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3946" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3944")
  %"$gasrem_3947" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3948" = icmp ugt i64 %"$_literal_cost_call_3946", %"$gasrem_3947"
  br i1 %"$gascmp_3948", label %"$out_of_gas_3949", label %"$have_gas_3950"

"$out_of_gas_3949":                               ; preds = %"$have_gas_3925"
  call void @_out_of_gas()
  br label %"$have_gas_3950"

"$have_gas_3950":                                 ; preds = %"$out_of_gas_3949", %"$have_gas_3925"
  %"$consume_3951" = sub i64 %"$gasrem_3947", %"$_literal_cost_call_3946"
  store i64 %"$consume_3951", i64* @_gasrem, align 8
  %"$execptr_load_3952" = load i8*, i8** @_execptr, align 8
  %"$e_3953" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3952", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3953"), !dbg !392
  br label %"$matchsucc_3879"

"$False_3954":                                    ; preds = %"$have_gas_3877"
  %"$isSenderOAO_3955" = bitcast %TName_Bool* %"$isSenderOAO_3880" to %CName_False*
  %"$gasrem_3956" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3957" = icmp ugt i64 1, %"$gasrem_3956"
  br i1 %"$gascmp_3957", label %"$out_of_gas_3958", label %"$have_gas_3959"

"$out_of_gas_3958":                               ; preds = %"$False_3954"
  call void @_out_of_gas()
  br label %"$have_gas_3959"

"$have_gas_3959":                                 ; preds = %"$out_of_gas_3958", %"$False_3954"
  %"$consume_3960" = sub i64 %"$gasrem_3956", 1
  store i64 %"$consume_3960", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_3961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3962" = icmp ugt i64 1, %"$gasrem_3961"
  br i1 %"$gascmp_3962", label %"$out_of_gas_3963", label %"$have_gas_3964"

"$out_of_gas_3963":                               ; preds = %"$have_gas_3959"
  call void @_out_of_gas()
  br label %"$have_gas_3964"

"$have_gas_3964":                                 ; preds = %"$out_of_gas_3963", %"$have_gas_3959"
  %"$consume_3965" = sub i64 %"$gasrem_3961", 1
  store i64 %"$consume_3965", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_3966" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3967" = icmp ugt i64 1, %"$gasrem_3966"
  br i1 %"$gascmp_3967", label %"$out_of_gas_3968", label %"$have_gas_3969"

"$out_of_gas_3968":                               ; preds = %"$have_gas_3964"
  call void @_out_of_gas()
  br label %"$have_gas_3969"

"$have_gas_3969":                                 ; preds = %"$out_of_gas_3968", %"$have_gas_3964"
  %"$consume_3970" = sub i64 %"$gasrem_3966", 1
  store i64 %"$consume_3970", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_3971", i32 0, i32 0), i32 43 }, %String* %m, align 8, !dbg !393
  %"$gasrem_3972" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3973" = icmp ugt i64 1, %"$gasrem_3972"
  br i1 %"$gascmp_3973", label %"$out_of_gas_3974", label %"$have_gas_3975"

"$out_of_gas_3974":                               ; preds = %"$have_gas_3969"
  call void @_out_of_gas()
  br label %"$have_gas_3975"

"$have_gas_3975":                                 ; preds = %"$out_of_gas_3974", %"$have_gas_3969"
  %"$consume_3976" = sub i64 %"$gasrem_3972", 1
  store i64 %"$consume_3976", i64* @_gasrem, align 8
  %"$ud-registry.eError_83" = alloca i8*, align 8
  %"$ud-registry.eError_3977" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3978" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3977", 0
  %"$ud-registry.eError_envptr_3979" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3977", 1
  %"$m_3980" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_3981" = call i8* %"$ud-registry.eError_fptr_3978"(i8* %"$ud-registry.eError_envptr_3979", %String %"$m_3980"), !dbg !395
  store i8* %"$ud-registry.eError_call_3981", i8** %"$ud-registry.eError_83", align 8, !dbg !395
  %"$$ud-registry.eError_83_3982" = load i8*, i8** %"$ud-registry.eError_83", align 8
  store i8* %"$$ud-registry.eError_83_3982", i8** %e4, align 8, !dbg !395
  %"$e_3983" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_3985" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3983")
  %"$gasrem_3986" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3987" = icmp ugt i64 %"$_literal_cost_call_3985", %"$gasrem_3986"
  br i1 %"$gascmp_3987", label %"$out_of_gas_3988", label %"$have_gas_3989"

"$out_of_gas_3988":                               ; preds = %"$have_gas_3975"
  call void @_out_of_gas()
  br label %"$have_gas_3989"

"$have_gas_3989":                                 ; preds = %"$out_of_gas_3988", %"$have_gas_3975"
  %"$consume_3990" = sub i64 %"$gasrem_3986", %"$_literal_cost_call_3985"
  store i64 %"$consume_3990", i64* @_gasrem, align 8
  %"$execptr_load_3991" = load i8*, i8** @_execptr, align 8
  %"$e_3992" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_3991", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3992"), !dbg !396
  br label %"$matchsucc_3879"

"$empty_default_3883":                            ; preds = %"$have_gas_3877"
  br label %"$matchsucc_3879"

"$matchsucc_3879":                                ; preds = %"$have_gas_3989", %"$have_gas_3950", %"$empty_default_3883"
  ret void
}

define void @configureResolver(i8* %0) !dbg !397 {
entry:
  %"$_amount_3994" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3995" = bitcast i8* %"$_amount_3994" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3995", align 8
  %"$_origin_3996" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3997" = bitcast i8* %"$_origin_3996" to [20 x i8]*
  %"$_sender_3998" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3999" = bitcast i8* %"$_sender_3998" to [20 x i8]*
  %"$node_4000" = getelementptr i8, i8* %0, i32 56
  %"$node_4001" = bitcast i8* %"$node_4000" to [32 x i8]*
  %"$resolver_4002" = getelementptr i8, i8* %0, i32 88
  %"$resolver_4003" = bitcast i8* %"$resolver_4002" to [20 x i8]*
  call void @"$configureResolver_3771"(%Uint128 %_amount, [20 x i8]* %"$_origin_3997", [20 x i8]* %"$_sender_3999", [32 x i8]* %"$node_4001", [20 x i8]* %"$resolver_4003"), !dbg !398
  ret void
}

define internal void @"$transfer_4004"(%Uint128 %_amount, [20 x i8]* %"$_origin_4005", [20 x i8]* %"$_sender_4006", [32 x i8]* %"$node_4007", [20 x i8]* %"$owner_4008") !dbg !399 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4005", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4006", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_4007", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_4008", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_4009_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4009_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4009_salloc_load", i64 32)
  %"$indices_buf_4009_salloc" = bitcast i8* %"$indices_buf_4009_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4009" = bitcast [32 x i8]* %"$indices_buf_4009_salloc" to i8*
  %"$indices_gep_4010" = getelementptr i8, i8* %"$indices_buf_4009", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4010" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4012" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_4013" = call i8* @_fetch_field(i8* %"$execptr_load_4012", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4011", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4009", i32 1), !dbg !400
  %"$maybeRecord_4014" = bitcast i8* %"$maybeRecord_call_4013" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4014", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_4015" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_4015_4016" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4015" to i8*
  %"$_literal_cost_call_4017" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_4015_4016")
  %"$gasadd_4018" = add i64 %"$_literal_cost_call_4017", 0
  %"$gasadd_4019" = add i64 %"$gasadd_4018", 1
  %"$gasrem_4020" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4021" = icmp ugt i64 %"$gasadd_4019", %"$gasrem_4020"
  br i1 %"$gascmp_4021", label %"$out_of_gas_4022", label %"$have_gas_4023"

"$out_of_gas_4022":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4023"

"$have_gas_4023":                                 ; preds = %"$out_of_gas_4022", %entry
  %"$consume_4024" = sub i64 %"$gasrem_4020", %"$gasadd_4019"
  store i64 %"$consume_4024", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_4025_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4025_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4025_salloc_load", i64 32)
  %"$indices_buf_4025_salloc" = bitcast i8* %"$indices_buf_4025_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4025" = bitcast [32 x i8]* %"$indices_buf_4025_salloc" to i8*
  %"$indices_gep_4026" = getelementptr i8, i8* %"$indices_buf_4025", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4026" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4028" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_4029" = call i8* @_fetch_field(i8* %"$execptr_load_4028", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4027", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_4025", i32 1), !dbg !401
  %"$maybeApproved_4030" = bitcast i8* %"$maybeApproved_call_4029" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_4030", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_4031" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_4031_4032" = bitcast %TName_Option_ByStr20* %"$maybeApproved_4031" to i8*
  %"$_literal_cost_call_4033" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_4031_4032")
  %"$gasadd_4034" = add i64 %"$_literal_cost_call_4033", 0
  %"$gasadd_4035" = add i64 %"$gasadd_4034", 1
  %"$gasrem_4036" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4037" = icmp ugt i64 %"$gasadd_4035", %"$gasrem_4036"
  br i1 %"$gascmp_4037", label %"$out_of_gas_4038", label %"$have_gas_4039"

"$out_of_gas_4038":                               ; preds = %"$have_gas_4023"
  call void @_out_of_gas()
  br label %"$have_gas_4039"

"$have_gas_4039":                                 ; preds = %"$out_of_gas_4038", %"$have_gas_4023"
  %"$consume_4040" = sub i64 %"$gasrem_4036", %"$gasadd_4035"
  store i64 %"$consume_4040", i64* @_gasrem, align 8
  %"$gasrem_4041" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4042" = icmp ugt i64 1, %"$gasrem_4041"
  br i1 %"$gascmp_4042", label %"$out_of_gas_4043", label %"$have_gas_4044"

"$out_of_gas_4043":                               ; preds = %"$have_gas_4039"
  call void @_out_of_gas()
  br label %"$have_gas_4044"

"$have_gas_4044":                                 ; preds = %"$out_of_gas_4043", %"$have_gas_4039"
  %"$consume_4045" = sub i64 %"$gasrem_4041", 1
  store i64 %"$consume_4045", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_4046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4047" = icmp ugt i64 1, %"$gasrem_4046"
  br i1 %"$gascmp_4047", label %"$out_of_gas_4048", label %"$have_gas_4049"

"$out_of_gas_4048":                               ; preds = %"$have_gas_4044"
  call void @_out_of_gas()
  br label %"$have_gas_4049"

"$have_gas_4049":                                 ; preds = %"$out_of_gas_4048", %"$have_gas_4044"
  %"$consume_4050" = sub i64 %"$gasrem_4046", 1
  store i64 %"$consume_4050", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_99" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_4051" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_4052" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4051", 0
  %"$ud-registry.recordMemberOwner_envptr_4053" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4051", 1
  %"$maybeRecord_4054" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_4055" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_4052"(i8* %"$ud-registry.recordMemberOwner_envptr_4053", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4055", %TName_Option_ud-registry.Record* %"$maybeRecord_4054"), !dbg !402
  %"$ud-registry.recordMemberOwner_ret_4056" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4055", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_4056", [20 x i8]* %"$ud-registry.recordMemberOwner_99", align 1, !dbg !402
  %"$$ud-registry.recordMemberOwner_99_4057" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_99", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_99_4057", [20 x i8]* %recordOwner, align 1, !dbg !402
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_4058_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4058_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4058_salloc_load", i64 20)
  %"$indices_buf_4058_salloc" = bitcast i8* %"$indices_buf_4058_salloc_salloc" to [20 x i8]*
  %"$indices_buf_4058" = bitcast [20 x i8]* %"$indices_buf_4058_salloc" to i8*
  %"$recordOwner_4059" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_4060" = getelementptr i8, i8* %"$indices_buf_4058", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4060" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4059", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_4062" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_4063" = call i8* @_fetch_field(i8* %"$execptr_load_4062", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_4061", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_4058", i32 1), !dbg !403
  %"$maybeOperators_4064" = bitcast i8* %"$maybeOperators_call_4063" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4064", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_4065" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_4065_4066" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4065" to i8*
  %"$_literal_cost_call_4067" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", i8* %"$$maybeOperators_4065_4066")
  %"$gasadd_4068" = add i64 %"$_literal_cost_call_4067", 0
  %"$gasadd_4069" = add i64 %"$gasadd_4068", 1
  %"$gasrem_4070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4071" = icmp ugt i64 %"$gasadd_4069", %"$gasrem_4070"
  br i1 %"$gascmp_4071", label %"$out_of_gas_4072", label %"$have_gas_4073"

"$out_of_gas_4072":                               ; preds = %"$have_gas_4049"
  call void @_out_of_gas()
  br label %"$have_gas_4073"

"$have_gas_4073":                                 ; preds = %"$out_of_gas_4072", %"$have_gas_4049"
  %"$consume_4074" = sub i64 %"$gasrem_4070", %"$gasadd_4069"
  store i64 %"$consume_4074", i64* @_gasrem, align 8
  %"$gasrem_4075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4076" = icmp ugt i64 1, %"$gasrem_4075"
  br i1 %"$gascmp_4076", label %"$out_of_gas_4077", label %"$have_gas_4078"

"$out_of_gas_4077":                               ; preds = %"$have_gas_4073"
  call void @_out_of_gas()
  br label %"$have_gas_4078"

"$have_gas_4078":                                 ; preds = %"$out_of_gas_4077", %"$have_gas_4073"
  %"$consume_4079" = sub i64 %"$gasrem_4075", 1
  store i64 %"$consume_4079", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_4080" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4081" = icmp ugt i64 1, %"$gasrem_4080"
  br i1 %"$gascmp_4081", label %"$out_of_gas_4082", label %"$have_gas_4083"

"$out_of_gas_4082":                               ; preds = %"$have_gas_4078"
  call void @_out_of_gas()
  br label %"$have_gas_4083"

"$have_gas_4083":                                 ; preds = %"$out_of_gas_4082", %"$have_gas_4078"
  %"$consume_4084" = sub i64 %"$gasrem_4080", 1
  store i64 %"$consume_4084", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_95" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_4085" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_4086" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4085", 0
  %"$ud-registry.getIsOAO_envptr_4087" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4085", 1
  %"$ud-registry.getIsOAO__sender_4088" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_4088", align 1
  %"$ud-registry.getIsOAO_call_4089" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_4086"(i8* %"$ud-registry.getIsOAO_envptr_4087", [20 x i8]* %"$ud-registry.getIsOAO__sender_4088"), !dbg !404
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_4089", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_95", align 8, !dbg !404
  %"$ud-registry.getIsOAO_96" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_95_4090" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_95", align 8
  %"$$ud-registry.getIsOAO_95_fptr_4091" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_95_4090", 0
  %"$$ud-registry.getIsOAO_95_envptr_4092" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_95_4090", 1
  %"$$ud-registry.getIsOAO_95_recordOwner_4093" = alloca [20 x i8], align 1
  %"$recordOwner_4094" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_4094", [20 x i8]* %"$$ud-registry.getIsOAO_95_recordOwner_4093", align 1
  %"$$ud-registry.getIsOAO_95_call_4095" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_95_fptr_4091"(i8* %"$$ud-registry.getIsOAO_95_envptr_4092", [20 x i8]* %"$$ud-registry.getIsOAO_95_recordOwner_4093"), !dbg !404
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_95_call_4095", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_96", align 8, !dbg !404
  %"$ud-registry.getIsOAO_97" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_96_4096" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_96", align 8
  %"$$ud-registry.getIsOAO_96_fptr_4097" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_96_4096", 0
  %"$$ud-registry.getIsOAO_96_envptr_4098" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_96_4096", 1
  %"$maybeApproved_4099" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_96_call_4100" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_96_fptr_4097"(i8* %"$$ud-registry.getIsOAO_96_envptr_4098", %TName_Option_ByStr20* %"$maybeApproved_4099"), !dbg !404
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_96_call_4100", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_97", align 8, !dbg !404
  %"$ud-registry.getIsOAO_98" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_97_4101" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_97", align 8
  %"$$ud-registry.getIsOAO_97_fptr_4102" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_97_4101", 0
  %"$$ud-registry.getIsOAO_97_envptr_4103" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_97_4101", 1
  %"$maybeOperators_4104" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_97_call_4105" = call %TName_Bool* %"$$ud-registry.getIsOAO_97_fptr_4102"(i8* %"$$ud-registry.getIsOAO_97_envptr_4103", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4104"), !dbg !404
  store %TName_Bool* %"$$ud-registry.getIsOAO_97_call_4105", %TName_Bool** %"$ud-registry.getIsOAO_98", align 8, !dbg !404
  %"$$ud-registry.getIsOAO_98_4106" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_98", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_98_4106", %TName_Bool** %isSenderOAO, align 8, !dbg !404
  %"$gasrem_4107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4108" = icmp ugt i64 2, %"$gasrem_4107"
  br i1 %"$gascmp_4108", label %"$out_of_gas_4109", label %"$have_gas_4110"

"$out_of_gas_4109":                               ; preds = %"$have_gas_4083"
  call void @_out_of_gas()
  br label %"$have_gas_4110"

"$have_gas_4110":                                 ; preds = %"$out_of_gas_4109", %"$have_gas_4083"
  %"$consume_4111" = sub i64 %"$gasrem_4107", 2
  store i64 %"$consume_4111", i64* @_gasrem, align 8
  %"$isSenderOAO_4113" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_4114" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_4113", i32 0, i32 0
  %"$isSenderOAO_tag_4115" = load i8, i8* %"$isSenderOAO_tag_4114", align 1
  switch i8 %"$isSenderOAO_tag_4115", label %"$empty_default_4116" [
    i8 0, label %"$True_4117"
    i8 1, label %"$False_4270"
  ], !dbg !405

"$True_4117":                                     ; preds = %"$have_gas_4110"
  %"$isSenderOAO_4118" = bitcast %TName_Bool* %"$isSenderOAO_4113" to %CName_True*
  %"$gasrem_4119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4120" = icmp ugt i64 1, %"$gasrem_4119"
  br i1 %"$gascmp_4120", label %"$out_of_gas_4121", label %"$have_gas_4122"

"$out_of_gas_4121":                               ; preds = %"$True_4117"
  call void @_out_of_gas()
  br label %"$have_gas_4122"

"$have_gas_4122":                                 ; preds = %"$out_of_gas_4121", %"$True_4117"
  %"$consume_4123" = sub i64 %"$gasrem_4119", 1
  store i64 %"$consume_4123", i64* @_gasrem, align 8
  %"$indices_buf_4124_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4124_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4124_salloc_load", i64 32)
  %"$indices_buf_4124_salloc" = bitcast i8* %"$indices_buf_4124_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4124" = bitcast [32 x i8]* %"$indices_buf_4124_salloc" to i8*
  %"$indices_gep_4125" = getelementptr i8, i8* %"$indices_buf_4124", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_4125" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_4126" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4126", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4127", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_4124", i8* null), !dbg !406
  %"$gasrem_4128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4129" = icmp ugt i64 1, %"$gasrem_4128"
  br i1 %"$gascmp_4129", label %"$out_of_gas_4130", label %"$have_gas_4131"

"$out_of_gas_4130":                               ; preds = %"$have_gas_4122"
  call void @_out_of_gas()
  br label %"$have_gas_4131"

"$have_gas_4131":                                 ; preds = %"$out_of_gas_4130", %"$have_gas_4122"
  %"$consume_4132" = sub i64 %"$gasrem_4128", 1
  store i64 %"$consume_4132", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_4133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4134" = icmp ugt i64 1, %"$gasrem_4133"
  br i1 %"$gascmp_4134", label %"$out_of_gas_4135", label %"$have_gas_4136"

"$out_of_gas_4135":                               ; preds = %"$have_gas_4131"
  call void @_out_of_gas()
  br label %"$have_gas_4136"

"$have_gas_4136":                                 ; preds = %"$out_of_gas_4135", %"$have_gas_4131"
  %"$consume_4137" = sub i64 %"$gasrem_4133", 1
  store i64 %"$consume_4137", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_4138" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_4139_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4139_salloc" = call i8* @_salloc(i8* %"$adtval_4139_load", i64 41)
  %"$adtval_4139" = bitcast i8* %"$adtval_4139_salloc" to %CName_ud-registry.Record*
  %"$adtgep_4140" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4139", i32 0, i32 0
  store i8 0, i8* %"$adtgep_4140", align 1
  %"$adtgep_4141" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4139", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_4141", align 1
  %"$adtgep_4142" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4139", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_4138", [20 x i8]* %"$adtgep_4142", align 1
  %"$adtptr_4143" = bitcast %CName_ud-registry.Record* %"$adtval_4139" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_4143", %TName_ud-registry.Record** %newRecord, align 8, !dbg !409
  %"$newRecord_4144" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_4144_4145" = bitcast %TName_ud-registry.Record* %"$newRecord_4144" to i8*
  %"$_literal_cost_call_4146" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", i8* %"$$newRecord_4144_4145")
  %"$gasadd_4147" = add i64 %"$_literal_cost_call_4146", 1
  %"$gasrem_4148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4149" = icmp ugt i64 %"$gasadd_4147", %"$gasrem_4148"
  br i1 %"$gascmp_4149", label %"$out_of_gas_4150", label %"$have_gas_4151"

"$out_of_gas_4150":                               ; preds = %"$have_gas_4136"
  call void @_out_of_gas()
  br label %"$have_gas_4151"

"$have_gas_4151":                                 ; preds = %"$out_of_gas_4150", %"$have_gas_4136"
  %"$consume_4152" = sub i64 %"$gasrem_4148", %"$gasadd_4147"
  store i64 %"$consume_4152", i64* @_gasrem, align 8
  %"$indices_buf_4153_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4153_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4153_salloc_load", i64 32)
  %"$indices_buf_4153_salloc" = bitcast i8* %"$indices_buf_4153_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4153" = bitcast [32 x i8]* %"$indices_buf_4153_salloc" to i8*
  %"$indices_gep_4154" = getelementptr i8, i8* %"$indices_buf_4153", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4154" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast4, align 1
  %"$execptr_load_4155" = load i8*, i8** @_execptr, align 8
  %"$newRecord_4157" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_4158" = bitcast %TName_ud-registry.Record* %"$newRecord_4157" to i8*
  call void @_update_field(i8* %"$execptr_load_4155", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4156", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4153", i8* %"$update_value_4158"), !dbg !410
  %"$gasrem_4159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4160" = icmp ugt i64 1, %"$gasrem_4159"
  br i1 %"$gascmp_4160", label %"$out_of_gas_4161", label %"$have_gas_4162"

"$out_of_gas_4161":                               ; preds = %"$have_gas_4151"
  call void @_out_of_gas()
  br label %"$have_gas_4162"

"$have_gas_4162":                                 ; preds = %"$out_of_gas_4161", %"$have_gas_4151"
  %"$consume_4163" = sub i64 %"$gasrem_4159", 1
  store i64 %"$consume_4163", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_4164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4165" = icmp ugt i64 1, %"$gasrem_4164"
  br i1 %"$gascmp_4165", label %"$out_of_gas_4166", label %"$have_gas_4167"

"$out_of_gas_4166":                               ; preds = %"$have_gas_4162"
  call void @_out_of_gas()
  br label %"$have_gas_4167"

"$have_gas_4167":                                 ; preds = %"$out_of_gas_4166", %"$have_gas_4162"
  %"$consume_4168" = sub i64 %"$gasrem_4164", 1
  store i64 %"$consume_4168", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_90" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_4169" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_4170" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4169", 0
  %"$ud-registry.eConfigured_envptr_4171" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4169", 1
  %"$ud-registry.eConfigured_node_4172" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_4172", align 1
  %"$ud-registry.eConfigured_call_4173" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_4170"(i8* %"$ud-registry.eConfigured_envptr_4171", [32 x i8]* %"$ud-registry.eConfigured_node_4172"), !dbg !411
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_4173", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_90", align 8, !dbg !411
  %"$ud-registry.eConfigured_91" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_90_4174" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_90", align 8
  %"$$ud-registry.eConfigured_90_fptr_4175" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_90_4174", 0
  %"$$ud-registry.eConfigured_90_envptr_4176" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_90_4174", 1
  %"$$ud-registry.eConfigured_90_owner_4177" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_90_owner_4177", align 1
  %"$$ud-registry.eConfigured_90_call_4178" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_90_fptr_4175"(i8* %"$$ud-registry.eConfigured_90_envptr_4176", [20 x i8]* %"$$ud-registry.eConfigured_90_owner_4177"), !dbg !411
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_90_call_4178", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_91", align 8, !dbg !411
  %"$ud-registry.eConfigured_92" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_91_4179" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_91", align 8
  %"$$ud-registry.eConfigured_91_fptr_4180" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_91_4179", 0
  %"$$ud-registry.eConfigured_91_envptr_4181" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_91_4179", 1
  %"$$ud-registry.eConfigured_91_ud-registry.zeroByStr20_4182" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_4183" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_4183", [20 x i8]* %"$$ud-registry.eConfigured_91_ud-registry.zeroByStr20_4182", align 1
  %"$$ud-registry.eConfigured_91_call_4184" = call i8* %"$$ud-registry.eConfigured_91_fptr_4180"(i8* %"$$ud-registry.eConfigured_91_envptr_4181", [20 x i8]* %"$$ud-registry.eConfigured_91_ud-registry.zeroByStr20_4182"), !dbg !411
  store i8* %"$$ud-registry.eConfigured_91_call_4184", i8** %"$ud-registry.eConfigured_92", align 8, !dbg !411
  %"$$ud-registry.eConfigured_92_4185" = load i8*, i8** %"$ud-registry.eConfigured_92", align 8
  store i8* %"$$ud-registry.eConfigured_92_4185", i8** %e, align 8, !dbg !411
  %"$e_4186" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_4188" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4186")
  %"$gasrem_4189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4190" = icmp ugt i64 %"$_literal_cost_call_4188", %"$gasrem_4189"
  br i1 %"$gascmp_4190", label %"$out_of_gas_4191", label %"$have_gas_4192"

"$out_of_gas_4191":                               ; preds = %"$have_gas_4167"
  call void @_out_of_gas()
  br label %"$have_gas_4192"

"$have_gas_4192":                                 ; preds = %"$out_of_gas_4191", %"$have_gas_4167"
  %"$consume_4193" = sub i64 %"$gasrem_4189", %"$_literal_cost_call_4188"
  store i64 %"$consume_4193", i64* @_gasrem, align 8
  %"$execptr_load_4194" = load i8*, i8** @_execptr, align 8
  %"$e_4195" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_4194", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4195"), !dbg !412
  %"$gasrem_4196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4197" = icmp ugt i64 1, %"$gasrem_4196"
  br i1 %"$gascmp_4197", label %"$out_of_gas_4198", label %"$have_gas_4199"

"$out_of_gas_4198":                               ; preds = %"$have_gas_4192"
  call void @_out_of_gas()
  br label %"$have_gas_4199"

"$have_gas_4199":                                 ; preds = %"$out_of_gas_4198", %"$have_gas_4192"
  %"$consume_4200" = sub i64 %"$gasrem_4196", 1
  store i64 %"$consume_4200", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_4201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4202" = icmp ugt i64 1, %"$gasrem_4201"
  br i1 %"$gascmp_4202", label %"$out_of_gas_4203", label %"$have_gas_4204"

"$out_of_gas_4203":                               ; preds = %"$have_gas_4199"
  call void @_out_of_gas()
  br label %"$have_gas_4204"

"$have_gas_4204":                                 ; preds = %"$out_of_gas_4203", %"$have_gas_4199"
  %"$consume_4205" = sub i64 %"$gasrem_4201", 1
  store i64 %"$consume_4205", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_4206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4207" = icmp ugt i64 1, %"$gasrem_4206"
  br i1 %"$gascmp_4207", label %"$out_of_gas_4208", label %"$have_gas_4209"

"$out_of_gas_4208":                               ; preds = %"$have_gas_4204"
  call void @_out_of_gas()
  br label %"$have_gas_4209"

"$have_gas_4209":                                 ; preds = %"$out_of_gas_4208", %"$have_gas_4204"
  %"$consume_4210" = sub i64 %"$gasrem_4206", 1
  store i64 %"$consume_4210", i64* @_gasrem, align 8
  %"$msgobj_4211_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4211_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4211_salloc_load", i64 225)
  %"$msgobj_4211_salloc" = bitcast i8* %"$msgobj_4211_salloc_salloc" to [225 x i8]*
  %"$msgobj_4211" = bitcast [225 x i8]* %"$msgobj_4211_salloc" to i8*
  store i8 5, i8* %"$msgobj_4211", align 1
  %"$msgobj_fname_4213" = getelementptr i8, i8* %"$msgobj_4211", i32 1
  %"$msgobj_fname_4214" = bitcast i8* %"$msgobj_fname_4213" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4212", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4214", align 8
  %"$msgobj_td_4215" = getelementptr i8, i8* %"$msgobj_4211", i32 17
  %"$msgobj_td_4216" = bitcast i8* %"$msgobj_td_4215" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4216", align 8
  %"$msgobj_v_4218" = getelementptr i8, i8* %"$msgobj_4211", i32 25
  %"$msgobj_v_4219" = bitcast i8* %"$msgobj_v_4218" to %String*
  store %String { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$stringlit_4217", i32 0, i32 0), i32 17 }, %String* %"$msgobj_v_4219", align 8
  %"$msgobj_fname_4221" = getelementptr i8, i8* %"$msgobj_4211", i32 41
  %"$msgobj_fname_4222" = bitcast i8* %"$msgobj_fname_4221" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4220", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4222", align 8
  %"$msgobj_td_4223" = getelementptr i8, i8* %"$msgobj_4211", i32 57
  %"$msgobj_td_4224" = bitcast i8* %"$msgobj_td_4223" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_4224", align 8
  %"$msgobj_v_4225" = getelementptr i8, i8* %"$msgobj_4211", i32 65
  %"$msgobj_v_4226" = bitcast i8* %"$msgobj_v_4225" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_4226", align 1
  %"$msgobj_fname_4228" = getelementptr i8, i8* %"$msgobj_4211", i32 97
  %"$msgobj_fname_4229" = bitcast i8* %"$msgobj_fname_4228" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4227", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4229", align 8
  %"$msgobj_td_4230" = getelementptr i8, i8* %"$msgobj_4211", i32 113
  %"$msgobj_td_4231" = bitcast i8* %"$msgobj_td_4230" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4231", align 8
  %"$msgobj_v_4232" = getelementptr i8, i8* %"$msgobj_4211", i32 121
  %"$msgobj_v_4233" = bitcast i8* %"$msgobj_v_4232" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4233", align 1
  %"$msgobj_fname_4235" = getelementptr i8, i8* %"$msgobj_4211", i32 141
  %"$msgobj_fname_4236" = bitcast i8* %"$msgobj_fname_4235" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4234", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4236", align 8
  %"$msgobj_td_4237" = getelementptr i8, i8* %"$msgobj_4211", i32 157
  %"$msgobj_td_4238" = bitcast i8* %"$msgobj_td_4237" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_4238", align 8
  %"$msgobj_v_4239" = getelementptr i8, i8* %"$msgobj_4211", i32 165
  %"$msgobj_v_4240" = bitcast i8* %"$msgobj_v_4239" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4240", align 8
  %"$msgobj_fname_4242" = getelementptr i8, i8* %"$msgobj_4211", i32 181
  %"$msgobj_fname_4243" = bitcast i8* %"$msgobj_fname_4242" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4241", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4243", align 8
  %"$msgobj_td_4244" = getelementptr i8, i8* %"$msgobj_4211", i32 197
  %"$msgobj_td_4245" = bitcast i8* %"$msgobj_td_4244" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4245", align 8
  %"$msgobj_v_4246" = getelementptr i8, i8* %"$msgobj_4211", i32 205
  %"$msgobj_v_4247" = bitcast i8* %"$msgobj_v_4246" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4247", align 1
  store i8* %"$msgobj_4211", i8** %m, align 8, !dbg !413
  %"$gasrem_4249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4250" = icmp ugt i64 1, %"$gasrem_4249"
  br i1 %"$gascmp_4250", label %"$out_of_gas_4251", label %"$have_gas_4252"

"$out_of_gas_4251":                               ; preds = %"$have_gas_4209"
  call void @_out_of_gas()
  br label %"$have_gas_4252"

"$have_gas_4252":                                 ; preds = %"$out_of_gas_4251", %"$have_gas_4209"
  %"$consume_4253" = sub i64 %"$gasrem_4249", 1
  store i64 %"$consume_4253", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_89" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4254" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4255" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4254", 0
  %"$ud-registry.oneMsg_envptr_4256" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4254", 1
  %"$m_4257" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_4258" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4255"(i8* %"$ud-registry.oneMsg_envptr_4256", i8* %"$m_4257"), !dbg !414
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4258", %TName_List_Message** %"$ud-registry.oneMsg_89", align 8, !dbg !414
  %"$$ud-registry.oneMsg_89_4259" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_89", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_89_4259", %TName_List_Message** %msgs, align 8, !dbg !414
  %"$msgs_4260" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_4260_4261" = bitcast %TName_List_Message* %"$msgs_4260" to i8*
  %"$_literal_cost_call_4262" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_4260_4261")
  %"$gasrem_4263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4264" = icmp ugt i64 %"$_literal_cost_call_4262", %"$gasrem_4263"
  br i1 %"$gascmp_4264", label %"$out_of_gas_4265", label %"$have_gas_4266"

"$out_of_gas_4265":                               ; preds = %"$have_gas_4252"
  call void @_out_of_gas()
  br label %"$have_gas_4266"

"$have_gas_4266":                                 ; preds = %"$out_of_gas_4265", %"$have_gas_4252"
  %"$consume_4267" = sub i64 %"$gasrem_4263", %"$_literal_cost_call_4262"
  store i64 %"$consume_4267", i64* @_gasrem, align 8
  %"$execptr_load_4268" = load i8*, i8** @_execptr, align 8
  %"$msgs_4269" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_4268", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_4269"), !dbg !415
  br label %"$matchsucc_4112"

"$False_4270":                                    ; preds = %"$have_gas_4110"
  %"$isSenderOAO_4271" = bitcast %TName_Bool* %"$isSenderOAO_4113" to %CName_False*
  %"$gasrem_4272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4273" = icmp ugt i64 1, %"$gasrem_4272"
  br i1 %"$gascmp_4273", label %"$out_of_gas_4274", label %"$have_gas_4275"

"$out_of_gas_4274":                               ; preds = %"$False_4270"
  call void @_out_of_gas()
  br label %"$have_gas_4275"

"$have_gas_4275":                                 ; preds = %"$out_of_gas_4274", %"$False_4270"
  %"$consume_4276" = sub i64 %"$gasrem_4272", 1
  store i64 %"$consume_4276", i64* @_gasrem, align 8
  %e5 = alloca i8*, align 8
  %"$gasrem_4277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4278" = icmp ugt i64 1, %"$gasrem_4277"
  br i1 %"$gascmp_4278", label %"$out_of_gas_4279", label %"$have_gas_4280"

"$out_of_gas_4279":                               ; preds = %"$have_gas_4275"
  call void @_out_of_gas()
  br label %"$have_gas_4280"

"$have_gas_4280":                                 ; preds = %"$out_of_gas_4279", %"$have_gas_4275"
  %"$consume_4281" = sub i64 %"$gasrem_4277", 1
  store i64 %"$consume_4281", i64* @_gasrem, align 8
  %m6 = alloca %String, align 8
  %"$gasrem_4282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4283" = icmp ugt i64 1, %"$gasrem_4282"
  br i1 %"$gascmp_4283", label %"$out_of_gas_4284", label %"$have_gas_4285"

"$out_of_gas_4284":                               ; preds = %"$have_gas_4280"
  call void @_out_of_gas()
  br label %"$have_gas_4285"

"$have_gas_4285":                                 ; preds = %"$out_of_gas_4284", %"$have_gas_4280"
  %"$consume_4286" = sub i64 %"$gasrem_4282", 1
  store i64 %"$consume_4286", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_4287", i32 0, i32 0), i32 43 }, %String* %m6, align 8, !dbg !416
  %"$gasrem_4288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4289" = icmp ugt i64 1, %"$gasrem_4288"
  br i1 %"$gascmp_4289", label %"$out_of_gas_4290", label %"$have_gas_4291"

"$out_of_gas_4290":                               ; preds = %"$have_gas_4285"
  call void @_out_of_gas()
  br label %"$have_gas_4291"

"$have_gas_4291":                                 ; preds = %"$out_of_gas_4290", %"$have_gas_4285"
  %"$consume_4292" = sub i64 %"$gasrem_4288", 1
  store i64 %"$consume_4292", i64* @_gasrem, align 8
  %"$ud-registry.eError_94" = alloca i8*, align 8
  %"$ud-registry.eError_4293" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_4294" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4293", 0
  %"$ud-registry.eError_envptr_4295" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4293", 1
  %"$m_4296" = load %String, %String* %m6, align 8
  %"$ud-registry.eError_call_4297" = call i8* %"$ud-registry.eError_fptr_4294"(i8* %"$ud-registry.eError_envptr_4295", %String %"$m_4296"), !dbg !418
  store i8* %"$ud-registry.eError_call_4297", i8** %"$ud-registry.eError_94", align 8, !dbg !418
  %"$$ud-registry.eError_94_4298" = load i8*, i8** %"$ud-registry.eError_94", align 8
  store i8* %"$$ud-registry.eError_94_4298", i8** %e5, align 8, !dbg !418
  %"$e_4299" = load i8*, i8** %e5, align 8
  %"$_literal_cost_call_4301" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4299")
  %"$gasrem_4302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4303" = icmp ugt i64 %"$_literal_cost_call_4301", %"$gasrem_4302"
  br i1 %"$gascmp_4303", label %"$out_of_gas_4304", label %"$have_gas_4305"

"$out_of_gas_4304":                               ; preds = %"$have_gas_4291"
  call void @_out_of_gas()
  br label %"$have_gas_4305"

"$have_gas_4305":                                 ; preds = %"$out_of_gas_4304", %"$have_gas_4291"
  %"$consume_4306" = sub i64 %"$gasrem_4302", %"$_literal_cost_call_4301"
  store i64 %"$consume_4306", i64* @_gasrem, align 8
  %"$execptr_load_4307" = load i8*, i8** @_execptr, align 8
  %"$e_4308" = load i8*, i8** %e5, align 8
  call void @_event(i8* %"$execptr_load_4307", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4308"), !dbg !419
  %"$gasrem_4309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4310" = icmp ugt i64 1, %"$gasrem_4309"
  br i1 %"$gascmp_4310", label %"$out_of_gas_4311", label %"$have_gas_4312"

"$out_of_gas_4311":                               ; preds = %"$have_gas_4305"
  call void @_out_of_gas()
  br label %"$have_gas_4312"

"$have_gas_4312":                                 ; preds = %"$out_of_gas_4311", %"$have_gas_4305"
  %"$consume_4313" = sub i64 %"$gasrem_4309", 1
  store i64 %"$consume_4313", i64* @_gasrem, align 8
  %msgs7 = alloca %TName_List_Message*, align 8
  %"$gasrem_4314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4315" = icmp ugt i64 1, %"$gasrem_4314"
  br i1 %"$gascmp_4315", label %"$out_of_gas_4316", label %"$have_gas_4317"

"$out_of_gas_4316":                               ; preds = %"$have_gas_4312"
  call void @_out_of_gas()
  br label %"$have_gas_4317"

"$have_gas_4317":                                 ; preds = %"$out_of_gas_4316", %"$have_gas_4312"
  %"$consume_4318" = sub i64 %"$gasrem_4314", 1
  store i64 %"$consume_4318", i64* @_gasrem, align 8
  %"$m_1" = alloca i8*, align 8
  %"$gasrem_4319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4320" = icmp ugt i64 1, %"$gasrem_4319"
  br i1 %"$gascmp_4320", label %"$out_of_gas_4321", label %"$have_gas_4322"

"$out_of_gas_4321":                               ; preds = %"$have_gas_4317"
  call void @_out_of_gas()
  br label %"$have_gas_4322"

"$have_gas_4322":                                 ; preds = %"$out_of_gas_4321", %"$have_gas_4317"
  %"$consume_4323" = sub i64 %"$gasrem_4319", 1
  store i64 %"$consume_4323", i64* @_gasrem, align 8
  %"$msgobj_4324_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4324_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4324_salloc_load", i64 225)
  %"$msgobj_4324_salloc" = bitcast i8* %"$msgobj_4324_salloc_salloc" to [225 x i8]*
  %"$msgobj_4324" = bitcast [225 x i8]* %"$msgobj_4324_salloc" to i8*
  store i8 5, i8* %"$msgobj_4324", align 1
  %"$msgobj_fname_4326" = getelementptr i8, i8* %"$msgobj_4324", i32 1
  %"$msgobj_fname_4327" = bitcast i8* %"$msgobj_fname_4326" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4325", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4327", align 8
  %"$msgobj_td_4328" = getelementptr i8, i8* %"$msgobj_4324", i32 17
  %"$msgobj_td_4329" = bitcast i8* %"$msgobj_td_4328" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4329", align 8
  %"$msgobj_v_4331" = getelementptr i8, i8* %"$msgobj_4324", i32 25
  %"$msgobj_v_4332" = bitcast i8* %"$msgobj_v_4331" to %String*
  store %String { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$stringlit_4330", i32 0, i32 0), i32 17 }, %String* %"$msgobj_v_4332", align 8
  %"$msgobj_fname_4334" = getelementptr i8, i8* %"$msgobj_4324", i32 41
  %"$msgobj_fname_4335" = bitcast i8* %"$msgobj_fname_4334" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4333", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4335", align 8
  %"$msgobj_td_4336" = getelementptr i8, i8* %"$msgobj_4324", i32 57
  %"$msgobj_td_4337" = bitcast i8* %"$msgobj_td_4336" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_4337", align 8
  %"$msgobj_v_4338" = getelementptr i8, i8* %"$msgobj_4324", i32 65
  %"$msgobj_v_4339" = bitcast i8* %"$msgobj_v_4338" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_4339", align 1
  %"$msgobj_fname_4341" = getelementptr i8, i8* %"$msgobj_4324", i32 97
  %"$msgobj_fname_4342" = bitcast i8* %"$msgobj_fname_4341" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4340", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4342", align 8
  %"$msgobj_td_4343" = getelementptr i8, i8* %"$msgobj_4324", i32 113
  %"$msgobj_td_4344" = bitcast i8* %"$msgobj_td_4343" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4344", align 8
  %"$msgobj_v_4345" = getelementptr i8, i8* %"$msgobj_4324", i32 121
  %"$msgobj_v_4346" = bitcast i8* %"$msgobj_v_4345" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4346", align 1
  %"$msgobj_fname_4348" = getelementptr i8, i8* %"$msgobj_4324", i32 141
  %"$msgobj_fname_4349" = bitcast i8* %"$msgobj_fname_4348" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4347", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4349", align 8
  %"$msgobj_td_4350" = getelementptr i8, i8* %"$msgobj_4324", i32 157
  %"$msgobj_td_4351" = bitcast i8* %"$msgobj_td_4350" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_4351", align 8
  %"$msgobj_v_4352" = getelementptr i8, i8* %"$msgobj_4324", i32 165
  %"$msgobj_v_4353" = bitcast i8* %"$msgobj_v_4352" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4353", align 8
  %"$msgobj_fname_4355" = getelementptr i8, i8* %"$msgobj_4324", i32 181
  %"$msgobj_fname_4356" = bitcast i8* %"$msgobj_fname_4355" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4354", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4356", align 8
  %"$msgobj_td_4357" = getelementptr i8, i8* %"$msgobj_4324", i32 197
  %"$msgobj_td_4358" = bitcast i8* %"$msgobj_td_4357" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4358", align 8
  %"$msgobj_v_4359" = getelementptr i8, i8* %"$msgobj_4324", i32 205
  %"$msgobj_v_4360" = bitcast i8* %"$msgobj_v_4359" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4360", align 1
  store i8* %"$msgobj_4324", i8** %"$m_1", align 8, !dbg !420
  %"$gasrem_4362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4363" = icmp ugt i64 1, %"$gasrem_4362"
  br i1 %"$gascmp_4363", label %"$out_of_gas_4364", label %"$have_gas_4365"

"$out_of_gas_4364":                               ; preds = %"$have_gas_4322"
  call void @_out_of_gas()
  br label %"$have_gas_4365"

"$have_gas_4365":                                 ; preds = %"$out_of_gas_4364", %"$have_gas_4322"
  %"$consume_4366" = sub i64 %"$gasrem_4362", 1
  store i64 %"$consume_4366", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_93" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4367" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4368" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4367", 0
  %"$ud-registry.oneMsg_envptr_4369" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4367", 1
  %"$$m_1_4370" = load i8*, i8** %"$m_1", align 8
  %"$ud-registry.oneMsg_call_4371" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4368"(i8* %"$ud-registry.oneMsg_envptr_4369", i8* %"$$m_1_4370"), !dbg !421
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4371", %TName_List_Message** %"$ud-registry.oneMsg_93", align 8, !dbg !421
  %"$$ud-registry.oneMsg_93_4372" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_93", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_93_4372", %TName_List_Message** %msgs7, align 8, !dbg !421
  %"$msgs_4373" = load %TName_List_Message*, %TName_List_Message** %msgs7, align 8
  %"$$msgs_4373_4374" = bitcast %TName_List_Message* %"$msgs_4373" to i8*
  %"$_literal_cost_call_4375" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_4373_4374")
  %"$gasrem_4376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4377" = icmp ugt i64 %"$_literal_cost_call_4375", %"$gasrem_4376"
  br i1 %"$gascmp_4377", label %"$out_of_gas_4378", label %"$have_gas_4379"

"$out_of_gas_4378":                               ; preds = %"$have_gas_4365"
  call void @_out_of_gas()
  br label %"$have_gas_4379"

"$have_gas_4379":                                 ; preds = %"$out_of_gas_4378", %"$have_gas_4365"
  %"$consume_4380" = sub i64 %"$gasrem_4376", %"$_literal_cost_call_4375"
  store i64 %"$consume_4380", i64* @_gasrem, align 8
  %"$execptr_load_4381" = load i8*, i8** @_execptr, align 8
  %"$msgs_4382" = load %TName_List_Message*, %TName_List_Message** %msgs7, align 8
  call void @_send(i8* %"$execptr_load_4381", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_4382"), !dbg !422
  br label %"$matchsucc_4112"

"$empty_default_4116":                            ; preds = %"$have_gas_4110"
  br label %"$matchsucc_4112"

"$matchsucc_4112":                                ; preds = %"$have_gas_4379", %"$have_gas_4266", %"$empty_default_4116"
  ret void
}

define void @transfer(i8* %0) !dbg !423 {
entry:
  %"$_amount_4384" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4385" = bitcast i8* %"$_amount_4384" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4385", align 8
  %"$_origin_4386" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4387" = bitcast i8* %"$_origin_4386" to [20 x i8]*
  %"$_sender_4388" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4389" = bitcast i8* %"$_sender_4388" to [20 x i8]*
  %"$node_4390" = getelementptr i8, i8* %0, i32 56
  %"$node_4391" = bitcast i8* %"$node_4390" to [32 x i8]*
  %"$owner_4392" = getelementptr i8, i8* %0, i32 88
  %"$owner_4393" = bitcast i8* %"$owner_4392" to [20 x i8]*
  call void @"$transfer_4004"(%Uint128 %_amount, [20 x i8]* %"$_origin_4387", [20 x i8]* %"$_sender_4389", [32 x i8]* %"$node_4391", [20 x i8]* %"$owner_4393"), !dbg !424
  ret void
}

define internal void @"$assign_4394"(%Uint128 %_amount, [20 x i8]* %"$_origin_4395", [20 x i8]* %"$_sender_4396", [32 x i8]* %"$parent_4397", %String %label, [20 x i8]* %"$owner_4398") !dbg !425 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4395", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4396", align 1
  %parent = load [32 x i8], [32 x i8]* %"$parent_4397", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_4398", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_4399_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4399_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4399_salloc_load", i64 32)
  %"$indices_buf_4399_salloc" = bitcast i8* %"$indices_buf_4399_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4399" = bitcast [32 x i8]* %"$indices_buf_4399_salloc" to i8*
  %"$indices_gep_4400" = getelementptr i8, i8* %"$indices_buf_4399", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4400" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4402" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_4403" = call i8* @_fetch_field(i8* %"$execptr_load_4402", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4401", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4399", i32 1), !dbg !426
  %"$maybeRecord_4404" = bitcast i8* %"$maybeRecord_call_4403" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4404", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_4405" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_4405_4406" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4405" to i8*
  %"$_literal_cost_call_4407" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_4405_4406")
  %"$gasadd_4408" = add i64 %"$_literal_cost_call_4407", 0
  %"$gasadd_4409" = add i64 %"$gasadd_4408", 1
  %"$gasrem_4410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4411" = icmp ugt i64 %"$gasadd_4409", %"$gasrem_4410"
  br i1 %"$gascmp_4411", label %"$out_of_gas_4412", label %"$have_gas_4413"

"$out_of_gas_4412":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4413"

"$have_gas_4413":                                 ; preds = %"$out_of_gas_4412", %entry
  %"$consume_4414" = sub i64 %"$gasrem_4410", %"$gasadd_4409"
  store i64 %"$consume_4414", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_4415_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4415_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4415_salloc_load", i64 32)
  %"$indices_buf_4415_salloc" = bitcast i8* %"$indices_buf_4415_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4415" = bitcast [32 x i8]* %"$indices_buf_4415_salloc" to i8*
  %"$indices_gep_4416" = getelementptr i8, i8* %"$indices_buf_4415", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4416" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4418" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_4419" = call i8* @_fetch_field(i8* %"$execptr_load_4418", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4417", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_4415", i32 1), !dbg !427
  %"$maybeApproved_4420" = bitcast i8* %"$maybeApproved_call_4419" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_4420", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_4421" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_4421_4422" = bitcast %TName_Option_ByStr20* %"$maybeApproved_4421" to i8*
  %"$_literal_cost_call_4423" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_4421_4422")
  %"$gasadd_4424" = add i64 %"$_literal_cost_call_4423", 0
  %"$gasadd_4425" = add i64 %"$gasadd_4424", 1
  %"$gasrem_4426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4427" = icmp ugt i64 %"$gasadd_4425", %"$gasrem_4426"
  br i1 %"$gascmp_4427", label %"$out_of_gas_4428", label %"$have_gas_4429"

"$out_of_gas_4428":                               ; preds = %"$have_gas_4413"
  call void @_out_of_gas()
  br label %"$have_gas_4429"

"$have_gas_4429":                                 ; preds = %"$out_of_gas_4428", %"$have_gas_4413"
  %"$consume_4430" = sub i64 %"$gasrem_4426", %"$gasadd_4425"
  store i64 %"$consume_4430", i64* @_gasrem, align 8
  %"$gasrem_4431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4432" = icmp ugt i64 1, %"$gasrem_4431"
  br i1 %"$gascmp_4432", label %"$out_of_gas_4433", label %"$have_gas_4434"

"$out_of_gas_4433":                               ; preds = %"$have_gas_4429"
  call void @_out_of_gas()
  br label %"$have_gas_4434"

"$have_gas_4434":                                 ; preds = %"$out_of_gas_4433", %"$have_gas_4429"
  %"$consume_4435" = sub i64 %"$gasrem_4431", 1
  store i64 %"$consume_4435", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_4436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4437" = icmp ugt i64 1, %"$gasrem_4436"
  br i1 %"$gascmp_4437", label %"$out_of_gas_4438", label %"$have_gas_4439"

"$out_of_gas_4438":                               ; preds = %"$have_gas_4434"
  call void @_out_of_gas()
  br label %"$have_gas_4439"

"$have_gas_4439":                                 ; preds = %"$out_of_gas_4438", %"$have_gas_4434"
  %"$consume_4440" = sub i64 %"$gasrem_4436", 1
  store i64 %"$consume_4440", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_114" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_4441" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_4442" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4441", 0
  %"$ud-registry.recordMemberOwner_envptr_4443" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4441", 1
  %"$maybeRecord_4444" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_4445" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_4442"(i8* %"$ud-registry.recordMemberOwner_envptr_4443", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4445", %TName_Option_ud-registry.Record* %"$maybeRecord_4444"), !dbg !428
  %"$ud-registry.recordMemberOwner_ret_4446" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4445", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_4446", [20 x i8]* %"$ud-registry.recordMemberOwner_114", align 1, !dbg !428
  %"$$ud-registry.recordMemberOwner_114_4447" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_114", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_114_4447", [20 x i8]* %recordOwner, align 1, !dbg !428
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_4448_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4448_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4448_salloc_load", i64 20)
  %"$indices_buf_4448_salloc" = bitcast i8* %"$indices_buf_4448_salloc_salloc" to [20 x i8]*
  %"$indices_buf_4448" = bitcast [20 x i8]* %"$indices_buf_4448_salloc" to i8*
  %"$recordOwner_4449" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_4450" = getelementptr i8, i8* %"$indices_buf_4448", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4450" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4449", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_4452" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_4453" = call i8* @_fetch_field(i8* %"$execptr_load_4452", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_4451", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_4448", i32 1), !dbg !429
  %"$maybeOperators_4454" = bitcast i8* %"$maybeOperators_call_4453" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4454", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_4455" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_4455_4456" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4455" to i8*
  %"$_literal_cost_call_4457" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", i8* %"$$maybeOperators_4455_4456")
  %"$gasadd_4458" = add i64 %"$_literal_cost_call_4457", 0
  %"$gasadd_4459" = add i64 %"$gasadd_4458", 1
  %"$gasrem_4460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4461" = icmp ugt i64 %"$gasadd_4459", %"$gasrem_4460"
  br i1 %"$gascmp_4461", label %"$out_of_gas_4462", label %"$have_gas_4463"

"$out_of_gas_4462":                               ; preds = %"$have_gas_4439"
  call void @_out_of_gas()
  br label %"$have_gas_4463"

"$have_gas_4463":                                 ; preds = %"$out_of_gas_4462", %"$have_gas_4439"
  %"$consume_4464" = sub i64 %"$gasrem_4460", %"$gasadd_4459"
  store i64 %"$consume_4464", i64* @_gasrem, align 8
  %"$gasrem_4465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4466" = icmp ugt i64 1, %"$gasrem_4465"
  br i1 %"$gascmp_4466", label %"$out_of_gas_4467", label %"$have_gas_4468"

"$out_of_gas_4467":                               ; preds = %"$have_gas_4463"
  call void @_out_of_gas()
  br label %"$have_gas_4468"

"$have_gas_4468":                                 ; preds = %"$out_of_gas_4467", %"$have_gas_4463"
  %"$consume_4469" = sub i64 %"$gasrem_4465", 1
  store i64 %"$consume_4469", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_4470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4471" = icmp ugt i64 1, %"$gasrem_4470"
  br i1 %"$gascmp_4471", label %"$out_of_gas_4472", label %"$have_gas_4473"

"$out_of_gas_4472":                               ; preds = %"$have_gas_4468"
  call void @_out_of_gas()
  br label %"$have_gas_4473"

"$have_gas_4473":                                 ; preds = %"$out_of_gas_4472", %"$have_gas_4468"
  %"$consume_4474" = sub i64 %"$gasrem_4470", 1
  store i64 %"$consume_4474", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_110" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_4475" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_4476" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4475", 0
  %"$ud-registry.getIsOAO_envptr_4477" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4475", 1
  %"$ud-registry.getIsOAO__sender_4478" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_4478", align 1
  %"$ud-registry.getIsOAO_call_4479" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_4476"(i8* %"$ud-registry.getIsOAO_envptr_4477", [20 x i8]* %"$ud-registry.getIsOAO__sender_4478"), !dbg !430
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_4479", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_110", align 8, !dbg !430
  %"$ud-registry.getIsOAO_111" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_110_4480" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_110", align 8
  %"$$ud-registry.getIsOAO_110_fptr_4481" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_110_4480", 0
  %"$$ud-registry.getIsOAO_110_envptr_4482" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_110_4480", 1
  %"$$ud-registry.getIsOAO_110_recordOwner_4483" = alloca [20 x i8], align 1
  %"$recordOwner_4484" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_4484", [20 x i8]* %"$$ud-registry.getIsOAO_110_recordOwner_4483", align 1
  %"$$ud-registry.getIsOAO_110_call_4485" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_110_fptr_4481"(i8* %"$$ud-registry.getIsOAO_110_envptr_4482", [20 x i8]* %"$$ud-registry.getIsOAO_110_recordOwner_4483"), !dbg !430
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_110_call_4485", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_111", align 8, !dbg !430
  %"$ud-registry.getIsOAO_112" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_111_4486" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_111", align 8
  %"$$ud-registry.getIsOAO_111_fptr_4487" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_111_4486", 0
  %"$$ud-registry.getIsOAO_111_envptr_4488" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_111_4486", 1
  %"$maybeApproved_4489" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_111_call_4490" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_111_fptr_4487"(i8* %"$$ud-registry.getIsOAO_111_envptr_4488", %TName_Option_ByStr20* %"$maybeApproved_4489"), !dbg !430
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_111_call_4490", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_112", align 8, !dbg !430
  %"$ud-registry.getIsOAO_113" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_112_4491" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_112", align 8
  %"$$ud-registry.getIsOAO_112_fptr_4492" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_112_4491", 0
  %"$$ud-registry.getIsOAO_112_envptr_4493" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_112_4491", 1
  %"$maybeOperators_4494" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_112_call_4495" = call %TName_Bool* %"$$ud-registry.getIsOAO_112_fptr_4492"(i8* %"$$ud-registry.getIsOAO_112_envptr_4493", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4494"), !dbg !430
  store %TName_Bool* %"$$ud-registry.getIsOAO_112_call_4495", %TName_Bool** %"$ud-registry.getIsOAO_113", align 8, !dbg !430
  %"$$ud-registry.getIsOAO_113_4496" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_113", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_113_4496", %TName_Bool** %isSenderOAO, align 8, !dbg !430
  %"$gasrem_4497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4498" = icmp ugt i64 2, %"$gasrem_4497"
  br i1 %"$gascmp_4498", label %"$out_of_gas_4499", label %"$have_gas_4500"

"$out_of_gas_4499":                               ; preds = %"$have_gas_4473"
  call void @_out_of_gas()
  br label %"$have_gas_4500"

"$have_gas_4500":                                 ; preds = %"$out_of_gas_4499", %"$have_gas_4473"
  %"$consume_4501" = sub i64 %"$gasrem_4497", 2
  store i64 %"$consume_4501", i64* @_gasrem, align 8
  %"$isSenderOAO_4503" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_4504" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_4503", i32 0, i32 0
  %"$isSenderOAO_tag_4505" = load i8, i8* %"$isSenderOAO_tag_4504", align 1
  switch i8 %"$isSenderOAO_tag_4505", label %"$empty_default_4506" [
    i8 0, label %"$True_4507"
    i8 1, label %"$False_4750"
  ], !dbg !431

"$True_4507":                                     ; preds = %"$have_gas_4500"
  %"$isSenderOAO_4508" = bitcast %TName_Bool* %"$isSenderOAO_4503" to %CName_True*
  %"$gasrem_4509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4510" = icmp ugt i64 1, %"$gasrem_4509"
  br i1 %"$gascmp_4510", label %"$out_of_gas_4511", label %"$have_gas_4512"

"$out_of_gas_4511":                               ; preds = %"$True_4507"
  call void @_out_of_gas()
  br label %"$have_gas_4512"

"$have_gas_4512":                                 ; preds = %"$out_of_gas_4511", %"$True_4507"
  %"$consume_4513" = sub i64 %"$gasrem_4509", 1
  store i64 %"$consume_4513", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_4514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4515" = icmp ugt i64 1, %"$gasrem_4514"
  br i1 %"$gascmp_4515", label %"$out_of_gas_4516", label %"$have_gas_4517"

"$out_of_gas_4516":                               ; preds = %"$have_gas_4512"
  call void @_out_of_gas()
  br label %"$have_gas_4517"

"$have_gas_4517":                                 ; preds = %"$out_of_gas_4516", %"$have_gas_4512"
  %"$consume_4518" = sub i64 %"$gasrem_4514", 1
  store i64 %"$consume_4518", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_106" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_4519" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_4520" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4519", 0
  %"$ud-registry.parentLabelToNode_envptr_4521" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4519", 1
  %"$ud-registry.parentLabelToNode_parent_4522" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4522", align 1
  %"$ud-registry.parentLabelToNode_call_4523" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_4520"(i8* %"$ud-registry.parentLabelToNode_envptr_4521", [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4522"), !dbg !432
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_4523", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_106", align 8, !dbg !432
  %"$ud-registry.parentLabelToNode_107" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_106_4524" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_106", align 8
  %"$$ud-registry.parentLabelToNode_106_fptr_4525" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_106_4524", 0
  %"$$ud-registry.parentLabelToNode_106_envptr_4526" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_106_4524", 1
  %"$$ud-registry.parentLabelToNode_106_retalloca_4527" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_106_fptr_4525"(i8* %"$$ud-registry.parentLabelToNode_106_envptr_4526", [32 x i8]* %"$$ud-registry.parentLabelToNode_106_retalloca_4527", %String %label), !dbg !432
  %"$$ud-registry.parentLabelToNode_106_ret_4528" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_106_retalloca_4527", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_106_ret_4528", [32 x i8]* %"$ud-registry.parentLabelToNode_107", align 1, !dbg !432
  %"$$ud-registry.parentLabelToNode_107_4529" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_107", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_107_4529", [32 x i8]* %node, align 1, !dbg !432
  %recordExists = alloca %TName_Bool*, align 8
  %"$indices_buf_4530_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4530_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4530_salloc_load", i64 32)
  %"$indices_buf_4530_salloc" = bitcast i8* %"$indices_buf_4530_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4530" = bitcast [32 x i8]* %"$indices_buf_4530_salloc" to i8*
  %"$node_4531" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4532" = getelementptr i8, i8* %"$indices_buf_4530", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_4532" to [32 x i8]*
  store [32 x i8] %"$node_4531", [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_4534" = load i8*, i8** @_execptr, align 8
  %"$recordExists_call_4535" = call i8* @_fetch_field(i8* %"$execptr_load_4534", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4533", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4530", i32 0), !dbg !435
  %"$recordExists_4536" = bitcast i8* %"$recordExists_call_4535" to %TName_Bool*
  store %TName_Bool* %"$recordExists_4536", %TName_Bool** %recordExists, align 8
  %"$recordExists_4537" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$$recordExists_4537_4538" = bitcast %TName_Bool* %"$recordExists_4537" to i8*
  %"$_literal_cost_call_4539" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321", i8* %"$$recordExists_4537_4538")
  %"$gasadd_4540" = add i64 %"$_literal_cost_call_4539", 0
  %"$gasadd_4541" = add i64 %"$gasadd_4540", 1
  %"$gasrem_4542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4543" = icmp ugt i64 %"$gasadd_4541", %"$gasrem_4542"
  br i1 %"$gascmp_4543", label %"$out_of_gas_4544", label %"$have_gas_4545"

"$out_of_gas_4544":                               ; preds = %"$have_gas_4517"
  call void @_out_of_gas()
  br label %"$have_gas_4545"

"$have_gas_4545":                                 ; preds = %"$out_of_gas_4544", %"$have_gas_4517"
  %"$consume_4546" = sub i64 %"$gasrem_4542", %"$gasadd_4541"
  store i64 %"$consume_4546", i64* @_gasrem, align 8
  %"$gasrem_4547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4548" = icmp ugt i64 2, %"$gasrem_4547"
  br i1 %"$gascmp_4548", label %"$out_of_gas_4549", label %"$have_gas_4550"

"$out_of_gas_4549":                               ; preds = %"$have_gas_4545"
  call void @_out_of_gas()
  br label %"$have_gas_4550"

"$have_gas_4550":                                 ; preds = %"$out_of_gas_4549", %"$have_gas_4545"
  %"$consume_4551" = sub i64 %"$gasrem_4547", 2
  store i64 %"$consume_4551", i64* @_gasrem, align 8
  %"$recordExists_4553" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$recordExists_tag_4554" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$recordExists_4553", i32 0, i32 0
  %"$recordExists_tag_4555" = load i8, i8* %"$recordExists_tag_4554", align 1
  switch i8 %"$recordExists_tag_4555", label %"$default_4556" [
    i8 1, label %"$False_4557"
  ], !dbg !436

"$False_4557":                                    ; preds = %"$have_gas_4550"
  %"$recordExists_4558" = bitcast %TName_Bool* %"$recordExists_4553" to %CName_False*
  %"$gasrem_4559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4560" = icmp ugt i64 1, %"$gasrem_4559"
  br i1 %"$gascmp_4560", label %"$out_of_gas_4561", label %"$have_gas_4562"

"$out_of_gas_4561":                               ; preds = %"$False_4557"
  call void @_out_of_gas()
  br label %"$have_gas_4562"

"$have_gas_4562":                                 ; preds = %"$out_of_gas_4561", %"$False_4557"
  %"$consume_4563" = sub i64 %"$gasrem_4559", 1
  store i64 %"$consume_4563", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_4564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4565" = icmp ugt i64 1, %"$gasrem_4564"
  br i1 %"$gascmp_4565", label %"$out_of_gas_4566", label %"$have_gas_4567"

"$out_of_gas_4566":                               ; preds = %"$have_gas_4562"
  call void @_out_of_gas()
  br label %"$have_gas_4567"

"$have_gas_4567":                                 ; preds = %"$out_of_gas_4566", %"$have_gas_4562"
  %"$consume_4568" = sub i64 %"$gasrem_4564", 1
  store i64 %"$consume_4568", i64* @_gasrem, align 8
  %"$ud-registry.eNewDomain_104" = alloca { i8* (i8*, %String)*, i8* }, align 8
  %"$ud-registry.eNewDomain_4569" = load { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain, align 8
  %"$ud-registry.eNewDomain_fptr_4570" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_4569", 0
  %"$ud-registry.eNewDomain_envptr_4571" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_4569", 1
  %"$ud-registry.eNewDomain_parent_4572" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.eNewDomain_parent_4572", align 1
  %"$ud-registry.eNewDomain_call_4573" = call { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_fptr_4570"(i8* %"$ud-registry.eNewDomain_envptr_4571", [32 x i8]* %"$ud-registry.eNewDomain_parent_4572"), !dbg !437
  store { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_call_4573", { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_104", align 8, !dbg !437
  %"$ud-registry.eNewDomain_105" = alloca i8*, align 8
  %"$$ud-registry.eNewDomain_104_4574" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_104", align 8
  %"$$ud-registry.eNewDomain_104_fptr_4575" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_104_4574", 0
  %"$$ud-registry.eNewDomain_104_envptr_4576" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_104_4574", 1
  %"$$ud-registry.eNewDomain_104_call_4577" = call i8* %"$$ud-registry.eNewDomain_104_fptr_4575"(i8* %"$$ud-registry.eNewDomain_104_envptr_4576", %String %label), !dbg !437
  store i8* %"$$ud-registry.eNewDomain_104_call_4577", i8** %"$ud-registry.eNewDomain_105", align 8, !dbg !437
  %"$$ud-registry.eNewDomain_105_4578" = load i8*, i8** %"$ud-registry.eNewDomain_105", align 8
  store i8* %"$$ud-registry.eNewDomain_105_4578", i8** %e, align 8, !dbg !437
  %"$e_4579" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_4581" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4579")
  %"$gasrem_4582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4583" = icmp ugt i64 %"$_literal_cost_call_4581", %"$gasrem_4582"
  br i1 %"$gascmp_4583", label %"$out_of_gas_4584", label %"$have_gas_4585"

"$out_of_gas_4584":                               ; preds = %"$have_gas_4567"
  call void @_out_of_gas()
  br label %"$have_gas_4585"

"$have_gas_4585":                                 ; preds = %"$out_of_gas_4584", %"$have_gas_4567"
  %"$consume_4586" = sub i64 %"$gasrem_4582", %"$_literal_cost_call_4581"
  store i64 %"$consume_4586", i64* @_gasrem, align 8
  %"$execptr_load_4587" = load i8*, i8** @_execptr, align 8
  %"$e_4588" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_4587", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4588"), !dbg !440
  br label %"$matchsucc_4552"

"$default_4556":                                  ; preds = %"$have_gas_4550"
  br label %"$joinp_7"

"$joinp_7":                                       ; preds = %"$default_4556"
  br label %"$matchsucc_4552"

"$matchsucc_4552":                                ; preds = %"$have_gas_4585", %"$joinp_7"
  %"$gasrem_4589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4590" = icmp ugt i64 1, %"$gasrem_4589"
  br i1 %"$gascmp_4590", label %"$out_of_gas_4591", label %"$have_gas_4592"

"$out_of_gas_4591":                               ; preds = %"$matchsucc_4552"
  call void @_out_of_gas()
  br label %"$have_gas_4592"

"$have_gas_4592":                                 ; preds = %"$out_of_gas_4591", %"$matchsucc_4552"
  %"$consume_4593" = sub i64 %"$gasrem_4589", 1
  store i64 %"$consume_4593", i64* @_gasrem, align 8
  %"$indices_buf_4594_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4594_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4594_salloc_load", i64 32)
  %"$indices_buf_4594_salloc" = bitcast i8* %"$indices_buf_4594_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4594" = bitcast [32 x i8]* %"$indices_buf_4594_salloc" to i8*
  %"$node_4595" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4596" = getelementptr i8, i8* %"$indices_buf_4594", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4596" to [32 x i8]*
  store [32 x i8] %"$node_4595", [32 x i8]* %indices_cast4, align 1
  %"$execptr_load_4597" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4597", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4598", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_4594", i8* null), !dbg !441
  %"$gasrem_4599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4600" = icmp ugt i64 1, %"$gasrem_4599"
  br i1 %"$gascmp_4600", label %"$out_of_gas_4601", label %"$have_gas_4602"

"$out_of_gas_4601":                               ; preds = %"$have_gas_4592"
  call void @_out_of_gas()
  br label %"$have_gas_4602"

"$have_gas_4602":                                 ; preds = %"$out_of_gas_4601", %"$have_gas_4592"
  %"$consume_4603" = sub i64 %"$gasrem_4599", 1
  store i64 %"$consume_4603", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_4604" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4605" = icmp ugt i64 1, %"$gasrem_4604"
  br i1 %"$gascmp_4605", label %"$out_of_gas_4606", label %"$have_gas_4607"

"$out_of_gas_4606":                               ; preds = %"$have_gas_4602"
  call void @_out_of_gas()
  br label %"$have_gas_4607"

"$have_gas_4607":                                 ; preds = %"$out_of_gas_4606", %"$have_gas_4602"
  %"$consume_4608" = sub i64 %"$gasrem_4604", 1
  store i64 %"$consume_4608", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_4609" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_4610_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4610_salloc" = call i8* @_salloc(i8* %"$adtval_4610_load", i64 41)
  %"$adtval_4610" = bitcast i8* %"$adtval_4610_salloc" to %CName_ud-registry.Record*
  %"$adtgep_4611" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4610", i32 0, i32 0
  store i8 0, i8* %"$adtgep_4611", align 1
  %"$adtgep_4612" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4610", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_4612", align 1
  %"$adtgep_4613" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4610", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_4609", [20 x i8]* %"$adtgep_4613", align 1
  %"$adtptr_4614" = bitcast %CName_ud-registry.Record* %"$adtval_4610" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_4614", %TName_ud-registry.Record** %newRecord, align 8, !dbg !442
  %"$newRecord_4615" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_4615_4616" = bitcast %TName_ud-registry.Record* %"$newRecord_4615" to i8*
  %"$_literal_cost_call_4617" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", i8* %"$$newRecord_4615_4616")
  %"$gasadd_4618" = add i64 %"$_literal_cost_call_4617", 1
  %"$gasrem_4619" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4620" = icmp ugt i64 %"$gasadd_4618", %"$gasrem_4619"
  br i1 %"$gascmp_4620", label %"$out_of_gas_4621", label %"$have_gas_4622"

"$out_of_gas_4621":                               ; preds = %"$have_gas_4607"
  call void @_out_of_gas()
  br label %"$have_gas_4622"

"$have_gas_4622":                                 ; preds = %"$out_of_gas_4621", %"$have_gas_4607"
  %"$consume_4623" = sub i64 %"$gasrem_4619", %"$gasadd_4618"
  store i64 %"$consume_4623", i64* @_gasrem, align 8
  %"$indices_buf_4624_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4624_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4624_salloc_load", i64 32)
  %"$indices_buf_4624_salloc" = bitcast i8* %"$indices_buf_4624_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4624" = bitcast [32 x i8]* %"$indices_buf_4624_salloc" to i8*
  %"$node_4625" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4626" = getelementptr i8, i8* %"$indices_buf_4624", i32 0
  %indices_cast5 = bitcast i8* %"$indices_gep_4626" to [32 x i8]*
  store [32 x i8] %"$node_4625", [32 x i8]* %indices_cast5, align 1
  %"$execptr_load_4627" = load i8*, i8** @_execptr, align 8
  %"$newRecord_4629" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_4630" = bitcast %TName_ud-registry.Record* %"$newRecord_4629" to i8*
  call void @_update_field(i8* %"$execptr_load_4627", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4628", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4624", i8* %"$update_value_4630"), !dbg !443
  %"$gasrem_4631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4632" = icmp ugt i64 1, %"$gasrem_4631"
  br i1 %"$gascmp_4632", label %"$out_of_gas_4633", label %"$have_gas_4634"

"$out_of_gas_4633":                               ; preds = %"$have_gas_4622"
  call void @_out_of_gas()
  br label %"$have_gas_4634"

"$have_gas_4634":                                 ; preds = %"$out_of_gas_4633", %"$have_gas_4622"
  %"$consume_4635" = sub i64 %"$gasrem_4631", 1
  store i64 %"$consume_4635", i64* @_gasrem, align 8
  %e6 = alloca i8*, align 8
  %"$gasrem_4636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4637" = icmp ugt i64 1, %"$gasrem_4636"
  br i1 %"$gascmp_4637", label %"$out_of_gas_4638", label %"$have_gas_4639"

"$out_of_gas_4638":                               ; preds = %"$have_gas_4634"
  call void @_out_of_gas()
  br label %"$have_gas_4639"

"$have_gas_4639":                                 ; preds = %"$out_of_gas_4638", %"$have_gas_4634"
  %"$consume_4640" = sub i64 %"$gasrem_4636", 1
  store i64 %"$consume_4640", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_101" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_4641" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_4642" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4641", 0
  %"$ud-registry.eConfigured_envptr_4643" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4641", 1
  %"$ud-registry.eConfigured_node_4644" = alloca [32 x i8], align 1
  %"$node_4645" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_4645", [32 x i8]* %"$ud-registry.eConfigured_node_4644", align 1
  %"$ud-registry.eConfigured_call_4646" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_4642"(i8* %"$ud-registry.eConfigured_envptr_4643", [32 x i8]* %"$ud-registry.eConfigured_node_4644"), !dbg !444
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_4646", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_101", align 8, !dbg !444
  %"$ud-registry.eConfigured_102" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_101_4647" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_101", align 8
  %"$$ud-registry.eConfigured_101_fptr_4648" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_101_4647", 0
  %"$$ud-registry.eConfigured_101_envptr_4649" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_101_4647", 1
  %"$$ud-registry.eConfigured_101_owner_4650" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_101_owner_4650", align 1
  %"$$ud-registry.eConfigured_101_call_4651" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_101_fptr_4648"(i8* %"$$ud-registry.eConfigured_101_envptr_4649", [20 x i8]* %"$$ud-registry.eConfigured_101_owner_4650"), !dbg !444
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_101_call_4651", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_102", align 8, !dbg !444
  %"$ud-registry.eConfigured_103" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_102_4652" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_102", align 8
  %"$$ud-registry.eConfigured_102_fptr_4653" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_102_4652", 0
  %"$$ud-registry.eConfigured_102_envptr_4654" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_102_4652", 1
  %"$$ud-registry.eConfigured_102_ud-registry.zeroByStr20_4655" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_4656" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_4656", [20 x i8]* %"$$ud-registry.eConfigured_102_ud-registry.zeroByStr20_4655", align 1
  %"$$ud-registry.eConfigured_102_call_4657" = call i8* %"$$ud-registry.eConfigured_102_fptr_4653"(i8* %"$$ud-registry.eConfigured_102_envptr_4654", [20 x i8]* %"$$ud-registry.eConfigured_102_ud-registry.zeroByStr20_4655"), !dbg !444
  store i8* %"$$ud-registry.eConfigured_102_call_4657", i8** %"$ud-registry.eConfigured_103", align 8, !dbg !444
  %"$$ud-registry.eConfigured_103_4658" = load i8*, i8** %"$ud-registry.eConfigured_103", align 8
  store i8* %"$$ud-registry.eConfigured_103_4658", i8** %e6, align 8, !dbg !444
  %"$e_4659" = load i8*, i8** %e6, align 8
  %"$_literal_cost_call_4661" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4659")
  %"$gasrem_4662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4663" = icmp ugt i64 %"$_literal_cost_call_4661", %"$gasrem_4662"
  br i1 %"$gascmp_4663", label %"$out_of_gas_4664", label %"$have_gas_4665"

"$out_of_gas_4664":                               ; preds = %"$have_gas_4639"
  call void @_out_of_gas()
  br label %"$have_gas_4665"

"$have_gas_4665":                                 ; preds = %"$out_of_gas_4664", %"$have_gas_4639"
  %"$consume_4666" = sub i64 %"$gasrem_4662", %"$_literal_cost_call_4661"
  store i64 %"$consume_4666", i64* @_gasrem, align 8
  %"$execptr_load_4667" = load i8*, i8** @_execptr, align 8
  %"$e_4668" = load i8*, i8** %e6, align 8
  call void @_event(i8* %"$execptr_load_4667", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4668"), !dbg !445
  %"$gasrem_4669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4670" = icmp ugt i64 1, %"$gasrem_4669"
  br i1 %"$gascmp_4670", label %"$out_of_gas_4671", label %"$have_gas_4672"

"$out_of_gas_4671":                               ; preds = %"$have_gas_4665"
  call void @_out_of_gas()
  br label %"$have_gas_4672"

"$have_gas_4672":                                 ; preds = %"$out_of_gas_4671", %"$have_gas_4665"
  %"$consume_4673" = sub i64 %"$gasrem_4669", 1
  store i64 %"$consume_4673", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_4674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4675" = icmp ugt i64 1, %"$gasrem_4674"
  br i1 %"$gascmp_4675", label %"$out_of_gas_4676", label %"$have_gas_4677"

"$out_of_gas_4676":                               ; preds = %"$have_gas_4672"
  call void @_out_of_gas()
  br label %"$have_gas_4677"

"$have_gas_4677":                                 ; preds = %"$out_of_gas_4676", %"$have_gas_4672"
  %"$consume_4678" = sub i64 %"$gasrem_4674", 1
  store i64 %"$consume_4678", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_4679" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4680" = icmp ugt i64 1, %"$gasrem_4679"
  br i1 %"$gascmp_4680", label %"$out_of_gas_4681", label %"$have_gas_4682"

"$out_of_gas_4681":                               ; preds = %"$have_gas_4677"
  call void @_out_of_gas()
  br label %"$have_gas_4682"

"$have_gas_4682":                                 ; preds = %"$out_of_gas_4681", %"$have_gas_4677"
  %"$consume_4683" = sub i64 %"$gasrem_4679", 1
  store i64 %"$consume_4683", i64* @_gasrem, align 8
  %"$msgobj_4684_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4684_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4684_salloc_load", i64 265)
  %"$msgobj_4684_salloc" = bitcast i8* %"$msgobj_4684_salloc_salloc" to [265 x i8]*
  %"$msgobj_4684" = bitcast [265 x i8]* %"$msgobj_4684_salloc" to i8*
  store i8 6, i8* %"$msgobj_4684", align 1
  %"$msgobj_fname_4686" = getelementptr i8, i8* %"$msgobj_4684", i32 1
  %"$msgobj_fname_4687" = bitcast i8* %"$msgobj_fname_4686" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4685", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4687", align 8
  %"$msgobj_td_4688" = getelementptr i8, i8* %"$msgobj_4684", i32 17
  %"$msgobj_td_4689" = bitcast i8* %"$msgobj_td_4688" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4689", align 8
  %"$msgobj_v_4691" = getelementptr i8, i8* %"$msgobj_4684", i32 25
  %"$msgobj_v_4692" = bitcast i8* %"$msgobj_v_4691" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_4690", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_4692", align 8
  %"$msgobj_fname_4694" = getelementptr i8, i8* %"$msgobj_4684", i32 41
  %"$msgobj_fname_4695" = bitcast i8* %"$msgobj_fname_4694" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_4693", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_4695", align 8
  %"$msgobj_td_4696" = getelementptr i8, i8* %"$msgobj_4684", i32 57
  %"$msgobj_td_4697" = bitcast i8* %"$msgobj_td_4696" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_4697", align 8
  %"$msgobj_v_4698" = getelementptr i8, i8* %"$msgobj_4684", i32 65
  %"$msgobj_v_4699" = bitcast i8* %"$msgobj_v_4698" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_4699", align 1
  %"$msgobj_fname_4701" = getelementptr i8, i8* %"$msgobj_4684", i32 97
  %"$msgobj_fname_4702" = bitcast i8* %"$msgobj_fname_4701" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4700", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4702", align 8
  %"$msgobj_td_4703" = getelementptr i8, i8* %"$msgobj_4684", i32 113
  %"$msgobj_td_4704" = bitcast i8* %"$msgobj_td_4703" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4704", align 8
  %"$msgobj_v_4705" = getelementptr i8, i8* %"$msgobj_4684", i32 121
  %"$msgobj_v_4706" = bitcast i8* %"$msgobj_v_4705" to %String*
  store %String %label, %String* %"$msgobj_v_4706", align 8
  %"$msgobj_fname_4708" = getelementptr i8, i8* %"$msgobj_4684", i32 137
  %"$msgobj_fname_4709" = bitcast i8* %"$msgobj_fname_4708" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4707", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4709", align 8
  %"$msgobj_td_4710" = getelementptr i8, i8* %"$msgobj_4684", i32 153
  %"$msgobj_td_4711" = bitcast i8* %"$msgobj_td_4710" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4711", align 8
  %"$msgobj_v_4712" = getelementptr i8, i8* %"$msgobj_4684", i32 161
  %"$msgobj_v_4713" = bitcast i8* %"$msgobj_v_4712" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4713", align 1
  %"$msgobj_fname_4715" = getelementptr i8, i8* %"$msgobj_4684", i32 181
  %"$msgobj_fname_4716" = bitcast i8* %"$msgobj_fname_4715" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4714", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4716", align 8
  %"$msgobj_td_4717" = getelementptr i8, i8* %"$msgobj_4684", i32 197
  %"$msgobj_td_4718" = bitcast i8* %"$msgobj_td_4717" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_4718", align 8
  %"$msgobj_v_4719" = getelementptr i8, i8* %"$msgobj_4684", i32 205
  %"$msgobj_v_4720" = bitcast i8* %"$msgobj_v_4719" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4720", align 8
  %"$msgobj_fname_4722" = getelementptr i8, i8* %"$msgobj_4684", i32 221
  %"$msgobj_fname_4723" = bitcast i8* %"$msgobj_fname_4722" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4721", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4723", align 8
  %"$msgobj_td_4724" = getelementptr i8, i8* %"$msgobj_4684", i32 237
  %"$msgobj_td_4725" = bitcast i8* %"$msgobj_td_4724" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4725", align 8
  %"$msgobj_v_4726" = getelementptr i8, i8* %"$msgobj_4684", i32 245
  %"$msgobj_v_4727" = bitcast i8* %"$msgobj_v_4726" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4727", align 1
  store i8* %"$msgobj_4684", i8** %m, align 8, !dbg !446
  %"$gasrem_4729" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4730" = icmp ugt i64 1, %"$gasrem_4729"
  br i1 %"$gascmp_4730", label %"$out_of_gas_4731", label %"$have_gas_4732"

"$out_of_gas_4731":                               ; preds = %"$have_gas_4682"
  call void @_out_of_gas()
  br label %"$have_gas_4732"

"$have_gas_4732":                                 ; preds = %"$out_of_gas_4731", %"$have_gas_4682"
  %"$consume_4733" = sub i64 %"$gasrem_4729", 1
  store i64 %"$consume_4733", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_100" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4734" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4735" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4734", 0
  %"$ud-registry.oneMsg_envptr_4736" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4734", 1
  %"$m_4737" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_4738" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4735"(i8* %"$ud-registry.oneMsg_envptr_4736", i8* %"$m_4737"), !dbg !447
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4738", %TName_List_Message** %"$ud-registry.oneMsg_100", align 8, !dbg !447
  %"$$ud-registry.oneMsg_100_4739" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_100", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_100_4739", %TName_List_Message** %msgs, align 8, !dbg !447
  %"$msgs_4740" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_4740_4741" = bitcast %TName_List_Message* %"$msgs_4740" to i8*
  %"$_literal_cost_call_4742" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_4740_4741")
  %"$gasrem_4743" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4744" = icmp ugt i64 %"$_literal_cost_call_4742", %"$gasrem_4743"
  br i1 %"$gascmp_4744", label %"$out_of_gas_4745", label %"$have_gas_4746"

"$out_of_gas_4745":                               ; preds = %"$have_gas_4732"
  call void @_out_of_gas()
  br label %"$have_gas_4746"

"$have_gas_4746":                                 ; preds = %"$out_of_gas_4745", %"$have_gas_4732"
  %"$consume_4747" = sub i64 %"$gasrem_4743", %"$_literal_cost_call_4742"
  store i64 %"$consume_4747", i64* @_gasrem, align 8
  %"$execptr_load_4748" = load i8*, i8** @_execptr, align 8
  %"$msgs_4749" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_4748", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_4749"), !dbg !448
  br label %"$matchsucc_4502"

"$False_4750":                                    ; preds = %"$have_gas_4500"
  %"$isSenderOAO_4751" = bitcast %TName_Bool* %"$isSenderOAO_4503" to %CName_False*
  %"$gasrem_4752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4753" = icmp ugt i64 1, %"$gasrem_4752"
  br i1 %"$gascmp_4753", label %"$out_of_gas_4754", label %"$have_gas_4755"

"$out_of_gas_4754":                               ; preds = %"$False_4750"
  call void @_out_of_gas()
  br label %"$have_gas_4755"

"$have_gas_4755":                                 ; preds = %"$out_of_gas_4754", %"$False_4750"
  %"$consume_4756" = sub i64 %"$gasrem_4752", 1
  store i64 %"$consume_4756", i64* @_gasrem, align 8
  %e7 = alloca i8*, align 8
  %"$gasrem_4757" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4758" = icmp ugt i64 1, %"$gasrem_4757"
  br i1 %"$gascmp_4758", label %"$out_of_gas_4759", label %"$have_gas_4760"

"$out_of_gas_4759":                               ; preds = %"$have_gas_4755"
  call void @_out_of_gas()
  br label %"$have_gas_4760"

"$have_gas_4760":                                 ; preds = %"$out_of_gas_4759", %"$have_gas_4755"
  %"$consume_4761" = sub i64 %"$gasrem_4757", 1
  store i64 %"$consume_4761", i64* @_gasrem, align 8
  %m8 = alloca %String, align 8
  %"$gasrem_4762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4763" = icmp ugt i64 1, %"$gasrem_4762"
  br i1 %"$gascmp_4763", label %"$out_of_gas_4764", label %"$have_gas_4765"

"$out_of_gas_4764":                               ; preds = %"$have_gas_4760"
  call void @_out_of_gas()
  br label %"$have_gas_4765"

"$have_gas_4765":                                 ; preds = %"$out_of_gas_4764", %"$have_gas_4760"
  %"$consume_4766" = sub i64 %"$gasrem_4762", 1
  store i64 %"$consume_4766", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"$stringlit_4767", i32 0, i32 0), i32 45 }, %String* %m8, align 8, !dbg !449
  %"$gasrem_4768" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4769" = icmp ugt i64 1, %"$gasrem_4768"
  br i1 %"$gascmp_4769", label %"$out_of_gas_4770", label %"$have_gas_4771"

"$out_of_gas_4770":                               ; preds = %"$have_gas_4765"
  call void @_out_of_gas()
  br label %"$have_gas_4771"

"$have_gas_4771":                                 ; preds = %"$out_of_gas_4770", %"$have_gas_4765"
  %"$consume_4772" = sub i64 %"$gasrem_4768", 1
  store i64 %"$consume_4772", i64* @_gasrem, align 8
  %"$ud-registry.eError_109" = alloca i8*, align 8
  %"$ud-registry.eError_4773" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_4774" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4773", 0
  %"$ud-registry.eError_envptr_4775" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4773", 1
  %"$m_4776" = load %String, %String* %m8, align 8
  %"$ud-registry.eError_call_4777" = call i8* %"$ud-registry.eError_fptr_4774"(i8* %"$ud-registry.eError_envptr_4775", %String %"$m_4776"), !dbg !451
  store i8* %"$ud-registry.eError_call_4777", i8** %"$ud-registry.eError_109", align 8, !dbg !451
  %"$$ud-registry.eError_109_4778" = load i8*, i8** %"$ud-registry.eError_109", align 8
  store i8* %"$$ud-registry.eError_109_4778", i8** %e7, align 8, !dbg !451
  %"$e_4779" = load i8*, i8** %e7, align 8
  %"$_literal_cost_call_4781" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4779")
  %"$gasrem_4782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4783" = icmp ugt i64 %"$_literal_cost_call_4781", %"$gasrem_4782"
  br i1 %"$gascmp_4783", label %"$out_of_gas_4784", label %"$have_gas_4785"

"$out_of_gas_4784":                               ; preds = %"$have_gas_4771"
  call void @_out_of_gas()
  br label %"$have_gas_4785"

"$have_gas_4785":                                 ; preds = %"$out_of_gas_4784", %"$have_gas_4771"
  %"$consume_4786" = sub i64 %"$gasrem_4782", %"$_literal_cost_call_4781"
  store i64 %"$consume_4786", i64* @_gasrem, align 8
  %"$execptr_load_4787" = load i8*, i8** @_execptr, align 8
  %"$e_4788" = load i8*, i8** %e7, align 8
  call void @_event(i8* %"$execptr_load_4787", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4788"), !dbg !452
  %"$gasrem_4789" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4790" = icmp ugt i64 1, %"$gasrem_4789"
  br i1 %"$gascmp_4790", label %"$out_of_gas_4791", label %"$have_gas_4792"

"$out_of_gas_4791":                               ; preds = %"$have_gas_4785"
  call void @_out_of_gas()
  br label %"$have_gas_4792"

"$have_gas_4792":                                 ; preds = %"$out_of_gas_4791", %"$have_gas_4785"
  %"$consume_4793" = sub i64 %"$gasrem_4789", 1
  store i64 %"$consume_4793", i64* @_gasrem, align 8
  %msgs9 = alloca %TName_List_Message*, align 8
  %"$gasrem_4794" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4795" = icmp ugt i64 1, %"$gasrem_4794"
  br i1 %"$gascmp_4795", label %"$out_of_gas_4796", label %"$have_gas_4797"

"$out_of_gas_4796":                               ; preds = %"$have_gas_4792"
  call void @_out_of_gas()
  br label %"$have_gas_4797"

"$have_gas_4797":                                 ; preds = %"$out_of_gas_4796", %"$have_gas_4792"
  %"$consume_4798" = sub i64 %"$gasrem_4794", 1
  store i64 %"$consume_4798", i64* @_gasrem, align 8
  %"$m_2" = alloca i8*, align 8
  %"$gasrem_4799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4800" = icmp ugt i64 1, %"$gasrem_4799"
  br i1 %"$gascmp_4800", label %"$out_of_gas_4801", label %"$have_gas_4802"

"$out_of_gas_4801":                               ; preds = %"$have_gas_4797"
  call void @_out_of_gas()
  br label %"$have_gas_4802"

"$have_gas_4802":                                 ; preds = %"$out_of_gas_4801", %"$have_gas_4797"
  %"$consume_4803" = sub i64 %"$gasrem_4799", 1
  store i64 %"$consume_4803", i64* @_gasrem, align 8
  %"$msgobj_4804_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4804_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4804_salloc_load", i64 265)
  %"$msgobj_4804_salloc" = bitcast i8* %"$msgobj_4804_salloc_salloc" to [265 x i8]*
  %"$msgobj_4804" = bitcast [265 x i8]* %"$msgobj_4804_salloc" to i8*
  store i8 6, i8* %"$msgobj_4804", align 1
  %"$msgobj_fname_4806" = getelementptr i8, i8* %"$msgobj_4804", i32 1
  %"$msgobj_fname_4807" = bitcast i8* %"$msgobj_fname_4806" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4805", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4807", align 8
  %"$msgobj_td_4808" = getelementptr i8, i8* %"$msgobj_4804", i32 17
  %"$msgobj_td_4809" = bitcast i8* %"$msgobj_td_4808" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4809", align 8
  %"$msgobj_v_4811" = getelementptr i8, i8* %"$msgobj_4804", i32 25
  %"$msgobj_v_4812" = bitcast i8* %"$msgobj_v_4811" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_4810", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_4812", align 8
  %"$msgobj_fname_4814" = getelementptr i8, i8* %"$msgobj_4804", i32 41
  %"$msgobj_fname_4815" = bitcast i8* %"$msgobj_fname_4814" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_4813", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_4815", align 8
  %"$msgobj_td_4816" = getelementptr i8, i8* %"$msgobj_4804", i32 57
  %"$msgobj_td_4817" = bitcast i8* %"$msgobj_td_4816" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_4817", align 8
  %"$msgobj_v_4818" = getelementptr i8, i8* %"$msgobj_4804", i32 65
  %"$msgobj_v_4819" = bitcast i8* %"$msgobj_v_4818" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_4819", align 1
  %"$msgobj_fname_4821" = getelementptr i8, i8* %"$msgobj_4804", i32 97
  %"$msgobj_fname_4822" = bitcast i8* %"$msgobj_fname_4821" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4820", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4822", align 8
  %"$msgobj_td_4823" = getelementptr i8, i8* %"$msgobj_4804", i32 113
  %"$msgobj_td_4824" = bitcast i8* %"$msgobj_td_4823" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4824", align 8
  %"$msgobj_v_4825" = getelementptr i8, i8* %"$msgobj_4804", i32 121
  %"$msgobj_v_4826" = bitcast i8* %"$msgobj_v_4825" to %String*
  store %String %label, %String* %"$msgobj_v_4826", align 8
  %"$msgobj_fname_4828" = getelementptr i8, i8* %"$msgobj_4804", i32 137
  %"$msgobj_fname_4829" = bitcast i8* %"$msgobj_fname_4828" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4827", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4829", align 8
  %"$msgobj_td_4830" = getelementptr i8, i8* %"$msgobj_4804", i32 153
  %"$msgobj_td_4831" = bitcast i8* %"$msgobj_td_4830" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4831", align 8
  %"$recordOwner_4832" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$msgobj_v_4833" = getelementptr i8, i8* %"$msgobj_4804", i32 161
  %"$msgobj_v_4834" = bitcast i8* %"$msgobj_v_4833" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4832", [20 x i8]* %"$msgobj_v_4834", align 1
  %"$msgobj_fname_4836" = getelementptr i8, i8* %"$msgobj_4804", i32 181
  %"$msgobj_fname_4837" = bitcast i8* %"$msgobj_fname_4836" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4835", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4837", align 8
  %"$msgobj_td_4838" = getelementptr i8, i8* %"$msgobj_4804", i32 197
  %"$msgobj_td_4839" = bitcast i8* %"$msgobj_td_4838" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_4839", align 8
  %"$msgobj_v_4840" = getelementptr i8, i8* %"$msgobj_4804", i32 205
  %"$msgobj_v_4841" = bitcast i8* %"$msgobj_v_4840" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4841", align 8
  %"$msgobj_fname_4843" = getelementptr i8, i8* %"$msgobj_4804", i32 221
  %"$msgobj_fname_4844" = bitcast i8* %"$msgobj_fname_4843" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4842", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4844", align 8
  %"$msgobj_td_4845" = getelementptr i8, i8* %"$msgobj_4804", i32 237
  %"$msgobj_td_4846" = bitcast i8* %"$msgobj_td_4845" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4846", align 8
  %"$msgobj_v_4847" = getelementptr i8, i8* %"$msgobj_4804", i32 245
  %"$msgobj_v_4848" = bitcast i8* %"$msgobj_v_4847" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4848", align 1
  store i8* %"$msgobj_4804", i8** %"$m_2", align 8, !dbg !453
  %"$gasrem_4850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4851" = icmp ugt i64 1, %"$gasrem_4850"
  br i1 %"$gascmp_4851", label %"$out_of_gas_4852", label %"$have_gas_4853"

"$out_of_gas_4852":                               ; preds = %"$have_gas_4802"
  call void @_out_of_gas()
  br label %"$have_gas_4853"

"$have_gas_4853":                                 ; preds = %"$out_of_gas_4852", %"$have_gas_4802"
  %"$consume_4854" = sub i64 %"$gasrem_4850", 1
  store i64 %"$consume_4854", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_108" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4855" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4856" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4855", 0
  %"$ud-registry.oneMsg_envptr_4857" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4855", 1
  %"$$m_2_4858" = load i8*, i8** %"$m_2", align 8
  %"$ud-registry.oneMsg_call_4859" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4856"(i8* %"$ud-registry.oneMsg_envptr_4857", i8* %"$$m_2_4858"), !dbg !454
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4859", %TName_List_Message** %"$ud-registry.oneMsg_108", align 8, !dbg !454
  %"$$ud-registry.oneMsg_108_4860" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_108", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_108_4860", %TName_List_Message** %msgs9, align 8, !dbg !454
  %"$msgs_4861" = load %TName_List_Message*, %TName_List_Message** %msgs9, align 8
  %"$$msgs_4861_4862" = bitcast %TName_List_Message* %"$msgs_4861" to i8*
  %"$_literal_cost_call_4863" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_4861_4862")
  %"$gasrem_4864" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4865" = icmp ugt i64 %"$_literal_cost_call_4863", %"$gasrem_4864"
  br i1 %"$gascmp_4865", label %"$out_of_gas_4866", label %"$have_gas_4867"

"$out_of_gas_4866":                               ; preds = %"$have_gas_4853"
  call void @_out_of_gas()
  br label %"$have_gas_4867"

"$have_gas_4867":                                 ; preds = %"$out_of_gas_4866", %"$have_gas_4853"
  %"$consume_4868" = sub i64 %"$gasrem_4864", %"$_literal_cost_call_4863"
  store i64 %"$consume_4868", i64* @_gasrem, align 8
  %"$execptr_load_4869" = load i8*, i8** @_execptr, align 8
  %"$msgs_4870" = load %TName_List_Message*, %TName_List_Message** %msgs9, align 8
  call void @_send(i8* %"$execptr_load_4869", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_4870"), !dbg !455
  br label %"$matchsucc_4502"

"$empty_default_4506":                            ; preds = %"$have_gas_4500"
  br label %"$matchsucc_4502"

"$matchsucc_4502":                                ; preds = %"$have_gas_4867", %"$have_gas_4746", %"$empty_default_4506"
  ret void
}

define void @assign(i8* %0) !dbg !456 {
entry:
  %"$_amount_4872" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4873" = bitcast i8* %"$_amount_4872" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4873", align 8
  %"$_origin_4874" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4875" = bitcast i8* %"$_origin_4874" to [20 x i8]*
  %"$_sender_4876" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4877" = bitcast i8* %"$_sender_4876" to [20 x i8]*
  %"$parent_4878" = getelementptr i8, i8* %0, i32 56
  %"$parent_4879" = bitcast i8* %"$parent_4878" to [32 x i8]*
  %"$label_4880" = getelementptr i8, i8* %0, i32 88
  %"$label_4881" = bitcast i8* %"$label_4880" to %String*
  %label = load %String, %String* %"$label_4881", align 8
  %"$owner_4882" = getelementptr i8, i8* %0, i32 104
  %"$owner_4883" = bitcast i8* %"$owner_4882" to [20 x i8]*
  call void @"$assign_4394"(%Uint128 %_amount, [20 x i8]* %"$_origin_4875", [20 x i8]* %"$_sender_4877", [32 x i8]* %"$parent_4879", %String %label, [20 x i8]* %"$owner_4883"), !dbg !457
  ret void
}

define internal void @"$bestow_4884"(%Uint128 %_amount, [20 x i8]* %"$_origin_4885", [20 x i8]* %"$_sender_4886", %String %label, [20 x i8]* %"$owner_4887", [20 x i8]* %"$resolver_4888") !dbg !458 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4885", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4886", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_4887", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_4888", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_4890" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_4891" = call i8* @_fetch_field(i8* %"$execptr_load_4890", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_4889", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i32 0, i8* null, i32 1), !dbg !459
  %"$currentAdmins_4892" = bitcast i8* %"$currentAdmins_call_4891" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_4892", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_4893" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_4893_4894" = bitcast %TName_List_ByStr20* %"$currentAdmins_4893" to i8*
  %"$_literal_cost_call_4895" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i8* %"$$currentAdmins_4893_4894")
  %"$gasadd_4896" = add i64 %"$_literal_cost_call_4895", 0
  %"$gasrem_4897" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4898" = icmp ugt i64 %"$gasadd_4896", %"$gasrem_4897"
  br i1 %"$gascmp_4898", label %"$out_of_gas_4899", label %"$have_gas_4900"

"$out_of_gas_4899":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4900"

"$have_gas_4900":                                 ; preds = %"$out_of_gas_4899", %entry
  %"$consume_4901" = sub i64 %"$gasrem_4897", %"$gasadd_4896"
  store i64 %"$consume_4901", i64* @_gasrem, align 8
  %"$gasrem_4902" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4903" = icmp ugt i64 1, %"$gasrem_4902"
  br i1 %"$gascmp_4903", label %"$out_of_gas_4904", label %"$have_gas_4905"

"$out_of_gas_4904":                               ; preds = %"$have_gas_4900"
  call void @_out_of_gas()
  br label %"$have_gas_4905"

"$have_gas_4905":                                 ; preds = %"$out_of_gas_4904", %"$have_gas_4900"
  %"$consume_4906" = sub i64 %"$gasrem_4902", 1
  store i64 %"$consume_4906", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_4907" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4908" = icmp ugt i64 1, %"$gasrem_4907"
  br i1 %"$gascmp_4908", label %"$out_of_gas_4909", label %"$have_gas_4910"

"$out_of_gas_4909":                               ; preds = %"$have_gas_4905"
  call void @_out_of_gas()
  br label %"$have_gas_4910"

"$have_gas_4910":                                 ; preds = %"$out_of_gas_4909", %"$have_gas_4905"
  %"$consume_4911" = sub i64 %"$gasrem_4907", 1
  store i64 %"$consume_4911", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_132" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_4912" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_4913" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4912", 0
  %"$ud-registry.parentLabelToNode_envptr_4914" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4912", 1
  %"$ud-registry.parentLabelToNode_rootNode_4915" = alloca [32 x i8], align 1
  %"$rootNode_4916" = load [32 x i8], [32 x i8]* @_cparam_rootNode, align 1
  store [32 x i8] %"$rootNode_4916", [32 x i8]* %"$ud-registry.parentLabelToNode_rootNode_4915", align 1
  %"$ud-registry.parentLabelToNode_call_4917" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_4913"(i8* %"$ud-registry.parentLabelToNode_envptr_4914", [32 x i8]* %"$ud-registry.parentLabelToNode_rootNode_4915"), !dbg !460
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_4917", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_132", align 8, !dbg !460
  %"$ud-registry.parentLabelToNode_133" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_132_4918" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_132", align 8
  %"$$ud-registry.parentLabelToNode_132_fptr_4919" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_132_4918", 0
  %"$$ud-registry.parentLabelToNode_132_envptr_4920" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_132_4918", 1
  %"$$ud-registry.parentLabelToNode_132_retalloca_4921" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_132_fptr_4919"(i8* %"$$ud-registry.parentLabelToNode_132_envptr_4920", [32 x i8]* %"$$ud-registry.parentLabelToNode_132_retalloca_4921", %String %label), !dbg !460
  %"$$ud-registry.parentLabelToNode_132_ret_4922" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_132_retalloca_4921", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_132_ret_4922", [32 x i8]* %"$ud-registry.parentLabelToNode_133", align 1, !dbg !460
  %"$$ud-registry.parentLabelToNode_133_4923" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_133", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_133_4923", [32 x i8]* %node, align 1, !dbg !460
  %recordExists = alloca %TName_Bool*, align 8
  %"$indices_buf_4924_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4924_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4924_salloc_load", i64 32)
  %"$indices_buf_4924_salloc" = bitcast i8* %"$indices_buf_4924_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4924" = bitcast [32 x i8]* %"$indices_buf_4924_salloc" to i8*
  %"$node_4925" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4926" = getelementptr i8, i8* %"$indices_buf_4924", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4926" to [32 x i8]*
  store [32 x i8] %"$node_4925", [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4928" = load i8*, i8** @_execptr, align 8
  %"$recordExists_call_4929" = call i8* @_fetch_field(i8* %"$execptr_load_4928", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4927", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4924", i32 0), !dbg !461
  %"$recordExists_4930" = bitcast i8* %"$recordExists_call_4929" to %TName_Bool*
  store %TName_Bool* %"$recordExists_4930", %TName_Bool** %recordExists, align 8
  %"$recordExists_4931" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$$recordExists_4931_4932" = bitcast %TName_Bool* %"$recordExists_4931" to i8*
  %"$_literal_cost_call_4933" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321", i8* %"$$recordExists_4931_4932")
  %"$gasadd_4934" = add i64 %"$_literal_cost_call_4933", 0
  %"$gasadd_4935" = add i64 %"$gasadd_4934", 1
  %"$gasrem_4936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4937" = icmp ugt i64 %"$gasadd_4935", %"$gasrem_4936"
  br i1 %"$gascmp_4937", label %"$out_of_gas_4938", label %"$have_gas_4939"

"$out_of_gas_4938":                               ; preds = %"$have_gas_4910"
  call void @_out_of_gas()
  br label %"$have_gas_4939"

"$have_gas_4939":                                 ; preds = %"$out_of_gas_4938", %"$have_gas_4910"
  %"$consume_4940" = sub i64 %"$gasrem_4936", %"$gasadd_4935"
  store i64 %"$consume_4940", i64* @_gasrem, align 8
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_4941_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4941_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4941_salloc_load", i64 32)
  %"$indices_buf_4941_salloc" = bitcast i8* %"$indices_buf_4941_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4941" = bitcast [32 x i8]* %"$indices_buf_4941_salloc" to i8*
  %"$node_4942" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4943" = getelementptr i8, i8* %"$indices_buf_4941", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4943" to [32 x i8]*
  store [32 x i8] %"$node_4942", [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4945" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_4946" = call i8* @_fetch_field(i8* %"$execptr_load_4945", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4944", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4941", i32 1), !dbg !462
  %"$maybeRecord_4947" = bitcast i8* %"$maybeRecord_call_4946" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4947", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_4948" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_4948_4949" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4948" to i8*
  %"$_literal_cost_call_4950" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_4948_4949")
  %"$gasadd_4951" = add i64 %"$_literal_cost_call_4950", 0
  %"$gasadd_4952" = add i64 %"$gasadd_4951", 1
  %"$gasrem_4953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4954" = icmp ugt i64 %"$gasadd_4952", %"$gasrem_4953"
  br i1 %"$gascmp_4954", label %"$out_of_gas_4955", label %"$have_gas_4956"

"$out_of_gas_4955":                               ; preds = %"$have_gas_4939"
  call void @_out_of_gas()
  br label %"$have_gas_4956"

"$have_gas_4956":                                 ; preds = %"$out_of_gas_4955", %"$have_gas_4939"
  %"$consume_4957" = sub i64 %"$gasrem_4953", %"$gasadd_4952"
  store i64 %"$consume_4957", i64* @_gasrem, align 8
  %currentRegistrar = alloca [20 x i8], align 1
  %"$execptr_load_4959" = load i8*, i8** @_execptr, align 8
  %"$currentRegistrar_call_4960" = call i8* @_fetch_field(i8* %"$execptr_load_4959", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_4958", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i32 0, i8* null, i32 1), !dbg !463
  %"$currentRegistrar_4961" = bitcast i8* %"$currentRegistrar_call_4960" to [20 x i8]*
  %"$currentRegistrar_4962" = load [20 x i8], [20 x i8]* %"$currentRegistrar_4961", align 1
  store [20 x i8] %"$currentRegistrar_4962", [20 x i8]* %currentRegistrar, align 1
  %"$_literal_cost_currentRegistrar_4963" = alloca [20 x i8], align 1
  %"$currentRegistrar_4964" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_4964", [20 x i8]* %"$_literal_cost_currentRegistrar_4963", align 1
  %"$$_literal_cost_currentRegistrar_4963_4965" = bitcast [20 x i8]* %"$_literal_cost_currentRegistrar_4963" to i8*
  %"$_literal_cost_call_4966" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i8* %"$$_literal_cost_currentRegistrar_4963_4965")
  %"$gasadd_4967" = add i64 %"$_literal_cost_call_4966", 0
  %"$gasrem_4968" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4969" = icmp ugt i64 %"$gasadd_4967", %"$gasrem_4968"
  br i1 %"$gascmp_4969", label %"$out_of_gas_4970", label %"$have_gas_4971"

"$out_of_gas_4970":                               ; preds = %"$have_gas_4956"
  call void @_out_of_gas()
  br label %"$have_gas_4971"

"$have_gas_4971":                                 ; preds = %"$out_of_gas_4970", %"$have_gas_4956"
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
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_4978" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4979" = icmp ugt i64 1, %"$gasrem_4978"
  br i1 %"$gascmp_4979", label %"$out_of_gas_4980", label %"$have_gas_4981"

"$out_of_gas_4980":                               ; preds = %"$have_gas_4976"
  call void @_out_of_gas()
  br label %"$have_gas_4981"

"$have_gas_4981":                                 ; preds = %"$out_of_gas_4980", %"$have_gas_4976"
  %"$consume_4982" = sub i64 %"$gasrem_4978", 1
  store i64 %"$consume_4982", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_4983" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4984" = icmp ugt i64 1, %"$gasrem_4983"
  br i1 %"$gascmp_4984", label %"$out_of_gas_4985", label %"$have_gas_4986"

"$out_of_gas_4985":                               ; preds = %"$have_gas_4981"
  call void @_out_of_gas()
  br label %"$have_gas_4986"

"$have_gas_4986":                                 ; preds = %"$out_of_gas_4985", %"$have_gas_4981"
  %"$consume_4987" = sub i64 %"$gasrem_4983", 1
  store i64 %"$consume_4987", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_121" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_4988" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_4989" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_4988", 0
  %"$ud-registry.listByStr20Contains_envptr_4990" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_4988", 1
  %"$currentAdmins_4991" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_4992" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_4989"(i8* %"$ud-registry.listByStr20Contains_envptr_4990", %TName_List_ByStr20* %"$currentAdmins_4991"), !dbg !464
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_4992", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_121", align 8, !dbg !464
  %"$ud-registry.listByStr20Contains_122" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_121_4993" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_121", align 8
  %"$$ud-registry.listByStr20Contains_121_fptr_4994" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_121_4993", 0
  %"$$ud-registry.listByStr20Contains_121_envptr_4995" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_121_4993", 1
  %"$$ud-registry.listByStr20Contains_121__sender_4996" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_121__sender_4996", align 1
  %"$$ud-registry.listByStr20Contains_121_call_4997" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_121_fptr_4994"(i8* %"$$ud-registry.listByStr20Contains_121_envptr_4995", [20 x i8]* %"$$ud-registry.listByStr20Contains_121__sender_4996"), !dbg !464
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_121_call_4997", %TName_Bool** %"$ud-registry.listByStr20Contains_122", align 8, !dbg !464
  %"$$ud-registry.listByStr20Contains_122_4998" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_122", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_122_4998", %TName_Bool** %isSenderAdmin, align 8, !dbg !464
  %"$gasrem_4999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5000" = icmp ugt i64 1, %"$gasrem_4999"
  br i1 %"$gascmp_5000", label %"$out_of_gas_5001", label %"$have_gas_5002"

"$out_of_gas_5001":                               ; preds = %"$have_gas_4986"
  call void @_out_of_gas()
  br label %"$have_gas_5002"

"$have_gas_5002":                                 ; preds = %"$out_of_gas_5001", %"$have_gas_4986"
  %"$consume_5003" = sub i64 %"$gasrem_4999", 1
  store i64 %"$consume_5003", i64* @_gasrem, align 8
  %isSenderRegistrar = alloca %TName_Bool*, align 8
  %"$execptr_load_5004" = load i8*, i8** @_execptr, align 8
  %"$eq_currentRegistrar_5005" = alloca [20 x i8], align 1
  %"$currentRegistrar_5006" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5006", [20 x i8]* %"$eq_currentRegistrar_5005", align 1
  %"$$eq_currentRegistrar_5005_5007" = bitcast [20 x i8]* %"$eq_currentRegistrar_5005" to i8*
  %"$eq__sender_5008" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_5008", align 1
  %"$$eq__sender_5008_5009" = bitcast [20 x i8]* %"$eq__sender_5008" to i8*
  %"$eq_call_5010" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5004", i32 20, i8* %"$$eq_currentRegistrar_5005_5007", i8* %"$$eq__sender_5008_5009"), !dbg !465
  store %TName_Bool* %"$eq_call_5010", %TName_Bool** %isSenderRegistrar, align 8, !dbg !465
  %"$gasrem_5012" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5013" = icmp ugt i64 1, %"$gasrem_5012"
  br i1 %"$gascmp_5013", label %"$out_of_gas_5014", label %"$have_gas_5015"

"$out_of_gas_5014":                               ; preds = %"$have_gas_5002"
  call void @_out_of_gas()
  br label %"$have_gas_5015"

"$have_gas_5015":                                 ; preds = %"$out_of_gas_5014", %"$have_gas_5002"
  %"$consume_5016" = sub i64 %"$gasrem_5012", 1
  store i64 %"$consume_5016", i64* @_gasrem, align 8
  %isOkSender = alloca %TName_Bool*, align 8
  %"$gasrem_5017" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5018" = icmp ugt i64 1, %"$gasrem_5017"
  br i1 %"$gascmp_5018", label %"$out_of_gas_5019", label %"$have_gas_5020"

"$out_of_gas_5019":                               ; preds = %"$have_gas_5015"
  call void @_out_of_gas()
  br label %"$have_gas_5020"

"$have_gas_5020":                                 ; preds = %"$out_of_gas_5019", %"$have_gas_5015"
  %"$consume_5021" = sub i64 %"$gasrem_5017", 1
  store i64 %"$consume_5021", i64* @_gasrem, align 8
  %"$BoolUtils.orb_123" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_5022" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_5023" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5022", 0
  %"$BoolUtils.orb_envptr_5024" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5022", 1
  %"$isSenderRegistrar_5025" = load %TName_Bool*, %TName_Bool** %isSenderRegistrar, align 8
  %"$BoolUtils.orb_call_5026" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_5023"(i8* %"$BoolUtils.orb_envptr_5024", %TName_Bool* %"$isSenderRegistrar_5025"), !dbg !466
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_5026", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_123", align 8, !dbg !466
  %"$BoolUtils.orb_124" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_123_5027" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_123", align 8
  %"$$BoolUtils.orb_123_fptr_5028" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_123_5027", 0
  %"$$BoolUtils.orb_123_envptr_5029" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_123_5027", 1
  %"$isSenderAdmin_5030" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$$BoolUtils.orb_123_call_5031" = call %TName_Bool* %"$$BoolUtils.orb_123_fptr_5028"(i8* %"$$BoolUtils.orb_123_envptr_5029", %TName_Bool* %"$isSenderAdmin_5030"), !dbg !466
  store %TName_Bool* %"$$BoolUtils.orb_123_call_5031", %TName_Bool** %"$BoolUtils.orb_124", align 8, !dbg !466
  %"$$BoolUtils.orb_124_5032" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_124", align 8
  store %TName_Bool* %"$$BoolUtils.orb_124_5032", %TName_Bool** %isOkSender, align 8, !dbg !466
  %"$gasrem_5033" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5034" = icmp ugt i64 1, %"$gasrem_5033"
  br i1 %"$gascmp_5034", label %"$out_of_gas_5035", label %"$have_gas_5036"

"$out_of_gas_5035":                               ; preds = %"$have_gas_5020"
  call void @_out_of_gas()
  br label %"$have_gas_5036"

"$have_gas_5036":                                 ; preds = %"$out_of_gas_5035", %"$have_gas_5020"
  %"$consume_5037" = sub i64 %"$gasrem_5033", 1
  store i64 %"$consume_5037", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_5038" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5039" = icmp ugt i64 1, %"$gasrem_5038"
  br i1 %"$gascmp_5039", label %"$out_of_gas_5040", label %"$have_gas_5041"

"$out_of_gas_5040":                               ; preds = %"$have_gas_5036"
  call void @_out_of_gas()
  br label %"$have_gas_5041"

"$have_gas_5041":                                 ; preds = %"$out_of_gas_5040", %"$have_gas_5036"
  %"$consume_5042" = sub i64 %"$gasrem_5038", 1
  store i64 %"$consume_5042", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_125" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_5043" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_5044" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5043", 0
  %"$ud-registry.recordMemberOwner_envptr_5045" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5043", 1
  %"$maybeRecord_5046" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_5047" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_5044"(i8* %"$ud-registry.recordMemberOwner_envptr_5045", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5047", %TName_Option_ud-registry.Record* %"$maybeRecord_5046"), !dbg !467
  %"$ud-registry.recordMemberOwner_ret_5048" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5047", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_5048", [20 x i8]* %"$ud-registry.recordMemberOwner_125", align 1, !dbg !467
  %"$$ud-registry.recordMemberOwner_125_5049" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_125", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_125_5049", [20 x i8]* %recordOwner, align 1, !dbg !467
  %"$gasrem_5050" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5051" = icmp ugt i64 1, %"$gasrem_5050"
  br i1 %"$gascmp_5051", label %"$out_of_gas_5052", label %"$have_gas_5053"

"$out_of_gas_5052":                               ; preds = %"$have_gas_5041"
  call void @_out_of_gas()
  br label %"$have_gas_5053"

"$have_gas_5053":                                 ; preds = %"$out_of_gas_5052", %"$have_gas_5041"
  %"$consume_5054" = sub i64 %"$gasrem_5050", 1
  store i64 %"$consume_5054", i64* @_gasrem, align 8
  %recordIsUnowned = alloca %TName_Bool*, align 8
  %"$execptr_load_5055" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5056" = alloca [20 x i8], align 1
  %"$recordOwner_5057" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5057", [20 x i8]* %"$eq_recordOwner_5056", align 1
  %"$$eq_recordOwner_5056_5058" = bitcast [20 x i8]* %"$eq_recordOwner_5056" to i8*
  %"$eq_ud-registry.zeroByStr20_5059" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5060" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5060", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5059", align 1
  %"$$eq_ud-registry.zeroByStr20_5059_5061" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5059" to i8*
  %"$eq_call_5062" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5055", i32 20, i8* %"$$eq_recordOwner_5056_5058", i8* %"$$eq_ud-registry.zeroByStr20_5059_5061"), !dbg !468
  store %TName_Bool* %"$eq_call_5062", %TName_Bool** %recordIsUnowned, align 8, !dbg !468
  %"$gasrem_5064" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5065" = icmp ugt i64 1, %"$gasrem_5064"
  br i1 %"$gascmp_5065", label %"$out_of_gas_5066", label %"$have_gas_5067"

"$out_of_gas_5066":                               ; preds = %"$have_gas_5053"
  call void @_out_of_gas()
  br label %"$have_gas_5067"

"$have_gas_5067":                                 ; preds = %"$out_of_gas_5066", %"$have_gas_5053"
  %"$consume_5068" = sub i64 %"$gasrem_5064", 1
  store i64 %"$consume_5068", i64* @_gasrem, align 8
  %recordIsOwnedByRegistrar = alloca %TName_Bool*, align 8
  %"$execptr_load_5069" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5070" = alloca [20 x i8], align 1
  %"$recordOwner_5071" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5071", [20 x i8]* %"$eq_recordOwner_5070", align 1
  %"$$eq_recordOwner_5070_5072" = bitcast [20 x i8]* %"$eq_recordOwner_5070" to i8*
  %"$eq_currentRegistrar_5073" = alloca [20 x i8], align 1
  %"$currentRegistrar_5074" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5074", [20 x i8]* %"$eq_currentRegistrar_5073", align 1
  %"$$eq_currentRegistrar_5073_5075" = bitcast [20 x i8]* %"$eq_currentRegistrar_5073" to i8*
  %"$eq_call_5076" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5069", i32 20, i8* %"$$eq_recordOwner_5070_5072", i8* %"$$eq_currentRegistrar_5073_5075"), !dbg !469
  store %TName_Bool* %"$eq_call_5076", %TName_Bool** %recordIsOwnedByRegistrar, align 8, !dbg !469
  %"$gasrem_5078" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5079" = icmp ugt i64 1, %"$gasrem_5078"
  br i1 %"$gascmp_5079", label %"$out_of_gas_5080", label %"$have_gas_5081"

"$out_of_gas_5080":                               ; preds = %"$have_gas_5067"
  call void @_out_of_gas()
  br label %"$have_gas_5081"

"$have_gas_5081":                                 ; preds = %"$out_of_gas_5080", %"$have_gas_5067"
  %"$consume_5082" = sub i64 %"$gasrem_5078", 1
  store i64 %"$consume_5082", i64* @_gasrem, align 8
  %isRegistrarSenderAndOwned = alloca %TName_Bool*, align 8
  %"$gasrem_5083" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5084" = icmp ugt i64 1, %"$gasrem_5083"
  br i1 %"$gascmp_5084", label %"$out_of_gas_5085", label %"$have_gas_5086"

"$out_of_gas_5085":                               ; preds = %"$have_gas_5081"
  call void @_out_of_gas()
  br label %"$have_gas_5086"

"$have_gas_5086":                                 ; preds = %"$out_of_gas_5085", %"$have_gas_5081"
  %"$consume_5087" = sub i64 %"$gasrem_5083", 1
  store i64 %"$consume_5087", i64* @_gasrem, align 8
  %"$BoolUtils.andb_126" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5088" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5089" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5088", 0
  %"$BoolUtils.andb_envptr_5090" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5088", 1
  %"$recordIsOwnedByRegistrar_5091" = load %TName_Bool*, %TName_Bool** %recordIsOwnedByRegistrar, align 8
  %"$BoolUtils.andb_call_5092" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5089"(i8* %"$BoolUtils.andb_envptr_5090", %TName_Bool* %"$recordIsOwnedByRegistrar_5091"), !dbg !470
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5092", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_126", align 8, !dbg !470
  %"$BoolUtils.andb_127" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_126_5093" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_126", align 8
  %"$$BoolUtils.andb_126_fptr_5094" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_126_5093", 0
  %"$$BoolUtils.andb_126_envptr_5095" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_126_5093", 1
  %"$isSenderRegistrar_5096" = load %TName_Bool*, %TName_Bool** %isSenderRegistrar, align 8
  %"$$BoolUtils.andb_126_call_5097" = call %TName_Bool* %"$$BoolUtils.andb_126_fptr_5094"(i8* %"$$BoolUtils.andb_126_envptr_5095", %TName_Bool* %"$isSenderRegistrar_5096"), !dbg !470
  store %TName_Bool* %"$$BoolUtils.andb_126_call_5097", %TName_Bool** %"$BoolUtils.andb_127", align 8, !dbg !470
  %"$$BoolUtils.andb_127_5098" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_127", align 8
  store %TName_Bool* %"$$BoolUtils.andb_127_5098", %TName_Bool** %isRegistrarSenderAndOwned, align 8, !dbg !470
  %"$gasrem_5099" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5100" = icmp ugt i64 1, %"$gasrem_5099"
  br i1 %"$gascmp_5100", label %"$out_of_gas_5101", label %"$have_gas_5102"

"$out_of_gas_5101":                               ; preds = %"$have_gas_5086"
  call void @_out_of_gas()
  br label %"$have_gas_5102"

"$have_gas_5102":                                 ; preds = %"$out_of_gas_5101", %"$have_gas_5086"
  %"$consume_5103" = sub i64 %"$gasrem_5099", 1
  store i64 %"$consume_5103", i64* @_gasrem, align 8
  %isOkRecordOwner = alloca %TName_Bool*, align 8
  %"$gasrem_5104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5105" = icmp ugt i64 1, %"$gasrem_5104"
  br i1 %"$gascmp_5105", label %"$out_of_gas_5106", label %"$have_gas_5107"

"$out_of_gas_5106":                               ; preds = %"$have_gas_5102"
  call void @_out_of_gas()
  br label %"$have_gas_5107"

"$have_gas_5107":                                 ; preds = %"$out_of_gas_5106", %"$have_gas_5102"
  %"$consume_5108" = sub i64 %"$gasrem_5104", 1
  store i64 %"$consume_5108", i64* @_gasrem, align 8
  %"$BoolUtils.orb_128" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_5109" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_5110" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5109", 0
  %"$BoolUtils.orb_envptr_5111" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5109", 1
  %"$recordIsUnowned_5112" = load %TName_Bool*, %TName_Bool** %recordIsUnowned, align 8
  %"$BoolUtils.orb_call_5113" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_5110"(i8* %"$BoolUtils.orb_envptr_5111", %TName_Bool* %"$recordIsUnowned_5112"), !dbg !471
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_5113", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_128", align 8, !dbg !471
  %"$BoolUtils.orb_129" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_128_5114" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_128", align 8
  %"$$BoolUtils.orb_128_fptr_5115" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_128_5114", 0
  %"$$BoolUtils.orb_128_envptr_5116" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_128_5114", 1
  %"$isRegistrarSenderAndOwned_5117" = load %TName_Bool*, %TName_Bool** %isRegistrarSenderAndOwned, align 8
  %"$$BoolUtils.orb_128_call_5118" = call %TName_Bool* %"$$BoolUtils.orb_128_fptr_5115"(i8* %"$$BoolUtils.orb_128_envptr_5116", %TName_Bool* %"$isRegistrarSenderAndOwned_5117"), !dbg !471
  store %TName_Bool* %"$$BoolUtils.orb_128_call_5118", %TName_Bool** %"$BoolUtils.orb_129", align 8, !dbg !471
  %"$$BoolUtils.orb_129_5119" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_129", align 8
  store %TName_Bool* %"$$BoolUtils.orb_129_5119", %TName_Bool** %isOkRecordOwner, align 8, !dbg !471
  %"$gasrem_5120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5121" = icmp ugt i64 1, %"$gasrem_5120"
  br i1 %"$gascmp_5121", label %"$out_of_gas_5122", label %"$have_gas_5123"

"$out_of_gas_5122":                               ; preds = %"$have_gas_5107"
  call void @_out_of_gas()
  br label %"$have_gas_5123"

"$have_gas_5123":                                 ; preds = %"$out_of_gas_5122", %"$have_gas_5107"
  %"$consume_5124" = sub i64 %"$gasrem_5120", 1
  store i64 %"$consume_5124", i64* @_gasrem, align 8
  %"$BoolUtils.andb_130" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5125" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5126" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5125", 0
  %"$BoolUtils.andb_envptr_5127" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5125", 1
  %"$isOkSender_5128" = load %TName_Bool*, %TName_Bool** %isOkSender, align 8
  %"$BoolUtils.andb_call_5129" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5126"(i8* %"$BoolUtils.andb_envptr_5127", %TName_Bool* %"$isOkSender_5128"), !dbg !472
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5129", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_130", align 8, !dbg !472
  %"$BoolUtils.andb_131" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_130_5130" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_130", align 8
  %"$$BoolUtils.andb_130_fptr_5131" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_130_5130", 0
  %"$$BoolUtils.andb_130_envptr_5132" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_130_5130", 1
  %"$isOkRecordOwner_5133" = load %TName_Bool*, %TName_Bool** %isOkRecordOwner, align 8
  %"$$BoolUtils.andb_130_call_5134" = call %TName_Bool* %"$$BoolUtils.andb_130_fptr_5131"(i8* %"$$BoolUtils.andb_130_envptr_5132", %TName_Bool* %"$isOkRecordOwner_5133"), !dbg !472
  store %TName_Bool* %"$$BoolUtils.andb_130_call_5134", %TName_Bool** %"$BoolUtils.andb_131", align 8, !dbg !472
  %"$$BoolUtils.andb_131_5135" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_131", align 8
  store %TName_Bool* %"$$BoolUtils.andb_131_5135", %TName_Bool** %isOk, align 8, !dbg !472
  %"$gasrem_5136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5137" = icmp ugt i64 2, %"$gasrem_5136"
  br i1 %"$gascmp_5137", label %"$out_of_gas_5138", label %"$have_gas_5139"

"$out_of_gas_5138":                               ; preds = %"$have_gas_5123"
  call void @_out_of_gas()
  br label %"$have_gas_5139"

"$have_gas_5139":                                 ; preds = %"$out_of_gas_5138", %"$have_gas_5123"
  %"$consume_5140" = sub i64 %"$gasrem_5136", 2
  store i64 %"$consume_5140", i64* @_gasrem, align 8
  %"$isOk_5142" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5143" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5142", i32 0, i32 0
  %"$isOk_tag_5144" = load i8, i8* %"$isOk_tag_5143", align 1
  switch i8 %"$isOk_tag_5144", label %"$empty_default_5145" [
    i8 0, label %"$True_5146"
    i8 1, label %"$False_5259"
  ], !dbg !473

"$True_5146":                                     ; preds = %"$have_gas_5139"
  %"$isOk_5147" = bitcast %TName_Bool* %"$isOk_5142" to %CName_True*
  %"$gasrem_5148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5149" = icmp ugt i64 2, %"$gasrem_5148"
  br i1 %"$gascmp_5149", label %"$out_of_gas_5150", label %"$have_gas_5151"

"$out_of_gas_5150":                               ; preds = %"$True_5146"
  call void @_out_of_gas()
  br label %"$have_gas_5151"

"$have_gas_5151":                                 ; preds = %"$out_of_gas_5150", %"$True_5146"
  %"$consume_5152" = sub i64 %"$gasrem_5148", 2
  store i64 %"$consume_5152", i64* @_gasrem, align 8
  %"$recordExists_5154" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$recordExists_tag_5155" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$recordExists_5154", i32 0, i32 0
  %"$recordExists_tag_5156" = load i8, i8* %"$recordExists_tag_5155", align 1
  switch i8 %"$recordExists_tag_5156", label %"$default_5157" [
    i8 1, label %"$False_5158"
  ], !dbg !474

"$False_5158":                                    ; preds = %"$have_gas_5151"
  %"$recordExists_5159" = bitcast %TName_Bool* %"$recordExists_5154" to %CName_False*
  %"$gasrem_5160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5161" = icmp ugt i64 1, %"$gasrem_5160"
  br i1 %"$gascmp_5161", label %"$out_of_gas_5162", label %"$have_gas_5163"

"$out_of_gas_5162":                               ; preds = %"$False_5158"
  call void @_out_of_gas()
  br label %"$have_gas_5163"

"$have_gas_5163":                                 ; preds = %"$out_of_gas_5162", %"$False_5158"
  %"$consume_5164" = sub i64 %"$gasrem_5160", 1
  store i64 %"$consume_5164", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5166" = icmp ugt i64 1, %"$gasrem_5165"
  br i1 %"$gascmp_5166", label %"$out_of_gas_5167", label %"$have_gas_5168"

"$out_of_gas_5167":                               ; preds = %"$have_gas_5163"
  call void @_out_of_gas()
  br label %"$have_gas_5168"

"$have_gas_5168":                                 ; preds = %"$out_of_gas_5167", %"$have_gas_5163"
  %"$consume_5169" = sub i64 %"$gasrem_5165", 1
  store i64 %"$consume_5169", i64* @_gasrem, align 8
  %"$ud-registry.eNewDomain_118" = alloca { i8* (i8*, %String)*, i8* }, align 8
  %"$ud-registry.eNewDomain_5170" = load { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain, align 8
  %"$ud-registry.eNewDomain_fptr_5171" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_5170", 0
  %"$ud-registry.eNewDomain_envptr_5172" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_5170", 1
  %"$ud-registry.eNewDomain_rootNode_5173" = alloca [32 x i8], align 1
  %"$rootNode_5174" = load [32 x i8], [32 x i8]* @_cparam_rootNode, align 1
  store [32 x i8] %"$rootNode_5174", [32 x i8]* %"$ud-registry.eNewDomain_rootNode_5173", align 1
  %"$ud-registry.eNewDomain_call_5175" = call { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_fptr_5171"(i8* %"$ud-registry.eNewDomain_envptr_5172", [32 x i8]* %"$ud-registry.eNewDomain_rootNode_5173"), !dbg !477
  store { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_call_5175", { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_118", align 8, !dbg !477
  %"$ud-registry.eNewDomain_119" = alloca i8*, align 8
  %"$$ud-registry.eNewDomain_118_5176" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_118", align 8
  %"$$ud-registry.eNewDomain_118_fptr_5177" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_118_5176", 0
  %"$$ud-registry.eNewDomain_118_envptr_5178" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_118_5176", 1
  %"$$ud-registry.eNewDomain_118_call_5179" = call i8* %"$$ud-registry.eNewDomain_118_fptr_5177"(i8* %"$$ud-registry.eNewDomain_118_envptr_5178", %String %label), !dbg !477
  store i8* %"$$ud-registry.eNewDomain_118_call_5179", i8** %"$ud-registry.eNewDomain_119", align 8, !dbg !477
  %"$$ud-registry.eNewDomain_119_5180" = load i8*, i8** %"$ud-registry.eNewDomain_119", align 8
  store i8* %"$$ud-registry.eNewDomain_119_5180", i8** %e, align 8, !dbg !477
  %"$e_5181" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5183" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5181")
  %"$gasrem_5184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5185" = icmp ugt i64 %"$_literal_cost_call_5183", %"$gasrem_5184"
  br i1 %"$gascmp_5185", label %"$out_of_gas_5186", label %"$have_gas_5187"

"$out_of_gas_5186":                               ; preds = %"$have_gas_5168"
  call void @_out_of_gas()
  br label %"$have_gas_5187"

"$have_gas_5187":                                 ; preds = %"$out_of_gas_5186", %"$have_gas_5168"
  %"$consume_5188" = sub i64 %"$gasrem_5184", %"$_literal_cost_call_5183"
  store i64 %"$consume_5188", i64* @_gasrem, align 8
  %"$execptr_load_5189" = load i8*, i8** @_execptr, align 8
  %"$e_5190" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5189", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5190"), !dbg !480
  br label %"$matchsucc_5153"

"$default_5157":                                  ; preds = %"$have_gas_5151"
  br label %"$joinp_8"

"$joinp_8":                                       ; preds = %"$default_5157"
  br label %"$matchsucc_5153"

"$matchsucc_5153":                                ; preds = %"$have_gas_5187", %"$joinp_8"
  %"$gasrem_5191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5192" = icmp ugt i64 1, %"$gasrem_5191"
  br i1 %"$gascmp_5192", label %"$out_of_gas_5193", label %"$have_gas_5194"

"$out_of_gas_5193":                               ; preds = %"$matchsucc_5153"
  call void @_out_of_gas()
  br label %"$have_gas_5194"

"$have_gas_5194":                                 ; preds = %"$out_of_gas_5193", %"$matchsucc_5153"
  %"$consume_5195" = sub i64 %"$gasrem_5191", 1
  store i64 %"$consume_5195", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_5196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5197" = icmp ugt i64 1, %"$gasrem_5196"
  br i1 %"$gascmp_5197", label %"$out_of_gas_5198", label %"$have_gas_5199"

"$out_of_gas_5198":                               ; preds = %"$have_gas_5194"
  call void @_out_of_gas()
  br label %"$have_gas_5199"

"$have_gas_5199":                                 ; preds = %"$out_of_gas_5198", %"$have_gas_5194"
  %"$consume_5200" = sub i64 %"$gasrem_5196", 1
  store i64 %"$consume_5200", i64* @_gasrem, align 8
  %"$adtval_5201_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_5201_salloc" = call i8* @_salloc(i8* %"$adtval_5201_load", i64 41)
  %"$adtval_5201" = bitcast i8* %"$adtval_5201_salloc" to %CName_ud-registry.Record*
  %"$adtgep_5202" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5201", i32 0, i32 0
  store i8 0, i8* %"$adtgep_5202", align 1
  %"$adtgep_5203" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5201", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_5203", align 1
  %"$adtgep_5204" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5201", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_5204", align 1
  %"$adtptr_5205" = bitcast %CName_ud-registry.Record* %"$adtval_5201" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_5205", %TName_ud-registry.Record** %newRecord, align 8, !dbg !481
  %"$newRecord_5206" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_5206_5207" = bitcast %TName_ud-registry.Record* %"$newRecord_5206" to i8*
  %"$_literal_cost_call_5208" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", i8* %"$$newRecord_5206_5207")
  %"$gasadd_5209" = add i64 %"$_literal_cost_call_5208", 1
  %"$gasrem_5210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5211" = icmp ugt i64 %"$gasadd_5209", %"$gasrem_5210"
  br i1 %"$gascmp_5211", label %"$out_of_gas_5212", label %"$have_gas_5213"

"$out_of_gas_5212":                               ; preds = %"$have_gas_5199"
  call void @_out_of_gas()
  br label %"$have_gas_5213"

"$have_gas_5213":                                 ; preds = %"$out_of_gas_5212", %"$have_gas_5199"
  %"$consume_5214" = sub i64 %"$gasrem_5210", %"$gasadd_5209"
  store i64 %"$consume_5214", i64* @_gasrem, align 8
  %"$indices_buf_5215_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5215_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5215_salloc_load", i64 32)
  %"$indices_buf_5215_salloc" = bitcast i8* %"$indices_buf_5215_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5215" = bitcast [32 x i8]* %"$indices_buf_5215_salloc" to i8*
  %"$node_5216" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5217" = getelementptr i8, i8* %"$indices_buf_5215", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_5217" to [32 x i8]*
  store [32 x i8] %"$node_5216", [32 x i8]* %indices_cast2, align 1
  %"$execptr_load_5218" = load i8*, i8** @_execptr, align 8
  %"$newRecord_5220" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_5221" = bitcast %TName_ud-registry.Record* %"$newRecord_5220" to i8*
  call void @_update_field(i8* %"$execptr_load_5218", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5219", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_5215", i8* %"$update_value_5221"), !dbg !482
  %"$gasrem_5222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5223" = icmp ugt i64 1, %"$gasrem_5222"
  br i1 %"$gascmp_5223", label %"$out_of_gas_5224", label %"$have_gas_5225"

"$out_of_gas_5224":                               ; preds = %"$have_gas_5213"
  call void @_out_of_gas()
  br label %"$have_gas_5225"

"$have_gas_5225":                                 ; preds = %"$out_of_gas_5224", %"$have_gas_5213"
  %"$consume_5226" = sub i64 %"$gasrem_5222", 1
  store i64 %"$consume_5226", i64* @_gasrem, align 8
  %e3 = alloca i8*, align 8
  %"$gasrem_5227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5228" = icmp ugt i64 1, %"$gasrem_5227"
  br i1 %"$gascmp_5228", label %"$out_of_gas_5229", label %"$have_gas_5230"

"$out_of_gas_5229":                               ; preds = %"$have_gas_5225"
  call void @_out_of_gas()
  br label %"$have_gas_5230"

"$have_gas_5230":                                 ; preds = %"$out_of_gas_5229", %"$have_gas_5225"
  %"$consume_5231" = sub i64 %"$gasrem_5227", 1
  store i64 %"$consume_5231", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_115" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_5232" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_5233" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5232", 0
  %"$ud-registry.eConfigured_envptr_5234" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5232", 1
  %"$ud-registry.eConfigured_node_5235" = alloca [32 x i8], align 1
  %"$node_5236" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_5236", [32 x i8]* %"$ud-registry.eConfigured_node_5235", align 1
  %"$ud-registry.eConfigured_call_5237" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_5233"(i8* %"$ud-registry.eConfigured_envptr_5234", [32 x i8]* %"$ud-registry.eConfigured_node_5235"), !dbg !483
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_5237", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_115", align 8, !dbg !483
  %"$ud-registry.eConfigured_116" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_115_5238" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_115", align 8
  %"$$ud-registry.eConfigured_115_fptr_5239" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_115_5238", 0
  %"$$ud-registry.eConfigured_115_envptr_5240" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_115_5238", 1
  %"$$ud-registry.eConfigured_115_owner_5241" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_115_owner_5241", align 1
  %"$$ud-registry.eConfigured_115_call_5242" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_115_fptr_5239"(i8* %"$$ud-registry.eConfigured_115_envptr_5240", [20 x i8]* %"$$ud-registry.eConfigured_115_owner_5241"), !dbg !483
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_115_call_5242", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_116", align 8, !dbg !483
  %"$ud-registry.eConfigured_117" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_116_5243" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_116", align 8
  %"$$ud-registry.eConfigured_116_fptr_5244" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_116_5243", 0
  %"$$ud-registry.eConfigured_116_envptr_5245" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_116_5243", 1
  %"$$ud-registry.eConfigured_116_resolver_5246" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_116_resolver_5246", align 1
  %"$$ud-registry.eConfigured_116_call_5247" = call i8* %"$$ud-registry.eConfigured_116_fptr_5244"(i8* %"$$ud-registry.eConfigured_116_envptr_5245", [20 x i8]* %"$$ud-registry.eConfigured_116_resolver_5246"), !dbg !483
  store i8* %"$$ud-registry.eConfigured_116_call_5247", i8** %"$ud-registry.eConfigured_117", align 8, !dbg !483
  %"$$ud-registry.eConfigured_117_5248" = load i8*, i8** %"$ud-registry.eConfigured_117", align 8
  store i8* %"$$ud-registry.eConfigured_117_5248", i8** %e3, align 8, !dbg !483
  %"$e_5249" = load i8*, i8** %e3, align 8
  %"$_literal_cost_call_5251" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5249")
  %"$gasrem_5252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5253" = icmp ugt i64 %"$_literal_cost_call_5251", %"$gasrem_5252"
  br i1 %"$gascmp_5253", label %"$out_of_gas_5254", label %"$have_gas_5255"

"$out_of_gas_5254":                               ; preds = %"$have_gas_5230"
  call void @_out_of_gas()
  br label %"$have_gas_5255"

"$have_gas_5255":                                 ; preds = %"$out_of_gas_5254", %"$have_gas_5230"
  %"$consume_5256" = sub i64 %"$gasrem_5252", %"$_literal_cost_call_5251"
  store i64 %"$consume_5256", i64* @_gasrem, align 8
  %"$execptr_load_5257" = load i8*, i8** @_execptr, align 8
  %"$e_5258" = load i8*, i8** %e3, align 8
  call void @_event(i8* %"$execptr_load_5257", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5258"), !dbg !484
  br label %"$matchsucc_5141"

"$False_5259":                                    ; preds = %"$have_gas_5139"
  %"$isOk_5260" = bitcast %TName_Bool* %"$isOk_5142" to %CName_False*
  %"$gasrem_5261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5262" = icmp ugt i64 1, %"$gasrem_5261"
  br i1 %"$gascmp_5262", label %"$out_of_gas_5263", label %"$have_gas_5264"

"$out_of_gas_5263":                               ; preds = %"$False_5259"
  call void @_out_of_gas()
  br label %"$have_gas_5264"

"$have_gas_5264":                                 ; preds = %"$out_of_gas_5263", %"$False_5259"
  %"$consume_5265" = sub i64 %"$gasrem_5261", 1
  store i64 %"$consume_5265", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_5266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5267" = icmp ugt i64 1, %"$gasrem_5266"
  br i1 %"$gascmp_5267", label %"$out_of_gas_5268", label %"$have_gas_5269"

"$out_of_gas_5268":                               ; preds = %"$have_gas_5264"
  call void @_out_of_gas()
  br label %"$have_gas_5269"

"$have_gas_5269":                                 ; preds = %"$out_of_gas_5268", %"$have_gas_5264"
  %"$consume_5270" = sub i64 %"$gasrem_5266", 1
  store i64 %"$consume_5270", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_5271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5272" = icmp ugt i64 1, %"$gasrem_5271"
  br i1 %"$gascmp_5272", label %"$out_of_gas_5273", label %"$have_gas_5274"

"$out_of_gas_5273":                               ; preds = %"$have_gas_5269"
  call void @_out_of_gas()
  br label %"$have_gas_5274"

"$have_gas_5274":                                 ; preds = %"$out_of_gas_5273", %"$have_gas_5269"
  %"$consume_5275" = sub i64 %"$gasrem_5271", 1
  store i64 %"$consume_5275", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_5276", i32 0, i32 0), i32 12 }, %String* %m, align 8, !dbg !485
  %"$gasrem_5277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5278" = icmp ugt i64 1, %"$gasrem_5277"
  br i1 %"$gascmp_5278", label %"$out_of_gas_5279", label %"$have_gas_5280"

"$out_of_gas_5279":                               ; preds = %"$have_gas_5274"
  call void @_out_of_gas()
  br label %"$have_gas_5280"

"$have_gas_5280":                                 ; preds = %"$out_of_gas_5279", %"$have_gas_5274"
  %"$consume_5281" = sub i64 %"$gasrem_5277", 1
  store i64 %"$consume_5281", i64* @_gasrem, align 8
  %"$ud-registry.eError_120" = alloca i8*, align 8
  %"$ud-registry.eError_5282" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_5283" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_5282", 0
  %"$ud-registry.eError_envptr_5284" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_5282", 1
  %"$m_5285" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_5286" = call i8* %"$ud-registry.eError_fptr_5283"(i8* %"$ud-registry.eError_envptr_5284", %String %"$m_5285"), !dbg !487
  store i8* %"$ud-registry.eError_call_5286", i8** %"$ud-registry.eError_120", align 8, !dbg !487
  %"$$ud-registry.eError_120_5287" = load i8*, i8** %"$ud-registry.eError_120", align 8
  store i8* %"$$ud-registry.eError_120_5287", i8** %e4, align 8, !dbg !487
  %"$e_5288" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_5290" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5288")
  %"$gasrem_5291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5292" = icmp ugt i64 %"$_literal_cost_call_5290", %"$gasrem_5291"
  br i1 %"$gascmp_5292", label %"$out_of_gas_5293", label %"$have_gas_5294"

"$out_of_gas_5293":                               ; preds = %"$have_gas_5280"
  call void @_out_of_gas()
  br label %"$have_gas_5294"

"$have_gas_5294":                                 ; preds = %"$out_of_gas_5293", %"$have_gas_5280"
  %"$consume_5295" = sub i64 %"$gasrem_5291", %"$_literal_cost_call_5290"
  store i64 %"$consume_5295", i64* @_gasrem, align 8
  %"$execptr_load_5296" = load i8*, i8** @_execptr, align 8
  %"$e_5297" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_5296", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5297"), !dbg !488
  br label %"$matchsucc_5141"

"$empty_default_5145":                            ; preds = %"$have_gas_5139"
  br label %"$matchsucc_5141"

"$matchsucc_5141":                                ; preds = %"$have_gas_5294", %"$have_gas_5255", %"$empty_default_5145"
  ret void
}

define void @bestow(i8* %0) !dbg !489 {
entry:
  %"$_amount_5299" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5300" = bitcast i8* %"$_amount_5299" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5300", align 8
  %"$_origin_5301" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5302" = bitcast i8* %"$_origin_5301" to [20 x i8]*
  %"$_sender_5303" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5304" = bitcast i8* %"$_sender_5303" to [20 x i8]*
  %"$label_5305" = getelementptr i8, i8* %0, i32 56
  %"$label_5306" = bitcast i8* %"$label_5305" to %String*
  %label = load %String, %String* %"$label_5306", align 8
  %"$owner_5307" = getelementptr i8, i8* %0, i32 72
  %"$owner_5308" = bitcast i8* %"$owner_5307" to [20 x i8]*
  %"$resolver_5309" = getelementptr i8, i8* %0, i32 92
  %"$resolver_5310" = bitcast i8* %"$resolver_5309" to [20 x i8]*
  call void @"$bestow_4884"(%Uint128 %_amount, [20 x i8]* %"$_origin_5302", [20 x i8]* %"$_sender_5304", %String %label, [20 x i8]* %"$owner_5308", [20 x i8]* %"$resolver_5310"), !dbg !490
  ret void
}

define internal void @"$setRegistrar_5311"(%Uint128 %_amount, [20 x i8]* %"$_origin_5312", [20 x i8]* %"$_sender_5313", [20 x i8]* %"$address_5314") !dbg !491 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_5312", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5313", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_5314", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_5316" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_5317" = call i8* @_fetch_field(i8* %"$execptr_load_5316", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_5315", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i32 0, i8* null, i32 1), !dbg !492
  %"$currentAdmins_5318" = bitcast i8* %"$currentAdmins_call_5317" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_5318", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_5319" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_5319_5320" = bitcast %TName_List_ByStr20* %"$currentAdmins_5319" to i8*
  %"$_literal_cost_call_5321" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i8* %"$$currentAdmins_5319_5320")
  %"$gasadd_5322" = add i64 %"$_literal_cost_call_5321", 0
  %"$gasrem_5323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5324" = icmp ugt i64 %"$gasadd_5322", %"$gasrem_5323"
  br i1 %"$gascmp_5324", label %"$out_of_gas_5325", label %"$have_gas_5326"

"$out_of_gas_5325":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5326"

"$have_gas_5326":                                 ; preds = %"$out_of_gas_5325", %entry
  %"$consume_5327" = sub i64 %"$gasrem_5323", %"$gasadd_5322"
  store i64 %"$consume_5327", i64* @_gasrem, align 8
  %"$gasrem_5328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5329" = icmp ugt i64 1, %"$gasrem_5328"
  br i1 %"$gascmp_5329", label %"$out_of_gas_5330", label %"$have_gas_5331"

"$out_of_gas_5330":                               ; preds = %"$have_gas_5326"
  call void @_out_of_gas()
  br label %"$have_gas_5331"

"$have_gas_5331":                                 ; preds = %"$out_of_gas_5330", %"$have_gas_5326"
  %"$consume_5332" = sub i64 %"$gasrem_5328", 1
  store i64 %"$consume_5332", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_5333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5334" = icmp ugt i64 1, %"$gasrem_5333"
  br i1 %"$gascmp_5334", label %"$out_of_gas_5335", label %"$have_gas_5336"

"$out_of_gas_5335":                               ; preds = %"$have_gas_5331"
  call void @_out_of_gas()
  br label %"$have_gas_5336"

"$have_gas_5336":                                 ; preds = %"$out_of_gas_5335", %"$have_gas_5331"
  %"$consume_5337" = sub i64 %"$gasrem_5333", 1
  store i64 %"$consume_5337", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_135" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_5338" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_5339" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5338", 0
  %"$ud-registry.listByStr20Contains_envptr_5340" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5338", 1
  %"$currentAdmins_5341" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_5342" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_5339"(i8* %"$ud-registry.listByStr20Contains_envptr_5340", %TName_List_ByStr20* %"$currentAdmins_5341"), !dbg !493
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_5342", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_135", align 8, !dbg !493
  %"$ud-registry.listByStr20Contains_136" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_135_5343" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_135", align 8
  %"$$ud-registry.listByStr20Contains_135_fptr_5344" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_135_5343", 0
  %"$$ud-registry.listByStr20Contains_135_envptr_5345" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_135_5343", 1
  %"$$ud-registry.listByStr20Contains_135__sender_5346" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_135__sender_5346", align 1
  %"$$ud-registry.listByStr20Contains_135_call_5347" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_135_fptr_5344"(i8* %"$$ud-registry.listByStr20Contains_135_envptr_5345", [20 x i8]* %"$$ud-registry.listByStr20Contains_135__sender_5346"), !dbg !493
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_135_call_5347", %TName_Bool** %"$ud-registry.listByStr20Contains_136", align 8, !dbg !493
  %"$$ud-registry.listByStr20Contains_136_5348" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_136", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_136_5348", %TName_Bool** %isOk, align 8, !dbg !493
  %"$gasrem_5349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5350" = icmp ugt i64 2, %"$gasrem_5349"
  br i1 %"$gascmp_5350", label %"$out_of_gas_5351", label %"$have_gas_5352"

"$out_of_gas_5351":                               ; preds = %"$have_gas_5336"
  call void @_out_of_gas()
  br label %"$have_gas_5352"

"$have_gas_5352":                                 ; preds = %"$out_of_gas_5351", %"$have_gas_5336"
  %"$consume_5353" = sub i64 %"$gasrem_5349", 2
  store i64 %"$consume_5353", i64* @_gasrem, align 8
  %"$isOk_5355" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5356" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5355", i32 0, i32 0
  %"$isOk_tag_5357" = load i8, i8* %"$isOk_tag_5356", align 1
  switch i8 %"$isOk_tag_5357", label %"$default_5358" [
    i8 0, label %"$True_5359"
  ], !dbg !494

"$True_5359":                                     ; preds = %"$have_gas_5352"
  %"$isOk_5360" = bitcast %TName_Bool* %"$isOk_5355" to %CName_True*
  %"$gasrem_5361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5362" = icmp ugt i64 1, %"$gasrem_5361"
  br i1 %"$gascmp_5362", label %"$out_of_gas_5363", label %"$have_gas_5364"

"$out_of_gas_5363":                               ; preds = %"$True_5359"
  call void @_out_of_gas()
  br label %"$have_gas_5364"

"$have_gas_5364":                                 ; preds = %"$out_of_gas_5363", %"$True_5359"
  %"$consume_5365" = sub i64 %"$gasrem_5361", 1
  store i64 %"$consume_5365", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5367" = icmp ugt i64 1, %"$gasrem_5366"
  br i1 %"$gascmp_5367", label %"$out_of_gas_5368", label %"$have_gas_5369"

"$out_of_gas_5368":                               ; preds = %"$have_gas_5364"
  call void @_out_of_gas()
  br label %"$have_gas_5369"

"$have_gas_5369":                                 ; preds = %"$out_of_gas_5368", %"$have_gas_5364"
  %"$consume_5370" = sub i64 %"$gasrem_5366", 1
  store i64 %"$consume_5370", i64* @_gasrem, align 8
  %"$ud-registry.eNewRegistrar_134" = alloca i8*, align 8
  %"$ud-registry.eNewRegistrar_5371" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eNewRegistrar, align 8
  %"$ud-registry.eNewRegistrar_fptr_5372" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eNewRegistrar_5371", 0
  %"$ud-registry.eNewRegistrar_envptr_5373" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eNewRegistrar_5371", 1
  %"$ud-registry.eNewRegistrar_address_5374" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eNewRegistrar_address_5374", align 1
  %"$ud-registry.eNewRegistrar_call_5375" = call i8* %"$ud-registry.eNewRegistrar_fptr_5372"(i8* %"$ud-registry.eNewRegistrar_envptr_5373", [20 x i8]* %"$ud-registry.eNewRegistrar_address_5374"), !dbg !495
  store i8* %"$ud-registry.eNewRegistrar_call_5375", i8** %"$ud-registry.eNewRegistrar_134", align 8, !dbg !495
  %"$$ud-registry.eNewRegistrar_134_5376" = load i8*, i8** %"$ud-registry.eNewRegistrar_134", align 8
  store i8* %"$$ud-registry.eNewRegistrar_134_5376", i8** %e, align 8, !dbg !495
  %"$e_5377" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5379" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5377")
  %"$gasrem_5380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5381" = icmp ugt i64 %"$_literal_cost_call_5379", %"$gasrem_5380"
  br i1 %"$gascmp_5381", label %"$out_of_gas_5382", label %"$have_gas_5383"

"$out_of_gas_5382":                               ; preds = %"$have_gas_5369"
  call void @_out_of_gas()
  br label %"$have_gas_5383"

"$have_gas_5383":                                 ; preds = %"$out_of_gas_5382", %"$have_gas_5369"
  %"$consume_5384" = sub i64 %"$gasrem_5380", %"$_literal_cost_call_5379"
  store i64 %"$consume_5384", i64* @_gasrem, align 8
  %"$execptr_load_5385" = load i8*, i8** @_execptr, align 8
  %"$e_5386" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5385", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5386"), !dbg !498
  %"$_literal_cost_address_5387" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$_literal_cost_address_5387", align 1
  %"$$_literal_cost_address_5387_5388" = bitcast [20 x i8]* %"$_literal_cost_address_5387" to i8*
  %"$_literal_cost_call_5389" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i8* %"$$_literal_cost_address_5387_5388")
  %"$gasrem_5390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5391" = icmp ugt i64 %"$_literal_cost_call_5389", %"$gasrem_5390"
  br i1 %"$gascmp_5391", label %"$out_of_gas_5392", label %"$have_gas_5393"

"$out_of_gas_5392":                               ; preds = %"$have_gas_5383"
  call void @_out_of_gas()
  br label %"$have_gas_5393"

"$have_gas_5393":                                 ; preds = %"$out_of_gas_5392", %"$have_gas_5383"
  %"$consume_5394" = sub i64 %"$gasrem_5390", %"$_literal_cost_call_5389"
  store i64 %"$consume_5394", i64* @_gasrem, align 8
  %"$execptr_load_5395" = load i8*, i8** @_execptr, align 8
  %"$update_value_5397" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$update_value_5397", align 1
  %"$update_value_5398" = bitcast [20 x i8]* %"$update_value_5397" to i8*
  call void @_update_field(i8* %"$execptr_load_5395", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_5396", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i32 0, i8* null, i8* %"$update_value_5398"), !dbg !499
  br label %"$matchsucc_5354"

"$default_5358":                                  ; preds = %"$have_gas_5352"
  br label %"$joinp_9"

"$joinp_9":                                       ; preds = %"$default_5358"
  br label %"$matchsucc_5354"

"$matchsucc_5354":                                ; preds = %"$have_gas_5393", %"$joinp_9"
  ret void
}

define void @setRegistrar(i8* %0) !dbg !500 {
entry:
  %"$_amount_5400" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5401" = bitcast i8* %"$_amount_5400" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5401", align 8
  %"$_origin_5402" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5403" = bitcast i8* %"$_origin_5402" to [20 x i8]*
  %"$_sender_5404" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5405" = bitcast i8* %"$_sender_5404" to [20 x i8]*
  %"$address_5406" = getelementptr i8, i8* %0, i32 56
  %"$address_5407" = bitcast i8* %"$address_5406" to [20 x i8]*
  call void @"$setRegistrar_5311"(%Uint128 %_amount, [20 x i8]* %"$_origin_5403", [20 x i8]* %"$_sender_5405", [20 x i8]* %"$address_5407"), !dbg !501
  ret void
}

define internal void @"$register_5408"(%Uint128 %_amount, [20 x i8]* %"$_origin_5409", [20 x i8]* %"$_sender_5410", [32 x i8]* %"$parent_5411", %String %label) !dbg !502 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_5409", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5410", align 1
  %parent = load [32 x i8], [32 x i8]* %"$parent_5411", align 1
  %"$gasrem_5412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5413" = icmp ugt i64 1, %"$gasrem_5412"
  br i1 %"$gascmp_5413", label %"$out_of_gas_5414", label %"$have_gas_5415"

"$out_of_gas_5414":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5415"

"$have_gas_5415":                                 ; preds = %"$out_of_gas_5414", %entry
  %"$consume_5416" = sub i64 %"$gasrem_5412", 1
  store i64 %"$consume_5416", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_5417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5418" = icmp ugt i64 1, %"$gasrem_5417"
  br i1 %"$gascmp_5418", label %"$out_of_gas_5419", label %"$have_gas_5420"

"$out_of_gas_5419":                               ; preds = %"$have_gas_5415"
  call void @_out_of_gas()
  br label %"$have_gas_5420"

"$have_gas_5420":                                 ; preds = %"$out_of_gas_5419", %"$have_gas_5415"
  %"$consume_5421" = sub i64 %"$gasrem_5417", 1
  store i64 %"$consume_5421", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_141" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_5422" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_5423" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_5422", 0
  %"$ud-registry.parentLabelToNode_envptr_5424" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_5422", 1
  %"$ud-registry.parentLabelToNode_parent_5425" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.parentLabelToNode_parent_5425", align 1
  %"$ud-registry.parentLabelToNode_call_5426" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_5423"(i8* %"$ud-registry.parentLabelToNode_envptr_5424", [32 x i8]* %"$ud-registry.parentLabelToNode_parent_5425"), !dbg !503
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_5426", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_141", align 8, !dbg !503
  %"$ud-registry.parentLabelToNode_142" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_141_5427" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_141", align 8
  %"$$ud-registry.parentLabelToNode_141_fptr_5428" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_141_5427", 0
  %"$$ud-registry.parentLabelToNode_141_envptr_5429" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_141_5427", 1
  %"$$ud-registry.parentLabelToNode_141_retalloca_5430" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_141_fptr_5428"(i8* %"$$ud-registry.parentLabelToNode_141_envptr_5429", [32 x i8]* %"$$ud-registry.parentLabelToNode_141_retalloca_5430", %String %label), !dbg !503
  %"$$ud-registry.parentLabelToNode_141_ret_5431" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_141_retalloca_5430", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_141_ret_5431", [32 x i8]* %"$ud-registry.parentLabelToNode_142", align 1, !dbg !503
  %"$$ud-registry.parentLabelToNode_142_5432" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_142", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_142_5432", [32 x i8]* %node, align 1, !dbg !503
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_5433_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5433_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5433_salloc_load", i64 32)
  %"$indices_buf_5433_salloc" = bitcast i8* %"$indices_buf_5433_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5433" = bitcast [32 x i8]* %"$indices_buf_5433_salloc" to i8*
  %"$node_5434" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5435" = getelementptr i8, i8* %"$indices_buf_5433", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_5435" to [32 x i8]*
  store [32 x i8] %"$node_5434", [32 x i8]* %indices_cast, align 1
  %"$execptr_load_5437" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_5438" = call i8* @_fetch_field(i8* %"$execptr_load_5437", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5436", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_5433", i32 1), !dbg !504
  %"$maybeRecord_5439" = bitcast i8* %"$maybeRecord_call_5438" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_5439", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_5440" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_5440_5441" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5440" to i8*
  %"$_literal_cost_call_5442" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_5440_5441")
  %"$gasadd_5443" = add i64 %"$_literal_cost_call_5442", 0
  %"$gasadd_5444" = add i64 %"$gasadd_5443", 1
  %"$gasrem_5445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5446" = icmp ugt i64 %"$gasadd_5444", %"$gasrem_5445"
  br i1 %"$gascmp_5446", label %"$out_of_gas_5447", label %"$have_gas_5448"

"$out_of_gas_5447":                               ; preds = %"$have_gas_5420"
  call void @_out_of_gas()
  br label %"$have_gas_5448"

"$have_gas_5448":                                 ; preds = %"$out_of_gas_5447", %"$have_gas_5420"
  %"$consume_5449" = sub i64 %"$gasrem_5445", %"$gasadd_5444"
  store i64 %"$consume_5449", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_5450_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5450_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5450_salloc_load", i64 32)
  %"$indices_buf_5450_salloc" = bitcast i8* %"$indices_buf_5450_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5450" = bitcast [32 x i8]* %"$indices_buf_5450_salloc" to i8*
  %"$node_5451" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5452" = getelementptr i8, i8* %"$indices_buf_5450", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_5452" to [32 x i8]*
  store [32 x i8] %"$node_5451", [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_5454" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_5455" = call i8* @_fetch_field(i8* %"$execptr_load_5454", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_5453", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_5450", i32 1), !dbg !505
  %"$maybeApproved_5456" = bitcast i8* %"$maybeApproved_call_5455" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_5456", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_5457" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_5457_5458" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5457" to i8*
  %"$_literal_cost_call_5459" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_5457_5458")
  %"$gasadd_5460" = add i64 %"$_literal_cost_call_5459", 0
  %"$gasadd_5461" = add i64 %"$gasadd_5460", 1
  %"$gasrem_5462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5463" = icmp ugt i64 %"$gasadd_5461", %"$gasrem_5462"
  br i1 %"$gascmp_5463", label %"$out_of_gas_5464", label %"$have_gas_5465"

"$out_of_gas_5464":                               ; preds = %"$have_gas_5448"
  call void @_out_of_gas()
  br label %"$have_gas_5465"

"$have_gas_5465":                                 ; preds = %"$out_of_gas_5464", %"$have_gas_5448"
  %"$consume_5466" = sub i64 %"$gasrem_5462", %"$gasadd_5461"
  store i64 %"$consume_5466", i64* @_gasrem, align 8
  %"$gasrem_5467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5468" = icmp ugt i64 1, %"$gasrem_5467"
  br i1 %"$gascmp_5468", label %"$out_of_gas_5469", label %"$have_gas_5470"

"$out_of_gas_5469":                               ; preds = %"$have_gas_5465"
  call void @_out_of_gas()
  br label %"$have_gas_5470"

"$have_gas_5470":                                 ; preds = %"$out_of_gas_5469", %"$have_gas_5465"
  %"$consume_5471" = sub i64 %"$gasrem_5467", 1
  store i64 %"$consume_5471", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_5472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5473" = icmp ugt i64 1, %"$gasrem_5472"
  br i1 %"$gascmp_5473", label %"$out_of_gas_5474", label %"$have_gas_5475"

"$out_of_gas_5474":                               ; preds = %"$have_gas_5470"
  call void @_out_of_gas()
  br label %"$have_gas_5475"

"$have_gas_5475":                                 ; preds = %"$out_of_gas_5474", %"$have_gas_5470"
  %"$consume_5476" = sub i64 %"$gasrem_5472", 1
  store i64 %"$consume_5476", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_140" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_5477" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_5478" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5477", 0
  %"$ud-registry.recordMemberOwner_envptr_5479" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5477", 1
  %"$maybeRecord_5480" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_5481" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_5478"(i8* %"$ud-registry.recordMemberOwner_envptr_5479", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5481", %TName_Option_ud-registry.Record* %"$maybeRecord_5480"), !dbg !506
  %"$ud-registry.recordMemberOwner_ret_5482" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5481", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_5482", [20 x i8]* %"$ud-registry.recordMemberOwner_140", align 1, !dbg !506
  %"$$ud-registry.recordMemberOwner_140_5483" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_140", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_140_5483", [20 x i8]* %recordOwner, align 1, !dbg !506
  %"$gasrem_5484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5485" = icmp ugt i64 1, %"$gasrem_5484"
  br i1 %"$gascmp_5485", label %"$out_of_gas_5486", label %"$have_gas_5487"

"$out_of_gas_5486":                               ; preds = %"$have_gas_5475"
  call void @_out_of_gas()
  br label %"$have_gas_5487"

"$have_gas_5487":                                 ; preds = %"$out_of_gas_5486", %"$have_gas_5475"
  %"$consume_5488" = sub i64 %"$gasrem_5484", 1
  store i64 %"$consume_5488", i64* @_gasrem, align 8
  %approved = alloca [20 x i8], align 1
  %"$gasrem_5489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5490" = icmp ugt i64 2, %"$gasrem_5489"
  br i1 %"$gascmp_5490", label %"$out_of_gas_5491", label %"$have_gas_5492"

"$out_of_gas_5491":                               ; preds = %"$have_gas_5487"
  call void @_out_of_gas()
  br label %"$have_gas_5492"

"$have_gas_5492":                                 ; preds = %"$out_of_gas_5491", %"$have_gas_5487"
  %"$consume_5493" = sub i64 %"$gasrem_5489", 2
  store i64 %"$consume_5493", i64* @_gasrem, align 8
  %"$maybeApproved_5495" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_5496" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_5495", i32 0, i32 0
  %"$maybeApproved_tag_5497" = load i8, i8* %"$maybeApproved_tag_5496", align 1
  switch i8 %"$maybeApproved_tag_5497", label %"$empty_default_5498" [
    i8 1, label %"$None_5499"
    i8 0, label %"$Some_5507"
  ], !dbg !507

"$None_5499":                                     ; preds = %"$have_gas_5492"
  %"$maybeApproved_5500" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5495" to %CName_None_ByStr20*
  %"$gasrem_5501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5502" = icmp ugt i64 1, %"$gasrem_5501"
  br i1 %"$gascmp_5502", label %"$out_of_gas_5503", label %"$have_gas_5504"

"$out_of_gas_5503":                               ; preds = %"$None_5499"
  call void @_out_of_gas()
  br label %"$have_gas_5504"

"$have_gas_5504":                                 ; preds = %"$out_of_gas_5503", %"$None_5499"
  %"$consume_5505" = sub i64 %"$gasrem_5501", 1
  store i64 %"$consume_5505", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_5506" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5506", [20 x i8]* %approved, align 1, !dbg !508
  br label %"$matchsucc_5494"

"$Some_5507":                                     ; preds = %"$have_gas_5492"
  %"$maybeApproved_5508" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5495" to %CName_Some_ByStr20*
  %"$approved_gep_5509" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_5508", i32 0, i32 1
  %"$approved_load_5510" = load [20 x i8], [20 x i8]* %"$approved_gep_5509", align 1
  %approved2 = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_5510", [20 x i8]* %approved2, align 1
  %"$gasrem_5511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5512" = icmp ugt i64 1, %"$gasrem_5511"
  br i1 %"$gascmp_5512", label %"$out_of_gas_5513", label %"$have_gas_5514"

"$out_of_gas_5513":                               ; preds = %"$Some_5507"
  call void @_out_of_gas()
  br label %"$have_gas_5514"

"$have_gas_5514":                                 ; preds = %"$out_of_gas_5513", %"$Some_5507"
  %"$consume_5515" = sub i64 %"$gasrem_5511", 1
  store i64 %"$consume_5515", i64* @_gasrem, align 8
  %"$approved_5516" = load [20 x i8], [20 x i8]* %approved2, align 1
  store [20 x i8] %"$approved_5516", [20 x i8]* %approved2, align 1, !dbg !511
  br label %"$matchsucc_5494"

"$empty_default_5498":                            ; preds = %"$have_gas_5492"
  br label %"$matchsucc_5494"

"$matchsucc_5494":                                ; preds = %"$have_gas_5514", %"$have_gas_5504", %"$empty_default_5498"
  %currentRegistrar = alloca [20 x i8], align 1
  %"$execptr_load_5518" = load i8*, i8** @_execptr, align 8
  %"$currentRegistrar_call_5519" = call i8* @_fetch_field(i8* %"$execptr_load_5518", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_5517", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i32 0, i8* null, i32 1), !dbg !513
  %"$currentRegistrar_5520" = bitcast i8* %"$currentRegistrar_call_5519" to [20 x i8]*
  %"$currentRegistrar_5521" = load [20 x i8], [20 x i8]* %"$currentRegistrar_5520", align 1
  store [20 x i8] %"$currentRegistrar_5521", [20 x i8]* %currentRegistrar, align 1
  %"$_literal_cost_currentRegistrar_5522" = alloca [20 x i8], align 1
  %"$currentRegistrar_5523" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5523", [20 x i8]* %"$_literal_cost_currentRegistrar_5522", align 1
  %"$$_literal_cost_currentRegistrar_5522_5524" = bitcast [20 x i8]* %"$_literal_cost_currentRegistrar_5522" to i8*
  %"$_literal_cost_call_5525" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i8* %"$$_literal_cost_currentRegistrar_5522_5524")
  %"$gasadd_5526" = add i64 %"$_literal_cost_call_5525", 0
  %"$gasrem_5527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5528" = icmp ugt i64 %"$gasadd_5526", %"$gasrem_5527"
  br i1 %"$gascmp_5528", label %"$out_of_gas_5529", label %"$have_gas_5530"

"$out_of_gas_5529":                               ; preds = %"$matchsucc_5494"
  call void @_out_of_gas()
  br label %"$have_gas_5530"

"$have_gas_5530":                                 ; preds = %"$out_of_gas_5529", %"$matchsucc_5494"
  %"$consume_5531" = sub i64 %"$gasrem_5527", %"$gasadd_5526"
  store i64 %"$consume_5531", i64* @_gasrem, align 8
  %"$gasrem_5532" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5533" = icmp ugt i64 1, %"$gasrem_5532"
  br i1 %"$gascmp_5533", label %"$out_of_gas_5534", label %"$have_gas_5535"

"$out_of_gas_5534":                               ; preds = %"$have_gas_5530"
  call void @_out_of_gas()
  br label %"$have_gas_5535"

"$have_gas_5535":                                 ; preds = %"$out_of_gas_5534", %"$have_gas_5530"
  %"$consume_5536" = sub i64 %"$gasrem_5532", 1
  store i64 %"$consume_5536", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_5537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5538" = icmp ugt i64 1, %"$gasrem_5537"
  br i1 %"$gascmp_5538", label %"$out_of_gas_5539", label %"$have_gas_5540"

"$out_of_gas_5539":                               ; preds = %"$have_gas_5535"
  call void @_out_of_gas()
  br label %"$have_gas_5540"

"$have_gas_5540":                                 ; preds = %"$out_of_gas_5539", %"$have_gas_5535"
  %"$consume_5541" = sub i64 %"$gasrem_5537", 1
  store i64 %"$consume_5541", i64* @_gasrem, align 8
  %isRecordUnowned = alloca %TName_Bool*, align 8
  %"$execptr_load_5542" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5543" = alloca [20 x i8], align 1
  %"$recordOwner_5544" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5544", [20 x i8]* %"$eq_recordOwner_5543", align 1
  %"$$eq_recordOwner_5543_5545" = bitcast [20 x i8]* %"$eq_recordOwner_5543" to i8*
  %"$eq_ud-registry.zeroByStr20_5546" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5547" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5547", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5546", align 1
  %"$$eq_ud-registry.zeroByStr20_5546_5548" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5546" to i8*
  %"$eq_call_5549" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5542", i32 20, i8* %"$$eq_recordOwner_5543_5545", i8* %"$$eq_ud-registry.zeroByStr20_5546_5548"), !dbg !514
  store %TName_Bool* %"$eq_call_5549", %TName_Bool** %isRecordUnowned, align 8, !dbg !514
  %"$gasrem_5551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5552" = icmp ugt i64 1, %"$gasrem_5551"
  br i1 %"$gascmp_5552", label %"$out_of_gas_5553", label %"$have_gas_5554"

"$out_of_gas_5553":                               ; preds = %"$have_gas_5540"
  call void @_out_of_gas()
  br label %"$have_gas_5554"

"$have_gas_5554":                                 ; preds = %"$out_of_gas_5553", %"$have_gas_5540"
  %"$consume_5555" = sub i64 %"$gasrem_5551", 1
  store i64 %"$consume_5555", i64* @_gasrem, align 8
  %isUnapproved = alloca %TName_Bool*, align 8
  %"$execptr_load_5556" = load i8*, i8** @_execptr, align 8
  %"$eq_approved_5557" = alloca [20 x i8], align 1
  %"$approved_5558" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_5558", [20 x i8]* %"$eq_approved_5557", align 1
  %"$$eq_approved_5557_5559" = bitcast [20 x i8]* %"$eq_approved_5557" to i8*
  %"$eq_ud-registry.zeroByStr20_5560" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5561" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5561", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5560", align 1
  %"$$eq_ud-registry.zeroByStr20_5560_5562" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5560" to i8*
  %"$eq_call_5563" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5556", i32 20, i8* %"$$eq_approved_5557_5559", i8* %"$$eq_ud-registry.zeroByStr20_5560_5562"), !dbg !515
  store %TName_Bool* %"$eq_call_5563", %TName_Bool** %isUnapproved, align 8, !dbg !515
  %"$gasrem_5565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5566" = icmp ugt i64 1, %"$gasrem_5565"
  br i1 %"$gascmp_5566", label %"$out_of_gas_5567", label %"$have_gas_5568"

"$out_of_gas_5567":                               ; preds = %"$have_gas_5554"
  call void @_out_of_gas()
  br label %"$have_gas_5568"

"$have_gas_5568":                                 ; preds = %"$out_of_gas_5567", %"$have_gas_5554"
  %"$consume_5569" = sub i64 %"$gasrem_5565", 1
  store i64 %"$consume_5569", i64* @_gasrem, align 8
  %"$BoolUtils.andb_138" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5570" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5571" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5570", 0
  %"$BoolUtils.andb_envptr_5572" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5570", 1
  %"$isRecordUnowned_5573" = load %TName_Bool*, %TName_Bool** %isRecordUnowned, align 8
  %"$BoolUtils.andb_call_5574" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5571"(i8* %"$BoolUtils.andb_envptr_5572", %TName_Bool* %"$isRecordUnowned_5573"), !dbg !516
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5574", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_138", align 8, !dbg !516
  %"$BoolUtils.andb_139" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_138_5575" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_138", align 8
  %"$$BoolUtils.andb_138_fptr_5576" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_138_5575", 0
  %"$$BoolUtils.andb_138_envptr_5577" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_138_5575", 1
  %"$isUnapproved_5578" = load %TName_Bool*, %TName_Bool** %isUnapproved, align 8
  %"$$BoolUtils.andb_138_call_5579" = call %TName_Bool* %"$$BoolUtils.andb_138_fptr_5576"(i8* %"$$BoolUtils.andb_138_envptr_5577", %TName_Bool* %"$isUnapproved_5578"), !dbg !516
  store %TName_Bool* %"$$BoolUtils.andb_138_call_5579", %TName_Bool** %"$BoolUtils.andb_139", align 8, !dbg !516
  %"$$BoolUtils.andb_139_5580" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_139", align 8
  store %TName_Bool* %"$$BoolUtils.andb_139_5580", %TName_Bool** %isOk, align 8, !dbg !516
  %"$gasrem_5581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5582" = icmp ugt i64 2, %"$gasrem_5581"
  br i1 %"$gascmp_5582", label %"$out_of_gas_5583", label %"$have_gas_5584"

"$out_of_gas_5583":                               ; preds = %"$have_gas_5568"
  call void @_out_of_gas()
  br label %"$have_gas_5584"

"$have_gas_5584":                                 ; preds = %"$out_of_gas_5583", %"$have_gas_5568"
  %"$consume_5585" = sub i64 %"$gasrem_5581", 2
  store i64 %"$consume_5585", i64* @_gasrem, align 8
  %"$isOk_5587" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5588" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5587", i32 0, i32 0
  %"$isOk_tag_5589" = load i8, i8* %"$isOk_tag_5588", align 1
  switch i8 %"$isOk_tag_5589", label %"$empty_default_5590" [
    i8 0, label %"$True_5591"
    i8 1, label %"$False_5689"
  ], !dbg !517

"$True_5591":                                     ; preds = %"$have_gas_5584"
  %"$isOk_5592" = bitcast %TName_Bool* %"$isOk_5587" to %CName_True*
  %"$gasrem_5593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5594" = icmp ugt i64 1, %"$gasrem_5593"
  br i1 %"$gascmp_5594", label %"$out_of_gas_5595", label %"$have_gas_5596"

"$out_of_gas_5595":                               ; preds = %"$True_5591"
  call void @_out_of_gas()
  br label %"$have_gas_5596"

"$have_gas_5596":                                 ; preds = %"$out_of_gas_5595", %"$True_5591"
  %"$consume_5597" = sub i64 %"$gasrem_5593", 1
  store i64 %"$consume_5597", i64* @_gasrem, align 8
  %"$execptr_load_5598" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_5598"), !dbg !518
  %"$gasrem_5599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5600" = icmp ugt i64 1, %"$gasrem_5599"
  br i1 %"$gascmp_5600", label %"$out_of_gas_5601", label %"$have_gas_5602"

"$out_of_gas_5601":                               ; preds = %"$have_gas_5596"
  call void @_out_of_gas()
  br label %"$have_gas_5602"

"$have_gas_5602":                                 ; preds = %"$out_of_gas_5601", %"$have_gas_5596"
  %"$consume_5603" = sub i64 %"$gasrem_5599", 1
  store i64 %"$consume_5603", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_5604" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5605" = icmp ugt i64 1, %"$gasrem_5604"
  br i1 %"$gascmp_5605", label %"$out_of_gas_5606", label %"$have_gas_5607"

"$out_of_gas_5606":                               ; preds = %"$have_gas_5602"
  call void @_out_of_gas()
  br label %"$have_gas_5607"

"$have_gas_5607":                                 ; preds = %"$out_of_gas_5606", %"$have_gas_5602"
  %"$consume_5608" = sub i64 %"$gasrem_5604", 1
  store i64 %"$consume_5608", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_5609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5610" = icmp ugt i64 1, %"$gasrem_5609"
  br i1 %"$gascmp_5610", label %"$out_of_gas_5611", label %"$have_gas_5612"

"$out_of_gas_5611":                               ; preds = %"$have_gas_5607"
  call void @_out_of_gas()
  br label %"$have_gas_5612"

"$have_gas_5612":                                 ; preds = %"$out_of_gas_5611", %"$have_gas_5607"
  %"$consume_5613" = sub i64 %"$gasrem_5609", 1
  store i64 %"$consume_5613", i64* @_gasrem, align 8
  %"$msgobj_5614_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_5614_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_5614_salloc_load", i64 321)
  %"$msgobj_5614_salloc" = bitcast i8* %"$msgobj_5614_salloc_salloc" to [321 x i8]*
  %"$msgobj_5614" = bitcast [321 x i8]* %"$msgobj_5614_salloc" to i8*
  store i8 7, i8* %"$msgobj_5614", align 1
  %"$msgobj_fname_5616" = getelementptr i8, i8* %"$msgobj_5614", i32 1
  %"$msgobj_fname_5617" = bitcast i8* %"$msgobj_fname_5616" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_5615", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_5617", align 8
  %"$msgobj_td_5618" = getelementptr i8, i8* %"$msgobj_5614", i32 17
  %"$msgobj_td_5619" = bitcast i8* %"$msgobj_td_5618" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_5619", align 8
  %"$msgobj_v_5621" = getelementptr i8, i8* %"$msgobj_5614", i32 25
  %"$msgobj_v_5622" = bitcast i8* %"$msgobj_v_5621" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_5620", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_5622", align 8
  %"$msgobj_fname_5624" = getelementptr i8, i8* %"$msgobj_5614", i32 41
  %"$msgobj_fname_5625" = bitcast i8* %"$msgobj_fname_5624" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_5623", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_5625", align 8
  %"$msgobj_td_5626" = getelementptr i8, i8* %"$msgobj_5614", i32 57
  %"$msgobj_td_5627" = bitcast i8* %"$msgobj_td_5626" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_5627", align 8
  %"$msgobj_v_5628" = getelementptr i8, i8* %"$msgobj_5614", i32 65
  %"$msgobj_v_5629" = bitcast i8* %"$msgobj_v_5628" to %Uint128*
  store %Uint128 %_amount, %Uint128* %"$msgobj_v_5629", align 8
  %"$msgobj_fname_5631" = getelementptr i8, i8* %"$msgobj_5614", i32 81
  %"$msgobj_fname_5632" = bitcast i8* %"$msgobj_fname_5631" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_5630", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_5632", align 8
  %"$msgobj_td_5633" = getelementptr i8, i8* %"$msgobj_5614", i32 97
  %"$msgobj_td_5634" = bitcast i8* %"$msgobj_td_5633" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_5634", align 8
  %"$currentRegistrar_5635" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  %"$msgobj_v_5636" = getelementptr i8, i8* %"$msgobj_5614", i32 105
  %"$msgobj_v_5637" = bitcast i8* %"$msgobj_v_5636" to [20 x i8]*
  store [20 x i8] %"$currentRegistrar_5635", [20 x i8]* %"$msgobj_v_5637", align 1
  %"$msgobj_fname_5639" = getelementptr i8, i8* %"$msgobj_5614", i32 125
  %"$msgobj_fname_5640" = bitcast i8* %"$msgobj_fname_5639" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_5638", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_5640", align 8
  %"$msgobj_td_5641" = getelementptr i8, i8* %"$msgobj_5614", i32 141
  %"$msgobj_td_5642" = bitcast i8* %"$msgobj_td_5641" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_5642", align 8
  %"$msgobj_v_5643" = getelementptr i8, i8* %"$msgobj_5614", i32 149
  %"$msgobj_v_5644" = bitcast i8* %"$msgobj_v_5643" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_5644", align 1
  %"$msgobj_fname_5646" = getelementptr i8, i8* %"$msgobj_5614", i32 169
  %"$msgobj_fname_5647" = bitcast i8* %"$msgobj_fname_5646" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_5645", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_5647", align 8
  %"$msgobj_td_5648" = getelementptr i8, i8* %"$msgobj_5614", i32 185
  %"$msgobj_td_5649" = bitcast i8* %"$msgobj_td_5648" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_5649", align 8
  %"$node_5650" = load [32 x i8], [32 x i8]* %node, align 1
  %"$msgobj_v_5651" = getelementptr i8, i8* %"$msgobj_5614", i32 193
  %"$msgobj_v_5652" = bitcast i8* %"$msgobj_v_5651" to [32 x i8]*
  store [32 x i8] %"$node_5650", [32 x i8]* %"$msgobj_v_5652", align 1
  %"$msgobj_fname_5654" = getelementptr i8, i8* %"$msgobj_5614", i32 225
  %"$msgobj_fname_5655" = bitcast i8* %"$msgobj_fname_5654" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_5653", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_5655", align 8
  %"$msgobj_td_5656" = getelementptr i8, i8* %"$msgobj_5614", i32 241
  %"$msgobj_td_5657" = bitcast i8* %"$msgobj_td_5656" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_5657", align 8
  %"$msgobj_v_5658" = getelementptr i8, i8* %"$msgobj_5614", i32 249
  %"$msgobj_v_5659" = bitcast i8* %"$msgobj_v_5658" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_5659", align 1
  %"$msgobj_fname_5661" = getelementptr i8, i8* %"$msgobj_5614", i32 281
  %"$msgobj_fname_5662" = bitcast i8* %"$msgobj_fname_5661" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_5660", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_5662", align 8
  %"$msgobj_td_5663" = getelementptr i8, i8* %"$msgobj_5614", i32 297
  %"$msgobj_td_5664" = bitcast i8* %"$msgobj_td_5663" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_5664", align 8
  %"$msgobj_v_5665" = getelementptr i8, i8* %"$msgobj_5614", i32 305
  %"$msgobj_v_5666" = bitcast i8* %"$msgobj_v_5665" to %String*
  store %String %label, %String* %"$msgobj_v_5666", align 8
  store i8* %"$msgobj_5614", i8** %m, align 8, !dbg !521
  %"$gasrem_5668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5669" = icmp ugt i64 1, %"$gasrem_5668"
  br i1 %"$gascmp_5669", label %"$out_of_gas_5670", label %"$have_gas_5671"

"$out_of_gas_5670":                               ; preds = %"$have_gas_5612"
  call void @_out_of_gas()
  br label %"$have_gas_5671"

"$have_gas_5671":                                 ; preds = %"$out_of_gas_5670", %"$have_gas_5612"
  %"$consume_5672" = sub i64 %"$gasrem_5668", 1
  store i64 %"$consume_5672", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_137" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_5673" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_5674" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_5673", 0
  %"$ud-registry.oneMsg_envptr_5675" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_5673", 1
  %"$m_5676" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_5677" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_5674"(i8* %"$ud-registry.oneMsg_envptr_5675", i8* %"$m_5676"), !dbg !522
  store %TName_List_Message* %"$ud-registry.oneMsg_call_5677", %TName_List_Message** %"$ud-registry.oneMsg_137", align 8, !dbg !522
  %"$$ud-registry.oneMsg_137_5678" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_137", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_137_5678", %TName_List_Message** %msgs, align 8, !dbg !522
  %"$msgs_5679" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_5679_5680" = bitcast %TName_List_Message* %"$msgs_5679" to i8*
  %"$_literal_cost_call_5681" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_5679_5680")
  %"$gasrem_5682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5683" = icmp ugt i64 %"$_literal_cost_call_5681", %"$gasrem_5682"
  br i1 %"$gascmp_5683", label %"$out_of_gas_5684", label %"$have_gas_5685"

"$out_of_gas_5684":                               ; preds = %"$have_gas_5671"
  call void @_out_of_gas()
  br label %"$have_gas_5685"

"$have_gas_5685":                                 ; preds = %"$out_of_gas_5684", %"$have_gas_5671"
  %"$consume_5686" = sub i64 %"$gasrem_5682", %"$_literal_cost_call_5681"
  store i64 %"$consume_5686", i64* @_gasrem, align 8
  %"$execptr_load_5687" = load i8*, i8** @_execptr, align 8
  %"$msgs_5688" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_5687", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_5688"), !dbg !523
  br label %"$matchsucc_5586"

"$False_5689":                                    ; preds = %"$have_gas_5584"
  %"$isOk_5690" = bitcast %TName_Bool* %"$isOk_5587" to %CName_False*
  br label %"$matchsucc_5586"

"$empty_default_5590":                            ; preds = %"$have_gas_5584"
  br label %"$matchsucc_5586"

"$matchsucc_5586":                                ; preds = %"$False_5689", %"$have_gas_5685", %"$empty_default_5590"
  ret void
}

declare void @_accept(i8*)

define void @register(i8* %0) !dbg !524 {
entry:
  %"$_amount_5692" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5693" = bitcast i8* %"$_amount_5692" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5693", align 8
  %"$_origin_5694" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5695" = bitcast i8* %"$_origin_5694" to [20 x i8]*
  %"$_sender_5696" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5697" = bitcast i8* %"$_sender_5696" to [20 x i8]*
  %"$parent_5698" = getelementptr i8, i8* %0, i32 56
  %"$parent_5699" = bitcast i8* %"$parent_5698" to [32 x i8]*
  %"$label_5700" = getelementptr i8, i8* %0, i32 88
  %"$label_5701" = bitcast i8* %"$label_5700" to %String*
  %label = load %String, %String* %"$label_5701", align 8
  call void @"$register_5408"(%Uint128 %_amount, [20 x i8]* %"$_origin_5695", [20 x i8]* %"$_sender_5697", [32 x i8]* %"$parent_5699", %String %label), !dbg !525
  ret void
}

define internal void @"$onResolverConfigured_5702"(%Uint128 %_amount, [20 x i8]* %"$_origin_5703", [20 x i8]* %"$_sender_5704", [32 x i8]* %"$node_5705") !dbg !526 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_5703", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5704", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_5705", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_5706_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5706_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5706_salloc_load", i64 32)
  %"$indices_buf_5706_salloc" = bitcast i8* %"$indices_buf_5706_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5706" = bitcast [32 x i8]* %"$indices_buf_5706_salloc" to i8*
  %"$indices_gep_5707" = getelementptr i8, i8* %"$indices_buf_5706", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_5707" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_5709" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_5710" = call i8* @_fetch_field(i8* %"$execptr_load_5709", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5708", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_5706", i32 1), !dbg !527
  %"$maybeRecord_5711" = bitcast i8* %"$maybeRecord_call_5710" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_5711", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_5712" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_5712_5713" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5712" to i8*
  %"$_literal_cost_call_5714" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_5712_5713")
  %"$gasadd_5715" = add i64 %"$_literal_cost_call_5714", 0
  %"$gasadd_5716" = add i64 %"$gasadd_5715", 1
  %"$gasrem_5717" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5718" = icmp ugt i64 %"$gasadd_5716", %"$gasrem_5717"
  br i1 %"$gascmp_5718", label %"$out_of_gas_5719", label %"$have_gas_5720"

"$out_of_gas_5719":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5720"

"$have_gas_5720":                                 ; preds = %"$out_of_gas_5719", %entry
  %"$consume_5721" = sub i64 %"$gasrem_5717", %"$gasadd_5716"
  store i64 %"$consume_5721", i64* @_gasrem, align 8
  %"$gasrem_5722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5723" = icmp ugt i64 2, %"$gasrem_5722"
  br i1 %"$gascmp_5723", label %"$out_of_gas_5724", label %"$have_gas_5725"

"$out_of_gas_5724":                               ; preds = %"$have_gas_5720"
  call void @_out_of_gas()
  br label %"$have_gas_5725"

"$have_gas_5725":                                 ; preds = %"$out_of_gas_5724", %"$have_gas_5720"
  %"$consume_5726" = sub i64 %"$gasrem_5722", 2
  store i64 %"$consume_5726", i64* @_gasrem, align 8
  %"$maybeRecord_5728" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_tag_5729" = getelementptr inbounds %TName_Option_ud-registry.Record, %TName_Option_ud-registry.Record* %"$maybeRecord_5728", i32 0, i32 0
  %"$maybeRecord_tag_5730" = load i8, i8* %"$maybeRecord_tag_5729", align 1
  switch i8 %"$maybeRecord_tag_5730", label %"$empty_default_5731" [
    i8 1, label %"$None_5732"
    i8 0, label %"$Some_5734"
  ], !dbg !528

"$None_5732":                                     ; preds = %"$have_gas_5725"
  %"$maybeRecord_5733" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5728" to %CName_None_ud-registry.Record*
  br label %"$matchsucc_5727"

"$Some_5734":                                     ; preds = %"$have_gas_5725"
  %"$maybeRecord_5735" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5728" to %CName_Some_ud-registry.Record*
  %"$record_gep_5736" = getelementptr inbounds %CName_Some_ud-registry.Record, %CName_Some_ud-registry.Record* %"$maybeRecord_5735", i32 0, i32 1
  %"$record_load_5737" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %"$record_gep_5736", align 8
  %record = alloca %TName_ud-registry.Record*, align 8
  store %TName_ud-registry.Record* %"$record_load_5737", %TName_ud-registry.Record** %record, align 8
  %"$gasrem_5738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5739" = icmp ugt i64 1, %"$gasrem_5738"
  br i1 %"$gascmp_5739", label %"$out_of_gas_5740", label %"$have_gas_5741"

"$out_of_gas_5740":                               ; preds = %"$Some_5734"
  call void @_out_of_gas()
  br label %"$have_gas_5741"

"$have_gas_5741":                                 ; preds = %"$out_of_gas_5740", %"$Some_5734"
  %"$consume_5742" = sub i64 %"$gasrem_5738", 1
  store i64 %"$consume_5742", i64* @_gasrem, align 8
  %"$record_5744" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %record, align 8
  %"$record_tag_5745" = getelementptr inbounds %TName_ud-registry.Record, %TName_ud-registry.Record* %"$record_5744", i32 0, i32 0
  %"$record_tag_5746" = load i8, i8* %"$record_tag_5745", align 1
  switch i8 %"$record_tag_5746", label %"$empty_default_5747" [
    i8 0, label %"$ud-registry.Record_5748"
  ], !dbg !529

"$ud-registry.Record_5748":                       ; preds = %"$have_gas_5741"
  %"$record_5749" = bitcast %TName_ud-registry.Record* %"$record_5744" to %CName_ud-registry.Record*
  %"$owner_gep_5750" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_5749", i32 0, i32 1
  %"$owner_load_5751" = load [20 x i8], [20 x i8]* %"$owner_gep_5750", align 1
  %owner = alloca [20 x i8], align 1
  store [20 x i8] %"$owner_load_5751", [20 x i8]* %owner, align 1
  %"$resolver_gep_5752" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_5749", i32 0, i32 2
  %"$resolver_load_5753" = load [20 x i8], [20 x i8]* %"$resolver_gep_5752", align 1
  %resolver = alloca [20 x i8], align 1
  store [20 x i8] %"$resolver_load_5753", [20 x i8]* %resolver, align 1
  %"$gasrem_5754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5755" = icmp ugt i64 1, %"$gasrem_5754"
  br i1 %"$gascmp_5755", label %"$out_of_gas_5756", label %"$have_gas_5757"

"$out_of_gas_5756":                               ; preds = %"$ud-registry.Record_5748"
  call void @_out_of_gas()
  br label %"$have_gas_5757"

"$have_gas_5757":                                 ; preds = %"$out_of_gas_5756", %"$ud-registry.Record_5748"
  %"$consume_5758" = sub i64 %"$gasrem_5754", 1
  store i64 %"$consume_5758", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$execptr_load_5759" = load i8*, i8** @_execptr, align 8
  %"$eq_resolver_5760" = alloca [20 x i8], align 1
  %"$resolver_5761" = load [20 x i8], [20 x i8]* %resolver, align 1
  store [20 x i8] %"$resolver_5761", [20 x i8]* %"$eq_resolver_5760", align 1
  %"$$eq_resolver_5760_5762" = bitcast [20 x i8]* %"$eq_resolver_5760" to i8*
  %"$eq__sender_5763" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_5763", align 1
  %"$$eq__sender_5763_5764" = bitcast [20 x i8]* %"$eq__sender_5763" to i8*
  %"$eq_call_5765" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5759", i32 20, i8* %"$$eq_resolver_5760_5762", i8* %"$$eq__sender_5763_5764"), !dbg !532
  store %TName_Bool* %"$eq_call_5765", %TName_Bool** %isOk, align 8, !dbg !532
  %"$gasrem_5767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5768" = icmp ugt i64 2, %"$gasrem_5767"
  br i1 %"$gascmp_5768", label %"$out_of_gas_5769", label %"$have_gas_5770"

"$out_of_gas_5769":                               ; preds = %"$have_gas_5757"
  call void @_out_of_gas()
  br label %"$have_gas_5770"

"$have_gas_5770":                                 ; preds = %"$out_of_gas_5769", %"$have_gas_5757"
  %"$consume_5771" = sub i64 %"$gasrem_5767", 2
  store i64 %"$consume_5771", i64* @_gasrem, align 8
  %"$isOk_5773" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5774" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5773", i32 0, i32 0
  %"$isOk_tag_5775" = load i8, i8* %"$isOk_tag_5774", align 1
  switch i8 %"$isOk_tag_5775", label %"$empty_default_5776" [
    i8 0, label %"$True_5777"
    i8 1, label %"$False_5817"
  ], !dbg !535

"$True_5777":                                     ; preds = %"$have_gas_5770"
  %"$isOk_5778" = bitcast %TName_Bool* %"$isOk_5773" to %CName_True*
  %"$gasrem_5779" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5780" = icmp ugt i64 1, %"$gasrem_5779"
  br i1 %"$gascmp_5780", label %"$out_of_gas_5781", label %"$have_gas_5782"

"$out_of_gas_5781":                               ; preds = %"$True_5777"
  call void @_out_of_gas()
  br label %"$have_gas_5782"

"$have_gas_5782":                                 ; preds = %"$out_of_gas_5781", %"$True_5777"
  %"$consume_5783" = sub i64 %"$gasrem_5779", 1
  store i64 %"$consume_5783", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5785" = icmp ugt i64 1, %"$gasrem_5784"
  br i1 %"$gascmp_5785", label %"$out_of_gas_5786", label %"$have_gas_5787"

"$out_of_gas_5786":                               ; preds = %"$have_gas_5782"
  call void @_out_of_gas()
  br label %"$have_gas_5787"

"$have_gas_5787":                                 ; preds = %"$out_of_gas_5786", %"$have_gas_5782"
  %"$consume_5788" = sub i64 %"$gasrem_5784", 1
  store i64 %"$consume_5788", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_143" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_5789" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_5790" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5789", 0
  %"$ud-registry.eConfigured_envptr_5791" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5789", 1
  %"$ud-registry.eConfigured_node_5792" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_5792", align 1
  %"$ud-registry.eConfigured_call_5793" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_5790"(i8* %"$ud-registry.eConfigured_envptr_5791", [32 x i8]* %"$ud-registry.eConfigured_node_5792"), !dbg !536
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_5793", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_143", align 8, !dbg !536
  %"$ud-registry.eConfigured_144" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_143_5794" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_143", align 8
  %"$$ud-registry.eConfigured_143_fptr_5795" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_143_5794", 0
  %"$$ud-registry.eConfigured_143_envptr_5796" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_143_5794", 1
  %"$$ud-registry.eConfigured_143_owner_5797" = alloca [20 x i8], align 1
  %"$owner_5798" = load [20 x i8], [20 x i8]* %owner, align 1
  store [20 x i8] %"$owner_5798", [20 x i8]* %"$$ud-registry.eConfigured_143_owner_5797", align 1
  %"$$ud-registry.eConfigured_143_call_5799" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_143_fptr_5795"(i8* %"$$ud-registry.eConfigured_143_envptr_5796", [20 x i8]* %"$$ud-registry.eConfigured_143_owner_5797"), !dbg !536
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_143_call_5799", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_144", align 8, !dbg !536
  %"$ud-registry.eConfigured_145" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_144_5800" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_144", align 8
  %"$$ud-registry.eConfigured_144_fptr_5801" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_144_5800", 0
  %"$$ud-registry.eConfigured_144_envptr_5802" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_144_5800", 1
  %"$$ud-registry.eConfigured_144_resolver_5803" = alloca [20 x i8], align 1
  %"$resolver_5804" = load [20 x i8], [20 x i8]* %resolver, align 1
  store [20 x i8] %"$resolver_5804", [20 x i8]* %"$$ud-registry.eConfigured_144_resolver_5803", align 1
  %"$$ud-registry.eConfigured_144_call_5805" = call i8* %"$$ud-registry.eConfigured_144_fptr_5801"(i8* %"$$ud-registry.eConfigured_144_envptr_5802", [20 x i8]* %"$$ud-registry.eConfigured_144_resolver_5803"), !dbg !536
  store i8* %"$$ud-registry.eConfigured_144_call_5805", i8** %"$ud-registry.eConfigured_145", align 8, !dbg !536
  %"$$ud-registry.eConfigured_145_5806" = load i8*, i8** %"$ud-registry.eConfigured_145", align 8
  store i8* %"$$ud-registry.eConfigured_145_5806", i8** %e, align 8, !dbg !536
  %"$e_5807" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5809" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5807")
  %"$gasrem_5810" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5811" = icmp ugt i64 %"$_literal_cost_call_5809", %"$gasrem_5810"
  br i1 %"$gascmp_5811", label %"$out_of_gas_5812", label %"$have_gas_5813"

"$out_of_gas_5812":                               ; preds = %"$have_gas_5787"
  call void @_out_of_gas()
  br label %"$have_gas_5813"

"$have_gas_5813":                                 ; preds = %"$out_of_gas_5812", %"$have_gas_5787"
  %"$consume_5814" = sub i64 %"$gasrem_5810", %"$_literal_cost_call_5809"
  store i64 %"$consume_5814", i64* @_gasrem, align 8
  %"$execptr_load_5815" = load i8*, i8** @_execptr, align 8
  %"$e_5816" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5815", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5816"), !dbg !539
  br label %"$matchsucc_5772"

"$False_5817":                                    ; preds = %"$have_gas_5770"
  %"$isOk_5818" = bitcast %TName_Bool* %"$isOk_5773" to %CName_False*
  br label %"$matchsucc_5772"

"$empty_default_5776":                            ; preds = %"$have_gas_5770"
  br label %"$matchsucc_5772"

"$matchsucc_5772":                                ; preds = %"$False_5817", %"$have_gas_5813", %"$empty_default_5776"
  br label %"$matchsucc_5743"

"$empty_default_5747":                            ; preds = %"$have_gas_5741"
  br label %"$matchsucc_5743"

"$matchsucc_5743":                                ; preds = %"$matchsucc_5772", %"$empty_default_5747"
  br label %"$matchsucc_5727"

"$empty_default_5731":                            ; preds = %"$have_gas_5725"
  br label %"$matchsucc_5727"

"$matchsucc_5727":                                ; preds = %"$matchsucc_5743", %"$None_5732", %"$empty_default_5731"
  ret void
}

define void @onResolverConfigured(i8* %0) !dbg !540 {
entry:
  %"$_amount_5820" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5821" = bitcast i8* %"$_amount_5820" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5821", align 8
  %"$_origin_5822" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5823" = bitcast i8* %"$_origin_5822" to [20 x i8]*
  %"$_sender_5824" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5825" = bitcast i8* %"$_sender_5824" to [20 x i8]*
  %"$node_5826" = getelementptr i8, i8* %0, i32 56
  %"$node_5827" = bitcast i8* %"$node_5826" to [32 x i8]*
  call void @"$onResolverConfigured_5702"(%Uint128 %_amount, [20 x i8]* %"$_origin_5823", [20 x i8]* %"$_sender_5825", [32 x i8]* %"$node_5827"), !dbg !541
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "ud-registry.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_214", linkageName: "$fundef_214", scope: !2, file: !2, line: 100, type: !5, scopeLine: 100, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 100, column: 19, scope: !4)
!9 = !DILocation(line: 102, column: 7, scope: !4)
!10 = !DILocation(line: 103, column: 17, scope: !11)
!11 = distinct !DILexicalBlock(scope: !12, file: !2, line: 103, column: 9)
!12 = distinct !DILexicalBlock(scope: !4, file: !2, line: 102, column: 7)
!13 = !DILocation(line: 104, column: 26, scope: !14)
!14 = distinct !DILexicalBlock(scope: !12, file: !2, line: 104, column: 9)
!15 = !DILocation(line: 106, column: 22, scope: !4)
!16 = !DILocation(line: 107, column: 15, scope: !17)
!17 = distinct !DILexicalBlock(scope: !18, file: !2, line: 107, column: 7)
!18 = distinct !DILexicalBlock(scope: !4, file: !2, line: 106, column: 22)
!19 = !DILocation(line: 108, column: 25, scope: !20)
!20 = distinct !DILexicalBlock(scope: !18, file: !2, line: 108, column: 7)
!21 = !DILocation(line: 110, column: 14, scope: !4)
!22 = !DILocation(line: 110, column: 40, scope: !4)
!23 = distinct !DISubprogram(name: "$fundef_212", linkageName: "$fundef_212", scope: !2, file: !2, line: 99, type: !5, scopeLine: 99, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!24 = !DILocation(line: 100, column: 5, scope: !23)
!25 = distinct !DISubprogram(name: "$fundef_210", linkageName: "$fundef_210", scope: !2, file: !2, line: 98, type: !5, scopeLine: 98, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!26 = !DILocation(line: 99, column: 3, scope: !25)
!27 = distinct !DISubprogram(name: "$fundef_208", linkageName: "$fundef_208", scope: !2, file: !2, line: 97, type: !5, scopeLine: 97, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 98, column: 3, scope: !27)
!29 = distinct !DISubprogram(name: "$fundef_218", linkageName: "$fundef_218", scope: !2, file: !2, line: 92, type: !5, scopeLine: 92, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!30 = !DILocation(line: 92, column: 21, scope: !29)
!31 = !DILocation(line: 93, column: 21, scope: !29)
!32 = !DILocation(line: 94, column: 7, scope: !29)
!33 = distinct !DISubprogram(name: "$fundef_216", linkageName: "$fundef_216", scope: !2, file: !2, line: 91, type: !5, scopeLine: 91, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!34 = !DILocation(line: 92, column: 5, scope: !33)
!35 = distinct !DISubprogram(name: "$fundef_220", linkageName: "$fundef_220", scope: !2, file: !2, line: 82, type: !5, scopeLine: 82, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!36 = !DILocation(line: 82, column: 5, scope: !35)
!37 = !DILocation(line: 83, column: 15, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !2, line: 83, column: 7)
!39 = distinct !DILexicalBlock(scope: !35, file: !2, line: 82, column: 5)
!40 = !DILocation(line: 85, column: 7, scope: !41)
!41 = distinct !DILexicalBlock(scope: !39, file: !2, line: 84, column: 7)
!42 = !DILocation(line: 86, column: 34, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !2, line: 86, column: 9)
!44 = distinct !DILexicalBlock(scope: !41, file: !2, line: 85, column: 7)
!45 = distinct !DISubprogram(name: "$fundef_222", linkageName: "$fundef_222", scope: !2, file: !2, line: 77, type: !5, scopeLine: 77, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!46 = !DILocation(line: 77, column: 5, scope: !45)
!47 = distinct !DISubprogram(name: "$fundef_228", linkageName: "$fundef_228", scope: !2, file: !2, line: 74, type: !5, scopeLine: 74, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!48 = !DILocation(line: 74, column: 5, scope: !47)
!49 = distinct !DISubprogram(name: "$fundef_226", linkageName: "$fundef_226", scope: !2, file: !2, line: 73, type: !5, scopeLine: 73, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!50 = !DILocation(line: 74, column: 5, scope: !49)
!51 = distinct !DISubprogram(name: "$fundef_224", linkageName: "$fundef_224", scope: !2, file: !2, line: 72, type: !5, scopeLine: 72, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!52 = !DILocation(line: 73, column: 3, scope: !51)
!53 = distinct !DISubprogram(name: "$fundef_232", linkageName: "$fundef_232", scope: !2, file: !2, line: 69, type: !5, scopeLine: 69, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!54 = !DILocation(line: 69, column: 5, scope: !53)
!55 = distinct !DISubprogram(name: "$fundef_230", linkageName: "$fundef_230", scope: !2, file: !2, line: 68, type: !5, scopeLine: 68, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!56 = !DILocation(line: 69, column: 5, scope: !55)
!57 = distinct !DISubprogram(name: "$fundef_234", linkageName: "$fundef_234", scope: !2, file: !2, line: 65, type: !5, scopeLine: 65, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!58 = !DILocation(line: 65, column: 5, scope: !57)
!59 = distinct !DISubprogram(name: "$fundef_236", linkageName: "$fundef_236", scope: !2, file: !2, line: 62, type: !5, scopeLine: 62, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!60 = !DILocation(line: 62, column: 5, scope: !59)
!61 = distinct !DISubprogram(name: "$fundef_242", linkageName: "$fundef_242", scope: !2, file: !2, line: 59, type: !5, scopeLine: 59, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!62 = !DILocation(line: 59, column: 5, scope: !61)
!63 = distinct !DISubprogram(name: "$fundef_240", linkageName: "$fundef_240", scope: !2, file: !2, line: 58, type: !5, scopeLine: 58, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!64 = !DILocation(line: 59, column: 5, scope: !63)
!65 = distinct !DISubprogram(name: "$fundef_238", linkageName: "$fundef_238", scope: !2, file: !2, line: 57, type: !5, scopeLine: 57, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!66 = !DILocation(line: 58, column: 3, scope: !65)
!67 = distinct !DISubprogram(name: "$fundef_246", linkageName: "$fundef_246", scope: !2, file: !2, line: 54, type: !5, scopeLine: 54, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!68 = !DILocation(line: 54, column: 5, scope: !67)
!69 = distinct !DISubprogram(name: "$fundef_244", linkageName: "$fundef_244", scope: !2, file: !2, line: 53, type: !5, scopeLine: 53, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!70 = !DILocation(line: 54, column: 5, scope: !69)
!71 = distinct !DISubprogram(name: "$fundef_250", linkageName: "$fundef_250", scope: !2, file: !2, line: 39, type: !5, scopeLine: 39, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!72 = !DILocation(line: 39, column: 5, scope: !71)
!73 = !DILocation(line: 41, column: 7, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !2, line: 40, column: 7)
!75 = distinct !DILexicalBlock(scope: !71, file: !2, line: 39, column: 5)
!76 = !DILocation(line: 42, column: 17, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !2, line: 42, column: 9)
!78 = distinct !DILexicalBlock(scope: !74, file: !2, line: 41, column: 7)
!79 = !DILocation(line: 43, column: 18, scope: !80)
!80 = distinct !DILexicalBlock(scope: !78, file: !2, line: 43, column: 9)
!81 = !DILocation(line: 46, column: 7, scope: !82)
!82 = distinct !DILexicalBlock(scope: !75, file: !2, line: 45, column: 7)
!83 = !DILocation(line: 47, column: 17, scope: !84)
!84 = distinct !DILexicalBlock(scope: !85, file: !2, line: 47, column: 9)
!85 = distinct !DILexicalBlock(scope: !82, file: !2, line: 46, column: 7)
!86 = !DILocation(line: 48, column: 18, scope: !87)
!87 = distinct !DILexicalBlock(scope: !85, file: !2, line: 48, column: 9)
!88 = distinct !DISubprogram(name: "$fundef_248", linkageName: "$fundef_248", scope: !2, file: !2, line: 38, type: !5, scopeLine: 38, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!89 = !DILocation(line: 39, column: 5, scope: !88)
!90 = distinct !DISubprogram(name: "$fundef_256", linkageName: "$fundef_256", scope: !2, file: !2, line: 33, type: !5, scopeLine: 33, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!91 = !DILocation(line: 33, column: 15, scope: !90)
!92 = !DILocation(line: 34, column: 8, scope: !90)
!93 = distinct !DISubprogram(name: "$fundef_254", linkageName: "$fundef_254", scope: !2, file: !2, line: 31, type: !5, scopeLine: 31, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!94 = !DILocation(line: 31, column: 30, scope: !93)
!95 = !DILocation(line: 31, column: 29, scope: !93)
!96 = !DILocation(line: 33, column: 7, scope: !93)
!97 = !DILocation(line: 35, column: 7, scope: !93)
!98 = distinct !DISubprogram(name: "$fundef_252", linkageName: "$fundef_252", scope: !2, file: !2, line: 30, type: !5, scopeLine: 30, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!99 = !DILocation(line: 31, column: 5, scope: !98)
!100 = distinct !DISubprogram(name: "$fundef_260", linkageName: "$fundef_260", scope: !2, file: !2, line: 27, type: !5, scopeLine: 27, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!101 = !DILocation(line: 27, column: 13, scope: !100)
!102 = !DILocation(line: 27, column: 44, scope: !100)
!103 = distinct !DISubprogram(name: "$fundef_258", linkageName: "$fundef_258", scope: !2, file: !2, line: 26, type: !5, scopeLine: 26, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!104 = !DILocation(line: 27, column: 5, scope: !103)
!105 = distinct !DISubprogram(name: "$fundef_264", linkageName: "$fundef_264", scope: !2, file: !2, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!106 = !DILocation(line: 22, column: 27, scope: !105)
!107 = !DILocation(line: 22, column: 26, scope: !105)
!108 = !DILocation(line: 23, column: 7, scope: !105)
!109 = distinct !DISubprogram(name: "$fundef_262", linkageName: "$fundef_262", scope: !2, file: !2, line: 21, type: !5, scopeLine: 21, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!110 = !DILocation(line: 22, column: 5, scope: !109)
!111 = distinct !DISubprogram(name: "$fundef_268", linkageName: "$fundef_268", scope: !2, file: !2, line: 18, type: !5, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!112 = !DILocation(line: 18, column: 5, scope: !111)
!113 = distinct !DISubprogram(name: "$fundef_266", linkageName: "$fundef_266", scope: !2, file: !2, line: 17, type: !5, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!114 = !DILocation(line: 18, column: 5, scope: !113)
!115 = distinct !DISubprogram(name: "$fundef_270", linkageName: "$fundef_270", scope: !2, file: !2, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!116 = !DILocation(line: 14, column: 5, scope: !115)
!117 = distinct !DISubprogram(name: "$fundef_182", linkageName: "$fundef_182", scope: !118, file: !118, line: 252, type: !5, scopeLine: 252, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!118 = !DIFile(filename: "ListUtils.scillib", directory: "../src/stdlib")
!119 = !DILocation(line: 252, column: 19, scope: !117)
!120 = !DILocation(line: 253, column: 15, scope: !117)
!121 = !DILocation(line: 253, column: 14, scope: !117)
!122 = !DILocation(line: 254, column: 5, scope: !117)
!123 = distinct !DISubprogram(name: "$fundef_180", linkageName: "$fundef_180", scope: !118, file: !118, line: 251, type: !5, scopeLine: 251, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!124 = !DILocation(line: 252, column: 5, scope: !123)
!125 = distinct !DISubprogram(name: "$fundef_178", linkageName: "$fundef_178", scope: !118, file: !118, line: 251, type: !5, scopeLine: 251, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!126 = !DILocation(line: 251, column: 33, scope: !125)
!127 = distinct !DISubprogram(name: "$fundef_188", linkageName: "$fundef_188", scope: !118, file: !118, line: 241, type: !5, scopeLine: 241, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!128 = !DILocation(line: 241, column: 17, scope: !127)
!129 = !DILocation(line: 241, column: 16, scope: !127)
!130 = !DILocation(line: 242, column: 18, scope: !127)
!131 = !DILocation(line: 243, column: 5, scope: !127)
!132 = !DILocation(line: 244, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !118, line: 244, column: 7)
!134 = distinct !DILexicalBlock(scope: !127, file: !118, line: 243, column: 5)
!135 = !DILocation(line: 245, column: 15, scope: !136)
!136 = distinct !DILexicalBlock(scope: !134, file: !118, line: 245, column: 7)
!137 = distinct !DISubprogram(name: "$fundef_186", linkageName: "$fundef_186", scope: !118, file: !118, line: 240, type: !5, scopeLine: 240, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!138 = !DILocation(line: 241, column: 5, scope: !137)
!139 = distinct !DISubprogram(name: "$fundef_184", linkageName: "$fundef_184", scope: !118, file: !118, line: 240, type: !5, scopeLine: 240, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!140 = !DILocation(line: 240, column: 27, scope: !139)
!141 = distinct !DISubprogram(name: "$fundef_198", linkageName: "$fundef_198", scope: !118, file: !118, line: 230, type: !5, scopeLine: 230, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!142 = !DILocation(line: 230, column: 19, scope: !141)
!143 = !DILocation(line: 231, column: 9, scope: !141)
!144 = !DILocation(line: 232, column: 19, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !118, line: 232, column: 11)
!146 = distinct !DILexicalBlock(scope: !141, file: !118, line: 231, column: 9)
!147 = !DILocation(line: 233, column: 20, scope: !148)
!148 = distinct !DILexicalBlock(scope: !146, file: !118, line: 233, column: 11)
!149 = distinct !DISubprogram(name: "$fundef_196", linkageName: "$fundef_196", scope: !118, file: !118, line: 229, type: !5, scopeLine: 229, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!150 = !DILocation(line: 230, column: 9, scope: !149)
!151 = distinct !DISubprogram(name: "$fundef_194", linkageName: "$fundef_194", scope: !118, file: !118, line: 228, type: !5, scopeLine: 228, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!152 = !DILocation(line: 229, column: 7, scope: !151)
!153 = distinct !DISubprogram(name: "$fundef_192", linkageName: "$fundef_192", scope: !118, file: !118, line: 224, type: !5, scopeLine: 224, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!154 = !DILocation(line: 224, column: 18, scope: !153)
!155 = !DILocation(line: 224, column: 17, scope: !153)
!156 = !DILocation(line: 225, column: 16, scope: !153)
!157 = !DILocation(line: 228, column: 35, scope: !153)
!158 = !DILocation(line: 235, column: 5, scope: !153)
!159 = distinct !DISubprogram(name: "$fundef_190", linkageName: "$fundef_190", scope: !118, file: !118, line: 224, type: !5, scopeLine: 224, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!160 = !DILocation(line: 224, column: 5, scope: !159)
!161 = distinct !DISubprogram(name: "$fundef_206", linkageName: "$fundef_206", scope: !118, file: !118, line: 40, type: !5, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!162 = !DILocation(line: 40, column: 16, scope: !161)
!163 = !DILocation(line: 41, column: 7, scope: !161)
!164 = !DILocation(line: 42, column: 17, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !118, line: 42, column: 9)
!166 = distinct !DILexicalBlock(scope: !161, file: !118, line: 41, column: 7)
!167 = !DILocation(line: 43, column: 18, scope: !168)
!168 = distinct !DILexicalBlock(scope: !166, file: !118, line: 43, column: 9)
!169 = distinct !DISubprogram(name: "$fundef_204", linkageName: "$fundef_204", scope: !118, file: !118, line: 39, type: !5, scopeLine: 39, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!170 = !DILocation(line: 40, column: 7, scope: !169)
!171 = distinct !DISubprogram(name: "$fundef_202", linkageName: "$fundef_202", scope: !118, file: !118, line: 38, type: !5, scopeLine: 38, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!172 = !DILocation(line: 38, column: 18, scope: !171)
!173 = !DILocation(line: 38, column: 17, scope: !171)
!174 = !DILocation(line: 39, column: 32, scope: !171)
!175 = !DILocation(line: 45, column: 16, scope: !171)
!176 = !DILocation(line: 46, column: 5, scope: !171)
!177 = distinct !DISubprogram(name: "$fundef_200", linkageName: "$fundef_200", scope: !118, file: !118, line: 38, type: !5, scopeLine: 38, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!178 = !DILocation(line: 38, column: 5, scope: !177)
!179 = distinct !DISubprogram(name: "$fundef_168", linkageName: "$fundef_168", scope: !180, file: !180, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!180 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!181 = !DILocation(line: 22, column: 5, scope: !179)
!182 = !DILocation(line: 23, column: 15, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !180, line: 23, column: 7)
!184 = distinct !DILexicalBlock(scope: !179, file: !180, line: 22, column: 5)
!185 = !DILocation(line: 24, column: 16, scope: !186)
!186 = distinct !DILexicalBlock(scope: !184, file: !180, line: 24, column: 7)
!187 = distinct !DISubprogram(name: "$fundef_172", linkageName: "$fundef_172", scope: !180, file: !180, line: 15, type: !5, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!188 = !DILocation(line: 15, column: 5, scope: !187)
!189 = !DILocation(line: 16, column: 16, scope: !190)
!190 = distinct !DILexicalBlock(scope: !191, file: !180, line: 16, column: 7)
!191 = distinct !DILexicalBlock(scope: !187, file: !180, line: 15, column: 5)
!192 = !DILocation(line: 17, column: 16, scope: !193)
!193 = distinct !DILexicalBlock(scope: !191, file: !180, line: 17, column: 7)
!194 = distinct !DISubprogram(name: "$fundef_170", linkageName: "$fundef_170", scope: !180, file: !180, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!195 = !DILocation(line: 15, column: 5, scope: !194)
!196 = distinct !DISubprogram(name: "$fundef_176", linkageName: "$fundef_176", scope: !180, file: !180, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!197 = !DILocation(line: 8, column: 5, scope: !196)
!198 = !DILocation(line: 9, column: 16, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !180, line: 9, column: 7)
!200 = distinct !DILexicalBlock(scope: !196, file: !180, line: 8, column: 5)
!201 = !DILocation(line: 10, column: 16, scope: !202)
!202 = distinct !DILexicalBlock(scope: !200, file: !180, line: 10, column: 7)
!203 = distinct !DISubprogram(name: "$fundef_174", linkageName: "$fundef_174", scope: !180, file: !180, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!204 = !DILocation(line: 8, column: 5, scope: !203)
!205 = distinct !DISubprogram(name: "$fundef_156", linkageName: "$fundef_156", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!206 = !DIFile(filename: "Prelude", directory: ".")
!207 = !DILocation(line: 1, column: 94, scope: !205)
!208 = distinct !DISubprogram(name: "$fundef_154", linkageName: "$fundef_154", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!209 = !DILocation(line: 1, column: 37, scope: !208)
!210 = !DILocation(line: 1, column: 94, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !206, line: 1, column: 52)
!212 = distinct !DILexicalBlock(scope: !208, file: !206, line: 1, column: 37)
!213 = !DILocation(line: 1, column: 106, scope: !211)
!214 = !DILocation(line: 1, column: 129, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !206, line: 1, column: 122)
!216 = distinct !DISubprogram(name: "$fundef_152", linkageName: "$fundef_152", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!217 = !DILocation(line: 1, column: 37, scope: !216)
!218 = distinct !DISubprogram(name: "$fundef_150", linkageName: "$fundef_150", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!219 = !DILocation(line: 1, column: 17, scope: !218)
!220 = distinct !DISubprogram(name: "$fundef_148", linkageName: "$fundef_148", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!221 = !DILocation(line: 1, column: 17, scope: !220)
!222 = distinct !DISubprogram(name: "$fundef_146", linkageName: "$fundef_146", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!223 = !DILocation(line: 1, column: 17, scope: !222)
!224 = distinct !DISubprogram(name: "$fundef_166", linkageName: "$fundef_166", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!225 = !DILocation(line: 1, column: 37, scope: !224)
!226 = !DILocation(line: 1, column: 74, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !206, line: 1, column: 52)
!228 = distinct !DILexicalBlock(scope: !224, file: !206, line: 1, column: 37)
!229 = !DILocation(line: 1, column: 83, scope: !227)
!230 = !DILocation(line: 1, column: 100, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !206, line: 1, column: 93)
!232 = distinct !DISubprogram(name: "$fundef_164", linkageName: "$fundef_164", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!233 = !DILocation(line: 1, column: 37, scope: !232)
!234 = distinct !DISubprogram(name: "$fundef_162", linkageName: "$fundef_162", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!235 = !DILocation(line: 1, column: 17, scope: !234)
!236 = distinct !DISubprogram(name: "$fundef_160", linkageName: "$fundef_160", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!237 = !DILocation(line: 1, column: 17, scope: !236)
!238 = distinct !DISubprogram(name: "$fundef_158", linkageName: "$fundef_158", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!239 = !DILocation(line: 1, column: 17, scope: !238)
!240 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !241, file: !241, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!241 = !DIFile(filename: ".", directory: ".")
!242 = !DILocation(line: 1, column: 17, scope: !240)
!243 = !DILocation(line: 7, column: 3, scope: !240)
!244 = !DILocation(line: 14, column: 21, scope: !240)
!245 = !DILocation(line: 22, column: 5, scope: !240)
!246 = !DILocation(line: 36, column: 3, scope: !240)
!247 = !DILocation(line: 222, column: 3, scope: !240)
!248 = !DILocation(line: 239, column: 3, scope: !240)
!249 = !DILocation(line: 250, column: 3, scope: !240)
!250 = !DILocation(line: 7, column: 19, scope: !240)
!251 = !DILocation(line: 10, column: 18, scope: !240)
!252 = !DILocation(line: 11, column: 18, scope: !240)
!253 = !DILocation(line: 14, column: 5, scope: !240)
!254 = !DILocation(line: 17, column: 3, scope: !240)
!255 = !DILocation(line: 21, column: 3, scope: !240)
!256 = !DILocation(line: 26, column: 3, scope: !240)
!257 = !DILocation(line: 30, column: 3, scope: !240)
!258 = !DILocation(line: 38, column: 3, scope: !240)
!259 = !DILocation(line: 53, column: 3, scope: !240)
!260 = !DILocation(line: 57, column: 3, scope: !240)
!261 = !DILocation(line: 62, column: 5, scope: !240)
!262 = !DILocation(line: 65, column: 5, scope: !240)
!263 = !DILocation(line: 68, column: 3, scope: !240)
!264 = !DILocation(line: 72, column: 3, scope: !240)
!265 = !DILocation(line: 77, column: 5, scope: !240)
!266 = !DILocation(line: 82, column: 5, scope: !240)
!267 = !DILocation(line: 91, column: 3, scope: !240)
!268 = !DILocation(line: 97, column: 3, scope: !240)
!269 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !241, file: !241, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!270 = !DILocation(line: 114, column: 15, scope: !269)
!271 = !DILocation(line: 115, column: 20, scope: !269)
!272 = !DILocation(line: 116, column: 5, scope: !269)
!273 = !DILocation(line: 117, column: 28, scope: !269)
!274 = !DILocation(line: 118, column: 40, scope: !269)
!275 = !DILocation(line: 119, column: 47, scope: !269)
!276 = !DILocation(line: 120, column: 30, scope: !269)
!277 = distinct !DISubprogram(name: "setAdmin", linkageName: "setAdmin", scope: !2, file: !2, line: 121, type: !5, scopeLine: 121, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!278 = !DILocation(line: 122, column: 3, scope: !277)
!279 = !DILocation(line: 123, column: 19, scope: !277)
!280 = !DILocation(line: 124, column: 3, scope: !277)
!281 = !DILocation(line: 127, column: 15, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !2, line: 125, column: 5)
!283 = distinct !DILexicalBlock(scope: !277, file: !2, line: 124, column: 3)
!284 = !DILocation(line: 127, column: 60, scope: !282)
!285 = !DILocation(line: 128, column: 5, scope: !282)
!286 = !DILocation(line: 130, column: 19, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !2, line: 129, column: 7)
!288 = distinct !DILexicalBlock(scope: !282, file: !2, line: 128, column: 5)
!289 = !DILocation(line: 131, column: 19, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !2, line: 131, column: 11)
!291 = distinct !DILexicalBlock(scope: !287, file: !2, line: 130, column: 19)
!292 = !DILocation(line: 132, column: 20, scope: !293)
!293 = distinct !DILexicalBlock(scope: !291, file: !2, line: 132, column: 11)
!294 = !DILocation(line: 134, column: 7, scope: !287)
!295 = !DILocation(line: 135, column: 11, scope: !287)
!296 = !DILocation(line: 136, column: 7, scope: !287)
!297 = !DILocation(line: 140, column: 44, scope: !298)
!298 = distinct !DILexicalBlock(scope: !283, file: !2, line: 139, column: 5)
!299 = !DILocation(line: 140, column: 49, scope: !298)
!300 = !DILocation(line: 141, column: 5, scope: !298)
!301 = distinct !DISubprogram(name: "setAdmin", linkageName: "setAdmin", scope: !2, file: !2, line: 121, type: !5, scopeLine: 121, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!302 = !DILocation(line: 121, column: 12, scope: !301)
!303 = distinct !DISubprogram(name: "approve", linkageName: "approve", scope: !2, file: !2, line: 144, type: !5, scopeLine: 144, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!304 = !DILocation(line: 145, column: 3, scope: !303)
!305 = !DILocation(line: 146, column: 17, scope: !303)
!306 = !DILocation(line: 147, column: 23, scope: !303)
!307 = !DILocation(line: 148, column: 3, scope: !303)
!308 = !DILocation(line: 150, column: 5, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !2, line: 149, column: 5)
!310 = distinct !DILexicalBlock(scope: !303, file: !2, line: 148, column: 3)
!311 = !DILocation(line: 151, column: 25, scope: !309)
!312 = !DILocation(line: 152, column: 17, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !2, line: 152, column: 9)
!314 = distinct !DILexicalBlock(scope: !309, file: !2, line: 151, column: 25)
!315 = !DILocation(line: 153, column: 26, scope: !316)
!316 = distinct !DILexicalBlock(scope: !314, file: !2, line: 153, column: 9)
!317 = !DILocation(line: 155, column: 29, scope: !309)
!318 = !DILocation(line: 155, column: 69, scope: !309)
!319 = !DILocation(line: 156, column: 5, scope: !309)
!320 = !DILocation(line: 158, column: 7, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !2, line: 157, column: 7)
!322 = distinct !DILexicalBlock(scope: !309, file: !2, line: 156, column: 5)
!323 = !DILocation(line: 159, column: 11, scope: !321)
!324 = !DILocation(line: 160, column: 7, scope: !321)
!325 = !DILocation(line: 164, column: 39, scope: !326)
!326 = distinct !DILexicalBlock(scope: !310, file: !2, line: 163, column: 5)
!327 = !DILocation(line: 164, column: 44, scope: !326)
!328 = !DILocation(line: 165, column: 5, scope: !326)
!329 = distinct !DISubprogram(name: "approve", linkageName: "approve", scope: !2, file: !2, line: 144, type: !5, scopeLine: 144, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!330 = !DILocation(line: 144, column: 12, scope: !329)
!331 = distinct !DISubprogram(name: "approveFor", linkageName: "approveFor", scope: !2, file: !2, line: 168, type: !5, scopeLine: 168, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!332 = !DILocation(line: 169, column: 3, scope: !331)
!333 = !DILocation(line: 170, column: 22, scope: !331)
!334 = !DILocation(line: 171, column: 15, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !2, line: 171, column: 7)
!336 = distinct !DILexicalBlock(scope: !331, file: !2, line: 170, column: 22)
!337 = !DILocation(line: 172, column: 19, scope: !338)
!338 = distinct !DILexicalBlock(scope: !336, file: !2, line: 172, column: 7)
!339 = !DILocation(line: 174, column: 27, scope: !331)
!340 = !DILocation(line: 175, column: 5, scope: !331)
!341 = !DILocation(line: 176, column: 3, scope: !331)
!342 = !DILocation(line: 178, column: 20, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !2, line: 177, column: 5)
!344 = distinct !DILexicalBlock(scope: !331, file: !2, line: 176, column: 3)
!345 = !DILocation(line: 179, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !2, line: 179, column: 9)
!347 = distinct !DILexicalBlock(scope: !343, file: !2, line: 178, column: 20)
!348 = !DILocation(line: 180, column: 18, scope: !349)
!349 = distinct !DILexicalBlock(scope: !347, file: !2, line: 180, column: 9)
!350 = !DILocation(line: 182, column: 5, scope: !343)
!351 = !DILocation(line: 183, column: 9, scope: !343)
!352 = !DILocation(line: 184, column: 5, scope: !343)
!353 = distinct !DISubprogram(name: "approveFor", linkageName: "approveFor", scope: !2, file: !2, line: 168, type: !5, scopeLine: 168, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!354 = !DILocation(line: 168, column: 12, scope: !353)
!355 = distinct !DISubprogram(name: "configureNode", linkageName: "configureNode", scope: !2, file: !2, line: 188, type: !5, scopeLine: 188, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!356 = !DILocation(line: 189, column: 3, scope: !355)
!357 = !DILocation(line: 190, column: 3, scope: !355)
!358 = !DILocation(line: 191, column: 17, scope: !355)
!359 = !DILocation(line: 192, column: 3, scope: !355)
!360 = !DILocation(line: 193, column: 17, scope: !355)
!361 = !DILocation(line: 194, column: 3, scope: !355)
!362 = !DILocation(line: 196, column: 17, scope: !363)
!363 = distinct !DILexicalBlock(scope: !364, file: !2, line: 195, column: 5)
!364 = distinct !DILexicalBlock(scope: !355, file: !2, line: 194, column: 3)
!365 = !DILocation(line: 197, column: 5, scope: !363)
!366 = !DILocation(line: 198, column: 9, scope: !363)
!367 = !DILocation(line: 199, column: 5, scope: !363)
!368 = !DILocation(line: 200, column: 20, scope: !363)
!369 = !DILocation(line: 202, column: 10, scope: !363)
!370 = !DILocation(line: 203, column: 5, scope: !363)
!371 = !DILocation(line: 205, column: 61, scope: !372)
!372 = distinct !DILexicalBlock(scope: !364, file: !2, line: 204, column: 5)
!373 = !DILocation(line: 205, column: 66, scope: !372)
!374 = !DILocation(line: 206, column: 5, scope: !372)
!375 = !DILocation(line: 207, column: 20, scope: !372)
!376 = !DILocation(line: 209, column: 10, scope: !372)
!377 = !DILocation(line: 210, column: 5, scope: !372)
!378 = distinct !DISubprogram(name: "configureNode", linkageName: "configureNode", scope: !2, file: !2, line: 188, type: !5, scopeLine: 188, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!379 = !DILocation(line: 188, column: 12, scope: !378)
!380 = distinct !DISubprogram(name: "configureResolver", linkageName: "configureResolver", scope: !2, file: !2, line: 213, type: !5, scopeLine: 213, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!381 = !DILocation(line: 214, column: 3, scope: !380)
!382 = !DILocation(line: 215, column: 3, scope: !380)
!383 = !DILocation(line: 216, column: 17, scope: !380)
!384 = !DILocation(line: 217, column: 3, scope: !380)
!385 = !DILocation(line: 218, column: 17, scope: !380)
!386 = !DILocation(line: 219, column: 3, scope: !380)
!387 = !DILocation(line: 221, column: 17, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !2, line: 220, column: 5)
!389 = distinct !DILexicalBlock(scope: !380, file: !2, line: 219, column: 3)
!390 = !DILocation(line: 222, column: 5, scope: !388)
!391 = !DILocation(line: 223, column: 9, scope: !388)
!392 = !DILocation(line: 224, column: 5, scope: !388)
!393 = !DILocation(line: 226, column: 61, scope: !394)
!394 = distinct !DILexicalBlock(scope: !389, file: !2, line: 225, column: 5)
!395 = !DILocation(line: 226, column: 66, scope: !394)
!396 = !DILocation(line: 227, column: 5, scope: !394)
!397 = distinct !DISubprogram(name: "configureResolver", linkageName: "configureResolver", scope: !2, file: !2, line: 213, type: !5, scopeLine: 213, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!398 = !DILocation(line: 213, column: 12, scope: !397)
!399 = distinct !DISubprogram(name: "transfer", linkageName: "transfer", scope: !2, file: !2, line: 230, type: !5, scopeLine: 230, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!400 = !DILocation(line: 231, column: 3, scope: !399)
!401 = !DILocation(line: 232, column: 3, scope: !399)
!402 = !DILocation(line: 233, column: 17, scope: !399)
!403 = !DILocation(line: 234, column: 3, scope: !399)
!404 = !DILocation(line: 235, column: 17, scope: !399)
!405 = !DILocation(line: 236, column: 3, scope: !399)
!406 = !DILocation(line: 238, column: 5, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !2, line: 237, column: 5)
!408 = distinct !DILexicalBlock(scope: !399, file: !2, line: 236, column: 3)
!409 = !DILocation(line: 239, column: 17, scope: !407)
!410 = !DILocation(line: 240, column: 5, scope: !407)
!411 = !DILocation(line: 241, column: 9, scope: !407)
!412 = !DILocation(line: 242, column: 5, scope: !407)
!413 = !DILocation(line: 243, column: 20, scope: !407)
!414 = !DILocation(line: 245, column: 10, scope: !407)
!415 = !DILocation(line: 246, column: 5, scope: !407)
!416 = !DILocation(line: 248, column: 61, scope: !417)
!417 = distinct !DILexicalBlock(scope: !408, file: !2, line: 247, column: 5)
!418 = !DILocation(line: 248, column: 66, scope: !417)
!419 = !DILocation(line: 249, column: 5, scope: !417)
!420 = !DILocation(line: 250, column: 20, scope: !417)
!421 = !DILocation(line: 252, column: 10, scope: !417)
!422 = !DILocation(line: 253, column: 5, scope: !417)
!423 = distinct !DISubprogram(name: "transfer", linkageName: "transfer", scope: !2, file: !2, line: 230, type: !5, scopeLine: 230, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!424 = !DILocation(line: 230, column: 12, scope: !423)
!425 = distinct !DISubprogram(name: "assign", linkageName: "assign", scope: !2, file: !2, line: 256, type: !5, scopeLine: 256, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!426 = !DILocation(line: 257, column: 3, scope: !425)
!427 = !DILocation(line: 258, column: 3, scope: !425)
!428 = !DILocation(line: 259, column: 17, scope: !425)
!429 = !DILocation(line: 260, column: 3, scope: !425)
!430 = !DILocation(line: 261, column: 17, scope: !425)
!431 = !DILocation(line: 262, column: 3, scope: !425)
!432 = !DILocation(line: 264, column: 12, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !2, line: 263, column: 5)
!434 = distinct !DILexicalBlock(scope: !425, file: !2, line: 262, column: 3)
!435 = !DILocation(line: 265, column: 5, scope: !433)
!436 = !DILocation(line: 266, column: 5, scope: !433)
!437 = !DILocation(line: 268, column: 11, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !2, line: 267, column: 7)
!439 = distinct !DILexicalBlock(scope: !433, file: !2, line: 266, column: 5)
!440 = !DILocation(line: 269, column: 7, scope: !438)
!441 = !DILocation(line: 272, column: 5, scope: !433)
!442 = !DILocation(line: 273, column: 17, scope: !433)
!443 = !DILocation(line: 274, column: 5, scope: !433)
!444 = !DILocation(line: 275, column: 9, scope: !433)
!445 = !DILocation(line: 276, column: 5, scope: !433)
!446 = !DILocation(line: 277, column: 20, scope: !433)
!447 = !DILocation(line: 279, column: 10, scope: !433)
!448 = !DILocation(line: 280, column: 5, scope: !433)
!449 = !DILocation(line: 282, column: 63, scope: !450)
!450 = distinct !DILexicalBlock(scope: !434, file: !2, line: 281, column: 5)
!451 = !DILocation(line: 282, column: 68, scope: !450)
!452 = !DILocation(line: 283, column: 5, scope: !450)
!453 = !DILocation(line: 284, column: 20, scope: !450)
!454 = !DILocation(line: 286, column: 10, scope: !450)
!455 = !DILocation(line: 287, column: 5, scope: !450)
!456 = distinct !DISubprogram(name: "assign", linkageName: "assign", scope: !2, file: !2, line: 256, type: !5, scopeLine: 256, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!457 = !DILocation(line: 256, column: 12, scope: !456)
!458 = distinct !DISubprogram(name: "bestow", linkageName: "bestow", scope: !2, file: !2, line: 290, type: !5, scopeLine: 290, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!459 = !DILocation(line: 291, column: 3, scope: !458)
!460 = !DILocation(line: 292, column: 10, scope: !458)
!461 = !DILocation(line: 293, column: 3, scope: !458)
!462 = !DILocation(line: 294, column: 3, scope: !458)
!463 = !DILocation(line: 295, column: 3, scope: !458)
!464 = !DILocation(line: 297, column: 25, scope: !458)
!465 = !DILocation(line: 298, column: 29, scope: !458)
!466 = !DILocation(line: 299, column: 22, scope: !458)
!467 = !DILocation(line: 300, column: 23, scope: !458)
!468 = !DILocation(line: 301, column: 27, scope: !458)
!469 = !DILocation(line: 302, column: 36, scope: !458)
!470 = !DILocation(line: 303, column: 37, scope: !458)
!471 = !DILocation(line: 304, column: 27, scope: !458)
!472 = !DILocation(line: 305, column: 7, scope: !458)
!473 = !DILocation(line: 306, column: 3, scope: !458)
!474 = !DILocation(line: 308, column: 5, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !2, line: 307, column: 5)
!476 = distinct !DILexicalBlock(scope: !458, file: !2, line: 306, column: 3)
!477 = !DILocation(line: 310, column: 11, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !2, line: 309, column: 7)
!479 = distinct !DILexicalBlock(scope: !475, file: !2, line: 308, column: 5)
!480 = !DILocation(line: 311, column: 7, scope: !478)
!481 = !DILocation(line: 314, column: 17, scope: !475)
!482 = !DILocation(line: 315, column: 5, scope: !475)
!483 = !DILocation(line: 316, column: 9, scope: !475)
!484 = !DILocation(line: 317, column: 5, scope: !475)
!485 = !DILocation(line: 319, column: 30, scope: !486)
!486 = distinct !DILexicalBlock(scope: !476, file: !2, line: 318, column: 5)
!487 = !DILocation(line: 319, column: 35, scope: !486)
!488 = !DILocation(line: 320, column: 5, scope: !486)
!489 = distinct !DISubprogram(name: "bestow", linkageName: "bestow", scope: !2, file: !2, line: 290, type: !5, scopeLine: 290, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!490 = !DILocation(line: 290, column: 12, scope: !489)
!491 = distinct !DISubprogram(name: "setRegistrar", linkageName: "setRegistrar", scope: !2, file: !2, line: 323, type: !5, scopeLine: 323, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!492 = !DILocation(line: 324, column: 3, scope: !491)
!493 = !DILocation(line: 325, column: 10, scope: !491)
!494 = !DILocation(line: 326, column: 3, scope: !491)
!495 = !DILocation(line: 328, column: 9, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !2, line: 327, column: 5)
!497 = distinct !DILexicalBlock(scope: !491, file: !2, line: 326, column: 3)
!498 = !DILocation(line: 329, column: 5, scope: !496)
!499 = !DILocation(line: 330, column: 5, scope: !496)
!500 = distinct !DISubprogram(name: "setRegistrar", linkageName: "setRegistrar", scope: !2, file: !2, line: 323, type: !5, scopeLine: 323, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!501 = !DILocation(line: 323, column: 12, scope: !500)
!502 = distinct !DISubprogram(name: "register", linkageName: "register", scope: !2, file: !2, line: 334, type: !5, scopeLine: 334, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!503 = !DILocation(line: 335, column: 10, scope: !502)
!504 = !DILocation(line: 336, column: 3, scope: !502)
!505 = !DILocation(line: 337, column: 3, scope: !502)
!506 = !DILocation(line: 338, column: 17, scope: !502)
!507 = !DILocation(line: 340, column: 5, scope: !502)
!508 = !DILocation(line: 341, column: 15, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !2, line: 341, column: 7)
!510 = distinct !DILexicalBlock(scope: !502, file: !2, line: 340, column: 5)
!511 = !DILocation(line: 342, column: 24, scope: !512)
!512 = distinct !DILexicalBlock(scope: !510, file: !2, line: 342, column: 7)
!513 = !DILocation(line: 344, column: 3, scope: !502)
!514 = !DILocation(line: 346, column: 27, scope: !502)
!515 = !DILocation(line: 347, column: 24, scope: !502)
!516 = !DILocation(line: 348, column: 7, scope: !502)
!517 = !DILocation(line: 349, column: 3, scope: !502)
!518 = !DILocation(line: 351, column: 5, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !2, line: 350, column: 5)
!520 = distinct !DILexicalBlock(scope: !502, file: !2, line: 349, column: 3)
!521 = !DILocation(line: 353, column: 15, scope: !519)
!522 = !DILocation(line: 355, column: 9, scope: !519)
!523 = !DILocation(line: 356, column: 5, scope: !519)
!524 = distinct !DISubprogram(name: "register", linkageName: "register", scope: !2, file: !2, line: 334, type: !5, scopeLine: 334, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!525 = !DILocation(line: 334, column: 12, scope: !524)
!526 = distinct !DISubprogram(name: "onResolverConfigured", linkageName: "onResolverConfigured", scope: !2, file: !2, line: 360, type: !5, scopeLine: 360, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!527 = !DILocation(line: 361, column: 3, scope: !526)
!528 = !DILocation(line: 362, column: 3, scope: !526)
!529 = !DILocation(line: 365, column: 5, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !2, line: 364, column: 5)
!531 = distinct !DILexicalBlock(scope: !526, file: !2, line: 362, column: 3)
!532 = !DILocation(line: 367, column: 14, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !2, line: 366, column: 7)
!534 = distinct !DILexicalBlock(scope: !530, file: !2, line: 365, column: 5)
!535 = !DILocation(line: 368, column: 7, scope: !533)
!536 = !DILocation(line: 370, column: 13, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !2, line: 369, column: 9)
!538 = distinct !DILexicalBlock(scope: !533, file: !2, line: 368, column: 7)
!539 = !DILocation(line: 371, column: 9, scope: !537)
!540 = distinct !DISubprogram(name: "onResolverConfigured", linkageName: "onResolverConfigured", scope: !2, file: !2, line: 360, type: !5, scopeLine: 360, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!541 = !DILocation(line: 360, column: 12, scope: !540)
