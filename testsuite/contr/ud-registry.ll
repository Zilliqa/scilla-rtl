

; gas_remaining: 4001916
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
%"$ParamDescr_5931" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_5932" = type { %ParamDescrString, i32, %"$ParamDescr_5931"* }
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
@"$records_2701" = unnamed_addr constant [8 x i8] c"records\00"
@"$registrar_2711" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$approvals_2724" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_2736" = unnamed_addr constant [10 x i8] c"operators\00"
@"$admins_2752" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_2759" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_2912" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_2962" = unnamed_addr constant [26 x i8] c"Sender not root node owner"
@"$records_3002" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3065" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$approvals_3170" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$stringlit_3216" = unnamed_addr constant [21 x i8] c"Sender not node owner"
@"$operators_3255" = unnamed_addr constant [10 x i8] c"operators\00"
@"$operators_3412" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3469" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3485" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3519" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3604" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_3659" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3664" = unnamed_addr constant [18 x i8] c"onConfigureSuccess"
@"$stringlit_3667" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3674" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3681" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3688" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_3734" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$stringlit_3772" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3777" = unnamed_addr constant [18 x i8] c"onConfigureFailure"
@"$stringlit_3780" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3787" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3795" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3802" = unnamed_addr constant [10 x i8] c"_recipient"
@"$records_3851" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3867" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3901" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3987" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4044" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$records_4084" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4100" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_4134" = unnamed_addr constant [10 x i8] c"operators\00"
@"$approvals_4200" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$records_4229" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4285" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4290" = unnamed_addr constant [17 x i8] c"onTransferSuccess"
@"$stringlit_4293" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_4300" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4307" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4314" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_4360" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$stringlit_4398" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4403" = unnamed_addr constant [17 x i8] c"onTransferFailure"
@"$stringlit_4406" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_4413" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4420" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4427" = unnamed_addr constant [10 x i8] c"_recipient"
@"$records_4474" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4490" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_4524" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_4606" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4671" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$records_4701" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4758" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4763" = unnamed_addr constant [15 x i8] c"onAssignSuccess"
@"$stringlit_4766" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_4773" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_4780" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4787" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4794" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_4840" = unnamed_addr constant [45 x i8] c"Sender not parent owner, approved or operator"
@"$stringlit_4878" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4883" = unnamed_addr constant [15 x i8] c"onAssignFailure"
@"$stringlit_4886" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_4893" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_4900" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4908" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4915" = unnamed_addr constant [10 x i8] c"_recipient"
@"$admins_4962" = unnamed_addr constant [7 x i8] c"admins\00"
@"$records_5000" = unnamed_addr constant [8 x i8] c"records\00"
@"$records_5017" = unnamed_addr constant [8 x i8] c"records\00"
@"$registrar_5031" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$records_5307" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_5364" = unnamed_addr constant [12 x i8] c"Sender admin"
@"$admins_5403" = unnamed_addr constant [7 x i8] c"admins\00"
@"$registrar_5484" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$records_5524" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_5541" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$registrar_5605" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$stringlit_5713" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_5718" = unnamed_addr constant [8 x i8] c"register"
@"$stringlit_5721" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_5728" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_5736" = unnamed_addr constant [6 x i8] c"origin"
@"$stringlit_5743" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_5751" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_5758" = unnamed_addr constant [5 x i8] c"label"
@"$records_5806" = unnamed_addr constant [8 x i8] c"records\00"
@_tydescr_table = constant [28 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %_TyDescrTy_Typ* @"$TyDescr_Event_301", %_TyDescrTy_Typ* @"$TyDescr_Int64_283", %_TyDescrTy_Typ* @"$TyDescr_Addr_328", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ* @"$TyDescr_Uint256_293", %_TyDescrTy_Typ* @"$TyDescr_Uint32_281", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_307", %_TyDescrTy_Typ* @"$TyDescr_Uint64_285", %_TyDescrTy_Typ* @"$TyDescr_Bnum_297", %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ* @"$TyDescr_Map_325", %_TyDescrTy_Typ* @"$TyDescr_Exception_303", %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ* @"$TyDescr_Int256_291", %_TyDescrTy_Typ* @"$TyDescr_Int128_287", %_TyDescrTy_Typ* @"$TyDescr_Map_323", %_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", %_TyDescrTy_Typ* @"$TyDescr_Bystr_305", %_TyDescrTy_Typ* @"$TyDescr_Message_299", %_TyDescrTy_Typ* @"$TyDescr_Map_324", %_TyDescrTy_Typ* @"$TyDescr_Int32_279"]
@_tydescr_table_length = constant i32 28
@"$pname__scilla_version_5933" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_5934" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_5935" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_initialOwner_5936" = unnamed_addr constant [12 x i8] c"initialOwner"
@"$pname_rootNode_5937" = unnamed_addr constant [8 x i8] c"rootNode"
@_contract_parameters = constant [5 x %"$ParamDescr_5931"] [%"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_5933", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_281" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_5934", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_5935", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_297" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$pname_initialOwner_5936", i32 0, i32 0), i32 12 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pname_rootNode_5937", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }]
@_contract_parameters_length = constant i32 5
@"$tpname__amount_5938" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5939" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5940" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_5941" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_5942" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_setAdmin_5943" = unnamed_addr constant [5 x %"$ParamDescr_5931"] [%"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5938", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5939", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5940", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5941", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_5942", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321" }]
@"$tname_setAdmin_5944" = unnamed_addr constant [8 x i8] c"setAdmin"
@"$tpname__amount_5945" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5946" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5947" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5948" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_address_5949" = unnamed_addr constant [7 x i8] c"address"
@"$tparams_approve_5950" = unnamed_addr constant [5 x %"$ParamDescr_5931"] [%"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5945", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5946", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5947", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5948", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5949", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_approve_5951" = unnamed_addr constant [7 x i8] c"approve"
@"$tpname__amount_5952" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5953" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5954" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_5955" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_5956" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_approveFor_5957" = unnamed_addr constant [5 x %"$ParamDescr_5931"] [%"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5952", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5953", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5954", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5955", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_5956", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321" }]
@"$tname_approveFor_5958" = unnamed_addr constant [10 x i8] c"approveFor"
@"$tpname__amount_5959" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5960" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5961" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5962" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_owner_5963" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_5964" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_configureNode_5965" = unnamed_addr constant [6 x %"$ParamDescr_5931"] [%"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5959", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5960", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5961", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5962", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5963", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5964", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_configureNode_5966" = unnamed_addr constant [13 x i8] c"configureNode"
@"$tpname__amount_5967" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5968" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5969" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5970" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_resolver_5971" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_configureResolver_5972" = unnamed_addr constant [5 x %"$ParamDescr_5931"] [%"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5967", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5968", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5969", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5970", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5971", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_configureResolver_5973" = unnamed_addr constant [17 x i8] c"configureResolver"
@"$tpname__amount_5974" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5975" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5976" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5977" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_owner_5978" = unnamed_addr constant [5 x i8] c"owner"
@"$tparams_transfer_5979" = unnamed_addr constant [5 x %"$ParamDescr_5931"] [%"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5974", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5975", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5976", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5977", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5978", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_transfer_5980" = unnamed_addr constant [8 x i8] c"transfer"
@"$tpname__amount_5981" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5982" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5983" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_parent_5984" = unnamed_addr constant [6 x i8] c"parent"
@"$tpname_label_5985" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_5986" = unnamed_addr constant [5 x i8] c"owner"
@"$tparams_assign_5987" = unnamed_addr constant [6 x %"$ParamDescr_5931"] [%"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5981", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5982", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5983", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_parent_5984", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_5985", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_295" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5986", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_assign_5988" = unnamed_addr constant [6 x i8] c"assign"
@"$tpname__amount_5989" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5990" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5991" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_label_5992" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_5993" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_5994" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_bestow_5995" = unnamed_addr constant [6 x %"$ParamDescr_5931"] [%"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5989", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5990", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5991", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_5992", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_295" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5993", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5994", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_bestow_5996" = unnamed_addr constant [6 x i8] c"bestow"
@"$tpname__amount_5997" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5998" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5999" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_6000" = unnamed_addr constant [7 x i8] c"address"
@"$tparams_setRegistrar_6001" = unnamed_addr constant [4 x %"$ParamDescr_5931"] [%"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5997", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5998", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5999", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_6000", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311" }]
@"$tname_setRegistrar_6002" = unnamed_addr constant [12 x i8] c"setRegistrar"
@"$tpname__amount_6003" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_6004" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_6005" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_parent_6006" = unnamed_addr constant [6 x i8] c"parent"
@"$tpname_label_6007" = unnamed_addr constant [5 x i8] c"label"
@"$tparams_register_6008" = unnamed_addr constant [5 x %"$ParamDescr_5931"] [%"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_6003", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_6004", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_6005", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_parent_6006", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_6007", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_295" }]
@"$tname_register_6009" = unnamed_addr constant [8 x i8] c"register"
@"$tpname__amount_6010" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_6011" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_6012" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_6013" = unnamed_addr constant [4 x i8] c"node"
@"$tparams_onResolverConfigured_6014" = unnamed_addr constant [4 x %"$ParamDescr_5931"] [%"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_6010", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_289" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_6011", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_6012", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_328" }, %"$ParamDescr_5931" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_6013", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309" }]
@"$tname_onResolverConfigured_6015" = unnamed_addr constant [20 x i8] c"onResolverConfigured"
@_transition_parameters = constant [11 x %"$TransDescr_5932"] [%"$TransDescr_5932" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setAdmin_5944", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5931"* getelementptr inbounds ([5 x %"$ParamDescr_5931"], [5 x %"$ParamDescr_5931"]* @"$tparams_setAdmin_5943", i32 0, i32 0) }, %"$TransDescr_5932" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_approve_5951", i32 0, i32 0), i32 7 }, i32 5, %"$ParamDescr_5931"* getelementptr inbounds ([5 x %"$ParamDescr_5931"], [5 x %"$ParamDescr_5931"]* @"$tparams_approve_5950", i32 0, i32 0) }, %"$TransDescr_5932" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tname_approveFor_5958", i32 0, i32 0), i32 10 }, i32 5, %"$ParamDescr_5931"* getelementptr inbounds ([5 x %"$ParamDescr_5931"], [5 x %"$ParamDescr_5931"]* @"$tparams_approveFor_5957", i32 0, i32 0) }, %"$TransDescr_5932" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_configureNode_5966", i32 0, i32 0), i32 13 }, i32 6, %"$ParamDescr_5931"* getelementptr inbounds ([6 x %"$ParamDescr_5931"], [6 x %"$ParamDescr_5931"]* @"$tparams_configureNode_5965", i32 0, i32 0) }, %"$TransDescr_5932" { %ParamDescrString { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$tname_configureResolver_5973", i32 0, i32 0), i32 17 }, i32 5, %"$ParamDescr_5931"* getelementptr inbounds ([5 x %"$ParamDescr_5931"], [5 x %"$ParamDescr_5931"]* @"$tparams_configureResolver_5972", i32 0, i32 0) }, %"$TransDescr_5932" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_transfer_5980", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5931"* getelementptr inbounds ([5 x %"$ParamDescr_5931"], [5 x %"$ParamDescr_5931"]* @"$tparams_transfer_5979", i32 0, i32 0) }, %"$TransDescr_5932" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_assign_5988", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_5931"* getelementptr inbounds ([6 x %"$ParamDescr_5931"], [6 x %"$ParamDescr_5931"]* @"$tparams_assign_5987", i32 0, i32 0) }, %"$TransDescr_5932" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_bestow_5996", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_5931"* getelementptr inbounds ([6 x %"$ParamDescr_5931"], [6 x %"$ParamDescr_5931"]* @"$tparams_bestow_5995", i32 0, i32 0) }, %"$TransDescr_5932" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$tname_setRegistrar_6002", i32 0, i32 0), i32 12 }, i32 4, %"$ParamDescr_5931"* getelementptr inbounds ([4 x %"$ParamDescr_5931"], [4 x %"$ParamDescr_5931"]* @"$tparams_setRegistrar_6001", i32 0, i32 0) }, %"$TransDescr_5932" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_register_6009", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5931"* getelementptr inbounds ([5 x %"$ParamDescr_5931"], [5 x %"$ParamDescr_5931"]* @"$tparams_register_6008", i32 0, i32 0) }, %"$TransDescr_5932" { %ParamDescrString { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$tname_onResolverConfigured_6015", i32 0, i32 0), i32 20 }, i32 4, %"$ParamDescr_5931"* getelementptr inbounds ([4 x %"$ParamDescr_5931"], [4 x %"$ParamDescr_5931"]* @"$tparams_onResolverConfigured_6014", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 11

define internal %TName_Bool* @"$fundef_214"(%"$$fundef_214_env_405"* %0, %"TName_Option_List_(ByStr20)"* %1) {
entry:
  %"$$fundef_214_env_BoolUtils.orb_2219" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2220" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_214_env_BoolUtils.orb_2219", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2220", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_214_env_maybeApproved_2221" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %0, i32 0, i32 1
  %"$maybeApproved_envload_2222" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_214_env_maybeApproved_2221", align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  store %TName_Option_ByStr20* %"$maybeApproved_envload_2222", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$fundef_214_env_recordOwner_2223" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %0, i32 0, i32 2
  %"$recordOwner_envload_2224" = load [20 x i8], [20 x i8]* %"$$fundef_214_env_recordOwner_2223", align 1
  %recordOwner = alloca [20 x i8], align 1
  store [20 x i8] %"$recordOwner_envload_2224", [20 x i8]* %recordOwner, align 1
  %"$$fundef_214_env_sender_2225" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %0, i32 0, i32 3
  %"$sender_envload_2226" = load [20 x i8], [20 x i8]* %"$$fundef_214_env_sender_2225", align 1
  %sender = alloca [20 x i8], align 1
  store [20 x i8] %"$sender_envload_2226", [20 x i8]* %sender, align 1
  %"$$fundef_214_env_ud-registry.listByStr20Contains_2227" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %0, i32 0, i32 4
  %"$ud-registry.listByStr20Contains_envload_2228" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_214_env_ud-registry.listByStr20Contains_2227", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2228", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_215" = alloca %TName_Bool*, align 8
  %"$gasrem_2229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2230" = icmp ugt i64 1, %"$gasrem_2229"
  br i1 %"$gascmp_2230", label %"$out_of_gas_2231", label %"$have_gas_2232"

"$out_of_gas_2231":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2232"

"$have_gas_2232":                                 ; preds = %"$out_of_gas_2231", %entry
  %"$consume_2233" = sub i64 %"$gasrem_2229", 1
  store i64 %"$consume_2233", i64* @_gasrem, align 8
  %isOwner = alloca %TName_Bool*, align 8
  %"$gasrem_2234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2235" = icmp ugt i64 20, %"$gasrem_2234"
  br i1 %"$gascmp_2235", label %"$out_of_gas_2236", label %"$have_gas_2237"

"$out_of_gas_2236":                               ; preds = %"$have_gas_2232"
  call void @_out_of_gas()
  br label %"$have_gas_2237"

"$have_gas_2237":                                 ; preds = %"$out_of_gas_2236", %"$have_gas_2232"
  %"$consume_2238" = sub i64 %"$gasrem_2234", 20
  store i64 %"$consume_2238", i64* @_gasrem, align 8
  %"$execptr_load_2239" = load i8*, i8** @_execptr, align 8
  %"$eq_sender_2240" = alloca [20 x i8], align 1
  %"$sender_2241" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2241", [20 x i8]* %"$eq_sender_2240", align 1
  %"$$eq_sender_2240_2242" = bitcast [20 x i8]* %"$eq_sender_2240" to i8*
  %"$eq_recordOwner_2243" = alloca [20 x i8], align 1
  %"$recordOwner_2244" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_2244", [20 x i8]* %"$eq_recordOwner_2243", align 1
  %"$$eq_recordOwner_2243_2245" = bitcast [20 x i8]* %"$eq_recordOwner_2243" to i8*
  %"$eq_call_2246" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2239", i32 20, i8* %"$$eq_sender_2240_2242", i8* %"$$eq_recordOwner_2243_2245")
  store %TName_Bool* %"$eq_call_2246", %TName_Bool** %isOwner, align 8
  %"$gasrem_2248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2249" = icmp ugt i64 1, %"$gasrem_2248"
  br i1 %"$gascmp_2249", label %"$out_of_gas_2250", label %"$have_gas_2251"

"$out_of_gas_2250":                               ; preds = %"$have_gas_2237"
  call void @_out_of_gas()
  br label %"$have_gas_2251"

"$have_gas_2251":                                 ; preds = %"$out_of_gas_2250", %"$have_gas_2237"
  %"$consume_2252" = sub i64 %"$gasrem_2248", 1
  store i64 %"$consume_2252", i64* @_gasrem, align 8
  %isApproved = alloca %TName_Bool*, align 8
  %"$gasrem_2253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2254" = icmp ugt i64 2, %"$gasrem_2253"
  br i1 %"$gascmp_2254", label %"$out_of_gas_2255", label %"$have_gas_2256"

"$out_of_gas_2255":                               ; preds = %"$have_gas_2251"
  call void @_out_of_gas()
  br label %"$have_gas_2256"

"$have_gas_2256":                                 ; preds = %"$out_of_gas_2255", %"$have_gas_2251"
  %"$consume_2257" = sub i64 %"$gasrem_2253", 2
  store i64 %"$consume_2257", i64* @_gasrem, align 8
  %"$maybeApproved_2259" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_2260" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_2259", i32 0, i32 0
  %"$maybeApproved_tag_2261" = load i8, i8* %"$maybeApproved_tag_2260", align 1
  switch i8 %"$maybeApproved_tag_2261", label %"$empty_default_2262" [
    i8 1, label %"$None_2263"
    i8 0, label %"$Some_2273"
  ]

"$None_2263":                                     ; preds = %"$have_gas_2256"
  %"$maybeApproved_2264" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2259" to %CName_None_ByStr20*
  %"$gasrem_2265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2266" = icmp ugt i64 1, %"$gasrem_2265"
  br i1 %"$gascmp_2266", label %"$out_of_gas_2267", label %"$have_gas_2268"

"$out_of_gas_2267":                               ; preds = %"$None_2263"
  call void @_out_of_gas()
  br label %"$have_gas_2268"

"$have_gas_2268":                                 ; preds = %"$out_of_gas_2267", %"$None_2263"
  %"$consume_2269" = sub i64 %"$gasrem_2265", 1
  store i64 %"$consume_2269", i64* @_gasrem, align 8
  %"$adtval_2270_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2270_salloc" = call i8* @_salloc(i8* %"$adtval_2270_load", i64 1)
  %"$adtval_2270" = bitcast i8* %"$adtval_2270_salloc" to %CName_False*
  %"$adtgep_2271" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_2270", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2271", align 1
  %"$adtptr_2272" = bitcast %CName_False* %"$adtval_2270" to %TName_Bool*
  store %TName_Bool* %"$adtptr_2272", %TName_Bool** %isApproved, align 8
  br label %"$matchsucc_2258"

"$Some_2273":                                     ; preds = %"$have_gas_2256"
  %"$maybeApproved_2274" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2259" to %CName_Some_ByStr20*
  %"$approved_gep_2275" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_2274", i32 0, i32 1
  %"$approved_load_2276" = load [20 x i8], [20 x i8]* %"$approved_gep_2275", align 1
  %approved = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_2276", [20 x i8]* %approved, align 1
  %"$gasrem_2277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2278" = icmp ugt i64 20, %"$gasrem_2277"
  br i1 %"$gascmp_2278", label %"$out_of_gas_2279", label %"$have_gas_2280"

"$out_of_gas_2279":                               ; preds = %"$Some_2273"
  call void @_out_of_gas()
  br label %"$have_gas_2280"

"$have_gas_2280":                                 ; preds = %"$out_of_gas_2279", %"$Some_2273"
  %"$consume_2281" = sub i64 %"$gasrem_2277", 20
  store i64 %"$consume_2281", i64* @_gasrem, align 8
  %"$execptr_load_2282" = load i8*, i8** @_execptr, align 8
  %"$eq_sender_2283" = alloca [20 x i8], align 1
  %"$sender_2284" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2284", [20 x i8]* %"$eq_sender_2283", align 1
  %"$$eq_sender_2283_2285" = bitcast [20 x i8]* %"$eq_sender_2283" to i8*
  %"$eq_approved_2286" = alloca [20 x i8], align 1
  %"$approved_2287" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_2287", [20 x i8]* %"$eq_approved_2286", align 1
  %"$$eq_approved_2286_2288" = bitcast [20 x i8]* %"$eq_approved_2286" to i8*
  %"$eq_call_2289" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2282", i32 20, i8* %"$$eq_sender_2283_2285", i8* %"$$eq_approved_2286_2288")
  store %TName_Bool* %"$eq_call_2289", %TName_Bool** %isApproved, align 8
  br label %"$matchsucc_2258"

"$empty_default_2262":                            ; preds = %"$have_gas_2256"
  br label %"$matchsucc_2258"

"$matchsucc_2258":                                ; preds = %"$have_gas_2280", %"$have_gas_2268", %"$empty_default_2262"
  %"$gasrem_2291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2292" = icmp ugt i64 1, %"$gasrem_2291"
  br i1 %"$gascmp_2292", label %"$out_of_gas_2293", label %"$have_gas_2294"

"$out_of_gas_2293":                               ; preds = %"$matchsucc_2258"
  call void @_out_of_gas()
  br label %"$have_gas_2294"

"$have_gas_2294":                                 ; preds = %"$out_of_gas_2293", %"$matchsucc_2258"
  %"$consume_2295" = sub i64 %"$gasrem_2291", 1
  store i64 %"$consume_2295", i64* @_gasrem, align 8
  %isOperator = alloca %TName_Bool*, align 8
  %"$gasrem_2296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2297" = icmp ugt i64 2, %"$gasrem_2296"
  br i1 %"$gascmp_2297", label %"$out_of_gas_2298", label %"$have_gas_2299"

"$out_of_gas_2298":                               ; preds = %"$have_gas_2294"
  call void @_out_of_gas()
  br label %"$have_gas_2299"

"$have_gas_2299":                                 ; preds = %"$out_of_gas_2298", %"$have_gas_2294"
  %"$consume_2300" = sub i64 %"$gasrem_2296", 2
  store i64 %"$consume_2300", i64* @_gasrem, align 8
  %"$maybeOperators_tag_2302" = getelementptr inbounds %"TName_Option_List_(ByStr20)", %"TName_Option_List_(ByStr20)"* %1, i32 0, i32 0
  %"$maybeOperators_tag_2303" = load i8, i8* %"$maybeOperators_tag_2302", align 1
  switch i8 %"$maybeOperators_tag_2303", label %"$empty_default_2304" [
    i8 1, label %"$None_2305"
    i8 0, label %"$Some_2315"
  ]

"$None_2305":                                     ; preds = %"$have_gas_2299"
  %"$maybeOperators_2306" = bitcast %"TName_Option_List_(ByStr20)"* %1 to %"CName_None_List_(ByStr20)"*
  %"$gasrem_2307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2308" = icmp ugt i64 1, %"$gasrem_2307"
  br i1 %"$gascmp_2308", label %"$out_of_gas_2309", label %"$have_gas_2310"

"$out_of_gas_2309":                               ; preds = %"$None_2305"
  call void @_out_of_gas()
  br label %"$have_gas_2310"

"$have_gas_2310":                                 ; preds = %"$out_of_gas_2309", %"$None_2305"
  %"$consume_2311" = sub i64 %"$gasrem_2307", 1
  store i64 %"$consume_2311", i64* @_gasrem, align 8
  %"$adtval_2312_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2312_salloc" = call i8* @_salloc(i8* %"$adtval_2312_load", i64 1)
  %"$adtval_2312" = bitcast i8* %"$adtval_2312_salloc" to %CName_False*
  %"$adtgep_2313" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_2312", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2313", align 1
  %"$adtptr_2314" = bitcast %CName_False* %"$adtval_2312" to %TName_Bool*
  store %TName_Bool* %"$adtptr_2314", %TName_Bool** %isOperator, align 8
  br label %"$matchsucc_2301"

"$Some_2315":                                     ; preds = %"$have_gas_2299"
  %"$maybeOperators_2316" = bitcast %"TName_Option_List_(ByStr20)"* %1 to %"CName_Some_List_(ByStr20)"*
  %"$operators_gep_2317" = getelementptr inbounds %"CName_Some_List_(ByStr20)", %"CName_Some_List_(ByStr20)"* %"$maybeOperators_2316", i32 0, i32 1
  %"$operators_load_2318" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$operators_gep_2317", align 8
  %operators = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$operators_load_2318", %TName_List_ByStr20** %operators, align 8
  %"$gasrem_2319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2320" = icmp ugt i64 1, %"$gasrem_2319"
  br i1 %"$gascmp_2320", label %"$out_of_gas_2321", label %"$have_gas_2322"

"$out_of_gas_2321":                               ; preds = %"$Some_2315"
  call void @_out_of_gas()
  br label %"$have_gas_2322"

"$have_gas_2322":                                 ; preds = %"$out_of_gas_2321", %"$Some_2315"
  %"$consume_2323" = sub i64 %"$gasrem_2319", 1
  store i64 %"$consume_2323", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_39" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_2324" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_2325" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2324", 0
  %"$ud-registry.listByStr20Contains_envptr_2326" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2324", 1
  %"$operators_2327" = load %TName_List_ByStr20*, %TName_List_ByStr20** %operators, align 8
  %"$ud-registry.listByStr20Contains_call_2328" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_2325"(i8* %"$ud-registry.listByStr20Contains_envptr_2326", %TName_List_ByStr20* %"$operators_2327")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_2328", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_39", align 8
  %"$ud-registry.listByStr20Contains_40" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_39_2329" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_39", align 8
  %"$$ud-registry.listByStr20Contains_39_fptr_2330" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_39_2329", 0
  %"$$ud-registry.listByStr20Contains_39_envptr_2331" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_39_2329", 1
  %"$$ud-registry.listByStr20Contains_39_sender_2332" = alloca [20 x i8], align 1
  %"$sender_2333" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2333", [20 x i8]* %"$$ud-registry.listByStr20Contains_39_sender_2332", align 1
  %"$$ud-registry.listByStr20Contains_39_call_2334" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_39_fptr_2330"(i8* %"$$ud-registry.listByStr20Contains_39_envptr_2331", [20 x i8]* %"$$ud-registry.listByStr20Contains_39_sender_2332")
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_39_call_2334", %TName_Bool** %"$ud-registry.listByStr20Contains_40", align 8
  %"$$ud-registry.listByStr20Contains_40_2335" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_40", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_40_2335", %TName_Bool** %isOperator, align 8
  br label %"$matchsucc_2301"

"$empty_default_2304":                            ; preds = %"$have_gas_2299"
  br label %"$matchsucc_2301"

"$matchsucc_2301":                                ; preds = %"$have_gas_2322", %"$have_gas_2310", %"$empty_default_2304"
  %"$gasrem_2336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2337" = icmp ugt i64 1, %"$gasrem_2336"
  br i1 %"$gascmp_2337", label %"$out_of_gas_2338", label %"$have_gas_2339"

"$out_of_gas_2338":                               ; preds = %"$matchsucc_2301"
  call void @_out_of_gas()
  br label %"$have_gas_2339"

"$have_gas_2339":                                 ; preds = %"$out_of_gas_2338", %"$matchsucc_2301"
  %"$consume_2340" = sub i64 %"$gasrem_2336", 1
  store i64 %"$consume_2340", i64* @_gasrem, align 8
  %b1 = alloca %TName_Bool*, align 8
  %"$gasrem_2341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2342" = icmp ugt i64 1, %"$gasrem_2341"
  br i1 %"$gascmp_2342", label %"$out_of_gas_2343", label %"$have_gas_2344"

"$out_of_gas_2343":                               ; preds = %"$have_gas_2339"
  call void @_out_of_gas()
  br label %"$have_gas_2344"

"$have_gas_2344":                                 ; preds = %"$out_of_gas_2343", %"$have_gas_2339"
  %"$consume_2345" = sub i64 %"$gasrem_2341", 1
  store i64 %"$consume_2345", i64* @_gasrem, align 8
  %"$BoolUtils.orb_41" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_2346" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_2347" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2346", 0
  %"$BoolUtils.orb_envptr_2348" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2346", 1
  %"$isOwner_2349" = load %TName_Bool*, %TName_Bool** %isOwner, align 8
  %"$BoolUtils.orb_call_2350" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_2347"(i8* %"$BoolUtils.orb_envptr_2348", %TName_Bool* %"$isOwner_2349")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_2350", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_41", align 8
  %"$BoolUtils.orb_42" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_41_2351" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_41", align 8
  %"$$BoolUtils.orb_41_fptr_2352" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_41_2351", 0
  %"$$BoolUtils.orb_41_envptr_2353" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_41_2351", 1
  %"$isApproved_2354" = load %TName_Bool*, %TName_Bool** %isApproved, align 8
  %"$$BoolUtils.orb_41_call_2355" = call %TName_Bool* %"$$BoolUtils.orb_41_fptr_2352"(i8* %"$$BoolUtils.orb_41_envptr_2353", %TName_Bool* %"$isApproved_2354")
  store %TName_Bool* %"$$BoolUtils.orb_41_call_2355", %TName_Bool** %"$BoolUtils.orb_42", align 8
  %"$$BoolUtils.orb_42_2356" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_42", align 8
  store %TName_Bool* %"$$BoolUtils.orb_42_2356", %TName_Bool** %b1, align 8
  %"$gasrem_2357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2358" = icmp ugt i64 1, %"$gasrem_2357"
  br i1 %"$gascmp_2358", label %"$out_of_gas_2359", label %"$have_gas_2360"

"$out_of_gas_2359":                               ; preds = %"$have_gas_2344"
  call void @_out_of_gas()
  br label %"$have_gas_2360"

"$have_gas_2360":                                 ; preds = %"$out_of_gas_2359", %"$have_gas_2344"
  %"$consume_2361" = sub i64 %"$gasrem_2357", 1
  store i64 %"$consume_2361", i64* @_gasrem, align 8
  %"$BoolUtils.orb_43" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_2362" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_2363" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2362", 0
  %"$BoolUtils.orb_envptr_2364" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2362", 1
  %"$b1_2365" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$BoolUtils.orb_call_2366" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_2363"(i8* %"$BoolUtils.orb_envptr_2364", %TName_Bool* %"$b1_2365")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_2366", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_43", align 8
  %"$BoolUtils.orb_44" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_43_2367" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_43", align 8
  %"$$BoolUtils.orb_43_fptr_2368" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_43_2367", 0
  %"$$BoolUtils.orb_43_envptr_2369" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_43_2367", 1
  %"$isOperator_2370" = load %TName_Bool*, %TName_Bool** %isOperator, align 8
  %"$$BoolUtils.orb_43_call_2371" = call %TName_Bool* %"$$BoolUtils.orb_43_fptr_2368"(i8* %"$$BoolUtils.orb_43_envptr_2369", %TName_Bool* %"$isOperator_2370")
  store %TName_Bool* %"$$BoolUtils.orb_43_call_2371", %TName_Bool** %"$BoolUtils.orb_44", align 8
  %"$$BoolUtils.orb_44_2372" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_44", align 8
  store %TName_Bool* %"$$BoolUtils.orb_44_2372", %TName_Bool** %"$retval_215", align 8
  %"$$retval_215_2373" = load %TName_Bool*, %TName_Bool** %"$retval_215", align 8
  ret %TName_Bool* %"$$retval_215_2373"
}

define internal { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } @"$fundef_212"(%"$$fundef_212_env_406"* %0, %TName_Option_ByStr20* %1) {
entry:
  %"$$fundef_212_env_BoolUtils.orb_2192" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2193" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_212_env_BoolUtils.orb_2192", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2193", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_212_env_recordOwner_2194" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %0, i32 0, i32 1
  %"$recordOwner_envload_2195" = load [20 x i8], [20 x i8]* %"$$fundef_212_env_recordOwner_2194", align 1
  %recordOwner = alloca [20 x i8], align 1
  store [20 x i8] %"$recordOwner_envload_2195", [20 x i8]* %recordOwner, align 1
  %"$$fundef_212_env_sender_2196" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %0, i32 0, i32 2
  %"$sender_envload_2197" = load [20 x i8], [20 x i8]* %"$$fundef_212_env_sender_2196", align 1
  %sender = alloca [20 x i8], align 1
  store [20 x i8] %"$sender_envload_2197", [20 x i8]* %sender, align 1
  %"$$fundef_212_env_ud-registry.listByStr20Contains_2198" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %0, i32 0, i32 3
  %"$ud-registry.listByStr20Contains_envload_2199" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_212_env_ud-registry.listByStr20Contains_2198", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2199", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_213" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$gasrem_2200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2201" = icmp ugt i64 1, %"$gasrem_2200"
  br i1 %"$gascmp_2201", label %"$out_of_gas_2202", label %"$have_gas_2203"

"$out_of_gas_2202":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2203"

"$have_gas_2203":                                 ; preds = %"$out_of_gas_2202", %entry
  %"$consume_2204" = sub i64 %"$gasrem_2200", 1
  store i64 %"$consume_2204", i64* @_gasrem, align 8
  %"$$fundef_214_envp_2205_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_214_envp_2205_salloc" = call i8* @_salloc(i8* %"$$fundef_214_envp_2205_load", i64 80)
  %"$$fundef_214_envp_2205" = bitcast i8* %"$$fundef_214_envp_2205_salloc" to %"$$fundef_214_env_405"*
  %"$$fundef_214_env_voidp_2207" = bitcast %"$$fundef_214_env_405"* %"$$fundef_214_envp_2205" to i8*
  %"$$fundef_214_cloval_2208" = insertvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)* bitcast (%TName_Bool* (%"$$fundef_214_env_405"*, %"TName_Option_List_(ByStr20)"*)* @"$fundef_214" to %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*), i8* undef }, i8* %"$$fundef_214_env_voidp_2207", 1
  %"$$fundef_214_env_BoolUtils.orb_2209" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %"$$fundef_214_envp_2205", i32 0, i32 0
  %"$BoolUtils.orb_2210" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2210", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_214_env_BoolUtils.orb_2209", align 8
  %"$$fundef_214_env_maybeApproved_2211" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %"$$fundef_214_envp_2205", i32 0, i32 1
  store %TName_Option_ByStr20* %1, %TName_Option_ByStr20** %"$$fundef_214_env_maybeApproved_2211", align 8
  %"$$fundef_214_env_recordOwner_2212" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %"$$fundef_214_envp_2205", i32 0, i32 2
  %"$recordOwner_2213" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_2213", [20 x i8]* %"$$fundef_214_env_recordOwner_2212", align 1
  %"$$fundef_214_env_sender_2214" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %"$$fundef_214_envp_2205", i32 0, i32 3
  %"$sender_2215" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2215", [20 x i8]* %"$$fundef_214_env_sender_2214", align 1
  %"$$fundef_214_env_ud-registry.listByStr20Contains_2216" = getelementptr inbounds %"$$fundef_214_env_405", %"$$fundef_214_env_405"* %"$$fundef_214_envp_2205", i32 0, i32 4
  %"$ud-registry.listByStr20Contains_2217" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2217", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_214_env_ud-registry.listByStr20Contains_2216", align 8
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$fundef_214_cloval_2208", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$retval_213", align 8
  %"$$retval_213_2218" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$retval_213", align 8
  ret { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$retval_213_2218"
}

define internal { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } @"$fundef_210"(%"$$fundef_210_env_407"* %0, [20 x i8]* %1) {
entry:
  %recordOwner = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_210_env_BoolUtils.orb_2169" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2170" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_210_env_BoolUtils.orb_2169", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2170", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_210_env_sender_2171" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %0, i32 0, i32 1
  %"$sender_envload_2172" = load [20 x i8], [20 x i8]* %"$$fundef_210_env_sender_2171", align 1
  %sender = alloca [20 x i8], align 1
  store [20 x i8] %"$sender_envload_2172", [20 x i8]* %sender, align 1
  %"$$fundef_210_env_ud-registry.listByStr20Contains_2173" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %0, i32 0, i32 2
  %"$ud-registry.listByStr20Contains_envload_2174" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_210_env_ud-registry.listByStr20Contains_2173", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2174", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_211" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$gasrem_2175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2176" = icmp ugt i64 1, %"$gasrem_2175"
  br i1 %"$gascmp_2176", label %"$out_of_gas_2177", label %"$have_gas_2178"

"$out_of_gas_2177":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2178"

"$have_gas_2178":                                 ; preds = %"$out_of_gas_2177", %entry
  %"$consume_2179" = sub i64 %"$gasrem_2175", 1
  store i64 %"$consume_2179", i64* @_gasrem, align 8
  %"$$fundef_212_envp_2180_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_212_envp_2180_salloc" = call i8* @_salloc(i8* %"$$fundef_212_envp_2180_load", i64 72)
  %"$$fundef_212_envp_2180" = bitcast i8* %"$$fundef_212_envp_2180_salloc" to %"$$fundef_212_env_406"*
  %"$$fundef_212_env_voidp_2182" = bitcast %"$$fundef_212_env_406"* %"$$fundef_212_envp_2180" to i8*
  %"$$fundef_212_cloval_2183" = insertvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)* bitcast ({ %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (%"$$fundef_212_env_406"*, %TName_Option_ByStr20*)* @"$fundef_212" to { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_212_env_voidp_2182", 1
  %"$$fundef_212_env_BoolUtils.orb_2184" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %"$$fundef_212_envp_2180", i32 0, i32 0
  %"$BoolUtils.orb_2185" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2185", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_212_env_BoolUtils.orb_2184", align 8
  %"$$fundef_212_env_recordOwner_2186" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %"$$fundef_212_envp_2180", i32 0, i32 1
  store [20 x i8] %recordOwner, [20 x i8]* %"$$fundef_212_env_recordOwner_2186", align 1
  %"$$fundef_212_env_sender_2187" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %"$$fundef_212_envp_2180", i32 0, i32 2
  %"$sender_2188" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2188", [20 x i8]* %"$$fundef_212_env_sender_2187", align 1
  %"$$fundef_212_env_ud-registry.listByStr20Contains_2189" = getelementptr inbounds %"$$fundef_212_env_406", %"$$fundef_212_env_406"* %"$$fundef_212_envp_2180", i32 0, i32 3
  %"$ud-registry.listByStr20Contains_2190" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2190", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_212_env_ud-registry.listByStr20Contains_2189", align 8
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_212_cloval_2183", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_211", align 8
  %"$$retval_211_2191" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_211", align 8
  ret { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$retval_211_2191"
}

define internal { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_208"(%"$$fundef_208_env_408"* %0, [20 x i8]* %1) {
entry:
  %sender = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_208_env_BoolUtils.orb_2150" = getelementptr inbounds %"$$fundef_208_env_408", %"$$fundef_208_env_408"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2151" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_208_env_BoolUtils.orb_2150", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2151", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_208_env_ud-registry.listByStr20Contains_2152" = getelementptr inbounds %"$$fundef_208_env_408", %"$$fundef_208_env_408"* %0, i32 0, i32 1
  %"$ud-registry.listByStr20Contains_envload_2153" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_208_env_ud-registry.listByStr20Contains_2152", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2153", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_209" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_2154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2155" = icmp ugt i64 1, %"$gasrem_2154"
  br i1 %"$gascmp_2155", label %"$out_of_gas_2156", label %"$have_gas_2157"

"$out_of_gas_2156":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2157"

"$have_gas_2157":                                 ; preds = %"$out_of_gas_2156", %entry
  %"$consume_2158" = sub i64 %"$gasrem_2154", 1
  store i64 %"$consume_2158", i64* @_gasrem, align 8
  %"$$fundef_210_envp_2159_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_210_envp_2159_salloc" = call i8* @_salloc(i8* %"$$fundef_210_envp_2159_load", i64 56)
  %"$$fundef_210_envp_2159" = bitcast i8* %"$$fundef_210_envp_2159_salloc" to %"$$fundef_210_env_407"*
  %"$$fundef_210_env_voidp_2161" = bitcast %"$$fundef_210_env_407"* %"$$fundef_210_envp_2159" to i8*
  %"$$fundef_210_cloval_2162" = insertvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (%"$$fundef_210_env_407"*, [20 x i8]*)* @"$fundef_210" to { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_210_env_voidp_2161", 1
  %"$$fundef_210_env_BoolUtils.orb_2163" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %"$$fundef_210_envp_2159", i32 0, i32 0
  %"$BoolUtils.orb_2164" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2164", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_210_env_BoolUtils.orb_2163", align 8
  %"$$fundef_210_env_sender_2165" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %"$$fundef_210_envp_2159", i32 0, i32 1
  store [20 x i8] %sender, [20 x i8]* %"$$fundef_210_env_sender_2165", align 1
  %"$$fundef_210_env_ud-registry.listByStr20Contains_2166" = getelementptr inbounds %"$$fundef_210_env_407", %"$$fundef_210_env_407"* %"$$fundef_210_envp_2159", i32 0, i32 2
  %"$ud-registry.listByStr20Contains_2167" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2167", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_210_env_ud-registry.listByStr20Contains_2166", align 8
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_210_cloval_2162", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_209", align 8
  %"$$retval_209_2168" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_209", align 8
  ret { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_209_2168"
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
  %"$gasadd_2090" = add i64 %"$_literal_cost_call_2089", 0
  %"$gasdivceil_2091" = urem i64 %"$gasadd_2090", 960
  %"$gasdivceil_2092" = udiv i64 %"$gasadd_2090", 960
  %"$gasdivceil_2093" = icmp eq i64 %"$gasdivceil_2091", 0
  %"$gasdivceil_2094" = add i64 %"$gasdivceil_2092", 1
  %"$gasdivceil_2095" = select i1 %"$gasdivceil_2093", i64 %"$gasdivceil_2092", i64 %"$gasdivceil_2094"
  %"$gasrem_2096" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2097" = icmp ugt i64 %"$gasdivceil_2095", %"$gasrem_2096"
  br i1 %"$gascmp_2097", label %"$out_of_gas_2098", label %"$have_gas_2099"

"$out_of_gas_2098":                               ; preds = %"$have_gas_2085"
  call void @_out_of_gas()
  br label %"$have_gas_2099"

"$have_gas_2099":                                 ; preds = %"$out_of_gas_2098", %"$have_gas_2085"
  %"$consume_2100" = sub i64 %"$gasrem_2096", %"$gasdivceil_2095"
  store i64 %"$consume_2100", i64* @_gasrem, align 8
  %"$execptr_load_2101" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_label_2102" = alloca %String, align 8
  store %String %2, %String* %"$sha256hash_label_2102", align 8
  %"$$sha256hash_label_2102_2103" = bitcast %String* %"$sha256hash_label_2102" to i8*
  %"$sha256hash_call_2104" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_2101", %_TyDescrTy_Typ* @"$TyDescr_String_295", i8* %"$$sha256hash_label_2102_2103")
  %"$sha256hash_2106" = load [32 x i8], [32 x i8]* %"$sha256hash_call_2104", align 1
  store [32 x i8] %"$sha256hash_2106", [32 x i8]* %labelHash, align 1
  %"$gasrem_2107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2108" = icmp ugt i64 1, %"$gasrem_2107"
  br i1 %"$gascmp_2108", label %"$out_of_gas_2109", label %"$have_gas_2110"

"$out_of_gas_2109":                               ; preds = %"$have_gas_2099"
  call void @_out_of_gas()
  br label %"$have_gas_2110"

"$have_gas_2110":                                 ; preds = %"$out_of_gas_2109", %"$have_gas_2099"
  %"$consume_2111" = sub i64 %"$gasrem_2107", 1
  store i64 %"$consume_2111", i64* @_gasrem, align 8
  %nodeInput = alloca [64 x i8], align 1
  %"$gasrem_2112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2113" = icmp ugt i64 64, %"$gasrem_2112"
  br i1 %"$gascmp_2113", label %"$out_of_gas_2114", label %"$have_gas_2115"

"$out_of_gas_2114":                               ; preds = %"$have_gas_2110"
  call void @_out_of_gas()
  br label %"$have_gas_2115"

"$have_gas_2115":                                 ; preds = %"$out_of_gas_2114", %"$have_gas_2110"
  %"$consume_2116" = sub i64 %"$gasrem_2112", 64
  store i64 %"$consume_2116", i64* @_gasrem, align 8
  %"$execptr_load_2117" = load i8*, i8** @_execptr, align 8
  %"$concat_parent_2118" = alloca [32 x i8], align 1
  %"$parent_2119" = load [32 x i8], [32 x i8]* %parent, align 1
  store [32 x i8] %"$parent_2119", [32 x i8]* %"$concat_parent_2118", align 1
  %"$$concat_parent_2118_2120" = bitcast [32 x i8]* %"$concat_parent_2118" to i8*
  %"$concat_labelHash_2121" = alloca [32 x i8], align 1
  %"$labelHash_2122" = load [32 x i8], [32 x i8]* %labelHash, align 1
  store [32 x i8] %"$labelHash_2122", [32 x i8]* %"$concat_labelHash_2121", align 1
  %"$$concat_labelHash_2121_2123" = bitcast [32 x i8]* %"$concat_labelHash_2121" to i8*
  %"$concat_call_2124" = call i8* @_concat_ByStrX(i8* %"$execptr_load_2117", i32 32, i8* %"$$concat_parent_2118_2120", i32 32, i8* %"$$concat_labelHash_2121_2123")
  %"$concat_2125" = bitcast i8* %"$concat_call_2124" to [64 x i8]*
  %"$concat_2126" = load [64 x i8], [64 x i8]* %"$concat_2125", align 1
  store [64 x i8] %"$concat_2126", [64 x i8]* %nodeInput, align 1
  %"$_literal_cost_nodeInput_2127" = alloca [64 x i8], align 1
  %"$nodeInput_2128" = load [64 x i8], [64 x i8]* %nodeInput, align 1
  store [64 x i8] %"$nodeInput_2128", [64 x i8]* %"$_literal_cost_nodeInput_2127", align 1
  %"$$_literal_cost_nodeInput_2127_2129" = bitcast [64 x i8]* %"$_literal_cost_nodeInput_2127" to i8*
  %"$_literal_cost_call_2130" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr64_307", i8* %"$$_literal_cost_nodeInput_2127_2129")
  %"$gasadd_2131" = add i64 %"$_literal_cost_call_2130", 0
  %"$gasdivceil_2132" = urem i64 %"$gasadd_2131", 960
  %"$gasdivceil_2133" = udiv i64 %"$gasadd_2131", 960
  %"$gasdivceil_2134" = icmp eq i64 %"$gasdivceil_2132", 0
  %"$gasdivceil_2135" = add i64 %"$gasdivceil_2133", 1
  %"$gasdivceil_2136" = select i1 %"$gasdivceil_2134", i64 %"$gasdivceil_2133", i64 %"$gasdivceil_2135"
  %"$gasrem_2137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2138" = icmp ugt i64 %"$gasdivceil_2136", %"$gasrem_2137"
  br i1 %"$gascmp_2138", label %"$out_of_gas_2139", label %"$have_gas_2140"

"$out_of_gas_2139":                               ; preds = %"$have_gas_2115"
  call void @_out_of_gas()
  br label %"$have_gas_2140"

"$have_gas_2140":                                 ; preds = %"$out_of_gas_2139", %"$have_gas_2115"
  %"$consume_2141" = sub i64 %"$gasrem_2137", %"$gasdivceil_2136"
  store i64 %"$consume_2141", i64* @_gasrem, align 8
  %"$execptr_load_2142" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_nodeInput_2143" = alloca [64 x i8], align 1
  %"$nodeInput_2144" = load [64 x i8], [64 x i8]* %nodeInput, align 1
  store [64 x i8] %"$nodeInput_2144", [64 x i8]* %"$sha256hash_nodeInput_2143", align 1
  %"$$sha256hash_nodeInput_2143_2145" = bitcast [64 x i8]* %"$sha256hash_nodeInput_2143" to i8*
  %"$sha256hash_call_2146" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_2142", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_307", i8* %"$$sha256hash_nodeInput_2143_2145")
  %"$sha256hash_2148" = load [32 x i8], [32 x i8]* %"$sha256hash_call_2146", align 1
  store [32 x i8] %"$sha256hash_2148", [32 x i8]* %"$retval_219", align 1
  %"$$retval_219_2149" = load [32 x i8], [32 x i8]* %"$retval_219", align 1
  store [32 x i8] %"$$retval_219_2149", [32 x i8]* %1, align 1
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
  %"$gasrem_2374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2375" = icmp ugt i64 1, %"$gasrem_2374"
  br i1 %"$gascmp_2375", label %"$out_of_gas_2376", label %"$have_gas_2377"

"$out_of_gas_2376":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2377"

"$have_gas_2377":                                 ; preds = %"$out_of_gas_2376", %entry
  %"$consume_2378" = sub i64 %"$gasrem_2374", 1
  store i64 %"$consume_2378", i64* @_gasrem, align 8
  %"$dyndisp_table_2382_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2382_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2382_salloc_load", i64 48)
  %"$dyndisp_table_2382_salloc" = bitcast i8* %"$dyndisp_table_2382_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2382" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2382_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2383" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2382", i32 0
  %"$dyndisp_pcast_2384" = bitcast { i8*, i8* }* %"$dyndisp_gep_2383" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_158_env_467"*)* @"$fundef_158" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_2384", align 8
  store { i8*, i8* }* %"$dyndisp_table_2382", { i8*, i8* }** @list_foldr, align 8
  %"$gasrem_2385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2386" = icmp ugt i64 1, %"$gasrem_2385"
  br i1 %"$gascmp_2386", label %"$out_of_gas_2387", label %"$have_gas_2388"

"$out_of_gas_2387":                               ; preds = %"$have_gas_2377"
  call void @_out_of_gas()
  br label %"$have_gas_2388"

"$have_gas_2388":                                 ; preds = %"$out_of_gas_2387", %"$have_gas_2377"
  %"$consume_2389" = sub i64 %"$gasrem_2385", 1
  store i64 %"$consume_2389", i64* @_gasrem, align 8
  %"$dyndisp_table_2393_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2393_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2393_salloc_load", i64 48)
  %"$dyndisp_table_2393_salloc" = bitcast i8* %"$dyndisp_table_2393_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2393" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2393_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2394" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2393", i32 0
  %"$dyndisp_pcast_2395" = bitcast { i8*, i8* }* %"$dyndisp_gep_2394" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_146_env_462"*)* @"$fundef_146" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_2395", align 8
  store { i8*, i8* }* %"$dyndisp_table_2393", { i8*, i8* }** @list_foldk, align 8
  %"$gasrem_2396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2397" = icmp ugt i64 1, %"$gasrem_2396"
  br i1 %"$gascmp_2397", label %"$out_of_gas_2398", label %"$have_gas_2399"

"$out_of_gas_2398":                               ; preds = %"$have_gas_2388"
  call void @_out_of_gas()
  br label %"$have_gas_2399"

"$have_gas_2399":                                 ; preds = %"$out_of_gas_2398", %"$have_gas_2388"
  %"$consume_2400" = sub i64 %"$gasrem_2396", 1
  store i64 %"$consume_2400", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_174_env_456"*, %TName_Bool*)* @"$fundef_174" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$gasrem_2404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2405" = icmp ugt i64 1, %"$gasrem_2404"
  br i1 %"$gascmp_2405", label %"$out_of_gas_2406", label %"$have_gas_2407"

"$out_of_gas_2406":                               ; preds = %"$have_gas_2399"
  call void @_out_of_gas()
  br label %"$have_gas_2407"

"$have_gas_2407":                                 ; preds = %"$out_of_gas_2406", %"$have_gas_2399"
  %"$consume_2408" = sub i64 %"$gasrem_2404", 1
  store i64 %"$consume_2408", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_170_env_454"*, %TName_Bool*)* @"$fundef_170" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$gasrem_2412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2413" = icmp ugt i64 1, %"$gasrem_2412"
  br i1 %"$gascmp_2413", label %"$out_of_gas_2414", label %"$have_gas_2415"

"$out_of_gas_2414":                               ; preds = %"$have_gas_2407"
  call void @_out_of_gas()
  br label %"$have_gas_2415"

"$have_gas_2415":                                 ; preds = %"$out_of_gas_2414", %"$have_gas_2407"
  %"$consume_2416" = sub i64 %"$gasrem_2412", 1
  store i64 %"$consume_2416", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_168_env_452"*, %TName_Bool*)* @"$fundef_168" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$gasrem_2420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2421" = icmp ugt i64 1, %"$gasrem_2420"
  br i1 %"$gascmp_2421", label %"$out_of_gas_2422", label %"$have_gas_2423"

"$out_of_gas_2422":                               ; preds = %"$have_gas_2415"
  call void @_out_of_gas()
  br label %"$have_gas_2423"

"$have_gas_2423":                                 ; preds = %"$out_of_gas_2422", %"$have_gas_2415"
  %"$consume_2424" = sub i64 %"$gasrem_2420", 1
  store i64 %"$consume_2424", i64* @_gasrem, align 8
  %"$$fundef_200_envp_2425_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_200_envp_2425_salloc" = call i8* @_salloc(i8* %"$$fundef_200_envp_2425_load", i64 8)
  %"$$fundef_200_envp_2425" = bitcast i8* %"$$fundef_200_envp_2425_salloc" to %"$$fundef_200_env_451"*
  %"$$fundef_200_env_voidp_2427" = bitcast %"$$fundef_200_env_451"* %"$$fundef_200_envp_2425" to i8*
  %"$$fundef_200_cloval_2428" = insertvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_200_env_451"*)* @"$fundef_200" to { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_200_env_voidp_2427", 1
  %"$$fundef_200_env_list_foldr_2429" = getelementptr inbounds %"$$fundef_200_env_451", %"$$fundef_200_env_451"* %"$$fundef_200_envp_2425", i32 0, i32 0
  %"$list_foldr_2430" = load { i8*, i8* }*, { i8*, i8* }** @list_foldr, align 8
  store { i8*, i8* }* %"$list_foldr_2430", { i8*, i8* }** %"$$fundef_200_env_list_foldr_2429", align 8
  %"$dyndisp_table_2431_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2431_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2431_salloc_load", i64 48)
  %"$dyndisp_table_2431_salloc" = bitcast i8* %"$dyndisp_table_2431_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2431" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2431_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2432" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2431", i32 0
  %"$dyndisp_pcast_2433" = bitcast { i8*, i8* }* %"$dyndisp_gep_2432" to { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_200_cloval_2428", { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2433", align 8
  store { i8*, i8* }* %"$dyndisp_table_2431", { i8*, i8* }** @ListUtils.list_filter, align 8
  %"$gasrem_2434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2435" = icmp ugt i64 1, %"$gasrem_2434"
  br i1 %"$gascmp_2435", label %"$out_of_gas_2436", label %"$have_gas_2437"

"$out_of_gas_2436":                               ; preds = %"$have_gas_2423"
  call void @_out_of_gas()
  br label %"$have_gas_2437"

"$have_gas_2437":                                 ; preds = %"$out_of_gas_2436", %"$have_gas_2423"
  %"$consume_2438" = sub i64 %"$gasrem_2434", 1
  store i64 %"$consume_2438", i64* @_gasrem, align 8
  %"$$fundef_190_envp_2439_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_190_envp_2439_salloc" = call i8* @_salloc(i8* %"$$fundef_190_envp_2439_load", i64 8)
  %"$$fundef_190_envp_2439" = bitcast i8* %"$$fundef_190_envp_2439_salloc" to %"$$fundef_190_env_447"*
  %"$$fundef_190_env_voidp_2441" = bitcast %"$$fundef_190_env_447"* %"$$fundef_190_envp_2439" to i8*
  %"$$fundef_190_cloval_2442" = insertvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_190_env_447"*)* @"$fundef_190" to { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_190_env_voidp_2441", 1
  %"$$fundef_190_env_list_foldk_2443" = getelementptr inbounds %"$$fundef_190_env_447", %"$$fundef_190_env_447"* %"$$fundef_190_envp_2439", i32 0, i32 0
  %"$list_foldk_2444" = load { i8*, i8* }*, { i8*, i8* }** @list_foldk, align 8
  store { i8*, i8* }* %"$list_foldk_2444", { i8*, i8* }** %"$$fundef_190_env_list_foldk_2443", align 8
  %"$dyndisp_table_2445_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2445_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2445_salloc_load", i64 48)
  %"$dyndisp_table_2445_salloc" = bitcast i8* %"$dyndisp_table_2445_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2445" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2445_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2446" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2445", i32 0
  %"$dyndisp_pcast_2447" = bitcast { i8*, i8* }* %"$dyndisp_gep_2446" to { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_190_cloval_2442", { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2447", align 8
  store { i8*, i8* }* %"$dyndisp_table_2445", { i8*, i8* }** @ListUtils.list_find, align 8
  %"$gasrem_2448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2449" = icmp ugt i64 1, %"$gasrem_2448"
  br i1 %"$gascmp_2449", label %"$out_of_gas_2450", label %"$have_gas_2451"

"$out_of_gas_2450":                               ; preds = %"$have_gas_2437"
  call void @_out_of_gas()
  br label %"$have_gas_2451"

"$have_gas_2451":                                 ; preds = %"$out_of_gas_2450", %"$have_gas_2437"
  %"$consume_2452" = sub i64 %"$gasrem_2448", 1
  store i64 %"$consume_2452", i64* @_gasrem, align 8
  %"$$fundef_184_envp_2453_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_184_envp_2453_salloc" = call i8* @_salloc(i8* %"$$fundef_184_envp_2453_load", i64 8)
  %"$$fundef_184_envp_2453" = bitcast i8* %"$$fundef_184_envp_2453_salloc" to %"$$fundef_184_env_442"*
  %"$$fundef_184_env_voidp_2455" = bitcast %"$$fundef_184_env_442"* %"$$fundef_184_envp_2453" to i8*
  %"$$fundef_184_cloval_2456" = insertvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_184_env_442"*)* @"$fundef_184" to { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_184_env_voidp_2455", 1
  %"$$fundef_184_env_ListUtils.list_find_2457" = getelementptr inbounds %"$$fundef_184_env_442", %"$$fundef_184_env_442"* %"$$fundef_184_envp_2453", i32 0, i32 0
  %"$ListUtils.list_find_2458" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_find, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_2458", { i8*, i8* }** %"$$fundef_184_env_ListUtils.list_find_2457", align 8
  %"$dyndisp_table_2459_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2459_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2459_salloc_load", i64 48)
  %"$dyndisp_table_2459_salloc" = bitcast i8* %"$dyndisp_table_2459_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2459" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2459_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2460" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2459", i32 0
  %"$dyndisp_pcast_2461" = bitcast { i8*, i8* }* %"$dyndisp_gep_2460" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_184_cloval_2456", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2461", align 8
  store { i8*, i8* }* %"$dyndisp_table_2459", { i8*, i8* }** @ListUtils.list_exists, align 8
  %"$gasrem_2462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2463" = icmp ugt i64 1, %"$gasrem_2462"
  br i1 %"$gascmp_2463", label %"$out_of_gas_2464", label %"$have_gas_2465"

"$out_of_gas_2464":                               ; preds = %"$have_gas_2451"
  call void @_out_of_gas()
  br label %"$have_gas_2465"

"$have_gas_2465":                                 ; preds = %"$out_of_gas_2464", %"$have_gas_2451"
  %"$consume_2466" = sub i64 %"$gasrem_2462", 1
  store i64 %"$consume_2466", i64* @_gasrem, align 8
  %"$$fundef_178_envp_2467_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_178_envp_2467_salloc" = call i8* @_salloc(i8* %"$$fundef_178_envp_2467_load", i64 8)
  %"$$fundef_178_envp_2467" = bitcast i8* %"$$fundef_178_envp_2467_salloc" to %"$$fundef_178_env_439"*
  %"$$fundef_178_env_voidp_2469" = bitcast %"$$fundef_178_env_439"* %"$$fundef_178_envp_2467" to i8*
  %"$$fundef_178_cloval_2470" = insertvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_178_env_439"*)* @"$fundef_178" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_178_env_voidp_2469", 1
  %"$$fundef_178_env_ListUtils.list_exists_2471" = getelementptr inbounds %"$$fundef_178_env_439", %"$$fundef_178_env_439"* %"$$fundef_178_envp_2467", i32 0, i32 0
  %"$ListUtils.list_exists_2472" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_exists, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_2472", { i8*, i8* }** %"$$fundef_178_env_ListUtils.list_exists_2471", align 8
  %"$dyndisp_table_2473_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2473_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2473_salloc_load", i64 48)
  %"$dyndisp_table_2473_salloc" = bitcast i8* %"$dyndisp_table_2473_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2473" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2473_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2474" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2473", i32 0
  %"$dyndisp_pcast_2475" = bitcast { i8*, i8* }* %"$dyndisp_gep_2474" to { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_178_cloval_2470", { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2475", align 8
  store { i8*, i8* }* %"$dyndisp_table_2473", { i8*, i8* }** @ListUtils.list_mem, align 8
  %"$gasrem_2476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2477" = icmp ugt i64 1, %"$gasrem_2476"
  br i1 %"$gascmp_2477", label %"$out_of_gas_2478", label %"$have_gas_2479"

"$out_of_gas_2478":                               ; preds = %"$have_gas_2465"
  call void @_out_of_gas()
  br label %"$have_gas_2479"

"$have_gas_2479":                                 ; preds = %"$out_of_gas_2478", %"$have_gas_2465"
  %"$consume_2480" = sub i64 %"$gasrem_2476", 1
  store i64 %"$consume_2480", i64* @_gasrem, align 8
  store [20 x i8] zeroinitializer, [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$gasrem_2481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2482" = icmp ugt i64 1, %"$gasrem_2481"
  br i1 %"$gascmp_2482", label %"$out_of_gas_2483", label %"$have_gas_2484"

"$out_of_gas_2483":                               ; preds = %"$have_gas_2479"
  call void @_out_of_gas()
  br label %"$have_gas_2484"

"$have_gas_2484":                                 ; preds = %"$out_of_gas_2483", %"$have_gas_2479"
  %"$consume_2485" = sub i64 %"$gasrem_2481", 1
  store i64 %"$consume_2485", i64* @_gasrem, align 8
  %"$adtval_2486_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2486_salloc" = call i8* @_salloc(i8* %"$adtval_2486_load", i64 1)
  %"$adtval_2486" = bitcast i8* %"$adtval_2486_salloc" to %CName_Nil_ByStr20*
  %"$adtgep_2487" = getelementptr inbounds %CName_Nil_ByStr20, %CName_Nil_ByStr20* %"$adtval_2486", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2487", align 1
  %"$adtptr_2488" = bitcast %CName_Nil_ByStr20* %"$adtval_2486" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2488", %TName_List_ByStr20** @ud-registry.nilByStr20, align 8
  %"$gasrem_2489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2490" = icmp ugt i64 1, %"$gasrem_2489"
  br i1 %"$gascmp_2490", label %"$out_of_gas_2491", label %"$have_gas_2492"

"$out_of_gas_2491":                               ; preds = %"$have_gas_2484"
  call void @_out_of_gas()
  br label %"$have_gas_2492"

"$have_gas_2492":                                 ; preds = %"$out_of_gas_2491", %"$have_gas_2484"
  %"$consume_2493" = sub i64 %"$gasrem_2489", 1
  store i64 %"$consume_2493", i64* @_gasrem, align 8
  %"$adtval_2494_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2494_salloc" = call i8* @_salloc(i8* %"$adtval_2494_load", i64 1)
  %"$adtval_2494" = bitcast i8* %"$adtval_2494_salloc" to %CName_Nil_Message*
  %"$adtgep_2495" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_2494", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2495", align 1
  %"$adtptr_2496" = bitcast %CName_Nil_Message* %"$adtval_2494" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_2496", %TName_List_Message** @ud-registry.nilMessage, align 8
  %"$gasrem_2497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2498" = icmp ugt i64 1, %"$gasrem_2497"
  br i1 %"$gascmp_2498", label %"$out_of_gas_2499", label %"$have_gas_2500"

"$out_of_gas_2499":                               ; preds = %"$have_gas_2492"
  call void @_out_of_gas()
  br label %"$have_gas_2500"

"$have_gas_2500":                                 ; preds = %"$out_of_gas_2499", %"$have_gas_2492"
  %"$consume_2501" = sub i64 %"$gasrem_2497", 1
  store i64 %"$consume_2501", i64* @_gasrem, align 8
  %"$$fundef_270_envp_2502_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_270_envp_2502_salloc" = call i8* @_salloc(i8* %"$$fundef_270_envp_2502_load", i64 8)
  %"$$fundef_270_envp_2502" = bitcast i8* %"$$fundef_270_envp_2502_salloc" to %"$$fundef_270_env_436"*
  %"$$fundef_270_env_voidp_2504" = bitcast %"$$fundef_270_env_436"* %"$$fundef_270_envp_2502" to i8*
  %"$$fundef_270_cloval_2505" = insertvalue { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_270_env_436"*, i8*)* @"$fundef_270" to %TName_List_Message* (i8*, i8*)*), i8* undef }, i8* %"$$fundef_270_env_voidp_2504", 1
  %"$$fundef_270_env_ud-registry.nilMessage_2506" = getelementptr inbounds %"$$fundef_270_env_436", %"$$fundef_270_env_436"* %"$$fundef_270_envp_2502", i32 0, i32 0
  %"$ud-registry.nilMessage_2507" = load %TName_List_Message*, %TName_List_Message** @ud-registry.nilMessage, align 8
  store %TName_List_Message* %"$ud-registry.nilMessage_2507", %TName_List_Message** %"$$fundef_270_env_ud-registry.nilMessage_2506", align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } %"$$fundef_270_cloval_2505", { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$gasrem_2508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2509" = icmp ugt i64 1, %"$gasrem_2508"
  br i1 %"$gascmp_2509", label %"$out_of_gas_2510", label %"$have_gas_2511"

"$out_of_gas_2510":                               ; preds = %"$have_gas_2500"
  call void @_out_of_gas()
  br label %"$have_gas_2511"

"$have_gas_2511":                                 ; preds = %"$out_of_gas_2510", %"$have_gas_2500"
  %"$consume_2512" = sub i64 %"$gasrem_2508", 1
  store i64 %"$consume_2512", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_266_env_435"*, [20 x i8]*)* @"$fundef_266" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eqByStr20, align 8
  %"$gasrem_2516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2517" = icmp ugt i64 1, %"$gasrem_2516"
  br i1 %"$gascmp_2517", label %"$out_of_gas_2518", label %"$have_gas_2519"

"$out_of_gas_2518":                               ; preds = %"$have_gas_2511"
  call void @_out_of_gas()
  br label %"$have_gas_2519"

"$have_gas_2519":                                 ; preds = %"$out_of_gas_2518", %"$have_gas_2511"
  %"$consume_2520" = sub i64 %"$gasrem_2516", 1
  store i64 %"$consume_2520", i64* @_gasrem, align 8
  %"$$fundef_262_envp_2521_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_262_envp_2521_salloc" = call i8* @_salloc(i8* %"$$fundef_262_envp_2521_load", i64 24)
  %"$$fundef_262_envp_2521" = bitcast i8* %"$$fundef_262_envp_2521_salloc" to %"$$fundef_262_env_433"*
  %"$$fundef_262_env_voidp_2523" = bitcast %"$$fundef_262_env_433"* %"$$fundef_262_envp_2521" to i8*
  %"$$fundef_262_cloval_2524" = insertvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_262_env_433"*, %TName_List_ByStr20*)* @"$fundef_262" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_262_env_voidp_2523", 1
  %"$$fundef_262_env_ListUtils.list_mem_2525" = getelementptr inbounds %"$$fundef_262_env_433", %"$$fundef_262_env_433"* %"$$fundef_262_envp_2521", i32 0, i32 0
  %"$ListUtils.list_mem_2526" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_mem, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_2526", { i8*, i8* }** %"$$fundef_262_env_ListUtils.list_mem_2525", align 8
  %"$$fundef_262_env_ud-registry.eqByStr20_2527" = getelementptr inbounds %"$$fundef_262_env_433", %"$$fundef_262_env_433"* %"$$fundef_262_envp_2521", i32 0, i32 1
  %"$ud-registry.eqByStr20_2528" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eqByStr20, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_2528", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_262_env_ud-registry.eqByStr20_2527", align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_262_cloval_2524", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$gasrem_2529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2530" = icmp ugt i64 1, %"$gasrem_2529"
  br i1 %"$gascmp_2530", label %"$out_of_gas_2531", label %"$have_gas_2532"

"$out_of_gas_2531":                               ; preds = %"$have_gas_2519"
  call void @_out_of_gas()
  br label %"$have_gas_2532"

"$have_gas_2532":                                 ; preds = %"$out_of_gas_2531", %"$have_gas_2519"
  %"$consume_2533" = sub i64 %"$gasrem_2529", 1
  store i64 %"$consume_2533", i64* @_gasrem, align 8
  %"$$fundef_258_envp_2534_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_258_envp_2534_salloc" = call i8* @_salloc(i8* %"$$fundef_258_envp_2534_load", i64 32)
  %"$$fundef_258_envp_2534" = bitcast i8* %"$$fundef_258_envp_2534_salloc" to %"$$fundef_258_env_431"*
  %"$$fundef_258_env_voidp_2536" = bitcast %"$$fundef_258_env_431"* %"$$fundef_258_envp_2534" to i8*
  %"$$fundef_258_cloval_2537" = insertvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_258_env_431"*, %TName_List_ByStr20*)* @"$fundef_258" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_258_env_voidp_2536", 1
  %"$$fundef_258_env_BoolUtils.negb_2538" = getelementptr inbounds %"$$fundef_258_env_431", %"$$fundef_258_env_431"* %"$$fundef_258_envp_2534", i32 0, i32 0
  %"$BoolUtils.negb_2539" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_2539", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_258_env_BoolUtils.negb_2538", align 8
  %"$$fundef_258_env_ud-registry.listByStr20Contains_2540" = getelementptr inbounds %"$$fundef_258_env_431", %"$$fundef_258_env_431"* %"$$fundef_258_envp_2534", i32 0, i32 1
  %"$ud-registry.listByStr20Contains_2541" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2541", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_258_env_ud-registry.listByStr20Contains_2540", align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_258_cloval_2537", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes, align 8
  %"$gasrem_2542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2543" = icmp ugt i64 1, %"$gasrem_2542"
  br i1 %"$gascmp_2543", label %"$out_of_gas_2544", label %"$have_gas_2545"

"$out_of_gas_2544":                               ; preds = %"$have_gas_2532"
  call void @_out_of_gas()
  br label %"$have_gas_2545"

"$have_gas_2545":                                 ; preds = %"$out_of_gas_2544", %"$have_gas_2532"
  %"$consume_2546" = sub i64 %"$gasrem_2542", 1
  store i64 %"$consume_2546", i64* @_gasrem, align 8
  %"$$fundef_252_envp_2547_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_252_envp_2547_salloc" = call i8* @_salloc(i8* %"$$fundef_252_envp_2547_load", i64 24)
  %"$$fundef_252_envp_2547" = bitcast i8* %"$$fundef_252_envp_2547_salloc" to %"$$fundef_252_env_429"*
  %"$$fundef_252_env_voidp_2549" = bitcast %"$$fundef_252_env_429"* %"$$fundef_252_envp_2547" to i8*
  %"$$fundef_252_cloval_2550" = insertvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_252_env_429"*, %TName_List_ByStr20*)* @"$fundef_252" to { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_252_env_voidp_2549", 1
  %"$$fundef_252_env_BoolUtils.negb_2551" = getelementptr inbounds %"$$fundef_252_env_429", %"$$fundef_252_env_429"* %"$$fundef_252_envp_2547", i32 0, i32 0
  %"$BoolUtils.negb_2552" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_2552", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_252_env_BoolUtils.negb_2551", align 8
  %"$$fundef_252_env_ListUtils.list_filter_2553" = getelementptr inbounds %"$$fundef_252_env_429", %"$$fundef_252_env_429"* %"$$fundef_252_envp_2547", i32 0, i32 1
  %"$ListUtils.list_filter_2554" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_filter, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_2554", { i8*, i8* }** %"$$fundef_252_env_ListUtils.list_filter_2553", align 8
  store { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_252_cloval_2550", { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8
  %"$gasrem_2555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2556" = icmp ugt i64 1, %"$gasrem_2555"
  br i1 %"$gascmp_2556", label %"$out_of_gas_2557", label %"$have_gas_2558"

"$out_of_gas_2557":                               ; preds = %"$have_gas_2545"
  call void @_out_of_gas()
  br label %"$have_gas_2558"

"$have_gas_2558":                                 ; preds = %"$out_of_gas_2557", %"$have_gas_2545"
  %"$consume_2559" = sub i64 %"$gasrem_2555", 1
  store i64 %"$consume_2559", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_248_env_426"*, %TName_Bool*)* @"$fundef_248" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8
  %"$gasrem_2563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2564" = icmp ugt i64 1, %"$gasrem_2563"
  br i1 %"$gascmp_2564", label %"$out_of_gas_2565", label %"$have_gas_2566"

"$out_of_gas_2565":                               ; preds = %"$have_gas_2558"
  call void @_out_of_gas()
  br label %"$have_gas_2566"

"$have_gas_2566":                                 ; preds = %"$out_of_gas_2565", %"$have_gas_2558"
  %"$consume_2567" = sub i64 %"$gasrem_2563", 1
  store i64 %"$consume_2567", i64* @_gasrem, align 8
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_244_env_424"*, [20 x i8]*)* @"$fundef_244" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eAdminSet, align 8
  %"$gasrem_2571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2572" = icmp ugt i64 1, %"$gasrem_2571"
  br i1 %"$gascmp_2572", label %"$out_of_gas_2573", label %"$have_gas_2574"

"$out_of_gas_2573":                               ; preds = %"$have_gas_2566"
  call void @_out_of_gas()
  br label %"$have_gas_2574"

"$have_gas_2574":                                 ; preds = %"$out_of_gas_2573", %"$have_gas_2566"
  %"$consume_2575" = sub i64 %"$gasrem_2571", 1
  store i64 %"$consume_2575", i64* @_gasrem, align 8
  store { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_238_env_422"*, [20 x i8]*)* @"$fundef_238" to { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApprovedFor, align 8
  %"$gasrem_2579" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2580" = icmp ugt i64 1, %"$gasrem_2579"
  br i1 %"$gascmp_2580", label %"$out_of_gas_2581", label %"$have_gas_2582"

"$out_of_gas_2581":                               ; preds = %"$have_gas_2574"
  call void @_out_of_gas()
  br label %"$have_gas_2582"

"$have_gas_2582":                                 ; preds = %"$out_of_gas_2581", %"$have_gas_2574"
  %"$consume_2583" = sub i64 %"$gasrem_2579", 1
  store i64 %"$consume_2583", i64* @_gasrem, align 8
  store { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_236_env_419"*, [20 x i8]*)* @"$fundef_236" to i8* (i8*, [20 x i8]*)*), i8* null }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApproved, align 8
  %"$gasrem_2587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2588" = icmp ugt i64 1, %"$gasrem_2587"
  br i1 %"$gascmp_2588", label %"$out_of_gas_2589", label %"$have_gas_2590"

"$out_of_gas_2589":                               ; preds = %"$have_gas_2582"
  call void @_out_of_gas()
  br label %"$have_gas_2590"

"$have_gas_2590":                                 ; preds = %"$out_of_gas_2589", %"$have_gas_2582"
  %"$consume_2591" = sub i64 %"$gasrem_2587", 1
  store i64 %"$consume_2591", i64* @_gasrem, align 8
  store { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_234_env_418"*, [20 x i8]*)* @"$fundef_234" to i8* (i8*, [20 x i8]*)*), i8* null }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eNewRegistrar, align 8
  %"$gasrem_2595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2596" = icmp ugt i64 1, %"$gasrem_2595"
  br i1 %"$gascmp_2596", label %"$out_of_gas_2597", label %"$have_gas_2598"

"$out_of_gas_2597":                               ; preds = %"$have_gas_2590"
  call void @_out_of_gas()
  br label %"$have_gas_2598"

"$have_gas_2598":                                 ; preds = %"$out_of_gas_2597", %"$have_gas_2590"
  %"$consume_2599" = sub i64 %"$gasrem_2595", 1
  store i64 %"$consume_2599", i64* @_gasrem, align 8
  store { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)* bitcast ({ i8* (i8*, %String)*, i8* } (%"$$fundef_230_env_417"*, [32 x i8]*)* @"$fundef_230" to { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain, align 8
  %"$gasrem_2603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2604" = icmp ugt i64 1, %"$gasrem_2603"
  br i1 %"$gascmp_2604", label %"$out_of_gas_2605", label %"$have_gas_2606"

"$out_of_gas_2605":                               ; preds = %"$have_gas_2598"
  call void @_out_of_gas()
  br label %"$have_gas_2606"

"$have_gas_2606":                                 ; preds = %"$out_of_gas_2605", %"$have_gas_2598"
  %"$consume_2607" = sub i64 %"$gasrem_2603", 1
  store i64 %"$consume_2607", i64* @_gasrem, align 8
  store { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)* bitcast ({ { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_224_env_415"*, [32 x i8]*)* @"$fundef_224" to { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$gasrem_2611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2612" = icmp ugt i64 1, %"$gasrem_2611"
  br i1 %"$gascmp_2612", label %"$out_of_gas_2613", label %"$have_gas_2614"

"$out_of_gas_2613":                               ; preds = %"$have_gas_2606"
  call void @_out_of_gas()
  br label %"$have_gas_2614"

"$have_gas_2614":                                 ; preds = %"$out_of_gas_2613", %"$have_gas_2606"
  %"$consume_2615" = sub i64 %"$gasrem_2611", 1
  store i64 %"$consume_2615", i64* @_gasrem, align 8
  store { i8* (i8*, %String)*, i8* } { i8* (i8*, %String)* bitcast (i8* (%"$$fundef_222_env_412"*, %String)* @"$fundef_222" to i8* (i8*, %String)*), i8* null }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$gasrem_2619" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2620" = icmp ugt i64 1, %"$gasrem_2619"
  br i1 %"$gascmp_2620", label %"$out_of_gas_2621", label %"$have_gas_2622"

"$out_of_gas_2621":                               ; preds = %"$have_gas_2614"
  call void @_out_of_gas()
  br label %"$have_gas_2622"

"$have_gas_2622":                                 ; preds = %"$out_of_gas_2621", %"$have_gas_2614"
  %"$consume_2623" = sub i64 %"$gasrem_2619", 1
  store i64 %"$consume_2623", i64* @_gasrem, align 8
  %"$$fundef_220_envp_2624_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_220_envp_2624_salloc" = call i8* @_salloc(i8* %"$$fundef_220_envp_2624_load", i64 20)
  %"$$fundef_220_envp_2624" = bitcast i8* %"$$fundef_220_envp_2624_salloc" to %"$$fundef_220_env_411"*
  %"$$fundef_220_env_voidp_2626" = bitcast %"$$fundef_220_env_411"* %"$$fundef_220_envp_2624" to i8*
  %"$$fundef_220_cloval_2627" = insertvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)* bitcast (void (%"$$fundef_220_env_411"*, [20 x i8]*, %TName_Option_ud-registry.Record*)* @"$fundef_220" to void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*), i8* undef }, i8* %"$$fundef_220_env_voidp_2626", 1
  %"$$fundef_220_env_ud-registry.zeroByStr20_2628" = getelementptr inbounds %"$$fundef_220_env_411", %"$$fundef_220_env_411"* %"$$fundef_220_envp_2624", i32 0, i32 0
  %"$ud-registry.zeroByStr20_2629" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_2629", [20 x i8]* %"$$fundef_220_env_ud-registry.zeroByStr20_2628", align 1
  store { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$$fundef_220_cloval_2627", { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$gasrem_2630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2631" = icmp ugt i64 1, %"$gasrem_2630"
  br i1 %"$gascmp_2631", label %"$out_of_gas_2632", label %"$have_gas_2633"

"$out_of_gas_2632":                               ; preds = %"$have_gas_2622"
  call void @_out_of_gas()
  br label %"$have_gas_2633"

"$have_gas_2633":                                 ; preds = %"$out_of_gas_2632", %"$have_gas_2622"
  %"$consume_2634" = sub i64 %"$gasrem_2630", 1
  store i64 %"$consume_2634", i64* @_gasrem, align 8
  store { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)* bitcast ({ void (i8*, [32 x i8]*, %String)*, i8* } (%"$$fundef_216_env_410"*, [32 x i8]*)* @"$fundef_216" to { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$gasrem_2638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2639" = icmp ugt i64 1, %"$gasrem_2638"
  br i1 %"$gascmp_2639", label %"$out_of_gas_2640", label %"$have_gas_2641"

"$out_of_gas_2640":                               ; preds = %"$have_gas_2633"
  call void @_out_of_gas()
  br label %"$have_gas_2641"

"$have_gas_2641":                                 ; preds = %"$out_of_gas_2640", %"$have_gas_2633"
  %"$consume_2642" = sub i64 %"$gasrem_2638", 1
  store i64 %"$consume_2642", i64* @_gasrem, align 8
  %"$$fundef_208_envp_2643_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_208_envp_2643_salloc" = call i8* @_salloc(i8* %"$$fundef_208_envp_2643_load", i64 32)
  %"$$fundef_208_envp_2643" = bitcast i8* %"$$fundef_208_envp_2643_salloc" to %"$$fundef_208_env_408"*
  %"$$fundef_208_env_voidp_2645" = bitcast %"$$fundef_208_env_408"* %"$$fundef_208_envp_2643" to i8*
  %"$$fundef_208_cloval_2646" = insertvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_208_env_408"*, [20 x i8]*)* @"$fundef_208" to { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_208_env_voidp_2645", 1
  %"$$fundef_208_env_BoolUtils.orb_2647" = getelementptr inbounds %"$$fundef_208_env_408", %"$$fundef_208_env_408"* %"$$fundef_208_envp_2643", i32 0, i32 0
  %"$BoolUtils.orb_2648" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2648", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_208_env_BoolUtils.orb_2647", align 8
  %"$$fundef_208_env_ud-registry.listByStr20Contains_2649" = getelementptr inbounds %"$$fundef_208_env_408", %"$$fundef_208_env_408"* %"$$fundef_208_envp_2643", i32 0, i32 1
  %"$ud-registry.listByStr20Contains_2650" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2650", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_208_env_ud-registry.listByStr20Contains_2649", align 8
  store { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_208_cloval_2646", { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  ret void
}

define void @_init_state() {
entry:
  %"$records_272" = alloca %Map_ByStr32_ud-registry.Record*, align 8
  %"$gasrem_2651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2652" = icmp ugt i64 1, %"$gasrem_2651"
  br i1 %"$gascmp_2652", label %"$out_of_gas_2653", label %"$have_gas_2654"

"$out_of_gas_2653":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2654"

"$have_gas_2654":                                 ; preds = %"$out_of_gas_2653", %entry
  %"$consume_2655" = sub i64 %"$gasrem_2651", 1
  store i64 %"$consume_2655", i64* @_gasrem, align 8
  %empty = alloca %Map_ByStr32_ud-registry.Record*, align 8
  %"$gasrem_2656" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2657" = icmp ugt i64 1, %"$gasrem_2656"
  br i1 %"$gascmp_2657", label %"$out_of_gas_2658", label %"$have_gas_2659"

"$out_of_gas_2658":                               ; preds = %"$have_gas_2654"
  call void @_out_of_gas()
  br label %"$have_gas_2659"

"$have_gas_2659":                                 ; preds = %"$out_of_gas_2658", %"$have_gas_2654"
  %"$consume_2660" = sub i64 %"$gasrem_2656", 1
  store i64 %"$consume_2660", i64* @_gasrem, align 8
  %"$execptr_load_2661" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2662" = call i8* @_new_empty_map(i8* %"$execptr_load_2661")
  %"$_new_empty_map_2663" = bitcast i8* %"$_new_empty_map_call_2662" to %Map_ByStr32_ud-registry.Record*
  store %Map_ByStr32_ud-registry.Record* %"$_new_empty_map_2663", %Map_ByStr32_ud-registry.Record** %empty, align 8
  %"$gasrem_2664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2665" = icmp ugt i64 1, %"$gasrem_2664"
  br i1 %"$gascmp_2665", label %"$out_of_gas_2666", label %"$have_gas_2667"

"$out_of_gas_2666":                               ; preds = %"$have_gas_2659"
  call void @_out_of_gas()
  br label %"$have_gas_2667"

"$have_gas_2667":                                 ; preds = %"$out_of_gas_2666", %"$have_gas_2659"
  %"$consume_2668" = sub i64 %"$gasrem_2664", 1
  store i64 %"$consume_2668", i64* @_gasrem, align 8
  %rootRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_2669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2670" = icmp ugt i64 1, %"$gasrem_2669"
  br i1 %"$gascmp_2670", label %"$out_of_gas_2671", label %"$have_gas_2672"

"$out_of_gas_2671":                               ; preds = %"$have_gas_2667"
  call void @_out_of_gas()
  br label %"$have_gas_2672"

"$have_gas_2672":                                 ; preds = %"$out_of_gas_2671", %"$have_gas_2667"
  %"$consume_2673" = sub i64 %"$gasrem_2669", 1
  store i64 %"$consume_2673", i64* @_gasrem, align 8
  %"$initialOwner_2674" = load [20 x i8], [20 x i8]* @_cparam_initialOwner, align 1
  %"$ud-registry.zeroByStr20_2675" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_2676_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2676_salloc" = call i8* @_salloc(i8* %"$adtval_2676_load", i64 41)
  %"$adtval_2676" = bitcast i8* %"$adtval_2676_salloc" to %CName_ud-registry.Record*
  %"$adtgep_2677" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2676", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2677", align 1
  %"$adtgep_2678" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2676", i32 0, i32 1
  store [20 x i8] %"$initialOwner_2674", [20 x i8]* %"$adtgep_2678", align 1
  %"$adtgep_2679" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2676", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_2675", [20 x i8]* %"$adtgep_2679", align 1
  %"$adtptr_2680" = bitcast %CName_ud-registry.Record* %"$adtval_2676" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_2680", %TName_ud-registry.Record** %rootRecord, align 8
  %"$empty_2681" = load %Map_ByStr32_ud-registry.Record*, %Map_ByStr32_ud-registry.Record** %empty, align 8
  %"$$empty_2681_2682" = bitcast %Map_ByStr32_ud-registry.Record* %"$empty_2681" to i8*
  %"$_lengthof_call_2683" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_325", i8* %"$$empty_2681_2682")
  %"$gasadd_2684" = add i64 1, %"$_lengthof_call_2683"
  %"$gasrem_2685" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2686" = icmp ugt i64 %"$gasadd_2684", %"$gasrem_2685"
  br i1 %"$gascmp_2686", label %"$out_of_gas_2687", label %"$have_gas_2688"

"$out_of_gas_2687":                               ; preds = %"$have_gas_2672"
  call void @_out_of_gas()
  br label %"$have_gas_2688"

"$have_gas_2688":                                 ; preds = %"$out_of_gas_2687", %"$have_gas_2672"
  %"$consume_2689" = sub i64 %"$gasrem_2685", %"$gasadd_2684"
  store i64 %"$consume_2689", i64* @_gasrem, align 8
  %"$execptr_load_2690" = load i8*, i8** @_execptr, align 8
  %"$empty_2691" = load %Map_ByStr32_ud-registry.Record*, %Map_ByStr32_ud-registry.Record** %empty, align 8
  %"$$empty_2691_2692" = bitcast %Map_ByStr32_ud-registry.Record* %"$empty_2691" to i8*
  %"$put_rootNode_2693" = alloca [32 x i8], align 1
  %"$rootNode_2694" = load [32 x i8], [32 x i8]* @_cparam_rootNode, align 1
  store [32 x i8] %"$rootNode_2694", [32 x i8]* %"$put_rootNode_2693", align 1
  %"$$put_rootNode_2693_2695" = bitcast [32 x i8]* %"$put_rootNode_2693" to i8*
  %"$rootRecord_2696" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %rootRecord, align 8
  %"$$rootRecord_2696_2697" = bitcast %TName_ud-registry.Record* %"$rootRecord_2696" to i8*
  %"$put_call_2698" = call i8* @_put(i8* %"$execptr_load_2690", %_TyDescrTy_Typ* @"$TyDescr_Map_325", i8* %"$$empty_2691_2692", i8* %"$$put_rootNode_2693_2695", i8* %"$$rootRecord_2696_2697")
  %"$put_2699" = bitcast i8* %"$put_call_2698" to %Map_ByStr32_ud-registry.Record*
  store %Map_ByStr32_ud-registry.Record* %"$put_2699", %Map_ByStr32_ud-registry.Record** %"$records_272", align 8
  %"$execptr_load_2700" = load i8*, i8** @_execptr, align 8
  %"$$records_272_2702" = load %Map_ByStr32_ud-registry.Record*, %Map_ByStr32_ud-registry.Record** %"$records_272", align 8
  %"$update_value_2703" = bitcast %Map_ByStr32_ud-registry.Record* %"$$records_272_2702" to i8*
  call void @_update_field(i8* %"$execptr_load_2700", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_2701", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 0, i8* null, i8* %"$update_value_2703")
  %"$registrar_273" = alloca [20 x i8], align 1
  %"$gasrem_2704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2705" = icmp ugt i64 1, %"$gasrem_2704"
  br i1 %"$gascmp_2705", label %"$out_of_gas_2706", label %"$have_gas_2707"

"$out_of_gas_2706":                               ; preds = %"$have_gas_2688"
  call void @_out_of_gas()
  br label %"$have_gas_2707"

"$have_gas_2707":                                 ; preds = %"$out_of_gas_2706", %"$have_gas_2688"
  %"$consume_2708" = sub i64 %"$gasrem_2704", 1
  store i64 %"$consume_2708", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_2709" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_2709", [20 x i8]* %"$registrar_273", align 1
  %"$execptr_load_2710" = load i8*, i8** @_execptr, align 8
  %"$$registrar_273_2712" = load [20 x i8], [20 x i8]* %"$registrar_273", align 1
  %"$update_value_2713" = alloca [20 x i8], align 1
  store [20 x i8] %"$$registrar_273_2712", [20 x i8]* %"$update_value_2713", align 1
  %"$update_value_2714" = bitcast [20 x i8]* %"$update_value_2713" to i8*
  call void @_update_field(i8* %"$execptr_load_2710", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_2711", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i32 0, i8* null, i8* %"$update_value_2714")
  %"$approvals_274" = alloca %Map_ByStr32_ByStr20*, align 8
  %"$gasrem_2715" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2716" = icmp ugt i64 1, %"$gasrem_2715"
  br i1 %"$gascmp_2716", label %"$out_of_gas_2717", label %"$have_gas_2718"

"$out_of_gas_2717":                               ; preds = %"$have_gas_2707"
  call void @_out_of_gas()
  br label %"$have_gas_2718"

"$have_gas_2718":                                 ; preds = %"$out_of_gas_2717", %"$have_gas_2707"
  %"$consume_2719" = sub i64 %"$gasrem_2715", 1
  store i64 %"$consume_2719", i64* @_gasrem, align 8
  %"$execptr_load_2720" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2721" = call i8* @_new_empty_map(i8* %"$execptr_load_2720")
  %"$_new_empty_map_2722" = bitcast i8* %"$_new_empty_map_call_2721" to %Map_ByStr32_ByStr20*
  store %Map_ByStr32_ByStr20* %"$_new_empty_map_2722", %Map_ByStr32_ByStr20** %"$approvals_274", align 8
  %"$execptr_load_2723" = load i8*, i8** @_execptr, align 8
  %"$$approvals_274_2725" = load %Map_ByStr32_ByStr20*, %Map_ByStr32_ByStr20** %"$approvals_274", align 8
  %"$update_value_2726" = bitcast %Map_ByStr32_ByStr20* %"$$approvals_274_2725" to i8*
  call void @_update_field(i8* %"$execptr_load_2723", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_2724", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 0, i8* null, i8* %"$update_value_2726")
  %"$operators_275" = alloca %"Map_ByStr20_List_(ByStr20)"*, align 8
  %"$gasrem_2727" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2728" = icmp ugt i64 1, %"$gasrem_2727"
  br i1 %"$gascmp_2728", label %"$out_of_gas_2729", label %"$have_gas_2730"

"$out_of_gas_2729":                               ; preds = %"$have_gas_2718"
  call void @_out_of_gas()
  br label %"$have_gas_2730"

"$have_gas_2730":                                 ; preds = %"$out_of_gas_2729", %"$have_gas_2718"
  %"$consume_2731" = sub i64 %"$gasrem_2727", 1
  store i64 %"$consume_2731", i64* @_gasrem, align 8
  %"$execptr_load_2732" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2733" = call i8* @_new_empty_map(i8* %"$execptr_load_2732")
  %"$_new_empty_map_2734" = bitcast i8* %"$_new_empty_map_call_2733" to %"Map_ByStr20_List_(ByStr20)"*
  store %"Map_ByStr20_List_(ByStr20)"* %"$_new_empty_map_2734", %"Map_ByStr20_List_(ByStr20)"** %"$operators_275", align 8
  %"$execptr_load_2735" = load i8*, i8** @_execptr, align 8
  %"$$operators_275_2737" = load %"Map_ByStr20_List_(ByStr20)"*, %"Map_ByStr20_List_(ByStr20)"** %"$operators_275", align 8
  %"$update_value_2738" = bitcast %"Map_ByStr20_List_(ByStr20)"* %"$$operators_275_2737" to i8*
  call void @_update_field(i8* %"$execptr_load_2735", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_2736", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 0, i8* null, i8* %"$update_value_2738")
  %"$admins_276" = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_2739" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2740" = icmp ugt i64 1, %"$gasrem_2739"
  br i1 %"$gascmp_2740", label %"$out_of_gas_2741", label %"$have_gas_2742"

"$out_of_gas_2741":                               ; preds = %"$have_gas_2730"
  call void @_out_of_gas()
  br label %"$have_gas_2742"

"$have_gas_2742":                                 ; preds = %"$out_of_gas_2741", %"$have_gas_2730"
  %"$consume_2743" = sub i64 %"$gasrem_2739", 1
  store i64 %"$consume_2743", i64* @_gasrem, align 8
  %"$initialOwner_2744" = load [20 x i8], [20 x i8]* @_cparam_initialOwner, align 1
  %"$ud-registry.nilByStr20_2745" = load %TName_List_ByStr20*, %TName_List_ByStr20** @ud-registry.nilByStr20, align 8
  %"$adtval_2746_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2746_salloc" = call i8* @_salloc(i8* %"$adtval_2746_load", i64 29)
  %"$adtval_2746" = bitcast i8* %"$adtval_2746_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_2747" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2746", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2747", align 1
  %"$adtgep_2748" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2746", i32 0, i32 1
  store [20 x i8] %"$initialOwner_2744", [20 x i8]* %"$adtgep_2748", align 1
  %"$adtgep_2749" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2746", i32 0, i32 2
  store %TName_List_ByStr20* %"$ud-registry.nilByStr20_2745", %TName_List_ByStr20** %"$adtgep_2749", align 8
  %"$adtptr_2750" = bitcast %CName_Cons_ByStr20* %"$adtval_2746" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2750", %TName_List_ByStr20** %"$admins_276", align 8
  %"$execptr_load_2751" = load i8*, i8** @_execptr, align 8
  %"$$admins_276_2753" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$admins_276", align 8
  %"$update_value_2754" = bitcast %TName_List_ByStr20* %"$$admins_276_2753" to i8*
  call void @_update_field(i8* %"$execptr_load_2751", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2752", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i32 0, i8* null, i8* %"$update_value_2754")
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setAdmin_2755"(%Uint128 %_amount, [20 x i8]* %"$_origin_2756", [20 x i8]* %"$_sender_2757", [20 x i8]* %"$address_2758", %TName_Bool* %isApproved) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2756", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2757", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_2758", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_2760" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_2761" = call i8* @_fetch_field(i8* %"$execptr_load_2760", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2759", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i32 0, i8* null, i32 1)
  %"$currentAdmins_2762" = bitcast i8* %"$currentAdmins_call_2761" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_2762", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_2763" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_2763_2764" = bitcast %TName_List_ByStr20* %"$currentAdmins_2763" to i8*
  %"$_literal_cost_call_2765" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i8* %"$$currentAdmins_2763_2764")
  %"$gasadd_2766" = add i64 %"$_literal_cost_call_2765", 0
  %"$gasrem_2767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2768" = icmp ugt i64 %"$gasadd_2766", %"$gasrem_2767"
  br i1 %"$gascmp_2768", label %"$out_of_gas_2769", label %"$have_gas_2770"

"$out_of_gas_2769":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2770"

"$have_gas_2770":                                 ; preds = %"$out_of_gas_2769", %entry
  %"$consume_2771" = sub i64 %"$gasrem_2767", %"$gasadd_2766"
  store i64 %"$consume_2771", i64* @_gasrem, align 8
  %"$gasrem_2772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2773" = icmp ugt i64 1, %"$gasrem_2772"
  br i1 %"$gascmp_2773", label %"$out_of_gas_2774", label %"$have_gas_2775"

"$out_of_gas_2774":                               ; preds = %"$have_gas_2770"
  call void @_out_of_gas()
  br label %"$have_gas_2775"

"$have_gas_2775":                                 ; preds = %"$out_of_gas_2774", %"$have_gas_2770"
  %"$consume_2776" = sub i64 %"$gasrem_2772", 1
  store i64 %"$consume_2776", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_2777" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2778" = icmp ugt i64 1, %"$gasrem_2777"
  br i1 %"$gascmp_2778", label %"$out_of_gas_2779", label %"$have_gas_2780"

"$out_of_gas_2779":                               ; preds = %"$have_gas_2775"
  call void @_out_of_gas()
  br label %"$have_gas_2780"

"$have_gas_2780":                                 ; preds = %"$out_of_gas_2779", %"$have_gas_2775"
  %"$consume_2781" = sub i64 %"$gasrem_2777", 1
  store i64 %"$consume_2781", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_54" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_2782" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_2783" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2782", 0
  %"$ud-registry.listByStr20Contains_envptr_2784" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2782", 1
  %"$currentAdmins_2785" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_2786" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_2783"(i8* %"$ud-registry.listByStr20Contains_envptr_2784", %TName_List_ByStr20* %"$currentAdmins_2785")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_2786", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_54", align 8
  %"$ud-registry.listByStr20Contains_55" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_54_2787" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_54", align 8
  %"$$ud-registry.listByStr20Contains_54_fptr_2788" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_54_2787", 0
  %"$$ud-registry.listByStr20Contains_54_envptr_2789" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_54_2787", 1
  %"$$ud-registry.listByStr20Contains_54__sender_2790" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_54__sender_2790", align 1
  %"$$ud-registry.listByStr20Contains_54_call_2791" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_54_fptr_2788"(i8* %"$$ud-registry.listByStr20Contains_54_envptr_2789", [20 x i8]* %"$$ud-registry.listByStr20Contains_54__sender_2790")
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_54_call_2791", %TName_Bool** %"$ud-registry.listByStr20Contains_55", align 8
  %"$$ud-registry.listByStr20Contains_55_2792" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_55", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_55_2792", %TName_Bool** %isSenderAdmin, align 8
  %"$gasrem_2793" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2794" = icmp ugt i64 2, %"$gasrem_2793"
  br i1 %"$gascmp_2794", label %"$out_of_gas_2795", label %"$have_gas_2796"

"$out_of_gas_2795":                               ; preds = %"$have_gas_2780"
  call void @_out_of_gas()
  br label %"$have_gas_2796"

"$have_gas_2796":                                 ; preds = %"$out_of_gas_2795", %"$have_gas_2780"
  %"$consume_2797" = sub i64 %"$gasrem_2793", 2
  store i64 %"$consume_2797", i64* @_gasrem, align 8
  %"$isSenderAdmin_2799" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_2800" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_2799", i32 0, i32 0
  %"$isSenderAdmin_tag_2801" = load i8, i8* %"$isSenderAdmin_tag_2800", align 1
  switch i8 %"$isSenderAdmin_tag_2801", label %"$empty_default_2802" [
    i8 0, label %"$True_2803"
    i8 1, label %"$False_2945"
  ]

"$True_2803":                                     ; preds = %"$have_gas_2796"
  %"$isSenderAdmin_2804" = bitcast %TName_Bool* %"$isSenderAdmin_2799" to %CName_True*
  %"$gasrem_2805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2806" = icmp ugt i64 1, %"$gasrem_2805"
  br i1 %"$gascmp_2806", label %"$out_of_gas_2807", label %"$have_gas_2808"

"$out_of_gas_2807":                               ; preds = %"$True_2803"
  call void @_out_of_gas()
  br label %"$have_gas_2808"

"$have_gas_2808":                                 ; preds = %"$out_of_gas_2807", %"$True_2803"
  %"$consume_2809" = sub i64 %"$gasrem_2805", 1
  store i64 %"$consume_2809", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_2810" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2811" = icmp ugt i64 1, %"$gasrem_2810"
  br i1 %"$gascmp_2811", label %"$out_of_gas_2812", label %"$have_gas_2813"

"$out_of_gas_2812":                               ; preds = %"$have_gas_2808"
  call void @_out_of_gas()
  br label %"$have_gas_2813"

"$have_gas_2813":                                 ; preds = %"$out_of_gas_2812", %"$have_gas_2808"
  %"$consume_2814" = sub i64 %"$gasrem_2810", 1
  store i64 %"$consume_2814", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_2815" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2816" = icmp ugt i64 1, %"$gasrem_2815"
  br i1 %"$gascmp_2816", label %"$out_of_gas_2817", label %"$have_gas_2818"

"$out_of_gas_2817":                               ; preds = %"$have_gas_2813"
  call void @_out_of_gas()
  br label %"$have_gas_2818"

"$have_gas_2818":                                 ; preds = %"$out_of_gas_2817", %"$have_gas_2813"
  %"$consume_2819" = sub i64 %"$gasrem_2815", 1
  store i64 %"$consume_2819", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Excludes_49" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Excludes_2820" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes, align 8
  %"$ud-registry.listByStr20Excludes_fptr_2821" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_2820", 0
  %"$ud-registry.listByStr20Excludes_envptr_2822" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_2820", 1
  %"$currentAdmins_2823" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Excludes_call_2824" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_fptr_2821"(i8* %"$ud-registry.listByStr20Excludes_envptr_2822", %TName_List_ByStr20* %"$currentAdmins_2823")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_call_2824", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_49", align 8
  %"$ud-registry.listByStr20Excludes_50" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Excludes_49_2825" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_49", align 8
  %"$$ud-registry.listByStr20Excludes_49_fptr_2826" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_49_2825", 0
  %"$$ud-registry.listByStr20Excludes_49_envptr_2827" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_49_2825", 1
  %"$$ud-registry.listByStr20Excludes_49_address_2828" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20Excludes_49_address_2828", align 1
  %"$$ud-registry.listByStr20Excludes_49_call_2829" = call %TName_Bool* %"$$ud-registry.listByStr20Excludes_49_fptr_2826"(i8* %"$$ud-registry.listByStr20Excludes_49_envptr_2827", [20 x i8]* %"$$ud-registry.listByStr20Excludes_49_address_2828")
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_49_call_2829", %TName_Bool** %"$ud-registry.listByStr20Excludes_50", align 8
  %"$$ud-registry.listByStr20Excludes_50_2830" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Excludes_50", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_50_2830", %TName_Bool** %b, align 8
  %"$gasrem_2831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2832" = icmp ugt i64 1, %"$gasrem_2831"
  br i1 %"$gascmp_2832", label %"$out_of_gas_2833", label %"$have_gas_2834"

"$out_of_gas_2833":                               ; preds = %"$have_gas_2818"
  call void @_out_of_gas()
  br label %"$have_gas_2834"

"$have_gas_2834":                                 ; preds = %"$out_of_gas_2833", %"$have_gas_2818"
  %"$consume_2835" = sub i64 %"$gasrem_2831", 1
  store i64 %"$consume_2835", i64* @_gasrem, align 8
  %"$ud-registry.xandb_51" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.xandb_2836" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8
  %"$ud-registry.xandb_fptr_2837" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2836", 0
  %"$ud-registry.xandb_envptr_2838" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2836", 1
  %"$b_2839" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$ud-registry.xandb_call_2840" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_fptr_2837"(i8* %"$ud-registry.xandb_envptr_2838", %TName_Bool* %"$b_2839")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_call_2840", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_51", align 8
  %"$ud-registry.xandb_52" = alloca %TName_Bool*, align 8
  %"$$ud-registry.xandb_51_2841" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_51", align 8
  %"$$ud-registry.xandb_51_fptr_2842" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_51_2841", 0
  %"$$ud-registry.xandb_51_envptr_2843" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_51_2841", 1
  %"$$ud-registry.xandb_51_call_2844" = call %TName_Bool* %"$$ud-registry.xandb_51_fptr_2842"(i8* %"$$ud-registry.xandb_51_envptr_2843", %TName_Bool* %isApproved)
  store %TName_Bool* %"$$ud-registry.xandb_51_call_2844", %TName_Bool** %"$ud-registry.xandb_52", align 8
  %"$$ud-registry.xandb_52_2845" = load %TName_Bool*, %TName_Bool** %"$ud-registry.xandb_52", align 8
  store %TName_Bool* %"$$ud-registry.xandb_52_2845", %TName_Bool** %needsToChange, align 8
  %"$gasrem_2846" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2847" = icmp ugt i64 2, %"$gasrem_2846"
  br i1 %"$gascmp_2847", label %"$out_of_gas_2848", label %"$have_gas_2849"

"$out_of_gas_2848":                               ; preds = %"$have_gas_2834"
  call void @_out_of_gas()
  br label %"$have_gas_2849"

"$have_gas_2849":                                 ; preds = %"$out_of_gas_2848", %"$have_gas_2834"
  %"$consume_2850" = sub i64 %"$gasrem_2846", 2
  store i64 %"$consume_2850", i64* @_gasrem, align 8
  %"$needsToChange_2852" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_2853" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_2852", i32 0, i32 0
  %"$needsToChange_tag_2854" = load i8, i8* %"$needsToChange_tag_2853", align 1
  switch i8 %"$needsToChange_tag_2854", label %"$default_2855" [
    i8 0, label %"$True_2856"
  ]

"$True_2856":                                     ; preds = %"$have_gas_2849"
  %"$needsToChange_2857" = bitcast %TName_Bool* %"$needsToChange_2852" to %CName_True*
  %"$gasrem_2858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2859" = icmp ugt i64 1, %"$gasrem_2858"
  br i1 %"$gascmp_2859", label %"$out_of_gas_2860", label %"$have_gas_2861"

"$out_of_gas_2860":                               ; preds = %"$True_2856"
  call void @_out_of_gas()
  br label %"$have_gas_2861"

"$have_gas_2861":                                 ; preds = %"$out_of_gas_2860", %"$True_2856"
  %"$consume_2862" = sub i64 %"$gasrem_2858", 1
  store i64 %"$consume_2862", i64* @_gasrem, align 8
  %newAdmins = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_2863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2864" = icmp ugt i64 2, %"$gasrem_2863"
  br i1 %"$gascmp_2864", label %"$out_of_gas_2865", label %"$have_gas_2866"

"$out_of_gas_2865":                               ; preds = %"$have_gas_2861"
  call void @_out_of_gas()
  br label %"$have_gas_2866"

"$have_gas_2866":                                 ; preds = %"$out_of_gas_2865", %"$have_gas_2861"
  %"$consume_2867" = sub i64 %"$gasrem_2863", 2
  store i64 %"$consume_2867", i64* @_gasrem, align 8
  %"$isApproved_tag_2869" = getelementptr inbounds %TName_Bool, %TName_Bool* %isApproved, i32 0, i32 0
  %"$isApproved_tag_2870" = load i8, i8* %"$isApproved_tag_2869", align 1
  switch i8 %"$isApproved_tag_2870", label %"$empty_default_2871" [
    i8 0, label %"$True_2872"
    i8 1, label %"$False_2885"
  ]

"$True_2872":                                     ; preds = %"$have_gas_2866"
  %"$isApproved_2873" = bitcast %TName_Bool* %isApproved to %CName_True*
  %"$gasrem_2874" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2875" = icmp ugt i64 1, %"$gasrem_2874"
  br i1 %"$gascmp_2875", label %"$out_of_gas_2876", label %"$have_gas_2877"

"$out_of_gas_2876":                               ; preds = %"$True_2872"
  call void @_out_of_gas()
  br label %"$have_gas_2877"

"$have_gas_2877":                                 ; preds = %"$out_of_gas_2876", %"$True_2872"
  %"$consume_2878" = sub i64 %"$gasrem_2874", 1
  store i64 %"$consume_2878", i64* @_gasrem, align 8
  %"$currentAdmins_2879" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$adtval_2880_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2880_salloc" = call i8* @_salloc(i8* %"$adtval_2880_load", i64 29)
  %"$adtval_2880" = bitcast i8* %"$adtval_2880_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_2881" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2880", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2881", align 1
  %"$adtgep_2882" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2880", i32 0, i32 1
  store [20 x i8] %address, [20 x i8]* %"$adtgep_2882", align 1
  %"$adtgep_2883" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2880", i32 0, i32 2
  store %TName_List_ByStr20* %"$currentAdmins_2879", %TName_List_ByStr20** %"$adtgep_2883", align 8
  %"$adtptr_2884" = bitcast %CName_Cons_ByStr20* %"$adtval_2880" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2884", %TName_List_ByStr20** %newAdmins, align 8
  br label %"$matchsucc_2868"

"$False_2885":                                    ; preds = %"$have_gas_2866"
  %"$isApproved_2886" = bitcast %TName_Bool* %isApproved to %CName_False*
  %"$gasrem_2887" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2888" = icmp ugt i64 1, %"$gasrem_2887"
  br i1 %"$gascmp_2888", label %"$out_of_gas_2889", label %"$have_gas_2890"

"$out_of_gas_2889":                               ; preds = %"$False_2885"
  call void @_out_of_gas()
  br label %"$have_gas_2890"

"$have_gas_2890":                                 ; preds = %"$out_of_gas_2889", %"$False_2885"
  %"$consume_2891" = sub i64 %"$gasrem_2887", 1
  store i64 %"$consume_2891", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20FilterOut_47" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20FilterOut_2892" = load { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8
  %"$ud-registry.listByStr20FilterOut_fptr_2893" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_2892", 0
  %"$ud-registry.listByStr20FilterOut_envptr_2894" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_2892", 1
  %"$currentAdmins_2895" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20FilterOut_call_2896" = call { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_fptr_2893"(i8* %"$ud-registry.listByStr20FilterOut_envptr_2894", %TName_List_ByStr20* %"$currentAdmins_2895")
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_call_2896", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_47", align 8
  %"$ud-registry.listByStr20FilterOut_48" = alloca %TName_List_ByStr20*, align 8
  %"$$ud-registry.listByStr20FilterOut_47_2897" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_47", align 8
  %"$$ud-registry.listByStr20FilterOut_47_fptr_2898" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_47_2897", 0
  %"$$ud-registry.listByStr20FilterOut_47_envptr_2899" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_47_2897", 1
  %"$$ud-registry.listByStr20FilterOut_47_address_2900" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20FilterOut_47_address_2900", align 1
  %"$$ud-registry.listByStr20FilterOut_47_call_2901" = call %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_47_fptr_2898"(i8* %"$$ud-registry.listByStr20FilterOut_47_envptr_2899", [20 x i8]* %"$$ud-registry.listByStr20FilterOut_47_address_2900")
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_47_call_2901", %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_48", align 8
  %"$$ud-registry.listByStr20FilterOut_48_2902" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_48", align 8
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_48_2902", %TName_List_ByStr20** %newAdmins, align 8
  br label %"$matchsucc_2868"

"$empty_default_2871":                            ; preds = %"$have_gas_2866"
  br label %"$matchsucc_2868"

"$matchsucc_2868":                                ; preds = %"$have_gas_2890", %"$have_gas_2877", %"$empty_default_2871"
  %"$newAdmins_2903" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newAdmins, align 8
  %"$$newAdmins_2903_2904" = bitcast %TName_List_ByStr20* %"$newAdmins_2903" to i8*
  %"$_literal_cost_call_2905" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i8* %"$$newAdmins_2903_2904")
  %"$gasrem_2906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2907" = icmp ugt i64 %"$_literal_cost_call_2905", %"$gasrem_2906"
  br i1 %"$gascmp_2907", label %"$out_of_gas_2908", label %"$have_gas_2909"

"$out_of_gas_2908":                               ; preds = %"$matchsucc_2868"
  call void @_out_of_gas()
  br label %"$have_gas_2909"

"$have_gas_2909":                                 ; preds = %"$out_of_gas_2908", %"$matchsucc_2868"
  %"$consume_2910" = sub i64 %"$gasrem_2906", %"$_literal_cost_call_2905"
  store i64 %"$consume_2910", i64* @_gasrem, align 8
  %"$execptr_load_2911" = load i8*, i8** @_execptr, align 8
  %"$newAdmins_2913" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newAdmins, align 8
  %"$update_value_2914" = bitcast %TName_List_ByStr20* %"$newAdmins_2913" to i8*
  call void @_update_field(i8* %"$execptr_load_2911", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2912", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i32 0, i8* null, i8* %"$update_value_2914")
  %"$gasrem_2915" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2916" = icmp ugt i64 1, %"$gasrem_2915"
  br i1 %"$gascmp_2916", label %"$out_of_gas_2917", label %"$have_gas_2918"

"$out_of_gas_2917":                               ; preds = %"$have_gas_2909"
  call void @_out_of_gas()
  br label %"$have_gas_2918"

"$have_gas_2918":                                 ; preds = %"$out_of_gas_2917", %"$have_gas_2909"
  %"$consume_2919" = sub i64 %"$gasrem_2915", 1
  store i64 %"$consume_2919", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_2920" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2921" = icmp ugt i64 1, %"$gasrem_2920"
  br i1 %"$gascmp_2921", label %"$out_of_gas_2922", label %"$have_gas_2923"

"$out_of_gas_2922":                               ; preds = %"$have_gas_2918"
  call void @_out_of_gas()
  br label %"$have_gas_2923"

"$have_gas_2923":                                 ; preds = %"$out_of_gas_2922", %"$have_gas_2918"
  %"$consume_2924" = sub i64 %"$gasrem_2920", 1
  store i64 %"$consume_2924", i64* @_gasrem, align 8
  %"$ud-registry.eAdminSet_45" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.eAdminSet_2925" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eAdminSet, align 8
  %"$ud-registry.eAdminSet_fptr_2926" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eAdminSet_2925", 0
  %"$ud-registry.eAdminSet_envptr_2927" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eAdminSet_2925", 1
  %"$ud-registry.eAdminSet_address_2928" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eAdminSet_address_2928", align 1
  %"$ud-registry.eAdminSet_call_2929" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.eAdminSet_fptr_2926"(i8* %"$ud-registry.eAdminSet_envptr_2927", [20 x i8]* %"$ud-registry.eAdminSet_address_2928")
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.eAdminSet_call_2929", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eAdminSet_45", align 8
  %"$ud-registry.eAdminSet_46" = alloca i8*, align 8
  %"$$ud-registry.eAdminSet_45_2930" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eAdminSet_45", align 8
  %"$$ud-registry.eAdminSet_45_fptr_2931" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eAdminSet_45_2930", 0
  %"$$ud-registry.eAdminSet_45_envptr_2932" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eAdminSet_45_2930", 1
  %"$$ud-registry.eAdminSet_45_call_2933" = call i8* %"$$ud-registry.eAdminSet_45_fptr_2931"(i8* %"$$ud-registry.eAdminSet_45_envptr_2932", %TName_Bool* %isApproved)
  store i8* %"$$ud-registry.eAdminSet_45_call_2933", i8** %"$ud-registry.eAdminSet_46", align 8
  %"$$ud-registry.eAdminSet_46_2934" = load i8*, i8** %"$ud-registry.eAdminSet_46", align 8
  store i8* %"$$ud-registry.eAdminSet_46_2934", i8** %e, align 8
  %"$e_2935" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_2937" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_2935")
  %"$gasrem_2938" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2939" = icmp ugt i64 %"$_literal_cost_call_2937", %"$gasrem_2938"
  br i1 %"$gascmp_2939", label %"$out_of_gas_2940", label %"$have_gas_2941"

"$out_of_gas_2940":                               ; preds = %"$have_gas_2923"
  call void @_out_of_gas()
  br label %"$have_gas_2941"

"$have_gas_2941":                                 ; preds = %"$out_of_gas_2940", %"$have_gas_2923"
  %"$consume_2942" = sub i64 %"$gasrem_2938", %"$_literal_cost_call_2937"
  store i64 %"$consume_2942", i64* @_gasrem, align 8
  %"$execptr_load_2943" = load i8*, i8** @_execptr, align 8
  %"$e_2944" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_2943", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_2944")
  br label %"$matchsucc_2851"

"$default_2855":                                  ; preds = %"$have_gas_2849"
  br label %"$joinp_4"

"$joinp_4":                                       ; preds = %"$default_2855"
  br label %"$matchsucc_2851"

"$matchsucc_2851":                                ; preds = %"$have_gas_2941", %"$joinp_4"
  br label %"$matchsucc_2798"

"$False_2945":                                    ; preds = %"$have_gas_2796"
  %"$isSenderAdmin_2946" = bitcast %TName_Bool* %"$isSenderAdmin_2799" to %CName_False*
  %"$gasrem_2947" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2948" = icmp ugt i64 1, %"$gasrem_2947"
  br i1 %"$gascmp_2948", label %"$out_of_gas_2949", label %"$have_gas_2950"

"$out_of_gas_2949":                               ; preds = %"$False_2945"
  call void @_out_of_gas()
  br label %"$have_gas_2950"

"$have_gas_2950":                                 ; preds = %"$out_of_gas_2949", %"$False_2945"
  %"$consume_2951" = sub i64 %"$gasrem_2947", 1
  store i64 %"$consume_2951", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_2952" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2953" = icmp ugt i64 1, %"$gasrem_2952"
  br i1 %"$gascmp_2953", label %"$out_of_gas_2954", label %"$have_gas_2955"

"$out_of_gas_2954":                               ; preds = %"$have_gas_2950"
  call void @_out_of_gas()
  br label %"$have_gas_2955"

"$have_gas_2955":                                 ; preds = %"$out_of_gas_2954", %"$have_gas_2950"
  %"$consume_2956" = sub i64 %"$gasrem_2952", 1
  store i64 %"$consume_2956", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_2957" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2958" = icmp ugt i64 1, %"$gasrem_2957"
  br i1 %"$gascmp_2958", label %"$out_of_gas_2959", label %"$have_gas_2960"

"$out_of_gas_2959":                               ; preds = %"$have_gas_2955"
  call void @_out_of_gas()
  br label %"$have_gas_2960"

"$have_gas_2960":                                 ; preds = %"$out_of_gas_2959", %"$have_gas_2955"
  %"$consume_2961" = sub i64 %"$gasrem_2957", 1
  store i64 %"$consume_2961", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$stringlit_2962", i32 0, i32 0), i32 26 }, %String* %m, align 8
  %"$gasrem_2963" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2964" = icmp ugt i64 1, %"$gasrem_2963"
  br i1 %"$gascmp_2964", label %"$out_of_gas_2965", label %"$have_gas_2966"

"$out_of_gas_2965":                               ; preds = %"$have_gas_2960"
  call void @_out_of_gas()
  br label %"$have_gas_2966"

"$have_gas_2966":                                 ; preds = %"$out_of_gas_2965", %"$have_gas_2960"
  %"$consume_2967" = sub i64 %"$gasrem_2963", 1
  store i64 %"$consume_2967", i64* @_gasrem, align 8
  %"$ud-registry.eError_53" = alloca i8*, align 8
  %"$ud-registry.eError_2968" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_2969" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2968", 0
  %"$ud-registry.eError_envptr_2970" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2968", 1
  %"$m_2971" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_2972" = call i8* %"$ud-registry.eError_fptr_2969"(i8* %"$ud-registry.eError_envptr_2970", %String %"$m_2971")
  store i8* %"$ud-registry.eError_call_2972", i8** %"$ud-registry.eError_53", align 8
  %"$$ud-registry.eError_53_2973" = load i8*, i8** %"$ud-registry.eError_53", align 8
  store i8* %"$$ud-registry.eError_53_2973", i8** %e1, align 8
  %"$e_2974" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_2976" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_2974")
  %"$gasrem_2977" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2978" = icmp ugt i64 %"$_literal_cost_call_2976", %"$gasrem_2977"
  br i1 %"$gascmp_2978", label %"$out_of_gas_2979", label %"$have_gas_2980"

"$out_of_gas_2979":                               ; preds = %"$have_gas_2966"
  call void @_out_of_gas()
  br label %"$have_gas_2980"

"$have_gas_2980":                                 ; preds = %"$out_of_gas_2979", %"$have_gas_2966"
  %"$consume_2981" = sub i64 %"$gasrem_2977", %"$_literal_cost_call_2976"
  store i64 %"$consume_2981", i64* @_gasrem, align 8
  %"$execptr_load_2982" = load i8*, i8** @_execptr, align 8
  %"$e_2983" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_2982", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_2983")
  br label %"$matchsucc_2798"

"$empty_default_2802":                            ; preds = %"$have_gas_2796"
  br label %"$matchsucc_2798"

"$matchsucc_2798":                                ; preds = %"$have_gas_2980", %"$matchsucc_2851", %"$empty_default_2802"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) {
entry:
  %"$_amount_2985" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2986" = bitcast i8* %"$_amount_2985" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2986", align 8
  %"$_origin_2987" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2988" = bitcast i8* %"$_origin_2987" to [20 x i8]*
  %"$_sender_2989" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2990" = bitcast i8* %"$_sender_2989" to [20 x i8]*
  %"$address_2991" = getelementptr i8, i8* %0, i32 56
  %"$address_2992" = bitcast i8* %"$address_2991" to [20 x i8]*
  %"$isApproved_2993" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_2994" = bitcast i8* %"$isApproved_2993" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_2994", align 8
  call void @"$setAdmin_2755"(%Uint128 %_amount, [20 x i8]* %"$_origin_2988", [20 x i8]* %"$_sender_2990", [20 x i8]* %"$address_2992", %TName_Bool* %isApproved)
  ret void
}

define internal void @"$approve_2995"(%Uint128 %_amount, [20 x i8]* %"$_origin_2996", [20 x i8]* %"$_sender_2997", [32 x i8]* %"$node_2998", [20 x i8]* %"$address_2999") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2996", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2997", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_2998", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_2999", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3000_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3000_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3000_salloc_load", i64 32)
  %"$indices_buf_3000_salloc" = bitcast i8* %"$indices_buf_3000_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3000" = bitcast [32 x i8]* %"$indices_buf_3000_salloc" to i8*
  %"$indices_gep_3001" = getelementptr i8, i8* %"$indices_buf_3000", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3001" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3003" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_3004" = call i8* @_fetch_field(i8* %"$execptr_load_3003", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3002", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_3000", i32 1)
  %"$maybeRecord_3005" = bitcast i8* %"$maybeRecord_call_3004" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3005", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3006" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3006_3007" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3006" to i8*
  %"$_literal_cost_call_3008" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_3006_3007")
  %"$gasadd_3009" = add i64 %"$_literal_cost_call_3008", 0
  %"$gasadd_3010" = add i64 %"$gasadd_3009", 1
  %"$gasrem_3011" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3012" = icmp ugt i64 %"$gasadd_3010", %"$gasrem_3011"
  br i1 %"$gascmp_3012", label %"$out_of_gas_3013", label %"$have_gas_3014"

"$out_of_gas_3013":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3014"

"$have_gas_3014":                                 ; preds = %"$out_of_gas_3013", %entry
  %"$consume_3015" = sub i64 %"$gasrem_3011", %"$gasadd_3010"
  store i64 %"$consume_3015", i64* @_gasrem, align 8
  %"$gasrem_3016" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3017" = icmp ugt i64 1, %"$gasrem_3016"
  br i1 %"$gascmp_3017", label %"$out_of_gas_3018", label %"$have_gas_3019"

"$out_of_gas_3018":                               ; preds = %"$have_gas_3014"
  call void @_out_of_gas()
  br label %"$have_gas_3019"

"$have_gas_3019":                                 ; preds = %"$out_of_gas_3018", %"$have_gas_3014"
  %"$consume_3020" = sub i64 %"$gasrem_3016", 1
  store i64 %"$consume_3020", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3021" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3022" = icmp ugt i64 1, %"$gasrem_3021"
  br i1 %"$gascmp_3022", label %"$out_of_gas_3023", label %"$have_gas_3024"

"$out_of_gas_3023":                               ; preds = %"$have_gas_3019"
  call void @_out_of_gas()
  br label %"$have_gas_3024"

"$have_gas_3024":                                 ; preds = %"$out_of_gas_3023", %"$have_gas_3019"
  %"$consume_3025" = sub i64 %"$gasrem_3021", 1
  store i64 %"$consume_3025", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_59" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3026" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3027" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3026", 0
  %"$ud-registry.recordMemberOwner_envptr_3028" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3026", 1
  %"$maybeRecord_3029" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3030" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3027"(i8* %"$ud-registry.recordMemberOwner_envptr_3028", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3030", %TName_Option_ud-registry.Record* %"$maybeRecord_3029")
  %"$ud-registry.recordMemberOwner_ret_3031" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3030", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3031", [20 x i8]* %"$ud-registry.recordMemberOwner_59", align 1
  %"$$ud-registry.recordMemberOwner_59_3032" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_59", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_59_3032", [20 x i8]* %recordOwner, align 1
  %"$gasrem_3033" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3034" = icmp ugt i64 1, %"$gasrem_3033"
  br i1 %"$gascmp_3034", label %"$out_of_gas_3035", label %"$have_gas_3036"

"$out_of_gas_3035":                               ; preds = %"$have_gas_3024"
  call void @_out_of_gas()
  br label %"$have_gas_3036"

"$have_gas_3036":                                 ; preds = %"$out_of_gas_3035", %"$have_gas_3024"
  %"$consume_3037" = sub i64 %"$gasrem_3033", 1
  store i64 %"$consume_3037", i64* @_gasrem, align 8
  %isSenderNodeOwner = alloca %TName_Bool*, align 8
  %"$gasrem_3038" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3039" = icmp ugt i64 20, %"$gasrem_3038"
  br i1 %"$gascmp_3039", label %"$out_of_gas_3040", label %"$have_gas_3041"

"$out_of_gas_3040":                               ; preds = %"$have_gas_3036"
  call void @_out_of_gas()
  br label %"$have_gas_3041"

"$have_gas_3041":                                 ; preds = %"$out_of_gas_3040", %"$have_gas_3036"
  %"$consume_3042" = sub i64 %"$gasrem_3038", 20
  store i64 %"$consume_3042", i64* @_gasrem, align 8
  %"$execptr_load_3043" = load i8*, i8** @_execptr, align 8
  %"$eq__sender_3044" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_3044", align 1
  %"$$eq__sender_3044_3045" = bitcast [20 x i8]* %"$eq__sender_3044" to i8*
  %"$eq_recordOwner_3046" = alloca [20 x i8], align 1
  %"$recordOwner_3047" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3047", [20 x i8]* %"$eq_recordOwner_3046", align 1
  %"$$eq_recordOwner_3046_3048" = bitcast [20 x i8]* %"$eq_recordOwner_3046" to i8*
  %"$eq_call_3049" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_3043", i32 20, i8* %"$$eq__sender_3044_3045", i8* %"$$eq_recordOwner_3046_3048")
  store %TName_Bool* %"$eq_call_3049", %TName_Bool** %isSenderNodeOwner, align 8
  %"$gasrem_3051" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3052" = icmp ugt i64 2, %"$gasrem_3051"
  br i1 %"$gascmp_3052", label %"$out_of_gas_3053", label %"$have_gas_3054"

"$out_of_gas_3053":                               ; preds = %"$have_gas_3041"
  call void @_out_of_gas()
  br label %"$have_gas_3054"

"$have_gas_3054":                                 ; preds = %"$out_of_gas_3053", %"$have_gas_3041"
  %"$consume_3055" = sub i64 %"$gasrem_3051", 2
  store i64 %"$consume_3055", i64* @_gasrem, align 8
  %"$isSenderNodeOwner_3057" = load %TName_Bool*, %TName_Bool** %isSenderNodeOwner, align 8
  %"$isSenderNodeOwner_tag_3058" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderNodeOwner_3057", i32 0, i32 0
  %"$isSenderNodeOwner_tag_3059" = load i8, i8* %"$isSenderNodeOwner_tag_3058", align 1
  switch i8 %"$isSenderNodeOwner_tag_3059", label %"$empty_default_3060" [
    i8 0, label %"$True_3061"
    i8 1, label %"$False_3199"
  ]

"$True_3061":                                     ; preds = %"$have_gas_3054"
  %"$isSenderNodeOwner_3062" = bitcast %TName_Bool* %"$isSenderNodeOwner_3057" to %CName_True*
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3063_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3063_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3063_salloc_load", i64 32)
  %"$indices_buf_3063_salloc" = bitcast i8* %"$indices_buf_3063_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3063" = bitcast [32 x i8]* %"$indices_buf_3063_salloc" to i8*
  %"$indices_gep_3064" = getelementptr i8, i8* %"$indices_buf_3063", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3064" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_3066" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_3067" = call i8* @_fetch_field(i8* %"$execptr_load_3066", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3065", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_3063", i32 1)
  %"$maybeApproved_3068" = bitcast i8* %"$maybeApproved_call_3067" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3068", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3069" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3069_3070" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3069" to i8*
  %"$_literal_cost_call_3071" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_3069_3070")
  %"$gasadd_3072" = add i64 %"$_literal_cost_call_3071", 0
  %"$gasadd_3073" = add i64 %"$gasadd_3072", 1
  %"$gasrem_3074" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3075" = icmp ugt i64 %"$gasadd_3073", %"$gasrem_3074"
  br i1 %"$gascmp_3075", label %"$out_of_gas_3076", label %"$have_gas_3077"

"$out_of_gas_3076":                               ; preds = %"$True_3061"
  call void @_out_of_gas()
  br label %"$have_gas_3077"

"$have_gas_3077":                                 ; preds = %"$out_of_gas_3076", %"$True_3061"
  %"$consume_3078" = sub i64 %"$gasrem_3074", %"$gasadd_3073"
  store i64 %"$consume_3078", i64* @_gasrem, align 8
  %"$gasrem_3079" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3080" = icmp ugt i64 1, %"$gasrem_3079"
  br i1 %"$gascmp_3080", label %"$out_of_gas_3081", label %"$have_gas_3082"

"$out_of_gas_3081":                               ; preds = %"$have_gas_3077"
  call void @_out_of_gas()
  br label %"$have_gas_3082"

"$have_gas_3082":                                 ; preds = %"$out_of_gas_3081", %"$have_gas_3077"
  %"$consume_3083" = sub i64 %"$gasrem_3079", 1
  store i64 %"$consume_3083", i64* @_gasrem, align 8
  %currentlyApproved = alloca [20 x i8], align 1
  %"$gasrem_3084" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3085" = icmp ugt i64 2, %"$gasrem_3084"
  br i1 %"$gascmp_3085", label %"$out_of_gas_3086", label %"$have_gas_3087"

"$out_of_gas_3086":                               ; preds = %"$have_gas_3082"
  call void @_out_of_gas()
  br label %"$have_gas_3087"

"$have_gas_3087":                                 ; preds = %"$out_of_gas_3086", %"$have_gas_3082"
  %"$consume_3088" = sub i64 %"$gasrem_3084", 2
  store i64 %"$consume_3088", i64* @_gasrem, align 8
  %"$maybeApproved_3090" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_3091" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_3090", i32 0, i32 0
  %"$maybeApproved_tag_3092" = load i8, i8* %"$maybeApproved_tag_3091", align 1
  switch i8 %"$maybeApproved_tag_3092", label %"$empty_default_3093" [
    i8 1, label %"$None_3094"
    i8 0, label %"$Some_3102"
  ]

"$None_3094":                                     ; preds = %"$have_gas_3087"
  %"$maybeApproved_3095" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3090" to %CName_None_ByStr20*
  %"$gasrem_3096" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3097" = icmp ugt i64 1, %"$gasrem_3096"
  br i1 %"$gascmp_3097", label %"$out_of_gas_3098", label %"$have_gas_3099"

"$out_of_gas_3098":                               ; preds = %"$None_3094"
  call void @_out_of_gas()
  br label %"$have_gas_3099"

"$have_gas_3099":                                 ; preds = %"$out_of_gas_3098", %"$None_3094"
  %"$consume_3100" = sub i64 %"$gasrem_3096", 1
  store i64 %"$consume_3100", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_3101" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_3101", [20 x i8]* %currentlyApproved, align 1
  br label %"$matchsucc_3089"

"$Some_3102":                                     ; preds = %"$have_gas_3087"
  %"$maybeApproved_3103" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3090" to %CName_Some_ByStr20*
  %"$approved_gep_3104" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_3103", i32 0, i32 1
  %"$approved_load_3105" = load [20 x i8], [20 x i8]* %"$approved_gep_3104", align 1
  %approved = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_3105", [20 x i8]* %approved, align 1
  %"$gasrem_3106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3107" = icmp ugt i64 1, %"$gasrem_3106"
  br i1 %"$gascmp_3107", label %"$out_of_gas_3108", label %"$have_gas_3109"

"$out_of_gas_3108":                               ; preds = %"$Some_3102"
  call void @_out_of_gas()
  br label %"$have_gas_3109"

"$have_gas_3109":                                 ; preds = %"$out_of_gas_3108", %"$Some_3102"
  %"$consume_3110" = sub i64 %"$gasrem_3106", 1
  store i64 %"$consume_3110", i64* @_gasrem, align 8
  %"$approved_3111" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_3111", [20 x i8]* %currentlyApproved, align 1
  br label %"$matchsucc_3089"

"$empty_default_3093":                            ; preds = %"$have_gas_3087"
  br label %"$matchsucc_3089"

"$matchsucc_3089":                                ; preds = %"$have_gas_3109", %"$have_gas_3099", %"$empty_default_3093"
  %"$gasrem_3112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3113" = icmp ugt i64 1, %"$gasrem_3112"
  br i1 %"$gascmp_3113", label %"$out_of_gas_3114", label %"$have_gas_3115"

"$out_of_gas_3114":                               ; preds = %"$matchsucc_3089"
  call void @_out_of_gas()
  br label %"$have_gas_3115"

"$have_gas_3115":                                 ; preds = %"$out_of_gas_3114", %"$matchsucc_3089"
  %"$consume_3116" = sub i64 %"$gasrem_3112", 1
  store i64 %"$consume_3116", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_3117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3118" = icmp ugt i64 1, %"$gasrem_3117"
  br i1 %"$gascmp_3118", label %"$out_of_gas_3119", label %"$have_gas_3120"

"$out_of_gas_3119":                               ; preds = %"$have_gas_3115"
  call void @_out_of_gas()
  br label %"$have_gas_3120"

"$have_gas_3120":                                 ; preds = %"$out_of_gas_3119", %"$have_gas_3115"
  %"$consume_3121" = sub i64 %"$gasrem_3117", 1
  store i64 %"$consume_3121", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_3122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3123" = icmp ugt i64 20, %"$gasrem_3122"
  br i1 %"$gascmp_3123", label %"$out_of_gas_3124", label %"$have_gas_3125"

"$out_of_gas_3124":                               ; preds = %"$have_gas_3120"
  call void @_out_of_gas()
  br label %"$have_gas_3125"

"$have_gas_3125":                                 ; preds = %"$out_of_gas_3124", %"$have_gas_3120"
  %"$consume_3126" = sub i64 %"$gasrem_3122", 20
  store i64 %"$consume_3126", i64* @_gasrem, align 8
  %"$execptr_load_3127" = load i8*, i8** @_execptr, align 8
  %"$eq_currentlyApproved_3128" = alloca [20 x i8], align 1
  %"$currentlyApproved_3129" = load [20 x i8], [20 x i8]* %currentlyApproved, align 1
  store [20 x i8] %"$currentlyApproved_3129", [20 x i8]* %"$eq_currentlyApproved_3128", align 1
  %"$$eq_currentlyApproved_3128_3130" = bitcast [20 x i8]* %"$eq_currentlyApproved_3128" to i8*
  %"$eq_address_3131" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$eq_address_3131", align 1
  %"$$eq_address_3131_3132" = bitcast [20 x i8]* %"$eq_address_3131" to i8*
  %"$eq_call_3133" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_3127", i32 20, i8* %"$$eq_currentlyApproved_3128_3130", i8* %"$$eq_address_3131_3132")
  store %TName_Bool* %"$eq_call_3133", %TName_Bool** %b, align 8
  %"$gasrem_3135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3136" = icmp ugt i64 1, %"$gasrem_3135"
  br i1 %"$gascmp_3136", label %"$out_of_gas_3137", label %"$have_gas_3138"

"$out_of_gas_3137":                               ; preds = %"$have_gas_3125"
  call void @_out_of_gas()
  br label %"$have_gas_3138"

"$have_gas_3138":                                 ; preds = %"$out_of_gas_3137", %"$have_gas_3125"
  %"$consume_3139" = sub i64 %"$gasrem_3135", 1
  store i64 %"$consume_3139", i64* @_gasrem, align 8
  %"$BoolUtils.negb_57" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_3140" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_3141" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_3140", 0
  %"$BoolUtils.negb_envptr_3142" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_3140", 1
  %"$b_3143" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$BoolUtils.negb_call_3144" = call %TName_Bool* %"$BoolUtils.negb_fptr_3141"(i8* %"$BoolUtils.negb_envptr_3142", %TName_Bool* %"$b_3143")
  store %TName_Bool* %"$BoolUtils.negb_call_3144", %TName_Bool** %"$BoolUtils.negb_57", align 8
  %"$$BoolUtils.negb_57_3145" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_57", align 8
  store %TName_Bool* %"$$BoolUtils.negb_57_3145", %TName_Bool** %needsToChange, align 8
  %"$gasrem_3146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3147" = icmp ugt i64 2, %"$gasrem_3146"
  br i1 %"$gascmp_3147", label %"$out_of_gas_3148", label %"$have_gas_3149"

"$out_of_gas_3148":                               ; preds = %"$have_gas_3138"
  call void @_out_of_gas()
  br label %"$have_gas_3149"

"$have_gas_3149":                                 ; preds = %"$out_of_gas_3148", %"$have_gas_3138"
  %"$consume_3150" = sub i64 %"$gasrem_3146", 2
  store i64 %"$consume_3150", i64* @_gasrem, align 8
  %"$needsToChange_3152" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_3153" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_3152", i32 0, i32 0
  %"$needsToChange_tag_3154" = load i8, i8* %"$needsToChange_tag_3153", align 1
  switch i8 %"$needsToChange_tag_3154", label %"$default_3155" [
    i8 0, label %"$True_3156"
  ]

"$True_3156":                                     ; preds = %"$have_gas_3149"
  %"$needsToChange_3157" = bitcast %TName_Bool* %"$needsToChange_3152" to %CName_True*
  %"$_literal_cost_address_3158" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$_literal_cost_address_3158", align 1
  %"$$_literal_cost_address_3158_3159" = bitcast [20 x i8]* %"$_literal_cost_address_3158" to i8*
  %"$_literal_cost_call_3160" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i8* %"$$_literal_cost_address_3158_3159")
  %"$gasadd_3161" = add i64 %"$_literal_cost_call_3160", 1
  %"$gasrem_3162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3163" = icmp ugt i64 %"$gasadd_3161", %"$gasrem_3162"
  br i1 %"$gascmp_3163", label %"$out_of_gas_3164", label %"$have_gas_3165"

"$out_of_gas_3164":                               ; preds = %"$True_3156"
  call void @_out_of_gas()
  br label %"$have_gas_3165"

"$have_gas_3165":                                 ; preds = %"$out_of_gas_3164", %"$True_3156"
  %"$consume_3166" = sub i64 %"$gasrem_3162", %"$gasadd_3161"
  store i64 %"$consume_3166", i64* @_gasrem, align 8
  %"$indices_buf_3167_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3167_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3167_salloc_load", i64 32)
  %"$indices_buf_3167_salloc" = bitcast i8* %"$indices_buf_3167_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3167" = bitcast [32 x i8]* %"$indices_buf_3167_salloc" to i8*
  %"$indices_gep_3168" = getelementptr i8, i8* %"$indices_buf_3167", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3168" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast2, align 1
  %"$execptr_load_3169" = load i8*, i8** @_execptr, align 8
  %"$update_value_3171" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$update_value_3171", align 1
  %"$update_value_3172" = bitcast [20 x i8]* %"$update_value_3171" to i8*
  call void @_update_field(i8* %"$execptr_load_3169", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3170", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_3167", i8* %"$update_value_3172")
  %"$gasrem_3173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3174" = icmp ugt i64 1, %"$gasrem_3173"
  br i1 %"$gascmp_3174", label %"$out_of_gas_3175", label %"$have_gas_3176"

"$out_of_gas_3175":                               ; preds = %"$have_gas_3165"
  call void @_out_of_gas()
  br label %"$have_gas_3176"

"$have_gas_3176":                                 ; preds = %"$out_of_gas_3175", %"$have_gas_3165"
  %"$consume_3177" = sub i64 %"$gasrem_3173", 1
  store i64 %"$consume_3177", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3179" = icmp ugt i64 1, %"$gasrem_3178"
  br i1 %"$gascmp_3179", label %"$out_of_gas_3180", label %"$have_gas_3181"

"$out_of_gas_3180":                               ; preds = %"$have_gas_3176"
  call void @_out_of_gas()
  br label %"$have_gas_3181"

"$have_gas_3181":                                 ; preds = %"$out_of_gas_3180", %"$have_gas_3176"
  %"$consume_3182" = sub i64 %"$gasrem_3178", 1
  store i64 %"$consume_3182", i64* @_gasrem, align 8
  %"$ud-registry.eApproved_56" = alloca i8*, align 8
  %"$ud-registry.eApproved_3183" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApproved, align 8
  %"$ud-registry.eApproved_fptr_3184" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApproved_3183", 0
  %"$ud-registry.eApproved_envptr_3185" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApproved_3183", 1
  %"$ud-registry.eApproved_address_3186" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eApproved_address_3186", align 1
  %"$ud-registry.eApproved_call_3187" = call i8* %"$ud-registry.eApproved_fptr_3184"(i8* %"$ud-registry.eApproved_envptr_3185", [20 x i8]* %"$ud-registry.eApproved_address_3186")
  store i8* %"$ud-registry.eApproved_call_3187", i8** %"$ud-registry.eApproved_56", align 8
  %"$$ud-registry.eApproved_56_3188" = load i8*, i8** %"$ud-registry.eApproved_56", align 8
  store i8* %"$$ud-registry.eApproved_56_3188", i8** %e, align 8
  %"$e_3189" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3191" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3189")
  %"$gasrem_3192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3193" = icmp ugt i64 %"$_literal_cost_call_3191", %"$gasrem_3192"
  br i1 %"$gascmp_3193", label %"$out_of_gas_3194", label %"$have_gas_3195"

"$out_of_gas_3194":                               ; preds = %"$have_gas_3181"
  call void @_out_of_gas()
  br label %"$have_gas_3195"

"$have_gas_3195":                                 ; preds = %"$out_of_gas_3194", %"$have_gas_3181"
  %"$consume_3196" = sub i64 %"$gasrem_3192", %"$_literal_cost_call_3191"
  store i64 %"$consume_3196", i64* @_gasrem, align 8
  %"$execptr_load_3197" = load i8*, i8** @_execptr, align 8
  %"$e_3198" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3197", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3198")
  br label %"$matchsucc_3151"

"$default_3155":                                  ; preds = %"$have_gas_3149"
  br label %"$joinp_5"

"$joinp_5":                                       ; preds = %"$default_3155"
  br label %"$matchsucc_3151"

"$matchsucc_3151":                                ; preds = %"$have_gas_3195", %"$joinp_5"
  br label %"$matchsucc_3056"

"$False_3199":                                    ; preds = %"$have_gas_3054"
  %"$isSenderNodeOwner_3200" = bitcast %TName_Bool* %"$isSenderNodeOwner_3057" to %CName_False*
  %"$gasrem_3201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3202" = icmp ugt i64 1, %"$gasrem_3201"
  br i1 %"$gascmp_3202", label %"$out_of_gas_3203", label %"$have_gas_3204"

"$out_of_gas_3203":                               ; preds = %"$False_3199"
  call void @_out_of_gas()
  br label %"$have_gas_3204"

"$have_gas_3204":                                 ; preds = %"$out_of_gas_3203", %"$False_3199"
  %"$consume_3205" = sub i64 %"$gasrem_3201", 1
  store i64 %"$consume_3205", i64* @_gasrem, align 8
  %e3 = alloca i8*, align 8
  %"$gasrem_3206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3207" = icmp ugt i64 1, %"$gasrem_3206"
  br i1 %"$gascmp_3207", label %"$out_of_gas_3208", label %"$have_gas_3209"

"$out_of_gas_3208":                               ; preds = %"$have_gas_3204"
  call void @_out_of_gas()
  br label %"$have_gas_3209"

"$have_gas_3209":                                 ; preds = %"$out_of_gas_3208", %"$have_gas_3204"
  %"$consume_3210" = sub i64 %"$gasrem_3206", 1
  store i64 %"$consume_3210", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_3211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3212" = icmp ugt i64 1, %"$gasrem_3211"
  br i1 %"$gascmp_3212", label %"$out_of_gas_3213", label %"$have_gas_3214"

"$out_of_gas_3213":                               ; preds = %"$have_gas_3209"
  call void @_out_of_gas()
  br label %"$have_gas_3214"

"$have_gas_3214":                                 ; preds = %"$out_of_gas_3213", %"$have_gas_3209"
  %"$consume_3215" = sub i64 %"$gasrem_3211", 1
  store i64 %"$consume_3215", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_3216", i32 0, i32 0), i32 21 }, %String* %m, align 8
  %"$gasrem_3217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3218" = icmp ugt i64 1, %"$gasrem_3217"
  br i1 %"$gascmp_3218", label %"$out_of_gas_3219", label %"$have_gas_3220"

"$out_of_gas_3219":                               ; preds = %"$have_gas_3214"
  call void @_out_of_gas()
  br label %"$have_gas_3220"

"$have_gas_3220":                                 ; preds = %"$out_of_gas_3219", %"$have_gas_3214"
  %"$consume_3221" = sub i64 %"$gasrem_3217", 1
  store i64 %"$consume_3221", i64* @_gasrem, align 8
  %"$ud-registry.eError_58" = alloca i8*, align 8
  %"$ud-registry.eError_3222" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3223" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3222", 0
  %"$ud-registry.eError_envptr_3224" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3222", 1
  %"$m_3225" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_3226" = call i8* %"$ud-registry.eError_fptr_3223"(i8* %"$ud-registry.eError_envptr_3224", %String %"$m_3225")
  store i8* %"$ud-registry.eError_call_3226", i8** %"$ud-registry.eError_58", align 8
  %"$$ud-registry.eError_58_3227" = load i8*, i8** %"$ud-registry.eError_58", align 8
  store i8* %"$$ud-registry.eError_58_3227", i8** %e3, align 8
  %"$e_3228" = load i8*, i8** %e3, align 8
  %"$_literal_cost_call_3230" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3228")
  %"$gasrem_3231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3232" = icmp ugt i64 %"$_literal_cost_call_3230", %"$gasrem_3231"
  br i1 %"$gascmp_3232", label %"$out_of_gas_3233", label %"$have_gas_3234"

"$out_of_gas_3233":                               ; preds = %"$have_gas_3220"
  call void @_out_of_gas()
  br label %"$have_gas_3234"

"$have_gas_3234":                                 ; preds = %"$out_of_gas_3233", %"$have_gas_3220"
  %"$consume_3235" = sub i64 %"$gasrem_3231", %"$_literal_cost_call_3230"
  store i64 %"$consume_3235", i64* @_gasrem, align 8
  %"$execptr_load_3236" = load i8*, i8** @_execptr, align 8
  %"$e_3237" = load i8*, i8** %e3, align 8
  call void @_event(i8* %"$execptr_load_3236", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3237")
  br label %"$matchsucc_3056"

"$empty_default_3060":                            ; preds = %"$have_gas_3054"
  br label %"$matchsucc_3056"

"$matchsucc_3056":                                ; preds = %"$have_gas_3234", %"$matchsucc_3151", %"$empty_default_3060"
  ret void
}

define void @approve(i8* %0) {
entry:
  %"$_amount_3239" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3240" = bitcast i8* %"$_amount_3239" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3240", align 8
  %"$_origin_3241" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3242" = bitcast i8* %"$_origin_3241" to [20 x i8]*
  %"$_sender_3243" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3244" = bitcast i8* %"$_sender_3243" to [20 x i8]*
  %"$node_3245" = getelementptr i8, i8* %0, i32 56
  %"$node_3246" = bitcast i8* %"$node_3245" to [32 x i8]*
  %"$address_3247" = getelementptr i8, i8* %0, i32 88
  %"$address_3248" = bitcast i8* %"$address_3247" to [20 x i8]*
  call void @"$approve_2995"(%Uint128 %_amount, [20 x i8]* %"$_origin_3242", [20 x i8]* %"$_sender_3244", [32 x i8]* %"$node_3246", [20 x i8]* %"$address_3248")
  ret void
}

define internal void @"$approveFor_3249"(%Uint128 %_amount, [20 x i8]* %"$_origin_3250", [20 x i8]* %"$_sender_3251", [20 x i8]* %"$address_3252", %TName_Bool* %isApproved) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3250", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3251", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_3252", align 1
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3253_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3253_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3253_salloc_load", i64 20)
  %"$indices_buf_3253_salloc" = bitcast i8* %"$indices_buf_3253_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3253" = bitcast [20 x i8]* %"$indices_buf_3253_salloc" to i8*
  %"$indices_gep_3254" = getelementptr i8, i8* %"$indices_buf_3253", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3254" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_3256" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3257" = call i8* @_fetch_field(i8* %"$execptr_load_3256", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3255", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_3253", i32 1)
  %"$maybeOperators_3258" = bitcast i8* %"$maybeOperators_call_3257" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3258", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3259" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3259_3260" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3259" to i8*
  %"$_literal_cost_call_3261" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", i8* %"$$maybeOperators_3259_3260")
  %"$gasadd_3262" = add i64 %"$_literal_cost_call_3261", 0
  %"$gasadd_3263" = add i64 %"$gasadd_3262", 1
  %"$gasrem_3264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3265" = icmp ugt i64 %"$gasadd_3263", %"$gasrem_3264"
  br i1 %"$gascmp_3265", label %"$out_of_gas_3266", label %"$have_gas_3267"

"$out_of_gas_3266":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3267"

"$have_gas_3267":                                 ; preds = %"$out_of_gas_3266", %entry
  %"$consume_3268" = sub i64 %"$gasrem_3264", %"$gasadd_3263"
  store i64 %"$consume_3268", i64* @_gasrem, align 8
  %"$gasrem_3269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3270" = icmp ugt i64 1, %"$gasrem_3269"
  br i1 %"$gascmp_3270", label %"$out_of_gas_3271", label %"$have_gas_3272"

"$out_of_gas_3271":                               ; preds = %"$have_gas_3267"
  call void @_out_of_gas()
  br label %"$have_gas_3272"

"$have_gas_3272":                                 ; preds = %"$out_of_gas_3271", %"$have_gas_3267"
  %"$consume_3273" = sub i64 %"$gasrem_3269", 1
  store i64 %"$consume_3273", i64* @_gasrem, align 8
  %currentOperators = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_3274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3275" = icmp ugt i64 2, %"$gasrem_3274"
  br i1 %"$gascmp_3275", label %"$out_of_gas_3276", label %"$have_gas_3277"

"$out_of_gas_3276":                               ; preds = %"$have_gas_3272"
  call void @_out_of_gas()
  br label %"$have_gas_3277"

"$have_gas_3277":                                 ; preds = %"$out_of_gas_3276", %"$have_gas_3272"
  %"$consume_3278" = sub i64 %"$gasrem_3274", 2
  store i64 %"$consume_3278", i64* @_gasrem, align 8
  %"$maybeOperators_3280" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_tag_3281" = getelementptr inbounds %"TName_Option_List_(ByStr20)", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3280", i32 0, i32 0
  %"$maybeOperators_tag_3282" = load i8, i8* %"$maybeOperators_tag_3281", align 1
  switch i8 %"$maybeOperators_tag_3282", label %"$empty_default_3283" [
    i8 1, label %"$None_3284"
    i8 0, label %"$Some_3292"
  ]

"$None_3284":                                     ; preds = %"$have_gas_3277"
  %"$maybeOperators_3285" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3280" to %"CName_None_List_(ByStr20)"*
  %"$gasrem_3286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3287" = icmp ugt i64 1, %"$gasrem_3286"
  br i1 %"$gascmp_3287", label %"$out_of_gas_3288", label %"$have_gas_3289"

"$out_of_gas_3288":                               ; preds = %"$None_3284"
  call void @_out_of_gas()
  br label %"$have_gas_3289"

"$have_gas_3289":                                 ; preds = %"$out_of_gas_3288", %"$None_3284"
  %"$consume_3290" = sub i64 %"$gasrem_3286", 1
  store i64 %"$consume_3290", i64* @_gasrem, align 8
  %"$ud-registry.nilByStr20_3291" = load %TName_List_ByStr20*, %TName_List_ByStr20** @ud-registry.nilByStr20, align 8
  store %TName_List_ByStr20* %"$ud-registry.nilByStr20_3291", %TName_List_ByStr20** %currentOperators, align 8
  br label %"$matchsucc_3279"

"$Some_3292":                                     ; preds = %"$have_gas_3277"
  %"$maybeOperators_3293" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3280" to %"CName_Some_List_(ByStr20)"*
  %"$ops_gep_3294" = getelementptr inbounds %"CName_Some_List_(ByStr20)", %"CName_Some_List_(ByStr20)"* %"$maybeOperators_3293", i32 0, i32 1
  %"$ops_load_3295" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ops_gep_3294", align 8
  %ops = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$ops_load_3295", %TName_List_ByStr20** %ops, align 8
  %"$gasrem_3296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3297" = icmp ugt i64 1, %"$gasrem_3296"
  br i1 %"$gascmp_3297", label %"$out_of_gas_3298", label %"$have_gas_3299"

"$out_of_gas_3298":                               ; preds = %"$Some_3292"
  call void @_out_of_gas()
  br label %"$have_gas_3299"

"$have_gas_3299":                                 ; preds = %"$out_of_gas_3298", %"$Some_3292"
  %"$consume_3300" = sub i64 %"$gasrem_3296", 1
  store i64 %"$consume_3300", i64* @_gasrem, align 8
  %"$ops_3301" = load %TName_List_ByStr20*, %TName_List_ByStr20** %ops, align 8
  store %TName_List_ByStr20* %"$ops_3301", %TName_List_ByStr20** %currentOperators, align 8
  br label %"$matchsucc_3279"

"$empty_default_3283":                            ; preds = %"$have_gas_3277"
  br label %"$matchsucc_3279"

"$matchsucc_3279":                                ; preds = %"$have_gas_3299", %"$have_gas_3289", %"$empty_default_3283"
  %"$gasrem_3302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3303" = icmp ugt i64 1, %"$gasrem_3302"
  br i1 %"$gascmp_3303", label %"$out_of_gas_3304", label %"$have_gas_3305"

"$out_of_gas_3304":                               ; preds = %"$matchsucc_3279"
  call void @_out_of_gas()
  br label %"$have_gas_3305"

"$have_gas_3305":                                 ; preds = %"$out_of_gas_3304", %"$matchsucc_3279"
  %"$consume_3306" = sub i64 %"$gasrem_3302", 1
  store i64 %"$consume_3306", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_3307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3308" = icmp ugt i64 1, %"$gasrem_3307"
  br i1 %"$gascmp_3308", label %"$out_of_gas_3309", label %"$have_gas_3310"

"$out_of_gas_3309":                               ; preds = %"$have_gas_3305"
  call void @_out_of_gas()
  br label %"$have_gas_3310"

"$have_gas_3310":                                 ; preds = %"$out_of_gas_3309", %"$have_gas_3305"
  %"$consume_3311" = sub i64 %"$gasrem_3307", 1
  store i64 %"$consume_3311", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_3312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3313" = icmp ugt i64 1, %"$gasrem_3312"
  br i1 %"$gascmp_3313", label %"$out_of_gas_3314", label %"$have_gas_3315"

"$out_of_gas_3314":                               ; preds = %"$have_gas_3310"
  call void @_out_of_gas()
  br label %"$have_gas_3315"

"$have_gas_3315":                                 ; preds = %"$out_of_gas_3314", %"$have_gas_3310"
  %"$consume_3316" = sub i64 %"$gasrem_3312", 1
  store i64 %"$consume_3316", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Excludes_65" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Excludes_3317" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes, align 8
  %"$ud-registry.listByStr20Excludes_fptr_3318" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_3317", 0
  %"$ud-registry.listByStr20Excludes_envptr_3319" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_3317", 1
  %"$currentOperators_3320" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$ud-registry.listByStr20Excludes_call_3321" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_fptr_3318"(i8* %"$ud-registry.listByStr20Excludes_envptr_3319", %TName_List_ByStr20* %"$currentOperators_3320")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_call_3321", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_65", align 8
  %"$ud-registry.listByStr20Excludes_66" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Excludes_65_3322" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_65", align 8
  %"$$ud-registry.listByStr20Excludes_65_fptr_3323" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_65_3322", 0
  %"$$ud-registry.listByStr20Excludes_65_envptr_3324" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_65_3322", 1
  %"$$ud-registry.listByStr20Excludes_65_address_3325" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20Excludes_65_address_3325", align 1
  %"$$ud-registry.listByStr20Excludes_65_call_3326" = call %TName_Bool* %"$$ud-registry.listByStr20Excludes_65_fptr_3323"(i8* %"$$ud-registry.listByStr20Excludes_65_envptr_3324", [20 x i8]* %"$$ud-registry.listByStr20Excludes_65_address_3325")
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_65_call_3326", %TName_Bool** %"$ud-registry.listByStr20Excludes_66", align 8
  %"$$ud-registry.listByStr20Excludes_66_3327" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Excludes_66", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_66_3327", %TName_Bool** %b, align 8
  %"$gasrem_3328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3329" = icmp ugt i64 1, %"$gasrem_3328"
  br i1 %"$gascmp_3329", label %"$out_of_gas_3330", label %"$have_gas_3331"

"$out_of_gas_3330":                               ; preds = %"$have_gas_3315"
  call void @_out_of_gas()
  br label %"$have_gas_3331"

"$have_gas_3331":                                 ; preds = %"$out_of_gas_3330", %"$have_gas_3315"
  %"$consume_3332" = sub i64 %"$gasrem_3328", 1
  store i64 %"$consume_3332", i64* @_gasrem, align 8
  %"$ud-registry.xandb_67" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.xandb_3333" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8
  %"$ud-registry.xandb_fptr_3334" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_3333", 0
  %"$ud-registry.xandb_envptr_3335" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_3333", 1
  %"$b_3336" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$ud-registry.xandb_call_3337" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_fptr_3334"(i8* %"$ud-registry.xandb_envptr_3335", %TName_Bool* %"$b_3336")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_call_3337", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_67", align 8
  %"$ud-registry.xandb_68" = alloca %TName_Bool*, align 8
  %"$$ud-registry.xandb_67_3338" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_67", align 8
  %"$$ud-registry.xandb_67_fptr_3339" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_67_3338", 0
  %"$$ud-registry.xandb_67_envptr_3340" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_67_3338", 1
  %"$$ud-registry.xandb_67_call_3341" = call %TName_Bool* %"$$ud-registry.xandb_67_fptr_3339"(i8* %"$$ud-registry.xandb_67_envptr_3340", %TName_Bool* %isApproved)
  store %TName_Bool* %"$$ud-registry.xandb_67_call_3341", %TName_Bool** %"$ud-registry.xandb_68", align 8
  %"$$ud-registry.xandb_68_3342" = load %TName_Bool*, %TName_Bool** %"$ud-registry.xandb_68", align 8
  store %TName_Bool* %"$$ud-registry.xandb_68_3342", %TName_Bool** %needsToChange, align 8
  %"$gasrem_3343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3344" = icmp ugt i64 2, %"$gasrem_3343"
  br i1 %"$gascmp_3344", label %"$out_of_gas_3345", label %"$have_gas_3346"

"$out_of_gas_3345":                               ; preds = %"$have_gas_3331"
  call void @_out_of_gas()
  br label %"$have_gas_3346"

"$have_gas_3346":                                 ; preds = %"$out_of_gas_3345", %"$have_gas_3331"
  %"$consume_3347" = sub i64 %"$gasrem_3343", 2
  store i64 %"$consume_3347", i64* @_gasrem, align 8
  %"$needsToChange_3349" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_3350" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_3349", i32 0, i32 0
  %"$needsToChange_tag_3351" = load i8, i8* %"$needsToChange_tag_3350", align 1
  switch i8 %"$needsToChange_tag_3351", label %"$default_3352" [
    i8 0, label %"$True_3353"
  ]

"$True_3353":                                     ; preds = %"$have_gas_3346"
  %"$needsToChange_3354" = bitcast %TName_Bool* %"$needsToChange_3349" to %CName_True*
  %"$gasrem_3355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3356" = icmp ugt i64 1, %"$gasrem_3355"
  br i1 %"$gascmp_3356", label %"$out_of_gas_3357", label %"$have_gas_3358"

"$out_of_gas_3357":                               ; preds = %"$True_3353"
  call void @_out_of_gas()
  br label %"$have_gas_3358"

"$have_gas_3358":                                 ; preds = %"$out_of_gas_3357", %"$True_3353"
  %"$consume_3359" = sub i64 %"$gasrem_3355", 1
  store i64 %"$consume_3359", i64* @_gasrem, align 8
  %newOperators = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_3360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3361" = icmp ugt i64 2, %"$gasrem_3360"
  br i1 %"$gascmp_3361", label %"$out_of_gas_3362", label %"$have_gas_3363"

"$out_of_gas_3362":                               ; preds = %"$have_gas_3358"
  call void @_out_of_gas()
  br label %"$have_gas_3363"

"$have_gas_3363":                                 ; preds = %"$out_of_gas_3362", %"$have_gas_3358"
  %"$consume_3364" = sub i64 %"$gasrem_3360", 2
  store i64 %"$consume_3364", i64* @_gasrem, align 8
  %"$isApproved_tag_3366" = getelementptr inbounds %TName_Bool, %TName_Bool* %isApproved, i32 0, i32 0
  %"$isApproved_tag_3367" = load i8, i8* %"$isApproved_tag_3366", align 1
  switch i8 %"$isApproved_tag_3367", label %"$empty_default_3368" [
    i8 0, label %"$True_3369"
    i8 1, label %"$False_3382"
  ]

"$True_3369":                                     ; preds = %"$have_gas_3363"
  %"$isApproved_3370" = bitcast %TName_Bool* %isApproved to %CName_True*
  %"$gasrem_3371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3372" = icmp ugt i64 1, %"$gasrem_3371"
  br i1 %"$gascmp_3372", label %"$out_of_gas_3373", label %"$have_gas_3374"

"$out_of_gas_3373":                               ; preds = %"$True_3369"
  call void @_out_of_gas()
  br label %"$have_gas_3374"

"$have_gas_3374":                                 ; preds = %"$out_of_gas_3373", %"$True_3369"
  %"$consume_3375" = sub i64 %"$gasrem_3371", 1
  store i64 %"$consume_3375", i64* @_gasrem, align 8
  %"$currentOperators_3376" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$adtval_3377_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3377_salloc" = call i8* @_salloc(i8* %"$adtval_3377_load", i64 29)
  %"$adtval_3377" = bitcast i8* %"$adtval_3377_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_3378" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3377", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3378", align 1
  %"$adtgep_3379" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3377", i32 0, i32 1
  store [20 x i8] %address, [20 x i8]* %"$adtgep_3379", align 1
  %"$adtgep_3380" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3377", i32 0, i32 2
  store %TName_List_ByStr20* %"$currentOperators_3376", %TName_List_ByStr20** %"$adtgep_3380", align 8
  %"$adtptr_3381" = bitcast %CName_Cons_ByStr20* %"$adtval_3377" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_3381", %TName_List_ByStr20** %newOperators, align 8
  br label %"$matchsucc_3365"

"$False_3382":                                    ; preds = %"$have_gas_3363"
  %"$isApproved_3383" = bitcast %TName_Bool* %isApproved to %CName_False*
  %"$gasrem_3384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3385" = icmp ugt i64 1, %"$gasrem_3384"
  br i1 %"$gascmp_3385", label %"$out_of_gas_3386", label %"$have_gas_3387"

"$out_of_gas_3386":                               ; preds = %"$False_3382"
  call void @_out_of_gas()
  br label %"$have_gas_3387"

"$have_gas_3387":                                 ; preds = %"$out_of_gas_3386", %"$False_3382"
  %"$consume_3388" = sub i64 %"$gasrem_3384", 1
  store i64 %"$consume_3388", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20FilterOut_63" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20FilterOut_3389" = load { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8
  %"$ud-registry.listByStr20FilterOut_fptr_3390" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_3389", 0
  %"$ud-registry.listByStr20FilterOut_envptr_3391" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_3389", 1
  %"$currentOperators_3392" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$ud-registry.listByStr20FilterOut_call_3393" = call { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_fptr_3390"(i8* %"$ud-registry.listByStr20FilterOut_envptr_3391", %TName_List_ByStr20* %"$currentOperators_3392")
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_call_3393", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_63", align 8
  %"$ud-registry.listByStr20FilterOut_64" = alloca %TName_List_ByStr20*, align 8
  %"$$ud-registry.listByStr20FilterOut_63_3394" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_63", align 8
  %"$$ud-registry.listByStr20FilterOut_63_fptr_3395" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_63_3394", 0
  %"$$ud-registry.listByStr20FilterOut_63_envptr_3396" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_63_3394", 1
  %"$$ud-registry.listByStr20FilterOut_63_address_3397" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20FilterOut_63_address_3397", align 1
  %"$$ud-registry.listByStr20FilterOut_63_call_3398" = call %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_63_fptr_3395"(i8* %"$$ud-registry.listByStr20FilterOut_63_envptr_3396", [20 x i8]* %"$$ud-registry.listByStr20FilterOut_63_address_3397")
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_63_call_3398", %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_64", align 8
  %"$$ud-registry.listByStr20FilterOut_64_3399" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_64", align 8
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_64_3399", %TName_List_ByStr20** %newOperators, align 8
  br label %"$matchsucc_3365"

"$empty_default_3368":                            ; preds = %"$have_gas_3363"
  br label %"$matchsucc_3365"

"$matchsucc_3365":                                ; preds = %"$have_gas_3387", %"$have_gas_3374", %"$empty_default_3368"
  %"$newOperators_3400" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newOperators, align 8
  %"$$newOperators_3400_3401" = bitcast %TName_List_ByStr20* %"$newOperators_3400" to i8*
  %"$_literal_cost_call_3402" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i8* %"$$newOperators_3400_3401")
  %"$gasadd_3403" = add i64 %"$_literal_cost_call_3402", 1
  %"$gasrem_3404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3405" = icmp ugt i64 %"$gasadd_3403", %"$gasrem_3404"
  br i1 %"$gascmp_3405", label %"$out_of_gas_3406", label %"$have_gas_3407"

"$out_of_gas_3406":                               ; preds = %"$matchsucc_3365"
  call void @_out_of_gas()
  br label %"$have_gas_3407"

"$have_gas_3407":                                 ; preds = %"$out_of_gas_3406", %"$matchsucc_3365"
  %"$consume_3408" = sub i64 %"$gasrem_3404", %"$gasadd_3403"
  store i64 %"$consume_3408", i64* @_gasrem, align 8
  %"$indices_buf_3409_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3409_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3409_salloc_load", i64 20)
  %"$indices_buf_3409_salloc" = bitcast i8* %"$indices_buf_3409_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3409" = bitcast [20 x i8]* %"$indices_buf_3409_salloc" to i8*
  %"$indices_gep_3410" = getelementptr i8, i8* %"$indices_buf_3409", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3410" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_3411" = load i8*, i8** @_execptr, align 8
  %"$newOperators_3413" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newOperators, align 8
  %"$update_value_3414" = bitcast %TName_List_ByStr20* %"$newOperators_3413" to i8*
  call void @_update_field(i8* %"$execptr_load_3411", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3412", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_3409", i8* %"$update_value_3414")
  %"$gasrem_3415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3416" = icmp ugt i64 1, %"$gasrem_3415"
  br i1 %"$gascmp_3416", label %"$out_of_gas_3417", label %"$have_gas_3418"

"$out_of_gas_3417":                               ; preds = %"$have_gas_3407"
  call void @_out_of_gas()
  br label %"$have_gas_3418"

"$have_gas_3418":                                 ; preds = %"$out_of_gas_3417", %"$have_gas_3407"
  %"$consume_3419" = sub i64 %"$gasrem_3415", 1
  store i64 %"$consume_3419", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3421" = icmp ugt i64 1, %"$gasrem_3420"
  br i1 %"$gascmp_3421", label %"$out_of_gas_3422", label %"$have_gas_3423"

"$out_of_gas_3422":                               ; preds = %"$have_gas_3418"
  call void @_out_of_gas()
  br label %"$have_gas_3423"

"$have_gas_3423":                                 ; preds = %"$out_of_gas_3422", %"$have_gas_3418"
  %"$consume_3424" = sub i64 %"$gasrem_3420", 1
  store i64 %"$consume_3424", i64* @_gasrem, align 8
  %"$ud-registry.eApprovedFor_60" = alloca { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eApprovedFor_3425" = load { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApprovedFor, align 8
  %"$ud-registry.eApprovedFor_fptr_3426" = extractvalue { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_3425", 0
  %"$ud-registry.eApprovedFor_envptr_3427" = extractvalue { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_3425", 1
  %"$ud-registry.eApprovedFor__sender_3428" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.eApprovedFor__sender_3428", align 1
  %"$ud-registry.eApprovedFor_call_3429" = call { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_fptr_3426"(i8* %"$ud-registry.eApprovedFor_envptr_3427", [20 x i8]* %"$ud-registry.eApprovedFor__sender_3428")
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_call_3429", { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eApprovedFor_60", align 8
  %"$ud-registry.eApprovedFor_61" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$ud-registry.eApprovedFor_60_3430" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eApprovedFor_60", align 8
  %"$$ud-registry.eApprovedFor_60_fptr_3431" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eApprovedFor_60_3430", 0
  %"$$ud-registry.eApprovedFor_60_envptr_3432" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eApprovedFor_60_3430", 1
  %"$$ud-registry.eApprovedFor_60_address_3433" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.eApprovedFor_60_address_3433", align 1
  %"$$ud-registry.eApprovedFor_60_call_3434" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_60_fptr_3431"(i8* %"$$ud-registry.eApprovedFor_60_envptr_3432", [20 x i8]* %"$$ud-registry.eApprovedFor_60_address_3433")
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_60_call_3434", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eApprovedFor_61", align 8
  %"$ud-registry.eApprovedFor_62" = alloca i8*, align 8
  %"$$ud-registry.eApprovedFor_61_3435" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eApprovedFor_61", align 8
  %"$$ud-registry.eApprovedFor_61_fptr_3436" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_61_3435", 0
  %"$$ud-registry.eApprovedFor_61_envptr_3437" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_61_3435", 1
  %"$$ud-registry.eApprovedFor_61_call_3438" = call i8* %"$$ud-registry.eApprovedFor_61_fptr_3436"(i8* %"$$ud-registry.eApprovedFor_61_envptr_3437", %TName_Bool* %isApproved)
  store i8* %"$$ud-registry.eApprovedFor_61_call_3438", i8** %"$ud-registry.eApprovedFor_62", align 8
  %"$$ud-registry.eApprovedFor_62_3439" = load i8*, i8** %"$ud-registry.eApprovedFor_62", align 8
  store i8* %"$$ud-registry.eApprovedFor_62_3439", i8** %e, align 8
  %"$e_3440" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3442" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3440")
  %"$gasrem_3443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3444" = icmp ugt i64 %"$_literal_cost_call_3442", %"$gasrem_3443"
  br i1 %"$gascmp_3444", label %"$out_of_gas_3445", label %"$have_gas_3446"

"$out_of_gas_3445":                               ; preds = %"$have_gas_3423"
  call void @_out_of_gas()
  br label %"$have_gas_3446"

"$have_gas_3446":                                 ; preds = %"$out_of_gas_3445", %"$have_gas_3423"
  %"$consume_3447" = sub i64 %"$gasrem_3443", %"$_literal_cost_call_3442"
  store i64 %"$consume_3447", i64* @_gasrem, align 8
  %"$execptr_load_3448" = load i8*, i8** @_execptr, align 8
  %"$e_3449" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3448", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3449")
  br label %"$matchsucc_3348"

"$default_3352":                                  ; preds = %"$have_gas_3346"
  br label %"$joinp_6"

"$joinp_6":                                       ; preds = %"$default_3352"
  br label %"$matchsucc_3348"

"$matchsucc_3348":                                ; preds = %"$have_gas_3446", %"$joinp_6"
  ret void
}

define void @approveFor(i8* %0) {
entry:
  %"$_amount_3451" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3452" = bitcast i8* %"$_amount_3451" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3452", align 8
  %"$_origin_3453" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3454" = bitcast i8* %"$_origin_3453" to [20 x i8]*
  %"$_sender_3455" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3456" = bitcast i8* %"$_sender_3455" to [20 x i8]*
  %"$address_3457" = getelementptr i8, i8* %0, i32 56
  %"$address_3458" = bitcast i8* %"$address_3457" to [20 x i8]*
  %"$isApproved_3459" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_3460" = bitcast i8* %"$isApproved_3459" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_3460", align 8
  call void @"$approveFor_3249"(%Uint128 %_amount, [20 x i8]* %"$_origin_3454", [20 x i8]* %"$_sender_3456", [20 x i8]* %"$address_3458", %TName_Bool* %isApproved)
  ret void
}

define internal void @"$configureNode_3461"(%Uint128 %_amount, [20 x i8]* %"$_origin_3462", [20 x i8]* %"$_sender_3463", [32 x i8]* %"$node_3464", [20 x i8]* %"$owner_3465", [20 x i8]* %"$resolver_3466") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3462", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3463", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_3464", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_3465", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_3466", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3467_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3467_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3467_salloc_load", i64 32)
  %"$indices_buf_3467_salloc" = bitcast i8* %"$indices_buf_3467_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3467" = bitcast [32 x i8]* %"$indices_buf_3467_salloc" to i8*
  %"$indices_gep_3468" = getelementptr i8, i8* %"$indices_buf_3467", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3468" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3470" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_3471" = call i8* @_fetch_field(i8* %"$execptr_load_3470", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3469", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_3467", i32 1)
  %"$maybeRecord_3472" = bitcast i8* %"$maybeRecord_call_3471" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3472", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3473" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3473_3474" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3473" to i8*
  %"$_literal_cost_call_3475" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_3473_3474")
  %"$gasadd_3476" = add i64 %"$_literal_cost_call_3475", 0
  %"$gasadd_3477" = add i64 %"$gasadd_3476", 1
  %"$gasrem_3478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3479" = icmp ugt i64 %"$gasadd_3477", %"$gasrem_3478"
  br i1 %"$gascmp_3479", label %"$out_of_gas_3480", label %"$have_gas_3481"

"$out_of_gas_3480":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3481"

"$have_gas_3481":                                 ; preds = %"$out_of_gas_3480", %entry
  %"$consume_3482" = sub i64 %"$gasrem_3478", %"$gasadd_3477"
  store i64 %"$consume_3482", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3483_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3483_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3483_salloc_load", i64 32)
  %"$indices_buf_3483_salloc" = bitcast i8* %"$indices_buf_3483_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3483" = bitcast [32 x i8]* %"$indices_buf_3483_salloc" to i8*
  %"$indices_gep_3484" = getelementptr i8, i8* %"$indices_buf_3483", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3484" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_3486" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_3487" = call i8* @_fetch_field(i8* %"$execptr_load_3486", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3485", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_3483", i32 1)
  %"$maybeApproved_3488" = bitcast i8* %"$maybeApproved_call_3487" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3488", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3489" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3489_3490" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3489" to i8*
  %"$_literal_cost_call_3491" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_3489_3490")
  %"$gasadd_3492" = add i64 %"$_literal_cost_call_3491", 0
  %"$gasadd_3493" = add i64 %"$gasadd_3492", 1
  %"$gasrem_3494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3495" = icmp ugt i64 %"$gasadd_3493", %"$gasrem_3494"
  br i1 %"$gascmp_3495", label %"$out_of_gas_3496", label %"$have_gas_3497"

"$out_of_gas_3496":                               ; preds = %"$have_gas_3481"
  call void @_out_of_gas()
  br label %"$have_gas_3497"

"$have_gas_3497":                                 ; preds = %"$out_of_gas_3496", %"$have_gas_3481"
  %"$consume_3498" = sub i64 %"$gasrem_3494", %"$gasadd_3493"
  store i64 %"$consume_3498", i64* @_gasrem, align 8
  %"$gasrem_3499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3500" = icmp ugt i64 1, %"$gasrem_3499"
  br i1 %"$gascmp_3500", label %"$out_of_gas_3501", label %"$have_gas_3502"

"$out_of_gas_3501":                               ; preds = %"$have_gas_3497"
  call void @_out_of_gas()
  br label %"$have_gas_3502"

"$have_gas_3502":                                 ; preds = %"$out_of_gas_3501", %"$have_gas_3497"
  %"$consume_3503" = sub i64 %"$gasrem_3499", 1
  store i64 %"$consume_3503", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3505" = icmp ugt i64 1, %"$gasrem_3504"
  br i1 %"$gascmp_3505", label %"$out_of_gas_3506", label %"$have_gas_3507"

"$out_of_gas_3506":                               ; preds = %"$have_gas_3502"
  call void @_out_of_gas()
  br label %"$have_gas_3507"

"$have_gas_3507":                                 ; preds = %"$out_of_gas_3506", %"$have_gas_3502"
  %"$consume_3508" = sub i64 %"$gasrem_3504", 1
  store i64 %"$consume_3508", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_79" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3509" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3510" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3509", 0
  %"$ud-registry.recordMemberOwner_envptr_3511" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3509", 1
  %"$maybeRecord_3512" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3513" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3510"(i8* %"$ud-registry.recordMemberOwner_envptr_3511", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3513", %TName_Option_ud-registry.Record* %"$maybeRecord_3512")
  %"$ud-registry.recordMemberOwner_ret_3514" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3513", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3514", [20 x i8]* %"$ud-registry.recordMemberOwner_79", align 1
  %"$$ud-registry.recordMemberOwner_79_3515" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_79", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_79_3515", [20 x i8]* %recordOwner, align 1
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3516_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3516_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3516_salloc_load", i64 20)
  %"$indices_buf_3516_salloc" = bitcast i8* %"$indices_buf_3516_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3516" = bitcast [20 x i8]* %"$indices_buf_3516_salloc" to i8*
  %"$recordOwner_3517" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_3518" = getelementptr i8, i8* %"$indices_buf_3516", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3518" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3517", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_3520" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3521" = call i8* @_fetch_field(i8* %"$execptr_load_3520", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3519", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_3516", i32 1)
  %"$maybeOperators_3522" = bitcast i8* %"$maybeOperators_call_3521" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3522", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3523" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3523_3524" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3523" to i8*
  %"$_literal_cost_call_3525" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", i8* %"$$maybeOperators_3523_3524")
  %"$gasadd_3526" = add i64 %"$_literal_cost_call_3525", 0
  %"$gasadd_3527" = add i64 %"$gasadd_3526", 1
  %"$gasrem_3528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3529" = icmp ugt i64 %"$gasadd_3527", %"$gasrem_3528"
  br i1 %"$gascmp_3529", label %"$out_of_gas_3530", label %"$have_gas_3531"

"$out_of_gas_3530":                               ; preds = %"$have_gas_3507"
  call void @_out_of_gas()
  br label %"$have_gas_3531"

"$have_gas_3531":                                 ; preds = %"$out_of_gas_3530", %"$have_gas_3507"
  %"$consume_3532" = sub i64 %"$gasrem_3528", %"$gasadd_3527"
  store i64 %"$consume_3532", i64* @_gasrem, align 8
  %"$gasrem_3533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3534" = icmp ugt i64 1, %"$gasrem_3533"
  br i1 %"$gascmp_3534", label %"$out_of_gas_3535", label %"$have_gas_3536"

"$out_of_gas_3535":                               ; preds = %"$have_gas_3531"
  call void @_out_of_gas()
  br label %"$have_gas_3536"

"$have_gas_3536":                                 ; preds = %"$out_of_gas_3535", %"$have_gas_3531"
  %"$consume_3537" = sub i64 %"$gasrem_3533", 1
  store i64 %"$consume_3537", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_3538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3539" = icmp ugt i64 1, %"$gasrem_3538"
  br i1 %"$gascmp_3539", label %"$out_of_gas_3540", label %"$have_gas_3541"

"$out_of_gas_3540":                               ; preds = %"$have_gas_3536"
  call void @_out_of_gas()
  br label %"$have_gas_3541"

"$have_gas_3541":                                 ; preds = %"$out_of_gas_3540", %"$have_gas_3536"
  %"$consume_3542" = sub i64 %"$gasrem_3538", 1
  store i64 %"$consume_3542", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_75" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_3543" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_3544" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3543", 0
  %"$ud-registry.getIsOAO_envptr_3545" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3543", 1
  %"$ud-registry.getIsOAO__sender_3546" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3546", align 1
  %"$ud-registry.getIsOAO_call_3547" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_3544"(i8* %"$ud-registry.getIsOAO_envptr_3545", [20 x i8]* %"$ud-registry.getIsOAO__sender_3546")
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_3547", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_75", align 8
  %"$ud-registry.getIsOAO_76" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_75_3548" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_75", align 8
  %"$$ud-registry.getIsOAO_75_fptr_3549" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_75_3548", 0
  %"$$ud-registry.getIsOAO_75_envptr_3550" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_75_3548", 1
  %"$$ud-registry.getIsOAO_75_recordOwner_3551" = alloca [20 x i8], align 1
  %"$recordOwner_3552" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3552", [20 x i8]* %"$$ud-registry.getIsOAO_75_recordOwner_3551", align 1
  %"$$ud-registry.getIsOAO_75_call_3553" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_75_fptr_3549"(i8* %"$$ud-registry.getIsOAO_75_envptr_3550", [20 x i8]* %"$$ud-registry.getIsOAO_75_recordOwner_3551")
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_75_call_3553", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_76", align 8
  %"$ud-registry.getIsOAO_77" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_76_3554" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_76", align 8
  %"$$ud-registry.getIsOAO_76_fptr_3555" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_76_3554", 0
  %"$$ud-registry.getIsOAO_76_envptr_3556" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_76_3554", 1
  %"$maybeApproved_3557" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_76_call_3558" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_76_fptr_3555"(i8* %"$$ud-registry.getIsOAO_76_envptr_3556", %TName_Option_ByStr20* %"$maybeApproved_3557")
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_76_call_3558", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_77", align 8
  %"$ud-registry.getIsOAO_78" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_77_3559" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_77", align 8
  %"$$ud-registry.getIsOAO_77_fptr_3560" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_77_3559", 0
  %"$$ud-registry.getIsOAO_77_envptr_3561" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_77_3559", 1
  %"$maybeOperators_3562" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_77_call_3563" = call %TName_Bool* %"$$ud-registry.getIsOAO_77_fptr_3560"(i8* %"$$ud-registry.getIsOAO_77_envptr_3561", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3562")
  store %TName_Bool* %"$$ud-registry.getIsOAO_77_call_3563", %TName_Bool** %"$ud-registry.getIsOAO_78", align 8
  %"$$ud-registry.getIsOAO_78_3564" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_78", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_78_3564", %TName_Bool** %isSenderOAO, align 8
  %"$gasrem_3565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3566" = icmp ugt i64 2, %"$gasrem_3565"
  br i1 %"$gascmp_3566", label %"$out_of_gas_3567", label %"$have_gas_3568"

"$out_of_gas_3567":                               ; preds = %"$have_gas_3541"
  call void @_out_of_gas()
  br label %"$have_gas_3568"

"$have_gas_3568":                                 ; preds = %"$out_of_gas_3567", %"$have_gas_3541"
  %"$consume_3569" = sub i64 %"$gasrem_3565", 2
  store i64 %"$consume_3569", i64* @_gasrem, align 8
  %"$isSenderOAO_3571" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_3572" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3571", i32 0, i32 0
  %"$isSenderOAO_tag_3573" = load i8, i8* %"$isSenderOAO_tag_3572", align 1
  switch i8 %"$isSenderOAO_tag_3573", label %"$empty_default_3574" [
    i8 0, label %"$True_3575"
    i8 1, label %"$False_3717"
  ]

"$True_3575":                                     ; preds = %"$have_gas_3568"
  %"$isSenderOAO_3576" = bitcast %TName_Bool* %"$isSenderOAO_3571" to %CName_True*
  %"$gasrem_3577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3578" = icmp ugt i64 1, %"$gasrem_3577"
  br i1 %"$gascmp_3578", label %"$out_of_gas_3579", label %"$have_gas_3580"

"$out_of_gas_3579":                               ; preds = %"$True_3575"
  call void @_out_of_gas()
  br label %"$have_gas_3580"

"$have_gas_3580":                                 ; preds = %"$out_of_gas_3579", %"$True_3575"
  %"$consume_3581" = sub i64 %"$gasrem_3577", 1
  store i64 %"$consume_3581", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_3582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3583" = icmp ugt i64 1, %"$gasrem_3582"
  br i1 %"$gascmp_3583", label %"$out_of_gas_3584", label %"$have_gas_3585"

"$out_of_gas_3584":                               ; preds = %"$have_gas_3580"
  call void @_out_of_gas()
  br label %"$have_gas_3585"

"$have_gas_3585":                                 ; preds = %"$out_of_gas_3584", %"$have_gas_3580"
  %"$consume_3586" = sub i64 %"$gasrem_3582", 1
  store i64 %"$consume_3586", i64* @_gasrem, align 8
  %"$adtval_3587_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3587_salloc" = call i8* @_salloc(i8* %"$adtval_3587_load", i64 41)
  %"$adtval_3587" = bitcast i8* %"$adtval_3587_salloc" to %CName_ud-registry.Record*
  %"$adtgep_3588" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3587", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3588", align 1
  %"$adtgep_3589" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3587", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_3589", align 1
  %"$adtgep_3590" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3587", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_3590", align 1
  %"$adtptr_3591" = bitcast %CName_ud-registry.Record* %"$adtval_3587" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_3591", %TName_ud-registry.Record** %newRecord, align 8
  %"$newRecord_3592" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_3592_3593" = bitcast %TName_ud-registry.Record* %"$newRecord_3592" to i8*
  %"$_literal_cost_call_3594" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", i8* %"$$newRecord_3592_3593")
  %"$gasadd_3595" = add i64 %"$_literal_cost_call_3594", 1
  %"$gasrem_3596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3597" = icmp ugt i64 %"$gasadd_3595", %"$gasrem_3596"
  br i1 %"$gascmp_3597", label %"$out_of_gas_3598", label %"$have_gas_3599"

"$out_of_gas_3598":                               ; preds = %"$have_gas_3585"
  call void @_out_of_gas()
  br label %"$have_gas_3599"

"$have_gas_3599":                                 ; preds = %"$out_of_gas_3598", %"$have_gas_3585"
  %"$consume_3600" = sub i64 %"$gasrem_3596", %"$gasadd_3595"
  store i64 %"$consume_3600", i64* @_gasrem, align 8
  %"$indices_buf_3601_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3601_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3601_salloc_load", i64 32)
  %"$indices_buf_3601_salloc" = bitcast i8* %"$indices_buf_3601_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3601" = bitcast [32 x i8]* %"$indices_buf_3601_salloc" to i8*
  %"$indices_gep_3602" = getelementptr i8, i8* %"$indices_buf_3601", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_3602" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_3603" = load i8*, i8** @_execptr, align 8
  %"$newRecord_3605" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_3606" = bitcast %TName_ud-registry.Record* %"$newRecord_3605" to i8*
  call void @_update_field(i8* %"$execptr_load_3603", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3604", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_3601", i8* %"$update_value_3606")
  %"$gasrem_3607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3608" = icmp ugt i64 1, %"$gasrem_3607"
  br i1 %"$gascmp_3608", label %"$out_of_gas_3609", label %"$have_gas_3610"

"$out_of_gas_3609":                               ; preds = %"$have_gas_3599"
  call void @_out_of_gas()
  br label %"$have_gas_3610"

"$have_gas_3610":                                 ; preds = %"$out_of_gas_3609", %"$have_gas_3599"
  %"$consume_3611" = sub i64 %"$gasrem_3607", 1
  store i64 %"$consume_3611", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3613" = icmp ugt i64 1, %"$gasrem_3612"
  br i1 %"$gascmp_3613", label %"$out_of_gas_3614", label %"$have_gas_3615"

"$out_of_gas_3614":                               ; preds = %"$have_gas_3610"
  call void @_out_of_gas()
  br label %"$have_gas_3615"

"$have_gas_3615":                                 ; preds = %"$out_of_gas_3614", %"$have_gas_3610"
  %"$consume_3616" = sub i64 %"$gasrem_3612", 1
  store i64 %"$consume_3616", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_70" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_3617" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_3618" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3617", 0
  %"$ud-registry.eConfigured_envptr_3619" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3617", 1
  %"$ud-registry.eConfigured_node_3620" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_3620", align 1
  %"$ud-registry.eConfigured_call_3621" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_3618"(i8* %"$ud-registry.eConfigured_envptr_3619", [32 x i8]* %"$ud-registry.eConfigured_node_3620")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_3621", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_70", align 8
  %"$ud-registry.eConfigured_71" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_70_3622" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_70", align 8
  %"$$ud-registry.eConfigured_70_fptr_3623" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_70_3622", 0
  %"$$ud-registry.eConfigured_70_envptr_3624" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_70_3622", 1
  %"$$ud-registry.eConfigured_70_owner_3625" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_70_owner_3625", align 1
  %"$$ud-registry.eConfigured_70_call_3626" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_70_fptr_3623"(i8* %"$$ud-registry.eConfigured_70_envptr_3624", [20 x i8]* %"$$ud-registry.eConfigured_70_owner_3625")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_70_call_3626", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_71", align 8
  %"$ud-registry.eConfigured_72" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_71_3627" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_71", align 8
  %"$$ud-registry.eConfigured_71_fptr_3628" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_71_3627", 0
  %"$$ud-registry.eConfigured_71_envptr_3629" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_71_3627", 1
  %"$$ud-registry.eConfigured_71_resolver_3630" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_71_resolver_3630", align 1
  %"$$ud-registry.eConfigured_71_call_3631" = call i8* %"$$ud-registry.eConfigured_71_fptr_3628"(i8* %"$$ud-registry.eConfigured_71_envptr_3629", [20 x i8]* %"$$ud-registry.eConfigured_71_resolver_3630")
  store i8* %"$$ud-registry.eConfigured_71_call_3631", i8** %"$ud-registry.eConfigured_72", align 8
  %"$$ud-registry.eConfigured_72_3632" = load i8*, i8** %"$ud-registry.eConfigured_72", align 8
  store i8* %"$$ud-registry.eConfigured_72_3632", i8** %e, align 8
  %"$e_3633" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3635" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3633")
  %"$gasrem_3636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3637" = icmp ugt i64 %"$_literal_cost_call_3635", %"$gasrem_3636"
  br i1 %"$gascmp_3637", label %"$out_of_gas_3638", label %"$have_gas_3639"

"$out_of_gas_3638":                               ; preds = %"$have_gas_3615"
  call void @_out_of_gas()
  br label %"$have_gas_3639"

"$have_gas_3639":                                 ; preds = %"$out_of_gas_3638", %"$have_gas_3615"
  %"$consume_3640" = sub i64 %"$gasrem_3636", %"$_literal_cost_call_3635"
  store i64 %"$consume_3640", i64* @_gasrem, align 8
  %"$execptr_load_3641" = load i8*, i8** @_execptr, align 8
  %"$e_3642" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3641", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3642")
  %"$gasrem_3643" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3644" = icmp ugt i64 1, %"$gasrem_3643"
  br i1 %"$gascmp_3644", label %"$out_of_gas_3645", label %"$have_gas_3646"

"$out_of_gas_3645":                               ; preds = %"$have_gas_3639"
  call void @_out_of_gas()
  br label %"$have_gas_3646"

"$have_gas_3646":                                 ; preds = %"$out_of_gas_3645", %"$have_gas_3639"
  %"$consume_3647" = sub i64 %"$gasrem_3643", 1
  store i64 %"$consume_3647", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_3648" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3649" = icmp ugt i64 1, %"$gasrem_3648"
  br i1 %"$gascmp_3649", label %"$out_of_gas_3650", label %"$have_gas_3651"

"$out_of_gas_3650":                               ; preds = %"$have_gas_3646"
  call void @_out_of_gas()
  br label %"$have_gas_3651"

"$have_gas_3651":                                 ; preds = %"$out_of_gas_3650", %"$have_gas_3646"
  %"$consume_3652" = sub i64 %"$gasrem_3648", 1
  store i64 %"$consume_3652", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_3653" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3654" = icmp ugt i64 1, %"$gasrem_3653"
  br i1 %"$gascmp_3654", label %"$out_of_gas_3655", label %"$have_gas_3656"

"$out_of_gas_3655":                               ; preds = %"$have_gas_3651"
  call void @_out_of_gas()
  br label %"$have_gas_3656"

"$have_gas_3656":                                 ; preds = %"$out_of_gas_3655", %"$have_gas_3651"
  %"$consume_3657" = sub i64 %"$gasrem_3653", 1
  store i64 %"$consume_3657", i64* @_gasrem, align 8
  %"$msgobj_3658_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_3658_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3658_salloc_load", i64 225)
  %"$msgobj_3658_salloc" = bitcast i8* %"$msgobj_3658_salloc_salloc" to [225 x i8]*
  %"$msgobj_3658" = bitcast [225 x i8]* %"$msgobj_3658_salloc" to i8*
  store i8 5, i8* %"$msgobj_3658", align 1
  %"$msgobj_fname_3660" = getelementptr i8, i8* %"$msgobj_3658", i32 1
  %"$msgobj_fname_3661" = bitcast i8* %"$msgobj_fname_3660" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3659", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3661", align 8
  %"$msgobj_td_3662" = getelementptr i8, i8* %"$msgobj_3658", i32 17
  %"$msgobj_td_3663" = bitcast i8* %"$msgobj_td_3662" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_3663", align 8
  %"$msgobj_v_3665" = getelementptr i8, i8* %"$msgobj_3658", i32 25
  %"$msgobj_v_3666" = bitcast i8* %"$msgobj_v_3665" to %String*
  store %String { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$stringlit_3664", i32 0, i32 0), i32 18 }, %String* %"$msgobj_v_3666", align 8
  %"$msgobj_fname_3668" = getelementptr i8, i8* %"$msgobj_3658", i32 41
  %"$msgobj_fname_3669" = bitcast i8* %"$msgobj_fname_3668" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3667", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3669", align 8
  %"$msgobj_td_3670" = getelementptr i8, i8* %"$msgobj_3658", i32 57
  %"$msgobj_td_3671" = bitcast i8* %"$msgobj_td_3670" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_3671", align 8
  %"$msgobj_v_3672" = getelementptr i8, i8* %"$msgobj_3658", i32 65
  %"$msgobj_v_3673" = bitcast i8* %"$msgobj_v_3672" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3673", align 1
  %"$msgobj_fname_3675" = getelementptr i8, i8* %"$msgobj_3658", i32 97
  %"$msgobj_fname_3676" = bitcast i8* %"$msgobj_fname_3675" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3674", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3676", align 8
  %"$msgobj_td_3677" = getelementptr i8, i8* %"$msgobj_3658", i32 113
  %"$msgobj_td_3678" = bitcast i8* %"$msgobj_td_3677" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_3678", align 8
  %"$msgobj_v_3679" = getelementptr i8, i8* %"$msgobj_3658", i32 121
  %"$msgobj_v_3680" = bitcast i8* %"$msgobj_v_3679" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_3680", align 1
  %"$msgobj_fname_3682" = getelementptr i8, i8* %"$msgobj_3658", i32 141
  %"$msgobj_fname_3683" = bitcast i8* %"$msgobj_fname_3682" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3681", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3683", align 8
  %"$msgobj_td_3684" = getelementptr i8, i8* %"$msgobj_3658", i32 157
  %"$msgobj_td_3685" = bitcast i8* %"$msgobj_td_3684" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_3685", align 8
  %"$msgobj_v_3686" = getelementptr i8, i8* %"$msgobj_3658", i32 165
  %"$msgobj_v_3687" = bitcast i8* %"$msgobj_v_3686" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3687", align 8
  %"$msgobj_fname_3689" = getelementptr i8, i8* %"$msgobj_3658", i32 181
  %"$msgobj_fname_3690" = bitcast i8* %"$msgobj_fname_3689" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3688", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3690", align 8
  %"$msgobj_td_3691" = getelementptr i8, i8* %"$msgobj_3658", i32 197
  %"$msgobj_td_3692" = bitcast i8* %"$msgobj_td_3691" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_3692", align 8
  %"$msgobj_v_3693" = getelementptr i8, i8* %"$msgobj_3658", i32 205
  %"$msgobj_v_3694" = bitcast i8* %"$msgobj_v_3693" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3694", align 1
  store i8* %"$msgobj_3658", i8** %m, align 8
  %"$gasrem_3696" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3697" = icmp ugt i64 1, %"$gasrem_3696"
  br i1 %"$gascmp_3697", label %"$out_of_gas_3698", label %"$have_gas_3699"

"$out_of_gas_3698":                               ; preds = %"$have_gas_3656"
  call void @_out_of_gas()
  br label %"$have_gas_3699"

"$have_gas_3699":                                 ; preds = %"$out_of_gas_3698", %"$have_gas_3656"
  %"$consume_3700" = sub i64 %"$gasrem_3696", 1
  store i64 %"$consume_3700", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_69" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_3701" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_3702" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3701", 0
  %"$ud-registry.oneMsg_envptr_3703" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3701", 1
  %"$m_3704" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_3705" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3702"(i8* %"$ud-registry.oneMsg_envptr_3703", i8* %"$m_3704")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3705", %TName_List_Message** %"$ud-registry.oneMsg_69", align 8
  %"$$ud-registry.oneMsg_69_3706" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_69", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_69_3706", %TName_List_Message** %msgs, align 8
  %"$msgs_3707" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_3707_3708" = bitcast %TName_List_Message* %"$msgs_3707" to i8*
  %"$_literal_cost_call_3709" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_3707_3708")
  %"$gasrem_3710" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3711" = icmp ugt i64 %"$_literal_cost_call_3709", %"$gasrem_3710"
  br i1 %"$gascmp_3711", label %"$out_of_gas_3712", label %"$have_gas_3713"

"$out_of_gas_3712":                               ; preds = %"$have_gas_3699"
  call void @_out_of_gas()
  br label %"$have_gas_3713"

"$have_gas_3713":                                 ; preds = %"$out_of_gas_3712", %"$have_gas_3699"
  %"$consume_3714" = sub i64 %"$gasrem_3710", %"$_literal_cost_call_3709"
  store i64 %"$consume_3714", i64* @_gasrem, align 8
  %"$execptr_load_3715" = load i8*, i8** @_execptr, align 8
  %"$msgs_3716" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_3715", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_3716")
  br label %"$matchsucc_3570"

"$False_3717":                                    ; preds = %"$have_gas_3568"
  %"$isSenderOAO_3718" = bitcast %TName_Bool* %"$isSenderOAO_3571" to %CName_False*
  %"$gasrem_3719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3720" = icmp ugt i64 1, %"$gasrem_3719"
  br i1 %"$gascmp_3720", label %"$out_of_gas_3721", label %"$have_gas_3722"

"$out_of_gas_3721":                               ; preds = %"$False_3717"
  call void @_out_of_gas()
  br label %"$have_gas_3722"

"$have_gas_3722":                                 ; preds = %"$out_of_gas_3721", %"$False_3717"
  %"$consume_3723" = sub i64 %"$gasrem_3719", 1
  store i64 %"$consume_3723", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_3724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3725" = icmp ugt i64 1, %"$gasrem_3724"
  br i1 %"$gascmp_3725", label %"$out_of_gas_3726", label %"$have_gas_3727"

"$out_of_gas_3726":                               ; preds = %"$have_gas_3722"
  call void @_out_of_gas()
  br label %"$have_gas_3727"

"$have_gas_3727":                                 ; preds = %"$out_of_gas_3726", %"$have_gas_3722"
  %"$consume_3728" = sub i64 %"$gasrem_3724", 1
  store i64 %"$consume_3728", i64* @_gasrem, align 8
  %m5 = alloca %String, align 8
  %"$gasrem_3729" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3730" = icmp ugt i64 1, %"$gasrem_3729"
  br i1 %"$gascmp_3730", label %"$out_of_gas_3731", label %"$have_gas_3732"

"$out_of_gas_3731":                               ; preds = %"$have_gas_3727"
  call void @_out_of_gas()
  br label %"$have_gas_3732"

"$have_gas_3732":                                 ; preds = %"$out_of_gas_3731", %"$have_gas_3727"
  %"$consume_3733" = sub i64 %"$gasrem_3729", 1
  store i64 %"$consume_3733", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_3734", i32 0, i32 0), i32 43 }, %String* %m5, align 8
  %"$gasrem_3735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3736" = icmp ugt i64 1, %"$gasrem_3735"
  br i1 %"$gascmp_3736", label %"$out_of_gas_3737", label %"$have_gas_3738"

"$out_of_gas_3737":                               ; preds = %"$have_gas_3732"
  call void @_out_of_gas()
  br label %"$have_gas_3738"

"$have_gas_3738":                                 ; preds = %"$out_of_gas_3737", %"$have_gas_3732"
  %"$consume_3739" = sub i64 %"$gasrem_3735", 1
  store i64 %"$consume_3739", i64* @_gasrem, align 8
  %"$ud-registry.eError_74" = alloca i8*, align 8
  %"$ud-registry.eError_3740" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3741" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3740", 0
  %"$ud-registry.eError_envptr_3742" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3740", 1
  %"$m_3743" = load %String, %String* %m5, align 8
  %"$ud-registry.eError_call_3744" = call i8* %"$ud-registry.eError_fptr_3741"(i8* %"$ud-registry.eError_envptr_3742", %String %"$m_3743")
  store i8* %"$ud-registry.eError_call_3744", i8** %"$ud-registry.eError_74", align 8
  %"$$ud-registry.eError_74_3745" = load i8*, i8** %"$ud-registry.eError_74", align 8
  store i8* %"$$ud-registry.eError_74_3745", i8** %e4, align 8
  %"$e_3746" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_3748" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3746")
  %"$gasrem_3749" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3750" = icmp ugt i64 %"$_literal_cost_call_3748", %"$gasrem_3749"
  br i1 %"$gascmp_3750", label %"$out_of_gas_3751", label %"$have_gas_3752"

"$out_of_gas_3751":                               ; preds = %"$have_gas_3738"
  call void @_out_of_gas()
  br label %"$have_gas_3752"

"$have_gas_3752":                                 ; preds = %"$out_of_gas_3751", %"$have_gas_3738"
  %"$consume_3753" = sub i64 %"$gasrem_3749", %"$_literal_cost_call_3748"
  store i64 %"$consume_3753", i64* @_gasrem, align 8
  %"$execptr_load_3754" = load i8*, i8** @_execptr, align 8
  %"$e_3755" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_3754", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_3755")
  %"$gasrem_3756" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3757" = icmp ugt i64 1, %"$gasrem_3756"
  br i1 %"$gascmp_3757", label %"$out_of_gas_3758", label %"$have_gas_3759"

"$out_of_gas_3758":                               ; preds = %"$have_gas_3752"
  call void @_out_of_gas()
  br label %"$have_gas_3759"

"$have_gas_3759":                                 ; preds = %"$out_of_gas_3758", %"$have_gas_3752"
  %"$consume_3760" = sub i64 %"$gasrem_3756", 1
  store i64 %"$consume_3760", i64* @_gasrem, align 8
  %msgs6 = alloca %TName_List_Message*, align 8
  %"$gasrem_3761" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3762" = icmp ugt i64 1, %"$gasrem_3761"
  br i1 %"$gascmp_3762", label %"$out_of_gas_3763", label %"$have_gas_3764"

"$out_of_gas_3763":                               ; preds = %"$have_gas_3759"
  call void @_out_of_gas()
  br label %"$have_gas_3764"

"$have_gas_3764":                                 ; preds = %"$out_of_gas_3763", %"$have_gas_3759"
  %"$consume_3765" = sub i64 %"$gasrem_3761", 1
  store i64 %"$consume_3765", i64* @_gasrem, align 8
  %"$m_0" = alloca i8*, align 8
  %"$gasrem_3766" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3767" = icmp ugt i64 1, %"$gasrem_3766"
  br i1 %"$gascmp_3767", label %"$out_of_gas_3768", label %"$have_gas_3769"

"$out_of_gas_3768":                               ; preds = %"$have_gas_3764"
  call void @_out_of_gas()
  br label %"$have_gas_3769"

"$have_gas_3769":                                 ; preds = %"$out_of_gas_3768", %"$have_gas_3764"
  %"$consume_3770" = sub i64 %"$gasrem_3766", 1
  store i64 %"$consume_3770", i64* @_gasrem, align 8
  %"$msgobj_3771_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_3771_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3771_salloc_load", i64 225)
  %"$msgobj_3771_salloc" = bitcast i8* %"$msgobj_3771_salloc_salloc" to [225 x i8]*
  %"$msgobj_3771" = bitcast [225 x i8]* %"$msgobj_3771_salloc" to i8*
  store i8 5, i8* %"$msgobj_3771", align 1
  %"$msgobj_fname_3773" = getelementptr i8, i8* %"$msgobj_3771", i32 1
  %"$msgobj_fname_3774" = bitcast i8* %"$msgobj_fname_3773" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3772", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3774", align 8
  %"$msgobj_td_3775" = getelementptr i8, i8* %"$msgobj_3771", i32 17
  %"$msgobj_td_3776" = bitcast i8* %"$msgobj_td_3775" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_3776", align 8
  %"$msgobj_v_3778" = getelementptr i8, i8* %"$msgobj_3771", i32 25
  %"$msgobj_v_3779" = bitcast i8* %"$msgobj_v_3778" to %String*
  store %String { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$stringlit_3777", i32 0, i32 0), i32 18 }, %String* %"$msgobj_v_3779", align 8
  %"$msgobj_fname_3781" = getelementptr i8, i8* %"$msgobj_3771", i32 41
  %"$msgobj_fname_3782" = bitcast i8* %"$msgobj_fname_3781" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3780", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3782", align 8
  %"$msgobj_td_3783" = getelementptr i8, i8* %"$msgobj_3771", i32 57
  %"$msgobj_td_3784" = bitcast i8* %"$msgobj_td_3783" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_3784", align 8
  %"$msgobj_v_3785" = getelementptr i8, i8* %"$msgobj_3771", i32 65
  %"$msgobj_v_3786" = bitcast i8* %"$msgobj_v_3785" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3786", align 1
  %"$msgobj_fname_3788" = getelementptr i8, i8* %"$msgobj_3771", i32 97
  %"$msgobj_fname_3789" = bitcast i8* %"$msgobj_fname_3788" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3787", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3789", align 8
  %"$msgobj_td_3790" = getelementptr i8, i8* %"$msgobj_3771", i32 113
  %"$msgobj_td_3791" = bitcast i8* %"$msgobj_td_3790" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_3791", align 8
  %"$recordOwner_3792" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$msgobj_v_3793" = getelementptr i8, i8* %"$msgobj_3771", i32 121
  %"$msgobj_v_3794" = bitcast i8* %"$msgobj_v_3793" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3792", [20 x i8]* %"$msgobj_v_3794", align 1
  %"$msgobj_fname_3796" = getelementptr i8, i8* %"$msgobj_3771", i32 141
  %"$msgobj_fname_3797" = bitcast i8* %"$msgobj_fname_3796" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3795", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3797", align 8
  %"$msgobj_td_3798" = getelementptr i8, i8* %"$msgobj_3771", i32 157
  %"$msgobj_td_3799" = bitcast i8* %"$msgobj_td_3798" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_3799", align 8
  %"$msgobj_v_3800" = getelementptr i8, i8* %"$msgobj_3771", i32 165
  %"$msgobj_v_3801" = bitcast i8* %"$msgobj_v_3800" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3801", align 8
  %"$msgobj_fname_3803" = getelementptr i8, i8* %"$msgobj_3771", i32 181
  %"$msgobj_fname_3804" = bitcast i8* %"$msgobj_fname_3803" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3802", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3804", align 8
  %"$msgobj_td_3805" = getelementptr i8, i8* %"$msgobj_3771", i32 197
  %"$msgobj_td_3806" = bitcast i8* %"$msgobj_td_3805" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_3806", align 8
  %"$msgobj_v_3807" = getelementptr i8, i8* %"$msgobj_3771", i32 205
  %"$msgobj_v_3808" = bitcast i8* %"$msgobj_v_3807" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3808", align 1
  store i8* %"$msgobj_3771", i8** %"$m_0", align 8
  %"$gasrem_3810" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3811" = icmp ugt i64 1, %"$gasrem_3810"
  br i1 %"$gascmp_3811", label %"$out_of_gas_3812", label %"$have_gas_3813"

"$out_of_gas_3812":                               ; preds = %"$have_gas_3769"
  call void @_out_of_gas()
  br label %"$have_gas_3813"

"$have_gas_3813":                                 ; preds = %"$out_of_gas_3812", %"$have_gas_3769"
  %"$consume_3814" = sub i64 %"$gasrem_3810", 1
  store i64 %"$consume_3814", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_73" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_3815" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_3816" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3815", 0
  %"$ud-registry.oneMsg_envptr_3817" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3815", 1
  %"$$m_0_3818" = load i8*, i8** %"$m_0", align 8
  %"$ud-registry.oneMsg_call_3819" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3816"(i8* %"$ud-registry.oneMsg_envptr_3817", i8* %"$$m_0_3818")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3819", %TName_List_Message** %"$ud-registry.oneMsg_73", align 8
  %"$$ud-registry.oneMsg_73_3820" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_73", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_73_3820", %TName_List_Message** %msgs6, align 8
  %"$msgs_3821" = load %TName_List_Message*, %TName_List_Message** %msgs6, align 8
  %"$$msgs_3821_3822" = bitcast %TName_List_Message* %"$msgs_3821" to i8*
  %"$_literal_cost_call_3823" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_3821_3822")
  %"$gasrem_3824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3825" = icmp ugt i64 %"$_literal_cost_call_3823", %"$gasrem_3824"
  br i1 %"$gascmp_3825", label %"$out_of_gas_3826", label %"$have_gas_3827"

"$out_of_gas_3826":                               ; preds = %"$have_gas_3813"
  call void @_out_of_gas()
  br label %"$have_gas_3827"

"$have_gas_3827":                                 ; preds = %"$out_of_gas_3826", %"$have_gas_3813"
  %"$consume_3828" = sub i64 %"$gasrem_3824", %"$_literal_cost_call_3823"
  store i64 %"$consume_3828", i64* @_gasrem, align 8
  %"$execptr_load_3829" = load i8*, i8** @_execptr, align 8
  %"$msgs_3830" = load %TName_List_Message*, %TName_List_Message** %msgs6, align 8
  call void @_send(i8* %"$execptr_load_3829", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_3830")
  br label %"$matchsucc_3570"

"$empty_default_3574":                            ; preds = %"$have_gas_3568"
  br label %"$matchsucc_3570"

"$matchsucc_3570":                                ; preds = %"$have_gas_3827", %"$have_gas_3713", %"$empty_default_3574"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @configureNode(i8* %0) {
entry:
  %"$_amount_3832" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3833" = bitcast i8* %"$_amount_3832" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3833", align 8
  %"$_origin_3834" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3835" = bitcast i8* %"$_origin_3834" to [20 x i8]*
  %"$_sender_3836" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3837" = bitcast i8* %"$_sender_3836" to [20 x i8]*
  %"$node_3838" = getelementptr i8, i8* %0, i32 56
  %"$node_3839" = bitcast i8* %"$node_3838" to [32 x i8]*
  %"$owner_3840" = getelementptr i8, i8* %0, i32 88
  %"$owner_3841" = bitcast i8* %"$owner_3840" to [20 x i8]*
  %"$resolver_3842" = getelementptr i8, i8* %0, i32 108
  %"$resolver_3843" = bitcast i8* %"$resolver_3842" to [20 x i8]*
  call void @"$configureNode_3461"(%Uint128 %_amount, [20 x i8]* %"$_origin_3835", [20 x i8]* %"$_sender_3837", [32 x i8]* %"$node_3839", [20 x i8]* %"$owner_3841", [20 x i8]* %"$resolver_3843")
  ret void
}

define internal void @"$configureResolver_3844"(%Uint128 %_amount, [20 x i8]* %"$_origin_3845", [20 x i8]* %"$_sender_3846", [32 x i8]* %"$node_3847", [20 x i8]* %"$resolver_3848") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3845", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3846", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_3847", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_3848", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3849_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3849_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3849_salloc_load", i64 32)
  %"$indices_buf_3849_salloc" = bitcast i8* %"$indices_buf_3849_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3849" = bitcast [32 x i8]* %"$indices_buf_3849_salloc" to i8*
  %"$indices_gep_3850" = getelementptr i8, i8* %"$indices_buf_3849", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3850" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3852" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_3853" = call i8* @_fetch_field(i8* %"$execptr_load_3852", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3851", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_3849", i32 1)
  %"$maybeRecord_3854" = bitcast i8* %"$maybeRecord_call_3853" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3854", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3855" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3855_3856" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3855" to i8*
  %"$_literal_cost_call_3857" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_3855_3856")
  %"$gasadd_3858" = add i64 %"$_literal_cost_call_3857", 0
  %"$gasadd_3859" = add i64 %"$gasadd_3858", 1
  %"$gasrem_3860" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3861" = icmp ugt i64 %"$gasadd_3859", %"$gasrem_3860"
  br i1 %"$gascmp_3861", label %"$out_of_gas_3862", label %"$have_gas_3863"

"$out_of_gas_3862":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3863"

"$have_gas_3863":                                 ; preds = %"$out_of_gas_3862", %entry
  %"$consume_3864" = sub i64 %"$gasrem_3860", %"$gasadd_3859"
  store i64 %"$consume_3864", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3865_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3865_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3865_salloc_load", i64 32)
  %"$indices_buf_3865_salloc" = bitcast i8* %"$indices_buf_3865_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3865" = bitcast [32 x i8]* %"$indices_buf_3865_salloc" to i8*
  %"$indices_gep_3866" = getelementptr i8, i8* %"$indices_buf_3865", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3866" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_3868" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_3869" = call i8* @_fetch_field(i8* %"$execptr_load_3868", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3867", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_3865", i32 1)
  %"$maybeApproved_3870" = bitcast i8* %"$maybeApproved_call_3869" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3870", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3871" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3871_3872" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3871" to i8*
  %"$_literal_cost_call_3873" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_3871_3872")
  %"$gasadd_3874" = add i64 %"$_literal_cost_call_3873", 0
  %"$gasadd_3875" = add i64 %"$gasadd_3874", 1
  %"$gasrem_3876" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3877" = icmp ugt i64 %"$gasadd_3875", %"$gasrem_3876"
  br i1 %"$gascmp_3877", label %"$out_of_gas_3878", label %"$have_gas_3879"

"$out_of_gas_3878":                               ; preds = %"$have_gas_3863"
  call void @_out_of_gas()
  br label %"$have_gas_3879"

"$have_gas_3879":                                 ; preds = %"$out_of_gas_3878", %"$have_gas_3863"
  %"$consume_3880" = sub i64 %"$gasrem_3876", %"$gasadd_3875"
  store i64 %"$consume_3880", i64* @_gasrem, align 8
  %"$gasrem_3881" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3882" = icmp ugt i64 1, %"$gasrem_3881"
  br i1 %"$gascmp_3882", label %"$out_of_gas_3883", label %"$have_gas_3884"

"$out_of_gas_3883":                               ; preds = %"$have_gas_3879"
  call void @_out_of_gas()
  br label %"$have_gas_3884"

"$have_gas_3884":                                 ; preds = %"$out_of_gas_3883", %"$have_gas_3879"
  %"$consume_3885" = sub i64 %"$gasrem_3881", 1
  store i64 %"$consume_3885", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3886" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3887" = icmp ugt i64 1, %"$gasrem_3886"
  br i1 %"$gascmp_3887", label %"$out_of_gas_3888", label %"$have_gas_3889"

"$out_of_gas_3888":                               ; preds = %"$have_gas_3884"
  call void @_out_of_gas()
  br label %"$have_gas_3889"

"$have_gas_3889":                                 ; preds = %"$out_of_gas_3888", %"$have_gas_3884"
  %"$consume_3890" = sub i64 %"$gasrem_3886", 1
  store i64 %"$consume_3890", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_88" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3891" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3892" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3891", 0
  %"$ud-registry.recordMemberOwner_envptr_3893" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3891", 1
  %"$maybeRecord_3894" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3895" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3892"(i8* %"$ud-registry.recordMemberOwner_envptr_3893", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3895", %TName_Option_ud-registry.Record* %"$maybeRecord_3894")
  %"$ud-registry.recordMemberOwner_ret_3896" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3895", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3896", [20 x i8]* %"$ud-registry.recordMemberOwner_88", align 1
  %"$$ud-registry.recordMemberOwner_88_3897" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_88", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_88_3897", [20 x i8]* %recordOwner, align 1
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3898_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3898_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3898_salloc_load", i64 20)
  %"$indices_buf_3898_salloc" = bitcast i8* %"$indices_buf_3898_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3898" = bitcast [20 x i8]* %"$indices_buf_3898_salloc" to i8*
  %"$recordOwner_3899" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_3900" = getelementptr i8, i8* %"$indices_buf_3898", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3900" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3899", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_3902" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3903" = call i8* @_fetch_field(i8* %"$execptr_load_3902", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3901", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_3898", i32 1)
  %"$maybeOperators_3904" = bitcast i8* %"$maybeOperators_call_3903" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3904", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3905" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3905_3906" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3905" to i8*
  %"$_literal_cost_call_3907" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", i8* %"$$maybeOperators_3905_3906")
  %"$gasadd_3908" = add i64 %"$_literal_cost_call_3907", 0
  %"$gasadd_3909" = add i64 %"$gasadd_3908", 1
  %"$gasrem_3910" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3911" = icmp ugt i64 %"$gasadd_3909", %"$gasrem_3910"
  br i1 %"$gascmp_3911", label %"$out_of_gas_3912", label %"$have_gas_3913"

"$out_of_gas_3912":                               ; preds = %"$have_gas_3889"
  call void @_out_of_gas()
  br label %"$have_gas_3913"

"$have_gas_3913":                                 ; preds = %"$out_of_gas_3912", %"$have_gas_3889"
  %"$consume_3914" = sub i64 %"$gasrem_3910", %"$gasadd_3909"
  store i64 %"$consume_3914", i64* @_gasrem, align 8
  %"$gasrem_3915" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3916" = icmp ugt i64 1, %"$gasrem_3915"
  br i1 %"$gascmp_3916", label %"$out_of_gas_3917", label %"$have_gas_3918"

"$out_of_gas_3917":                               ; preds = %"$have_gas_3913"
  call void @_out_of_gas()
  br label %"$have_gas_3918"

"$have_gas_3918":                                 ; preds = %"$out_of_gas_3917", %"$have_gas_3913"
  %"$consume_3919" = sub i64 %"$gasrem_3915", 1
  store i64 %"$consume_3919", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_3920" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3921" = icmp ugt i64 1, %"$gasrem_3920"
  br i1 %"$gascmp_3921", label %"$out_of_gas_3922", label %"$have_gas_3923"

"$out_of_gas_3922":                               ; preds = %"$have_gas_3918"
  call void @_out_of_gas()
  br label %"$have_gas_3923"

"$have_gas_3923":                                 ; preds = %"$out_of_gas_3922", %"$have_gas_3918"
  %"$consume_3924" = sub i64 %"$gasrem_3920", 1
  store i64 %"$consume_3924", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_84" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_3925" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_3926" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3925", 0
  %"$ud-registry.getIsOAO_envptr_3927" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3925", 1
  %"$ud-registry.getIsOAO__sender_3928" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3928", align 1
  %"$ud-registry.getIsOAO_call_3929" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_3926"(i8* %"$ud-registry.getIsOAO_envptr_3927", [20 x i8]* %"$ud-registry.getIsOAO__sender_3928")
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_3929", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_84", align 8
  %"$ud-registry.getIsOAO_85" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_84_3930" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_84", align 8
  %"$$ud-registry.getIsOAO_84_fptr_3931" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_84_3930", 0
  %"$$ud-registry.getIsOAO_84_envptr_3932" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_84_3930", 1
  %"$$ud-registry.getIsOAO_84_recordOwner_3933" = alloca [20 x i8], align 1
  %"$recordOwner_3934" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3934", [20 x i8]* %"$$ud-registry.getIsOAO_84_recordOwner_3933", align 1
  %"$$ud-registry.getIsOAO_84_call_3935" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_84_fptr_3931"(i8* %"$$ud-registry.getIsOAO_84_envptr_3932", [20 x i8]* %"$$ud-registry.getIsOAO_84_recordOwner_3933")
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_84_call_3935", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_85", align 8
  %"$ud-registry.getIsOAO_86" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_85_3936" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_85", align 8
  %"$$ud-registry.getIsOAO_85_fptr_3937" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_85_3936", 0
  %"$$ud-registry.getIsOAO_85_envptr_3938" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_85_3936", 1
  %"$maybeApproved_3939" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_85_call_3940" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_85_fptr_3937"(i8* %"$$ud-registry.getIsOAO_85_envptr_3938", %TName_Option_ByStr20* %"$maybeApproved_3939")
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_85_call_3940", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_86", align 8
  %"$ud-registry.getIsOAO_87" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_86_3941" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_86", align 8
  %"$$ud-registry.getIsOAO_86_fptr_3942" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_86_3941", 0
  %"$$ud-registry.getIsOAO_86_envptr_3943" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_86_3941", 1
  %"$maybeOperators_3944" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_86_call_3945" = call %TName_Bool* %"$$ud-registry.getIsOAO_86_fptr_3942"(i8* %"$$ud-registry.getIsOAO_86_envptr_3943", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3944")
  store %TName_Bool* %"$$ud-registry.getIsOAO_86_call_3945", %TName_Bool** %"$ud-registry.getIsOAO_87", align 8
  %"$$ud-registry.getIsOAO_87_3946" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_87", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_87_3946", %TName_Bool** %isSenderOAO, align 8
  %"$gasrem_3947" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3948" = icmp ugt i64 2, %"$gasrem_3947"
  br i1 %"$gascmp_3948", label %"$out_of_gas_3949", label %"$have_gas_3950"

"$out_of_gas_3949":                               ; preds = %"$have_gas_3923"
  call void @_out_of_gas()
  br label %"$have_gas_3950"

"$have_gas_3950":                                 ; preds = %"$out_of_gas_3949", %"$have_gas_3923"
  %"$consume_3951" = sub i64 %"$gasrem_3947", 2
  store i64 %"$consume_3951", i64* @_gasrem, align 8
  %"$isSenderOAO_3953" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_3954" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3953", i32 0, i32 0
  %"$isSenderOAO_tag_3955" = load i8, i8* %"$isSenderOAO_tag_3954", align 1
  switch i8 %"$isSenderOAO_tag_3955", label %"$empty_default_3956" [
    i8 0, label %"$True_3957"
    i8 1, label %"$False_4027"
  ]

"$True_3957":                                     ; preds = %"$have_gas_3950"
  %"$isSenderOAO_3958" = bitcast %TName_Bool* %"$isSenderOAO_3953" to %CName_True*
  %"$gasrem_3959" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3960" = icmp ugt i64 1, %"$gasrem_3959"
  br i1 %"$gascmp_3960", label %"$out_of_gas_3961", label %"$have_gas_3962"

"$out_of_gas_3961":                               ; preds = %"$True_3957"
  call void @_out_of_gas()
  br label %"$have_gas_3962"

"$have_gas_3962":                                 ; preds = %"$out_of_gas_3961", %"$True_3957"
  %"$consume_3963" = sub i64 %"$gasrem_3959", 1
  store i64 %"$consume_3963", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_3964" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3965" = icmp ugt i64 1, %"$gasrem_3964"
  br i1 %"$gascmp_3965", label %"$out_of_gas_3966", label %"$have_gas_3967"

"$out_of_gas_3966":                               ; preds = %"$have_gas_3962"
  call void @_out_of_gas()
  br label %"$have_gas_3967"

"$have_gas_3967":                                 ; preds = %"$out_of_gas_3966", %"$have_gas_3962"
  %"$consume_3968" = sub i64 %"$gasrem_3964", 1
  store i64 %"$consume_3968", i64* @_gasrem, align 8
  %"$recordOwner_3969" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$adtval_3970_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3970_salloc" = call i8* @_salloc(i8* %"$adtval_3970_load", i64 41)
  %"$adtval_3970" = bitcast i8* %"$adtval_3970_salloc" to %CName_ud-registry.Record*
  %"$adtgep_3971" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3970", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3971", align 1
  %"$adtgep_3972" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3970", i32 0, i32 1
  store [20 x i8] %"$recordOwner_3969", [20 x i8]* %"$adtgep_3972", align 1
  %"$adtgep_3973" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3970", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_3973", align 1
  %"$adtptr_3974" = bitcast %CName_ud-registry.Record* %"$adtval_3970" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_3974", %TName_ud-registry.Record** %newRecord, align 8
  %"$newRecord_3975" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_3975_3976" = bitcast %TName_ud-registry.Record* %"$newRecord_3975" to i8*
  %"$_literal_cost_call_3977" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", i8* %"$$newRecord_3975_3976")
  %"$gasadd_3978" = add i64 %"$_literal_cost_call_3977", 1
  %"$gasrem_3979" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3980" = icmp ugt i64 %"$gasadd_3978", %"$gasrem_3979"
  br i1 %"$gascmp_3980", label %"$out_of_gas_3981", label %"$have_gas_3982"

"$out_of_gas_3981":                               ; preds = %"$have_gas_3967"
  call void @_out_of_gas()
  br label %"$have_gas_3982"

"$have_gas_3982":                                 ; preds = %"$out_of_gas_3981", %"$have_gas_3967"
  %"$consume_3983" = sub i64 %"$gasrem_3979", %"$gasadd_3978"
  store i64 %"$consume_3983", i64* @_gasrem, align 8
  %"$indices_buf_3984_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3984_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3984_salloc_load", i64 32)
  %"$indices_buf_3984_salloc" = bitcast i8* %"$indices_buf_3984_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3984" = bitcast [32 x i8]* %"$indices_buf_3984_salloc" to i8*
  %"$indices_gep_3985" = getelementptr i8, i8* %"$indices_buf_3984", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_3985" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_3986" = load i8*, i8** @_execptr, align 8
  %"$newRecord_3988" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_3989" = bitcast %TName_ud-registry.Record* %"$newRecord_3988" to i8*
  call void @_update_field(i8* %"$execptr_load_3986", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3987", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_3984", i8* %"$update_value_3989")
  %"$gasrem_3990" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3991" = icmp ugt i64 1, %"$gasrem_3990"
  br i1 %"$gascmp_3991", label %"$out_of_gas_3992", label %"$have_gas_3993"

"$out_of_gas_3992":                               ; preds = %"$have_gas_3982"
  call void @_out_of_gas()
  br label %"$have_gas_3993"

"$have_gas_3993":                                 ; preds = %"$out_of_gas_3992", %"$have_gas_3982"
  %"$consume_3994" = sub i64 %"$gasrem_3990", 1
  store i64 %"$consume_3994", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3995" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3996" = icmp ugt i64 1, %"$gasrem_3995"
  br i1 %"$gascmp_3996", label %"$out_of_gas_3997", label %"$have_gas_3998"

"$out_of_gas_3997":                               ; preds = %"$have_gas_3993"
  call void @_out_of_gas()
  br label %"$have_gas_3998"

"$have_gas_3998":                                 ; preds = %"$out_of_gas_3997", %"$have_gas_3993"
  %"$consume_3999" = sub i64 %"$gasrem_3995", 1
  store i64 %"$consume_3999", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_80" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_4000" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_4001" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4000", 0
  %"$ud-registry.eConfigured_envptr_4002" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4000", 1
  %"$ud-registry.eConfigured_node_4003" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_4003", align 1
  %"$ud-registry.eConfigured_call_4004" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_4001"(i8* %"$ud-registry.eConfigured_envptr_4002", [32 x i8]* %"$ud-registry.eConfigured_node_4003")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_4004", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_80", align 8
  %"$ud-registry.eConfigured_81" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_80_4005" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_80", align 8
  %"$$ud-registry.eConfigured_80_fptr_4006" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_80_4005", 0
  %"$$ud-registry.eConfigured_80_envptr_4007" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_80_4005", 1
  %"$$ud-registry.eConfigured_80_recordOwner_4008" = alloca [20 x i8], align 1
  %"$recordOwner_4009" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_4009", [20 x i8]* %"$$ud-registry.eConfigured_80_recordOwner_4008", align 1
  %"$$ud-registry.eConfigured_80_call_4010" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_80_fptr_4006"(i8* %"$$ud-registry.eConfigured_80_envptr_4007", [20 x i8]* %"$$ud-registry.eConfigured_80_recordOwner_4008")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_80_call_4010", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_81", align 8
  %"$ud-registry.eConfigured_82" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_81_4011" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_81", align 8
  %"$$ud-registry.eConfigured_81_fptr_4012" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_81_4011", 0
  %"$$ud-registry.eConfigured_81_envptr_4013" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_81_4011", 1
  %"$$ud-registry.eConfigured_81_resolver_4014" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_81_resolver_4014", align 1
  %"$$ud-registry.eConfigured_81_call_4015" = call i8* %"$$ud-registry.eConfigured_81_fptr_4012"(i8* %"$$ud-registry.eConfigured_81_envptr_4013", [20 x i8]* %"$$ud-registry.eConfigured_81_resolver_4014")
  store i8* %"$$ud-registry.eConfigured_81_call_4015", i8** %"$ud-registry.eConfigured_82", align 8
  %"$$ud-registry.eConfigured_82_4016" = load i8*, i8** %"$ud-registry.eConfigured_82", align 8
  store i8* %"$$ud-registry.eConfigured_82_4016", i8** %e, align 8
  %"$e_4017" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_4019" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4017")
  %"$gasrem_4020" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4021" = icmp ugt i64 %"$_literal_cost_call_4019", %"$gasrem_4020"
  br i1 %"$gascmp_4021", label %"$out_of_gas_4022", label %"$have_gas_4023"

"$out_of_gas_4022":                               ; preds = %"$have_gas_3998"
  call void @_out_of_gas()
  br label %"$have_gas_4023"

"$have_gas_4023":                                 ; preds = %"$out_of_gas_4022", %"$have_gas_3998"
  %"$consume_4024" = sub i64 %"$gasrem_4020", %"$_literal_cost_call_4019"
  store i64 %"$consume_4024", i64* @_gasrem, align 8
  %"$execptr_load_4025" = load i8*, i8** @_execptr, align 8
  %"$e_4026" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_4025", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4026")
  br label %"$matchsucc_3952"

"$False_4027":                                    ; preds = %"$have_gas_3950"
  %"$isSenderOAO_4028" = bitcast %TName_Bool* %"$isSenderOAO_3953" to %CName_False*
  %"$gasrem_4029" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4030" = icmp ugt i64 1, %"$gasrem_4029"
  br i1 %"$gascmp_4030", label %"$out_of_gas_4031", label %"$have_gas_4032"

"$out_of_gas_4031":                               ; preds = %"$False_4027"
  call void @_out_of_gas()
  br label %"$have_gas_4032"

"$have_gas_4032":                                 ; preds = %"$out_of_gas_4031", %"$False_4027"
  %"$consume_4033" = sub i64 %"$gasrem_4029", 1
  store i64 %"$consume_4033", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_4034" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4035" = icmp ugt i64 1, %"$gasrem_4034"
  br i1 %"$gascmp_4035", label %"$out_of_gas_4036", label %"$have_gas_4037"

"$out_of_gas_4036":                               ; preds = %"$have_gas_4032"
  call void @_out_of_gas()
  br label %"$have_gas_4037"

"$have_gas_4037":                                 ; preds = %"$out_of_gas_4036", %"$have_gas_4032"
  %"$consume_4038" = sub i64 %"$gasrem_4034", 1
  store i64 %"$consume_4038", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_4039" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4040" = icmp ugt i64 1, %"$gasrem_4039"
  br i1 %"$gascmp_4040", label %"$out_of_gas_4041", label %"$have_gas_4042"

"$out_of_gas_4041":                               ; preds = %"$have_gas_4037"
  call void @_out_of_gas()
  br label %"$have_gas_4042"

"$have_gas_4042":                                 ; preds = %"$out_of_gas_4041", %"$have_gas_4037"
  %"$consume_4043" = sub i64 %"$gasrem_4039", 1
  store i64 %"$consume_4043", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_4044", i32 0, i32 0), i32 43 }, %String* %m, align 8
  %"$gasrem_4045" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4046" = icmp ugt i64 1, %"$gasrem_4045"
  br i1 %"$gascmp_4046", label %"$out_of_gas_4047", label %"$have_gas_4048"

"$out_of_gas_4047":                               ; preds = %"$have_gas_4042"
  call void @_out_of_gas()
  br label %"$have_gas_4048"

"$have_gas_4048":                                 ; preds = %"$out_of_gas_4047", %"$have_gas_4042"
  %"$consume_4049" = sub i64 %"$gasrem_4045", 1
  store i64 %"$consume_4049", i64* @_gasrem, align 8
  %"$ud-registry.eError_83" = alloca i8*, align 8
  %"$ud-registry.eError_4050" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_4051" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4050", 0
  %"$ud-registry.eError_envptr_4052" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4050", 1
  %"$m_4053" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_4054" = call i8* %"$ud-registry.eError_fptr_4051"(i8* %"$ud-registry.eError_envptr_4052", %String %"$m_4053")
  store i8* %"$ud-registry.eError_call_4054", i8** %"$ud-registry.eError_83", align 8
  %"$$ud-registry.eError_83_4055" = load i8*, i8** %"$ud-registry.eError_83", align 8
  store i8* %"$$ud-registry.eError_83_4055", i8** %e4, align 8
  %"$e_4056" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_4058" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4056")
  %"$gasrem_4059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4060" = icmp ugt i64 %"$_literal_cost_call_4058", %"$gasrem_4059"
  br i1 %"$gascmp_4060", label %"$out_of_gas_4061", label %"$have_gas_4062"

"$out_of_gas_4061":                               ; preds = %"$have_gas_4048"
  call void @_out_of_gas()
  br label %"$have_gas_4062"

"$have_gas_4062":                                 ; preds = %"$out_of_gas_4061", %"$have_gas_4048"
  %"$consume_4063" = sub i64 %"$gasrem_4059", %"$_literal_cost_call_4058"
  store i64 %"$consume_4063", i64* @_gasrem, align 8
  %"$execptr_load_4064" = load i8*, i8** @_execptr, align 8
  %"$e_4065" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_4064", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4065")
  br label %"$matchsucc_3952"

"$empty_default_3956":                            ; preds = %"$have_gas_3950"
  br label %"$matchsucc_3952"

"$matchsucc_3952":                                ; preds = %"$have_gas_4062", %"$have_gas_4023", %"$empty_default_3956"
  ret void
}

define void @configureResolver(i8* %0) {
entry:
  %"$_amount_4067" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4068" = bitcast i8* %"$_amount_4067" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4068", align 8
  %"$_origin_4069" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4070" = bitcast i8* %"$_origin_4069" to [20 x i8]*
  %"$_sender_4071" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4072" = bitcast i8* %"$_sender_4071" to [20 x i8]*
  %"$node_4073" = getelementptr i8, i8* %0, i32 56
  %"$node_4074" = bitcast i8* %"$node_4073" to [32 x i8]*
  %"$resolver_4075" = getelementptr i8, i8* %0, i32 88
  %"$resolver_4076" = bitcast i8* %"$resolver_4075" to [20 x i8]*
  call void @"$configureResolver_3844"(%Uint128 %_amount, [20 x i8]* %"$_origin_4070", [20 x i8]* %"$_sender_4072", [32 x i8]* %"$node_4074", [20 x i8]* %"$resolver_4076")
  ret void
}

define internal void @"$transfer_4077"(%Uint128 %_amount, [20 x i8]* %"$_origin_4078", [20 x i8]* %"$_sender_4079", [32 x i8]* %"$node_4080", [20 x i8]* %"$owner_4081") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4078", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4079", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_4080", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_4081", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_4082_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4082_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4082_salloc_load", i64 32)
  %"$indices_buf_4082_salloc" = bitcast i8* %"$indices_buf_4082_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4082" = bitcast [32 x i8]* %"$indices_buf_4082_salloc" to i8*
  %"$indices_gep_4083" = getelementptr i8, i8* %"$indices_buf_4082", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4083" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4085" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_4086" = call i8* @_fetch_field(i8* %"$execptr_load_4085", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4084", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4082", i32 1)
  %"$maybeRecord_4087" = bitcast i8* %"$maybeRecord_call_4086" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4087", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_4088" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_4088_4089" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4088" to i8*
  %"$_literal_cost_call_4090" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_4088_4089")
  %"$gasadd_4091" = add i64 %"$_literal_cost_call_4090", 0
  %"$gasadd_4092" = add i64 %"$gasadd_4091", 1
  %"$gasrem_4093" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4094" = icmp ugt i64 %"$gasadd_4092", %"$gasrem_4093"
  br i1 %"$gascmp_4094", label %"$out_of_gas_4095", label %"$have_gas_4096"

"$out_of_gas_4095":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4096"

"$have_gas_4096":                                 ; preds = %"$out_of_gas_4095", %entry
  %"$consume_4097" = sub i64 %"$gasrem_4093", %"$gasadd_4092"
  store i64 %"$consume_4097", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_4098_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4098_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4098_salloc_load", i64 32)
  %"$indices_buf_4098_salloc" = bitcast i8* %"$indices_buf_4098_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4098" = bitcast [32 x i8]* %"$indices_buf_4098_salloc" to i8*
  %"$indices_gep_4099" = getelementptr i8, i8* %"$indices_buf_4098", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4099" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4101" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_4102" = call i8* @_fetch_field(i8* %"$execptr_load_4101", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4100", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_4098", i32 1)
  %"$maybeApproved_4103" = bitcast i8* %"$maybeApproved_call_4102" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_4103", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_4104" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_4104_4105" = bitcast %TName_Option_ByStr20* %"$maybeApproved_4104" to i8*
  %"$_literal_cost_call_4106" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_4104_4105")
  %"$gasadd_4107" = add i64 %"$_literal_cost_call_4106", 0
  %"$gasadd_4108" = add i64 %"$gasadd_4107", 1
  %"$gasrem_4109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4110" = icmp ugt i64 %"$gasadd_4108", %"$gasrem_4109"
  br i1 %"$gascmp_4110", label %"$out_of_gas_4111", label %"$have_gas_4112"

"$out_of_gas_4111":                               ; preds = %"$have_gas_4096"
  call void @_out_of_gas()
  br label %"$have_gas_4112"

"$have_gas_4112":                                 ; preds = %"$out_of_gas_4111", %"$have_gas_4096"
  %"$consume_4113" = sub i64 %"$gasrem_4109", %"$gasadd_4108"
  store i64 %"$consume_4113", i64* @_gasrem, align 8
  %"$gasrem_4114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4115" = icmp ugt i64 1, %"$gasrem_4114"
  br i1 %"$gascmp_4115", label %"$out_of_gas_4116", label %"$have_gas_4117"

"$out_of_gas_4116":                               ; preds = %"$have_gas_4112"
  call void @_out_of_gas()
  br label %"$have_gas_4117"

"$have_gas_4117":                                 ; preds = %"$out_of_gas_4116", %"$have_gas_4112"
  %"$consume_4118" = sub i64 %"$gasrem_4114", 1
  store i64 %"$consume_4118", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_4119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4120" = icmp ugt i64 1, %"$gasrem_4119"
  br i1 %"$gascmp_4120", label %"$out_of_gas_4121", label %"$have_gas_4122"

"$out_of_gas_4121":                               ; preds = %"$have_gas_4117"
  call void @_out_of_gas()
  br label %"$have_gas_4122"

"$have_gas_4122":                                 ; preds = %"$out_of_gas_4121", %"$have_gas_4117"
  %"$consume_4123" = sub i64 %"$gasrem_4119", 1
  store i64 %"$consume_4123", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_99" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_4124" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_4125" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4124", 0
  %"$ud-registry.recordMemberOwner_envptr_4126" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4124", 1
  %"$maybeRecord_4127" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_4128" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_4125"(i8* %"$ud-registry.recordMemberOwner_envptr_4126", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4128", %TName_Option_ud-registry.Record* %"$maybeRecord_4127")
  %"$ud-registry.recordMemberOwner_ret_4129" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4128", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_4129", [20 x i8]* %"$ud-registry.recordMemberOwner_99", align 1
  %"$$ud-registry.recordMemberOwner_99_4130" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_99", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_99_4130", [20 x i8]* %recordOwner, align 1
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_4131_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4131_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4131_salloc_load", i64 20)
  %"$indices_buf_4131_salloc" = bitcast i8* %"$indices_buf_4131_salloc_salloc" to [20 x i8]*
  %"$indices_buf_4131" = bitcast [20 x i8]* %"$indices_buf_4131_salloc" to i8*
  %"$recordOwner_4132" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_4133" = getelementptr i8, i8* %"$indices_buf_4131", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4133" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4132", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_4135" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_4136" = call i8* @_fetch_field(i8* %"$execptr_load_4135", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_4134", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_4131", i32 1)
  %"$maybeOperators_4137" = bitcast i8* %"$maybeOperators_call_4136" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4137", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_4138" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_4138_4139" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4138" to i8*
  %"$_literal_cost_call_4140" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", i8* %"$$maybeOperators_4138_4139")
  %"$gasadd_4141" = add i64 %"$_literal_cost_call_4140", 0
  %"$gasadd_4142" = add i64 %"$gasadd_4141", 1
  %"$gasrem_4143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4144" = icmp ugt i64 %"$gasadd_4142", %"$gasrem_4143"
  br i1 %"$gascmp_4144", label %"$out_of_gas_4145", label %"$have_gas_4146"

"$out_of_gas_4145":                               ; preds = %"$have_gas_4122"
  call void @_out_of_gas()
  br label %"$have_gas_4146"

"$have_gas_4146":                                 ; preds = %"$out_of_gas_4145", %"$have_gas_4122"
  %"$consume_4147" = sub i64 %"$gasrem_4143", %"$gasadd_4142"
  store i64 %"$consume_4147", i64* @_gasrem, align 8
  %"$gasrem_4148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4149" = icmp ugt i64 1, %"$gasrem_4148"
  br i1 %"$gascmp_4149", label %"$out_of_gas_4150", label %"$have_gas_4151"

"$out_of_gas_4150":                               ; preds = %"$have_gas_4146"
  call void @_out_of_gas()
  br label %"$have_gas_4151"

"$have_gas_4151":                                 ; preds = %"$out_of_gas_4150", %"$have_gas_4146"
  %"$consume_4152" = sub i64 %"$gasrem_4148", 1
  store i64 %"$consume_4152", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_4153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4154" = icmp ugt i64 1, %"$gasrem_4153"
  br i1 %"$gascmp_4154", label %"$out_of_gas_4155", label %"$have_gas_4156"

"$out_of_gas_4155":                               ; preds = %"$have_gas_4151"
  call void @_out_of_gas()
  br label %"$have_gas_4156"

"$have_gas_4156":                                 ; preds = %"$out_of_gas_4155", %"$have_gas_4151"
  %"$consume_4157" = sub i64 %"$gasrem_4153", 1
  store i64 %"$consume_4157", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_95" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_4158" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_4159" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4158", 0
  %"$ud-registry.getIsOAO_envptr_4160" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4158", 1
  %"$ud-registry.getIsOAO__sender_4161" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_4161", align 1
  %"$ud-registry.getIsOAO_call_4162" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_4159"(i8* %"$ud-registry.getIsOAO_envptr_4160", [20 x i8]* %"$ud-registry.getIsOAO__sender_4161")
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_4162", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_95", align 8
  %"$ud-registry.getIsOAO_96" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_95_4163" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_95", align 8
  %"$$ud-registry.getIsOAO_95_fptr_4164" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_95_4163", 0
  %"$$ud-registry.getIsOAO_95_envptr_4165" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_95_4163", 1
  %"$$ud-registry.getIsOAO_95_recordOwner_4166" = alloca [20 x i8], align 1
  %"$recordOwner_4167" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_4167", [20 x i8]* %"$$ud-registry.getIsOAO_95_recordOwner_4166", align 1
  %"$$ud-registry.getIsOAO_95_call_4168" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_95_fptr_4164"(i8* %"$$ud-registry.getIsOAO_95_envptr_4165", [20 x i8]* %"$$ud-registry.getIsOAO_95_recordOwner_4166")
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_95_call_4168", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_96", align 8
  %"$ud-registry.getIsOAO_97" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_96_4169" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_96", align 8
  %"$$ud-registry.getIsOAO_96_fptr_4170" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_96_4169", 0
  %"$$ud-registry.getIsOAO_96_envptr_4171" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_96_4169", 1
  %"$maybeApproved_4172" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_96_call_4173" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_96_fptr_4170"(i8* %"$$ud-registry.getIsOAO_96_envptr_4171", %TName_Option_ByStr20* %"$maybeApproved_4172")
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_96_call_4173", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_97", align 8
  %"$ud-registry.getIsOAO_98" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_97_4174" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_97", align 8
  %"$$ud-registry.getIsOAO_97_fptr_4175" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_97_4174", 0
  %"$$ud-registry.getIsOAO_97_envptr_4176" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_97_4174", 1
  %"$maybeOperators_4177" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_97_call_4178" = call %TName_Bool* %"$$ud-registry.getIsOAO_97_fptr_4175"(i8* %"$$ud-registry.getIsOAO_97_envptr_4176", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4177")
  store %TName_Bool* %"$$ud-registry.getIsOAO_97_call_4178", %TName_Bool** %"$ud-registry.getIsOAO_98", align 8
  %"$$ud-registry.getIsOAO_98_4179" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_98", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_98_4179", %TName_Bool** %isSenderOAO, align 8
  %"$gasrem_4180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4181" = icmp ugt i64 2, %"$gasrem_4180"
  br i1 %"$gascmp_4181", label %"$out_of_gas_4182", label %"$have_gas_4183"

"$out_of_gas_4182":                               ; preds = %"$have_gas_4156"
  call void @_out_of_gas()
  br label %"$have_gas_4183"

"$have_gas_4183":                                 ; preds = %"$out_of_gas_4182", %"$have_gas_4156"
  %"$consume_4184" = sub i64 %"$gasrem_4180", 2
  store i64 %"$consume_4184", i64* @_gasrem, align 8
  %"$isSenderOAO_4186" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_4187" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_4186", i32 0, i32 0
  %"$isSenderOAO_tag_4188" = load i8, i8* %"$isSenderOAO_tag_4187", align 1
  switch i8 %"$isSenderOAO_tag_4188", label %"$empty_default_4189" [
    i8 0, label %"$True_4190"
    i8 1, label %"$False_4343"
  ]

"$True_4190":                                     ; preds = %"$have_gas_4183"
  %"$isSenderOAO_4191" = bitcast %TName_Bool* %"$isSenderOAO_4186" to %CName_True*
  %"$gasrem_4192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4193" = icmp ugt i64 1, %"$gasrem_4192"
  br i1 %"$gascmp_4193", label %"$out_of_gas_4194", label %"$have_gas_4195"

"$out_of_gas_4194":                               ; preds = %"$True_4190"
  call void @_out_of_gas()
  br label %"$have_gas_4195"

"$have_gas_4195":                                 ; preds = %"$out_of_gas_4194", %"$True_4190"
  %"$consume_4196" = sub i64 %"$gasrem_4192", 1
  store i64 %"$consume_4196", i64* @_gasrem, align 8
  %"$indices_buf_4197_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4197_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4197_salloc_load", i64 32)
  %"$indices_buf_4197_salloc" = bitcast i8* %"$indices_buf_4197_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4197" = bitcast [32 x i8]* %"$indices_buf_4197_salloc" to i8*
  %"$indices_gep_4198" = getelementptr i8, i8* %"$indices_buf_4197", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_4198" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_4199" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4199", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4200", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_4197", i8* null)
  %"$gasrem_4201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4202" = icmp ugt i64 1, %"$gasrem_4201"
  br i1 %"$gascmp_4202", label %"$out_of_gas_4203", label %"$have_gas_4204"

"$out_of_gas_4203":                               ; preds = %"$have_gas_4195"
  call void @_out_of_gas()
  br label %"$have_gas_4204"

"$have_gas_4204":                                 ; preds = %"$out_of_gas_4203", %"$have_gas_4195"
  %"$consume_4205" = sub i64 %"$gasrem_4201", 1
  store i64 %"$consume_4205", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_4206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4207" = icmp ugt i64 1, %"$gasrem_4206"
  br i1 %"$gascmp_4207", label %"$out_of_gas_4208", label %"$have_gas_4209"

"$out_of_gas_4208":                               ; preds = %"$have_gas_4204"
  call void @_out_of_gas()
  br label %"$have_gas_4209"

"$have_gas_4209":                                 ; preds = %"$out_of_gas_4208", %"$have_gas_4204"
  %"$consume_4210" = sub i64 %"$gasrem_4206", 1
  store i64 %"$consume_4210", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_4211" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_4212_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4212_salloc" = call i8* @_salloc(i8* %"$adtval_4212_load", i64 41)
  %"$adtval_4212" = bitcast i8* %"$adtval_4212_salloc" to %CName_ud-registry.Record*
  %"$adtgep_4213" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4212", i32 0, i32 0
  store i8 0, i8* %"$adtgep_4213", align 1
  %"$adtgep_4214" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4212", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_4214", align 1
  %"$adtgep_4215" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4212", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_4211", [20 x i8]* %"$adtgep_4215", align 1
  %"$adtptr_4216" = bitcast %CName_ud-registry.Record* %"$adtval_4212" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_4216", %TName_ud-registry.Record** %newRecord, align 8
  %"$newRecord_4217" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_4217_4218" = bitcast %TName_ud-registry.Record* %"$newRecord_4217" to i8*
  %"$_literal_cost_call_4219" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", i8* %"$$newRecord_4217_4218")
  %"$gasadd_4220" = add i64 %"$_literal_cost_call_4219", 1
  %"$gasrem_4221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4222" = icmp ugt i64 %"$gasadd_4220", %"$gasrem_4221"
  br i1 %"$gascmp_4222", label %"$out_of_gas_4223", label %"$have_gas_4224"

"$out_of_gas_4223":                               ; preds = %"$have_gas_4209"
  call void @_out_of_gas()
  br label %"$have_gas_4224"

"$have_gas_4224":                                 ; preds = %"$out_of_gas_4223", %"$have_gas_4209"
  %"$consume_4225" = sub i64 %"$gasrem_4221", %"$gasadd_4220"
  store i64 %"$consume_4225", i64* @_gasrem, align 8
  %"$indices_buf_4226_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4226_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4226_salloc_load", i64 32)
  %"$indices_buf_4226_salloc" = bitcast i8* %"$indices_buf_4226_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4226" = bitcast [32 x i8]* %"$indices_buf_4226_salloc" to i8*
  %"$indices_gep_4227" = getelementptr i8, i8* %"$indices_buf_4226", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4227" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast4, align 1
  %"$execptr_load_4228" = load i8*, i8** @_execptr, align 8
  %"$newRecord_4230" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_4231" = bitcast %TName_ud-registry.Record* %"$newRecord_4230" to i8*
  call void @_update_field(i8* %"$execptr_load_4228", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4229", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4226", i8* %"$update_value_4231")
  %"$gasrem_4232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4233" = icmp ugt i64 1, %"$gasrem_4232"
  br i1 %"$gascmp_4233", label %"$out_of_gas_4234", label %"$have_gas_4235"

"$out_of_gas_4234":                               ; preds = %"$have_gas_4224"
  call void @_out_of_gas()
  br label %"$have_gas_4235"

"$have_gas_4235":                                 ; preds = %"$out_of_gas_4234", %"$have_gas_4224"
  %"$consume_4236" = sub i64 %"$gasrem_4232", 1
  store i64 %"$consume_4236", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_4237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4238" = icmp ugt i64 1, %"$gasrem_4237"
  br i1 %"$gascmp_4238", label %"$out_of_gas_4239", label %"$have_gas_4240"

"$out_of_gas_4239":                               ; preds = %"$have_gas_4235"
  call void @_out_of_gas()
  br label %"$have_gas_4240"

"$have_gas_4240":                                 ; preds = %"$out_of_gas_4239", %"$have_gas_4235"
  %"$consume_4241" = sub i64 %"$gasrem_4237", 1
  store i64 %"$consume_4241", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_90" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_4242" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_4243" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4242", 0
  %"$ud-registry.eConfigured_envptr_4244" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4242", 1
  %"$ud-registry.eConfigured_node_4245" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_4245", align 1
  %"$ud-registry.eConfigured_call_4246" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_4243"(i8* %"$ud-registry.eConfigured_envptr_4244", [32 x i8]* %"$ud-registry.eConfigured_node_4245")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_4246", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_90", align 8
  %"$ud-registry.eConfigured_91" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_90_4247" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_90", align 8
  %"$$ud-registry.eConfigured_90_fptr_4248" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_90_4247", 0
  %"$$ud-registry.eConfigured_90_envptr_4249" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_90_4247", 1
  %"$$ud-registry.eConfigured_90_owner_4250" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_90_owner_4250", align 1
  %"$$ud-registry.eConfigured_90_call_4251" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_90_fptr_4248"(i8* %"$$ud-registry.eConfigured_90_envptr_4249", [20 x i8]* %"$$ud-registry.eConfigured_90_owner_4250")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_90_call_4251", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_91", align 8
  %"$ud-registry.eConfigured_92" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_91_4252" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_91", align 8
  %"$$ud-registry.eConfigured_91_fptr_4253" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_91_4252", 0
  %"$$ud-registry.eConfigured_91_envptr_4254" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_91_4252", 1
  %"$$ud-registry.eConfigured_91_ud-registry.zeroByStr20_4255" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_4256" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_4256", [20 x i8]* %"$$ud-registry.eConfigured_91_ud-registry.zeroByStr20_4255", align 1
  %"$$ud-registry.eConfigured_91_call_4257" = call i8* %"$$ud-registry.eConfigured_91_fptr_4253"(i8* %"$$ud-registry.eConfigured_91_envptr_4254", [20 x i8]* %"$$ud-registry.eConfigured_91_ud-registry.zeroByStr20_4255")
  store i8* %"$$ud-registry.eConfigured_91_call_4257", i8** %"$ud-registry.eConfigured_92", align 8
  %"$$ud-registry.eConfigured_92_4258" = load i8*, i8** %"$ud-registry.eConfigured_92", align 8
  store i8* %"$$ud-registry.eConfigured_92_4258", i8** %e, align 8
  %"$e_4259" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_4261" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4259")
  %"$gasrem_4262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4263" = icmp ugt i64 %"$_literal_cost_call_4261", %"$gasrem_4262"
  br i1 %"$gascmp_4263", label %"$out_of_gas_4264", label %"$have_gas_4265"

"$out_of_gas_4264":                               ; preds = %"$have_gas_4240"
  call void @_out_of_gas()
  br label %"$have_gas_4265"

"$have_gas_4265":                                 ; preds = %"$out_of_gas_4264", %"$have_gas_4240"
  %"$consume_4266" = sub i64 %"$gasrem_4262", %"$_literal_cost_call_4261"
  store i64 %"$consume_4266", i64* @_gasrem, align 8
  %"$execptr_load_4267" = load i8*, i8** @_execptr, align 8
  %"$e_4268" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_4267", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4268")
  %"$gasrem_4269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4270" = icmp ugt i64 1, %"$gasrem_4269"
  br i1 %"$gascmp_4270", label %"$out_of_gas_4271", label %"$have_gas_4272"

"$out_of_gas_4271":                               ; preds = %"$have_gas_4265"
  call void @_out_of_gas()
  br label %"$have_gas_4272"

"$have_gas_4272":                                 ; preds = %"$out_of_gas_4271", %"$have_gas_4265"
  %"$consume_4273" = sub i64 %"$gasrem_4269", 1
  store i64 %"$consume_4273", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_4274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4275" = icmp ugt i64 1, %"$gasrem_4274"
  br i1 %"$gascmp_4275", label %"$out_of_gas_4276", label %"$have_gas_4277"

"$out_of_gas_4276":                               ; preds = %"$have_gas_4272"
  call void @_out_of_gas()
  br label %"$have_gas_4277"

"$have_gas_4277":                                 ; preds = %"$out_of_gas_4276", %"$have_gas_4272"
  %"$consume_4278" = sub i64 %"$gasrem_4274", 1
  store i64 %"$consume_4278", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_4279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4280" = icmp ugt i64 1, %"$gasrem_4279"
  br i1 %"$gascmp_4280", label %"$out_of_gas_4281", label %"$have_gas_4282"

"$out_of_gas_4281":                               ; preds = %"$have_gas_4277"
  call void @_out_of_gas()
  br label %"$have_gas_4282"

"$have_gas_4282":                                 ; preds = %"$out_of_gas_4281", %"$have_gas_4277"
  %"$consume_4283" = sub i64 %"$gasrem_4279", 1
  store i64 %"$consume_4283", i64* @_gasrem, align 8
  %"$msgobj_4284_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4284_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4284_salloc_load", i64 225)
  %"$msgobj_4284_salloc" = bitcast i8* %"$msgobj_4284_salloc_salloc" to [225 x i8]*
  %"$msgobj_4284" = bitcast [225 x i8]* %"$msgobj_4284_salloc" to i8*
  store i8 5, i8* %"$msgobj_4284", align 1
  %"$msgobj_fname_4286" = getelementptr i8, i8* %"$msgobj_4284", i32 1
  %"$msgobj_fname_4287" = bitcast i8* %"$msgobj_fname_4286" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4285", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4287", align 8
  %"$msgobj_td_4288" = getelementptr i8, i8* %"$msgobj_4284", i32 17
  %"$msgobj_td_4289" = bitcast i8* %"$msgobj_td_4288" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4289", align 8
  %"$msgobj_v_4291" = getelementptr i8, i8* %"$msgobj_4284", i32 25
  %"$msgobj_v_4292" = bitcast i8* %"$msgobj_v_4291" to %String*
  store %String { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$stringlit_4290", i32 0, i32 0), i32 17 }, %String* %"$msgobj_v_4292", align 8
  %"$msgobj_fname_4294" = getelementptr i8, i8* %"$msgobj_4284", i32 41
  %"$msgobj_fname_4295" = bitcast i8* %"$msgobj_fname_4294" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4293", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4295", align 8
  %"$msgobj_td_4296" = getelementptr i8, i8* %"$msgobj_4284", i32 57
  %"$msgobj_td_4297" = bitcast i8* %"$msgobj_td_4296" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_4297", align 8
  %"$msgobj_v_4298" = getelementptr i8, i8* %"$msgobj_4284", i32 65
  %"$msgobj_v_4299" = bitcast i8* %"$msgobj_v_4298" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_4299", align 1
  %"$msgobj_fname_4301" = getelementptr i8, i8* %"$msgobj_4284", i32 97
  %"$msgobj_fname_4302" = bitcast i8* %"$msgobj_fname_4301" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4300", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4302", align 8
  %"$msgobj_td_4303" = getelementptr i8, i8* %"$msgobj_4284", i32 113
  %"$msgobj_td_4304" = bitcast i8* %"$msgobj_td_4303" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4304", align 8
  %"$msgobj_v_4305" = getelementptr i8, i8* %"$msgobj_4284", i32 121
  %"$msgobj_v_4306" = bitcast i8* %"$msgobj_v_4305" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4306", align 1
  %"$msgobj_fname_4308" = getelementptr i8, i8* %"$msgobj_4284", i32 141
  %"$msgobj_fname_4309" = bitcast i8* %"$msgobj_fname_4308" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4307", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4309", align 8
  %"$msgobj_td_4310" = getelementptr i8, i8* %"$msgobj_4284", i32 157
  %"$msgobj_td_4311" = bitcast i8* %"$msgobj_td_4310" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_4311", align 8
  %"$msgobj_v_4312" = getelementptr i8, i8* %"$msgobj_4284", i32 165
  %"$msgobj_v_4313" = bitcast i8* %"$msgobj_v_4312" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4313", align 8
  %"$msgobj_fname_4315" = getelementptr i8, i8* %"$msgobj_4284", i32 181
  %"$msgobj_fname_4316" = bitcast i8* %"$msgobj_fname_4315" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4314", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4316", align 8
  %"$msgobj_td_4317" = getelementptr i8, i8* %"$msgobj_4284", i32 197
  %"$msgobj_td_4318" = bitcast i8* %"$msgobj_td_4317" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4318", align 8
  %"$msgobj_v_4319" = getelementptr i8, i8* %"$msgobj_4284", i32 205
  %"$msgobj_v_4320" = bitcast i8* %"$msgobj_v_4319" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4320", align 1
  store i8* %"$msgobj_4284", i8** %m, align 8
  %"$gasrem_4322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4323" = icmp ugt i64 1, %"$gasrem_4322"
  br i1 %"$gascmp_4323", label %"$out_of_gas_4324", label %"$have_gas_4325"

"$out_of_gas_4324":                               ; preds = %"$have_gas_4282"
  call void @_out_of_gas()
  br label %"$have_gas_4325"

"$have_gas_4325":                                 ; preds = %"$out_of_gas_4324", %"$have_gas_4282"
  %"$consume_4326" = sub i64 %"$gasrem_4322", 1
  store i64 %"$consume_4326", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_89" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4327" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4328" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4327", 0
  %"$ud-registry.oneMsg_envptr_4329" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4327", 1
  %"$m_4330" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_4331" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4328"(i8* %"$ud-registry.oneMsg_envptr_4329", i8* %"$m_4330")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4331", %TName_List_Message** %"$ud-registry.oneMsg_89", align 8
  %"$$ud-registry.oneMsg_89_4332" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_89", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_89_4332", %TName_List_Message** %msgs, align 8
  %"$msgs_4333" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_4333_4334" = bitcast %TName_List_Message* %"$msgs_4333" to i8*
  %"$_literal_cost_call_4335" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_4333_4334")
  %"$gasrem_4336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4337" = icmp ugt i64 %"$_literal_cost_call_4335", %"$gasrem_4336"
  br i1 %"$gascmp_4337", label %"$out_of_gas_4338", label %"$have_gas_4339"

"$out_of_gas_4338":                               ; preds = %"$have_gas_4325"
  call void @_out_of_gas()
  br label %"$have_gas_4339"

"$have_gas_4339":                                 ; preds = %"$out_of_gas_4338", %"$have_gas_4325"
  %"$consume_4340" = sub i64 %"$gasrem_4336", %"$_literal_cost_call_4335"
  store i64 %"$consume_4340", i64* @_gasrem, align 8
  %"$execptr_load_4341" = load i8*, i8** @_execptr, align 8
  %"$msgs_4342" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_4341", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_4342")
  br label %"$matchsucc_4185"

"$False_4343":                                    ; preds = %"$have_gas_4183"
  %"$isSenderOAO_4344" = bitcast %TName_Bool* %"$isSenderOAO_4186" to %CName_False*
  %"$gasrem_4345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4346" = icmp ugt i64 1, %"$gasrem_4345"
  br i1 %"$gascmp_4346", label %"$out_of_gas_4347", label %"$have_gas_4348"

"$out_of_gas_4347":                               ; preds = %"$False_4343"
  call void @_out_of_gas()
  br label %"$have_gas_4348"

"$have_gas_4348":                                 ; preds = %"$out_of_gas_4347", %"$False_4343"
  %"$consume_4349" = sub i64 %"$gasrem_4345", 1
  store i64 %"$consume_4349", i64* @_gasrem, align 8
  %e5 = alloca i8*, align 8
  %"$gasrem_4350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4351" = icmp ugt i64 1, %"$gasrem_4350"
  br i1 %"$gascmp_4351", label %"$out_of_gas_4352", label %"$have_gas_4353"

"$out_of_gas_4352":                               ; preds = %"$have_gas_4348"
  call void @_out_of_gas()
  br label %"$have_gas_4353"

"$have_gas_4353":                                 ; preds = %"$out_of_gas_4352", %"$have_gas_4348"
  %"$consume_4354" = sub i64 %"$gasrem_4350", 1
  store i64 %"$consume_4354", i64* @_gasrem, align 8
  %m6 = alloca %String, align 8
  %"$gasrem_4355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4356" = icmp ugt i64 1, %"$gasrem_4355"
  br i1 %"$gascmp_4356", label %"$out_of_gas_4357", label %"$have_gas_4358"

"$out_of_gas_4357":                               ; preds = %"$have_gas_4353"
  call void @_out_of_gas()
  br label %"$have_gas_4358"

"$have_gas_4358":                                 ; preds = %"$out_of_gas_4357", %"$have_gas_4353"
  %"$consume_4359" = sub i64 %"$gasrem_4355", 1
  store i64 %"$consume_4359", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_4360", i32 0, i32 0), i32 43 }, %String* %m6, align 8
  %"$gasrem_4361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4362" = icmp ugt i64 1, %"$gasrem_4361"
  br i1 %"$gascmp_4362", label %"$out_of_gas_4363", label %"$have_gas_4364"

"$out_of_gas_4363":                               ; preds = %"$have_gas_4358"
  call void @_out_of_gas()
  br label %"$have_gas_4364"

"$have_gas_4364":                                 ; preds = %"$out_of_gas_4363", %"$have_gas_4358"
  %"$consume_4365" = sub i64 %"$gasrem_4361", 1
  store i64 %"$consume_4365", i64* @_gasrem, align 8
  %"$ud-registry.eError_94" = alloca i8*, align 8
  %"$ud-registry.eError_4366" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_4367" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4366", 0
  %"$ud-registry.eError_envptr_4368" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4366", 1
  %"$m_4369" = load %String, %String* %m6, align 8
  %"$ud-registry.eError_call_4370" = call i8* %"$ud-registry.eError_fptr_4367"(i8* %"$ud-registry.eError_envptr_4368", %String %"$m_4369")
  store i8* %"$ud-registry.eError_call_4370", i8** %"$ud-registry.eError_94", align 8
  %"$$ud-registry.eError_94_4371" = load i8*, i8** %"$ud-registry.eError_94", align 8
  store i8* %"$$ud-registry.eError_94_4371", i8** %e5, align 8
  %"$e_4372" = load i8*, i8** %e5, align 8
  %"$_literal_cost_call_4374" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4372")
  %"$gasrem_4375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4376" = icmp ugt i64 %"$_literal_cost_call_4374", %"$gasrem_4375"
  br i1 %"$gascmp_4376", label %"$out_of_gas_4377", label %"$have_gas_4378"

"$out_of_gas_4377":                               ; preds = %"$have_gas_4364"
  call void @_out_of_gas()
  br label %"$have_gas_4378"

"$have_gas_4378":                                 ; preds = %"$out_of_gas_4377", %"$have_gas_4364"
  %"$consume_4379" = sub i64 %"$gasrem_4375", %"$_literal_cost_call_4374"
  store i64 %"$consume_4379", i64* @_gasrem, align 8
  %"$execptr_load_4380" = load i8*, i8** @_execptr, align 8
  %"$e_4381" = load i8*, i8** %e5, align 8
  call void @_event(i8* %"$execptr_load_4380", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4381")
  %"$gasrem_4382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4383" = icmp ugt i64 1, %"$gasrem_4382"
  br i1 %"$gascmp_4383", label %"$out_of_gas_4384", label %"$have_gas_4385"

"$out_of_gas_4384":                               ; preds = %"$have_gas_4378"
  call void @_out_of_gas()
  br label %"$have_gas_4385"

"$have_gas_4385":                                 ; preds = %"$out_of_gas_4384", %"$have_gas_4378"
  %"$consume_4386" = sub i64 %"$gasrem_4382", 1
  store i64 %"$consume_4386", i64* @_gasrem, align 8
  %msgs7 = alloca %TName_List_Message*, align 8
  %"$gasrem_4387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4388" = icmp ugt i64 1, %"$gasrem_4387"
  br i1 %"$gascmp_4388", label %"$out_of_gas_4389", label %"$have_gas_4390"

"$out_of_gas_4389":                               ; preds = %"$have_gas_4385"
  call void @_out_of_gas()
  br label %"$have_gas_4390"

"$have_gas_4390":                                 ; preds = %"$out_of_gas_4389", %"$have_gas_4385"
  %"$consume_4391" = sub i64 %"$gasrem_4387", 1
  store i64 %"$consume_4391", i64* @_gasrem, align 8
  %"$m_1" = alloca i8*, align 8
  %"$gasrem_4392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4393" = icmp ugt i64 1, %"$gasrem_4392"
  br i1 %"$gascmp_4393", label %"$out_of_gas_4394", label %"$have_gas_4395"

"$out_of_gas_4394":                               ; preds = %"$have_gas_4390"
  call void @_out_of_gas()
  br label %"$have_gas_4395"

"$have_gas_4395":                                 ; preds = %"$out_of_gas_4394", %"$have_gas_4390"
  %"$consume_4396" = sub i64 %"$gasrem_4392", 1
  store i64 %"$consume_4396", i64* @_gasrem, align 8
  %"$msgobj_4397_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4397_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4397_salloc_load", i64 225)
  %"$msgobj_4397_salloc" = bitcast i8* %"$msgobj_4397_salloc_salloc" to [225 x i8]*
  %"$msgobj_4397" = bitcast [225 x i8]* %"$msgobj_4397_salloc" to i8*
  store i8 5, i8* %"$msgobj_4397", align 1
  %"$msgobj_fname_4399" = getelementptr i8, i8* %"$msgobj_4397", i32 1
  %"$msgobj_fname_4400" = bitcast i8* %"$msgobj_fname_4399" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4398", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4400", align 8
  %"$msgobj_td_4401" = getelementptr i8, i8* %"$msgobj_4397", i32 17
  %"$msgobj_td_4402" = bitcast i8* %"$msgobj_td_4401" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4402", align 8
  %"$msgobj_v_4404" = getelementptr i8, i8* %"$msgobj_4397", i32 25
  %"$msgobj_v_4405" = bitcast i8* %"$msgobj_v_4404" to %String*
  store %String { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$stringlit_4403", i32 0, i32 0), i32 17 }, %String* %"$msgobj_v_4405", align 8
  %"$msgobj_fname_4407" = getelementptr i8, i8* %"$msgobj_4397", i32 41
  %"$msgobj_fname_4408" = bitcast i8* %"$msgobj_fname_4407" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4406", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4408", align 8
  %"$msgobj_td_4409" = getelementptr i8, i8* %"$msgobj_4397", i32 57
  %"$msgobj_td_4410" = bitcast i8* %"$msgobj_td_4409" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_4410", align 8
  %"$msgobj_v_4411" = getelementptr i8, i8* %"$msgobj_4397", i32 65
  %"$msgobj_v_4412" = bitcast i8* %"$msgobj_v_4411" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_4412", align 1
  %"$msgobj_fname_4414" = getelementptr i8, i8* %"$msgobj_4397", i32 97
  %"$msgobj_fname_4415" = bitcast i8* %"$msgobj_fname_4414" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4413", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4415", align 8
  %"$msgobj_td_4416" = getelementptr i8, i8* %"$msgobj_4397", i32 113
  %"$msgobj_td_4417" = bitcast i8* %"$msgobj_td_4416" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4417", align 8
  %"$msgobj_v_4418" = getelementptr i8, i8* %"$msgobj_4397", i32 121
  %"$msgobj_v_4419" = bitcast i8* %"$msgobj_v_4418" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4419", align 1
  %"$msgobj_fname_4421" = getelementptr i8, i8* %"$msgobj_4397", i32 141
  %"$msgobj_fname_4422" = bitcast i8* %"$msgobj_fname_4421" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4420", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4422", align 8
  %"$msgobj_td_4423" = getelementptr i8, i8* %"$msgobj_4397", i32 157
  %"$msgobj_td_4424" = bitcast i8* %"$msgobj_td_4423" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_4424", align 8
  %"$msgobj_v_4425" = getelementptr i8, i8* %"$msgobj_4397", i32 165
  %"$msgobj_v_4426" = bitcast i8* %"$msgobj_v_4425" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4426", align 8
  %"$msgobj_fname_4428" = getelementptr i8, i8* %"$msgobj_4397", i32 181
  %"$msgobj_fname_4429" = bitcast i8* %"$msgobj_fname_4428" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4427", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4429", align 8
  %"$msgobj_td_4430" = getelementptr i8, i8* %"$msgobj_4397", i32 197
  %"$msgobj_td_4431" = bitcast i8* %"$msgobj_td_4430" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4431", align 8
  %"$msgobj_v_4432" = getelementptr i8, i8* %"$msgobj_4397", i32 205
  %"$msgobj_v_4433" = bitcast i8* %"$msgobj_v_4432" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4433", align 1
  store i8* %"$msgobj_4397", i8** %"$m_1", align 8
  %"$gasrem_4435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4436" = icmp ugt i64 1, %"$gasrem_4435"
  br i1 %"$gascmp_4436", label %"$out_of_gas_4437", label %"$have_gas_4438"

"$out_of_gas_4437":                               ; preds = %"$have_gas_4395"
  call void @_out_of_gas()
  br label %"$have_gas_4438"

"$have_gas_4438":                                 ; preds = %"$out_of_gas_4437", %"$have_gas_4395"
  %"$consume_4439" = sub i64 %"$gasrem_4435", 1
  store i64 %"$consume_4439", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_93" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4440" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4441" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4440", 0
  %"$ud-registry.oneMsg_envptr_4442" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4440", 1
  %"$$m_1_4443" = load i8*, i8** %"$m_1", align 8
  %"$ud-registry.oneMsg_call_4444" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4441"(i8* %"$ud-registry.oneMsg_envptr_4442", i8* %"$$m_1_4443")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4444", %TName_List_Message** %"$ud-registry.oneMsg_93", align 8
  %"$$ud-registry.oneMsg_93_4445" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_93", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_93_4445", %TName_List_Message** %msgs7, align 8
  %"$msgs_4446" = load %TName_List_Message*, %TName_List_Message** %msgs7, align 8
  %"$$msgs_4446_4447" = bitcast %TName_List_Message* %"$msgs_4446" to i8*
  %"$_literal_cost_call_4448" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_4446_4447")
  %"$gasrem_4449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4450" = icmp ugt i64 %"$_literal_cost_call_4448", %"$gasrem_4449"
  br i1 %"$gascmp_4450", label %"$out_of_gas_4451", label %"$have_gas_4452"

"$out_of_gas_4451":                               ; preds = %"$have_gas_4438"
  call void @_out_of_gas()
  br label %"$have_gas_4452"

"$have_gas_4452":                                 ; preds = %"$out_of_gas_4451", %"$have_gas_4438"
  %"$consume_4453" = sub i64 %"$gasrem_4449", %"$_literal_cost_call_4448"
  store i64 %"$consume_4453", i64* @_gasrem, align 8
  %"$execptr_load_4454" = load i8*, i8** @_execptr, align 8
  %"$msgs_4455" = load %TName_List_Message*, %TName_List_Message** %msgs7, align 8
  call void @_send(i8* %"$execptr_load_4454", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_4455")
  br label %"$matchsucc_4185"

"$empty_default_4189":                            ; preds = %"$have_gas_4183"
  br label %"$matchsucc_4185"

"$matchsucc_4185":                                ; preds = %"$have_gas_4452", %"$have_gas_4339", %"$empty_default_4189"
  ret void
}

define void @transfer(i8* %0) {
entry:
  %"$_amount_4457" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4458" = bitcast i8* %"$_amount_4457" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4458", align 8
  %"$_origin_4459" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4460" = bitcast i8* %"$_origin_4459" to [20 x i8]*
  %"$_sender_4461" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4462" = bitcast i8* %"$_sender_4461" to [20 x i8]*
  %"$node_4463" = getelementptr i8, i8* %0, i32 56
  %"$node_4464" = bitcast i8* %"$node_4463" to [32 x i8]*
  %"$owner_4465" = getelementptr i8, i8* %0, i32 88
  %"$owner_4466" = bitcast i8* %"$owner_4465" to [20 x i8]*
  call void @"$transfer_4077"(%Uint128 %_amount, [20 x i8]* %"$_origin_4460", [20 x i8]* %"$_sender_4462", [32 x i8]* %"$node_4464", [20 x i8]* %"$owner_4466")
  ret void
}

define internal void @"$assign_4467"(%Uint128 %_amount, [20 x i8]* %"$_origin_4468", [20 x i8]* %"$_sender_4469", [32 x i8]* %"$parent_4470", %String %label, [20 x i8]* %"$owner_4471") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4468", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4469", align 1
  %parent = load [32 x i8], [32 x i8]* %"$parent_4470", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_4471", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_4472_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4472_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4472_salloc_load", i64 32)
  %"$indices_buf_4472_salloc" = bitcast i8* %"$indices_buf_4472_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4472" = bitcast [32 x i8]* %"$indices_buf_4472_salloc" to i8*
  %"$indices_gep_4473" = getelementptr i8, i8* %"$indices_buf_4472", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4473" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4475" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_4476" = call i8* @_fetch_field(i8* %"$execptr_load_4475", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4474", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4472", i32 1)
  %"$maybeRecord_4477" = bitcast i8* %"$maybeRecord_call_4476" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4477", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_4478" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_4478_4479" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4478" to i8*
  %"$_literal_cost_call_4480" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_4478_4479")
  %"$gasadd_4481" = add i64 %"$_literal_cost_call_4480", 0
  %"$gasadd_4482" = add i64 %"$gasadd_4481", 1
  %"$gasrem_4483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4484" = icmp ugt i64 %"$gasadd_4482", %"$gasrem_4483"
  br i1 %"$gascmp_4484", label %"$out_of_gas_4485", label %"$have_gas_4486"

"$out_of_gas_4485":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4486"

"$have_gas_4486":                                 ; preds = %"$out_of_gas_4485", %entry
  %"$consume_4487" = sub i64 %"$gasrem_4483", %"$gasadd_4482"
  store i64 %"$consume_4487", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_4488_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4488_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4488_salloc_load", i64 32)
  %"$indices_buf_4488_salloc" = bitcast i8* %"$indices_buf_4488_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4488" = bitcast [32 x i8]* %"$indices_buf_4488_salloc" to i8*
  %"$indices_gep_4489" = getelementptr i8, i8* %"$indices_buf_4488", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4489" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4491" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_4492" = call i8* @_fetch_field(i8* %"$execptr_load_4491", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4490", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_4488", i32 1)
  %"$maybeApproved_4493" = bitcast i8* %"$maybeApproved_call_4492" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_4493", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_4494" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_4494_4495" = bitcast %TName_Option_ByStr20* %"$maybeApproved_4494" to i8*
  %"$_literal_cost_call_4496" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_4494_4495")
  %"$gasadd_4497" = add i64 %"$_literal_cost_call_4496", 0
  %"$gasadd_4498" = add i64 %"$gasadd_4497", 1
  %"$gasrem_4499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4500" = icmp ugt i64 %"$gasadd_4498", %"$gasrem_4499"
  br i1 %"$gascmp_4500", label %"$out_of_gas_4501", label %"$have_gas_4502"

"$out_of_gas_4501":                               ; preds = %"$have_gas_4486"
  call void @_out_of_gas()
  br label %"$have_gas_4502"

"$have_gas_4502":                                 ; preds = %"$out_of_gas_4501", %"$have_gas_4486"
  %"$consume_4503" = sub i64 %"$gasrem_4499", %"$gasadd_4498"
  store i64 %"$consume_4503", i64* @_gasrem, align 8
  %"$gasrem_4504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4505" = icmp ugt i64 1, %"$gasrem_4504"
  br i1 %"$gascmp_4505", label %"$out_of_gas_4506", label %"$have_gas_4507"

"$out_of_gas_4506":                               ; preds = %"$have_gas_4502"
  call void @_out_of_gas()
  br label %"$have_gas_4507"

"$have_gas_4507":                                 ; preds = %"$out_of_gas_4506", %"$have_gas_4502"
  %"$consume_4508" = sub i64 %"$gasrem_4504", 1
  store i64 %"$consume_4508", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_4509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4510" = icmp ugt i64 1, %"$gasrem_4509"
  br i1 %"$gascmp_4510", label %"$out_of_gas_4511", label %"$have_gas_4512"

"$out_of_gas_4511":                               ; preds = %"$have_gas_4507"
  call void @_out_of_gas()
  br label %"$have_gas_4512"

"$have_gas_4512":                                 ; preds = %"$out_of_gas_4511", %"$have_gas_4507"
  %"$consume_4513" = sub i64 %"$gasrem_4509", 1
  store i64 %"$consume_4513", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_114" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_4514" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_4515" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4514", 0
  %"$ud-registry.recordMemberOwner_envptr_4516" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4514", 1
  %"$maybeRecord_4517" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_4518" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_4515"(i8* %"$ud-registry.recordMemberOwner_envptr_4516", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4518", %TName_Option_ud-registry.Record* %"$maybeRecord_4517")
  %"$ud-registry.recordMemberOwner_ret_4519" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4518", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_4519", [20 x i8]* %"$ud-registry.recordMemberOwner_114", align 1
  %"$$ud-registry.recordMemberOwner_114_4520" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_114", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_114_4520", [20 x i8]* %recordOwner, align 1
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_4521_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4521_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4521_salloc_load", i64 20)
  %"$indices_buf_4521_salloc" = bitcast i8* %"$indices_buf_4521_salloc_salloc" to [20 x i8]*
  %"$indices_buf_4521" = bitcast [20 x i8]* %"$indices_buf_4521_salloc" to i8*
  %"$recordOwner_4522" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_4523" = getelementptr i8, i8* %"$indices_buf_4521", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4523" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4522", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_4525" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_4526" = call i8* @_fetch_field(i8* %"$execptr_load_4525", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_4524", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_323", i32 1, i8* %"$indices_buf_4521", i32 1)
  %"$maybeOperators_4527" = bitcast i8* %"$maybeOperators_call_4526" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4527", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_4528" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_4528_4529" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4528" to i8*
  %"$_literal_cost_call_4530" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_315", i8* %"$$maybeOperators_4528_4529")
  %"$gasadd_4531" = add i64 %"$_literal_cost_call_4530", 0
  %"$gasadd_4532" = add i64 %"$gasadd_4531", 1
  %"$gasrem_4533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4534" = icmp ugt i64 %"$gasadd_4532", %"$gasrem_4533"
  br i1 %"$gascmp_4534", label %"$out_of_gas_4535", label %"$have_gas_4536"

"$out_of_gas_4535":                               ; preds = %"$have_gas_4512"
  call void @_out_of_gas()
  br label %"$have_gas_4536"

"$have_gas_4536":                                 ; preds = %"$out_of_gas_4535", %"$have_gas_4512"
  %"$consume_4537" = sub i64 %"$gasrem_4533", %"$gasadd_4532"
  store i64 %"$consume_4537", i64* @_gasrem, align 8
  %"$gasrem_4538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4539" = icmp ugt i64 1, %"$gasrem_4538"
  br i1 %"$gascmp_4539", label %"$out_of_gas_4540", label %"$have_gas_4541"

"$out_of_gas_4540":                               ; preds = %"$have_gas_4536"
  call void @_out_of_gas()
  br label %"$have_gas_4541"

"$have_gas_4541":                                 ; preds = %"$out_of_gas_4540", %"$have_gas_4536"
  %"$consume_4542" = sub i64 %"$gasrem_4538", 1
  store i64 %"$consume_4542", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_4543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4544" = icmp ugt i64 1, %"$gasrem_4543"
  br i1 %"$gascmp_4544", label %"$out_of_gas_4545", label %"$have_gas_4546"

"$out_of_gas_4545":                               ; preds = %"$have_gas_4541"
  call void @_out_of_gas()
  br label %"$have_gas_4546"

"$have_gas_4546":                                 ; preds = %"$out_of_gas_4545", %"$have_gas_4541"
  %"$consume_4547" = sub i64 %"$gasrem_4543", 1
  store i64 %"$consume_4547", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_110" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_4548" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_4549" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4548", 0
  %"$ud-registry.getIsOAO_envptr_4550" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4548", 1
  %"$ud-registry.getIsOAO__sender_4551" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_4551", align 1
  %"$ud-registry.getIsOAO_call_4552" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_4549"(i8* %"$ud-registry.getIsOAO_envptr_4550", [20 x i8]* %"$ud-registry.getIsOAO__sender_4551")
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_4552", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_110", align 8
  %"$ud-registry.getIsOAO_111" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_110_4553" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_110", align 8
  %"$$ud-registry.getIsOAO_110_fptr_4554" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_110_4553", 0
  %"$$ud-registry.getIsOAO_110_envptr_4555" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_110_4553", 1
  %"$$ud-registry.getIsOAO_110_recordOwner_4556" = alloca [20 x i8], align 1
  %"$recordOwner_4557" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_4557", [20 x i8]* %"$$ud-registry.getIsOAO_110_recordOwner_4556", align 1
  %"$$ud-registry.getIsOAO_110_call_4558" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_110_fptr_4554"(i8* %"$$ud-registry.getIsOAO_110_envptr_4555", [20 x i8]* %"$$ud-registry.getIsOAO_110_recordOwner_4556")
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_110_call_4558", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_111", align 8
  %"$ud-registry.getIsOAO_112" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_111_4559" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_111", align 8
  %"$$ud-registry.getIsOAO_111_fptr_4560" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_111_4559", 0
  %"$$ud-registry.getIsOAO_111_envptr_4561" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_111_4559", 1
  %"$maybeApproved_4562" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_111_call_4563" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_111_fptr_4560"(i8* %"$$ud-registry.getIsOAO_111_envptr_4561", %TName_Option_ByStr20* %"$maybeApproved_4562")
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_111_call_4563", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_112", align 8
  %"$ud-registry.getIsOAO_113" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_112_4564" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_112", align 8
  %"$$ud-registry.getIsOAO_112_fptr_4565" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_112_4564", 0
  %"$$ud-registry.getIsOAO_112_envptr_4566" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_112_4564", 1
  %"$maybeOperators_4567" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_112_call_4568" = call %TName_Bool* %"$$ud-registry.getIsOAO_112_fptr_4565"(i8* %"$$ud-registry.getIsOAO_112_envptr_4566", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4567")
  store %TName_Bool* %"$$ud-registry.getIsOAO_112_call_4568", %TName_Bool** %"$ud-registry.getIsOAO_113", align 8
  %"$$ud-registry.getIsOAO_113_4569" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_113", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_113_4569", %TName_Bool** %isSenderOAO, align 8
  %"$gasrem_4570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4571" = icmp ugt i64 2, %"$gasrem_4570"
  br i1 %"$gascmp_4571", label %"$out_of_gas_4572", label %"$have_gas_4573"

"$out_of_gas_4572":                               ; preds = %"$have_gas_4546"
  call void @_out_of_gas()
  br label %"$have_gas_4573"

"$have_gas_4573":                                 ; preds = %"$out_of_gas_4572", %"$have_gas_4546"
  %"$consume_4574" = sub i64 %"$gasrem_4570", 2
  store i64 %"$consume_4574", i64* @_gasrem, align 8
  %"$isSenderOAO_4576" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_4577" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_4576", i32 0, i32 0
  %"$isSenderOAO_tag_4578" = load i8, i8* %"$isSenderOAO_tag_4577", align 1
  switch i8 %"$isSenderOAO_tag_4578", label %"$empty_default_4579" [
    i8 0, label %"$True_4580"
    i8 1, label %"$False_4823"
  ]

"$True_4580":                                     ; preds = %"$have_gas_4573"
  %"$isSenderOAO_4581" = bitcast %TName_Bool* %"$isSenderOAO_4576" to %CName_True*
  %"$gasrem_4582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4583" = icmp ugt i64 1, %"$gasrem_4582"
  br i1 %"$gascmp_4583", label %"$out_of_gas_4584", label %"$have_gas_4585"

"$out_of_gas_4584":                               ; preds = %"$True_4580"
  call void @_out_of_gas()
  br label %"$have_gas_4585"

"$have_gas_4585":                                 ; preds = %"$out_of_gas_4584", %"$True_4580"
  %"$consume_4586" = sub i64 %"$gasrem_4582", 1
  store i64 %"$consume_4586", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_4587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4588" = icmp ugt i64 1, %"$gasrem_4587"
  br i1 %"$gascmp_4588", label %"$out_of_gas_4589", label %"$have_gas_4590"

"$out_of_gas_4589":                               ; preds = %"$have_gas_4585"
  call void @_out_of_gas()
  br label %"$have_gas_4590"

"$have_gas_4590":                                 ; preds = %"$out_of_gas_4589", %"$have_gas_4585"
  %"$consume_4591" = sub i64 %"$gasrem_4587", 1
  store i64 %"$consume_4591", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_106" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_4592" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_4593" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4592", 0
  %"$ud-registry.parentLabelToNode_envptr_4594" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4592", 1
  %"$ud-registry.parentLabelToNode_parent_4595" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4595", align 1
  %"$ud-registry.parentLabelToNode_call_4596" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_4593"(i8* %"$ud-registry.parentLabelToNode_envptr_4594", [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4595")
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_4596", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_106", align 8
  %"$ud-registry.parentLabelToNode_107" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_106_4597" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_106", align 8
  %"$$ud-registry.parentLabelToNode_106_fptr_4598" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_106_4597", 0
  %"$$ud-registry.parentLabelToNode_106_envptr_4599" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_106_4597", 1
  %"$$ud-registry.parentLabelToNode_106_retalloca_4600" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_106_fptr_4598"(i8* %"$$ud-registry.parentLabelToNode_106_envptr_4599", [32 x i8]* %"$$ud-registry.parentLabelToNode_106_retalloca_4600", %String %label)
  %"$$ud-registry.parentLabelToNode_106_ret_4601" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_106_retalloca_4600", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_106_ret_4601", [32 x i8]* %"$ud-registry.parentLabelToNode_107", align 1
  %"$$ud-registry.parentLabelToNode_107_4602" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_107", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_107_4602", [32 x i8]* %node, align 1
  %recordExists = alloca %TName_Bool*, align 8
  %"$indices_buf_4603_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4603_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4603_salloc_load", i64 32)
  %"$indices_buf_4603_salloc" = bitcast i8* %"$indices_buf_4603_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4603" = bitcast [32 x i8]* %"$indices_buf_4603_salloc" to i8*
  %"$node_4604" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4605" = getelementptr i8, i8* %"$indices_buf_4603", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_4605" to [32 x i8]*
  store [32 x i8] %"$node_4604", [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_4607" = load i8*, i8** @_execptr, align 8
  %"$recordExists_call_4608" = call i8* @_fetch_field(i8* %"$execptr_load_4607", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4606", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4603", i32 0)
  %"$recordExists_4609" = bitcast i8* %"$recordExists_call_4608" to %TName_Bool*
  store %TName_Bool* %"$recordExists_4609", %TName_Bool** %recordExists, align 8
  %"$recordExists_4610" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$$recordExists_4610_4611" = bitcast %TName_Bool* %"$recordExists_4610" to i8*
  %"$_literal_cost_call_4612" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321", i8* %"$$recordExists_4610_4611")
  %"$gasadd_4613" = add i64 %"$_literal_cost_call_4612", 0
  %"$gasadd_4614" = add i64 %"$gasadd_4613", 1
  %"$gasrem_4615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4616" = icmp ugt i64 %"$gasadd_4614", %"$gasrem_4615"
  br i1 %"$gascmp_4616", label %"$out_of_gas_4617", label %"$have_gas_4618"

"$out_of_gas_4617":                               ; preds = %"$have_gas_4590"
  call void @_out_of_gas()
  br label %"$have_gas_4618"

"$have_gas_4618":                                 ; preds = %"$out_of_gas_4617", %"$have_gas_4590"
  %"$consume_4619" = sub i64 %"$gasrem_4615", %"$gasadd_4614"
  store i64 %"$consume_4619", i64* @_gasrem, align 8
  %"$gasrem_4620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4621" = icmp ugt i64 2, %"$gasrem_4620"
  br i1 %"$gascmp_4621", label %"$out_of_gas_4622", label %"$have_gas_4623"

"$out_of_gas_4622":                               ; preds = %"$have_gas_4618"
  call void @_out_of_gas()
  br label %"$have_gas_4623"

"$have_gas_4623":                                 ; preds = %"$out_of_gas_4622", %"$have_gas_4618"
  %"$consume_4624" = sub i64 %"$gasrem_4620", 2
  store i64 %"$consume_4624", i64* @_gasrem, align 8
  %"$recordExists_4626" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$recordExists_tag_4627" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$recordExists_4626", i32 0, i32 0
  %"$recordExists_tag_4628" = load i8, i8* %"$recordExists_tag_4627", align 1
  switch i8 %"$recordExists_tag_4628", label %"$default_4629" [
    i8 1, label %"$False_4630"
  ]

"$False_4630":                                    ; preds = %"$have_gas_4623"
  %"$recordExists_4631" = bitcast %TName_Bool* %"$recordExists_4626" to %CName_False*
  %"$gasrem_4632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4633" = icmp ugt i64 1, %"$gasrem_4632"
  br i1 %"$gascmp_4633", label %"$out_of_gas_4634", label %"$have_gas_4635"

"$out_of_gas_4634":                               ; preds = %"$False_4630"
  call void @_out_of_gas()
  br label %"$have_gas_4635"

"$have_gas_4635":                                 ; preds = %"$out_of_gas_4634", %"$False_4630"
  %"$consume_4636" = sub i64 %"$gasrem_4632", 1
  store i64 %"$consume_4636", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_4637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4638" = icmp ugt i64 1, %"$gasrem_4637"
  br i1 %"$gascmp_4638", label %"$out_of_gas_4639", label %"$have_gas_4640"

"$out_of_gas_4639":                               ; preds = %"$have_gas_4635"
  call void @_out_of_gas()
  br label %"$have_gas_4640"

"$have_gas_4640":                                 ; preds = %"$out_of_gas_4639", %"$have_gas_4635"
  %"$consume_4641" = sub i64 %"$gasrem_4637", 1
  store i64 %"$consume_4641", i64* @_gasrem, align 8
  %"$ud-registry.eNewDomain_104" = alloca { i8* (i8*, %String)*, i8* }, align 8
  %"$ud-registry.eNewDomain_4642" = load { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain, align 8
  %"$ud-registry.eNewDomain_fptr_4643" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_4642", 0
  %"$ud-registry.eNewDomain_envptr_4644" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_4642", 1
  %"$ud-registry.eNewDomain_parent_4645" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.eNewDomain_parent_4645", align 1
  %"$ud-registry.eNewDomain_call_4646" = call { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_fptr_4643"(i8* %"$ud-registry.eNewDomain_envptr_4644", [32 x i8]* %"$ud-registry.eNewDomain_parent_4645")
  store { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_call_4646", { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_104", align 8
  %"$ud-registry.eNewDomain_105" = alloca i8*, align 8
  %"$$ud-registry.eNewDomain_104_4647" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_104", align 8
  %"$$ud-registry.eNewDomain_104_fptr_4648" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_104_4647", 0
  %"$$ud-registry.eNewDomain_104_envptr_4649" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_104_4647", 1
  %"$$ud-registry.eNewDomain_104_call_4650" = call i8* %"$$ud-registry.eNewDomain_104_fptr_4648"(i8* %"$$ud-registry.eNewDomain_104_envptr_4649", %String %label)
  store i8* %"$$ud-registry.eNewDomain_104_call_4650", i8** %"$ud-registry.eNewDomain_105", align 8
  %"$$ud-registry.eNewDomain_105_4651" = load i8*, i8** %"$ud-registry.eNewDomain_105", align 8
  store i8* %"$$ud-registry.eNewDomain_105_4651", i8** %e, align 8
  %"$e_4652" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_4654" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4652")
  %"$gasrem_4655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4656" = icmp ugt i64 %"$_literal_cost_call_4654", %"$gasrem_4655"
  br i1 %"$gascmp_4656", label %"$out_of_gas_4657", label %"$have_gas_4658"

"$out_of_gas_4657":                               ; preds = %"$have_gas_4640"
  call void @_out_of_gas()
  br label %"$have_gas_4658"

"$have_gas_4658":                                 ; preds = %"$out_of_gas_4657", %"$have_gas_4640"
  %"$consume_4659" = sub i64 %"$gasrem_4655", %"$_literal_cost_call_4654"
  store i64 %"$consume_4659", i64* @_gasrem, align 8
  %"$execptr_load_4660" = load i8*, i8** @_execptr, align 8
  %"$e_4661" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_4660", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4661")
  br label %"$matchsucc_4625"

"$default_4629":                                  ; preds = %"$have_gas_4623"
  br label %"$joinp_7"

"$joinp_7":                                       ; preds = %"$default_4629"
  br label %"$matchsucc_4625"

"$matchsucc_4625":                                ; preds = %"$have_gas_4658", %"$joinp_7"
  %"$gasrem_4662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4663" = icmp ugt i64 1, %"$gasrem_4662"
  br i1 %"$gascmp_4663", label %"$out_of_gas_4664", label %"$have_gas_4665"

"$out_of_gas_4664":                               ; preds = %"$matchsucc_4625"
  call void @_out_of_gas()
  br label %"$have_gas_4665"

"$have_gas_4665":                                 ; preds = %"$out_of_gas_4664", %"$matchsucc_4625"
  %"$consume_4666" = sub i64 %"$gasrem_4662", 1
  store i64 %"$consume_4666", i64* @_gasrem, align 8
  %"$indices_buf_4667_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4667_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4667_salloc_load", i64 32)
  %"$indices_buf_4667_salloc" = bitcast i8* %"$indices_buf_4667_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4667" = bitcast [32 x i8]* %"$indices_buf_4667_salloc" to i8*
  %"$node_4668" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4669" = getelementptr i8, i8* %"$indices_buf_4667", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4669" to [32 x i8]*
  store [32 x i8] %"$node_4668", [32 x i8]* %indices_cast4, align 1
  %"$execptr_load_4670" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4670", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4671", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_4667", i8* null)
  %"$gasrem_4672" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4673" = icmp ugt i64 1, %"$gasrem_4672"
  br i1 %"$gascmp_4673", label %"$out_of_gas_4674", label %"$have_gas_4675"

"$out_of_gas_4674":                               ; preds = %"$have_gas_4665"
  call void @_out_of_gas()
  br label %"$have_gas_4675"

"$have_gas_4675":                                 ; preds = %"$out_of_gas_4674", %"$have_gas_4665"
  %"$consume_4676" = sub i64 %"$gasrem_4672", 1
  store i64 %"$consume_4676", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_4677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4678" = icmp ugt i64 1, %"$gasrem_4677"
  br i1 %"$gascmp_4678", label %"$out_of_gas_4679", label %"$have_gas_4680"

"$out_of_gas_4679":                               ; preds = %"$have_gas_4675"
  call void @_out_of_gas()
  br label %"$have_gas_4680"

"$have_gas_4680":                                 ; preds = %"$out_of_gas_4679", %"$have_gas_4675"
  %"$consume_4681" = sub i64 %"$gasrem_4677", 1
  store i64 %"$consume_4681", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_4682" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_4683_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4683_salloc" = call i8* @_salloc(i8* %"$adtval_4683_load", i64 41)
  %"$adtval_4683" = bitcast i8* %"$adtval_4683_salloc" to %CName_ud-registry.Record*
  %"$adtgep_4684" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4683", i32 0, i32 0
  store i8 0, i8* %"$adtgep_4684", align 1
  %"$adtgep_4685" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4683", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_4685", align 1
  %"$adtgep_4686" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4683", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_4682", [20 x i8]* %"$adtgep_4686", align 1
  %"$adtptr_4687" = bitcast %CName_ud-registry.Record* %"$adtval_4683" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_4687", %TName_ud-registry.Record** %newRecord, align 8
  %"$newRecord_4688" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_4688_4689" = bitcast %TName_ud-registry.Record* %"$newRecord_4688" to i8*
  %"$_literal_cost_call_4690" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", i8* %"$$newRecord_4688_4689")
  %"$gasadd_4691" = add i64 %"$_literal_cost_call_4690", 1
  %"$gasrem_4692" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4693" = icmp ugt i64 %"$gasadd_4691", %"$gasrem_4692"
  br i1 %"$gascmp_4693", label %"$out_of_gas_4694", label %"$have_gas_4695"

"$out_of_gas_4694":                               ; preds = %"$have_gas_4680"
  call void @_out_of_gas()
  br label %"$have_gas_4695"

"$have_gas_4695":                                 ; preds = %"$out_of_gas_4694", %"$have_gas_4680"
  %"$consume_4696" = sub i64 %"$gasrem_4692", %"$gasadd_4691"
  store i64 %"$consume_4696", i64* @_gasrem, align 8
  %"$indices_buf_4697_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4697_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4697_salloc_load", i64 32)
  %"$indices_buf_4697_salloc" = bitcast i8* %"$indices_buf_4697_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4697" = bitcast [32 x i8]* %"$indices_buf_4697_salloc" to i8*
  %"$node_4698" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4699" = getelementptr i8, i8* %"$indices_buf_4697", i32 0
  %indices_cast5 = bitcast i8* %"$indices_gep_4699" to [32 x i8]*
  store [32 x i8] %"$node_4698", [32 x i8]* %indices_cast5, align 1
  %"$execptr_load_4700" = load i8*, i8** @_execptr, align 8
  %"$newRecord_4702" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_4703" = bitcast %TName_ud-registry.Record* %"$newRecord_4702" to i8*
  call void @_update_field(i8* %"$execptr_load_4700", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4701", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4697", i8* %"$update_value_4703")
  %"$gasrem_4704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4705" = icmp ugt i64 1, %"$gasrem_4704"
  br i1 %"$gascmp_4705", label %"$out_of_gas_4706", label %"$have_gas_4707"

"$out_of_gas_4706":                               ; preds = %"$have_gas_4695"
  call void @_out_of_gas()
  br label %"$have_gas_4707"

"$have_gas_4707":                                 ; preds = %"$out_of_gas_4706", %"$have_gas_4695"
  %"$consume_4708" = sub i64 %"$gasrem_4704", 1
  store i64 %"$consume_4708", i64* @_gasrem, align 8
  %e6 = alloca i8*, align 8
  %"$gasrem_4709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4710" = icmp ugt i64 1, %"$gasrem_4709"
  br i1 %"$gascmp_4710", label %"$out_of_gas_4711", label %"$have_gas_4712"

"$out_of_gas_4711":                               ; preds = %"$have_gas_4707"
  call void @_out_of_gas()
  br label %"$have_gas_4712"

"$have_gas_4712":                                 ; preds = %"$out_of_gas_4711", %"$have_gas_4707"
  %"$consume_4713" = sub i64 %"$gasrem_4709", 1
  store i64 %"$consume_4713", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_101" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_4714" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_4715" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4714", 0
  %"$ud-registry.eConfigured_envptr_4716" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4714", 1
  %"$ud-registry.eConfigured_node_4717" = alloca [32 x i8], align 1
  %"$node_4718" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_4718", [32 x i8]* %"$ud-registry.eConfigured_node_4717", align 1
  %"$ud-registry.eConfigured_call_4719" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_4715"(i8* %"$ud-registry.eConfigured_envptr_4716", [32 x i8]* %"$ud-registry.eConfigured_node_4717")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_4719", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_101", align 8
  %"$ud-registry.eConfigured_102" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_101_4720" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_101", align 8
  %"$$ud-registry.eConfigured_101_fptr_4721" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_101_4720", 0
  %"$$ud-registry.eConfigured_101_envptr_4722" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_101_4720", 1
  %"$$ud-registry.eConfigured_101_owner_4723" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_101_owner_4723", align 1
  %"$$ud-registry.eConfigured_101_call_4724" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_101_fptr_4721"(i8* %"$$ud-registry.eConfigured_101_envptr_4722", [20 x i8]* %"$$ud-registry.eConfigured_101_owner_4723")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_101_call_4724", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_102", align 8
  %"$ud-registry.eConfigured_103" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_102_4725" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_102", align 8
  %"$$ud-registry.eConfigured_102_fptr_4726" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_102_4725", 0
  %"$$ud-registry.eConfigured_102_envptr_4727" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_102_4725", 1
  %"$$ud-registry.eConfigured_102_ud-registry.zeroByStr20_4728" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_4729" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_4729", [20 x i8]* %"$$ud-registry.eConfigured_102_ud-registry.zeroByStr20_4728", align 1
  %"$$ud-registry.eConfigured_102_call_4730" = call i8* %"$$ud-registry.eConfigured_102_fptr_4726"(i8* %"$$ud-registry.eConfigured_102_envptr_4727", [20 x i8]* %"$$ud-registry.eConfigured_102_ud-registry.zeroByStr20_4728")
  store i8* %"$$ud-registry.eConfigured_102_call_4730", i8** %"$ud-registry.eConfigured_103", align 8
  %"$$ud-registry.eConfigured_103_4731" = load i8*, i8** %"$ud-registry.eConfigured_103", align 8
  store i8* %"$$ud-registry.eConfigured_103_4731", i8** %e6, align 8
  %"$e_4732" = load i8*, i8** %e6, align 8
  %"$_literal_cost_call_4734" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4732")
  %"$gasrem_4735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4736" = icmp ugt i64 %"$_literal_cost_call_4734", %"$gasrem_4735"
  br i1 %"$gascmp_4736", label %"$out_of_gas_4737", label %"$have_gas_4738"

"$out_of_gas_4737":                               ; preds = %"$have_gas_4712"
  call void @_out_of_gas()
  br label %"$have_gas_4738"

"$have_gas_4738":                                 ; preds = %"$out_of_gas_4737", %"$have_gas_4712"
  %"$consume_4739" = sub i64 %"$gasrem_4735", %"$_literal_cost_call_4734"
  store i64 %"$consume_4739", i64* @_gasrem, align 8
  %"$execptr_load_4740" = load i8*, i8** @_execptr, align 8
  %"$e_4741" = load i8*, i8** %e6, align 8
  call void @_event(i8* %"$execptr_load_4740", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4741")
  %"$gasrem_4742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4743" = icmp ugt i64 1, %"$gasrem_4742"
  br i1 %"$gascmp_4743", label %"$out_of_gas_4744", label %"$have_gas_4745"

"$out_of_gas_4744":                               ; preds = %"$have_gas_4738"
  call void @_out_of_gas()
  br label %"$have_gas_4745"

"$have_gas_4745":                                 ; preds = %"$out_of_gas_4744", %"$have_gas_4738"
  %"$consume_4746" = sub i64 %"$gasrem_4742", 1
  store i64 %"$consume_4746", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_4747" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4748" = icmp ugt i64 1, %"$gasrem_4747"
  br i1 %"$gascmp_4748", label %"$out_of_gas_4749", label %"$have_gas_4750"

"$out_of_gas_4749":                               ; preds = %"$have_gas_4745"
  call void @_out_of_gas()
  br label %"$have_gas_4750"

"$have_gas_4750":                                 ; preds = %"$out_of_gas_4749", %"$have_gas_4745"
  %"$consume_4751" = sub i64 %"$gasrem_4747", 1
  store i64 %"$consume_4751", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_4752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4753" = icmp ugt i64 1, %"$gasrem_4752"
  br i1 %"$gascmp_4753", label %"$out_of_gas_4754", label %"$have_gas_4755"

"$out_of_gas_4754":                               ; preds = %"$have_gas_4750"
  call void @_out_of_gas()
  br label %"$have_gas_4755"

"$have_gas_4755":                                 ; preds = %"$out_of_gas_4754", %"$have_gas_4750"
  %"$consume_4756" = sub i64 %"$gasrem_4752", 1
  store i64 %"$consume_4756", i64* @_gasrem, align 8
  %"$msgobj_4757_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4757_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4757_salloc_load", i64 265)
  %"$msgobj_4757_salloc" = bitcast i8* %"$msgobj_4757_salloc_salloc" to [265 x i8]*
  %"$msgobj_4757" = bitcast [265 x i8]* %"$msgobj_4757_salloc" to i8*
  store i8 6, i8* %"$msgobj_4757", align 1
  %"$msgobj_fname_4759" = getelementptr i8, i8* %"$msgobj_4757", i32 1
  %"$msgobj_fname_4760" = bitcast i8* %"$msgobj_fname_4759" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4758", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4760", align 8
  %"$msgobj_td_4761" = getelementptr i8, i8* %"$msgobj_4757", i32 17
  %"$msgobj_td_4762" = bitcast i8* %"$msgobj_td_4761" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4762", align 8
  %"$msgobj_v_4764" = getelementptr i8, i8* %"$msgobj_4757", i32 25
  %"$msgobj_v_4765" = bitcast i8* %"$msgobj_v_4764" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_4763", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_4765", align 8
  %"$msgobj_fname_4767" = getelementptr i8, i8* %"$msgobj_4757", i32 41
  %"$msgobj_fname_4768" = bitcast i8* %"$msgobj_fname_4767" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_4766", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_4768", align 8
  %"$msgobj_td_4769" = getelementptr i8, i8* %"$msgobj_4757", i32 57
  %"$msgobj_td_4770" = bitcast i8* %"$msgobj_td_4769" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_4770", align 8
  %"$msgobj_v_4771" = getelementptr i8, i8* %"$msgobj_4757", i32 65
  %"$msgobj_v_4772" = bitcast i8* %"$msgobj_v_4771" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_4772", align 1
  %"$msgobj_fname_4774" = getelementptr i8, i8* %"$msgobj_4757", i32 97
  %"$msgobj_fname_4775" = bitcast i8* %"$msgobj_fname_4774" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4773", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4775", align 8
  %"$msgobj_td_4776" = getelementptr i8, i8* %"$msgobj_4757", i32 113
  %"$msgobj_td_4777" = bitcast i8* %"$msgobj_td_4776" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4777", align 8
  %"$msgobj_v_4778" = getelementptr i8, i8* %"$msgobj_4757", i32 121
  %"$msgobj_v_4779" = bitcast i8* %"$msgobj_v_4778" to %String*
  store %String %label, %String* %"$msgobj_v_4779", align 8
  %"$msgobj_fname_4781" = getelementptr i8, i8* %"$msgobj_4757", i32 137
  %"$msgobj_fname_4782" = bitcast i8* %"$msgobj_fname_4781" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4780", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4782", align 8
  %"$msgobj_td_4783" = getelementptr i8, i8* %"$msgobj_4757", i32 153
  %"$msgobj_td_4784" = bitcast i8* %"$msgobj_td_4783" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4784", align 8
  %"$msgobj_v_4785" = getelementptr i8, i8* %"$msgobj_4757", i32 161
  %"$msgobj_v_4786" = bitcast i8* %"$msgobj_v_4785" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4786", align 1
  %"$msgobj_fname_4788" = getelementptr i8, i8* %"$msgobj_4757", i32 181
  %"$msgobj_fname_4789" = bitcast i8* %"$msgobj_fname_4788" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4787", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4789", align 8
  %"$msgobj_td_4790" = getelementptr i8, i8* %"$msgobj_4757", i32 197
  %"$msgobj_td_4791" = bitcast i8* %"$msgobj_td_4790" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_4791", align 8
  %"$msgobj_v_4792" = getelementptr i8, i8* %"$msgobj_4757", i32 205
  %"$msgobj_v_4793" = bitcast i8* %"$msgobj_v_4792" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4793", align 8
  %"$msgobj_fname_4795" = getelementptr i8, i8* %"$msgobj_4757", i32 221
  %"$msgobj_fname_4796" = bitcast i8* %"$msgobj_fname_4795" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4794", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4796", align 8
  %"$msgobj_td_4797" = getelementptr i8, i8* %"$msgobj_4757", i32 237
  %"$msgobj_td_4798" = bitcast i8* %"$msgobj_td_4797" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4798", align 8
  %"$msgobj_v_4799" = getelementptr i8, i8* %"$msgobj_4757", i32 245
  %"$msgobj_v_4800" = bitcast i8* %"$msgobj_v_4799" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4800", align 1
  store i8* %"$msgobj_4757", i8** %m, align 8
  %"$gasrem_4802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4803" = icmp ugt i64 1, %"$gasrem_4802"
  br i1 %"$gascmp_4803", label %"$out_of_gas_4804", label %"$have_gas_4805"

"$out_of_gas_4804":                               ; preds = %"$have_gas_4755"
  call void @_out_of_gas()
  br label %"$have_gas_4805"

"$have_gas_4805":                                 ; preds = %"$out_of_gas_4804", %"$have_gas_4755"
  %"$consume_4806" = sub i64 %"$gasrem_4802", 1
  store i64 %"$consume_4806", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_100" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4807" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4808" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4807", 0
  %"$ud-registry.oneMsg_envptr_4809" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4807", 1
  %"$m_4810" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_4811" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4808"(i8* %"$ud-registry.oneMsg_envptr_4809", i8* %"$m_4810")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4811", %TName_List_Message** %"$ud-registry.oneMsg_100", align 8
  %"$$ud-registry.oneMsg_100_4812" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_100", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_100_4812", %TName_List_Message** %msgs, align 8
  %"$msgs_4813" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_4813_4814" = bitcast %TName_List_Message* %"$msgs_4813" to i8*
  %"$_literal_cost_call_4815" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_4813_4814")
  %"$gasrem_4816" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4817" = icmp ugt i64 %"$_literal_cost_call_4815", %"$gasrem_4816"
  br i1 %"$gascmp_4817", label %"$out_of_gas_4818", label %"$have_gas_4819"

"$out_of_gas_4818":                               ; preds = %"$have_gas_4805"
  call void @_out_of_gas()
  br label %"$have_gas_4819"

"$have_gas_4819":                                 ; preds = %"$out_of_gas_4818", %"$have_gas_4805"
  %"$consume_4820" = sub i64 %"$gasrem_4816", %"$_literal_cost_call_4815"
  store i64 %"$consume_4820", i64* @_gasrem, align 8
  %"$execptr_load_4821" = load i8*, i8** @_execptr, align 8
  %"$msgs_4822" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_4821", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_4822")
  br label %"$matchsucc_4575"

"$False_4823":                                    ; preds = %"$have_gas_4573"
  %"$isSenderOAO_4824" = bitcast %TName_Bool* %"$isSenderOAO_4576" to %CName_False*
  %"$gasrem_4825" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4826" = icmp ugt i64 1, %"$gasrem_4825"
  br i1 %"$gascmp_4826", label %"$out_of_gas_4827", label %"$have_gas_4828"

"$out_of_gas_4827":                               ; preds = %"$False_4823"
  call void @_out_of_gas()
  br label %"$have_gas_4828"

"$have_gas_4828":                                 ; preds = %"$out_of_gas_4827", %"$False_4823"
  %"$consume_4829" = sub i64 %"$gasrem_4825", 1
  store i64 %"$consume_4829", i64* @_gasrem, align 8
  %e7 = alloca i8*, align 8
  %"$gasrem_4830" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4831" = icmp ugt i64 1, %"$gasrem_4830"
  br i1 %"$gascmp_4831", label %"$out_of_gas_4832", label %"$have_gas_4833"

"$out_of_gas_4832":                               ; preds = %"$have_gas_4828"
  call void @_out_of_gas()
  br label %"$have_gas_4833"

"$have_gas_4833":                                 ; preds = %"$out_of_gas_4832", %"$have_gas_4828"
  %"$consume_4834" = sub i64 %"$gasrem_4830", 1
  store i64 %"$consume_4834", i64* @_gasrem, align 8
  %m8 = alloca %String, align 8
  %"$gasrem_4835" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4836" = icmp ugt i64 1, %"$gasrem_4835"
  br i1 %"$gascmp_4836", label %"$out_of_gas_4837", label %"$have_gas_4838"

"$out_of_gas_4837":                               ; preds = %"$have_gas_4833"
  call void @_out_of_gas()
  br label %"$have_gas_4838"

"$have_gas_4838":                                 ; preds = %"$out_of_gas_4837", %"$have_gas_4833"
  %"$consume_4839" = sub i64 %"$gasrem_4835", 1
  store i64 %"$consume_4839", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"$stringlit_4840", i32 0, i32 0), i32 45 }, %String* %m8, align 8
  %"$gasrem_4841" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4842" = icmp ugt i64 1, %"$gasrem_4841"
  br i1 %"$gascmp_4842", label %"$out_of_gas_4843", label %"$have_gas_4844"

"$out_of_gas_4843":                               ; preds = %"$have_gas_4838"
  call void @_out_of_gas()
  br label %"$have_gas_4844"

"$have_gas_4844":                                 ; preds = %"$out_of_gas_4843", %"$have_gas_4838"
  %"$consume_4845" = sub i64 %"$gasrem_4841", 1
  store i64 %"$consume_4845", i64* @_gasrem, align 8
  %"$ud-registry.eError_109" = alloca i8*, align 8
  %"$ud-registry.eError_4846" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_4847" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4846", 0
  %"$ud-registry.eError_envptr_4848" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4846", 1
  %"$m_4849" = load %String, %String* %m8, align 8
  %"$ud-registry.eError_call_4850" = call i8* %"$ud-registry.eError_fptr_4847"(i8* %"$ud-registry.eError_envptr_4848", %String %"$m_4849")
  store i8* %"$ud-registry.eError_call_4850", i8** %"$ud-registry.eError_109", align 8
  %"$$ud-registry.eError_109_4851" = load i8*, i8** %"$ud-registry.eError_109", align 8
  store i8* %"$$ud-registry.eError_109_4851", i8** %e7, align 8
  %"$e_4852" = load i8*, i8** %e7, align 8
  %"$_literal_cost_call_4854" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4852")
  %"$gasrem_4855" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4856" = icmp ugt i64 %"$_literal_cost_call_4854", %"$gasrem_4855"
  br i1 %"$gascmp_4856", label %"$out_of_gas_4857", label %"$have_gas_4858"

"$out_of_gas_4857":                               ; preds = %"$have_gas_4844"
  call void @_out_of_gas()
  br label %"$have_gas_4858"

"$have_gas_4858":                                 ; preds = %"$out_of_gas_4857", %"$have_gas_4844"
  %"$consume_4859" = sub i64 %"$gasrem_4855", %"$_literal_cost_call_4854"
  store i64 %"$consume_4859", i64* @_gasrem, align 8
  %"$execptr_load_4860" = load i8*, i8** @_execptr, align 8
  %"$e_4861" = load i8*, i8** %e7, align 8
  call void @_event(i8* %"$execptr_load_4860", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_4861")
  %"$gasrem_4862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4863" = icmp ugt i64 1, %"$gasrem_4862"
  br i1 %"$gascmp_4863", label %"$out_of_gas_4864", label %"$have_gas_4865"

"$out_of_gas_4864":                               ; preds = %"$have_gas_4858"
  call void @_out_of_gas()
  br label %"$have_gas_4865"

"$have_gas_4865":                                 ; preds = %"$out_of_gas_4864", %"$have_gas_4858"
  %"$consume_4866" = sub i64 %"$gasrem_4862", 1
  store i64 %"$consume_4866", i64* @_gasrem, align 8
  %msgs9 = alloca %TName_List_Message*, align 8
  %"$gasrem_4867" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4868" = icmp ugt i64 1, %"$gasrem_4867"
  br i1 %"$gascmp_4868", label %"$out_of_gas_4869", label %"$have_gas_4870"

"$out_of_gas_4869":                               ; preds = %"$have_gas_4865"
  call void @_out_of_gas()
  br label %"$have_gas_4870"

"$have_gas_4870":                                 ; preds = %"$out_of_gas_4869", %"$have_gas_4865"
  %"$consume_4871" = sub i64 %"$gasrem_4867", 1
  store i64 %"$consume_4871", i64* @_gasrem, align 8
  %"$m_2" = alloca i8*, align 8
  %"$gasrem_4872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4873" = icmp ugt i64 1, %"$gasrem_4872"
  br i1 %"$gascmp_4873", label %"$out_of_gas_4874", label %"$have_gas_4875"

"$out_of_gas_4874":                               ; preds = %"$have_gas_4870"
  call void @_out_of_gas()
  br label %"$have_gas_4875"

"$have_gas_4875":                                 ; preds = %"$out_of_gas_4874", %"$have_gas_4870"
  %"$consume_4876" = sub i64 %"$gasrem_4872", 1
  store i64 %"$consume_4876", i64* @_gasrem, align 8
  %"$msgobj_4877_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4877_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4877_salloc_load", i64 265)
  %"$msgobj_4877_salloc" = bitcast i8* %"$msgobj_4877_salloc_salloc" to [265 x i8]*
  %"$msgobj_4877" = bitcast [265 x i8]* %"$msgobj_4877_salloc" to i8*
  store i8 6, i8* %"$msgobj_4877", align 1
  %"$msgobj_fname_4879" = getelementptr i8, i8* %"$msgobj_4877", i32 1
  %"$msgobj_fname_4880" = bitcast i8* %"$msgobj_fname_4879" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4878", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4880", align 8
  %"$msgobj_td_4881" = getelementptr i8, i8* %"$msgobj_4877", i32 17
  %"$msgobj_td_4882" = bitcast i8* %"$msgobj_td_4881" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4882", align 8
  %"$msgobj_v_4884" = getelementptr i8, i8* %"$msgobj_4877", i32 25
  %"$msgobj_v_4885" = bitcast i8* %"$msgobj_v_4884" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_4883", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_4885", align 8
  %"$msgobj_fname_4887" = getelementptr i8, i8* %"$msgobj_4877", i32 41
  %"$msgobj_fname_4888" = bitcast i8* %"$msgobj_fname_4887" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_4886", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_4888", align 8
  %"$msgobj_td_4889" = getelementptr i8, i8* %"$msgobj_4877", i32 57
  %"$msgobj_td_4890" = bitcast i8* %"$msgobj_td_4889" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_4890", align 8
  %"$msgobj_v_4891" = getelementptr i8, i8* %"$msgobj_4877", i32 65
  %"$msgobj_v_4892" = bitcast i8* %"$msgobj_v_4891" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_4892", align 1
  %"$msgobj_fname_4894" = getelementptr i8, i8* %"$msgobj_4877", i32 97
  %"$msgobj_fname_4895" = bitcast i8* %"$msgobj_fname_4894" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4893", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4895", align 8
  %"$msgobj_td_4896" = getelementptr i8, i8* %"$msgobj_4877", i32 113
  %"$msgobj_td_4897" = bitcast i8* %"$msgobj_td_4896" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_4897", align 8
  %"$msgobj_v_4898" = getelementptr i8, i8* %"$msgobj_4877", i32 121
  %"$msgobj_v_4899" = bitcast i8* %"$msgobj_v_4898" to %String*
  store %String %label, %String* %"$msgobj_v_4899", align 8
  %"$msgobj_fname_4901" = getelementptr i8, i8* %"$msgobj_4877", i32 137
  %"$msgobj_fname_4902" = bitcast i8* %"$msgobj_fname_4901" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4900", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4902", align 8
  %"$msgobj_td_4903" = getelementptr i8, i8* %"$msgobj_4877", i32 153
  %"$msgobj_td_4904" = bitcast i8* %"$msgobj_td_4903" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4904", align 8
  %"$recordOwner_4905" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$msgobj_v_4906" = getelementptr i8, i8* %"$msgobj_4877", i32 161
  %"$msgobj_v_4907" = bitcast i8* %"$msgobj_v_4906" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4905", [20 x i8]* %"$msgobj_v_4907", align 1
  %"$msgobj_fname_4909" = getelementptr i8, i8* %"$msgobj_4877", i32 181
  %"$msgobj_fname_4910" = bitcast i8* %"$msgobj_fname_4909" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4908", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4910", align 8
  %"$msgobj_td_4911" = getelementptr i8, i8* %"$msgobj_4877", i32 197
  %"$msgobj_td_4912" = bitcast i8* %"$msgobj_td_4911" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_4912", align 8
  %"$msgobj_v_4913" = getelementptr i8, i8* %"$msgobj_4877", i32 205
  %"$msgobj_v_4914" = bitcast i8* %"$msgobj_v_4913" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4914", align 8
  %"$msgobj_fname_4916" = getelementptr i8, i8* %"$msgobj_4877", i32 221
  %"$msgobj_fname_4917" = bitcast i8* %"$msgobj_fname_4916" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4915", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4917", align 8
  %"$msgobj_td_4918" = getelementptr i8, i8* %"$msgobj_4877", i32 237
  %"$msgobj_td_4919" = bitcast i8* %"$msgobj_td_4918" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_4919", align 8
  %"$msgobj_v_4920" = getelementptr i8, i8* %"$msgobj_4877", i32 245
  %"$msgobj_v_4921" = bitcast i8* %"$msgobj_v_4920" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4921", align 1
  store i8* %"$msgobj_4877", i8** %"$m_2", align 8
  %"$gasrem_4923" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4924" = icmp ugt i64 1, %"$gasrem_4923"
  br i1 %"$gascmp_4924", label %"$out_of_gas_4925", label %"$have_gas_4926"

"$out_of_gas_4925":                               ; preds = %"$have_gas_4875"
  call void @_out_of_gas()
  br label %"$have_gas_4926"

"$have_gas_4926":                                 ; preds = %"$out_of_gas_4925", %"$have_gas_4875"
  %"$consume_4927" = sub i64 %"$gasrem_4923", 1
  store i64 %"$consume_4927", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_108" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4928" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4929" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4928", 0
  %"$ud-registry.oneMsg_envptr_4930" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4928", 1
  %"$$m_2_4931" = load i8*, i8** %"$m_2", align 8
  %"$ud-registry.oneMsg_call_4932" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4929"(i8* %"$ud-registry.oneMsg_envptr_4930", i8* %"$$m_2_4931")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4932", %TName_List_Message** %"$ud-registry.oneMsg_108", align 8
  %"$$ud-registry.oneMsg_108_4933" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_108", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_108_4933", %TName_List_Message** %msgs9, align 8
  %"$msgs_4934" = load %TName_List_Message*, %TName_List_Message** %msgs9, align 8
  %"$$msgs_4934_4935" = bitcast %TName_List_Message* %"$msgs_4934" to i8*
  %"$_literal_cost_call_4936" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_4934_4935")
  %"$gasrem_4937" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4938" = icmp ugt i64 %"$_literal_cost_call_4936", %"$gasrem_4937"
  br i1 %"$gascmp_4938", label %"$out_of_gas_4939", label %"$have_gas_4940"

"$out_of_gas_4939":                               ; preds = %"$have_gas_4926"
  call void @_out_of_gas()
  br label %"$have_gas_4940"

"$have_gas_4940":                                 ; preds = %"$out_of_gas_4939", %"$have_gas_4926"
  %"$consume_4941" = sub i64 %"$gasrem_4937", %"$_literal_cost_call_4936"
  store i64 %"$consume_4941", i64* @_gasrem, align 8
  %"$execptr_load_4942" = load i8*, i8** @_execptr, align 8
  %"$msgs_4943" = load %TName_List_Message*, %TName_List_Message** %msgs9, align 8
  call void @_send(i8* %"$execptr_load_4942", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_4943")
  br label %"$matchsucc_4575"

"$empty_default_4579":                            ; preds = %"$have_gas_4573"
  br label %"$matchsucc_4575"

"$matchsucc_4575":                                ; preds = %"$have_gas_4940", %"$have_gas_4819", %"$empty_default_4579"
  ret void
}

define void @assign(i8* %0) {
entry:
  %"$_amount_4945" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4946" = bitcast i8* %"$_amount_4945" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4946", align 8
  %"$_origin_4947" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4948" = bitcast i8* %"$_origin_4947" to [20 x i8]*
  %"$_sender_4949" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4950" = bitcast i8* %"$_sender_4949" to [20 x i8]*
  %"$parent_4951" = getelementptr i8, i8* %0, i32 56
  %"$parent_4952" = bitcast i8* %"$parent_4951" to [32 x i8]*
  %"$label_4953" = getelementptr i8, i8* %0, i32 88
  %"$label_4954" = bitcast i8* %"$label_4953" to %String*
  %label = load %String, %String* %"$label_4954", align 8
  %"$owner_4955" = getelementptr i8, i8* %0, i32 104
  %"$owner_4956" = bitcast i8* %"$owner_4955" to [20 x i8]*
  call void @"$assign_4467"(%Uint128 %_amount, [20 x i8]* %"$_origin_4948", [20 x i8]* %"$_sender_4950", [32 x i8]* %"$parent_4952", %String %label, [20 x i8]* %"$owner_4956")
  ret void
}

define internal void @"$bestow_4957"(%Uint128 %_amount, [20 x i8]* %"$_origin_4958", [20 x i8]* %"$_sender_4959", %String %label, [20 x i8]* %"$owner_4960", [20 x i8]* %"$resolver_4961") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4958", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4959", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_4960", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_4961", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_4963" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_4964" = call i8* @_fetch_field(i8* %"$execptr_load_4963", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_4962", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i32 0, i8* null, i32 1)
  %"$currentAdmins_4965" = bitcast i8* %"$currentAdmins_call_4964" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_4965", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_4966" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_4966_4967" = bitcast %TName_List_ByStr20* %"$currentAdmins_4966" to i8*
  %"$_literal_cost_call_4968" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i8* %"$$currentAdmins_4966_4967")
  %"$gasadd_4969" = add i64 %"$_literal_cost_call_4968", 0
  %"$gasrem_4970" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4971" = icmp ugt i64 %"$gasadd_4969", %"$gasrem_4970"
  br i1 %"$gascmp_4971", label %"$out_of_gas_4972", label %"$have_gas_4973"

"$out_of_gas_4972":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4973"

"$have_gas_4973":                                 ; preds = %"$out_of_gas_4972", %entry
  %"$consume_4974" = sub i64 %"$gasrem_4970", %"$gasadd_4969"
  store i64 %"$consume_4974", i64* @_gasrem, align 8
  %"$gasrem_4975" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4976" = icmp ugt i64 1, %"$gasrem_4975"
  br i1 %"$gascmp_4976", label %"$out_of_gas_4977", label %"$have_gas_4978"

"$out_of_gas_4977":                               ; preds = %"$have_gas_4973"
  call void @_out_of_gas()
  br label %"$have_gas_4978"

"$have_gas_4978":                                 ; preds = %"$out_of_gas_4977", %"$have_gas_4973"
  %"$consume_4979" = sub i64 %"$gasrem_4975", 1
  store i64 %"$consume_4979", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_4980" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4981" = icmp ugt i64 1, %"$gasrem_4980"
  br i1 %"$gascmp_4981", label %"$out_of_gas_4982", label %"$have_gas_4983"

"$out_of_gas_4982":                               ; preds = %"$have_gas_4978"
  call void @_out_of_gas()
  br label %"$have_gas_4983"

"$have_gas_4983":                                 ; preds = %"$out_of_gas_4982", %"$have_gas_4978"
  %"$consume_4984" = sub i64 %"$gasrem_4980", 1
  store i64 %"$consume_4984", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_132" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_4985" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_4986" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4985", 0
  %"$ud-registry.parentLabelToNode_envptr_4987" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4985", 1
  %"$ud-registry.parentLabelToNode_rootNode_4988" = alloca [32 x i8], align 1
  %"$rootNode_4989" = load [32 x i8], [32 x i8]* @_cparam_rootNode, align 1
  store [32 x i8] %"$rootNode_4989", [32 x i8]* %"$ud-registry.parentLabelToNode_rootNode_4988", align 1
  %"$ud-registry.parentLabelToNode_call_4990" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_4986"(i8* %"$ud-registry.parentLabelToNode_envptr_4987", [32 x i8]* %"$ud-registry.parentLabelToNode_rootNode_4988")
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_4990", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_132", align 8
  %"$ud-registry.parentLabelToNode_133" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_132_4991" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_132", align 8
  %"$$ud-registry.parentLabelToNode_132_fptr_4992" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_132_4991", 0
  %"$$ud-registry.parentLabelToNode_132_envptr_4993" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_132_4991", 1
  %"$$ud-registry.parentLabelToNode_132_retalloca_4994" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_132_fptr_4992"(i8* %"$$ud-registry.parentLabelToNode_132_envptr_4993", [32 x i8]* %"$$ud-registry.parentLabelToNode_132_retalloca_4994", %String %label)
  %"$$ud-registry.parentLabelToNode_132_ret_4995" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_132_retalloca_4994", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_132_ret_4995", [32 x i8]* %"$ud-registry.parentLabelToNode_133", align 1
  %"$$ud-registry.parentLabelToNode_133_4996" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_133", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_133_4996", [32 x i8]* %node, align 1
  %recordExists = alloca %TName_Bool*, align 8
  %"$indices_buf_4997_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4997_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4997_salloc_load", i64 32)
  %"$indices_buf_4997_salloc" = bitcast i8* %"$indices_buf_4997_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4997" = bitcast [32 x i8]* %"$indices_buf_4997_salloc" to i8*
  %"$node_4998" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4999" = getelementptr i8, i8* %"$indices_buf_4997", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4999" to [32 x i8]*
  store [32 x i8] %"$node_4998", [32 x i8]* %indices_cast, align 1
  %"$execptr_load_5001" = load i8*, i8** @_execptr, align 8
  %"$recordExists_call_5002" = call i8* @_fetch_field(i8* %"$execptr_load_5001", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5000", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_4997", i32 0)
  %"$recordExists_5003" = bitcast i8* %"$recordExists_call_5002" to %TName_Bool*
  store %TName_Bool* %"$recordExists_5003", %TName_Bool** %recordExists, align 8
  %"$recordExists_5004" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$$recordExists_5004_5005" = bitcast %TName_Bool* %"$recordExists_5004" to i8*
  %"$_literal_cost_call_5006" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_321", i8* %"$$recordExists_5004_5005")
  %"$gasadd_5007" = add i64 %"$_literal_cost_call_5006", 0
  %"$gasadd_5008" = add i64 %"$gasadd_5007", 1
  %"$gasrem_5009" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5010" = icmp ugt i64 %"$gasadd_5008", %"$gasrem_5009"
  br i1 %"$gascmp_5010", label %"$out_of_gas_5011", label %"$have_gas_5012"

"$out_of_gas_5011":                               ; preds = %"$have_gas_4983"
  call void @_out_of_gas()
  br label %"$have_gas_5012"

"$have_gas_5012":                                 ; preds = %"$out_of_gas_5011", %"$have_gas_4983"
  %"$consume_5013" = sub i64 %"$gasrem_5009", %"$gasadd_5008"
  store i64 %"$consume_5013", i64* @_gasrem, align 8
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_5014_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5014_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5014_salloc_load", i64 32)
  %"$indices_buf_5014_salloc" = bitcast i8* %"$indices_buf_5014_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5014" = bitcast [32 x i8]* %"$indices_buf_5014_salloc" to i8*
  %"$node_5015" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5016" = getelementptr i8, i8* %"$indices_buf_5014", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_5016" to [32 x i8]*
  store [32 x i8] %"$node_5015", [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_5018" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_5019" = call i8* @_fetch_field(i8* %"$execptr_load_5018", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5017", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_5014", i32 1)
  %"$maybeRecord_5020" = bitcast i8* %"$maybeRecord_call_5019" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_5020", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_5021" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_5021_5022" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5021" to i8*
  %"$_literal_cost_call_5023" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_5021_5022")
  %"$gasadd_5024" = add i64 %"$_literal_cost_call_5023", 0
  %"$gasadd_5025" = add i64 %"$gasadd_5024", 1
  %"$gasrem_5026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5027" = icmp ugt i64 %"$gasadd_5025", %"$gasrem_5026"
  br i1 %"$gascmp_5027", label %"$out_of_gas_5028", label %"$have_gas_5029"

"$out_of_gas_5028":                               ; preds = %"$have_gas_5012"
  call void @_out_of_gas()
  br label %"$have_gas_5029"

"$have_gas_5029":                                 ; preds = %"$out_of_gas_5028", %"$have_gas_5012"
  %"$consume_5030" = sub i64 %"$gasrem_5026", %"$gasadd_5025"
  store i64 %"$consume_5030", i64* @_gasrem, align 8
  %currentRegistrar = alloca [20 x i8], align 1
  %"$execptr_load_5032" = load i8*, i8** @_execptr, align 8
  %"$currentRegistrar_call_5033" = call i8* @_fetch_field(i8* %"$execptr_load_5032", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_5031", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i32 0, i8* null, i32 1)
  %"$currentRegistrar_5034" = bitcast i8* %"$currentRegistrar_call_5033" to [20 x i8]*
  %"$currentRegistrar_5035" = load [20 x i8], [20 x i8]* %"$currentRegistrar_5034", align 1
  store [20 x i8] %"$currentRegistrar_5035", [20 x i8]* %currentRegistrar, align 1
  %"$_literal_cost_currentRegistrar_5036" = alloca [20 x i8], align 1
  %"$currentRegistrar_5037" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5037", [20 x i8]* %"$_literal_cost_currentRegistrar_5036", align 1
  %"$$_literal_cost_currentRegistrar_5036_5038" = bitcast [20 x i8]* %"$_literal_cost_currentRegistrar_5036" to i8*
  %"$_literal_cost_call_5039" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i8* %"$$_literal_cost_currentRegistrar_5036_5038")
  %"$gasadd_5040" = add i64 %"$_literal_cost_call_5039", 0
  %"$gasrem_5041" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5042" = icmp ugt i64 %"$gasadd_5040", %"$gasrem_5041"
  br i1 %"$gascmp_5042", label %"$out_of_gas_5043", label %"$have_gas_5044"

"$out_of_gas_5043":                               ; preds = %"$have_gas_5029"
  call void @_out_of_gas()
  br label %"$have_gas_5044"

"$have_gas_5044":                                 ; preds = %"$out_of_gas_5043", %"$have_gas_5029"
  %"$consume_5045" = sub i64 %"$gasrem_5041", %"$gasadd_5040"
  store i64 %"$consume_5045", i64* @_gasrem, align 8
  %"$gasrem_5046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5047" = icmp ugt i64 1, %"$gasrem_5046"
  br i1 %"$gascmp_5047", label %"$out_of_gas_5048", label %"$have_gas_5049"

"$out_of_gas_5048":                               ; preds = %"$have_gas_5044"
  call void @_out_of_gas()
  br label %"$have_gas_5049"

"$have_gas_5049":                                 ; preds = %"$out_of_gas_5048", %"$have_gas_5044"
  %"$consume_5050" = sub i64 %"$gasrem_5046", 1
  store i64 %"$consume_5050", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_5051" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5052" = icmp ugt i64 1, %"$gasrem_5051"
  br i1 %"$gascmp_5052", label %"$out_of_gas_5053", label %"$have_gas_5054"

"$out_of_gas_5053":                               ; preds = %"$have_gas_5049"
  call void @_out_of_gas()
  br label %"$have_gas_5054"

"$have_gas_5054":                                 ; preds = %"$out_of_gas_5053", %"$have_gas_5049"
  %"$consume_5055" = sub i64 %"$gasrem_5051", 1
  store i64 %"$consume_5055", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_5056" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5057" = icmp ugt i64 1, %"$gasrem_5056"
  br i1 %"$gascmp_5057", label %"$out_of_gas_5058", label %"$have_gas_5059"

"$out_of_gas_5058":                               ; preds = %"$have_gas_5054"
  call void @_out_of_gas()
  br label %"$have_gas_5059"

"$have_gas_5059":                                 ; preds = %"$out_of_gas_5058", %"$have_gas_5054"
  %"$consume_5060" = sub i64 %"$gasrem_5056", 1
  store i64 %"$consume_5060", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_121" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_5061" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_5062" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5061", 0
  %"$ud-registry.listByStr20Contains_envptr_5063" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5061", 1
  %"$currentAdmins_5064" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_5065" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_5062"(i8* %"$ud-registry.listByStr20Contains_envptr_5063", %TName_List_ByStr20* %"$currentAdmins_5064")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_5065", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_121", align 8
  %"$ud-registry.listByStr20Contains_122" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_121_5066" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_121", align 8
  %"$$ud-registry.listByStr20Contains_121_fptr_5067" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_121_5066", 0
  %"$$ud-registry.listByStr20Contains_121_envptr_5068" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_121_5066", 1
  %"$$ud-registry.listByStr20Contains_121__sender_5069" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_121__sender_5069", align 1
  %"$$ud-registry.listByStr20Contains_121_call_5070" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_121_fptr_5067"(i8* %"$$ud-registry.listByStr20Contains_121_envptr_5068", [20 x i8]* %"$$ud-registry.listByStr20Contains_121__sender_5069")
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_121_call_5070", %TName_Bool** %"$ud-registry.listByStr20Contains_122", align 8
  %"$$ud-registry.listByStr20Contains_122_5071" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_122", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_122_5071", %TName_Bool** %isSenderAdmin, align 8
  %"$gasrem_5072" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5073" = icmp ugt i64 1, %"$gasrem_5072"
  br i1 %"$gascmp_5073", label %"$out_of_gas_5074", label %"$have_gas_5075"

"$out_of_gas_5074":                               ; preds = %"$have_gas_5059"
  call void @_out_of_gas()
  br label %"$have_gas_5075"

"$have_gas_5075":                                 ; preds = %"$out_of_gas_5074", %"$have_gas_5059"
  %"$consume_5076" = sub i64 %"$gasrem_5072", 1
  store i64 %"$consume_5076", i64* @_gasrem, align 8
  %isSenderRegistrar = alloca %TName_Bool*, align 8
  %"$gasrem_5077" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5078" = icmp ugt i64 20, %"$gasrem_5077"
  br i1 %"$gascmp_5078", label %"$out_of_gas_5079", label %"$have_gas_5080"

"$out_of_gas_5079":                               ; preds = %"$have_gas_5075"
  call void @_out_of_gas()
  br label %"$have_gas_5080"

"$have_gas_5080":                                 ; preds = %"$out_of_gas_5079", %"$have_gas_5075"
  %"$consume_5081" = sub i64 %"$gasrem_5077", 20
  store i64 %"$consume_5081", i64* @_gasrem, align 8
  %"$execptr_load_5082" = load i8*, i8** @_execptr, align 8
  %"$eq_currentRegistrar_5083" = alloca [20 x i8], align 1
  %"$currentRegistrar_5084" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5084", [20 x i8]* %"$eq_currentRegistrar_5083", align 1
  %"$$eq_currentRegistrar_5083_5085" = bitcast [20 x i8]* %"$eq_currentRegistrar_5083" to i8*
  %"$eq__sender_5086" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_5086", align 1
  %"$$eq__sender_5086_5087" = bitcast [20 x i8]* %"$eq__sender_5086" to i8*
  %"$eq_call_5088" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5082", i32 20, i8* %"$$eq_currentRegistrar_5083_5085", i8* %"$$eq__sender_5086_5087")
  store %TName_Bool* %"$eq_call_5088", %TName_Bool** %isSenderRegistrar, align 8
  %"$gasrem_5090" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5091" = icmp ugt i64 1, %"$gasrem_5090"
  br i1 %"$gascmp_5091", label %"$out_of_gas_5092", label %"$have_gas_5093"

"$out_of_gas_5092":                               ; preds = %"$have_gas_5080"
  call void @_out_of_gas()
  br label %"$have_gas_5093"

"$have_gas_5093":                                 ; preds = %"$out_of_gas_5092", %"$have_gas_5080"
  %"$consume_5094" = sub i64 %"$gasrem_5090", 1
  store i64 %"$consume_5094", i64* @_gasrem, align 8
  %isOkSender = alloca %TName_Bool*, align 8
  %"$gasrem_5095" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5096" = icmp ugt i64 1, %"$gasrem_5095"
  br i1 %"$gascmp_5096", label %"$out_of_gas_5097", label %"$have_gas_5098"

"$out_of_gas_5097":                               ; preds = %"$have_gas_5093"
  call void @_out_of_gas()
  br label %"$have_gas_5098"

"$have_gas_5098":                                 ; preds = %"$out_of_gas_5097", %"$have_gas_5093"
  %"$consume_5099" = sub i64 %"$gasrem_5095", 1
  store i64 %"$consume_5099", i64* @_gasrem, align 8
  %"$BoolUtils.orb_123" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_5100" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_5101" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5100", 0
  %"$BoolUtils.orb_envptr_5102" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5100", 1
  %"$isSenderRegistrar_5103" = load %TName_Bool*, %TName_Bool** %isSenderRegistrar, align 8
  %"$BoolUtils.orb_call_5104" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_5101"(i8* %"$BoolUtils.orb_envptr_5102", %TName_Bool* %"$isSenderRegistrar_5103")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_5104", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_123", align 8
  %"$BoolUtils.orb_124" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_123_5105" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_123", align 8
  %"$$BoolUtils.orb_123_fptr_5106" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_123_5105", 0
  %"$$BoolUtils.orb_123_envptr_5107" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_123_5105", 1
  %"$isSenderAdmin_5108" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$$BoolUtils.orb_123_call_5109" = call %TName_Bool* %"$$BoolUtils.orb_123_fptr_5106"(i8* %"$$BoolUtils.orb_123_envptr_5107", %TName_Bool* %"$isSenderAdmin_5108")
  store %TName_Bool* %"$$BoolUtils.orb_123_call_5109", %TName_Bool** %"$BoolUtils.orb_124", align 8
  %"$$BoolUtils.orb_124_5110" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_124", align 8
  store %TName_Bool* %"$$BoolUtils.orb_124_5110", %TName_Bool** %isOkSender, align 8
  %"$gasrem_5111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5112" = icmp ugt i64 1, %"$gasrem_5111"
  br i1 %"$gascmp_5112", label %"$out_of_gas_5113", label %"$have_gas_5114"

"$out_of_gas_5113":                               ; preds = %"$have_gas_5098"
  call void @_out_of_gas()
  br label %"$have_gas_5114"

"$have_gas_5114":                                 ; preds = %"$out_of_gas_5113", %"$have_gas_5098"
  %"$consume_5115" = sub i64 %"$gasrem_5111", 1
  store i64 %"$consume_5115", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_5116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5117" = icmp ugt i64 1, %"$gasrem_5116"
  br i1 %"$gascmp_5117", label %"$out_of_gas_5118", label %"$have_gas_5119"

"$out_of_gas_5118":                               ; preds = %"$have_gas_5114"
  call void @_out_of_gas()
  br label %"$have_gas_5119"

"$have_gas_5119":                                 ; preds = %"$out_of_gas_5118", %"$have_gas_5114"
  %"$consume_5120" = sub i64 %"$gasrem_5116", 1
  store i64 %"$consume_5120", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_125" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_5121" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_5122" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5121", 0
  %"$ud-registry.recordMemberOwner_envptr_5123" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5121", 1
  %"$maybeRecord_5124" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_5125" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_5122"(i8* %"$ud-registry.recordMemberOwner_envptr_5123", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5125", %TName_Option_ud-registry.Record* %"$maybeRecord_5124")
  %"$ud-registry.recordMemberOwner_ret_5126" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5125", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_5126", [20 x i8]* %"$ud-registry.recordMemberOwner_125", align 1
  %"$$ud-registry.recordMemberOwner_125_5127" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_125", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_125_5127", [20 x i8]* %recordOwner, align 1
  %"$gasrem_5128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5129" = icmp ugt i64 1, %"$gasrem_5128"
  br i1 %"$gascmp_5129", label %"$out_of_gas_5130", label %"$have_gas_5131"

"$out_of_gas_5130":                               ; preds = %"$have_gas_5119"
  call void @_out_of_gas()
  br label %"$have_gas_5131"

"$have_gas_5131":                                 ; preds = %"$out_of_gas_5130", %"$have_gas_5119"
  %"$consume_5132" = sub i64 %"$gasrem_5128", 1
  store i64 %"$consume_5132", i64* @_gasrem, align 8
  %recordIsUnowned = alloca %TName_Bool*, align 8
  %"$gasrem_5133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5134" = icmp ugt i64 20, %"$gasrem_5133"
  br i1 %"$gascmp_5134", label %"$out_of_gas_5135", label %"$have_gas_5136"

"$out_of_gas_5135":                               ; preds = %"$have_gas_5131"
  call void @_out_of_gas()
  br label %"$have_gas_5136"

"$have_gas_5136":                                 ; preds = %"$out_of_gas_5135", %"$have_gas_5131"
  %"$consume_5137" = sub i64 %"$gasrem_5133", 20
  store i64 %"$consume_5137", i64* @_gasrem, align 8
  %"$execptr_load_5138" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5139" = alloca [20 x i8], align 1
  %"$recordOwner_5140" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5140", [20 x i8]* %"$eq_recordOwner_5139", align 1
  %"$$eq_recordOwner_5139_5141" = bitcast [20 x i8]* %"$eq_recordOwner_5139" to i8*
  %"$eq_ud-registry.zeroByStr20_5142" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5143" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5143", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5142", align 1
  %"$$eq_ud-registry.zeroByStr20_5142_5144" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5142" to i8*
  %"$eq_call_5145" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5138", i32 20, i8* %"$$eq_recordOwner_5139_5141", i8* %"$$eq_ud-registry.zeroByStr20_5142_5144")
  store %TName_Bool* %"$eq_call_5145", %TName_Bool** %recordIsUnowned, align 8
  %"$gasrem_5147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5148" = icmp ugt i64 1, %"$gasrem_5147"
  br i1 %"$gascmp_5148", label %"$out_of_gas_5149", label %"$have_gas_5150"

"$out_of_gas_5149":                               ; preds = %"$have_gas_5136"
  call void @_out_of_gas()
  br label %"$have_gas_5150"

"$have_gas_5150":                                 ; preds = %"$out_of_gas_5149", %"$have_gas_5136"
  %"$consume_5151" = sub i64 %"$gasrem_5147", 1
  store i64 %"$consume_5151", i64* @_gasrem, align 8
  %recordIsOwnedByRegistrar = alloca %TName_Bool*, align 8
  %"$gasrem_5152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5153" = icmp ugt i64 20, %"$gasrem_5152"
  br i1 %"$gascmp_5153", label %"$out_of_gas_5154", label %"$have_gas_5155"

"$out_of_gas_5154":                               ; preds = %"$have_gas_5150"
  call void @_out_of_gas()
  br label %"$have_gas_5155"

"$have_gas_5155":                                 ; preds = %"$out_of_gas_5154", %"$have_gas_5150"
  %"$consume_5156" = sub i64 %"$gasrem_5152", 20
  store i64 %"$consume_5156", i64* @_gasrem, align 8
  %"$execptr_load_5157" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5158" = alloca [20 x i8], align 1
  %"$recordOwner_5159" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5159", [20 x i8]* %"$eq_recordOwner_5158", align 1
  %"$$eq_recordOwner_5158_5160" = bitcast [20 x i8]* %"$eq_recordOwner_5158" to i8*
  %"$eq_currentRegistrar_5161" = alloca [20 x i8], align 1
  %"$currentRegistrar_5162" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5162", [20 x i8]* %"$eq_currentRegistrar_5161", align 1
  %"$$eq_currentRegistrar_5161_5163" = bitcast [20 x i8]* %"$eq_currentRegistrar_5161" to i8*
  %"$eq_call_5164" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5157", i32 20, i8* %"$$eq_recordOwner_5158_5160", i8* %"$$eq_currentRegistrar_5161_5163")
  store %TName_Bool* %"$eq_call_5164", %TName_Bool** %recordIsOwnedByRegistrar, align 8
  %"$gasrem_5166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5167" = icmp ugt i64 1, %"$gasrem_5166"
  br i1 %"$gascmp_5167", label %"$out_of_gas_5168", label %"$have_gas_5169"

"$out_of_gas_5168":                               ; preds = %"$have_gas_5155"
  call void @_out_of_gas()
  br label %"$have_gas_5169"

"$have_gas_5169":                                 ; preds = %"$out_of_gas_5168", %"$have_gas_5155"
  %"$consume_5170" = sub i64 %"$gasrem_5166", 1
  store i64 %"$consume_5170", i64* @_gasrem, align 8
  %isRegistrarSenderAndOwned = alloca %TName_Bool*, align 8
  %"$gasrem_5171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5172" = icmp ugt i64 1, %"$gasrem_5171"
  br i1 %"$gascmp_5172", label %"$out_of_gas_5173", label %"$have_gas_5174"

"$out_of_gas_5173":                               ; preds = %"$have_gas_5169"
  call void @_out_of_gas()
  br label %"$have_gas_5174"

"$have_gas_5174":                                 ; preds = %"$out_of_gas_5173", %"$have_gas_5169"
  %"$consume_5175" = sub i64 %"$gasrem_5171", 1
  store i64 %"$consume_5175", i64* @_gasrem, align 8
  %"$BoolUtils.andb_126" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5176" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5177" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5176", 0
  %"$BoolUtils.andb_envptr_5178" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5176", 1
  %"$recordIsOwnedByRegistrar_5179" = load %TName_Bool*, %TName_Bool** %recordIsOwnedByRegistrar, align 8
  %"$BoolUtils.andb_call_5180" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5177"(i8* %"$BoolUtils.andb_envptr_5178", %TName_Bool* %"$recordIsOwnedByRegistrar_5179")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5180", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_126", align 8
  %"$BoolUtils.andb_127" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_126_5181" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_126", align 8
  %"$$BoolUtils.andb_126_fptr_5182" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_126_5181", 0
  %"$$BoolUtils.andb_126_envptr_5183" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_126_5181", 1
  %"$isSenderRegistrar_5184" = load %TName_Bool*, %TName_Bool** %isSenderRegistrar, align 8
  %"$$BoolUtils.andb_126_call_5185" = call %TName_Bool* %"$$BoolUtils.andb_126_fptr_5182"(i8* %"$$BoolUtils.andb_126_envptr_5183", %TName_Bool* %"$isSenderRegistrar_5184")
  store %TName_Bool* %"$$BoolUtils.andb_126_call_5185", %TName_Bool** %"$BoolUtils.andb_127", align 8
  %"$$BoolUtils.andb_127_5186" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_127", align 8
  store %TName_Bool* %"$$BoolUtils.andb_127_5186", %TName_Bool** %isRegistrarSenderAndOwned, align 8
  %"$gasrem_5187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5188" = icmp ugt i64 1, %"$gasrem_5187"
  br i1 %"$gascmp_5188", label %"$out_of_gas_5189", label %"$have_gas_5190"

"$out_of_gas_5189":                               ; preds = %"$have_gas_5174"
  call void @_out_of_gas()
  br label %"$have_gas_5190"

"$have_gas_5190":                                 ; preds = %"$out_of_gas_5189", %"$have_gas_5174"
  %"$consume_5191" = sub i64 %"$gasrem_5187", 1
  store i64 %"$consume_5191", i64* @_gasrem, align 8
  %isOkRecordOwner = alloca %TName_Bool*, align 8
  %"$gasrem_5192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5193" = icmp ugt i64 1, %"$gasrem_5192"
  br i1 %"$gascmp_5193", label %"$out_of_gas_5194", label %"$have_gas_5195"

"$out_of_gas_5194":                               ; preds = %"$have_gas_5190"
  call void @_out_of_gas()
  br label %"$have_gas_5195"

"$have_gas_5195":                                 ; preds = %"$out_of_gas_5194", %"$have_gas_5190"
  %"$consume_5196" = sub i64 %"$gasrem_5192", 1
  store i64 %"$consume_5196", i64* @_gasrem, align 8
  %"$BoolUtils.orb_128" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_5197" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_5198" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5197", 0
  %"$BoolUtils.orb_envptr_5199" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5197", 1
  %"$recordIsUnowned_5200" = load %TName_Bool*, %TName_Bool** %recordIsUnowned, align 8
  %"$BoolUtils.orb_call_5201" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_5198"(i8* %"$BoolUtils.orb_envptr_5199", %TName_Bool* %"$recordIsUnowned_5200")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_5201", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_128", align 8
  %"$BoolUtils.orb_129" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_128_5202" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_128", align 8
  %"$$BoolUtils.orb_128_fptr_5203" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_128_5202", 0
  %"$$BoolUtils.orb_128_envptr_5204" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_128_5202", 1
  %"$isRegistrarSenderAndOwned_5205" = load %TName_Bool*, %TName_Bool** %isRegistrarSenderAndOwned, align 8
  %"$$BoolUtils.orb_128_call_5206" = call %TName_Bool* %"$$BoolUtils.orb_128_fptr_5203"(i8* %"$$BoolUtils.orb_128_envptr_5204", %TName_Bool* %"$isRegistrarSenderAndOwned_5205")
  store %TName_Bool* %"$$BoolUtils.orb_128_call_5206", %TName_Bool** %"$BoolUtils.orb_129", align 8
  %"$$BoolUtils.orb_129_5207" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_129", align 8
  store %TName_Bool* %"$$BoolUtils.orb_129_5207", %TName_Bool** %isOkRecordOwner, align 8
  %"$gasrem_5208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5209" = icmp ugt i64 1, %"$gasrem_5208"
  br i1 %"$gascmp_5209", label %"$out_of_gas_5210", label %"$have_gas_5211"

"$out_of_gas_5210":                               ; preds = %"$have_gas_5195"
  call void @_out_of_gas()
  br label %"$have_gas_5211"

"$have_gas_5211":                                 ; preds = %"$out_of_gas_5210", %"$have_gas_5195"
  %"$consume_5212" = sub i64 %"$gasrem_5208", 1
  store i64 %"$consume_5212", i64* @_gasrem, align 8
  %"$BoolUtils.andb_130" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5213" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5214" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5213", 0
  %"$BoolUtils.andb_envptr_5215" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5213", 1
  %"$isOkSender_5216" = load %TName_Bool*, %TName_Bool** %isOkSender, align 8
  %"$BoolUtils.andb_call_5217" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5214"(i8* %"$BoolUtils.andb_envptr_5215", %TName_Bool* %"$isOkSender_5216")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5217", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_130", align 8
  %"$BoolUtils.andb_131" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_130_5218" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_130", align 8
  %"$$BoolUtils.andb_130_fptr_5219" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_130_5218", 0
  %"$$BoolUtils.andb_130_envptr_5220" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_130_5218", 1
  %"$isOkRecordOwner_5221" = load %TName_Bool*, %TName_Bool** %isOkRecordOwner, align 8
  %"$$BoolUtils.andb_130_call_5222" = call %TName_Bool* %"$$BoolUtils.andb_130_fptr_5219"(i8* %"$$BoolUtils.andb_130_envptr_5220", %TName_Bool* %"$isOkRecordOwner_5221")
  store %TName_Bool* %"$$BoolUtils.andb_130_call_5222", %TName_Bool** %"$BoolUtils.andb_131", align 8
  %"$$BoolUtils.andb_131_5223" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_131", align 8
  store %TName_Bool* %"$$BoolUtils.andb_131_5223", %TName_Bool** %isOk, align 8
  %"$gasrem_5224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5225" = icmp ugt i64 2, %"$gasrem_5224"
  br i1 %"$gascmp_5225", label %"$out_of_gas_5226", label %"$have_gas_5227"

"$out_of_gas_5226":                               ; preds = %"$have_gas_5211"
  call void @_out_of_gas()
  br label %"$have_gas_5227"

"$have_gas_5227":                                 ; preds = %"$out_of_gas_5226", %"$have_gas_5211"
  %"$consume_5228" = sub i64 %"$gasrem_5224", 2
  store i64 %"$consume_5228", i64* @_gasrem, align 8
  %"$isOk_5230" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5231" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5230", i32 0, i32 0
  %"$isOk_tag_5232" = load i8, i8* %"$isOk_tag_5231", align 1
  switch i8 %"$isOk_tag_5232", label %"$empty_default_5233" [
    i8 0, label %"$True_5234"
    i8 1, label %"$False_5347"
  ]

"$True_5234":                                     ; preds = %"$have_gas_5227"
  %"$isOk_5235" = bitcast %TName_Bool* %"$isOk_5230" to %CName_True*
  %"$gasrem_5236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5237" = icmp ugt i64 2, %"$gasrem_5236"
  br i1 %"$gascmp_5237", label %"$out_of_gas_5238", label %"$have_gas_5239"

"$out_of_gas_5238":                               ; preds = %"$True_5234"
  call void @_out_of_gas()
  br label %"$have_gas_5239"

"$have_gas_5239":                                 ; preds = %"$out_of_gas_5238", %"$True_5234"
  %"$consume_5240" = sub i64 %"$gasrem_5236", 2
  store i64 %"$consume_5240", i64* @_gasrem, align 8
  %"$recordExists_5242" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$recordExists_tag_5243" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$recordExists_5242", i32 0, i32 0
  %"$recordExists_tag_5244" = load i8, i8* %"$recordExists_tag_5243", align 1
  switch i8 %"$recordExists_tag_5244", label %"$default_5245" [
    i8 1, label %"$False_5246"
  ]

"$False_5246":                                    ; preds = %"$have_gas_5239"
  %"$recordExists_5247" = bitcast %TName_Bool* %"$recordExists_5242" to %CName_False*
  %"$gasrem_5248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5249" = icmp ugt i64 1, %"$gasrem_5248"
  br i1 %"$gascmp_5249", label %"$out_of_gas_5250", label %"$have_gas_5251"

"$out_of_gas_5250":                               ; preds = %"$False_5246"
  call void @_out_of_gas()
  br label %"$have_gas_5251"

"$have_gas_5251":                                 ; preds = %"$out_of_gas_5250", %"$False_5246"
  %"$consume_5252" = sub i64 %"$gasrem_5248", 1
  store i64 %"$consume_5252", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5254" = icmp ugt i64 1, %"$gasrem_5253"
  br i1 %"$gascmp_5254", label %"$out_of_gas_5255", label %"$have_gas_5256"

"$out_of_gas_5255":                               ; preds = %"$have_gas_5251"
  call void @_out_of_gas()
  br label %"$have_gas_5256"

"$have_gas_5256":                                 ; preds = %"$out_of_gas_5255", %"$have_gas_5251"
  %"$consume_5257" = sub i64 %"$gasrem_5253", 1
  store i64 %"$consume_5257", i64* @_gasrem, align 8
  %"$ud-registry.eNewDomain_118" = alloca { i8* (i8*, %String)*, i8* }, align 8
  %"$ud-registry.eNewDomain_5258" = load { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain, align 8
  %"$ud-registry.eNewDomain_fptr_5259" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_5258", 0
  %"$ud-registry.eNewDomain_envptr_5260" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_5258", 1
  %"$ud-registry.eNewDomain_rootNode_5261" = alloca [32 x i8], align 1
  %"$rootNode_5262" = load [32 x i8], [32 x i8]* @_cparam_rootNode, align 1
  store [32 x i8] %"$rootNode_5262", [32 x i8]* %"$ud-registry.eNewDomain_rootNode_5261", align 1
  %"$ud-registry.eNewDomain_call_5263" = call { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_fptr_5259"(i8* %"$ud-registry.eNewDomain_envptr_5260", [32 x i8]* %"$ud-registry.eNewDomain_rootNode_5261")
  store { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_call_5263", { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_118", align 8
  %"$ud-registry.eNewDomain_119" = alloca i8*, align 8
  %"$$ud-registry.eNewDomain_118_5264" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_118", align 8
  %"$$ud-registry.eNewDomain_118_fptr_5265" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_118_5264", 0
  %"$$ud-registry.eNewDomain_118_envptr_5266" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_118_5264", 1
  %"$$ud-registry.eNewDomain_118_call_5267" = call i8* %"$$ud-registry.eNewDomain_118_fptr_5265"(i8* %"$$ud-registry.eNewDomain_118_envptr_5266", %String %label)
  store i8* %"$$ud-registry.eNewDomain_118_call_5267", i8** %"$ud-registry.eNewDomain_119", align 8
  %"$$ud-registry.eNewDomain_119_5268" = load i8*, i8** %"$ud-registry.eNewDomain_119", align 8
  store i8* %"$$ud-registry.eNewDomain_119_5268", i8** %e, align 8
  %"$e_5269" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5271" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5269")
  %"$gasrem_5272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5273" = icmp ugt i64 %"$_literal_cost_call_5271", %"$gasrem_5272"
  br i1 %"$gascmp_5273", label %"$out_of_gas_5274", label %"$have_gas_5275"

"$out_of_gas_5274":                               ; preds = %"$have_gas_5256"
  call void @_out_of_gas()
  br label %"$have_gas_5275"

"$have_gas_5275":                                 ; preds = %"$out_of_gas_5274", %"$have_gas_5256"
  %"$consume_5276" = sub i64 %"$gasrem_5272", %"$_literal_cost_call_5271"
  store i64 %"$consume_5276", i64* @_gasrem, align 8
  %"$execptr_load_5277" = load i8*, i8** @_execptr, align 8
  %"$e_5278" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5277", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5278")
  br label %"$matchsucc_5241"

"$default_5245":                                  ; preds = %"$have_gas_5239"
  br label %"$joinp_8"

"$joinp_8":                                       ; preds = %"$default_5245"
  br label %"$matchsucc_5241"

"$matchsucc_5241":                                ; preds = %"$have_gas_5275", %"$joinp_8"
  %"$gasrem_5279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5280" = icmp ugt i64 1, %"$gasrem_5279"
  br i1 %"$gascmp_5280", label %"$out_of_gas_5281", label %"$have_gas_5282"

"$out_of_gas_5281":                               ; preds = %"$matchsucc_5241"
  call void @_out_of_gas()
  br label %"$have_gas_5282"

"$have_gas_5282":                                 ; preds = %"$out_of_gas_5281", %"$matchsucc_5241"
  %"$consume_5283" = sub i64 %"$gasrem_5279", 1
  store i64 %"$consume_5283", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_5284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5285" = icmp ugt i64 1, %"$gasrem_5284"
  br i1 %"$gascmp_5285", label %"$out_of_gas_5286", label %"$have_gas_5287"

"$out_of_gas_5286":                               ; preds = %"$have_gas_5282"
  call void @_out_of_gas()
  br label %"$have_gas_5287"

"$have_gas_5287":                                 ; preds = %"$out_of_gas_5286", %"$have_gas_5282"
  %"$consume_5288" = sub i64 %"$gasrem_5284", 1
  store i64 %"$consume_5288", i64* @_gasrem, align 8
  %"$adtval_5289_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_5289_salloc" = call i8* @_salloc(i8* %"$adtval_5289_load", i64 41)
  %"$adtval_5289" = bitcast i8* %"$adtval_5289_salloc" to %CName_ud-registry.Record*
  %"$adtgep_5290" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5289", i32 0, i32 0
  store i8 0, i8* %"$adtgep_5290", align 1
  %"$adtgep_5291" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5289", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_5291", align 1
  %"$adtgep_5292" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5289", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_5292", align 1
  %"$adtptr_5293" = bitcast %CName_ud-registry.Record* %"$adtval_5289" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_5293", %TName_ud-registry.Record** %newRecord, align 8
  %"$newRecord_5294" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_5294_5295" = bitcast %TName_ud-registry.Record* %"$newRecord_5294" to i8*
  %"$_literal_cost_call_5296" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_318", i8* %"$$newRecord_5294_5295")
  %"$gasadd_5297" = add i64 %"$_literal_cost_call_5296", 1
  %"$gasrem_5298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5299" = icmp ugt i64 %"$gasadd_5297", %"$gasrem_5298"
  br i1 %"$gascmp_5299", label %"$out_of_gas_5300", label %"$have_gas_5301"

"$out_of_gas_5300":                               ; preds = %"$have_gas_5287"
  call void @_out_of_gas()
  br label %"$have_gas_5301"

"$have_gas_5301":                                 ; preds = %"$out_of_gas_5300", %"$have_gas_5287"
  %"$consume_5302" = sub i64 %"$gasrem_5298", %"$gasadd_5297"
  store i64 %"$consume_5302", i64* @_gasrem, align 8
  %"$indices_buf_5303_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5303_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5303_salloc_load", i64 32)
  %"$indices_buf_5303_salloc" = bitcast i8* %"$indices_buf_5303_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5303" = bitcast [32 x i8]* %"$indices_buf_5303_salloc" to i8*
  %"$node_5304" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5305" = getelementptr i8, i8* %"$indices_buf_5303", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_5305" to [32 x i8]*
  store [32 x i8] %"$node_5304", [32 x i8]* %indices_cast2, align 1
  %"$execptr_load_5306" = load i8*, i8** @_execptr, align 8
  %"$newRecord_5308" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_5309" = bitcast %TName_ud-registry.Record* %"$newRecord_5308" to i8*
  call void @_update_field(i8* %"$execptr_load_5306", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5307", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_5303", i8* %"$update_value_5309")
  %"$gasrem_5310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5311" = icmp ugt i64 1, %"$gasrem_5310"
  br i1 %"$gascmp_5311", label %"$out_of_gas_5312", label %"$have_gas_5313"

"$out_of_gas_5312":                               ; preds = %"$have_gas_5301"
  call void @_out_of_gas()
  br label %"$have_gas_5313"

"$have_gas_5313":                                 ; preds = %"$out_of_gas_5312", %"$have_gas_5301"
  %"$consume_5314" = sub i64 %"$gasrem_5310", 1
  store i64 %"$consume_5314", i64* @_gasrem, align 8
  %e3 = alloca i8*, align 8
  %"$gasrem_5315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5316" = icmp ugt i64 1, %"$gasrem_5315"
  br i1 %"$gascmp_5316", label %"$out_of_gas_5317", label %"$have_gas_5318"

"$out_of_gas_5317":                               ; preds = %"$have_gas_5313"
  call void @_out_of_gas()
  br label %"$have_gas_5318"

"$have_gas_5318":                                 ; preds = %"$out_of_gas_5317", %"$have_gas_5313"
  %"$consume_5319" = sub i64 %"$gasrem_5315", 1
  store i64 %"$consume_5319", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_115" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_5320" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_5321" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5320", 0
  %"$ud-registry.eConfigured_envptr_5322" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5320", 1
  %"$ud-registry.eConfigured_node_5323" = alloca [32 x i8], align 1
  %"$node_5324" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_5324", [32 x i8]* %"$ud-registry.eConfigured_node_5323", align 1
  %"$ud-registry.eConfigured_call_5325" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_5321"(i8* %"$ud-registry.eConfigured_envptr_5322", [32 x i8]* %"$ud-registry.eConfigured_node_5323")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_5325", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_115", align 8
  %"$ud-registry.eConfigured_116" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_115_5326" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_115", align 8
  %"$$ud-registry.eConfigured_115_fptr_5327" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_115_5326", 0
  %"$$ud-registry.eConfigured_115_envptr_5328" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_115_5326", 1
  %"$$ud-registry.eConfigured_115_owner_5329" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_115_owner_5329", align 1
  %"$$ud-registry.eConfigured_115_call_5330" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_115_fptr_5327"(i8* %"$$ud-registry.eConfigured_115_envptr_5328", [20 x i8]* %"$$ud-registry.eConfigured_115_owner_5329")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_115_call_5330", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_116", align 8
  %"$ud-registry.eConfigured_117" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_116_5331" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_116", align 8
  %"$$ud-registry.eConfigured_116_fptr_5332" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_116_5331", 0
  %"$$ud-registry.eConfigured_116_envptr_5333" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_116_5331", 1
  %"$$ud-registry.eConfigured_116_resolver_5334" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_116_resolver_5334", align 1
  %"$$ud-registry.eConfigured_116_call_5335" = call i8* %"$$ud-registry.eConfigured_116_fptr_5332"(i8* %"$$ud-registry.eConfigured_116_envptr_5333", [20 x i8]* %"$$ud-registry.eConfigured_116_resolver_5334")
  store i8* %"$$ud-registry.eConfigured_116_call_5335", i8** %"$ud-registry.eConfigured_117", align 8
  %"$$ud-registry.eConfigured_117_5336" = load i8*, i8** %"$ud-registry.eConfigured_117", align 8
  store i8* %"$$ud-registry.eConfigured_117_5336", i8** %e3, align 8
  %"$e_5337" = load i8*, i8** %e3, align 8
  %"$_literal_cost_call_5339" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5337")
  %"$gasrem_5340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5341" = icmp ugt i64 %"$_literal_cost_call_5339", %"$gasrem_5340"
  br i1 %"$gascmp_5341", label %"$out_of_gas_5342", label %"$have_gas_5343"

"$out_of_gas_5342":                               ; preds = %"$have_gas_5318"
  call void @_out_of_gas()
  br label %"$have_gas_5343"

"$have_gas_5343":                                 ; preds = %"$out_of_gas_5342", %"$have_gas_5318"
  %"$consume_5344" = sub i64 %"$gasrem_5340", %"$_literal_cost_call_5339"
  store i64 %"$consume_5344", i64* @_gasrem, align 8
  %"$execptr_load_5345" = load i8*, i8** @_execptr, align 8
  %"$e_5346" = load i8*, i8** %e3, align 8
  call void @_event(i8* %"$execptr_load_5345", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5346")
  br label %"$matchsucc_5229"

"$False_5347":                                    ; preds = %"$have_gas_5227"
  %"$isOk_5348" = bitcast %TName_Bool* %"$isOk_5230" to %CName_False*
  %"$gasrem_5349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5350" = icmp ugt i64 1, %"$gasrem_5349"
  br i1 %"$gascmp_5350", label %"$out_of_gas_5351", label %"$have_gas_5352"

"$out_of_gas_5351":                               ; preds = %"$False_5347"
  call void @_out_of_gas()
  br label %"$have_gas_5352"

"$have_gas_5352":                                 ; preds = %"$out_of_gas_5351", %"$False_5347"
  %"$consume_5353" = sub i64 %"$gasrem_5349", 1
  store i64 %"$consume_5353", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_5354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5355" = icmp ugt i64 1, %"$gasrem_5354"
  br i1 %"$gascmp_5355", label %"$out_of_gas_5356", label %"$have_gas_5357"

"$out_of_gas_5356":                               ; preds = %"$have_gas_5352"
  call void @_out_of_gas()
  br label %"$have_gas_5357"

"$have_gas_5357":                                 ; preds = %"$out_of_gas_5356", %"$have_gas_5352"
  %"$consume_5358" = sub i64 %"$gasrem_5354", 1
  store i64 %"$consume_5358", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_5359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5360" = icmp ugt i64 1, %"$gasrem_5359"
  br i1 %"$gascmp_5360", label %"$out_of_gas_5361", label %"$have_gas_5362"

"$out_of_gas_5361":                               ; preds = %"$have_gas_5357"
  call void @_out_of_gas()
  br label %"$have_gas_5362"

"$have_gas_5362":                                 ; preds = %"$out_of_gas_5361", %"$have_gas_5357"
  %"$consume_5363" = sub i64 %"$gasrem_5359", 1
  store i64 %"$consume_5363", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_5364", i32 0, i32 0), i32 12 }, %String* %m, align 8
  %"$gasrem_5365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5366" = icmp ugt i64 1, %"$gasrem_5365"
  br i1 %"$gascmp_5366", label %"$out_of_gas_5367", label %"$have_gas_5368"

"$out_of_gas_5367":                               ; preds = %"$have_gas_5362"
  call void @_out_of_gas()
  br label %"$have_gas_5368"

"$have_gas_5368":                                 ; preds = %"$out_of_gas_5367", %"$have_gas_5362"
  %"$consume_5369" = sub i64 %"$gasrem_5365", 1
  store i64 %"$consume_5369", i64* @_gasrem, align 8
  %"$ud-registry.eError_120" = alloca i8*, align 8
  %"$ud-registry.eError_5370" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_5371" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_5370", 0
  %"$ud-registry.eError_envptr_5372" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_5370", 1
  %"$m_5373" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_5374" = call i8* %"$ud-registry.eError_fptr_5371"(i8* %"$ud-registry.eError_envptr_5372", %String %"$m_5373")
  store i8* %"$ud-registry.eError_call_5374", i8** %"$ud-registry.eError_120", align 8
  %"$$ud-registry.eError_120_5375" = load i8*, i8** %"$ud-registry.eError_120", align 8
  store i8* %"$$ud-registry.eError_120_5375", i8** %e4, align 8
  %"$e_5376" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_5378" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5376")
  %"$gasrem_5379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5380" = icmp ugt i64 %"$_literal_cost_call_5378", %"$gasrem_5379"
  br i1 %"$gascmp_5380", label %"$out_of_gas_5381", label %"$have_gas_5382"

"$out_of_gas_5381":                               ; preds = %"$have_gas_5368"
  call void @_out_of_gas()
  br label %"$have_gas_5382"

"$have_gas_5382":                                 ; preds = %"$out_of_gas_5381", %"$have_gas_5368"
  %"$consume_5383" = sub i64 %"$gasrem_5379", %"$_literal_cost_call_5378"
  store i64 %"$consume_5383", i64* @_gasrem, align 8
  %"$execptr_load_5384" = load i8*, i8** @_execptr, align 8
  %"$e_5385" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_5384", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5385")
  br label %"$matchsucc_5229"

"$empty_default_5233":                            ; preds = %"$have_gas_5227"
  br label %"$matchsucc_5229"

"$matchsucc_5229":                                ; preds = %"$have_gas_5382", %"$have_gas_5343", %"$empty_default_5233"
  ret void
}

define void @bestow(i8* %0) {
entry:
  %"$_amount_5387" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5388" = bitcast i8* %"$_amount_5387" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5388", align 8
  %"$_origin_5389" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5390" = bitcast i8* %"$_origin_5389" to [20 x i8]*
  %"$_sender_5391" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5392" = bitcast i8* %"$_sender_5391" to [20 x i8]*
  %"$label_5393" = getelementptr i8, i8* %0, i32 56
  %"$label_5394" = bitcast i8* %"$label_5393" to %String*
  %label = load %String, %String* %"$label_5394", align 8
  %"$owner_5395" = getelementptr i8, i8* %0, i32 72
  %"$owner_5396" = bitcast i8* %"$owner_5395" to [20 x i8]*
  %"$resolver_5397" = getelementptr i8, i8* %0, i32 92
  %"$resolver_5398" = bitcast i8* %"$resolver_5397" to [20 x i8]*
  call void @"$bestow_4957"(%Uint128 %_amount, [20 x i8]* %"$_origin_5390", [20 x i8]* %"$_sender_5392", %String %label, [20 x i8]* %"$owner_5396", [20 x i8]* %"$resolver_5398")
  ret void
}

define internal void @"$setRegistrar_5399"(%Uint128 %_amount, [20 x i8]* %"$_origin_5400", [20 x i8]* %"$_sender_5401", [20 x i8]* %"$address_5402") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_5400", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5401", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_5402", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_5404" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_5405" = call i8* @_fetch_field(i8* %"$execptr_load_5404", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_5403", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i32 0, i8* null, i32 1)
  %"$currentAdmins_5406" = bitcast i8* %"$currentAdmins_call_5405" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_5406", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_5407" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_5407_5408" = bitcast %TName_List_ByStr20* %"$currentAdmins_5407" to i8*
  %"$_literal_cost_call_5409" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_320", i8* %"$$currentAdmins_5407_5408")
  %"$gasadd_5410" = add i64 %"$_literal_cost_call_5409", 0
  %"$gasrem_5411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5412" = icmp ugt i64 %"$gasadd_5410", %"$gasrem_5411"
  br i1 %"$gascmp_5412", label %"$out_of_gas_5413", label %"$have_gas_5414"

"$out_of_gas_5413":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5414"

"$have_gas_5414":                                 ; preds = %"$out_of_gas_5413", %entry
  %"$consume_5415" = sub i64 %"$gasrem_5411", %"$gasadd_5410"
  store i64 %"$consume_5415", i64* @_gasrem, align 8
  %"$gasrem_5416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5417" = icmp ugt i64 1, %"$gasrem_5416"
  br i1 %"$gascmp_5417", label %"$out_of_gas_5418", label %"$have_gas_5419"

"$out_of_gas_5418":                               ; preds = %"$have_gas_5414"
  call void @_out_of_gas()
  br label %"$have_gas_5419"

"$have_gas_5419":                                 ; preds = %"$out_of_gas_5418", %"$have_gas_5414"
  %"$consume_5420" = sub i64 %"$gasrem_5416", 1
  store i64 %"$consume_5420", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_5421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5422" = icmp ugt i64 1, %"$gasrem_5421"
  br i1 %"$gascmp_5422", label %"$out_of_gas_5423", label %"$have_gas_5424"

"$out_of_gas_5423":                               ; preds = %"$have_gas_5419"
  call void @_out_of_gas()
  br label %"$have_gas_5424"

"$have_gas_5424":                                 ; preds = %"$out_of_gas_5423", %"$have_gas_5419"
  %"$consume_5425" = sub i64 %"$gasrem_5421", 1
  store i64 %"$consume_5425", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_135" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_5426" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_5427" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5426", 0
  %"$ud-registry.listByStr20Contains_envptr_5428" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5426", 1
  %"$currentAdmins_5429" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_5430" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_5427"(i8* %"$ud-registry.listByStr20Contains_envptr_5428", %TName_List_ByStr20* %"$currentAdmins_5429")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_5430", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_135", align 8
  %"$ud-registry.listByStr20Contains_136" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_135_5431" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_135", align 8
  %"$$ud-registry.listByStr20Contains_135_fptr_5432" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_135_5431", 0
  %"$$ud-registry.listByStr20Contains_135_envptr_5433" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_135_5431", 1
  %"$$ud-registry.listByStr20Contains_135__sender_5434" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_135__sender_5434", align 1
  %"$$ud-registry.listByStr20Contains_135_call_5435" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_135_fptr_5432"(i8* %"$$ud-registry.listByStr20Contains_135_envptr_5433", [20 x i8]* %"$$ud-registry.listByStr20Contains_135__sender_5434")
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_135_call_5435", %TName_Bool** %"$ud-registry.listByStr20Contains_136", align 8
  %"$$ud-registry.listByStr20Contains_136_5436" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_136", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_136_5436", %TName_Bool** %isOk, align 8
  %"$gasrem_5437" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5438" = icmp ugt i64 2, %"$gasrem_5437"
  br i1 %"$gascmp_5438", label %"$out_of_gas_5439", label %"$have_gas_5440"

"$out_of_gas_5439":                               ; preds = %"$have_gas_5424"
  call void @_out_of_gas()
  br label %"$have_gas_5440"

"$have_gas_5440":                                 ; preds = %"$out_of_gas_5439", %"$have_gas_5424"
  %"$consume_5441" = sub i64 %"$gasrem_5437", 2
  store i64 %"$consume_5441", i64* @_gasrem, align 8
  %"$isOk_5443" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5444" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5443", i32 0, i32 0
  %"$isOk_tag_5445" = load i8, i8* %"$isOk_tag_5444", align 1
  switch i8 %"$isOk_tag_5445", label %"$default_5446" [
    i8 0, label %"$True_5447"
  ]

"$True_5447":                                     ; preds = %"$have_gas_5440"
  %"$isOk_5448" = bitcast %TName_Bool* %"$isOk_5443" to %CName_True*
  %"$gasrem_5449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5450" = icmp ugt i64 1, %"$gasrem_5449"
  br i1 %"$gascmp_5450", label %"$out_of_gas_5451", label %"$have_gas_5452"

"$out_of_gas_5451":                               ; preds = %"$True_5447"
  call void @_out_of_gas()
  br label %"$have_gas_5452"

"$have_gas_5452":                                 ; preds = %"$out_of_gas_5451", %"$True_5447"
  %"$consume_5453" = sub i64 %"$gasrem_5449", 1
  store i64 %"$consume_5453", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5455" = icmp ugt i64 1, %"$gasrem_5454"
  br i1 %"$gascmp_5455", label %"$out_of_gas_5456", label %"$have_gas_5457"

"$out_of_gas_5456":                               ; preds = %"$have_gas_5452"
  call void @_out_of_gas()
  br label %"$have_gas_5457"

"$have_gas_5457":                                 ; preds = %"$out_of_gas_5456", %"$have_gas_5452"
  %"$consume_5458" = sub i64 %"$gasrem_5454", 1
  store i64 %"$consume_5458", i64* @_gasrem, align 8
  %"$ud-registry.eNewRegistrar_134" = alloca i8*, align 8
  %"$ud-registry.eNewRegistrar_5459" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eNewRegistrar, align 8
  %"$ud-registry.eNewRegistrar_fptr_5460" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eNewRegistrar_5459", 0
  %"$ud-registry.eNewRegistrar_envptr_5461" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eNewRegistrar_5459", 1
  %"$ud-registry.eNewRegistrar_address_5462" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eNewRegistrar_address_5462", align 1
  %"$ud-registry.eNewRegistrar_call_5463" = call i8* %"$ud-registry.eNewRegistrar_fptr_5460"(i8* %"$ud-registry.eNewRegistrar_envptr_5461", [20 x i8]* %"$ud-registry.eNewRegistrar_address_5462")
  store i8* %"$ud-registry.eNewRegistrar_call_5463", i8** %"$ud-registry.eNewRegistrar_134", align 8
  %"$$ud-registry.eNewRegistrar_134_5464" = load i8*, i8** %"$ud-registry.eNewRegistrar_134", align 8
  store i8* %"$$ud-registry.eNewRegistrar_134_5464", i8** %e, align 8
  %"$e_5465" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5467" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5465")
  %"$gasrem_5468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5469" = icmp ugt i64 %"$_literal_cost_call_5467", %"$gasrem_5468"
  br i1 %"$gascmp_5469", label %"$out_of_gas_5470", label %"$have_gas_5471"

"$out_of_gas_5470":                               ; preds = %"$have_gas_5457"
  call void @_out_of_gas()
  br label %"$have_gas_5471"

"$have_gas_5471":                                 ; preds = %"$out_of_gas_5470", %"$have_gas_5457"
  %"$consume_5472" = sub i64 %"$gasrem_5468", %"$_literal_cost_call_5467"
  store i64 %"$consume_5472", i64* @_gasrem, align 8
  %"$execptr_load_5473" = load i8*, i8** @_execptr, align 8
  %"$e_5474" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5473", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5474")
  %"$_literal_cost_address_5475" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$_literal_cost_address_5475", align 1
  %"$$_literal_cost_address_5475_5476" = bitcast [20 x i8]* %"$_literal_cost_address_5475" to i8*
  %"$_literal_cost_call_5477" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i8* %"$$_literal_cost_address_5475_5476")
  %"$gasrem_5478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5479" = icmp ugt i64 %"$_literal_cost_call_5477", %"$gasrem_5478"
  br i1 %"$gascmp_5479", label %"$out_of_gas_5480", label %"$have_gas_5481"

"$out_of_gas_5480":                               ; preds = %"$have_gas_5471"
  call void @_out_of_gas()
  br label %"$have_gas_5481"

"$have_gas_5481":                                 ; preds = %"$out_of_gas_5480", %"$have_gas_5471"
  %"$consume_5482" = sub i64 %"$gasrem_5478", %"$_literal_cost_call_5477"
  store i64 %"$consume_5482", i64* @_gasrem, align 8
  %"$execptr_load_5483" = load i8*, i8** @_execptr, align 8
  %"$update_value_5485" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$update_value_5485", align 1
  %"$update_value_5486" = bitcast [20 x i8]* %"$update_value_5485" to i8*
  call void @_update_field(i8* %"$execptr_load_5483", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_5484", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i32 0, i8* null, i8* %"$update_value_5486")
  br label %"$matchsucc_5442"

"$default_5446":                                  ; preds = %"$have_gas_5440"
  br label %"$joinp_9"

"$joinp_9":                                       ; preds = %"$default_5446"
  br label %"$matchsucc_5442"

"$matchsucc_5442":                                ; preds = %"$have_gas_5481", %"$joinp_9"
  ret void
}

define void @setRegistrar(i8* %0) {
entry:
  %"$_amount_5488" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5489" = bitcast i8* %"$_amount_5488" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5489", align 8
  %"$_origin_5490" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5491" = bitcast i8* %"$_origin_5490" to [20 x i8]*
  %"$_sender_5492" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5493" = bitcast i8* %"$_sender_5492" to [20 x i8]*
  %"$address_5494" = getelementptr i8, i8* %0, i32 56
  %"$address_5495" = bitcast i8* %"$address_5494" to [20 x i8]*
  call void @"$setRegistrar_5399"(%Uint128 %_amount, [20 x i8]* %"$_origin_5491", [20 x i8]* %"$_sender_5493", [20 x i8]* %"$address_5495")
  ret void
}

define internal void @"$register_5496"(%Uint128 %_amount, [20 x i8]* %"$_origin_5497", [20 x i8]* %"$_sender_5498", [32 x i8]* %"$parent_5499", %String %label) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_5497", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5498", align 1
  %parent = load [32 x i8], [32 x i8]* %"$parent_5499", align 1
  %"$gasrem_5500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5501" = icmp ugt i64 1, %"$gasrem_5500"
  br i1 %"$gascmp_5501", label %"$out_of_gas_5502", label %"$have_gas_5503"

"$out_of_gas_5502":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5503"

"$have_gas_5503":                                 ; preds = %"$out_of_gas_5502", %entry
  %"$consume_5504" = sub i64 %"$gasrem_5500", 1
  store i64 %"$consume_5504", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_5505" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5506" = icmp ugt i64 1, %"$gasrem_5505"
  br i1 %"$gascmp_5506", label %"$out_of_gas_5507", label %"$have_gas_5508"

"$out_of_gas_5507":                               ; preds = %"$have_gas_5503"
  call void @_out_of_gas()
  br label %"$have_gas_5508"

"$have_gas_5508":                                 ; preds = %"$out_of_gas_5507", %"$have_gas_5503"
  %"$consume_5509" = sub i64 %"$gasrem_5505", 1
  store i64 %"$consume_5509", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_141" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_5510" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_5511" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_5510", 0
  %"$ud-registry.parentLabelToNode_envptr_5512" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_5510", 1
  %"$ud-registry.parentLabelToNode_parent_5513" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.parentLabelToNode_parent_5513", align 1
  %"$ud-registry.parentLabelToNode_call_5514" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_5511"(i8* %"$ud-registry.parentLabelToNode_envptr_5512", [32 x i8]* %"$ud-registry.parentLabelToNode_parent_5513")
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_5514", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_141", align 8
  %"$ud-registry.parentLabelToNode_142" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_141_5515" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_141", align 8
  %"$$ud-registry.parentLabelToNode_141_fptr_5516" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_141_5515", 0
  %"$$ud-registry.parentLabelToNode_141_envptr_5517" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_141_5515", 1
  %"$$ud-registry.parentLabelToNode_141_retalloca_5518" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_141_fptr_5516"(i8* %"$$ud-registry.parentLabelToNode_141_envptr_5517", [32 x i8]* %"$$ud-registry.parentLabelToNode_141_retalloca_5518", %String %label)
  %"$$ud-registry.parentLabelToNode_141_ret_5519" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_141_retalloca_5518", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_141_ret_5519", [32 x i8]* %"$ud-registry.parentLabelToNode_142", align 1
  %"$$ud-registry.parentLabelToNode_142_5520" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_142", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_142_5520", [32 x i8]* %node, align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_5521_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5521_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5521_salloc_load", i64 32)
  %"$indices_buf_5521_salloc" = bitcast i8* %"$indices_buf_5521_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5521" = bitcast [32 x i8]* %"$indices_buf_5521_salloc" to i8*
  %"$node_5522" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5523" = getelementptr i8, i8* %"$indices_buf_5521", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_5523" to [32 x i8]*
  store [32 x i8] %"$node_5522", [32 x i8]* %indices_cast, align 1
  %"$execptr_load_5525" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_5526" = call i8* @_fetch_field(i8* %"$execptr_load_5525", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5524", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_5521", i32 1)
  %"$maybeRecord_5527" = bitcast i8* %"$maybeRecord_call_5526" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_5527", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_5528" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_5528_5529" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5528" to i8*
  %"$_literal_cost_call_5530" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_5528_5529")
  %"$gasadd_5531" = add i64 %"$_literal_cost_call_5530", 0
  %"$gasadd_5532" = add i64 %"$gasadd_5531", 1
  %"$gasrem_5533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5534" = icmp ugt i64 %"$gasadd_5532", %"$gasrem_5533"
  br i1 %"$gascmp_5534", label %"$out_of_gas_5535", label %"$have_gas_5536"

"$out_of_gas_5535":                               ; preds = %"$have_gas_5508"
  call void @_out_of_gas()
  br label %"$have_gas_5536"

"$have_gas_5536":                                 ; preds = %"$out_of_gas_5535", %"$have_gas_5508"
  %"$consume_5537" = sub i64 %"$gasrem_5533", %"$gasadd_5532"
  store i64 %"$consume_5537", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_5538_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5538_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5538_salloc_load", i64 32)
  %"$indices_buf_5538_salloc" = bitcast i8* %"$indices_buf_5538_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5538" = bitcast [32 x i8]* %"$indices_buf_5538_salloc" to i8*
  %"$node_5539" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5540" = getelementptr i8, i8* %"$indices_buf_5538", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_5540" to [32 x i8]*
  store [32 x i8] %"$node_5539", [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_5542" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_5543" = call i8* @_fetch_field(i8* %"$execptr_load_5542", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_5541", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_324", i32 1, i8* %"$indices_buf_5538", i32 1)
  %"$maybeApproved_5544" = bitcast i8* %"$maybeApproved_call_5543" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_5544", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_5545" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_5545_5546" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5545" to i8*
  %"$_literal_cost_call_5547" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_317", i8* %"$$maybeApproved_5545_5546")
  %"$gasadd_5548" = add i64 %"$_literal_cost_call_5547", 0
  %"$gasadd_5549" = add i64 %"$gasadd_5548", 1
  %"$gasrem_5550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5551" = icmp ugt i64 %"$gasadd_5549", %"$gasrem_5550"
  br i1 %"$gascmp_5551", label %"$out_of_gas_5552", label %"$have_gas_5553"

"$out_of_gas_5552":                               ; preds = %"$have_gas_5536"
  call void @_out_of_gas()
  br label %"$have_gas_5553"

"$have_gas_5553":                                 ; preds = %"$out_of_gas_5552", %"$have_gas_5536"
  %"$consume_5554" = sub i64 %"$gasrem_5550", %"$gasadd_5549"
  store i64 %"$consume_5554", i64* @_gasrem, align 8
  %"$gasrem_5555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5556" = icmp ugt i64 1, %"$gasrem_5555"
  br i1 %"$gascmp_5556", label %"$out_of_gas_5557", label %"$have_gas_5558"

"$out_of_gas_5557":                               ; preds = %"$have_gas_5553"
  call void @_out_of_gas()
  br label %"$have_gas_5558"

"$have_gas_5558":                                 ; preds = %"$out_of_gas_5557", %"$have_gas_5553"
  %"$consume_5559" = sub i64 %"$gasrem_5555", 1
  store i64 %"$consume_5559", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_5560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5561" = icmp ugt i64 1, %"$gasrem_5560"
  br i1 %"$gascmp_5561", label %"$out_of_gas_5562", label %"$have_gas_5563"

"$out_of_gas_5562":                               ; preds = %"$have_gas_5558"
  call void @_out_of_gas()
  br label %"$have_gas_5563"

"$have_gas_5563":                                 ; preds = %"$out_of_gas_5562", %"$have_gas_5558"
  %"$consume_5564" = sub i64 %"$gasrem_5560", 1
  store i64 %"$consume_5564", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_140" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_5565" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_5566" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5565", 0
  %"$ud-registry.recordMemberOwner_envptr_5567" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5565", 1
  %"$maybeRecord_5568" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_5569" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_5566"(i8* %"$ud-registry.recordMemberOwner_envptr_5567", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5569", %TName_Option_ud-registry.Record* %"$maybeRecord_5568")
  %"$ud-registry.recordMemberOwner_ret_5570" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5569", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_5570", [20 x i8]* %"$ud-registry.recordMemberOwner_140", align 1
  %"$$ud-registry.recordMemberOwner_140_5571" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_140", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_140_5571", [20 x i8]* %recordOwner, align 1
  %"$gasrem_5572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5573" = icmp ugt i64 1, %"$gasrem_5572"
  br i1 %"$gascmp_5573", label %"$out_of_gas_5574", label %"$have_gas_5575"

"$out_of_gas_5574":                               ; preds = %"$have_gas_5563"
  call void @_out_of_gas()
  br label %"$have_gas_5575"

"$have_gas_5575":                                 ; preds = %"$out_of_gas_5574", %"$have_gas_5563"
  %"$consume_5576" = sub i64 %"$gasrem_5572", 1
  store i64 %"$consume_5576", i64* @_gasrem, align 8
  %approved = alloca [20 x i8], align 1
  %"$gasrem_5577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5578" = icmp ugt i64 2, %"$gasrem_5577"
  br i1 %"$gascmp_5578", label %"$out_of_gas_5579", label %"$have_gas_5580"

"$out_of_gas_5579":                               ; preds = %"$have_gas_5575"
  call void @_out_of_gas()
  br label %"$have_gas_5580"

"$have_gas_5580":                                 ; preds = %"$out_of_gas_5579", %"$have_gas_5575"
  %"$consume_5581" = sub i64 %"$gasrem_5577", 2
  store i64 %"$consume_5581", i64* @_gasrem, align 8
  %"$maybeApproved_5583" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_5584" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_5583", i32 0, i32 0
  %"$maybeApproved_tag_5585" = load i8, i8* %"$maybeApproved_tag_5584", align 1
  switch i8 %"$maybeApproved_tag_5585", label %"$empty_default_5586" [
    i8 1, label %"$None_5587"
    i8 0, label %"$Some_5595"
  ]

"$None_5587":                                     ; preds = %"$have_gas_5580"
  %"$maybeApproved_5588" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5583" to %CName_None_ByStr20*
  %"$gasrem_5589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5590" = icmp ugt i64 1, %"$gasrem_5589"
  br i1 %"$gascmp_5590", label %"$out_of_gas_5591", label %"$have_gas_5592"

"$out_of_gas_5591":                               ; preds = %"$None_5587"
  call void @_out_of_gas()
  br label %"$have_gas_5592"

"$have_gas_5592":                                 ; preds = %"$out_of_gas_5591", %"$None_5587"
  %"$consume_5593" = sub i64 %"$gasrem_5589", 1
  store i64 %"$consume_5593", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_5594" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5594", [20 x i8]* %approved, align 1
  br label %"$matchsucc_5582"

"$Some_5595":                                     ; preds = %"$have_gas_5580"
  %"$maybeApproved_5596" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5583" to %CName_Some_ByStr20*
  %"$approved_gep_5597" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_5596", i32 0, i32 1
  %"$approved_load_5598" = load [20 x i8], [20 x i8]* %"$approved_gep_5597", align 1
  %approved2 = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_5598", [20 x i8]* %approved2, align 1
  %"$gasrem_5599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5600" = icmp ugt i64 1, %"$gasrem_5599"
  br i1 %"$gascmp_5600", label %"$out_of_gas_5601", label %"$have_gas_5602"

"$out_of_gas_5601":                               ; preds = %"$Some_5595"
  call void @_out_of_gas()
  br label %"$have_gas_5602"

"$have_gas_5602":                                 ; preds = %"$out_of_gas_5601", %"$Some_5595"
  %"$consume_5603" = sub i64 %"$gasrem_5599", 1
  store i64 %"$consume_5603", i64* @_gasrem, align 8
  %"$approved_5604" = load [20 x i8], [20 x i8]* %approved2, align 1
  store [20 x i8] %"$approved_5604", [20 x i8]* %approved2, align 1
  br label %"$matchsucc_5582"

"$empty_default_5586":                            ; preds = %"$have_gas_5580"
  br label %"$matchsucc_5582"

"$matchsucc_5582":                                ; preds = %"$have_gas_5602", %"$have_gas_5592", %"$empty_default_5586"
  %currentRegistrar = alloca [20 x i8], align 1
  %"$execptr_load_5606" = load i8*, i8** @_execptr, align 8
  %"$currentRegistrar_call_5607" = call i8* @_fetch_field(i8* %"$execptr_load_5606", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_5605", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i32 0, i8* null, i32 1)
  %"$currentRegistrar_5608" = bitcast i8* %"$currentRegistrar_call_5607" to [20 x i8]*
  %"$currentRegistrar_5609" = load [20 x i8], [20 x i8]* %"$currentRegistrar_5608", align 1
  store [20 x i8] %"$currentRegistrar_5609", [20 x i8]* %currentRegistrar, align 1
  %"$_literal_cost_currentRegistrar_5610" = alloca [20 x i8], align 1
  %"$currentRegistrar_5611" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5611", [20 x i8]* %"$_literal_cost_currentRegistrar_5610", align 1
  %"$$_literal_cost_currentRegistrar_5610_5612" = bitcast [20 x i8]* %"$_literal_cost_currentRegistrar_5610" to i8*
  %"$_literal_cost_call_5613" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", i8* %"$$_literal_cost_currentRegistrar_5610_5612")
  %"$gasadd_5614" = add i64 %"$_literal_cost_call_5613", 0
  %"$gasrem_5615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5616" = icmp ugt i64 %"$gasadd_5614", %"$gasrem_5615"
  br i1 %"$gascmp_5616", label %"$out_of_gas_5617", label %"$have_gas_5618"

"$out_of_gas_5617":                               ; preds = %"$matchsucc_5582"
  call void @_out_of_gas()
  br label %"$have_gas_5618"

"$have_gas_5618":                                 ; preds = %"$out_of_gas_5617", %"$matchsucc_5582"
  %"$consume_5619" = sub i64 %"$gasrem_5615", %"$gasadd_5614"
  store i64 %"$consume_5619", i64* @_gasrem, align 8
  %"$gasrem_5620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5621" = icmp ugt i64 1, %"$gasrem_5620"
  br i1 %"$gascmp_5621", label %"$out_of_gas_5622", label %"$have_gas_5623"

"$out_of_gas_5622":                               ; preds = %"$have_gas_5618"
  call void @_out_of_gas()
  br label %"$have_gas_5623"

"$have_gas_5623":                                 ; preds = %"$out_of_gas_5622", %"$have_gas_5618"
  %"$consume_5624" = sub i64 %"$gasrem_5620", 1
  store i64 %"$consume_5624", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_5625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5626" = icmp ugt i64 1, %"$gasrem_5625"
  br i1 %"$gascmp_5626", label %"$out_of_gas_5627", label %"$have_gas_5628"

"$out_of_gas_5627":                               ; preds = %"$have_gas_5623"
  call void @_out_of_gas()
  br label %"$have_gas_5628"

"$have_gas_5628":                                 ; preds = %"$out_of_gas_5627", %"$have_gas_5623"
  %"$consume_5629" = sub i64 %"$gasrem_5625", 1
  store i64 %"$consume_5629", i64* @_gasrem, align 8
  %isRecordUnowned = alloca %TName_Bool*, align 8
  %"$gasrem_5630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5631" = icmp ugt i64 20, %"$gasrem_5630"
  br i1 %"$gascmp_5631", label %"$out_of_gas_5632", label %"$have_gas_5633"

"$out_of_gas_5632":                               ; preds = %"$have_gas_5628"
  call void @_out_of_gas()
  br label %"$have_gas_5633"

"$have_gas_5633":                                 ; preds = %"$out_of_gas_5632", %"$have_gas_5628"
  %"$consume_5634" = sub i64 %"$gasrem_5630", 20
  store i64 %"$consume_5634", i64* @_gasrem, align 8
  %"$execptr_load_5635" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5636" = alloca [20 x i8], align 1
  %"$recordOwner_5637" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5637", [20 x i8]* %"$eq_recordOwner_5636", align 1
  %"$$eq_recordOwner_5636_5638" = bitcast [20 x i8]* %"$eq_recordOwner_5636" to i8*
  %"$eq_ud-registry.zeroByStr20_5639" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5640" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5640", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5639", align 1
  %"$$eq_ud-registry.zeroByStr20_5639_5641" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5639" to i8*
  %"$eq_call_5642" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5635", i32 20, i8* %"$$eq_recordOwner_5636_5638", i8* %"$$eq_ud-registry.zeroByStr20_5639_5641")
  store %TName_Bool* %"$eq_call_5642", %TName_Bool** %isRecordUnowned, align 8
  %"$gasrem_5644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5645" = icmp ugt i64 1, %"$gasrem_5644"
  br i1 %"$gascmp_5645", label %"$out_of_gas_5646", label %"$have_gas_5647"

"$out_of_gas_5646":                               ; preds = %"$have_gas_5633"
  call void @_out_of_gas()
  br label %"$have_gas_5647"

"$have_gas_5647":                                 ; preds = %"$out_of_gas_5646", %"$have_gas_5633"
  %"$consume_5648" = sub i64 %"$gasrem_5644", 1
  store i64 %"$consume_5648", i64* @_gasrem, align 8
  %isUnapproved = alloca %TName_Bool*, align 8
  %"$gasrem_5649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5650" = icmp ugt i64 20, %"$gasrem_5649"
  br i1 %"$gascmp_5650", label %"$out_of_gas_5651", label %"$have_gas_5652"

"$out_of_gas_5651":                               ; preds = %"$have_gas_5647"
  call void @_out_of_gas()
  br label %"$have_gas_5652"

"$have_gas_5652":                                 ; preds = %"$out_of_gas_5651", %"$have_gas_5647"
  %"$consume_5653" = sub i64 %"$gasrem_5649", 20
  store i64 %"$consume_5653", i64* @_gasrem, align 8
  %"$execptr_load_5654" = load i8*, i8** @_execptr, align 8
  %"$eq_approved_5655" = alloca [20 x i8], align 1
  %"$approved_5656" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_5656", [20 x i8]* %"$eq_approved_5655", align 1
  %"$$eq_approved_5655_5657" = bitcast [20 x i8]* %"$eq_approved_5655" to i8*
  %"$eq_ud-registry.zeroByStr20_5658" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5659" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5659", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5658", align 1
  %"$$eq_ud-registry.zeroByStr20_5658_5660" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5658" to i8*
  %"$eq_call_5661" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5654", i32 20, i8* %"$$eq_approved_5655_5657", i8* %"$$eq_ud-registry.zeroByStr20_5658_5660")
  store %TName_Bool* %"$eq_call_5661", %TName_Bool** %isUnapproved, align 8
  %"$gasrem_5663" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5664" = icmp ugt i64 1, %"$gasrem_5663"
  br i1 %"$gascmp_5664", label %"$out_of_gas_5665", label %"$have_gas_5666"

"$out_of_gas_5665":                               ; preds = %"$have_gas_5652"
  call void @_out_of_gas()
  br label %"$have_gas_5666"

"$have_gas_5666":                                 ; preds = %"$out_of_gas_5665", %"$have_gas_5652"
  %"$consume_5667" = sub i64 %"$gasrem_5663", 1
  store i64 %"$consume_5667", i64* @_gasrem, align 8
  %"$BoolUtils.andb_138" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5668" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5669" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5668", 0
  %"$BoolUtils.andb_envptr_5670" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5668", 1
  %"$isRecordUnowned_5671" = load %TName_Bool*, %TName_Bool** %isRecordUnowned, align 8
  %"$BoolUtils.andb_call_5672" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5669"(i8* %"$BoolUtils.andb_envptr_5670", %TName_Bool* %"$isRecordUnowned_5671")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5672", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_138", align 8
  %"$BoolUtils.andb_139" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_138_5673" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_138", align 8
  %"$$BoolUtils.andb_138_fptr_5674" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_138_5673", 0
  %"$$BoolUtils.andb_138_envptr_5675" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_138_5673", 1
  %"$isUnapproved_5676" = load %TName_Bool*, %TName_Bool** %isUnapproved, align 8
  %"$$BoolUtils.andb_138_call_5677" = call %TName_Bool* %"$$BoolUtils.andb_138_fptr_5674"(i8* %"$$BoolUtils.andb_138_envptr_5675", %TName_Bool* %"$isUnapproved_5676")
  store %TName_Bool* %"$$BoolUtils.andb_138_call_5677", %TName_Bool** %"$BoolUtils.andb_139", align 8
  %"$$BoolUtils.andb_139_5678" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_139", align 8
  store %TName_Bool* %"$$BoolUtils.andb_139_5678", %TName_Bool** %isOk, align 8
  %"$gasrem_5679" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5680" = icmp ugt i64 2, %"$gasrem_5679"
  br i1 %"$gascmp_5680", label %"$out_of_gas_5681", label %"$have_gas_5682"

"$out_of_gas_5681":                               ; preds = %"$have_gas_5666"
  call void @_out_of_gas()
  br label %"$have_gas_5682"

"$have_gas_5682":                                 ; preds = %"$out_of_gas_5681", %"$have_gas_5666"
  %"$consume_5683" = sub i64 %"$gasrem_5679", 2
  store i64 %"$consume_5683", i64* @_gasrem, align 8
  %"$isOk_5685" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5686" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5685", i32 0, i32 0
  %"$isOk_tag_5687" = load i8, i8* %"$isOk_tag_5686", align 1
  switch i8 %"$isOk_tag_5687", label %"$empty_default_5688" [
    i8 0, label %"$True_5689"
    i8 1, label %"$False_5787"
  ]

"$True_5689":                                     ; preds = %"$have_gas_5682"
  %"$isOk_5690" = bitcast %TName_Bool* %"$isOk_5685" to %CName_True*
  %"$gasrem_5691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5692" = icmp ugt i64 1, %"$gasrem_5691"
  br i1 %"$gascmp_5692", label %"$out_of_gas_5693", label %"$have_gas_5694"

"$out_of_gas_5693":                               ; preds = %"$True_5689"
  call void @_out_of_gas()
  br label %"$have_gas_5694"

"$have_gas_5694":                                 ; preds = %"$out_of_gas_5693", %"$True_5689"
  %"$consume_5695" = sub i64 %"$gasrem_5691", 1
  store i64 %"$consume_5695", i64* @_gasrem, align 8
  %"$execptr_load_5696" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_5696")
  %"$gasrem_5697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5698" = icmp ugt i64 1, %"$gasrem_5697"
  br i1 %"$gascmp_5698", label %"$out_of_gas_5699", label %"$have_gas_5700"

"$out_of_gas_5699":                               ; preds = %"$have_gas_5694"
  call void @_out_of_gas()
  br label %"$have_gas_5700"

"$have_gas_5700":                                 ; preds = %"$out_of_gas_5699", %"$have_gas_5694"
  %"$consume_5701" = sub i64 %"$gasrem_5697", 1
  store i64 %"$consume_5701", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_5702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5703" = icmp ugt i64 1, %"$gasrem_5702"
  br i1 %"$gascmp_5703", label %"$out_of_gas_5704", label %"$have_gas_5705"

"$out_of_gas_5704":                               ; preds = %"$have_gas_5700"
  call void @_out_of_gas()
  br label %"$have_gas_5705"

"$have_gas_5705":                                 ; preds = %"$out_of_gas_5704", %"$have_gas_5700"
  %"$consume_5706" = sub i64 %"$gasrem_5702", 1
  store i64 %"$consume_5706", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_5707" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5708" = icmp ugt i64 1, %"$gasrem_5707"
  br i1 %"$gascmp_5708", label %"$out_of_gas_5709", label %"$have_gas_5710"

"$out_of_gas_5709":                               ; preds = %"$have_gas_5705"
  call void @_out_of_gas()
  br label %"$have_gas_5710"

"$have_gas_5710":                                 ; preds = %"$out_of_gas_5709", %"$have_gas_5705"
  %"$consume_5711" = sub i64 %"$gasrem_5707", 1
  store i64 %"$consume_5711", i64* @_gasrem, align 8
  %"$msgobj_5712_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_5712_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_5712_salloc_load", i64 321)
  %"$msgobj_5712_salloc" = bitcast i8* %"$msgobj_5712_salloc_salloc" to [321 x i8]*
  %"$msgobj_5712" = bitcast [321 x i8]* %"$msgobj_5712_salloc" to i8*
  store i8 7, i8* %"$msgobj_5712", align 1
  %"$msgobj_fname_5714" = getelementptr i8, i8* %"$msgobj_5712", i32 1
  %"$msgobj_fname_5715" = bitcast i8* %"$msgobj_fname_5714" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_5713", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_5715", align 8
  %"$msgobj_td_5716" = getelementptr i8, i8* %"$msgobj_5712", i32 17
  %"$msgobj_td_5717" = bitcast i8* %"$msgobj_td_5716" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_5717", align 8
  %"$msgobj_v_5719" = getelementptr i8, i8* %"$msgobj_5712", i32 25
  %"$msgobj_v_5720" = bitcast i8* %"$msgobj_v_5719" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_5718", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_5720", align 8
  %"$msgobj_fname_5722" = getelementptr i8, i8* %"$msgobj_5712", i32 41
  %"$msgobj_fname_5723" = bitcast i8* %"$msgobj_fname_5722" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_5721", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_5723", align 8
  %"$msgobj_td_5724" = getelementptr i8, i8* %"$msgobj_5712", i32 57
  %"$msgobj_td_5725" = bitcast i8* %"$msgobj_td_5724" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_289", %_TyDescrTy_Typ** %"$msgobj_td_5725", align 8
  %"$msgobj_v_5726" = getelementptr i8, i8* %"$msgobj_5712", i32 65
  %"$msgobj_v_5727" = bitcast i8* %"$msgobj_v_5726" to %Uint128*
  store %Uint128 %_amount, %Uint128* %"$msgobj_v_5727", align 8
  %"$msgobj_fname_5729" = getelementptr i8, i8* %"$msgobj_5712", i32 81
  %"$msgobj_fname_5730" = bitcast i8* %"$msgobj_fname_5729" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_5728", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_5730", align 8
  %"$msgobj_td_5731" = getelementptr i8, i8* %"$msgobj_5712", i32 97
  %"$msgobj_td_5732" = bitcast i8* %"$msgobj_td_5731" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_5732", align 8
  %"$currentRegistrar_5733" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  %"$msgobj_v_5734" = getelementptr i8, i8* %"$msgobj_5712", i32 105
  %"$msgobj_v_5735" = bitcast i8* %"$msgobj_v_5734" to [20 x i8]*
  store [20 x i8] %"$currentRegistrar_5733", [20 x i8]* %"$msgobj_v_5735", align 1
  %"$msgobj_fname_5737" = getelementptr i8, i8* %"$msgobj_5712", i32 125
  %"$msgobj_fname_5738" = bitcast i8* %"$msgobj_fname_5737" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_5736", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_5738", align 8
  %"$msgobj_td_5739" = getelementptr i8, i8* %"$msgobj_5712", i32 141
  %"$msgobj_td_5740" = bitcast i8* %"$msgobj_td_5739" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_311", %_TyDescrTy_Typ** %"$msgobj_td_5740", align 8
  %"$msgobj_v_5741" = getelementptr i8, i8* %"$msgobj_5712", i32 149
  %"$msgobj_v_5742" = bitcast i8* %"$msgobj_v_5741" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_5742", align 1
  %"$msgobj_fname_5744" = getelementptr i8, i8* %"$msgobj_5712", i32 169
  %"$msgobj_fname_5745" = bitcast i8* %"$msgobj_fname_5744" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_5743", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_5745", align 8
  %"$msgobj_td_5746" = getelementptr i8, i8* %"$msgobj_5712", i32 185
  %"$msgobj_td_5747" = bitcast i8* %"$msgobj_td_5746" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_5747", align 8
  %"$node_5748" = load [32 x i8], [32 x i8]* %node, align 1
  %"$msgobj_v_5749" = getelementptr i8, i8* %"$msgobj_5712", i32 193
  %"$msgobj_v_5750" = bitcast i8* %"$msgobj_v_5749" to [32 x i8]*
  store [32 x i8] %"$node_5748", [32 x i8]* %"$msgobj_v_5750", align 1
  %"$msgobj_fname_5752" = getelementptr i8, i8* %"$msgobj_5712", i32 225
  %"$msgobj_fname_5753" = bitcast i8* %"$msgobj_fname_5752" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_5751", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_5753", align 8
  %"$msgobj_td_5754" = getelementptr i8, i8* %"$msgobj_5712", i32 241
  %"$msgobj_td_5755" = bitcast i8* %"$msgobj_td_5754" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_309", %_TyDescrTy_Typ** %"$msgobj_td_5755", align 8
  %"$msgobj_v_5756" = getelementptr i8, i8* %"$msgobj_5712", i32 249
  %"$msgobj_v_5757" = bitcast i8* %"$msgobj_v_5756" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_5757", align 1
  %"$msgobj_fname_5759" = getelementptr i8, i8* %"$msgobj_5712", i32 281
  %"$msgobj_fname_5760" = bitcast i8* %"$msgobj_fname_5759" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_5758", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_5760", align 8
  %"$msgobj_td_5761" = getelementptr i8, i8* %"$msgobj_5712", i32 297
  %"$msgobj_td_5762" = bitcast i8* %"$msgobj_td_5761" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_295", %_TyDescrTy_Typ** %"$msgobj_td_5762", align 8
  %"$msgobj_v_5763" = getelementptr i8, i8* %"$msgobj_5712", i32 305
  %"$msgobj_v_5764" = bitcast i8* %"$msgobj_v_5763" to %String*
  store %String %label, %String* %"$msgobj_v_5764", align 8
  store i8* %"$msgobj_5712", i8** %m, align 8
  %"$gasrem_5766" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5767" = icmp ugt i64 1, %"$gasrem_5766"
  br i1 %"$gascmp_5767", label %"$out_of_gas_5768", label %"$have_gas_5769"

"$out_of_gas_5768":                               ; preds = %"$have_gas_5710"
  call void @_out_of_gas()
  br label %"$have_gas_5769"

"$have_gas_5769":                                 ; preds = %"$out_of_gas_5768", %"$have_gas_5710"
  %"$consume_5770" = sub i64 %"$gasrem_5766", 1
  store i64 %"$consume_5770", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_137" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_5771" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_5772" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_5771", 0
  %"$ud-registry.oneMsg_envptr_5773" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_5771", 1
  %"$m_5774" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_5775" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_5772"(i8* %"$ud-registry.oneMsg_envptr_5773", i8* %"$m_5774")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_5775", %TName_List_Message** %"$ud-registry.oneMsg_137", align 8
  %"$$ud-registry.oneMsg_137_5776" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_137", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_137_5776", %TName_List_Message** %msgs, align 8
  %"$msgs_5777" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_5777_5778" = bitcast %TName_List_Message* %"$msgs_5777" to i8*
  %"$_literal_cost_call_5779" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", i8* %"$$msgs_5777_5778")
  %"$gasrem_5780" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5781" = icmp ugt i64 %"$_literal_cost_call_5779", %"$gasrem_5780"
  br i1 %"$gascmp_5781", label %"$out_of_gas_5782", label %"$have_gas_5783"

"$out_of_gas_5782":                               ; preds = %"$have_gas_5769"
  call void @_out_of_gas()
  br label %"$have_gas_5783"

"$have_gas_5783":                                 ; preds = %"$out_of_gas_5782", %"$have_gas_5769"
  %"$consume_5784" = sub i64 %"$gasrem_5780", %"$_literal_cost_call_5779"
  store i64 %"$consume_5784", i64* @_gasrem, align 8
  %"$execptr_load_5785" = load i8*, i8** @_execptr, align 8
  %"$msgs_5786" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_5785", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_319", %TName_List_Message* %"$msgs_5786")
  br label %"$matchsucc_5684"

"$False_5787":                                    ; preds = %"$have_gas_5682"
  %"$isOk_5788" = bitcast %TName_Bool* %"$isOk_5685" to %CName_False*
  br label %"$matchsucc_5684"

"$empty_default_5688":                            ; preds = %"$have_gas_5682"
  br label %"$matchsucc_5684"

"$matchsucc_5684":                                ; preds = %"$False_5787", %"$have_gas_5783", %"$empty_default_5688"
  ret void
}

declare void @_accept(i8*)

define void @register(i8* %0) {
entry:
  %"$_amount_5790" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5791" = bitcast i8* %"$_amount_5790" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5791", align 8
  %"$_origin_5792" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5793" = bitcast i8* %"$_origin_5792" to [20 x i8]*
  %"$_sender_5794" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5795" = bitcast i8* %"$_sender_5794" to [20 x i8]*
  %"$parent_5796" = getelementptr i8, i8* %0, i32 56
  %"$parent_5797" = bitcast i8* %"$parent_5796" to [32 x i8]*
  %"$label_5798" = getelementptr i8, i8* %0, i32 88
  %"$label_5799" = bitcast i8* %"$label_5798" to %String*
  %label = load %String, %String* %"$label_5799", align 8
  call void @"$register_5496"(%Uint128 %_amount, [20 x i8]* %"$_origin_5793", [20 x i8]* %"$_sender_5795", [32 x i8]* %"$parent_5797", %String %label)
  ret void
}

define internal void @"$onResolverConfigured_5800"(%Uint128 %_amount, [20 x i8]* %"$_origin_5801", [20 x i8]* %"$_sender_5802", [32 x i8]* %"$node_5803") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_5801", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5802", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_5803", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_5804_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5804_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5804_salloc_load", i64 32)
  %"$indices_buf_5804_salloc" = bitcast i8* %"$indices_buf_5804_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5804" = bitcast [32 x i8]* %"$indices_buf_5804_salloc" to i8*
  %"$indices_gep_5805" = getelementptr i8, i8* %"$indices_buf_5804", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_5805" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_5807" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_5808" = call i8* @_fetch_field(i8* %"$execptr_load_5807", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5806", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_325", i32 1, i8* %"$indices_buf_5804", i32 1)
  %"$maybeRecord_5809" = bitcast i8* %"$maybeRecord_call_5808" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_5809", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_5810" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_5810_5811" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5810" to i8*
  %"$_literal_cost_call_5812" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_316", i8* %"$$maybeRecord_5810_5811")
  %"$gasadd_5813" = add i64 %"$_literal_cost_call_5812", 0
  %"$gasadd_5814" = add i64 %"$gasadd_5813", 1
  %"$gasrem_5815" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5816" = icmp ugt i64 %"$gasadd_5814", %"$gasrem_5815"
  br i1 %"$gascmp_5816", label %"$out_of_gas_5817", label %"$have_gas_5818"

"$out_of_gas_5817":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5818"

"$have_gas_5818":                                 ; preds = %"$out_of_gas_5817", %entry
  %"$consume_5819" = sub i64 %"$gasrem_5815", %"$gasadd_5814"
  store i64 %"$consume_5819", i64* @_gasrem, align 8
  %"$gasrem_5820" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5821" = icmp ugt i64 2, %"$gasrem_5820"
  br i1 %"$gascmp_5821", label %"$out_of_gas_5822", label %"$have_gas_5823"

"$out_of_gas_5822":                               ; preds = %"$have_gas_5818"
  call void @_out_of_gas()
  br label %"$have_gas_5823"

"$have_gas_5823":                                 ; preds = %"$out_of_gas_5822", %"$have_gas_5818"
  %"$consume_5824" = sub i64 %"$gasrem_5820", 2
  store i64 %"$consume_5824", i64* @_gasrem, align 8
  %"$maybeRecord_5826" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_tag_5827" = getelementptr inbounds %TName_Option_ud-registry.Record, %TName_Option_ud-registry.Record* %"$maybeRecord_5826", i32 0, i32 0
  %"$maybeRecord_tag_5828" = load i8, i8* %"$maybeRecord_tag_5827", align 1
  switch i8 %"$maybeRecord_tag_5828", label %"$empty_default_5829" [
    i8 1, label %"$None_5830"
    i8 0, label %"$Some_5832"
  ]

"$None_5830":                                     ; preds = %"$have_gas_5823"
  %"$maybeRecord_5831" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5826" to %CName_None_ud-registry.Record*
  br label %"$matchsucc_5825"

"$Some_5832":                                     ; preds = %"$have_gas_5823"
  %"$maybeRecord_5833" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5826" to %CName_Some_ud-registry.Record*
  %"$record_gep_5834" = getelementptr inbounds %CName_Some_ud-registry.Record, %CName_Some_ud-registry.Record* %"$maybeRecord_5833", i32 0, i32 1
  %"$record_load_5835" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %"$record_gep_5834", align 8
  %record = alloca %TName_ud-registry.Record*, align 8
  store %TName_ud-registry.Record* %"$record_load_5835", %TName_ud-registry.Record** %record, align 8
  %"$gasrem_5836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5837" = icmp ugt i64 1, %"$gasrem_5836"
  br i1 %"$gascmp_5837", label %"$out_of_gas_5838", label %"$have_gas_5839"

"$out_of_gas_5838":                               ; preds = %"$Some_5832"
  call void @_out_of_gas()
  br label %"$have_gas_5839"

"$have_gas_5839":                                 ; preds = %"$out_of_gas_5838", %"$Some_5832"
  %"$consume_5840" = sub i64 %"$gasrem_5836", 1
  store i64 %"$consume_5840", i64* @_gasrem, align 8
  %"$record_5842" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %record, align 8
  %"$record_tag_5843" = getelementptr inbounds %TName_ud-registry.Record, %TName_ud-registry.Record* %"$record_5842", i32 0, i32 0
  %"$record_tag_5844" = load i8, i8* %"$record_tag_5843", align 1
  switch i8 %"$record_tag_5844", label %"$empty_default_5845" [
    i8 0, label %"$ud-registry.Record_5846"
  ]

"$ud-registry.Record_5846":                       ; preds = %"$have_gas_5839"
  %"$record_5847" = bitcast %TName_ud-registry.Record* %"$record_5842" to %CName_ud-registry.Record*
  %"$owner_gep_5848" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_5847", i32 0, i32 1
  %"$owner_load_5849" = load [20 x i8], [20 x i8]* %"$owner_gep_5848", align 1
  %owner = alloca [20 x i8], align 1
  store [20 x i8] %"$owner_load_5849", [20 x i8]* %owner, align 1
  %"$resolver_gep_5850" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_5847", i32 0, i32 2
  %"$resolver_load_5851" = load [20 x i8], [20 x i8]* %"$resolver_gep_5850", align 1
  %resolver = alloca [20 x i8], align 1
  store [20 x i8] %"$resolver_load_5851", [20 x i8]* %resolver, align 1
  %"$gasrem_5852" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5853" = icmp ugt i64 1, %"$gasrem_5852"
  br i1 %"$gascmp_5853", label %"$out_of_gas_5854", label %"$have_gas_5855"

"$out_of_gas_5854":                               ; preds = %"$ud-registry.Record_5846"
  call void @_out_of_gas()
  br label %"$have_gas_5855"

"$have_gas_5855":                                 ; preds = %"$out_of_gas_5854", %"$ud-registry.Record_5846"
  %"$consume_5856" = sub i64 %"$gasrem_5852", 1
  store i64 %"$consume_5856", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_5857" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5858" = icmp ugt i64 20, %"$gasrem_5857"
  br i1 %"$gascmp_5858", label %"$out_of_gas_5859", label %"$have_gas_5860"

"$out_of_gas_5859":                               ; preds = %"$have_gas_5855"
  call void @_out_of_gas()
  br label %"$have_gas_5860"

"$have_gas_5860":                                 ; preds = %"$out_of_gas_5859", %"$have_gas_5855"
  %"$consume_5861" = sub i64 %"$gasrem_5857", 20
  store i64 %"$consume_5861", i64* @_gasrem, align 8
  %"$execptr_load_5862" = load i8*, i8** @_execptr, align 8
  %"$eq_resolver_5863" = alloca [20 x i8], align 1
  %"$resolver_5864" = load [20 x i8], [20 x i8]* %resolver, align 1
  store [20 x i8] %"$resolver_5864", [20 x i8]* %"$eq_resolver_5863", align 1
  %"$$eq_resolver_5863_5865" = bitcast [20 x i8]* %"$eq_resolver_5863" to i8*
  %"$eq__sender_5866" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_5866", align 1
  %"$$eq__sender_5866_5867" = bitcast [20 x i8]* %"$eq__sender_5866" to i8*
  %"$eq_call_5868" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5862", i32 20, i8* %"$$eq_resolver_5863_5865", i8* %"$$eq__sender_5866_5867")
  store %TName_Bool* %"$eq_call_5868", %TName_Bool** %isOk, align 8
  %"$gasrem_5870" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5871" = icmp ugt i64 2, %"$gasrem_5870"
  br i1 %"$gascmp_5871", label %"$out_of_gas_5872", label %"$have_gas_5873"

"$out_of_gas_5872":                               ; preds = %"$have_gas_5860"
  call void @_out_of_gas()
  br label %"$have_gas_5873"

"$have_gas_5873":                                 ; preds = %"$out_of_gas_5872", %"$have_gas_5860"
  %"$consume_5874" = sub i64 %"$gasrem_5870", 2
  store i64 %"$consume_5874", i64* @_gasrem, align 8
  %"$isOk_5876" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5877" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5876", i32 0, i32 0
  %"$isOk_tag_5878" = load i8, i8* %"$isOk_tag_5877", align 1
  switch i8 %"$isOk_tag_5878", label %"$empty_default_5879" [
    i8 0, label %"$True_5880"
    i8 1, label %"$False_5920"
  ]

"$True_5880":                                     ; preds = %"$have_gas_5873"
  %"$isOk_5881" = bitcast %TName_Bool* %"$isOk_5876" to %CName_True*
  %"$gasrem_5882" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5883" = icmp ugt i64 1, %"$gasrem_5882"
  br i1 %"$gascmp_5883", label %"$out_of_gas_5884", label %"$have_gas_5885"

"$out_of_gas_5884":                               ; preds = %"$True_5880"
  call void @_out_of_gas()
  br label %"$have_gas_5885"

"$have_gas_5885":                                 ; preds = %"$out_of_gas_5884", %"$True_5880"
  %"$consume_5886" = sub i64 %"$gasrem_5882", 1
  store i64 %"$consume_5886", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5887" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5888" = icmp ugt i64 1, %"$gasrem_5887"
  br i1 %"$gascmp_5888", label %"$out_of_gas_5889", label %"$have_gas_5890"

"$out_of_gas_5889":                               ; preds = %"$have_gas_5885"
  call void @_out_of_gas()
  br label %"$have_gas_5890"

"$have_gas_5890":                                 ; preds = %"$out_of_gas_5889", %"$have_gas_5885"
  %"$consume_5891" = sub i64 %"$gasrem_5887", 1
  store i64 %"$consume_5891", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_143" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_5892" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_5893" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5892", 0
  %"$ud-registry.eConfigured_envptr_5894" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5892", 1
  %"$ud-registry.eConfigured_node_5895" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_5895", align 1
  %"$ud-registry.eConfigured_call_5896" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_5893"(i8* %"$ud-registry.eConfigured_envptr_5894", [32 x i8]* %"$ud-registry.eConfigured_node_5895")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_5896", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_143", align 8
  %"$ud-registry.eConfigured_144" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_143_5897" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_143", align 8
  %"$$ud-registry.eConfigured_143_fptr_5898" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_143_5897", 0
  %"$$ud-registry.eConfigured_143_envptr_5899" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_143_5897", 1
  %"$$ud-registry.eConfigured_143_owner_5900" = alloca [20 x i8], align 1
  %"$owner_5901" = load [20 x i8], [20 x i8]* %owner, align 1
  store [20 x i8] %"$owner_5901", [20 x i8]* %"$$ud-registry.eConfigured_143_owner_5900", align 1
  %"$$ud-registry.eConfigured_143_call_5902" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_143_fptr_5898"(i8* %"$$ud-registry.eConfigured_143_envptr_5899", [20 x i8]* %"$$ud-registry.eConfigured_143_owner_5900")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_143_call_5902", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_144", align 8
  %"$ud-registry.eConfigured_145" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_144_5903" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_144", align 8
  %"$$ud-registry.eConfigured_144_fptr_5904" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_144_5903", 0
  %"$$ud-registry.eConfigured_144_envptr_5905" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_144_5903", 1
  %"$$ud-registry.eConfigured_144_resolver_5906" = alloca [20 x i8], align 1
  %"$resolver_5907" = load [20 x i8], [20 x i8]* %resolver, align 1
  store [20 x i8] %"$resolver_5907", [20 x i8]* %"$$ud-registry.eConfigured_144_resolver_5906", align 1
  %"$$ud-registry.eConfigured_144_call_5908" = call i8* %"$$ud-registry.eConfigured_144_fptr_5904"(i8* %"$$ud-registry.eConfigured_144_envptr_5905", [20 x i8]* %"$$ud-registry.eConfigured_144_resolver_5906")
  store i8* %"$$ud-registry.eConfigured_144_call_5908", i8** %"$ud-registry.eConfigured_145", align 8
  %"$$ud-registry.eConfigured_145_5909" = load i8*, i8** %"$ud-registry.eConfigured_145", align 8
  store i8* %"$$ud-registry.eConfigured_145_5909", i8** %e, align 8
  %"$e_5910" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5912" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5910")
  %"$gasrem_5913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5914" = icmp ugt i64 %"$_literal_cost_call_5912", %"$gasrem_5913"
  br i1 %"$gascmp_5914", label %"$out_of_gas_5915", label %"$have_gas_5916"

"$out_of_gas_5915":                               ; preds = %"$have_gas_5890"
  call void @_out_of_gas()
  br label %"$have_gas_5916"

"$have_gas_5916":                                 ; preds = %"$out_of_gas_5915", %"$have_gas_5890"
  %"$consume_5917" = sub i64 %"$gasrem_5913", %"$_literal_cost_call_5912"
  store i64 %"$consume_5917", i64* @_gasrem, align 8
  %"$execptr_load_5918" = load i8*, i8** @_execptr, align 8
  %"$e_5919" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5918", %_TyDescrTy_Typ* @"$TyDescr_Event_301", i8* %"$e_5919")
  br label %"$matchsucc_5875"

"$False_5920":                                    ; preds = %"$have_gas_5873"
  %"$isOk_5921" = bitcast %TName_Bool* %"$isOk_5876" to %CName_False*
  br label %"$matchsucc_5875"

"$empty_default_5879":                            ; preds = %"$have_gas_5873"
  br label %"$matchsucc_5875"

"$matchsucc_5875":                                ; preds = %"$False_5920", %"$have_gas_5916", %"$empty_default_5879"
  br label %"$matchsucc_5841"

"$empty_default_5845":                            ; preds = %"$have_gas_5839"
  br label %"$matchsucc_5841"

"$matchsucc_5841":                                ; preds = %"$matchsucc_5875", %"$empty_default_5845"
  br label %"$matchsucc_5825"

"$empty_default_5829":                            ; preds = %"$have_gas_5823"
  br label %"$matchsucc_5825"

"$matchsucc_5825":                                ; preds = %"$matchsucc_5841", %"$None_5830", %"$empty_default_5829"
  ret void
}

define void @onResolverConfigured(i8* %0) {
entry:
  %"$_amount_5923" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5924" = bitcast i8* %"$_amount_5923" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5924", align 8
  %"$_origin_5925" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5926" = bitcast i8* %"$_origin_5925" to [20 x i8]*
  %"$_sender_5927" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5928" = bitcast i8* %"$_sender_5927" to [20 x i8]*
  %"$node_5929" = getelementptr i8, i8* %0, i32 56
  %"$node_5930" = bitcast i8* %"$node_5929" to [32 x i8]*
  call void @"$onResolverConfigured_5800"(%Uint128 %_amount, [20 x i8]* %"$_origin_5926", [20 x i8]* %"$_sender_5928", [32 x i8]* %"$node_5930")
  ret void
}
