

; gas_remaining: 4001329
; ModuleID = 'Registry'
source_filename = "Registry"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_274" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_310" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_309"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_309" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_311"**, %"$TyDescrTy_ADTTyp_310"* }
%"$TyDescrTy_ADTTyp_Constr_311" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_319" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_324" = type { i32, %"$TyDescr_AddrFieldTyp_323"* }
%"$TyDescr_AddrFieldTyp_323" = type { %TyDescrString, %_TyDescrTy_Typ* }
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
%"$ParamDescr_5811" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_5812" = type { %ParamDescrString, i32, %"$ParamDescr_5811"* }
%"$$fundef_211_env_402" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, %TName_Option_ByStr20*, [20 x i8], [20 x i8], { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_209_env_403" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, [20 x i8], [20 x i8], { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_207_env_404" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, [20 x i8], { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_205_env_405" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_215_env_406" = type { [32 x i8] }
%"$$fundef_213_env_407" = type {}
%"$$fundef_217_env_408" = type { [20 x i8] }
%"$$fundef_219_env_409" = type {}
%"$$fundef_225_env_410" = type { [32 x i8], [20 x i8] }
%"$$fundef_223_env_411" = type { [32 x i8] }
%"$$fundef_221_env_412" = type {}
%"$$fundef_229_env_413" = type { [32 x i8] }
%"$$fundef_227_env_414" = type {}
%"$$fundef_231_env_415" = type {}
%"$$fundef_233_env_416" = type {}
%"$$fundef_239_env_417" = type { [20 x i8], [20 x i8] }
%"$$fundef_237_env_418" = type { [20 x i8] }
%"$$fundef_235_env_419" = type {}
%"$$fundef_243_env_420" = type { [20 x i8] }
%"$$fundef_241_env_421" = type {}
%"$$fundef_247_env_422" = type { %TName_Bool* }
%"$$fundef_245_env_423" = type {}
%"$$fundef_253_env_424" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, [20 x i8] }
%"$$fundef_251_env_425" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { i8*, i8* }*, %TName_List_ByStr20* }
%"$$fundef_249_env_426" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { i8*, i8* }* }
%"$$fundef_257_env_427" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, %TName_List_ByStr20*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_255_env_428" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_261_env_429" = type { { i8*, i8* }*, %TName_List_ByStr20*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_259_env_430" = type { { i8*, i8* }*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_265_env_431" = type { [20 x i8] }
%"$$fundef_263_env_432" = type {}
%"$$fundef_267_env_433" = type { %TName_List_Message* }
%"$$fundef_179_env_434" = type { { i8*, i8* }*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_177_env_435" = type { { i8*, i8* }* }
%"$$fundef_175_env_436" = type { { i8*, i8* }* }
%"$$fundef_185_env_437" = type { { i8*, i8* }*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_183_env_438" = type { { i8*, i8* }* }
%"$$fundef_181_env_439" = type { { i8*, i8* }* }
%"$$fundef_195_env_440" = type { %TName_Option_ByStr20*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, [20 x i8] }
%"$$fundef_193_env_441" = type { %TName_Option_ByStr20*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_191_env_442" = type { %TName_Option_ByStr20*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_189_env_443" = type { { i8*, i8* }* }
%"$$fundef_187_env_444" = type { { i8*, i8* }* }
%"$$fundef_203_env_445" = type { { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, [20 x i8] }
%"$$fundef_201_env_446" = type { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_199_env_447" = type { { i8*, i8* }* }
%"$$fundef_197_env_448" = type { { i8*, i8* }* }
%"$$fundef_165_env_449" = type {}
%"$$fundef_169_env_450" = type { %TName_Bool* }
%"$$fundef_167_env_451" = type {}
%"$$fundef_173_env_452" = type { %TName_Bool* }
%"$$fundef_171_env_453" = type {}
%"$$fundef_153_env_454" = type { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, %TName_List_ByStr20* }
%"$$fundef_151_env_455" = type { { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, %TName_Option_ByStr20* }
%"$$fundef_149_env_456" = type { { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } }
%"$$fundef_147_env_457" = type {}
%"$$fundef_145_env_458" = type {}
%"$$fundef_143_env_459" = type {}
%"$$fundef_163_env_460" = type { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, %TName_List_ByStr20* }
%"$$fundef_161_env_461" = type { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_159_env_462" = type {}
%"$$fundef_157_env_463" = type {}
%"$$fundef_155_env_464" = type {}
%Map_ByStr32_ud-registry.Record = type { [32 x i8], %TName_ud-registry.Record* }
%Map_ByStr32_ByStr20 = type { [32 x i8], [20 x i8] }
%"Map_ByStr20_List_(ByStr20)" = type { [20 x i8], %TName_List_ByStr20* }
%Uint128 = type { i128 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_275" = global %"$TyDescrTy_PrimTyp_274" zeroinitializer
@"$TyDescr_Int32_276" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_274"* @"$TyDescr_Int32_Prim_275" to i8*) }
@"$TyDescr_Uint32_Prim_277" = global %"$TyDescrTy_PrimTyp_274" { i32 1, i32 0 }
@"$TyDescr_Uint32_278" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_274"* @"$TyDescr_Uint32_Prim_277" to i8*) }
@"$TyDescr_Int64_Prim_279" = global %"$TyDescrTy_PrimTyp_274" { i32 0, i32 1 }
@"$TyDescr_Int64_280" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_274"* @"$TyDescr_Int64_Prim_279" to i8*) }
@"$TyDescr_Uint64_Prim_281" = global %"$TyDescrTy_PrimTyp_274" { i32 1, i32 1 }
@"$TyDescr_Uint64_282" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_274"* @"$TyDescr_Uint64_Prim_281" to i8*) }
@"$TyDescr_Int128_Prim_283" = global %"$TyDescrTy_PrimTyp_274" { i32 0, i32 2 }
@"$TyDescr_Int128_284" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_274"* @"$TyDescr_Int128_Prim_283" to i8*) }
@"$TyDescr_Uint128_Prim_285" = global %"$TyDescrTy_PrimTyp_274" { i32 1, i32 2 }
@"$TyDescr_Uint128_286" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_274"* @"$TyDescr_Uint128_Prim_285" to i8*) }
@"$TyDescr_Int256_Prim_287" = global %"$TyDescrTy_PrimTyp_274" { i32 0, i32 3 }
@"$TyDescr_Int256_288" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_274"* @"$TyDescr_Int256_Prim_287" to i8*) }
@"$TyDescr_Uint256_Prim_289" = global %"$TyDescrTy_PrimTyp_274" { i32 1, i32 3 }
@"$TyDescr_Uint256_290" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_274"* @"$TyDescr_Uint256_Prim_289" to i8*) }
@"$TyDescr_String_Prim_291" = global %"$TyDescrTy_PrimTyp_274" { i32 2, i32 0 }
@"$TyDescr_String_292" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_274"* @"$TyDescr_String_Prim_291" to i8*) }
@"$TyDescr_Bnum_Prim_293" = global %"$TyDescrTy_PrimTyp_274" { i32 3, i32 0 }
@"$TyDescr_Bnum_294" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_274"* @"$TyDescr_Bnum_Prim_293" to i8*) }
@"$TyDescr_Message_Prim_295" = global %"$TyDescrTy_PrimTyp_274" { i32 4, i32 0 }
@"$TyDescr_Message_296" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_274"* @"$TyDescr_Message_Prim_295" to i8*) }
@"$TyDescr_Event_Prim_297" = global %"$TyDescrTy_PrimTyp_274" { i32 5, i32 0 }
@"$TyDescr_Event_298" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_274"* @"$TyDescr_Event_Prim_297" to i8*) }
@"$TyDescr_Exception_Prim_299" = global %"$TyDescrTy_PrimTyp_274" { i32 6, i32 0 }
@"$TyDescr_Exception_300" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_274"* @"$TyDescr_Exception_Prim_299" to i8*) }
@"$TyDescr_Bystr_Prim_301" = global %"$TyDescrTy_PrimTyp_274" { i32 7, i32 0 }
@"$TyDescr_Bystr_302" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_274"* @"$TyDescr_Bystr_Prim_301" to i8*) }
@"$TyDescr_Bystr64_Prim_303" = global %"$TyDescrTy_PrimTyp_274" { i32 8, i32 64 }
@"$TyDescr_Bystr64_304" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_274"* @"$TyDescr_Bystr64_Prim_303" to i8*) }
@"$TyDescr_Bystr32_Prim_305" = global %"$TyDescrTy_PrimTyp_274" { i32 8, i32 32 }
@"$TyDescr_Bystr32_306" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_274"* @"$TyDescr_Bystr32_Prim_305" to i8*) }
@"$TyDescr_Bystr20_Prim_307" = global %"$TyDescrTy_PrimTyp_274" { i32 8, i32 20 }
@"$TyDescr_Bystr20_308" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_274"* @"$TyDescr_Bystr20_Prim_307" to i8*) }
@"$TyDescr_ADT_Option_List_(ByStr20)_312" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_335" to i8*) }
@"$TyDescr_ADT_Option_ud-registry.Record_313" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_344" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_314" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_353" to i8*) }
@"$TyDescr_ADT_ud-registry.Record_315" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_ud-registry.Record_ADTTyp_Specl_362" to i8*) }
@"$TyDescr_ADT_List_Message_316" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_List_Message_ADTTyp_Specl_374" to i8*) }
@"$TyDescr_ADT_List_ByStr20_317" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_383" to i8*) }
@"$TyDescr_ADT_Bool_318" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_Bool_ADTTyp_Specl_395" to i8*) }
@"$TyDescr_Map_320" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_319"* @"$TyDescr_MapTyp_398" to i8*) }
@"$TyDescr_Map_321" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_319"* @"$TyDescr_MapTyp_399" to i8*) }
@"$TyDescr_Map_322" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_319"* @"$TyDescr_MapTyp_400" to i8*) }
@"$TyDescr_Addr_325" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_324"* @"$TyDescr_AddrFields_401" to i8*) }
@"$TyDescr_Option_ADTTyp_326" = unnamed_addr constant %"$TyDescrTy_ADTTyp_310" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_355", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 3, %"$TyDescrTy_ADTTyp_Specl_309"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_309"*], [3 x %"$TyDescrTy_ADTTyp_Specl_309"*]* @"$TyDescr_Option_ADTTyp_m_specls_354", i32 0, i32 0) }
@"$TyDescr_Option_Some_List_(ByStr20)_Constr_m_args_327" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317"]
@"$TyDescr_ADT_Some_328" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_List_(ByStr20)_ADTTyp_Constr_329" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_328", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_List_(ByStr20)_Constr_m_args_327", i32 0, i32 0) }
@"$TyDescr_Option_None_List_(ByStr20)_Constr_m_args_330" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_331" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_List_(ByStr20)_ADTTyp_Constr_332" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_331", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_List_(ByStr20)_Constr_m_args_330", i32 0, i32 0) }
@"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_m_constrs_333" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_311"*] [%"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_Option_Some_List_(ByStr20)_ADTTyp_Constr_329", %"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_Option_None_List_(ByStr20)_ADTTyp_Constr_332"]
@"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_m_TArgs_334" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317"]
@"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_335" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_309" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_m_TArgs_334", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_311"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_311"*], [2 x %"$TyDescrTy_ADTTyp_Constr_311"*]* @"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_m_constrs_333", i32 0, i32 0), %"$TyDescrTy_ADTTyp_310"* @"$TyDescr_Option_ADTTyp_326" }
@"$TyDescr_Option_Some_ud-registry.Record_Constr_m_args_336" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315"]
@"$TyDescr_ADT_Some_337" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ud-registry.Record_ADTTyp_Constr_338" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_337", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ud-registry.Record_Constr_m_args_336", i32 0, i32 0) }
@"$TyDescr_Option_None_ud-registry.Record_Constr_m_args_339" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_340" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ud-registry.Record_ADTTyp_Constr_341" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_340", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ud-registry.Record_Constr_m_args_339", i32 0, i32 0) }
@"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_m_constrs_342" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_311"*] [%"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_Option_Some_ud-registry.Record_ADTTyp_Constr_338", %"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_Option_None_ud-registry.Record_ADTTyp_Constr_341"]
@"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_m_TArgs_343" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315"]
@"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_344" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_309" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_m_TArgs_343", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_311"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_311"*], [2 x %"$TyDescrTy_ADTTyp_Constr_311"*]* @"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_m_constrs_342", i32 0, i32 0), %"$TyDescrTy_ADTTyp_310"* @"$TyDescr_Option_ADTTyp_326" }
@"$TyDescr_Option_Some_ByStr20_Constr_m_args_345" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308"]
@"$TyDescr_ADT_Some_346" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_347" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_346", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_Constr_m_args_345", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_Constr_m_args_348" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_349" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_350" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_349", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_Constr_m_args_348", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_351" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_311"*] [%"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_347", %"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_350"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_352" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_353" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_309" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_352", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_311"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_311"*], [2 x %"$TyDescrTy_ADTTyp_Constr_311"*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_351", i32 0, i32 0), %"$TyDescrTy_ADTTyp_310"* @"$TyDescr_Option_ADTTyp_326" }
@"$TyDescr_Option_ADTTyp_m_specls_354" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_309"*] [%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_335", %"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_344", %"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_353"]
@"$TyDescr_ADT_Option_355" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_ud-registry.Record_ADTTyp_356" = unnamed_addr constant %"$TyDescrTy_ADTTyp_310" { %TyDescrString { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$TyDescr_ADT_ud-registry.Record_364", i32 0, i32 0), i32 18 }, i32 0, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_309"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_309"*], [1 x %"$TyDescrTy_ADTTyp_Specl_309"*]* @"$TyDescr_ud-registry.Record_ADTTyp_m_specls_363", i32 0, i32 0) }
@"$TyDescr_ud-registry.Record_ud-registry.Record_Constr_m_args_357" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308"]
@"$TyDescr_ADT_ud-registry.Record_358" = unnamed_addr constant [18 x i8] c"ud-registry.Record"
@"$TyDescr_ud-registry.Record_ud-registry.Record_ADTTyp_Constr_359" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$TyDescr_ADT_ud-registry.Record_358", i32 0, i32 0), i32 18 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_ud-registry.Record_ud-registry.Record_Constr_m_args_357", i32 0, i32 0) }
@"$TyDescr_ud-registry.Record_ADTTyp_Specl_m_constrs_360" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_311"*] [%"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_ud-registry.Record_ud-registry.Record_ADTTyp_Constr_359"]
@"$TyDescr_ud-registry.Record_ADTTyp_Specl_m_TArgs_361" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ud-registry.Record_ADTTyp_Specl_362" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_309" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_ud-registry.Record_ADTTyp_Specl_m_TArgs_361", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_311"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_311"*], [1 x %"$TyDescrTy_ADTTyp_Constr_311"*]* @"$TyDescr_ud-registry.Record_ADTTyp_Specl_m_constrs_360", i32 0, i32 0), %"$TyDescrTy_ADTTyp_310"* @"$TyDescr_ud-registry.Record_ADTTyp_356" }
@"$TyDescr_ud-registry.Record_ADTTyp_m_specls_363" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_309"*] [%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_ud-registry.Record_ADTTyp_Specl_362"]
@"$TyDescr_ADT_ud-registry.Record_364" = unnamed_addr constant [18 x i8] c"ud-registry.Record"
@"$TyDescr_List_ADTTyp_365" = unnamed_addr constant %"$TyDescrTy_ADTTyp_310" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_385", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_309"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_309"*], [2 x %"$TyDescrTy_ADTTyp_Specl_309"*]* @"$TyDescr_List_ADTTyp_m_specls_384", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_366" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_296", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316"]
@"$TyDescr_ADT_Cons_367" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_368" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_367", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_366", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_369" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_370" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_371" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_370", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_369", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_372" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_311"*] [%"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_368", %"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_371"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_373" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_296"]
@"$TyDescr_List_Message_ADTTyp_Specl_374" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_309" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_373", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_311"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_311"*], [2 x %"$TyDescrTy_ADTTyp_Constr_311"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_372", i32 0, i32 0), %"$TyDescrTy_ADTTyp_310"* @"$TyDescr_List_ADTTyp_365" }
@"$TyDescr_List_Cons_ByStr20_Constr_m_args_375" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317"]
@"$TyDescr_ADT_Cons_376" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_377" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_376", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_Constr_m_args_375", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_Constr_m_args_378" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_379" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_380" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_379", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_Constr_m_args_378", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_381" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_311"*] [%"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_377", %"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_380"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_382" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_383" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_309" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_382", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_311"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_311"*], [2 x %"$TyDescrTy_ADTTyp_Constr_311"*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_381", i32 0, i32 0), %"$TyDescrTy_ADTTyp_310"* @"$TyDescr_List_ADTTyp_365" }
@"$TyDescr_List_ADTTyp_m_specls_384" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_309"*] [%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_List_Message_ADTTyp_Specl_374", %"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_383"]
@"$TyDescr_ADT_List_385" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Bool_ADTTyp_386" = unnamed_addr constant %"$TyDescrTy_ADTTyp_310" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_397", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_309"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_309"*], [1 x %"$TyDescrTy_ADTTyp_Specl_309"*]* @"$TyDescr_Bool_ADTTyp_m_specls_396", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_387" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_388" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_389" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_388", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_387", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_390" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_391" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_392" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_391", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_390", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_393" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_311"*] [%"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_Bool_True_ADTTyp_Constr_389", %"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_Bool_False_ADTTyp_Constr_392"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_394" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_395" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_309" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_394", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_311"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_311"*], [2 x %"$TyDescrTy_ADTTyp_Constr_311"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_393", i32 0, i32 0), %"$TyDescrTy_ADTTyp_310"* @"$TyDescr_Bool_ADTTyp_386" }
@"$TyDescr_Bool_ADTTyp_m_specls_396" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_309"*] [%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_Bool_ADTTyp_Specl_395"]
@"$TyDescr_ADT_Bool_397" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_398" = unnamed_addr constant %"$TyDescr_MapTyp_319" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317" }
@"$TyDescr_MapTyp_399" = unnamed_addr constant %"$TyDescr_MapTyp_319" { %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }
@"$TyDescr_MapTyp_400" = unnamed_addr constant %"$TyDescr_MapTyp_319" { %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315" }
@"$TyDescr_AddrFields_401" = unnamed_addr constant %"$TyDescr_AddrTyp_324" { i32 -1, %"$TyDescr_AddrFieldTyp_323"* null }
@"$stringlit_1732" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1737" = unnamed_addr constant [8 x i8] c"AdminSet"
@"$stringlit_1740" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1748" = unnamed_addr constant [10 x i8] c"isApproved"
@"$stringlit_1793" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1798" = unnamed_addr constant [11 x i8] c"ApprovedFor"
@"$stringlit_1801" = unnamed_addr constant [4 x i8] c"user"
@"$stringlit_1809" = unnamed_addr constant [8 x i8] c"operator"
@"$stringlit_1817" = unnamed_addr constant [10 x i8] c"isApproved"
@"$stringlit_1832" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1837" = unnamed_addr constant [8 x i8] c"Approved"
@"$stringlit_1840" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1855" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1860" = unnamed_addr constant [12 x i8] c"NewRegistrar"
@"$stringlit_1863" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1891" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1896" = unnamed_addr constant [9 x i8] c"NewDomain"
@"$stringlit_1899" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_1907" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_1952" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1957" = unnamed_addr constant [10 x i8] c"Configured"
@"$stringlit_1960" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_1968" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_1976" = unnamed_addr constant [8 x i8] c"resolver"
@"$stringlit_1991" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1996" = unnamed_addr constant [5 x i8] c"Error"
@"$stringlit_1999" = unnamed_addr constant [3 x i8] c"msg"
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
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@initialOwner = global [20 x i8] zeroinitializer
@rootNode = global [32 x i8] zeroinitializer
@"$records_2629" = unnamed_addr constant [8 x i8] c"records\00"
@"$registrar_2639" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$approvals_2652" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_2664" = unnamed_addr constant [10 x i8] c"operators\00"
@"$admins_2680" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_2687" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_2840" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_2890" = unnamed_addr constant [26 x i8] c"Sender not root node owner"
@"$records_2930" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_2987" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$approvals_3086" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$stringlit_3132" = unnamed_addr constant [21 x i8] c"Sender not node owner"
@"$operators_3171" = unnamed_addr constant [10 x i8] c"operators\00"
@"$operators_3328" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3385" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3401" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3435" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3520" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_3575" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3580" = unnamed_addr constant [18 x i8] c"onConfigureSuccess"
@"$stringlit_3583" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3590" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3597" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3604" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_3650" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$stringlit_3688" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3693" = unnamed_addr constant [18 x i8] c"onConfigureFailure"
@"$stringlit_3696" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3703" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3711" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3718" = unnamed_addr constant [10 x i8] c"_recipient"
@"$records_3767" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3783" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3817" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3903" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_3960" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$records_4000" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4016" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_4050" = unnamed_addr constant [10 x i8] c"operators\00"
@"$approvals_4116" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$records_4145" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4201" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4206" = unnamed_addr constant [17 x i8] c"onTransferSuccess"
@"$stringlit_4209" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_4216" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4223" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4230" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_4276" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$stringlit_4314" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4319" = unnamed_addr constant [17 x i8] c"onTransferFailure"
@"$stringlit_4322" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_4329" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4336" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4343" = unnamed_addr constant [10 x i8] c"_recipient"
@"$records_4390" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4406" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_4440" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_4522" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4587" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$records_4617" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4674" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4679" = unnamed_addr constant [15 x i8] c"onAssignSuccess"
@"$stringlit_4682" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_4689" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_4696" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4703" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4710" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_4756" = unnamed_addr constant [45 x i8] c"Sender not parent owner, approved or operator"
@"$stringlit_4794" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4799" = unnamed_addr constant [15 x i8] c"onAssignFailure"
@"$stringlit_4802" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_4809" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_4816" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4824" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4831" = unnamed_addr constant [10 x i8] c"_recipient"
@"$admins_4878" = unnamed_addr constant [7 x i8] c"admins\00"
@"$records_4916" = unnamed_addr constant [8 x i8] c"records\00"
@"$records_4933" = unnamed_addr constant [8 x i8] c"records\00"
@"$registrar_4947" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$records_5205" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_5262" = unnamed_addr constant [12 x i8] c"Sender admin"
@"$admins_5301" = unnamed_addr constant [7 x i8] c"admins\00"
@"$registrar_5382" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$records_5422" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_5439" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$registrar_5503" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$stringlit_5599" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_5604" = unnamed_addr constant [8 x i8] c"register"
@"$stringlit_5607" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_5614" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_5622" = unnamed_addr constant [6 x i8] c"origin"
@"$stringlit_5629" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_5637" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_5644" = unnamed_addr constant [5 x i8] c"label"
@"$records_5692" = unnamed_addr constant [8 x i8] c"records\00"
@_tydescr_table = constant [28 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %_TyDescrTy_Typ* @"$TyDescr_Event_298", %_TyDescrTy_Typ* @"$TyDescr_Int64_280", %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ* @"$TyDescr_Uint256_290", %_TyDescrTy_Typ* @"$TyDescr_Uint32_278", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_304", %_TyDescrTy_Typ* @"$TyDescr_Uint64_282", %_TyDescrTy_Typ* @"$TyDescr_Bnum_294", %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ* @"$TyDescr_Map_322", %_TyDescrTy_Typ* @"$TyDescr_Exception_300", %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ* @"$TyDescr_Int256_288", %_TyDescrTy_Typ* @"$TyDescr_Int128_284", %_TyDescrTy_Typ* @"$TyDescr_Map_320", %_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", %_TyDescrTy_Typ* @"$TyDescr_Bystr_302", %_TyDescrTy_Typ* @"$TyDescr_Message_296", %_TyDescrTy_Typ* @"$TyDescr_Map_321", %_TyDescrTy_Typ* @"$TyDescr_Int32_276"]
@_tydescr_table_length = constant i32 28
@"$pname__scilla_version_5813" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_5814" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname_initialOwner_5815" = unnamed_addr constant [12 x i8] c"initialOwner"
@"$pname_rootNode_5816" = unnamed_addr constant [8 x i8] c"rootNode"
@_contract_parameters = constant [4 x %"$ParamDescr_5811"] [%"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_5813", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_278" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_5814", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$pname_initialOwner_5815", i32 0, i32 0), i32 12 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pname_rootNode_5816", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306" }]
@_contract_parameters_length = constant i32 4
@"$tpname__amount_5817" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5818" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5819" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_5820" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_5821" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_setAdmin_5822" = unnamed_addr constant [5 x %"$ParamDescr_5811"] [%"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5817", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5818", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5819", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5820", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_5821", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318" }]
@"$tname_setAdmin_5823" = unnamed_addr constant [8 x i8] c"setAdmin"
@"$tpname__amount_5824" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5825" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5826" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5827" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_address_5828" = unnamed_addr constant [7 x i8] c"address"
@"$tparams_approve_5829" = unnamed_addr constant [5 x %"$ParamDescr_5811"] [%"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5824", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5825", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5826", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5827", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5828", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }]
@"$tname_approve_5830" = unnamed_addr constant [7 x i8] c"approve"
@"$tpname__amount_5831" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5832" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5833" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_5834" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_5835" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_approveFor_5836" = unnamed_addr constant [5 x %"$ParamDescr_5811"] [%"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5831", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5832", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5833", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5834", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_5835", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318" }]
@"$tname_approveFor_5837" = unnamed_addr constant [10 x i8] c"approveFor"
@"$tpname__amount_5838" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5839" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5840" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5841" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_owner_5842" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_5843" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_configureNode_5844" = unnamed_addr constant [6 x %"$ParamDescr_5811"] [%"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5838", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5839", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5840", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5841", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5842", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5843", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }]
@"$tname_configureNode_5845" = unnamed_addr constant [13 x i8] c"configureNode"
@"$tpname__amount_5846" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5847" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5848" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5849" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_resolver_5850" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_configureResolver_5851" = unnamed_addr constant [5 x %"$ParamDescr_5811"] [%"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5846", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5847", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5848", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5849", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5850", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }]
@"$tname_configureResolver_5852" = unnamed_addr constant [17 x i8] c"configureResolver"
@"$tpname__amount_5853" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5854" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5855" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5856" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_owner_5857" = unnamed_addr constant [5 x i8] c"owner"
@"$tparams_transfer_5858" = unnamed_addr constant [5 x %"$ParamDescr_5811"] [%"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5853", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5854", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5855", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5856", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5857", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }]
@"$tname_transfer_5859" = unnamed_addr constant [8 x i8] c"transfer"
@"$tpname__amount_5860" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5861" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5862" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_parent_5863" = unnamed_addr constant [6 x i8] c"parent"
@"$tpname_label_5864" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_5865" = unnamed_addr constant [5 x i8] c"owner"
@"$tparams_assign_5866" = unnamed_addr constant [6 x %"$ParamDescr_5811"] [%"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5860", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5861", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5862", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_parent_5863", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_5864", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_292" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5865", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }]
@"$tname_assign_5867" = unnamed_addr constant [6 x i8] c"assign"
@"$tpname__amount_5868" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5869" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5870" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_label_5871" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_5872" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_5873" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_bestow_5874" = unnamed_addr constant [6 x %"$ParamDescr_5811"] [%"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5868", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5869", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5870", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_5871", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_292" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5872", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5873", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }]
@"$tname_bestow_5875" = unnamed_addr constant [6 x i8] c"bestow"
@"$tpname__amount_5876" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5877" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5878" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_5879" = unnamed_addr constant [7 x i8] c"address"
@"$tparams_setRegistrar_5880" = unnamed_addr constant [4 x %"$ParamDescr_5811"] [%"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5876", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5877", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5878", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5879", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }]
@"$tname_setRegistrar_5881" = unnamed_addr constant [12 x i8] c"setRegistrar"
@"$tpname__amount_5882" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5883" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5884" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_parent_5885" = unnamed_addr constant [6 x i8] c"parent"
@"$tpname_label_5886" = unnamed_addr constant [5 x i8] c"label"
@"$tparams_register_5887" = unnamed_addr constant [5 x %"$ParamDescr_5811"] [%"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5882", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5883", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5884", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_parent_5885", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_5886", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_292" }]
@"$tname_register_5888" = unnamed_addr constant [8 x i8] c"register"
@"$tpname__amount_5889" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5890" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5891" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5892" = unnamed_addr constant [4 x i8] c"node"
@"$tparams_onResolverConfigured_5893" = unnamed_addr constant [4 x %"$ParamDescr_5811"] [%"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5889", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5890", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5891", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5811" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5892", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306" }]
@"$tname_onResolverConfigured_5894" = unnamed_addr constant [20 x i8] c"onResolverConfigured"
@_transition_parameters = constant [11 x %"$TransDescr_5812"] [%"$TransDescr_5812" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setAdmin_5823", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5811"* getelementptr inbounds ([5 x %"$ParamDescr_5811"], [5 x %"$ParamDescr_5811"]* @"$tparams_setAdmin_5822", i32 0, i32 0) }, %"$TransDescr_5812" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_approve_5830", i32 0, i32 0), i32 7 }, i32 5, %"$ParamDescr_5811"* getelementptr inbounds ([5 x %"$ParamDescr_5811"], [5 x %"$ParamDescr_5811"]* @"$tparams_approve_5829", i32 0, i32 0) }, %"$TransDescr_5812" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tname_approveFor_5837", i32 0, i32 0), i32 10 }, i32 5, %"$ParamDescr_5811"* getelementptr inbounds ([5 x %"$ParamDescr_5811"], [5 x %"$ParamDescr_5811"]* @"$tparams_approveFor_5836", i32 0, i32 0) }, %"$TransDescr_5812" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_configureNode_5845", i32 0, i32 0), i32 13 }, i32 6, %"$ParamDescr_5811"* getelementptr inbounds ([6 x %"$ParamDescr_5811"], [6 x %"$ParamDescr_5811"]* @"$tparams_configureNode_5844", i32 0, i32 0) }, %"$TransDescr_5812" { %ParamDescrString { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$tname_configureResolver_5852", i32 0, i32 0), i32 17 }, i32 5, %"$ParamDescr_5811"* getelementptr inbounds ([5 x %"$ParamDescr_5811"], [5 x %"$ParamDescr_5811"]* @"$tparams_configureResolver_5851", i32 0, i32 0) }, %"$TransDescr_5812" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_transfer_5859", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5811"* getelementptr inbounds ([5 x %"$ParamDescr_5811"], [5 x %"$ParamDescr_5811"]* @"$tparams_transfer_5858", i32 0, i32 0) }, %"$TransDescr_5812" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_assign_5867", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_5811"* getelementptr inbounds ([6 x %"$ParamDescr_5811"], [6 x %"$ParamDescr_5811"]* @"$tparams_assign_5866", i32 0, i32 0) }, %"$TransDescr_5812" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_bestow_5875", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_5811"* getelementptr inbounds ([6 x %"$ParamDescr_5811"], [6 x %"$ParamDescr_5811"]* @"$tparams_bestow_5874", i32 0, i32 0) }, %"$TransDescr_5812" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$tname_setRegistrar_5881", i32 0, i32 0), i32 12 }, i32 4, %"$ParamDescr_5811"* getelementptr inbounds ([4 x %"$ParamDescr_5811"], [4 x %"$ParamDescr_5811"]* @"$tparams_setRegistrar_5880", i32 0, i32 0) }, %"$TransDescr_5812" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_register_5888", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5811"* getelementptr inbounds ([5 x %"$ParamDescr_5811"], [5 x %"$ParamDescr_5811"]* @"$tparams_register_5887", i32 0, i32 0) }, %"$TransDescr_5812" { %ParamDescrString { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$tname_onResolverConfigured_5894", i32 0, i32 0), i32 20 }, i32 4, %"$ParamDescr_5811"* getelementptr inbounds ([4 x %"$ParamDescr_5811"], [4 x %"$ParamDescr_5811"]* @"$tparams_onResolverConfigured_5893", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 11

define internal %TName_Bool* @"$fundef_211"(%"$$fundef_211_env_402"* %0, %"TName_Option_List_(ByStr20)"* %1) !dbg !4 {
entry:
  %"$$fundef_211_env_BoolUtils.orb_2168" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2169" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_211_env_BoolUtils.orb_2168", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2169", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_211_env_maybeApproved_2170" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %0, i32 0, i32 1
  %"$maybeApproved_envload_2171" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_211_env_maybeApproved_2170", align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  store %TName_Option_ByStr20* %"$maybeApproved_envload_2171", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$fundef_211_env_recordOwner_2172" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %0, i32 0, i32 2
  %"$recordOwner_envload_2173" = load [20 x i8], [20 x i8]* %"$$fundef_211_env_recordOwner_2172", align 1
  %recordOwner = alloca [20 x i8], align 1
  store [20 x i8] %"$recordOwner_envload_2173", [20 x i8]* %recordOwner, align 1
  %"$$fundef_211_env_sender_2174" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %0, i32 0, i32 3
  %"$sender_envload_2175" = load [20 x i8], [20 x i8]* %"$$fundef_211_env_sender_2174", align 1
  %sender = alloca [20 x i8], align 1
  store [20 x i8] %"$sender_envload_2175", [20 x i8]* %sender, align 1
  %"$$fundef_211_env_ud-registry.listByStr20Contains_2176" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %0, i32 0, i32 4
  %"$ud-registry.listByStr20Contains_envload_2177" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_211_env_ud-registry.listByStr20Contains_2176", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2177", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_212" = alloca %TName_Bool*, align 8
  %"$gasrem_2178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2179" = icmp ugt i64 1, %"$gasrem_2178"
  br i1 %"$gascmp_2179", label %"$out_of_gas_2180", label %"$have_gas_2181"

"$out_of_gas_2180":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2181"

"$have_gas_2181":                                 ; preds = %"$out_of_gas_2180", %entry
  %"$consume_2182" = sub i64 %"$gasrem_2178", 1
  store i64 %"$consume_2182", i64* @_gasrem, align 8
  %isOwner = alloca %TName_Bool*, align 8
  %"$execptr_load_2183" = load i8*, i8** @_execptr, align 8
  %"$eq_sender_2184" = alloca [20 x i8], align 1
  %"$sender_2185" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2185", [20 x i8]* %"$eq_sender_2184", align 1
  %"$$eq_sender_2184_2186" = bitcast [20 x i8]* %"$eq_sender_2184" to i8*
  %"$eq_recordOwner_2187" = alloca [20 x i8], align 1
  %"$recordOwner_2188" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_2188", [20 x i8]* %"$eq_recordOwner_2187", align 1
  %"$$eq_recordOwner_2187_2189" = bitcast [20 x i8]* %"$eq_recordOwner_2187" to i8*
  %"$eq_call_2190" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2183", i32 20, i8* %"$$eq_sender_2184_2186", i8* %"$$eq_recordOwner_2187_2189")
  store %TName_Bool* %"$eq_call_2190", %TName_Bool** %isOwner, align 8, !dbg !8
  %"$gasrem_2191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2192" = icmp ugt i64 1, %"$gasrem_2191"
  br i1 %"$gascmp_2192", label %"$out_of_gas_2193", label %"$have_gas_2194"

"$out_of_gas_2193":                               ; preds = %"$have_gas_2181"
  call void @_out_of_gas()
  br label %"$have_gas_2194"

"$have_gas_2194":                                 ; preds = %"$out_of_gas_2193", %"$have_gas_2181"
  %"$consume_2195" = sub i64 %"$gasrem_2191", 1
  store i64 %"$consume_2195", i64* @_gasrem, align 8
  %isApproved = alloca %TName_Bool*, align 8
  %"$gasrem_2196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2197" = icmp ugt i64 2, %"$gasrem_2196"
  br i1 %"$gascmp_2197", label %"$out_of_gas_2198", label %"$have_gas_2199"

"$out_of_gas_2198":                               ; preds = %"$have_gas_2194"
  call void @_out_of_gas()
  br label %"$have_gas_2199"

"$have_gas_2199":                                 ; preds = %"$out_of_gas_2198", %"$have_gas_2194"
  %"$consume_2200" = sub i64 %"$gasrem_2196", 2
  store i64 %"$consume_2200", i64* @_gasrem, align 8
  %"$maybeApproved_2202" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_2203" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_2202", i32 0, i32 0
  %"$maybeApproved_tag_2204" = load i8, i8* %"$maybeApproved_tag_2203", align 1
  switch i8 %"$maybeApproved_tag_2204", label %"$empty_default_2205" [
    i8 1, label %"$None_2206"
    i8 0, label %"$Some_2216"
  ], !dbg !9

"$None_2206":                                     ; preds = %"$have_gas_2199"
  %"$maybeApproved_2207" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2202" to %CName_None_ByStr20*
  %"$gasrem_2208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2209" = icmp ugt i64 1, %"$gasrem_2208"
  br i1 %"$gascmp_2209", label %"$out_of_gas_2210", label %"$have_gas_2211"

"$out_of_gas_2210":                               ; preds = %"$None_2206"
  call void @_out_of_gas()
  br label %"$have_gas_2211"

"$have_gas_2211":                                 ; preds = %"$out_of_gas_2210", %"$None_2206"
  %"$consume_2212" = sub i64 %"$gasrem_2208", 1
  store i64 %"$consume_2212", i64* @_gasrem, align 8
  %"$adtval_2213_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2213_salloc" = call i8* @_salloc(i8* %"$adtval_2213_load", i64 1)
  %"$adtval_2213" = bitcast i8* %"$adtval_2213_salloc" to %CName_False*
  %"$adtgep_2214" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_2213", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2214", align 1
  %"$adtptr_2215" = bitcast %CName_False* %"$adtval_2213" to %TName_Bool*
  store %TName_Bool* %"$adtptr_2215", %TName_Bool** %isApproved, align 8, !dbg !10
  br label %"$matchsucc_2201"

"$Some_2216":                                     ; preds = %"$have_gas_2199"
  %"$maybeApproved_2217" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2202" to %CName_Some_ByStr20*
  %"$approved_gep_2218" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_2217", i32 0, i32 1
  %"$approved_load_2219" = load [20 x i8], [20 x i8]* %"$approved_gep_2218", align 1
  %approved = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_2219", [20 x i8]* %approved, align 1
  %"$execptr_load_2220" = load i8*, i8** @_execptr, align 8
  %"$eq_sender_2221" = alloca [20 x i8], align 1
  %"$sender_2222" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2222", [20 x i8]* %"$eq_sender_2221", align 1
  %"$$eq_sender_2221_2223" = bitcast [20 x i8]* %"$eq_sender_2221" to i8*
  %"$eq_approved_2224" = alloca [20 x i8], align 1
  %"$approved_2225" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_2225", [20 x i8]* %"$eq_approved_2224", align 1
  %"$$eq_approved_2224_2226" = bitcast [20 x i8]* %"$eq_approved_2224" to i8*
  %"$eq_call_2227" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2220", i32 20, i8* %"$$eq_sender_2221_2223", i8* %"$$eq_approved_2224_2226")
  store %TName_Bool* %"$eq_call_2227", %TName_Bool** %isApproved, align 8, !dbg !13
  br label %"$matchsucc_2201"

"$empty_default_2205":                            ; preds = %"$have_gas_2199"
  br label %"$matchsucc_2201"

"$matchsucc_2201":                                ; preds = %"$Some_2216", %"$have_gas_2211", %"$empty_default_2205"
  %"$gasrem_2228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2229" = icmp ugt i64 1, %"$gasrem_2228"
  br i1 %"$gascmp_2229", label %"$out_of_gas_2230", label %"$have_gas_2231"

"$out_of_gas_2230":                               ; preds = %"$matchsucc_2201"
  call void @_out_of_gas()
  br label %"$have_gas_2231"

"$have_gas_2231":                                 ; preds = %"$out_of_gas_2230", %"$matchsucc_2201"
  %"$consume_2232" = sub i64 %"$gasrem_2228", 1
  store i64 %"$consume_2232", i64* @_gasrem, align 8
  %isOperator = alloca %TName_Bool*, align 8
  %"$gasrem_2233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2234" = icmp ugt i64 2, %"$gasrem_2233"
  br i1 %"$gascmp_2234", label %"$out_of_gas_2235", label %"$have_gas_2236"

"$out_of_gas_2235":                               ; preds = %"$have_gas_2231"
  call void @_out_of_gas()
  br label %"$have_gas_2236"

"$have_gas_2236":                                 ; preds = %"$out_of_gas_2235", %"$have_gas_2231"
  %"$consume_2237" = sub i64 %"$gasrem_2233", 2
  store i64 %"$consume_2237", i64* @_gasrem, align 8
  %"$maybeOperators_tag_2239" = getelementptr inbounds %"TName_Option_List_(ByStr20)", %"TName_Option_List_(ByStr20)"* %1, i32 0, i32 0
  %"$maybeOperators_tag_2240" = load i8, i8* %"$maybeOperators_tag_2239", align 1
  switch i8 %"$maybeOperators_tag_2240", label %"$empty_default_2241" [
    i8 1, label %"$None_2242"
    i8 0, label %"$Some_2252"
  ], !dbg !15

"$None_2242":                                     ; preds = %"$have_gas_2236"
  %"$maybeOperators_2243" = bitcast %"TName_Option_List_(ByStr20)"* %1 to %"CName_None_List_(ByStr20)"*
  %"$gasrem_2244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2245" = icmp ugt i64 1, %"$gasrem_2244"
  br i1 %"$gascmp_2245", label %"$out_of_gas_2246", label %"$have_gas_2247"

"$out_of_gas_2246":                               ; preds = %"$None_2242"
  call void @_out_of_gas()
  br label %"$have_gas_2247"

"$have_gas_2247":                                 ; preds = %"$out_of_gas_2246", %"$None_2242"
  %"$consume_2248" = sub i64 %"$gasrem_2244", 1
  store i64 %"$consume_2248", i64* @_gasrem, align 8
  %"$adtval_2249_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2249_salloc" = call i8* @_salloc(i8* %"$adtval_2249_load", i64 1)
  %"$adtval_2249" = bitcast i8* %"$adtval_2249_salloc" to %CName_False*
  %"$adtgep_2250" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_2249", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2250", align 1
  %"$adtptr_2251" = bitcast %CName_False* %"$adtval_2249" to %TName_Bool*
  store %TName_Bool* %"$adtptr_2251", %TName_Bool** %isOperator, align 8, !dbg !16
  br label %"$matchsucc_2238"

"$Some_2252":                                     ; preds = %"$have_gas_2236"
  %"$maybeOperators_2253" = bitcast %"TName_Option_List_(ByStr20)"* %1 to %"CName_Some_List_(ByStr20)"*
  %"$operators_gep_2254" = getelementptr inbounds %"CName_Some_List_(ByStr20)", %"CName_Some_List_(ByStr20)"* %"$maybeOperators_2253", i32 0, i32 1
  %"$operators_load_2255" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$operators_gep_2254", align 8
  %operators = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$operators_load_2255", %TName_List_ByStr20** %operators, align 8
  %"$gasrem_2256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2257" = icmp ugt i64 1, %"$gasrem_2256"
  br i1 %"$gascmp_2257", label %"$out_of_gas_2258", label %"$have_gas_2259"

"$out_of_gas_2258":                               ; preds = %"$Some_2252"
  call void @_out_of_gas()
  br label %"$have_gas_2259"

"$have_gas_2259":                                 ; preds = %"$out_of_gas_2258", %"$Some_2252"
  %"$consume_2260" = sub i64 %"$gasrem_2256", 1
  store i64 %"$consume_2260", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_36" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_2261" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_2262" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2261", 0
  %"$ud-registry.listByStr20Contains_envptr_2263" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2261", 1
  %"$operators_2264" = load %TName_List_ByStr20*, %TName_List_ByStr20** %operators, align 8
  %"$ud-registry.listByStr20Contains_call_2265" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_2262"(i8* %"$ud-registry.listByStr20Contains_envptr_2263", %TName_List_ByStr20* %"$operators_2264"), !dbg !19
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_2265", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_36", align 8, !dbg !19
  %"$ud-registry.listByStr20Contains_37" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_36_2266" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_36", align 8
  %"$$ud-registry.listByStr20Contains_36_fptr_2267" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_36_2266", 0
  %"$$ud-registry.listByStr20Contains_36_envptr_2268" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_36_2266", 1
  %"$$ud-registry.listByStr20Contains_36_sender_2269" = alloca [20 x i8], align 1
  %"$sender_2270" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2270", [20 x i8]* %"$$ud-registry.listByStr20Contains_36_sender_2269", align 1
  %"$$ud-registry.listByStr20Contains_36_call_2271" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_36_fptr_2267"(i8* %"$$ud-registry.listByStr20Contains_36_envptr_2268", [20 x i8]* %"$$ud-registry.listByStr20Contains_36_sender_2269"), !dbg !19
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_36_call_2271", %TName_Bool** %"$ud-registry.listByStr20Contains_37", align 8, !dbg !19
  %"$$ud-registry.listByStr20Contains_37_2272" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_37", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_37_2272", %TName_Bool** %isOperator, align 8, !dbg !19
  br label %"$matchsucc_2238"

"$empty_default_2241":                            ; preds = %"$have_gas_2236"
  br label %"$matchsucc_2238"

"$matchsucc_2238":                                ; preds = %"$have_gas_2259", %"$have_gas_2247", %"$empty_default_2241"
  %"$gasrem_2273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2274" = icmp ugt i64 1, %"$gasrem_2273"
  br i1 %"$gascmp_2274", label %"$out_of_gas_2275", label %"$have_gas_2276"

"$out_of_gas_2275":                               ; preds = %"$matchsucc_2238"
  call void @_out_of_gas()
  br label %"$have_gas_2276"

"$have_gas_2276":                                 ; preds = %"$out_of_gas_2275", %"$matchsucc_2238"
  %"$consume_2277" = sub i64 %"$gasrem_2273", 1
  store i64 %"$consume_2277", i64* @_gasrem, align 8
  %b1 = alloca %TName_Bool*, align 8
  %"$gasrem_2278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2279" = icmp ugt i64 1, %"$gasrem_2278"
  br i1 %"$gascmp_2279", label %"$out_of_gas_2280", label %"$have_gas_2281"

"$out_of_gas_2280":                               ; preds = %"$have_gas_2276"
  call void @_out_of_gas()
  br label %"$have_gas_2281"

"$have_gas_2281":                                 ; preds = %"$out_of_gas_2280", %"$have_gas_2276"
  %"$consume_2282" = sub i64 %"$gasrem_2278", 1
  store i64 %"$consume_2282", i64* @_gasrem, align 8
  %"$BoolUtils.orb_38" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_2283" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_2284" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2283", 0
  %"$BoolUtils.orb_envptr_2285" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2283", 1
  %"$isOwner_2286" = load %TName_Bool*, %TName_Bool** %isOwner, align 8
  %"$BoolUtils.orb_call_2287" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_2284"(i8* %"$BoolUtils.orb_envptr_2285", %TName_Bool* %"$isOwner_2286"), !dbg !21
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_2287", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_38", align 8, !dbg !21
  %"$BoolUtils.orb_39" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_38_2288" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_38", align 8
  %"$$BoolUtils.orb_38_fptr_2289" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_38_2288", 0
  %"$$BoolUtils.orb_38_envptr_2290" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_38_2288", 1
  %"$isApproved_2291" = load %TName_Bool*, %TName_Bool** %isApproved, align 8
  %"$$BoolUtils.orb_38_call_2292" = call %TName_Bool* %"$$BoolUtils.orb_38_fptr_2289"(i8* %"$$BoolUtils.orb_38_envptr_2290", %TName_Bool* %"$isApproved_2291"), !dbg !21
  store %TName_Bool* %"$$BoolUtils.orb_38_call_2292", %TName_Bool** %"$BoolUtils.orb_39", align 8, !dbg !21
  %"$$BoolUtils.orb_39_2293" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_39", align 8
  store %TName_Bool* %"$$BoolUtils.orb_39_2293", %TName_Bool** %b1, align 8, !dbg !21
  %"$gasrem_2294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2295" = icmp ugt i64 1, %"$gasrem_2294"
  br i1 %"$gascmp_2295", label %"$out_of_gas_2296", label %"$have_gas_2297"

"$out_of_gas_2296":                               ; preds = %"$have_gas_2281"
  call void @_out_of_gas()
  br label %"$have_gas_2297"

"$have_gas_2297":                                 ; preds = %"$out_of_gas_2296", %"$have_gas_2281"
  %"$consume_2298" = sub i64 %"$gasrem_2294", 1
  store i64 %"$consume_2298", i64* @_gasrem, align 8
  %"$BoolUtils.orb_40" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_2299" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_2300" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2299", 0
  %"$BoolUtils.orb_envptr_2301" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2299", 1
  %"$b1_2302" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$BoolUtils.orb_call_2303" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_2300"(i8* %"$BoolUtils.orb_envptr_2301", %TName_Bool* %"$b1_2302"), !dbg !22
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_2303", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_40", align 8, !dbg !22
  %"$BoolUtils.orb_41" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_40_2304" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_40", align 8
  %"$$BoolUtils.orb_40_fptr_2305" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_40_2304", 0
  %"$$BoolUtils.orb_40_envptr_2306" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_40_2304", 1
  %"$isOperator_2307" = load %TName_Bool*, %TName_Bool** %isOperator, align 8
  %"$$BoolUtils.orb_40_call_2308" = call %TName_Bool* %"$$BoolUtils.orb_40_fptr_2305"(i8* %"$$BoolUtils.orb_40_envptr_2306", %TName_Bool* %"$isOperator_2307"), !dbg !22
  store %TName_Bool* %"$$BoolUtils.orb_40_call_2308", %TName_Bool** %"$BoolUtils.orb_41", align 8, !dbg !22
  %"$$BoolUtils.orb_41_2309" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_41", align 8
  store %TName_Bool* %"$$BoolUtils.orb_41_2309", %TName_Bool** %"$retval_212", align 8, !dbg !22
  %"$$retval_212_2310" = load %TName_Bool*, %TName_Bool** %"$retval_212", align 8
  ret %TName_Bool* %"$$retval_212_2310"
}

define internal { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } @"$fundef_209"(%"$$fundef_209_env_403"* %0, %TName_Option_ByStr20* %1) !dbg !23 {
entry:
  %"$$fundef_209_env_BoolUtils.orb_2141" = getelementptr inbounds %"$$fundef_209_env_403", %"$$fundef_209_env_403"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2142" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_209_env_BoolUtils.orb_2141", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2142", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_209_env_recordOwner_2143" = getelementptr inbounds %"$$fundef_209_env_403", %"$$fundef_209_env_403"* %0, i32 0, i32 1
  %"$recordOwner_envload_2144" = load [20 x i8], [20 x i8]* %"$$fundef_209_env_recordOwner_2143", align 1
  %recordOwner = alloca [20 x i8], align 1
  store [20 x i8] %"$recordOwner_envload_2144", [20 x i8]* %recordOwner, align 1
  %"$$fundef_209_env_sender_2145" = getelementptr inbounds %"$$fundef_209_env_403", %"$$fundef_209_env_403"* %0, i32 0, i32 2
  %"$sender_envload_2146" = load [20 x i8], [20 x i8]* %"$$fundef_209_env_sender_2145", align 1
  %sender = alloca [20 x i8], align 1
  store [20 x i8] %"$sender_envload_2146", [20 x i8]* %sender, align 1
  %"$$fundef_209_env_ud-registry.listByStr20Contains_2147" = getelementptr inbounds %"$$fundef_209_env_403", %"$$fundef_209_env_403"* %0, i32 0, i32 3
  %"$ud-registry.listByStr20Contains_envload_2148" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_209_env_ud-registry.listByStr20Contains_2147", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2148", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_210" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$gasrem_2149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2150" = icmp ugt i64 1, %"$gasrem_2149"
  br i1 %"$gascmp_2150", label %"$out_of_gas_2151", label %"$have_gas_2152"

"$out_of_gas_2151":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2152"

"$have_gas_2152":                                 ; preds = %"$out_of_gas_2151", %entry
  %"$consume_2153" = sub i64 %"$gasrem_2149", 1
  store i64 %"$consume_2153", i64* @_gasrem, align 8
  %"$$fundef_211_envp_2154_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_211_envp_2154_salloc" = call i8* @_salloc(i8* %"$$fundef_211_envp_2154_load", i64 80)
  %"$$fundef_211_envp_2154" = bitcast i8* %"$$fundef_211_envp_2154_salloc" to %"$$fundef_211_env_402"*
  %"$$fundef_211_env_voidp_2156" = bitcast %"$$fundef_211_env_402"* %"$$fundef_211_envp_2154" to i8*
  %"$$fundef_211_cloval_2157" = insertvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)* bitcast (%TName_Bool* (%"$$fundef_211_env_402"*, %"TName_Option_List_(ByStr20)"*)* @"$fundef_211" to %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*), i8* undef }, i8* %"$$fundef_211_env_voidp_2156", 1
  %"$$fundef_211_env_BoolUtils.orb_2158" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %"$$fundef_211_envp_2154", i32 0, i32 0
  %"$BoolUtils.orb_2159" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2159", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_211_env_BoolUtils.orb_2158", align 8
  %"$$fundef_211_env_maybeApproved_2160" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %"$$fundef_211_envp_2154", i32 0, i32 1
  store %TName_Option_ByStr20* %1, %TName_Option_ByStr20** %"$$fundef_211_env_maybeApproved_2160", align 8
  %"$$fundef_211_env_recordOwner_2161" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %"$$fundef_211_envp_2154", i32 0, i32 2
  %"$recordOwner_2162" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_2162", [20 x i8]* %"$$fundef_211_env_recordOwner_2161", align 1
  %"$$fundef_211_env_sender_2163" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %"$$fundef_211_envp_2154", i32 0, i32 3
  %"$sender_2164" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2164", [20 x i8]* %"$$fundef_211_env_sender_2163", align 1
  %"$$fundef_211_env_ud-registry.listByStr20Contains_2165" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %"$$fundef_211_envp_2154", i32 0, i32 4
  %"$ud-registry.listByStr20Contains_2166" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2166", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_211_env_ud-registry.listByStr20Contains_2165", align 8
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$fundef_211_cloval_2157", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$retval_210", align 8, !dbg !24
  %"$$retval_210_2167" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$retval_210", align 8
  ret { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$retval_210_2167"
}

define internal { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } @"$fundef_207"(%"$$fundef_207_env_404"* %0, [20 x i8]* %1) !dbg !25 {
entry:
  %recordOwner = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_207_env_BoolUtils.orb_2118" = getelementptr inbounds %"$$fundef_207_env_404", %"$$fundef_207_env_404"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2119" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_207_env_BoolUtils.orb_2118", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2119", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_207_env_sender_2120" = getelementptr inbounds %"$$fundef_207_env_404", %"$$fundef_207_env_404"* %0, i32 0, i32 1
  %"$sender_envload_2121" = load [20 x i8], [20 x i8]* %"$$fundef_207_env_sender_2120", align 1
  %sender = alloca [20 x i8], align 1
  store [20 x i8] %"$sender_envload_2121", [20 x i8]* %sender, align 1
  %"$$fundef_207_env_ud-registry.listByStr20Contains_2122" = getelementptr inbounds %"$$fundef_207_env_404", %"$$fundef_207_env_404"* %0, i32 0, i32 2
  %"$ud-registry.listByStr20Contains_envload_2123" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_207_env_ud-registry.listByStr20Contains_2122", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2123", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_208" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$gasrem_2124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2125" = icmp ugt i64 1, %"$gasrem_2124"
  br i1 %"$gascmp_2125", label %"$out_of_gas_2126", label %"$have_gas_2127"

"$out_of_gas_2126":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2127"

"$have_gas_2127":                                 ; preds = %"$out_of_gas_2126", %entry
  %"$consume_2128" = sub i64 %"$gasrem_2124", 1
  store i64 %"$consume_2128", i64* @_gasrem, align 8
  %"$$fundef_209_envp_2129_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_209_envp_2129_salloc" = call i8* @_salloc(i8* %"$$fundef_209_envp_2129_load", i64 72)
  %"$$fundef_209_envp_2129" = bitcast i8* %"$$fundef_209_envp_2129_salloc" to %"$$fundef_209_env_403"*
  %"$$fundef_209_env_voidp_2131" = bitcast %"$$fundef_209_env_403"* %"$$fundef_209_envp_2129" to i8*
  %"$$fundef_209_cloval_2132" = insertvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)* bitcast ({ %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (%"$$fundef_209_env_403"*, %TName_Option_ByStr20*)* @"$fundef_209" to { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_209_env_voidp_2131", 1
  %"$$fundef_209_env_BoolUtils.orb_2133" = getelementptr inbounds %"$$fundef_209_env_403", %"$$fundef_209_env_403"* %"$$fundef_209_envp_2129", i32 0, i32 0
  %"$BoolUtils.orb_2134" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2134", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_209_env_BoolUtils.orb_2133", align 8
  %"$$fundef_209_env_recordOwner_2135" = getelementptr inbounds %"$$fundef_209_env_403", %"$$fundef_209_env_403"* %"$$fundef_209_envp_2129", i32 0, i32 1
  store [20 x i8] %recordOwner, [20 x i8]* %"$$fundef_209_env_recordOwner_2135", align 1
  %"$$fundef_209_env_sender_2136" = getelementptr inbounds %"$$fundef_209_env_403", %"$$fundef_209_env_403"* %"$$fundef_209_envp_2129", i32 0, i32 2
  %"$sender_2137" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2137", [20 x i8]* %"$$fundef_209_env_sender_2136", align 1
  %"$$fundef_209_env_ud-registry.listByStr20Contains_2138" = getelementptr inbounds %"$$fundef_209_env_403", %"$$fundef_209_env_403"* %"$$fundef_209_envp_2129", i32 0, i32 3
  %"$ud-registry.listByStr20Contains_2139" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2139", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_209_env_ud-registry.listByStr20Contains_2138", align 8
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_209_cloval_2132", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_208", align 8, !dbg !26
  %"$$retval_208_2140" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_208", align 8
  ret { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$retval_208_2140"
}

define internal { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_205"(%"$$fundef_205_env_405"* %0, [20 x i8]* %1) !dbg !27 {
entry:
  %sender = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_205_env_BoolUtils.orb_2099" = getelementptr inbounds %"$$fundef_205_env_405", %"$$fundef_205_env_405"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2100" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_205_env_BoolUtils.orb_2099", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2100", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_205_env_ud-registry.listByStr20Contains_2101" = getelementptr inbounds %"$$fundef_205_env_405", %"$$fundef_205_env_405"* %0, i32 0, i32 1
  %"$ud-registry.listByStr20Contains_envload_2102" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_205_env_ud-registry.listByStr20Contains_2101", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2102", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_206" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_2103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2104" = icmp ugt i64 1, %"$gasrem_2103"
  br i1 %"$gascmp_2104", label %"$out_of_gas_2105", label %"$have_gas_2106"

"$out_of_gas_2105":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2106"

"$have_gas_2106":                                 ; preds = %"$out_of_gas_2105", %entry
  %"$consume_2107" = sub i64 %"$gasrem_2103", 1
  store i64 %"$consume_2107", i64* @_gasrem, align 8
  %"$$fundef_207_envp_2108_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_207_envp_2108_salloc" = call i8* @_salloc(i8* %"$$fundef_207_envp_2108_load", i64 56)
  %"$$fundef_207_envp_2108" = bitcast i8* %"$$fundef_207_envp_2108_salloc" to %"$$fundef_207_env_404"*
  %"$$fundef_207_env_voidp_2110" = bitcast %"$$fundef_207_env_404"* %"$$fundef_207_envp_2108" to i8*
  %"$$fundef_207_cloval_2111" = insertvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (%"$$fundef_207_env_404"*, [20 x i8]*)* @"$fundef_207" to { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_207_env_voidp_2110", 1
  %"$$fundef_207_env_BoolUtils.orb_2112" = getelementptr inbounds %"$$fundef_207_env_404", %"$$fundef_207_env_404"* %"$$fundef_207_envp_2108", i32 0, i32 0
  %"$BoolUtils.orb_2113" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2113", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_207_env_BoolUtils.orb_2112", align 8
  %"$$fundef_207_env_sender_2114" = getelementptr inbounds %"$$fundef_207_env_404", %"$$fundef_207_env_404"* %"$$fundef_207_envp_2108", i32 0, i32 1
  store [20 x i8] %sender, [20 x i8]* %"$$fundef_207_env_sender_2114", align 1
  %"$$fundef_207_env_ud-registry.listByStr20Contains_2115" = getelementptr inbounds %"$$fundef_207_env_404", %"$$fundef_207_env_404"* %"$$fundef_207_envp_2108", i32 0, i32 2
  %"$ud-registry.listByStr20Contains_2116" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2116", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_207_env_ud-registry.listByStr20Contains_2115", align 8
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_207_cloval_2111", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_206", align 8, !dbg !28
  %"$$retval_206_2117" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_206", align 8
  ret { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_206_2117"
}

define internal void @"$fundef_215"(%"$$fundef_215_env_406"* %0, [32 x i8]* %1, %String %2) !dbg !29 {
entry:
  %"$$fundef_215_env_parent_2065" = getelementptr inbounds %"$$fundef_215_env_406", %"$$fundef_215_env_406"* %0, i32 0, i32 0
  %"$parent_envload_2066" = load [32 x i8], [32 x i8]* %"$$fundef_215_env_parent_2065", align 1
  %parent = alloca [32 x i8], align 1
  store [32 x i8] %"$parent_envload_2066", [32 x i8]* %parent, align 1
  %"$retval_216" = alloca [32 x i8], align 1
  %"$gasrem_2067" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2068" = icmp ugt i64 1, %"$gasrem_2067"
  br i1 %"$gascmp_2068", label %"$out_of_gas_2069", label %"$have_gas_2070"

"$out_of_gas_2069":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2070"

"$have_gas_2070":                                 ; preds = %"$out_of_gas_2069", %entry
  %"$consume_2071" = sub i64 %"$gasrem_2067", 1
  store i64 %"$consume_2071", i64* @_gasrem, align 8
  %labelHash = alloca [32 x i8], align 1
  %"$execptr_load_2072" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_label_2073" = alloca %String, align 8
  store %String %2, %String* %"$sha256hash_label_2073", align 8
  %"$$sha256hash_label_2073_2074" = bitcast %String* %"$sha256hash_label_2073" to i8*
  %"$sha256hash_call_2075" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_2072", %_TyDescrTy_Typ* @"$TyDescr_String_292", i8* %"$$sha256hash_label_2073_2074")
  %"$sha256hash_2076" = load [32 x i8], [32 x i8]* %"$sha256hash_call_2075", align 1
  store [32 x i8] %"$sha256hash_2076", [32 x i8]* %labelHash, align 1, !dbg !30
  %"$gasrem_2077" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2078" = icmp ugt i64 1, %"$gasrem_2077"
  br i1 %"$gascmp_2078", label %"$out_of_gas_2079", label %"$have_gas_2080"

"$out_of_gas_2079":                               ; preds = %"$have_gas_2070"
  call void @_out_of_gas()
  br label %"$have_gas_2080"

"$have_gas_2080":                                 ; preds = %"$out_of_gas_2079", %"$have_gas_2070"
  %"$consume_2081" = sub i64 %"$gasrem_2077", 1
  store i64 %"$consume_2081", i64* @_gasrem, align 8
  %nodeInput = alloca [64 x i8], align 1
  %"$execptr_load_2082" = load i8*, i8** @_execptr, align 8
  %"$concat_parent_2083" = alloca [32 x i8], align 1
  %"$parent_2084" = load [32 x i8], [32 x i8]* %parent, align 1
  store [32 x i8] %"$parent_2084", [32 x i8]* %"$concat_parent_2083", align 1
  %"$$concat_parent_2083_2085" = bitcast [32 x i8]* %"$concat_parent_2083" to i8*
  %"$concat_labelHash_2086" = alloca [32 x i8], align 1
  %"$labelHash_2087" = load [32 x i8], [32 x i8]* %labelHash, align 1
  store [32 x i8] %"$labelHash_2087", [32 x i8]* %"$concat_labelHash_2086", align 1
  %"$$concat_labelHash_2086_2088" = bitcast [32 x i8]* %"$concat_labelHash_2086" to i8*
  %"$concat_call_2089" = call i8* @_concat_ByStrX(i8* %"$execptr_load_2082", i32 32, i8* %"$$concat_parent_2083_2085", i32 32, i8* %"$$concat_labelHash_2086_2088")
  %"$concat_2090" = bitcast i8* %"$concat_call_2089" to [64 x i8]*
  %"$concat_2091" = load [64 x i8], [64 x i8]* %"$concat_2090", align 1
  store [64 x i8] %"$concat_2091", [64 x i8]* %nodeInput, align 1, !dbg !31
  %"$execptr_load_2092" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_nodeInput_2093" = alloca [64 x i8], align 1
  %"$nodeInput_2094" = load [64 x i8], [64 x i8]* %nodeInput, align 1
  store [64 x i8] %"$nodeInput_2094", [64 x i8]* %"$sha256hash_nodeInput_2093", align 1
  %"$$sha256hash_nodeInput_2093_2095" = bitcast [64 x i8]* %"$sha256hash_nodeInput_2093" to i8*
  %"$sha256hash_call_2096" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_2092", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_304", i8* %"$$sha256hash_nodeInput_2093_2095")
  %"$sha256hash_2097" = load [32 x i8], [32 x i8]* %"$sha256hash_call_2096", align 1
  store [32 x i8] %"$sha256hash_2097", [32 x i8]* %"$retval_216", align 1, !dbg !32
  %"$$retval_216_2098" = load [32 x i8], [32 x i8]* %"$retval_216", align 1
  store [32 x i8] %"$$retval_216_2098", [32 x i8]* %1, align 1
  ret void
}

define internal { void (i8*, [32 x i8]*, %String)*, i8* } @"$fundef_213"(%"$$fundef_213_env_407"* %0, [32 x i8]* %1) !dbg !33 {
entry:
  %parent = load [32 x i8], [32 x i8]* %1, align 1
  %"$retval_214" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$gasrem_2054" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2055" = icmp ugt i64 1, %"$gasrem_2054"
  br i1 %"$gascmp_2055", label %"$out_of_gas_2056", label %"$have_gas_2057"

"$out_of_gas_2056":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2057"

"$have_gas_2057":                                 ; preds = %"$out_of_gas_2056", %entry
  %"$consume_2058" = sub i64 %"$gasrem_2054", 1
  store i64 %"$consume_2058", i64* @_gasrem, align 8
  %"$$fundef_215_envp_2059_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_215_envp_2059_salloc" = call i8* @_salloc(i8* %"$$fundef_215_envp_2059_load", i64 32)
  %"$$fundef_215_envp_2059" = bitcast i8* %"$$fundef_215_envp_2059_salloc" to %"$$fundef_215_env_406"*
  %"$$fundef_215_env_voidp_2061" = bitcast %"$$fundef_215_env_406"* %"$$fundef_215_envp_2059" to i8*
  %"$$fundef_215_cloval_2062" = insertvalue { void (i8*, [32 x i8]*, %String)*, i8* } { void (i8*, [32 x i8]*, %String)* bitcast (void (%"$$fundef_215_env_406"*, [32 x i8]*, %String)* @"$fundef_215" to void (i8*, [32 x i8]*, %String)*), i8* undef }, i8* %"$$fundef_215_env_voidp_2061", 1
  %"$$fundef_215_env_parent_2063" = getelementptr inbounds %"$$fundef_215_env_406", %"$$fundef_215_env_406"* %"$$fundef_215_envp_2059", i32 0, i32 0
  store [32 x i8] %parent, [32 x i8]* %"$$fundef_215_env_parent_2063", align 1
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$$fundef_215_cloval_2062", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$retval_214", align 8, !dbg !34
  %"$$retval_214_2064" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$retval_214", align 8
  ret { void (i8*, [32 x i8]*, %String)*, i8* } %"$$retval_214_2064"
}

define internal void @"$fundef_217"(%"$$fundef_217_env_408"* %0, [20 x i8]* %1, %TName_Option_ud-registry.Record* %2) !dbg !35 {
entry:
  %"$$fundef_217_env_ud-registry.zeroByStr20_2008" = getelementptr inbounds %"$$fundef_217_env_408", %"$$fundef_217_env_408"* %0, i32 0, i32 0
  %"$ud-registry.zeroByStr20_envload_2009" = load [20 x i8], [20 x i8]* %"$$fundef_217_env_ud-registry.zeroByStr20_2008", align 1
  %ud-registry.zeroByStr20 = alloca [20 x i8], align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_envload_2009", [20 x i8]* %ud-registry.zeroByStr20, align 1
  %"$retval_218" = alloca [20 x i8], align 1
  %"$gasrem_2010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2011" = icmp ugt i64 2, %"$gasrem_2010"
  br i1 %"$gascmp_2011", label %"$out_of_gas_2012", label %"$have_gas_2013"

"$out_of_gas_2012":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2013"

"$have_gas_2013":                                 ; preds = %"$out_of_gas_2012", %entry
  %"$consume_2014" = sub i64 %"$gasrem_2010", 2
  store i64 %"$consume_2014", i64* @_gasrem, align 8
  %"$maybeRecord_tag_2016" = getelementptr inbounds %TName_Option_ud-registry.Record, %TName_Option_ud-registry.Record* %2, i32 0, i32 0
  %"$maybeRecord_tag_2017" = load i8, i8* %"$maybeRecord_tag_2016", align 1
  switch i8 %"$maybeRecord_tag_2017", label %"$empty_default_2018" [
    i8 1, label %"$None_2019"
    i8 0, label %"$Some_2027"
  ], !dbg !36

"$None_2019":                                     ; preds = %"$have_gas_2013"
  %"$maybeRecord_2020" = bitcast %TName_Option_ud-registry.Record* %2 to %CName_None_ud-registry.Record*
  %"$gasrem_2021" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2022" = icmp ugt i64 1, %"$gasrem_2021"
  br i1 %"$gascmp_2022", label %"$out_of_gas_2023", label %"$have_gas_2024"

"$out_of_gas_2023":                               ; preds = %"$None_2019"
  call void @_out_of_gas()
  br label %"$have_gas_2024"

"$have_gas_2024":                                 ; preds = %"$out_of_gas_2023", %"$None_2019"
  %"$consume_2025" = sub i64 %"$gasrem_2021", 1
  store i64 %"$consume_2025", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_2026" = load [20 x i8], [20 x i8]* %ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_2026", [20 x i8]* %"$retval_218", align 1, !dbg !37
  br label %"$matchsucc_2015"

"$Some_2027":                                     ; preds = %"$have_gas_2013"
  %"$maybeRecord_2028" = bitcast %TName_Option_ud-registry.Record* %2 to %CName_Some_ud-registry.Record*
  %"$record_gep_2029" = getelementptr inbounds %CName_Some_ud-registry.Record, %CName_Some_ud-registry.Record* %"$maybeRecord_2028", i32 0, i32 1
  %"$record_load_2030" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %"$record_gep_2029", align 8
  %record = alloca %TName_ud-registry.Record*, align 8
  store %TName_ud-registry.Record* %"$record_load_2030", %TName_ud-registry.Record** %record, align 8
  %"$gasrem_2031" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2032" = icmp ugt i64 1, %"$gasrem_2031"
  br i1 %"$gascmp_2032", label %"$out_of_gas_2033", label %"$have_gas_2034"

"$out_of_gas_2033":                               ; preds = %"$Some_2027"
  call void @_out_of_gas()
  br label %"$have_gas_2034"

"$have_gas_2034":                                 ; preds = %"$out_of_gas_2033", %"$Some_2027"
  %"$consume_2035" = sub i64 %"$gasrem_2031", 1
  store i64 %"$consume_2035", i64* @_gasrem, align 8
  %"$record_2037" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %record, align 8
  %"$record_tag_2038" = getelementptr inbounds %TName_ud-registry.Record, %TName_ud-registry.Record* %"$record_2037", i32 0, i32 0
  %"$record_tag_2039" = load i8, i8* %"$record_tag_2038", align 1
  switch i8 %"$record_tag_2039", label %"$empty_default_2040" [
    i8 0, label %"$ud-registry.Record_2041"
  ], !dbg !40

"$ud-registry.Record_2041":                       ; preds = %"$have_gas_2034"
  %"$record_2042" = bitcast %TName_ud-registry.Record* %"$record_2037" to %CName_ud-registry.Record*
  %"$owner_gep_2043" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_2042", i32 0, i32 1
  %"$owner_load_2044" = load [20 x i8], [20 x i8]* %"$owner_gep_2043", align 1
  %owner = alloca [20 x i8], align 1
  store [20 x i8] %"$owner_load_2044", [20 x i8]* %owner, align 1
  %"$resolver_gep_2045" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_2042", i32 0, i32 2
  %"$resolver_load_2046" = load [20 x i8], [20 x i8]* %"$resolver_gep_2045", align 1
  %resolver = alloca [20 x i8], align 1
  store [20 x i8] %"$resolver_load_2046", [20 x i8]* %resolver, align 1
  %"$gasrem_2047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2048" = icmp ugt i64 1, %"$gasrem_2047"
  br i1 %"$gascmp_2048", label %"$out_of_gas_2049", label %"$have_gas_2050"

"$out_of_gas_2049":                               ; preds = %"$ud-registry.Record_2041"
  call void @_out_of_gas()
  br label %"$have_gas_2050"

"$have_gas_2050":                                 ; preds = %"$out_of_gas_2049", %"$ud-registry.Record_2041"
  %"$consume_2051" = sub i64 %"$gasrem_2047", 1
  store i64 %"$consume_2051", i64* @_gasrem, align 8
  %"$owner_2052" = load [20 x i8], [20 x i8]* %owner, align 1
  store [20 x i8] %"$owner_2052", [20 x i8]* %"$retval_218", align 1, !dbg !42
  br label %"$matchsucc_2036"

"$empty_default_2040":                            ; preds = %"$have_gas_2034"
  br label %"$matchsucc_2036"

"$matchsucc_2036":                                ; preds = %"$have_gas_2050", %"$empty_default_2040"
  br label %"$matchsucc_2015"

"$empty_default_2018":                            ; preds = %"$have_gas_2013"
  br label %"$matchsucc_2015"

"$matchsucc_2015":                                ; preds = %"$matchsucc_2036", %"$have_gas_2024", %"$empty_default_2018"
  %"$$retval_218_2053" = load [20 x i8], [20 x i8]* %"$retval_218", align 1
  store [20 x i8] %"$$retval_218_2053", [20 x i8]* %1, align 1
  ret void
}

define internal i8* @"$fundef_219"(%"$$fundef_219_env_409"* %0, %String %1) !dbg !45 {
entry:
  %"$retval_220" = alloca i8*, align 8
  %"$gasrem_1985" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1986" = icmp ugt i64 1, %"$gasrem_1985"
  br i1 %"$gascmp_1986", label %"$out_of_gas_1987", label %"$have_gas_1988"

"$out_of_gas_1987":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1988"

"$have_gas_1988":                                 ; preds = %"$out_of_gas_1987", %entry
  %"$consume_1989" = sub i64 %"$gasrem_1985", 1
  store i64 %"$consume_1989", i64* @_gasrem, align 8
  %"$msgobj_1990_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1990_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1990_salloc_load", i64 81)
  %"$msgobj_1990_salloc" = bitcast i8* %"$msgobj_1990_salloc_salloc" to [81 x i8]*
  %"$msgobj_1990" = bitcast [81 x i8]* %"$msgobj_1990_salloc" to i8*
  store i8 2, i8* %"$msgobj_1990", align 1
  %"$msgobj_fname_1992" = getelementptr i8, i8* %"$msgobj_1990", i32 1
  %"$msgobj_fname_1993" = bitcast i8* %"$msgobj_fname_1992" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1991", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1993", align 8
  %"$msgobj_td_1994" = getelementptr i8, i8* %"$msgobj_1990", i32 17
  %"$msgobj_td_1995" = bitcast i8* %"$msgobj_td_1994" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1995", align 8
  %"$msgobj_v_1997" = getelementptr i8, i8* %"$msgobj_1990", i32 25
  %"$msgobj_v_1998" = bitcast i8* %"$msgobj_v_1997" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1996", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_1998", align 8
  %"$msgobj_fname_2000" = getelementptr i8, i8* %"$msgobj_1990", i32 41
  %"$msgobj_fname_2001" = bitcast i8* %"$msgobj_fname_2000" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1999", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_2001", align 8
  %"$msgobj_td_2002" = getelementptr i8, i8* %"$msgobj_1990", i32 57
  %"$msgobj_td_2003" = bitcast i8* %"$msgobj_td_2002" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_2003", align 8
  %"$msgobj_v_2004" = getelementptr i8, i8* %"$msgobj_1990", i32 65
  %"$msgobj_v_2005" = bitcast i8* %"$msgobj_v_2004" to %String*
  store %String %1, %String* %"$msgobj_v_2005", align 8
  store i8* %"$msgobj_1990", i8** %"$retval_220", align 8, !dbg !46
  %"$$retval_220_2007" = load i8*, i8** %"$retval_220", align 8
  ret i8* %"$$retval_220_2007"
}

define internal i8* @"$fundef_225"(%"$$fundef_225_env_410"* %0, [20 x i8]* %1) !dbg !47 {
entry:
  %resolver = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_225_env_node_1942" = getelementptr inbounds %"$$fundef_225_env_410", %"$$fundef_225_env_410"* %0, i32 0, i32 0
  %"$node_envload_1943" = load [32 x i8], [32 x i8]* %"$$fundef_225_env_node_1942", align 1
  %node = alloca [32 x i8], align 1
  store [32 x i8] %"$node_envload_1943", [32 x i8]* %node, align 1
  %"$$fundef_225_env_owner_1944" = getelementptr inbounds %"$$fundef_225_env_410", %"$$fundef_225_env_410"* %0, i32 0, i32 1
  %"$owner_envload_1945" = load [20 x i8], [20 x i8]* %"$$fundef_225_env_owner_1944", align 1
  %owner = alloca [20 x i8], align 1
  store [20 x i8] %"$owner_envload_1945", [20 x i8]* %owner, align 1
  %"$retval_226" = alloca i8*, align 8
  %"$gasrem_1946" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1947" = icmp ugt i64 1, %"$gasrem_1946"
  br i1 %"$gascmp_1947", label %"$out_of_gas_1948", label %"$have_gas_1949"

"$out_of_gas_1948":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1949"

"$have_gas_1949":                                 ; preds = %"$out_of_gas_1948", %entry
  %"$consume_1950" = sub i64 %"$gasrem_1946", 1
  store i64 %"$consume_1950", i64* @_gasrem, align 8
  %"$msgobj_1951_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1951_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1951_salloc_load", i64 185)
  %"$msgobj_1951_salloc" = bitcast i8* %"$msgobj_1951_salloc_salloc" to [185 x i8]*
  %"$msgobj_1951" = bitcast [185 x i8]* %"$msgobj_1951_salloc" to i8*
  store i8 4, i8* %"$msgobj_1951", align 1
  %"$msgobj_fname_1953" = getelementptr i8, i8* %"$msgobj_1951", i32 1
  %"$msgobj_fname_1954" = bitcast i8* %"$msgobj_fname_1953" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1952", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1954", align 8
  %"$msgobj_td_1955" = getelementptr i8, i8* %"$msgobj_1951", i32 17
  %"$msgobj_td_1956" = bitcast i8* %"$msgobj_td_1955" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1956", align 8
  %"$msgobj_v_1958" = getelementptr i8, i8* %"$msgobj_1951", i32 25
  %"$msgobj_v_1959" = bitcast i8* %"$msgobj_v_1958" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1957", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_1959", align 8
  %"$msgobj_fname_1961" = getelementptr i8, i8* %"$msgobj_1951", i32 41
  %"$msgobj_fname_1962" = bitcast i8* %"$msgobj_fname_1961" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1960", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1962", align 8
  %"$msgobj_td_1963" = getelementptr i8, i8* %"$msgobj_1951", i32 57
  %"$msgobj_td_1964" = bitcast i8* %"$msgobj_td_1963" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_1964", align 8
  %"$node_1965" = load [32 x i8], [32 x i8]* %node, align 1
  %"$msgobj_v_1966" = getelementptr i8, i8* %"$msgobj_1951", i32 65
  %"$msgobj_v_1967" = bitcast i8* %"$msgobj_v_1966" to [32 x i8]*
  store [32 x i8] %"$node_1965", [32 x i8]* %"$msgobj_v_1967", align 1
  %"$msgobj_fname_1969" = getelementptr i8, i8* %"$msgobj_1951", i32 97
  %"$msgobj_fname_1970" = bitcast i8* %"$msgobj_fname_1969" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1968", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1970", align 8
  %"$msgobj_td_1971" = getelementptr i8, i8* %"$msgobj_1951", i32 113
  %"$msgobj_td_1972" = bitcast i8* %"$msgobj_td_1971" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1972", align 8
  %"$owner_1973" = load [20 x i8], [20 x i8]* %owner, align 1
  %"$msgobj_v_1974" = getelementptr i8, i8* %"$msgobj_1951", i32 121
  %"$msgobj_v_1975" = bitcast i8* %"$msgobj_v_1974" to [20 x i8]*
  store [20 x i8] %"$owner_1973", [20 x i8]* %"$msgobj_v_1975", align 1
  %"$msgobj_fname_1977" = getelementptr i8, i8* %"$msgobj_1951", i32 141
  %"$msgobj_fname_1978" = bitcast i8* %"$msgobj_fname_1977" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1976", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_1978", align 8
  %"$msgobj_td_1979" = getelementptr i8, i8* %"$msgobj_1951", i32 157
  %"$msgobj_td_1980" = bitcast i8* %"$msgobj_td_1979" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1980", align 8
  %"$msgobj_v_1981" = getelementptr i8, i8* %"$msgobj_1951", i32 165
  %"$msgobj_v_1982" = bitcast i8* %"$msgobj_v_1981" to [20 x i8]*
  store [20 x i8] %resolver, [20 x i8]* %"$msgobj_v_1982", align 1
  store i8* %"$msgobj_1951", i8** %"$retval_226", align 8, !dbg !48
  %"$$retval_226_1984" = load i8*, i8** %"$retval_226", align 8
  ret i8* %"$$retval_226_1984"
}

define internal { i8* (i8*, [20 x i8]*)*, i8* } @"$fundef_223"(%"$$fundef_223_env_411"* %0, [20 x i8]* %1) !dbg !49 {
entry:
  %owner = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_223_env_node_1927" = getelementptr inbounds %"$$fundef_223_env_411", %"$$fundef_223_env_411"* %0, i32 0, i32 0
  %"$node_envload_1928" = load [32 x i8], [32 x i8]* %"$$fundef_223_env_node_1927", align 1
  %node = alloca [32 x i8], align 1
  store [32 x i8] %"$node_envload_1928", [32 x i8]* %node, align 1
  %"$retval_224" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1929" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1930" = icmp ugt i64 1, %"$gasrem_1929"
  br i1 %"$gascmp_1930", label %"$out_of_gas_1931", label %"$have_gas_1932"

"$out_of_gas_1931":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1932"

"$have_gas_1932":                                 ; preds = %"$out_of_gas_1931", %entry
  %"$consume_1933" = sub i64 %"$gasrem_1929", 1
  store i64 %"$consume_1933", i64* @_gasrem, align 8
  %"$$fundef_225_envp_1934_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_225_envp_1934_salloc" = call i8* @_salloc(i8* %"$$fundef_225_envp_1934_load", i64 52)
  %"$$fundef_225_envp_1934" = bitcast i8* %"$$fundef_225_envp_1934_salloc" to %"$$fundef_225_env_410"*
  %"$$fundef_225_env_voidp_1936" = bitcast %"$$fundef_225_env_410"* %"$$fundef_225_envp_1934" to i8*
  %"$$fundef_225_cloval_1937" = insertvalue { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_225_env_410"*, [20 x i8]*)* @"$fundef_225" to i8* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_225_env_voidp_1936", 1
  %"$$fundef_225_env_node_1938" = getelementptr inbounds %"$$fundef_225_env_410", %"$$fundef_225_env_410"* %"$$fundef_225_envp_1934", i32 0, i32 0
  %"$node_1939" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_1939", [32 x i8]* %"$$fundef_225_env_node_1938", align 1
  %"$$fundef_225_env_owner_1940" = getelementptr inbounds %"$$fundef_225_env_410", %"$$fundef_225_env_410"* %"$$fundef_225_envp_1934", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$$fundef_225_env_owner_1940", align 1
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$fundef_225_cloval_1937", { i8* (i8*, [20 x i8]*)*, i8* }* %"$retval_224", align 8, !dbg !50
  %"$$retval_224_1941" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$retval_224", align 8
  ret { i8* (i8*, [20 x i8]*)*, i8* } %"$$retval_224_1941"
}

define internal { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_221"(%"$$fundef_221_env_412"* %0, [32 x i8]* %1) !dbg !51 {
entry:
  %node = load [32 x i8], [32 x i8]* %1, align 1
  %"$retval_222" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1916" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1917" = icmp ugt i64 1, %"$gasrem_1916"
  br i1 %"$gascmp_1917", label %"$out_of_gas_1918", label %"$have_gas_1919"

"$out_of_gas_1918":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1919"

"$have_gas_1919":                                 ; preds = %"$out_of_gas_1918", %entry
  %"$consume_1920" = sub i64 %"$gasrem_1916", 1
  store i64 %"$consume_1920", i64* @_gasrem, align 8
  %"$$fundef_223_envp_1921_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_223_envp_1921_salloc" = call i8* @_salloc(i8* %"$$fundef_223_envp_1921_load", i64 32)
  %"$$fundef_223_envp_1921" = bitcast i8* %"$$fundef_223_envp_1921_salloc" to %"$$fundef_223_env_411"*
  %"$$fundef_223_env_voidp_1923" = bitcast %"$$fundef_223_env_411"* %"$$fundef_223_envp_1921" to i8*
  %"$$fundef_223_cloval_1924" = insertvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_223_env_411"*, [20 x i8]*)* @"$fundef_223" to { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_223_env_voidp_1923", 1
  %"$$fundef_223_env_node_1925" = getelementptr inbounds %"$$fundef_223_env_411", %"$$fundef_223_env_411"* %"$$fundef_223_envp_1921", i32 0, i32 0
  store [32 x i8] %node, [32 x i8]* %"$$fundef_223_env_node_1925", align 1
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_223_cloval_1924", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_222", align 8, !dbg !52
  %"$$retval_222_1926" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_222", align 8
  ret { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_222_1926"
}

define internal i8* @"$fundef_229"(%"$$fundef_229_env_413"* %0, %String %1) !dbg !53 {
entry:
  %"$$fundef_229_env_parent_1883" = getelementptr inbounds %"$$fundef_229_env_413", %"$$fundef_229_env_413"* %0, i32 0, i32 0
  %"$parent_envload_1884" = load [32 x i8], [32 x i8]* %"$$fundef_229_env_parent_1883", align 1
  %parent = alloca [32 x i8], align 1
  store [32 x i8] %"$parent_envload_1884", [32 x i8]* %parent, align 1
  %"$retval_230" = alloca i8*, align 8
  %"$gasrem_1885" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1886" = icmp ugt i64 1, %"$gasrem_1885"
  br i1 %"$gascmp_1886", label %"$out_of_gas_1887", label %"$have_gas_1888"

"$out_of_gas_1887":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1888"

"$have_gas_1888":                                 ; preds = %"$out_of_gas_1887", %entry
  %"$consume_1889" = sub i64 %"$gasrem_1885", 1
  store i64 %"$consume_1889", i64* @_gasrem, align 8
  %"$msgobj_1890_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1890_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1890_salloc_load", i64 137)
  %"$msgobj_1890_salloc" = bitcast i8* %"$msgobj_1890_salloc_salloc" to [137 x i8]*
  %"$msgobj_1890" = bitcast [137 x i8]* %"$msgobj_1890_salloc" to i8*
  store i8 3, i8* %"$msgobj_1890", align 1
  %"$msgobj_fname_1892" = getelementptr i8, i8* %"$msgobj_1890", i32 1
  %"$msgobj_fname_1893" = bitcast i8* %"$msgobj_fname_1892" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1891", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1893", align 8
  %"$msgobj_td_1894" = getelementptr i8, i8* %"$msgobj_1890", i32 17
  %"$msgobj_td_1895" = bitcast i8* %"$msgobj_td_1894" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1895", align 8
  %"$msgobj_v_1897" = getelementptr i8, i8* %"$msgobj_1890", i32 25
  %"$msgobj_v_1898" = bitcast i8* %"$msgobj_v_1897" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1896", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1898", align 8
  %"$msgobj_fname_1900" = getelementptr i8, i8* %"$msgobj_1890", i32 41
  %"$msgobj_fname_1901" = bitcast i8* %"$msgobj_fname_1900" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_1899", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_1901", align 8
  %"$msgobj_td_1902" = getelementptr i8, i8* %"$msgobj_1890", i32 57
  %"$msgobj_td_1903" = bitcast i8* %"$msgobj_td_1902" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_1903", align 8
  %"$parent_1904" = load [32 x i8], [32 x i8]* %parent, align 1
  %"$msgobj_v_1905" = getelementptr i8, i8* %"$msgobj_1890", i32 65
  %"$msgobj_v_1906" = bitcast i8* %"$msgobj_v_1905" to [32 x i8]*
  store [32 x i8] %"$parent_1904", [32 x i8]* %"$msgobj_v_1906", align 1
  %"$msgobj_fname_1908" = getelementptr i8, i8* %"$msgobj_1890", i32 97
  %"$msgobj_fname_1909" = bitcast i8* %"$msgobj_fname_1908" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1907", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1909", align 8
  %"$msgobj_td_1910" = getelementptr i8, i8* %"$msgobj_1890", i32 113
  %"$msgobj_td_1911" = bitcast i8* %"$msgobj_td_1910" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1911", align 8
  %"$msgobj_v_1912" = getelementptr i8, i8* %"$msgobj_1890", i32 121
  %"$msgobj_v_1913" = bitcast i8* %"$msgobj_v_1912" to %String*
  store %String %1, %String* %"$msgobj_v_1913", align 8
  store i8* %"$msgobj_1890", i8** %"$retval_230", align 8, !dbg !54
  %"$$retval_230_1915" = load i8*, i8** %"$retval_230", align 8
  ret i8* %"$$retval_230_1915"
}

define internal { i8* (i8*, %String)*, i8* } @"$fundef_227"(%"$$fundef_227_env_414"* %0, [32 x i8]* %1) !dbg !55 {
entry:
  %parent = load [32 x i8], [32 x i8]* %1, align 1
  %"$retval_228" = alloca { i8* (i8*, %String)*, i8* }, align 8
  %"$gasrem_1872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1873" = icmp ugt i64 1, %"$gasrem_1872"
  br i1 %"$gascmp_1873", label %"$out_of_gas_1874", label %"$have_gas_1875"

"$out_of_gas_1874":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1875"

"$have_gas_1875":                                 ; preds = %"$out_of_gas_1874", %entry
  %"$consume_1876" = sub i64 %"$gasrem_1872", 1
  store i64 %"$consume_1876", i64* @_gasrem, align 8
  %"$$fundef_229_envp_1877_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_229_envp_1877_salloc" = call i8* @_salloc(i8* %"$$fundef_229_envp_1877_load", i64 32)
  %"$$fundef_229_envp_1877" = bitcast i8* %"$$fundef_229_envp_1877_salloc" to %"$$fundef_229_env_413"*
  %"$$fundef_229_env_voidp_1879" = bitcast %"$$fundef_229_env_413"* %"$$fundef_229_envp_1877" to i8*
  %"$$fundef_229_cloval_1880" = insertvalue { i8* (i8*, %String)*, i8* } { i8* (i8*, %String)* bitcast (i8* (%"$$fundef_229_env_413"*, %String)* @"$fundef_229" to i8* (i8*, %String)*), i8* undef }, i8* %"$$fundef_229_env_voidp_1879", 1
  %"$$fundef_229_env_parent_1881" = getelementptr inbounds %"$$fundef_229_env_413", %"$$fundef_229_env_413"* %"$$fundef_229_envp_1877", i32 0, i32 0
  store [32 x i8] %parent, [32 x i8]* %"$$fundef_229_env_parent_1881", align 1
  store { i8* (i8*, %String)*, i8* } %"$$fundef_229_cloval_1880", { i8* (i8*, %String)*, i8* }* %"$retval_228", align 8, !dbg !56
  %"$$retval_228_1882" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$retval_228", align 8
  ret { i8* (i8*, %String)*, i8* } %"$$retval_228_1882"
}

define internal i8* @"$fundef_231"(%"$$fundef_231_env_415"* %0, [20 x i8]* %1) !dbg !57 {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_232" = alloca i8*, align 8
  %"$gasrem_1849" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1850" = icmp ugt i64 1, %"$gasrem_1849"
  br i1 %"$gascmp_1850", label %"$out_of_gas_1851", label %"$have_gas_1852"

"$out_of_gas_1851":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1852"

"$have_gas_1852":                                 ; preds = %"$out_of_gas_1851", %entry
  %"$consume_1853" = sub i64 %"$gasrem_1849", 1
  store i64 %"$consume_1853", i64* @_gasrem, align 8
  %"$msgobj_1854_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1854_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1854_salloc_load", i64 85)
  %"$msgobj_1854_salloc" = bitcast i8* %"$msgobj_1854_salloc_salloc" to [85 x i8]*
  %"$msgobj_1854" = bitcast [85 x i8]* %"$msgobj_1854_salloc" to i8*
  store i8 2, i8* %"$msgobj_1854", align 1
  %"$msgobj_fname_1856" = getelementptr i8, i8* %"$msgobj_1854", i32 1
  %"$msgobj_fname_1857" = bitcast i8* %"$msgobj_fname_1856" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1855", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1857", align 8
  %"$msgobj_td_1858" = getelementptr i8, i8* %"$msgobj_1854", i32 17
  %"$msgobj_td_1859" = bitcast i8* %"$msgobj_td_1858" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1859", align 8
  %"$msgobj_v_1861" = getelementptr i8, i8* %"$msgobj_1854", i32 25
  %"$msgobj_v_1862" = bitcast i8* %"$msgobj_v_1861" to %String*
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_1860", i32 0, i32 0), i32 12 }, %String* %"$msgobj_v_1862", align 8
  %"$msgobj_fname_1864" = getelementptr i8, i8* %"$msgobj_1854", i32 41
  %"$msgobj_fname_1865" = bitcast i8* %"$msgobj_fname_1864" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1863", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1865", align 8
  %"$msgobj_td_1866" = getelementptr i8, i8* %"$msgobj_1854", i32 57
  %"$msgobj_td_1867" = bitcast i8* %"$msgobj_td_1866" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1867", align 8
  %"$msgobj_v_1868" = getelementptr i8, i8* %"$msgobj_1854", i32 65
  %"$msgobj_v_1869" = bitcast i8* %"$msgobj_v_1868" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %"$msgobj_v_1869", align 1
  store i8* %"$msgobj_1854", i8** %"$retval_232", align 8, !dbg !58
  %"$$retval_232_1871" = load i8*, i8** %"$retval_232", align 8
  ret i8* %"$$retval_232_1871"
}

define internal i8* @"$fundef_233"(%"$$fundef_233_env_416"* %0, [20 x i8]* %1) !dbg !59 {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_234" = alloca i8*, align 8
  %"$gasrem_1826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1827" = icmp ugt i64 1, %"$gasrem_1826"
  br i1 %"$gascmp_1827", label %"$out_of_gas_1828", label %"$have_gas_1829"

"$out_of_gas_1828":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1829"

"$have_gas_1829":                                 ; preds = %"$out_of_gas_1828", %entry
  %"$consume_1830" = sub i64 %"$gasrem_1826", 1
  store i64 %"$consume_1830", i64* @_gasrem, align 8
  %"$msgobj_1831_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1831_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1831_salloc_load", i64 85)
  %"$msgobj_1831_salloc" = bitcast i8* %"$msgobj_1831_salloc_salloc" to [85 x i8]*
  %"$msgobj_1831" = bitcast [85 x i8]* %"$msgobj_1831_salloc" to i8*
  store i8 2, i8* %"$msgobj_1831", align 1
  %"$msgobj_fname_1833" = getelementptr i8, i8* %"$msgobj_1831", i32 1
  %"$msgobj_fname_1834" = bitcast i8* %"$msgobj_fname_1833" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1832", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1834", align 8
  %"$msgobj_td_1835" = getelementptr i8, i8* %"$msgobj_1831", i32 17
  %"$msgobj_td_1836" = bitcast i8* %"$msgobj_td_1835" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1836", align 8
  %"$msgobj_v_1838" = getelementptr i8, i8* %"$msgobj_1831", i32 25
  %"$msgobj_v_1839" = bitcast i8* %"$msgobj_v_1838" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1837", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_1839", align 8
  %"$msgobj_fname_1841" = getelementptr i8, i8* %"$msgobj_1831", i32 41
  %"$msgobj_fname_1842" = bitcast i8* %"$msgobj_fname_1841" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1840", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1842", align 8
  %"$msgobj_td_1843" = getelementptr i8, i8* %"$msgobj_1831", i32 57
  %"$msgobj_td_1844" = bitcast i8* %"$msgobj_td_1843" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1844", align 8
  %"$msgobj_v_1845" = getelementptr i8, i8* %"$msgobj_1831", i32 65
  %"$msgobj_v_1846" = bitcast i8* %"$msgobj_v_1845" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %"$msgobj_v_1846", align 1
  store i8* %"$msgobj_1831", i8** %"$retval_234", align 8, !dbg !60
  %"$$retval_234_1848" = load i8*, i8** %"$retval_234", align 8
  ret i8* %"$$retval_234_1848"
}

define internal i8* @"$fundef_239"(%"$$fundef_239_env_417"* %0, %TName_Bool* %1) !dbg !61 {
entry:
  %"$$fundef_239_env_operator_1783" = getelementptr inbounds %"$$fundef_239_env_417", %"$$fundef_239_env_417"* %0, i32 0, i32 0
  %"$operator_envload_1784" = load [20 x i8], [20 x i8]* %"$$fundef_239_env_operator_1783", align 1
  %operator = alloca [20 x i8], align 1
  store [20 x i8] %"$operator_envload_1784", [20 x i8]* %operator, align 1
  %"$$fundef_239_env_user_1785" = getelementptr inbounds %"$$fundef_239_env_417", %"$$fundef_239_env_417"* %0, i32 0, i32 1
  %"$user_envload_1786" = load [20 x i8], [20 x i8]* %"$$fundef_239_env_user_1785", align 1
  %user = alloca [20 x i8], align 1
  store [20 x i8] %"$user_envload_1786", [20 x i8]* %user, align 1
  %"$retval_240" = alloca i8*, align 8
  %"$gasrem_1787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1788" = icmp ugt i64 1, %"$gasrem_1787"
  br i1 %"$gascmp_1788", label %"$out_of_gas_1789", label %"$have_gas_1790"

"$out_of_gas_1789":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1790"

"$have_gas_1790":                                 ; preds = %"$out_of_gas_1789", %entry
  %"$consume_1791" = sub i64 %"$gasrem_1787", 1
  store i64 %"$consume_1791", i64* @_gasrem, align 8
  %"$msgobj_1792_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1792_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1792_salloc_load", i64 161)
  %"$msgobj_1792_salloc" = bitcast i8* %"$msgobj_1792_salloc_salloc" to [161 x i8]*
  %"$msgobj_1792" = bitcast [161 x i8]* %"$msgobj_1792_salloc" to i8*
  store i8 4, i8* %"$msgobj_1792", align 1
  %"$msgobj_fname_1794" = getelementptr i8, i8* %"$msgobj_1792", i32 1
  %"$msgobj_fname_1795" = bitcast i8* %"$msgobj_fname_1794" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1793", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1795", align 8
  %"$msgobj_td_1796" = getelementptr i8, i8* %"$msgobj_1792", i32 17
  %"$msgobj_td_1797" = bitcast i8* %"$msgobj_td_1796" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1797", align 8
  %"$msgobj_v_1799" = getelementptr i8, i8* %"$msgobj_1792", i32 25
  %"$msgobj_v_1800" = bitcast i8* %"$msgobj_v_1799" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_1798", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_1800", align 8
  %"$msgobj_fname_1802" = getelementptr i8, i8* %"$msgobj_1792", i32 41
  %"$msgobj_fname_1803" = bitcast i8* %"$msgobj_fname_1802" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1801", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1803", align 8
  %"$msgobj_td_1804" = getelementptr i8, i8* %"$msgobj_1792", i32 57
  %"$msgobj_td_1805" = bitcast i8* %"$msgobj_td_1804" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1805", align 8
  %"$user_1806" = load [20 x i8], [20 x i8]* %user, align 1
  %"$msgobj_v_1807" = getelementptr i8, i8* %"$msgobj_1792", i32 65
  %"$msgobj_v_1808" = bitcast i8* %"$msgobj_v_1807" to [20 x i8]*
  store [20 x i8] %"$user_1806", [20 x i8]* %"$msgobj_v_1808", align 1
  %"$msgobj_fname_1810" = getelementptr i8, i8* %"$msgobj_1792", i32 85
  %"$msgobj_fname_1811" = bitcast i8* %"$msgobj_fname_1810" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1809", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_1811", align 8
  %"$msgobj_td_1812" = getelementptr i8, i8* %"$msgobj_1792", i32 101
  %"$msgobj_td_1813" = bitcast i8* %"$msgobj_td_1812" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1813", align 8
  %"$operator_1814" = load [20 x i8], [20 x i8]* %operator, align 1
  %"$msgobj_v_1815" = getelementptr i8, i8* %"$msgobj_1792", i32 109
  %"$msgobj_v_1816" = bitcast i8* %"$msgobj_v_1815" to [20 x i8]*
  store [20 x i8] %"$operator_1814", [20 x i8]* %"$msgobj_v_1816", align 1
  %"$msgobj_fname_1818" = getelementptr i8, i8* %"$msgobj_1792", i32 129
  %"$msgobj_fname_1819" = bitcast i8* %"$msgobj_fname_1818" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1817", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1819", align 8
  %"$msgobj_td_1820" = getelementptr i8, i8* %"$msgobj_1792", i32 145
  %"$msgobj_td_1821" = bitcast i8* %"$msgobj_td_1820" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", %_TyDescrTy_Typ** %"$msgobj_td_1821", align 8
  %"$msgobj_v_1822" = getelementptr i8, i8* %"$msgobj_1792", i32 153
  %"$msgobj_v_1823" = bitcast i8* %"$msgobj_v_1822" to %TName_Bool**
  store %TName_Bool* %1, %TName_Bool** %"$msgobj_v_1823", align 8
  store i8* %"$msgobj_1792", i8** %"$retval_240", align 8, !dbg !62
  %"$$retval_240_1825" = load i8*, i8** %"$retval_240", align 8
  ret i8* %"$$retval_240_1825"
}

define internal { i8* (i8*, %TName_Bool*)*, i8* } @"$fundef_237"(%"$$fundef_237_env_418"* %0, [20 x i8]* %1) !dbg !63 {
entry:
  %operator = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_237_env_user_1768" = getelementptr inbounds %"$$fundef_237_env_418", %"$$fundef_237_env_418"* %0, i32 0, i32 0
  %"$user_envload_1769" = load [20 x i8], [20 x i8]* %"$$fundef_237_env_user_1768", align 1
  %user = alloca [20 x i8], align 1
  store [20 x i8] %"$user_envload_1769", [20 x i8]* %user, align 1
  %"$retval_238" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_1770" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1771" = icmp ugt i64 1, %"$gasrem_1770"
  br i1 %"$gascmp_1771", label %"$out_of_gas_1772", label %"$have_gas_1773"

"$out_of_gas_1772":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1773"

"$have_gas_1773":                                 ; preds = %"$out_of_gas_1772", %entry
  %"$consume_1774" = sub i64 %"$gasrem_1770", 1
  store i64 %"$consume_1774", i64* @_gasrem, align 8
  %"$$fundef_239_envp_1775_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_239_envp_1775_salloc" = call i8* @_salloc(i8* %"$$fundef_239_envp_1775_load", i64 40)
  %"$$fundef_239_envp_1775" = bitcast i8* %"$$fundef_239_envp_1775_salloc" to %"$$fundef_239_env_417"*
  %"$$fundef_239_env_voidp_1777" = bitcast %"$$fundef_239_env_417"* %"$$fundef_239_envp_1775" to i8*
  %"$$fundef_239_cloval_1778" = insertvalue { i8* (i8*, %TName_Bool*)*, i8* } { i8* (i8*, %TName_Bool*)* bitcast (i8* (%"$$fundef_239_env_417"*, %TName_Bool*)* @"$fundef_239" to i8* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_239_env_voidp_1777", 1
  %"$$fundef_239_env_operator_1779" = getelementptr inbounds %"$$fundef_239_env_417", %"$$fundef_239_env_417"* %"$$fundef_239_envp_1775", i32 0, i32 0
  store [20 x i8] %operator, [20 x i8]* %"$$fundef_239_env_operator_1779", align 1
  %"$$fundef_239_env_user_1780" = getelementptr inbounds %"$$fundef_239_env_417", %"$$fundef_239_env_417"* %"$$fundef_239_envp_1775", i32 0, i32 1
  %"$user_1781" = load [20 x i8], [20 x i8]* %user, align 1
  store [20 x i8] %"$user_1781", [20 x i8]* %"$$fundef_239_env_user_1780", align 1
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$fundef_239_cloval_1778", { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_238", align 8, !dbg !64
  %"$$retval_238_1782" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_238", align 8
  ret { i8* (i8*, %TName_Bool*)*, i8* } %"$$retval_238_1782"
}

define internal { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_235"(%"$$fundef_235_env_419"* %0, [20 x i8]* %1) !dbg !65 {
entry:
  %user = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_236" = alloca { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1757" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1758" = icmp ugt i64 1, %"$gasrem_1757"
  br i1 %"$gascmp_1758", label %"$out_of_gas_1759", label %"$have_gas_1760"

"$out_of_gas_1759":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1760"

"$have_gas_1760":                                 ; preds = %"$out_of_gas_1759", %entry
  %"$consume_1761" = sub i64 %"$gasrem_1757", 1
  store i64 %"$consume_1761", i64* @_gasrem, align 8
  %"$$fundef_237_envp_1762_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_237_envp_1762_salloc" = call i8* @_salloc(i8* %"$$fundef_237_envp_1762_load", i64 20)
  %"$$fundef_237_envp_1762" = bitcast i8* %"$$fundef_237_envp_1762_salloc" to %"$$fundef_237_env_418"*
  %"$$fundef_237_env_voidp_1764" = bitcast %"$$fundef_237_env_418"* %"$$fundef_237_envp_1762" to i8*
  %"$$fundef_237_cloval_1765" = insertvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_237_env_418"*, [20 x i8]*)* @"$fundef_237" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_237_env_voidp_1764", 1
  %"$$fundef_237_env_user_1766" = getelementptr inbounds %"$$fundef_237_env_418", %"$$fundef_237_env_418"* %"$$fundef_237_envp_1762", i32 0, i32 0
  store [20 x i8] %user, [20 x i8]* %"$$fundef_237_env_user_1766", align 1
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_237_cloval_1765", { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_236", align 8, !dbg !66
  %"$$retval_236_1767" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_236", align 8
  ret { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_236_1767"
}

define internal i8* @"$fundef_243"(%"$$fundef_243_env_420"* %0, %TName_Bool* %1) !dbg !67 {
entry:
  %"$$fundef_243_env_address_1724" = getelementptr inbounds %"$$fundef_243_env_420", %"$$fundef_243_env_420"* %0, i32 0, i32 0
  %"$address_envload_1725" = load [20 x i8], [20 x i8]* %"$$fundef_243_env_address_1724", align 1
  %address = alloca [20 x i8], align 1
  store [20 x i8] %"$address_envload_1725", [20 x i8]* %address, align 1
  %"$retval_244" = alloca i8*, align 8
  %"$gasrem_1726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1727" = icmp ugt i64 1, %"$gasrem_1726"
  br i1 %"$gascmp_1727", label %"$out_of_gas_1728", label %"$have_gas_1729"

"$out_of_gas_1728":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1729"

"$have_gas_1729":                                 ; preds = %"$out_of_gas_1728", %entry
  %"$consume_1730" = sub i64 %"$gasrem_1726", 1
  store i64 %"$consume_1730", i64* @_gasrem, align 8
  %"$msgobj_1731_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1731_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1731_salloc_load", i64 117)
  %"$msgobj_1731_salloc" = bitcast i8* %"$msgobj_1731_salloc_salloc" to [117 x i8]*
  %"$msgobj_1731" = bitcast [117 x i8]* %"$msgobj_1731_salloc" to i8*
  store i8 3, i8* %"$msgobj_1731", align 1
  %"$msgobj_fname_1733" = getelementptr i8, i8* %"$msgobj_1731", i32 1
  %"$msgobj_fname_1734" = bitcast i8* %"$msgobj_fname_1733" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1732", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1734", align 8
  %"$msgobj_td_1735" = getelementptr i8, i8* %"$msgobj_1731", i32 17
  %"$msgobj_td_1736" = bitcast i8* %"$msgobj_td_1735" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1736", align 8
  %"$msgobj_v_1738" = getelementptr i8, i8* %"$msgobj_1731", i32 25
  %"$msgobj_v_1739" = bitcast i8* %"$msgobj_v_1738" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1737", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_1739", align 8
  %"$msgobj_fname_1741" = getelementptr i8, i8* %"$msgobj_1731", i32 41
  %"$msgobj_fname_1742" = bitcast i8* %"$msgobj_fname_1741" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1740", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1742", align 8
  %"$msgobj_td_1743" = getelementptr i8, i8* %"$msgobj_1731", i32 57
  %"$msgobj_td_1744" = bitcast i8* %"$msgobj_td_1743" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1744", align 8
  %"$address_1745" = load [20 x i8], [20 x i8]* %address, align 1
  %"$msgobj_v_1746" = getelementptr i8, i8* %"$msgobj_1731", i32 65
  %"$msgobj_v_1747" = bitcast i8* %"$msgobj_v_1746" to [20 x i8]*
  store [20 x i8] %"$address_1745", [20 x i8]* %"$msgobj_v_1747", align 1
  %"$msgobj_fname_1749" = getelementptr i8, i8* %"$msgobj_1731", i32 85
  %"$msgobj_fname_1750" = bitcast i8* %"$msgobj_fname_1749" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1748", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1750", align 8
  %"$msgobj_td_1751" = getelementptr i8, i8* %"$msgobj_1731", i32 101
  %"$msgobj_td_1752" = bitcast i8* %"$msgobj_td_1751" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", %_TyDescrTy_Typ** %"$msgobj_td_1752", align 8
  %"$msgobj_v_1753" = getelementptr i8, i8* %"$msgobj_1731", i32 109
  %"$msgobj_v_1754" = bitcast i8* %"$msgobj_v_1753" to %TName_Bool**
  store %TName_Bool* %1, %TName_Bool** %"$msgobj_v_1754", align 8
  store i8* %"$msgobj_1731", i8** %"$retval_244", align 8, !dbg !68
  %"$$retval_244_1756" = load i8*, i8** %"$retval_244", align 8
  ret i8* %"$$retval_244_1756"
}

define internal { i8* (i8*, %TName_Bool*)*, i8* } @"$fundef_241"(%"$$fundef_241_env_421"* %0, [20 x i8]* %1) !dbg !69 {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_242" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_1713" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1714" = icmp ugt i64 1, %"$gasrem_1713"
  br i1 %"$gascmp_1714", label %"$out_of_gas_1715", label %"$have_gas_1716"

"$out_of_gas_1715":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1716"

"$have_gas_1716":                                 ; preds = %"$out_of_gas_1715", %entry
  %"$consume_1717" = sub i64 %"$gasrem_1713", 1
  store i64 %"$consume_1717", i64* @_gasrem, align 8
  %"$$fundef_243_envp_1718_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_243_envp_1718_salloc" = call i8* @_salloc(i8* %"$$fundef_243_envp_1718_load", i64 20)
  %"$$fundef_243_envp_1718" = bitcast i8* %"$$fundef_243_envp_1718_salloc" to %"$$fundef_243_env_420"*
  %"$$fundef_243_env_voidp_1720" = bitcast %"$$fundef_243_env_420"* %"$$fundef_243_envp_1718" to i8*
  %"$$fundef_243_cloval_1721" = insertvalue { i8* (i8*, %TName_Bool*)*, i8* } { i8* (i8*, %TName_Bool*)* bitcast (i8* (%"$$fundef_243_env_420"*, %TName_Bool*)* @"$fundef_243" to i8* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_243_env_voidp_1720", 1
  %"$$fundef_243_env_address_1722" = getelementptr inbounds %"$$fundef_243_env_420", %"$$fundef_243_env_420"* %"$$fundef_243_envp_1718", i32 0, i32 0
  store [20 x i8] %address, [20 x i8]* %"$$fundef_243_env_address_1722", align 1
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$fundef_243_cloval_1721", { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_242", align 8, !dbg !70
  %"$$retval_242_1723" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_242", align 8
  ret { i8* (i8*, %TName_Bool*)*, i8* } %"$$retval_242_1723"
}

define internal %TName_Bool* @"$fundef_247"(%"$$fundef_247_env_422"* %0, %TName_Bool* %1) !dbg !71 {
entry:
  %"$$fundef_247_env_b1_1638" = getelementptr inbounds %"$$fundef_247_env_422", %"$$fundef_247_env_422"* %0, i32 0, i32 0
  %"$b1_envload_1639" = load %TName_Bool*, %TName_Bool** %"$$fundef_247_env_b1_1638", align 8
  %b1 = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b1_envload_1639", %TName_Bool** %b1, align 8
  %"$retval_248" = alloca %TName_Bool*, align 8
  %"$gasrem_1640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1641" = icmp ugt i64 2, %"$gasrem_1640"
  br i1 %"$gascmp_1641", label %"$out_of_gas_1642", label %"$have_gas_1643"

"$out_of_gas_1642":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1643"

"$have_gas_1643":                                 ; preds = %"$out_of_gas_1642", %entry
  %"$consume_1644" = sub i64 %"$gasrem_1640", 2
  store i64 %"$consume_1644", i64* @_gasrem, align 8
  %"$b1_1646" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$b1_tag_1647" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b1_1646", i32 0, i32 0
  %"$b1_tag_1648" = load i8, i8* %"$b1_tag_1647", align 1
  switch i8 %"$b1_tag_1648", label %"$empty_default_1649" [
    i8 0, label %"$True_1650"
    i8 1, label %"$False_1681"
  ], !dbg !72

"$True_1650":                                     ; preds = %"$have_gas_1643"
  %"$b1_1651" = bitcast %TName_Bool* %"$b1_1646" to %CName_True*
  %"$gasrem_1652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1653" = icmp ugt i64 2, %"$gasrem_1652"
  br i1 %"$gascmp_1653", label %"$out_of_gas_1654", label %"$have_gas_1655"

"$out_of_gas_1654":                               ; preds = %"$True_1650"
  call void @_out_of_gas()
  br label %"$have_gas_1655"

"$have_gas_1655":                                 ; preds = %"$out_of_gas_1654", %"$True_1650"
  %"$consume_1656" = sub i64 %"$gasrem_1652", 2
  store i64 %"$consume_1656", i64* @_gasrem, align 8
  %"$b2_tag_1658" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b2_tag_1659" = load i8, i8* %"$b2_tag_1658", align 1
  switch i8 %"$b2_tag_1659", label %"$empty_default_1660" [
    i8 0, label %"$True_1661"
    i8 1, label %"$False_1671"
  ], !dbg !73

"$True_1661":                                     ; preds = %"$have_gas_1655"
  %"$b2_1662" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_1663" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1664" = icmp ugt i64 1, %"$gasrem_1663"
  br i1 %"$gascmp_1664", label %"$out_of_gas_1665", label %"$have_gas_1666"

"$out_of_gas_1665":                               ; preds = %"$True_1661"
  call void @_out_of_gas()
  br label %"$have_gas_1666"

"$have_gas_1666":                                 ; preds = %"$out_of_gas_1665", %"$True_1661"
  %"$consume_1667" = sub i64 %"$gasrem_1663", 1
  store i64 %"$consume_1667", i64* @_gasrem, align 8
  %"$adtval_1668_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1668_salloc" = call i8* @_salloc(i8* %"$adtval_1668_load", i64 1)
  %"$adtval_1668" = bitcast i8* %"$adtval_1668_salloc" to %CName_True*
  %"$adtgep_1669" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1668", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1669", align 1
  %"$adtptr_1670" = bitcast %CName_True* %"$adtval_1668" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1670", %TName_Bool** %"$retval_248", align 8, !dbg !76
  br label %"$matchsucc_1657"

"$False_1671":                                    ; preds = %"$have_gas_1655"
  %"$b2_1672" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_1673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1674" = icmp ugt i64 1, %"$gasrem_1673"
  br i1 %"$gascmp_1674", label %"$out_of_gas_1675", label %"$have_gas_1676"

"$out_of_gas_1675":                               ; preds = %"$False_1671"
  call void @_out_of_gas()
  br label %"$have_gas_1676"

"$have_gas_1676":                                 ; preds = %"$out_of_gas_1675", %"$False_1671"
  %"$consume_1677" = sub i64 %"$gasrem_1673", 1
  store i64 %"$consume_1677", i64* @_gasrem, align 8
  %"$adtval_1678_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1678_salloc" = call i8* @_salloc(i8* %"$adtval_1678_load", i64 1)
  %"$adtval_1678" = bitcast i8* %"$adtval_1678_salloc" to %CName_False*
  %"$adtgep_1679" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1678", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1679", align 1
  %"$adtptr_1680" = bitcast %CName_False* %"$adtval_1678" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1680", %TName_Bool** %"$retval_248", align 8, !dbg !79
  br label %"$matchsucc_1657"

"$empty_default_1660":                            ; preds = %"$have_gas_1655"
  br label %"$matchsucc_1657"

"$matchsucc_1657":                                ; preds = %"$have_gas_1676", %"$have_gas_1666", %"$empty_default_1660"
  br label %"$matchsucc_1645"

"$False_1681":                                    ; preds = %"$have_gas_1643"
  %"$b1_1682" = bitcast %TName_Bool* %"$b1_1646" to %CName_False*
  %"$gasrem_1683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1684" = icmp ugt i64 2, %"$gasrem_1683"
  br i1 %"$gascmp_1684", label %"$out_of_gas_1685", label %"$have_gas_1686"

"$out_of_gas_1685":                               ; preds = %"$False_1681"
  call void @_out_of_gas()
  br label %"$have_gas_1686"

"$have_gas_1686":                                 ; preds = %"$out_of_gas_1685", %"$False_1681"
  %"$consume_1687" = sub i64 %"$gasrem_1683", 2
  store i64 %"$consume_1687", i64* @_gasrem, align 8
  %"$b2_tag_1689" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b2_tag_1690" = load i8, i8* %"$b2_tag_1689", align 1
  switch i8 %"$b2_tag_1690", label %"$empty_default_1691" [
    i8 0, label %"$True_1692"
    i8 1, label %"$False_1702"
  ], !dbg !81

"$True_1692":                                     ; preds = %"$have_gas_1686"
  %"$b2_1693" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_1694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1695" = icmp ugt i64 1, %"$gasrem_1694"
  br i1 %"$gascmp_1695", label %"$out_of_gas_1696", label %"$have_gas_1697"

"$out_of_gas_1696":                               ; preds = %"$True_1692"
  call void @_out_of_gas()
  br label %"$have_gas_1697"

"$have_gas_1697":                                 ; preds = %"$out_of_gas_1696", %"$True_1692"
  %"$consume_1698" = sub i64 %"$gasrem_1694", 1
  store i64 %"$consume_1698", i64* @_gasrem, align 8
  %"$adtval_1699_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1699_salloc" = call i8* @_salloc(i8* %"$adtval_1699_load", i64 1)
  %"$adtval_1699" = bitcast i8* %"$adtval_1699_salloc" to %CName_False*
  %"$adtgep_1700" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1699", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1700", align 1
  %"$adtptr_1701" = bitcast %CName_False* %"$adtval_1699" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1701", %TName_Bool** %"$retval_248", align 8, !dbg !83
  br label %"$matchsucc_1688"

"$False_1702":                                    ; preds = %"$have_gas_1686"
  %"$b2_1703" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_1704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1705" = icmp ugt i64 1, %"$gasrem_1704"
  br i1 %"$gascmp_1705", label %"$out_of_gas_1706", label %"$have_gas_1707"

"$out_of_gas_1706":                               ; preds = %"$False_1702"
  call void @_out_of_gas()
  br label %"$have_gas_1707"

"$have_gas_1707":                                 ; preds = %"$out_of_gas_1706", %"$False_1702"
  %"$consume_1708" = sub i64 %"$gasrem_1704", 1
  store i64 %"$consume_1708", i64* @_gasrem, align 8
  %"$adtval_1709_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1709_salloc" = call i8* @_salloc(i8* %"$adtval_1709_load", i64 1)
  %"$adtval_1709" = bitcast i8* %"$adtval_1709_salloc" to %CName_True*
  %"$adtgep_1710" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1709", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1710", align 1
  %"$adtptr_1711" = bitcast %CName_True* %"$adtval_1709" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1711", %TName_Bool** %"$retval_248", align 8, !dbg !86
  br label %"$matchsucc_1688"

"$empty_default_1691":                            ; preds = %"$have_gas_1686"
  br label %"$matchsucc_1688"

"$matchsucc_1688":                                ; preds = %"$have_gas_1707", %"$have_gas_1697", %"$empty_default_1691"
  br label %"$matchsucc_1645"

"$empty_default_1649":                            ; preds = %"$have_gas_1643"
  br label %"$matchsucc_1645"

"$matchsucc_1645":                                ; preds = %"$matchsucc_1688", %"$matchsucc_1657", %"$empty_default_1649"
  %"$$retval_248_1712" = load %TName_Bool*, %TName_Bool** %"$retval_248", align 8
  ret %TName_Bool* %"$$retval_248_1712"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_245"(%"$$fundef_245_env_423"* %0, %TName_Bool* %1) !dbg !88 {
entry:
  %"$retval_246" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_1627" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1628" = icmp ugt i64 1, %"$gasrem_1627"
  br i1 %"$gascmp_1628", label %"$out_of_gas_1629", label %"$have_gas_1630"

"$out_of_gas_1629":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1630"

"$have_gas_1630":                                 ; preds = %"$out_of_gas_1629", %entry
  %"$consume_1631" = sub i64 %"$gasrem_1627", 1
  store i64 %"$consume_1631", i64* @_gasrem, align 8
  %"$$fundef_247_envp_1632_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_247_envp_1632_salloc" = call i8* @_salloc(i8* %"$$fundef_247_envp_1632_load", i64 8)
  %"$$fundef_247_envp_1632" = bitcast i8* %"$$fundef_247_envp_1632_salloc" to %"$$fundef_247_env_422"*
  %"$$fundef_247_env_voidp_1634" = bitcast %"$$fundef_247_env_422"* %"$$fundef_247_envp_1632" to i8*
  %"$$fundef_247_cloval_1635" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_247_env_422"*, %TName_Bool*)* @"$fundef_247" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_247_env_voidp_1634", 1
  %"$$fundef_247_env_b1_1636" = getelementptr inbounds %"$$fundef_247_env_422", %"$$fundef_247_env_422"* %"$$fundef_247_envp_1632", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_247_env_b1_1636", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_247_cloval_1635", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_246", align 8, !dbg !89
  %"$$retval_246_1637" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_246", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_246_1637"
}

define internal %TName_Bool* @"$fundef_253"(%"$$fundef_253_env_424"* %0, [20 x i8]* %1) !dbg !90 {
entry:
  %v = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_253_env_BoolUtils.negb_1599" = getelementptr inbounds %"$$fundef_253_env_424", %"$$fundef_253_env_424"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1600" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_253_env_BoolUtils.negb_1599", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1600", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_253_env_bs_1601" = getelementptr inbounds %"$$fundef_253_env_424", %"$$fundef_253_env_424"* %0, i32 0, i32 1
  %"$bs_envload_1602" = load [20 x i8], [20 x i8]* %"$$fundef_253_env_bs_1601", align 1
  %bs = alloca [20 x i8], align 1
  store [20 x i8] %"$bs_envload_1602", [20 x i8]* %bs, align 1
  %"$retval_254" = alloca %TName_Bool*, align 8
  %"$gasrem_1603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1604" = icmp ugt i64 1, %"$gasrem_1603"
  br i1 %"$gascmp_1604", label %"$out_of_gas_1605", label %"$have_gas_1606"

"$out_of_gas_1605":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1606"

"$have_gas_1606":                                 ; preds = %"$out_of_gas_1605", %entry
  %"$consume_1607" = sub i64 %"$gasrem_1603", 1
  store i64 %"$consume_1607", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$execptr_load_1608" = load i8*, i8** @_execptr, align 8
  %"$eq_v_1609" = alloca [20 x i8], align 1
  store [20 x i8] %v, [20 x i8]* %"$eq_v_1609", align 1
  %"$$eq_v_1609_1610" = bitcast [20 x i8]* %"$eq_v_1609" to i8*
  %"$eq_bs_1611" = alloca [20 x i8], align 1
  %"$bs_1612" = load [20 x i8], [20 x i8]* %bs, align 1
  store [20 x i8] %"$bs_1612", [20 x i8]* %"$eq_bs_1611", align 1
  %"$$eq_bs_1611_1613" = bitcast [20 x i8]* %"$eq_bs_1611" to i8*
  %"$eq_call_1614" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_1608", i32 20, i8* %"$$eq_v_1609_1610", i8* %"$$eq_bs_1611_1613")
  store %TName_Bool* %"$eq_call_1614", %TName_Bool** %b, align 8, !dbg !91
  %"$gasrem_1615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1616" = icmp ugt i64 1, %"$gasrem_1615"
  br i1 %"$gascmp_1616", label %"$out_of_gas_1617", label %"$have_gas_1618"

"$out_of_gas_1617":                               ; preds = %"$have_gas_1606"
  call void @_out_of_gas()
  br label %"$have_gas_1618"

"$have_gas_1618":                                 ; preds = %"$out_of_gas_1617", %"$have_gas_1606"
  %"$consume_1619" = sub i64 %"$gasrem_1615", 1
  store i64 %"$consume_1619", i64* @_gasrem, align 8
  %"$BoolUtils.negb_33" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_1620" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_1621" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1620", 0
  %"$BoolUtils.negb_envptr_1622" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1620", 1
  %"$b_1623" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$BoolUtils.negb_call_1624" = call %TName_Bool* %"$BoolUtils.negb_fptr_1621"(i8* %"$BoolUtils.negb_envptr_1622", %TName_Bool* %"$b_1623"), !dbg !92
  store %TName_Bool* %"$BoolUtils.negb_call_1624", %TName_Bool** %"$BoolUtils.negb_33", align 8, !dbg !92
  %"$$BoolUtils.negb_33_1625" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_33", align 8
  store %TName_Bool* %"$$BoolUtils.negb_33_1625", %TName_Bool** %"$retval_254", align 8, !dbg !92
  %"$$retval_254_1626" = load %TName_Bool*, %TName_Bool** %"$retval_254", align 8
  ret %TName_Bool* %"$$retval_254_1626"
}

define internal %TName_List_ByStr20* @"$fundef_251"(%"$$fundef_251_env_425"* %0, [20 x i8]* %1) !dbg !93 {
entry:
  %bs = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_251_env_BoolUtils.negb_1542" = getelementptr inbounds %"$$fundef_251_env_425", %"$$fundef_251_env_425"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1543" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_251_env_BoolUtils.negb_1542", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1543", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_251_env_ListUtils.list_filter_1544" = getelementptr inbounds %"$$fundef_251_env_425", %"$$fundef_251_env_425"* %0, i32 0, i32 1
  %"$ListUtils.list_filter_envload_1545" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_251_env_ListUtils.list_filter_1544", align 8
  %ListUtils.list_filter = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_envload_1545", { i8*, i8* }** %ListUtils.list_filter, align 8
  %"$$fundef_251_env_list_1546" = getelementptr inbounds %"$$fundef_251_env_425", %"$$fundef_251_env_425"* %0, i32 0, i32 2
  %"$list_envload_1547" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_251_env_list_1546", align 8
  %list = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$list_envload_1547", %TName_List_ByStr20** %list, align 8
  %"$retval_252" = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_1548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1549" = icmp ugt i64 1, %"$gasrem_1548"
  br i1 %"$gascmp_1549", label %"$out_of_gas_1550", label %"$have_gas_1551"

"$out_of_gas_1550":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1551"

"$have_gas_1551":                                 ; preds = %"$out_of_gas_1550", %entry
  %"$consume_1552" = sub i64 %"$gasrem_1548", 1
  store i64 %"$consume_1552", i64* @_gasrem, align 8
  %listByStr20Filter = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1554" = icmp ugt i64 1, %"$gasrem_1553"
  br i1 %"$gascmp_1554", label %"$out_of_gas_1555", label %"$have_gas_1556"

"$out_of_gas_1555":                               ; preds = %"$have_gas_1551"
  call void @_out_of_gas()
  br label %"$have_gas_1556"

"$have_gas_1556":                                 ; preds = %"$out_of_gas_1555", %"$have_gas_1551"
  %"$consume_1557" = sub i64 %"$gasrem_1553", 1
  store i64 %"$consume_1557", i64* @_gasrem, align 8
  %"$ListUtils.list_filter_1558" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_filter, align 8
  %"$ListUtils.list_filter_1559" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_filter_1558", i32 0
  %"$ListUtils.list_filter_1560" = bitcast { i8*, i8* }* %"$ListUtils.list_filter_1559" to { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_filter_1561" = load { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_filter_1560", align 8
  %"$ListUtils.list_filter_fptr_1562" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_filter_1561", 0
  %"$ListUtils.list_filter_envptr_1563" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_filter_1561", 1
  %"$ListUtils.list_filter_call_1564" = call { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_filter_fptr_1562"(i8* %"$ListUtils.list_filter_envptr_1563"), !dbg !94
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_filter_call_1564", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %listByStr20Filter, align 8, !dbg !95
  %"$gasrem_1565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1566" = icmp ugt i64 1, %"$gasrem_1565"
  br i1 %"$gascmp_1566", label %"$out_of_gas_1567", label %"$have_gas_1568"

"$out_of_gas_1567":                               ; preds = %"$have_gas_1556"
  call void @_out_of_gas()
  br label %"$have_gas_1568"

"$have_gas_1568":                                 ; preds = %"$out_of_gas_1567", %"$have_gas_1556"
  %"$consume_1569" = sub i64 %"$gasrem_1565", 1
  store i64 %"$consume_1569", i64* @_gasrem, align 8
  %fn = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1571" = icmp ugt i64 1, %"$gasrem_1570"
  br i1 %"$gascmp_1571", label %"$out_of_gas_1572", label %"$have_gas_1573"

"$out_of_gas_1572":                               ; preds = %"$have_gas_1568"
  call void @_out_of_gas()
  br label %"$have_gas_1573"

"$have_gas_1573":                                 ; preds = %"$out_of_gas_1572", %"$have_gas_1568"
  %"$consume_1574" = sub i64 %"$gasrem_1570", 1
  store i64 %"$consume_1574", i64* @_gasrem, align 8
  %"$$fundef_253_envp_1575_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_253_envp_1575_salloc" = call i8* @_salloc(i8* %"$$fundef_253_envp_1575_load", i64 40)
  %"$$fundef_253_envp_1575" = bitcast i8* %"$$fundef_253_envp_1575_salloc" to %"$$fundef_253_env_424"*
  %"$$fundef_253_env_voidp_1577" = bitcast %"$$fundef_253_env_424"* %"$$fundef_253_envp_1575" to i8*
  %"$$fundef_253_cloval_1578" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_253_env_424"*, [20 x i8]*)* @"$fundef_253" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_253_env_voidp_1577", 1
  %"$$fundef_253_env_BoolUtils.negb_1579" = getelementptr inbounds %"$$fundef_253_env_424", %"$$fundef_253_env_424"* %"$$fundef_253_envp_1575", i32 0, i32 0
  %"$BoolUtils.negb_1580" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1580", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_253_env_BoolUtils.negb_1579", align 8
  %"$$fundef_253_env_bs_1581" = getelementptr inbounds %"$$fundef_253_env_424", %"$$fundef_253_env_424"* %"$$fundef_253_envp_1575", i32 0, i32 1
  store [20 x i8] %bs, [20 x i8]* %"$$fundef_253_env_bs_1581", align 1
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_253_cloval_1578", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %fn, align 8, !dbg !96
  %"$gasrem_1582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1583" = icmp ugt i64 1, %"$gasrem_1582"
  br i1 %"$gascmp_1583", label %"$out_of_gas_1584", label %"$have_gas_1585"

"$out_of_gas_1584":                               ; preds = %"$have_gas_1573"
  call void @_out_of_gas()
  br label %"$have_gas_1585"

"$have_gas_1585":                                 ; preds = %"$out_of_gas_1584", %"$have_gas_1573"
  %"$consume_1586" = sub i64 %"$gasrem_1582", 1
  store i64 %"$consume_1586", i64* @_gasrem, align 8
  %"$listByStr20Filter_34" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$listByStr20Filter_1587" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %listByStr20Filter, align 8
  %"$listByStr20Filter_fptr_1588" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listByStr20Filter_1587", 0
  %"$listByStr20Filter_envptr_1589" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listByStr20Filter_1587", 1
  %"$fn_1590" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %fn, align 8
  %"$listByStr20Filter_call_1591" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$listByStr20Filter_fptr_1588"(i8* %"$listByStr20Filter_envptr_1589", { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$fn_1590"), !dbg !97
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$listByStr20Filter_call_1591", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listByStr20Filter_34", align 8, !dbg !97
  %"$listByStr20Filter_35" = alloca %TName_List_ByStr20*, align 8
  %"$$listByStr20Filter_34_1592" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listByStr20Filter_34", align 8
  %"$$listByStr20Filter_34_fptr_1593" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listByStr20Filter_34_1592", 0
  %"$$listByStr20Filter_34_envptr_1594" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listByStr20Filter_34_1592", 1
  %"$list_1595" = load %TName_List_ByStr20*, %TName_List_ByStr20** %list, align 8
  %"$$listByStr20Filter_34_call_1596" = call %TName_List_ByStr20* %"$$listByStr20Filter_34_fptr_1593"(i8* %"$$listByStr20Filter_34_envptr_1594", %TName_List_ByStr20* %"$list_1595"), !dbg !97
  store %TName_List_ByStr20* %"$$listByStr20Filter_34_call_1596", %TName_List_ByStr20** %"$listByStr20Filter_35", align 8, !dbg !97
  %"$$listByStr20Filter_35_1597" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$listByStr20Filter_35", align 8
  store %TName_List_ByStr20* %"$$listByStr20Filter_35_1597", %TName_List_ByStr20** %"$retval_252", align 8, !dbg !97
  %"$$retval_252_1598" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$retval_252", align 8
  ret %TName_List_ByStr20* %"$$retval_252_1598"
}

define internal { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } @"$fundef_249"(%"$$fundef_249_env_426"* %0, %TName_List_ByStr20* %1) !dbg !98 {
entry:
  %"$$fundef_249_env_BoolUtils.negb_1523" = getelementptr inbounds %"$$fundef_249_env_426", %"$$fundef_249_env_426"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1524" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_249_env_BoolUtils.negb_1523", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1524", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_249_env_ListUtils.list_filter_1525" = getelementptr inbounds %"$$fundef_249_env_426", %"$$fundef_249_env_426"* %0, i32 0, i32 1
  %"$ListUtils.list_filter_envload_1526" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_249_env_ListUtils.list_filter_1525", align 8
  %ListUtils.list_filter = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_envload_1526", { i8*, i8* }** %ListUtils.list_filter, align 8
  %"$retval_250" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1528" = icmp ugt i64 1, %"$gasrem_1527"
  br i1 %"$gascmp_1528", label %"$out_of_gas_1529", label %"$have_gas_1530"

"$out_of_gas_1529":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1530"

"$have_gas_1530":                                 ; preds = %"$out_of_gas_1529", %entry
  %"$consume_1531" = sub i64 %"$gasrem_1527", 1
  store i64 %"$consume_1531", i64* @_gasrem, align 8
  %"$$fundef_251_envp_1532_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_251_envp_1532_salloc" = call i8* @_salloc(i8* %"$$fundef_251_envp_1532_load", i64 32)
  %"$$fundef_251_envp_1532" = bitcast i8* %"$$fundef_251_envp_1532_salloc" to %"$$fundef_251_env_425"*
  %"$$fundef_251_env_voidp_1534" = bitcast %"$$fundef_251_env_425"* %"$$fundef_251_envp_1532" to i8*
  %"$$fundef_251_cloval_1535" = insertvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } { %TName_List_ByStr20* (i8*, [20 x i8]*)* bitcast (%TName_List_ByStr20* (%"$$fundef_251_env_425"*, [20 x i8]*)* @"$fundef_251" to %TName_List_ByStr20* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_251_env_voidp_1534", 1
  %"$$fundef_251_env_BoolUtils.negb_1536" = getelementptr inbounds %"$$fundef_251_env_425", %"$$fundef_251_env_425"* %"$$fundef_251_envp_1532", i32 0, i32 0
  %"$BoolUtils.negb_1537" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1537", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_251_env_BoolUtils.negb_1536", align 8
  %"$$fundef_251_env_ListUtils.list_filter_1538" = getelementptr inbounds %"$$fundef_251_env_425", %"$$fundef_251_env_425"* %"$$fundef_251_envp_1532", i32 0, i32 1
  %"$ListUtils.list_filter_1539" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_filter, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_1539", { i8*, i8* }** %"$$fundef_251_env_ListUtils.list_filter_1538", align 8
  %"$$fundef_251_env_list_1540" = getelementptr inbounds %"$$fundef_251_env_425", %"$$fundef_251_env_425"* %"$$fundef_251_envp_1532", i32 0, i32 2
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_251_env_list_1540", align 8
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$fundef_251_cloval_1535", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_250", align 8, !dbg !99
  %"$$retval_250_1541" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_250", align 8
  ret { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$retval_250_1541"
}

define internal %TName_Bool* @"$fundef_257"(%"$$fundef_257_env_427"* %0, [20 x i8]* %1) !dbg !100 {
entry:
  %bs = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_257_env_BoolUtils.negb_1484" = getelementptr inbounds %"$$fundef_257_env_427", %"$$fundef_257_env_427"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1485" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_257_env_BoolUtils.negb_1484", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1485", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_257_env_list_1486" = getelementptr inbounds %"$$fundef_257_env_427", %"$$fundef_257_env_427"* %0, i32 0, i32 1
  %"$list_envload_1487" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_257_env_list_1486", align 8
  %list = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$list_envload_1487", %TName_List_ByStr20** %list, align 8
  %"$$fundef_257_env_ud-registry.listByStr20Contains_1488" = getelementptr inbounds %"$$fundef_257_env_427", %"$$fundef_257_env_427"* %0, i32 0, i32 2
  %"$ud-registry.listByStr20Contains_envload_1489" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_257_env_ud-registry.listByStr20Contains_1488", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_1489", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_258" = alloca %TName_Bool*, align 8
  %"$gasrem_1490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1491" = icmp ugt i64 1, %"$gasrem_1490"
  br i1 %"$gascmp_1491", label %"$out_of_gas_1492", label %"$have_gas_1493"

"$out_of_gas_1492":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1493"

"$have_gas_1493":                                 ; preds = %"$out_of_gas_1492", %entry
  %"$consume_1494" = sub i64 %"$gasrem_1490", 1
  store i64 %"$consume_1494", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_1495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1496" = icmp ugt i64 1, %"$gasrem_1495"
  br i1 %"$gascmp_1496", label %"$out_of_gas_1497", label %"$have_gas_1498"

"$out_of_gas_1497":                               ; preds = %"$have_gas_1493"
  call void @_out_of_gas()
  br label %"$have_gas_1498"

"$have_gas_1498":                                 ; preds = %"$out_of_gas_1497", %"$have_gas_1493"
  %"$consume_1499" = sub i64 %"$gasrem_1495", 1
  store i64 %"$consume_1499", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_30" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_1500" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_1501" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_1500", 0
  %"$ud-registry.listByStr20Contains_envptr_1502" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_1500", 1
  %"$list_1503" = load %TName_List_ByStr20*, %TName_List_ByStr20** %list, align 8
  %"$ud-registry.listByStr20Contains_call_1504" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_1501"(i8* %"$ud-registry.listByStr20Contains_envptr_1502", %TName_List_ByStr20* %"$list_1503"), !dbg !101
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_1504", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_30", align 8, !dbg !101
  %"$ud-registry.listByStr20Contains_31" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_30_1505" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_30", align 8
  %"$$ud-registry.listByStr20Contains_30_fptr_1506" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_30_1505", 0
  %"$$ud-registry.listByStr20Contains_30_envptr_1507" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_30_1505", 1
  %"$$ud-registry.listByStr20Contains_30_bs_1508" = alloca [20 x i8], align 1
  store [20 x i8] %bs, [20 x i8]* %"$$ud-registry.listByStr20Contains_30_bs_1508", align 1
  %"$$ud-registry.listByStr20Contains_30_call_1509" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_30_fptr_1506"(i8* %"$$ud-registry.listByStr20Contains_30_envptr_1507", [20 x i8]* %"$$ud-registry.listByStr20Contains_30_bs_1508"), !dbg !101
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_30_call_1509", %TName_Bool** %"$ud-registry.listByStr20Contains_31", align 8, !dbg !101
  %"$$ud-registry.listByStr20Contains_31_1510" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_31", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_31_1510", %TName_Bool** %b, align 8, !dbg !101
  %"$gasrem_1511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1512" = icmp ugt i64 1, %"$gasrem_1511"
  br i1 %"$gascmp_1512", label %"$out_of_gas_1513", label %"$have_gas_1514"

"$out_of_gas_1513":                               ; preds = %"$have_gas_1498"
  call void @_out_of_gas()
  br label %"$have_gas_1514"

"$have_gas_1514":                                 ; preds = %"$out_of_gas_1513", %"$have_gas_1498"
  %"$consume_1515" = sub i64 %"$gasrem_1511", 1
  store i64 %"$consume_1515", i64* @_gasrem, align 8
  %"$BoolUtils.negb_32" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_1516" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_1517" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1516", 0
  %"$BoolUtils.negb_envptr_1518" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1516", 1
  %"$b_1519" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$BoolUtils.negb_call_1520" = call %TName_Bool* %"$BoolUtils.negb_fptr_1517"(i8* %"$BoolUtils.negb_envptr_1518", %TName_Bool* %"$b_1519"), !dbg !102
  store %TName_Bool* %"$BoolUtils.negb_call_1520", %TName_Bool** %"$BoolUtils.negb_32", align 8, !dbg !102
  %"$$BoolUtils.negb_32_1521" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_32", align 8
  store %TName_Bool* %"$$BoolUtils.negb_32_1521", %TName_Bool** %"$retval_258", align 8, !dbg !102
  %"$$retval_258_1522" = load %TName_Bool*, %TName_Bool** %"$retval_258", align 8
  ret %TName_Bool* %"$$retval_258_1522"
}

define internal { %TName_Bool* (i8*, [20 x i8]*)*, i8* } @"$fundef_255"(%"$$fundef_255_env_428"* %0, %TName_List_ByStr20* %1) !dbg !103 {
entry:
  %"$$fundef_255_env_BoolUtils.negb_1465" = getelementptr inbounds %"$$fundef_255_env_428", %"$$fundef_255_env_428"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1466" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_255_env_BoolUtils.negb_1465", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1466", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_255_env_ud-registry.listByStr20Contains_1467" = getelementptr inbounds %"$$fundef_255_env_428", %"$$fundef_255_env_428"* %0, i32 0, i32 1
  %"$ud-registry.listByStr20Contains_envload_1468" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_255_env_ud-registry.listByStr20Contains_1467", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_1468", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_256" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1470" = icmp ugt i64 1, %"$gasrem_1469"
  br i1 %"$gascmp_1470", label %"$out_of_gas_1471", label %"$have_gas_1472"

"$out_of_gas_1471":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1472"

"$have_gas_1472":                                 ; preds = %"$out_of_gas_1471", %entry
  %"$consume_1473" = sub i64 %"$gasrem_1469", 1
  store i64 %"$consume_1473", i64* @_gasrem, align 8
  %"$$fundef_257_envp_1474_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_257_envp_1474_salloc" = call i8* @_salloc(i8* %"$$fundef_257_envp_1474_load", i64 40)
  %"$$fundef_257_envp_1474" = bitcast i8* %"$$fundef_257_envp_1474_salloc" to %"$$fundef_257_env_427"*
  %"$$fundef_257_env_voidp_1476" = bitcast %"$$fundef_257_env_427"* %"$$fundef_257_envp_1474" to i8*
  %"$$fundef_257_cloval_1477" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_257_env_427"*, [20 x i8]*)* @"$fundef_257" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_257_env_voidp_1476", 1
  %"$$fundef_257_env_BoolUtils.negb_1478" = getelementptr inbounds %"$$fundef_257_env_427", %"$$fundef_257_env_427"* %"$$fundef_257_envp_1474", i32 0, i32 0
  %"$BoolUtils.negb_1479" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1479", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_257_env_BoolUtils.negb_1478", align 8
  %"$$fundef_257_env_list_1480" = getelementptr inbounds %"$$fundef_257_env_427", %"$$fundef_257_env_427"* %"$$fundef_257_envp_1474", i32 0, i32 1
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_257_env_list_1480", align 8
  %"$$fundef_257_env_ud-registry.listByStr20Contains_1481" = getelementptr inbounds %"$$fundef_257_env_427", %"$$fundef_257_env_427"* %"$$fundef_257_envp_1474", i32 0, i32 2
  %"$ud-registry.listByStr20Contains_1482" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_1482", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_257_env_ud-registry.listByStr20Contains_1481", align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_257_cloval_1477", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_256", align 8, !dbg !104
  %"$$retval_256_1483" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_256", align 8
  ret { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$retval_256_1483"
}

define internal %TName_Bool* @"$fundef_261"(%"$$fundef_261_env_429"* %0, [20 x i8]* %1) !dbg !105 {
entry:
  %bs = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_261_env_ListUtils.list_mem_1420" = getelementptr inbounds %"$$fundef_261_env_429", %"$$fundef_261_env_429"* %0, i32 0, i32 0
  %"$ListUtils.list_mem_envload_1421" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_261_env_ListUtils.list_mem_1420", align 8
  %ListUtils.list_mem = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_envload_1421", { i8*, i8* }** %ListUtils.list_mem, align 8
  %"$$fundef_261_env_list_1422" = getelementptr inbounds %"$$fundef_261_env_429", %"$$fundef_261_env_429"* %0, i32 0, i32 1
  %"$list_envload_1423" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_261_env_list_1422", align 8
  %list = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$list_envload_1423", %TName_List_ByStr20** %list, align 8
  %"$$fundef_261_env_ud-registry.eqByStr20_1424" = getelementptr inbounds %"$$fundef_261_env_429", %"$$fundef_261_env_429"* %0, i32 0, i32 2
  %"$ud-registry.eqByStr20_envload_1425" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_261_env_ud-registry.eqByStr20_1424", align 8
  %ud-registry.eqByStr20 = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_envload_1425", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  %"$retval_262" = alloca %TName_Bool*, align 8
  %"$gasrem_1426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1427" = icmp ugt i64 1, %"$gasrem_1426"
  br i1 %"$gascmp_1427", label %"$out_of_gas_1428", label %"$have_gas_1429"

"$out_of_gas_1428":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1429"

"$have_gas_1429":                                 ; preds = %"$out_of_gas_1428", %entry
  %"$consume_1430" = sub i64 %"$gasrem_1426", 1
  store i64 %"$consume_1430", i64* @_gasrem, align 8
  %listMemByStr20 = alloca { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1432" = icmp ugt i64 1, %"$gasrem_1431"
  br i1 %"$gascmp_1432", label %"$out_of_gas_1433", label %"$have_gas_1434"

"$out_of_gas_1433":                               ; preds = %"$have_gas_1429"
  call void @_out_of_gas()
  br label %"$have_gas_1434"

"$have_gas_1434":                                 ; preds = %"$out_of_gas_1433", %"$have_gas_1429"
  %"$consume_1435" = sub i64 %"$gasrem_1431", 1
  store i64 %"$consume_1435", i64* @_gasrem, align 8
  %"$ListUtils.list_mem_1436" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_mem, align 8
  %"$ListUtils.list_mem_1437" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_mem_1436", i32 0
  %"$ListUtils.list_mem_1438" = bitcast { i8*, i8* }* %"$ListUtils.list_mem_1437" to { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_mem_1439" = load { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_mem_1438", align 8
  %"$ListUtils.list_mem_fptr_1440" = extractvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_mem_1439", 0
  %"$ListUtils.list_mem_envptr_1441" = extractvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_mem_1439", 1
  %"$ListUtils.list_mem_call_1442" = call { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_mem_fptr_1440"(i8* %"$ListUtils.list_mem_envptr_1441"), !dbg !106
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_mem_call_1442", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %listMemByStr20, align 8, !dbg !107
  %"$gasrem_1443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1444" = icmp ugt i64 1, %"$gasrem_1443"
  br i1 %"$gascmp_1444", label %"$out_of_gas_1445", label %"$have_gas_1446"

"$out_of_gas_1445":                               ; preds = %"$have_gas_1434"
  call void @_out_of_gas()
  br label %"$have_gas_1446"

"$have_gas_1446":                                 ; preds = %"$out_of_gas_1445", %"$have_gas_1434"
  %"$consume_1447" = sub i64 %"$gasrem_1443", 1
  store i64 %"$consume_1447", i64* @_gasrem, align 8
  %"$listMemByStr20_27" = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$listMemByStr20_1448" = load { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %listMemByStr20, align 8
  %"$listMemByStr20_fptr_1449" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listMemByStr20_1448", 0
  %"$listMemByStr20_envptr_1450" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listMemByStr20_1448", 1
  %"$ud-registry.eqByStr20_1451" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  %"$listMemByStr20_call_1452" = call { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$listMemByStr20_fptr_1449"(i8* %"$listMemByStr20_envptr_1450", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_1451"), !dbg !108
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$listMemByStr20_call_1452", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$listMemByStr20_27", align 8, !dbg !108
  %"$listMemByStr20_28" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$$listMemByStr20_27_1453" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$listMemByStr20_27", align 8
  %"$$listMemByStr20_27_fptr_1454" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$listMemByStr20_27_1453", 0
  %"$$listMemByStr20_27_envptr_1455" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$listMemByStr20_27_1453", 1
  %"$$listMemByStr20_27_bs_1456" = alloca [20 x i8], align 1
  store [20 x i8] %bs, [20 x i8]* %"$$listMemByStr20_27_bs_1456", align 1
  %"$$listMemByStr20_27_call_1457" = call { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_27_fptr_1454"(i8* %"$$listMemByStr20_27_envptr_1455", [20 x i8]* %"$$listMemByStr20_27_bs_1456"), !dbg !108
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_27_call_1457", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listMemByStr20_28", align 8, !dbg !108
  %"$listMemByStr20_29" = alloca %TName_Bool*, align 8
  %"$$listMemByStr20_28_1458" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listMemByStr20_28", align 8
  %"$$listMemByStr20_28_fptr_1459" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_28_1458", 0
  %"$$listMemByStr20_28_envptr_1460" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_28_1458", 1
  %"$list_1461" = load %TName_List_ByStr20*, %TName_List_ByStr20** %list, align 8
  %"$$listMemByStr20_28_call_1462" = call %TName_Bool* %"$$listMemByStr20_28_fptr_1459"(i8* %"$$listMemByStr20_28_envptr_1460", %TName_List_ByStr20* %"$list_1461"), !dbg !108
  store %TName_Bool* %"$$listMemByStr20_28_call_1462", %TName_Bool** %"$listMemByStr20_29", align 8, !dbg !108
  %"$$listMemByStr20_29_1463" = load %TName_Bool*, %TName_Bool** %"$listMemByStr20_29", align 8
  store %TName_Bool* %"$$listMemByStr20_29_1463", %TName_Bool** %"$retval_262", align 8, !dbg !108
  %"$$retval_262_1464" = load %TName_Bool*, %TName_Bool** %"$retval_262", align 8
  ret %TName_Bool* %"$$retval_262_1464"
}

define internal { %TName_Bool* (i8*, [20 x i8]*)*, i8* } @"$fundef_259"(%"$$fundef_259_env_430"* %0, %TName_List_ByStr20* %1) !dbg !109 {
entry:
  %"$$fundef_259_env_ListUtils.list_mem_1401" = getelementptr inbounds %"$$fundef_259_env_430", %"$$fundef_259_env_430"* %0, i32 0, i32 0
  %"$ListUtils.list_mem_envload_1402" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_259_env_ListUtils.list_mem_1401", align 8
  %ListUtils.list_mem = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_envload_1402", { i8*, i8* }** %ListUtils.list_mem, align 8
  %"$$fundef_259_env_ud-registry.eqByStr20_1403" = getelementptr inbounds %"$$fundef_259_env_430", %"$$fundef_259_env_430"* %0, i32 0, i32 1
  %"$ud-registry.eqByStr20_envload_1404" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_259_env_ud-registry.eqByStr20_1403", align 8
  %ud-registry.eqByStr20 = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_envload_1404", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  %"$retval_260" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1406" = icmp ugt i64 1, %"$gasrem_1405"
  br i1 %"$gascmp_1406", label %"$out_of_gas_1407", label %"$have_gas_1408"

"$out_of_gas_1407":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1408"

"$have_gas_1408":                                 ; preds = %"$out_of_gas_1407", %entry
  %"$consume_1409" = sub i64 %"$gasrem_1405", 1
  store i64 %"$consume_1409", i64* @_gasrem, align 8
  %"$$fundef_261_envp_1410_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_261_envp_1410_salloc" = call i8* @_salloc(i8* %"$$fundef_261_envp_1410_load", i64 32)
  %"$$fundef_261_envp_1410" = bitcast i8* %"$$fundef_261_envp_1410_salloc" to %"$$fundef_261_env_429"*
  %"$$fundef_261_env_voidp_1412" = bitcast %"$$fundef_261_env_429"* %"$$fundef_261_envp_1410" to i8*
  %"$$fundef_261_cloval_1413" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_261_env_429"*, [20 x i8]*)* @"$fundef_261" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_261_env_voidp_1412", 1
  %"$$fundef_261_env_ListUtils.list_mem_1414" = getelementptr inbounds %"$$fundef_261_env_429", %"$$fundef_261_env_429"* %"$$fundef_261_envp_1410", i32 0, i32 0
  %"$ListUtils.list_mem_1415" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_mem, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_1415", { i8*, i8* }** %"$$fundef_261_env_ListUtils.list_mem_1414", align 8
  %"$$fundef_261_env_list_1416" = getelementptr inbounds %"$$fundef_261_env_429", %"$$fundef_261_env_429"* %"$$fundef_261_envp_1410", i32 0, i32 1
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_261_env_list_1416", align 8
  %"$$fundef_261_env_ud-registry.eqByStr20_1417" = getelementptr inbounds %"$$fundef_261_env_429", %"$$fundef_261_env_429"* %"$$fundef_261_envp_1410", i32 0, i32 2
  %"$ud-registry.eqByStr20_1418" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_1418", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_261_env_ud-registry.eqByStr20_1417", align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_261_cloval_1413", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_260", align 8, !dbg !110
  %"$$retval_260_1419" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_260", align 8
  ret { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$retval_260_1419"
}

define internal %TName_Bool* @"$fundef_265"(%"$$fundef_265_env_431"* %0, [20 x i8]* %1) !dbg !111 {
entry:
  %bs2 = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_265_env_bs1_1391" = getelementptr inbounds %"$$fundef_265_env_431", %"$$fundef_265_env_431"* %0, i32 0, i32 0
  %"$bs1_envload_1392" = load [20 x i8], [20 x i8]* %"$$fundef_265_env_bs1_1391", align 1
  %bs1 = alloca [20 x i8], align 1
  store [20 x i8] %"$bs1_envload_1392", [20 x i8]* %bs1, align 1
  %"$retval_266" = alloca %TName_Bool*, align 8
  %"$execptr_load_1393" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_1394" = alloca [20 x i8], align 1
  %"$bs1_1395" = load [20 x i8], [20 x i8]* %bs1, align 1
  store [20 x i8] %"$bs1_1395", [20 x i8]* %"$eq_bs1_1394", align 1
  %"$$eq_bs1_1394_1396" = bitcast [20 x i8]* %"$eq_bs1_1394" to i8*
  %"$eq_bs2_1397" = alloca [20 x i8], align 1
  store [20 x i8] %bs2, [20 x i8]* %"$eq_bs2_1397", align 1
  %"$$eq_bs2_1397_1398" = bitcast [20 x i8]* %"$eq_bs2_1397" to i8*
  %"$eq_call_1399" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_1393", i32 20, i8* %"$$eq_bs1_1394_1396", i8* %"$$eq_bs2_1397_1398")
  store %TName_Bool* %"$eq_call_1399", %TName_Bool** %"$retval_266", align 8, !dbg !112
  %"$$retval_266_1400" = load %TName_Bool*, %TName_Bool** %"$retval_266", align 8
  ret %TName_Bool* %"$$retval_266_1400"
}

define internal { %TName_Bool* (i8*, [20 x i8]*)*, i8* } @"$fundef_263"(%"$$fundef_263_env_432"* %0, [20 x i8]* %1) !dbg !113 {
entry:
  %bs1 = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_264" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1381" = icmp ugt i64 1, %"$gasrem_1380"
  br i1 %"$gascmp_1381", label %"$out_of_gas_1382", label %"$have_gas_1383"

"$out_of_gas_1382":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1383"

"$have_gas_1383":                                 ; preds = %"$out_of_gas_1382", %entry
  %"$consume_1384" = sub i64 %"$gasrem_1380", 1
  store i64 %"$consume_1384", i64* @_gasrem, align 8
  %"$$fundef_265_envp_1385_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_265_envp_1385_salloc" = call i8* @_salloc(i8* %"$$fundef_265_envp_1385_load", i64 20)
  %"$$fundef_265_envp_1385" = bitcast i8* %"$$fundef_265_envp_1385_salloc" to %"$$fundef_265_env_431"*
  %"$$fundef_265_env_voidp_1387" = bitcast %"$$fundef_265_env_431"* %"$$fundef_265_envp_1385" to i8*
  %"$$fundef_265_cloval_1388" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_265_env_431"*, [20 x i8]*)* @"$fundef_265" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_265_env_voidp_1387", 1
  %"$$fundef_265_env_bs1_1389" = getelementptr inbounds %"$$fundef_265_env_431", %"$$fundef_265_env_431"* %"$$fundef_265_envp_1385", i32 0, i32 0
  store [20 x i8] %bs1, [20 x i8]* %"$$fundef_265_env_bs1_1389", align 1
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_265_cloval_1388", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_264", align 8, !dbg !114
  %"$$retval_264_1390" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_264", align 8
  ret { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$retval_264_1390"
}

define internal %TName_List_Message* @"$fundef_267"(%"$$fundef_267_env_433"* %0, i8* %1) !dbg !115 {
entry:
  %"$$fundef_267_env_ud-registry.nilMessage_1366" = getelementptr inbounds %"$$fundef_267_env_433", %"$$fundef_267_env_433"* %0, i32 0, i32 0
  %"$ud-registry.nilMessage_envload_1367" = load %TName_List_Message*, %TName_List_Message** %"$$fundef_267_env_ud-registry.nilMessage_1366", align 8
  %ud-registry.nilMessage = alloca %TName_List_Message*, align 8
  store %TName_List_Message* %"$ud-registry.nilMessage_envload_1367", %TName_List_Message** %ud-registry.nilMessage, align 8
  %"$retval_268" = alloca %TName_List_Message*, align 8
  %"$gasrem_1368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1369" = icmp ugt i64 1, %"$gasrem_1368"
  br i1 %"$gascmp_1369", label %"$out_of_gas_1370", label %"$have_gas_1371"

"$out_of_gas_1370":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1371"

"$have_gas_1371":                                 ; preds = %"$out_of_gas_1370", %entry
  %"$consume_1372" = sub i64 %"$gasrem_1368", 1
  store i64 %"$consume_1372", i64* @_gasrem, align 8
  %"$ud-registry.nilMessage_1373" = load %TName_List_Message*, %TName_List_Message** %ud-registry.nilMessage, align 8
  %"$adtval_1374_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1374_salloc" = call i8* @_salloc(i8* %"$adtval_1374_load", i64 17)
  %"$adtval_1374" = bitcast i8* %"$adtval_1374_salloc" to %CName_Cons_Message*
  %"$adtgep_1375" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1374", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1375", align 1
  %"$adtgep_1376" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1374", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_1376", align 8
  %"$adtgep_1377" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1374", i32 0, i32 2
  store %TName_List_Message* %"$ud-registry.nilMessage_1373", %TName_List_Message** %"$adtgep_1377", align 8
  %"$adtptr_1378" = bitcast %CName_Cons_Message* %"$adtval_1374" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_1378", %TName_List_Message** %"$retval_268", align 8, !dbg !116
  %"$$retval_268_1379" = load %TName_List_Message*, %TName_List_Message** %"$retval_268", align 8
  ret %TName_List_Message* %"$$retval_268_1379"
}

define internal { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_179"(%"$$fundef_179_env_434"* %0, [20 x i8]* %1) !dbg !117 {
entry:
  %m = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_179_env_ListUtils.list_exists_1317" = getelementptr inbounds %"$$fundef_179_env_434", %"$$fundef_179_env_434"* %0, i32 0, i32 0
  %"$ListUtils.list_exists_envload_1318" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_179_env_ListUtils.list_exists_1317", align 8
  %ListUtils.list_exists = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_envload_1318", { i8*, i8* }** %ListUtils.list_exists, align 8
  %"$$fundef_179_env_f_1319" = getelementptr inbounds %"$$fundef_179_env_434", %"$$fundef_179_env_434"* %0, i32 0, i32 1
  %"$f_envload_1320" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_179_env_f_1319", align 8
  %f = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_envload_1320", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$retval_180" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_1321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1322" = icmp ugt i64 1, %"$gasrem_1321"
  br i1 %"$gascmp_1322", label %"$out_of_gas_1323", label %"$have_gas_1324"

"$out_of_gas_1323":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1324"

"$have_gas_1324":                                 ; preds = %"$out_of_gas_1323", %entry
  %"$consume_1325" = sub i64 %"$gasrem_1321", 1
  store i64 %"$consume_1325", i64* @_gasrem, align 8
  %ex_pred = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1327" = icmp ugt i64 1, %"$gasrem_1326"
  br i1 %"$gascmp_1327", label %"$out_of_gas_1328", label %"$have_gas_1329"

"$out_of_gas_1328":                               ; preds = %"$have_gas_1324"
  call void @_out_of_gas()
  br label %"$have_gas_1329"

"$have_gas_1329":                                 ; preds = %"$out_of_gas_1328", %"$have_gas_1324"
  %"$consume_1330" = sub i64 %"$gasrem_1326", 1
  store i64 %"$consume_1330", i64* @_gasrem, align 8
  %"$f_25" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$f_1331" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$f_fptr_1332" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_1331", 0
  %"$f_envptr_1333" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_1331", 1
  %"$f_m_1334" = alloca [20 x i8], align 1
  store [20 x i8] %m, [20 x i8]* %"$f_m_1334", align 1
  %"$f_call_1335" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_fptr_1332"(i8* %"$f_envptr_1333", [20 x i8]* %"$f_m_1334"), !dbg !119
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_call_1335", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$f_25", align 8, !dbg !119
  %"$$f_25_1336" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$f_25", align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$f_25_1336", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %ex_pred, align 8, !dbg !119
  %"$gasrem_1337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1338" = icmp ugt i64 1, %"$gasrem_1337"
  br i1 %"$gascmp_1338", label %"$out_of_gas_1339", label %"$have_gas_1340"

"$out_of_gas_1339":                               ; preds = %"$have_gas_1329"
  call void @_out_of_gas()
  br label %"$have_gas_1340"

"$have_gas_1340":                                 ; preds = %"$out_of_gas_1339", %"$have_gas_1329"
  %"$consume_1341" = sub i64 %"$gasrem_1337", 1
  store i64 %"$consume_1341", i64* @_gasrem, align 8
  %ex = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1343" = icmp ugt i64 1, %"$gasrem_1342"
  br i1 %"$gascmp_1343", label %"$out_of_gas_1344", label %"$have_gas_1345"

"$out_of_gas_1344":                               ; preds = %"$have_gas_1340"
  call void @_out_of_gas()
  br label %"$have_gas_1345"

"$have_gas_1345":                                 ; preds = %"$out_of_gas_1344", %"$have_gas_1340"
  %"$consume_1346" = sub i64 %"$gasrem_1342", 1
  store i64 %"$consume_1346", i64* @_gasrem, align 8
  %"$ListUtils.list_exists_1347" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_exists, align 8
  %"$ListUtils.list_exists_1348" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_exists_1347", i32 0
  %"$ListUtils.list_exists_1349" = bitcast { i8*, i8* }* %"$ListUtils.list_exists_1348" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_exists_1350" = load { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_exists_1349", align 8
  %"$ListUtils.list_exists_fptr_1351" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_exists_1350", 0
  %"$ListUtils.list_exists_envptr_1352" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_exists_1350", 1
  %"$ListUtils.list_exists_call_1353" = call { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_exists_fptr_1351"(i8* %"$ListUtils.list_exists_envptr_1352"), !dbg !120
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_exists_call_1353", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %ex, align 8, !dbg !121
  %"$gasrem_1354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1355" = icmp ugt i64 1, %"$gasrem_1354"
  br i1 %"$gascmp_1355", label %"$out_of_gas_1356", label %"$have_gas_1357"

"$out_of_gas_1356":                               ; preds = %"$have_gas_1345"
  call void @_out_of_gas()
  br label %"$have_gas_1357"

"$have_gas_1357":                                 ; preds = %"$out_of_gas_1356", %"$have_gas_1345"
  %"$consume_1358" = sub i64 %"$gasrem_1354", 1
  store i64 %"$consume_1358", i64* @_gasrem, align 8
  %"$ex_26" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$ex_1359" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %ex, align 8
  %"$ex_fptr_1360" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ex_1359", 0
  %"$ex_envptr_1361" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ex_1359", 1
  %"$ex_pred_1362" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %ex_pred, align 8
  %"$ex_call_1363" = call { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$ex_fptr_1360"(i8* %"$ex_envptr_1361", { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ex_pred_1362"), !dbg !122
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$ex_call_1363", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$ex_26", align 8, !dbg !122
  %"$$ex_26_1364" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$ex_26", align 8
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$ex_26_1364", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_180", align 8, !dbg !122
  %"$$retval_180_1365" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_180", align 8
  ret { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_180_1365"
}

define internal { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_177"(%"$$fundef_177_env_435"* %0, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1) !dbg !123 {
entry:
  %"$$fundef_177_env_ListUtils.list_exists_1302" = getelementptr inbounds %"$$fundef_177_env_435", %"$$fundef_177_env_435"* %0, i32 0, i32 0
  %"$ListUtils.list_exists_envload_1303" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_177_env_ListUtils.list_exists_1302", align 8
  %ListUtils.list_exists = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_envload_1303", { i8*, i8* }** %ListUtils.list_exists, align 8
  %"$retval_178" = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1305" = icmp ugt i64 1, %"$gasrem_1304"
  br i1 %"$gascmp_1305", label %"$out_of_gas_1306", label %"$have_gas_1307"

"$out_of_gas_1306":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1307"

"$have_gas_1307":                                 ; preds = %"$out_of_gas_1306", %entry
  %"$consume_1308" = sub i64 %"$gasrem_1304", 1
  store i64 %"$consume_1308", i64* @_gasrem, align 8
  %"$$fundef_179_envp_1309_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_179_envp_1309_salloc" = call i8* @_salloc(i8* %"$$fundef_179_envp_1309_load", i64 24)
  %"$$fundef_179_envp_1309" = bitcast i8* %"$$fundef_179_envp_1309_salloc" to %"$$fundef_179_env_434"*
  %"$$fundef_179_env_voidp_1311" = bitcast %"$$fundef_179_env_434"* %"$$fundef_179_envp_1309" to i8*
  %"$$fundef_179_cloval_1312" = insertvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_179_env_434"*, [20 x i8]*)* @"$fundef_179" to { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_179_env_voidp_1311", 1
  %"$$fundef_179_env_ListUtils.list_exists_1313" = getelementptr inbounds %"$$fundef_179_env_434", %"$$fundef_179_env_434"* %"$$fundef_179_envp_1309", i32 0, i32 0
  %"$ListUtils.list_exists_1314" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_exists, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_1314", { i8*, i8* }** %"$$fundef_179_env_ListUtils.list_exists_1313", align 8
  %"$$fundef_179_env_f_1315" = getelementptr inbounds %"$$fundef_179_env_434", %"$$fundef_179_env_434"* %"$$fundef_179_envp_1309", i32 0, i32 1
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_179_env_f_1315", align 8
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_179_cloval_1312", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_178", align 8, !dbg !124
  %"$$retval_178_1316" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_178", align 8
  ret { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_178_1316"
}

define internal { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_175"(%"$$fundef_175_env_436"* %0) !dbg !125 {
entry:
  %"$$fundef_175_env_ListUtils.list_exists_1288" = getelementptr inbounds %"$$fundef_175_env_436", %"$$fundef_175_env_436"* %0, i32 0, i32 0
  %"$ListUtils.list_exists_envload_1289" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_175_env_ListUtils.list_exists_1288", align 8
  %ListUtils.list_exists = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_envload_1289", { i8*, i8* }** %ListUtils.list_exists, align 8
  %"$retval_176" = alloca { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1291" = icmp ugt i64 1, %"$gasrem_1290"
  br i1 %"$gascmp_1291", label %"$out_of_gas_1292", label %"$have_gas_1293"

"$out_of_gas_1292":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1293"

"$have_gas_1293":                                 ; preds = %"$out_of_gas_1292", %entry
  %"$consume_1294" = sub i64 %"$gasrem_1290", 1
  store i64 %"$consume_1294", i64* @_gasrem, align 8
  %"$$fundef_177_envp_1295_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_177_envp_1295_salloc" = call i8* @_salloc(i8* %"$$fundef_177_envp_1295_load", i64 8)
  %"$$fundef_177_envp_1295" = bitcast i8* %"$$fundef_177_envp_1295_salloc" to %"$$fundef_177_env_435"*
  %"$$fundef_177_env_voidp_1297" = bitcast %"$$fundef_177_env_435"* %"$$fundef_177_envp_1295" to i8*
  %"$$fundef_177_cloval_1298" = insertvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })* bitcast ({ { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_177_env_435"*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })* @"$fundef_177" to { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*), i8* undef }, i8* %"$$fundef_177_env_voidp_1297", 1
  %"$$fundef_177_env_ListUtils.list_exists_1299" = getelementptr inbounds %"$$fundef_177_env_435", %"$$fundef_177_env_435"* %"$$fundef_177_envp_1295", i32 0, i32 0
  %"$ListUtils.list_exists_1300" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_exists, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_1300", { i8*, i8* }** %"$$fundef_177_env_ListUtils.list_exists_1299", align 8
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_177_cloval_1298", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_176", align 8, !dbg !126
  %"$$retval_176_1301" = load { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_176", align 8
  ret { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_176_1301"
}

define internal %TName_Bool* @"$fundef_185"(%"$$fundef_185_env_437"* %0, %TName_List_ByStr20* %1) !dbg !127 {
entry:
  %"$$fundef_185_env_ListUtils.list_find_1214" = getelementptr inbounds %"$$fundef_185_env_437", %"$$fundef_185_env_437"* %0, i32 0, i32 0
  %"$ListUtils.list_find_envload_1215" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_185_env_ListUtils.list_find_1214", align 8
  %ListUtils.list_find = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_envload_1215", { i8*, i8* }** %ListUtils.list_find, align 8
  %"$$fundef_185_env_p_1216" = getelementptr inbounds %"$$fundef_185_env_437", %"$$fundef_185_env_437"* %0, i32 0, i32 1
  %"$p_envload_1217" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_185_env_p_1216", align 8
  %p = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_envload_1217", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$retval_186" = alloca %TName_Bool*, align 8
  %"$gasrem_1218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1219" = icmp ugt i64 1, %"$gasrem_1218"
  br i1 %"$gascmp_1219", label %"$out_of_gas_1220", label %"$have_gas_1221"

"$out_of_gas_1220":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1221"

"$have_gas_1221":                                 ; preds = %"$out_of_gas_1220", %entry
  %"$consume_1222" = sub i64 %"$gasrem_1218", 1
  store i64 %"$consume_1222", i64* @_gasrem, align 8
  %find = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1224" = icmp ugt i64 1, %"$gasrem_1223"
  br i1 %"$gascmp_1224", label %"$out_of_gas_1225", label %"$have_gas_1226"

"$out_of_gas_1225":                               ; preds = %"$have_gas_1221"
  call void @_out_of_gas()
  br label %"$have_gas_1226"

"$have_gas_1226":                                 ; preds = %"$out_of_gas_1225", %"$have_gas_1221"
  %"$consume_1227" = sub i64 %"$gasrem_1223", 1
  store i64 %"$consume_1227", i64* @_gasrem, align 8
  %"$ListUtils.list_find_1228" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_find, align 8
  %"$ListUtils.list_find_1229" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_find_1228", i32 0
  %"$ListUtils.list_find_1230" = bitcast { i8*, i8* }* %"$ListUtils.list_find_1229" to { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_find_1231" = load { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_find_1230", align 8
  %"$ListUtils.list_find_fptr_1232" = extractvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_find_1231", 0
  %"$ListUtils.list_find_envptr_1233" = extractvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_find_1231", 1
  %"$ListUtils.list_find_call_1234" = call { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_find_fptr_1232"(i8* %"$ListUtils.list_find_envptr_1233"), !dbg !128
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_find_call_1234", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %find, align 8, !dbg !129
  %"$gasrem_1235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1236" = icmp ugt i64 1, %"$gasrem_1235"
  br i1 %"$gascmp_1236", label %"$out_of_gas_1237", label %"$have_gas_1238"

"$out_of_gas_1237":                               ; preds = %"$have_gas_1226"
  call void @_out_of_gas()
  br label %"$have_gas_1238"

"$have_gas_1238":                                 ; preds = %"$out_of_gas_1237", %"$have_gas_1226"
  %"$consume_1239" = sub i64 %"$gasrem_1235", 1
  store i64 %"$consume_1239", i64* @_gasrem, align 8
  %search = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_1240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1241" = icmp ugt i64 1, %"$gasrem_1240"
  br i1 %"$gascmp_1241", label %"$out_of_gas_1242", label %"$have_gas_1243"

"$out_of_gas_1242":                               ; preds = %"$have_gas_1238"
  call void @_out_of_gas()
  br label %"$have_gas_1243"

"$have_gas_1243":                                 ; preds = %"$out_of_gas_1242", %"$have_gas_1238"
  %"$consume_1244" = sub i64 %"$gasrem_1240", 1
  store i64 %"$consume_1244", i64* @_gasrem, align 8
  %"$find_23" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$find_1245" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %find, align 8
  %"$find_fptr_1246" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$find_1245", 0
  %"$find_envptr_1247" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$find_1245", 1
  %"$p_1248" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$find_call_1249" = call { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$find_fptr_1246"(i8* %"$find_envptr_1247", { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_1248"), !dbg !130
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$find_call_1249", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$find_23", align 8, !dbg !130
  %"$find_24" = alloca %TName_Option_ByStr20*, align 8
  %"$$find_23_1250" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$find_23", align 8
  %"$$find_23_fptr_1251" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$find_23_1250", 0
  %"$$find_23_envptr_1252" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$find_23_1250", 1
  %"$$find_23_call_1253" = call %TName_Option_ByStr20* %"$$find_23_fptr_1251"(i8* %"$$find_23_envptr_1252", %TName_List_ByStr20* %1), !dbg !130
  store %TName_Option_ByStr20* %"$$find_23_call_1253", %TName_Option_ByStr20** %"$find_24", align 8, !dbg !130
  %"$$find_24_1254" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$find_24", align 8
  store %TName_Option_ByStr20* %"$$find_24_1254", %TName_Option_ByStr20** %search, align 8, !dbg !130
  %"$gasrem_1255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1256" = icmp ugt i64 2, %"$gasrem_1255"
  br i1 %"$gascmp_1256", label %"$out_of_gas_1257", label %"$have_gas_1258"

"$out_of_gas_1257":                               ; preds = %"$have_gas_1243"
  call void @_out_of_gas()
  br label %"$have_gas_1258"

"$have_gas_1258":                                 ; preds = %"$out_of_gas_1257", %"$have_gas_1243"
  %"$consume_1259" = sub i64 %"$gasrem_1255", 2
  store i64 %"$consume_1259", i64* @_gasrem, align 8
  %"$search_1261" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %search, align 8
  %"$search_tag_1262" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$search_1261", i32 0, i32 0
  %"$search_tag_1263" = load i8, i8* %"$search_tag_1262", align 1
  switch i8 %"$search_tag_1263", label %"$empty_default_1264" [
    i8 0, label %"$Some_1265"
    i8 1, label %"$None_1277"
  ], !dbg !131

"$Some_1265":                                     ; preds = %"$have_gas_1258"
  %"$search_1266" = bitcast %TName_Option_ByStr20* %"$search_1261" to %CName_Some_ByStr20*
  %"$$search_0_gep_1267" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$search_1266", i32 0, i32 1
  %"$$search_0_load_1268" = load [20 x i8], [20 x i8]* %"$$search_0_gep_1267", align 1
  %"$search_0" = alloca [20 x i8], align 1
  store [20 x i8] %"$$search_0_load_1268", [20 x i8]* %"$search_0", align 1
  %"$gasrem_1269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1270" = icmp ugt i64 1, %"$gasrem_1269"
  br i1 %"$gascmp_1270", label %"$out_of_gas_1271", label %"$have_gas_1272"

"$out_of_gas_1271":                               ; preds = %"$Some_1265"
  call void @_out_of_gas()
  br label %"$have_gas_1272"

"$have_gas_1272":                                 ; preds = %"$out_of_gas_1271", %"$Some_1265"
  %"$consume_1273" = sub i64 %"$gasrem_1269", 1
  store i64 %"$consume_1273", i64* @_gasrem, align 8
  %"$adtval_1274_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1274_salloc" = call i8* @_salloc(i8* %"$adtval_1274_load", i64 1)
  %"$adtval_1274" = bitcast i8* %"$adtval_1274_salloc" to %CName_True*
  %"$adtgep_1275" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1274", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1275", align 1
  %"$adtptr_1276" = bitcast %CName_True* %"$adtval_1274" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1276", %TName_Bool** %"$retval_186", align 8, !dbg !132
  br label %"$matchsucc_1260"

"$None_1277":                                     ; preds = %"$have_gas_1258"
  %"$search_1278" = bitcast %TName_Option_ByStr20* %"$search_1261" to %CName_None_ByStr20*
  %"$gasrem_1279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1280" = icmp ugt i64 1, %"$gasrem_1279"
  br i1 %"$gascmp_1280", label %"$out_of_gas_1281", label %"$have_gas_1282"

"$out_of_gas_1281":                               ; preds = %"$None_1277"
  call void @_out_of_gas()
  br label %"$have_gas_1282"

"$have_gas_1282":                                 ; preds = %"$out_of_gas_1281", %"$None_1277"
  %"$consume_1283" = sub i64 %"$gasrem_1279", 1
  store i64 %"$consume_1283", i64* @_gasrem, align 8
  %"$adtval_1284_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1284_salloc" = call i8* @_salloc(i8* %"$adtval_1284_load", i64 1)
  %"$adtval_1284" = bitcast i8* %"$adtval_1284_salloc" to %CName_False*
  %"$adtgep_1285" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1284", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1285", align 1
  %"$adtptr_1286" = bitcast %CName_False* %"$adtval_1284" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1286", %TName_Bool** %"$retval_186", align 8, !dbg !135
  br label %"$matchsucc_1260"

"$empty_default_1264":                            ; preds = %"$have_gas_1258"
  br label %"$matchsucc_1260"

"$matchsucc_1260":                                ; preds = %"$have_gas_1282", %"$have_gas_1272", %"$empty_default_1264"
  %"$$retval_186_1287" = load %TName_Bool*, %TName_Bool** %"$retval_186", align 8
  ret %TName_Bool* %"$$retval_186_1287"
}

define internal { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_183"(%"$$fundef_183_env_438"* %0, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1) !dbg !137 {
entry:
  %"$$fundef_183_env_ListUtils.list_find_1199" = getelementptr inbounds %"$$fundef_183_env_438", %"$$fundef_183_env_438"* %0, i32 0, i32 0
  %"$ListUtils.list_find_envload_1200" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_183_env_ListUtils.list_find_1199", align 8
  %ListUtils.list_find = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_envload_1200", { i8*, i8* }** %ListUtils.list_find, align 8
  %"$retval_184" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_1201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1202" = icmp ugt i64 1, %"$gasrem_1201"
  br i1 %"$gascmp_1202", label %"$out_of_gas_1203", label %"$have_gas_1204"

"$out_of_gas_1203":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1204"

"$have_gas_1204":                                 ; preds = %"$out_of_gas_1203", %entry
  %"$consume_1205" = sub i64 %"$gasrem_1201", 1
  store i64 %"$consume_1205", i64* @_gasrem, align 8
  %"$$fundef_185_envp_1206_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_185_envp_1206_salloc" = call i8* @_salloc(i8* %"$$fundef_185_envp_1206_load", i64 24)
  %"$$fundef_185_envp_1206" = bitcast i8* %"$$fundef_185_envp_1206_salloc" to %"$$fundef_185_env_437"*
  %"$$fundef_185_env_voidp_1208" = bitcast %"$$fundef_185_env_437"* %"$$fundef_185_envp_1206" to i8*
  %"$$fundef_185_cloval_1209" = insertvalue { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } { %TName_Bool* (i8*, %TName_List_ByStr20*)* bitcast (%TName_Bool* (%"$$fundef_185_env_437"*, %TName_List_ByStr20*)* @"$fundef_185" to %TName_Bool* (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_185_env_voidp_1208", 1
  %"$$fundef_185_env_ListUtils.list_find_1210" = getelementptr inbounds %"$$fundef_185_env_437", %"$$fundef_185_env_437"* %"$$fundef_185_envp_1206", i32 0, i32 0
  %"$ListUtils.list_find_1211" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_find, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_1211", { i8*, i8* }** %"$$fundef_185_env_ListUtils.list_find_1210", align 8
  %"$$fundef_185_env_p_1212" = getelementptr inbounds %"$$fundef_185_env_437", %"$$fundef_185_env_437"* %"$$fundef_185_envp_1206", i32 0, i32 1
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_185_env_p_1212", align 8
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_185_cloval_1209", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_184", align 8, !dbg !138
  %"$$retval_184_1213" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_184", align 8
  ret { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_184_1213"
}

define internal { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_181"(%"$$fundef_181_env_439"* %0) !dbg !139 {
entry:
  %"$$fundef_181_env_ListUtils.list_find_1185" = getelementptr inbounds %"$$fundef_181_env_439", %"$$fundef_181_env_439"* %0, i32 0, i32 0
  %"$ListUtils.list_find_envload_1186" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_181_env_ListUtils.list_find_1185", align 8
  %ListUtils.list_find = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_envload_1186", { i8*, i8* }** %ListUtils.list_find, align 8
  %"$retval_182" = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1188" = icmp ugt i64 1, %"$gasrem_1187"
  br i1 %"$gascmp_1188", label %"$out_of_gas_1189", label %"$have_gas_1190"

"$out_of_gas_1189":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1190"

"$have_gas_1190":                                 ; preds = %"$out_of_gas_1189", %entry
  %"$consume_1191" = sub i64 %"$gasrem_1187", 1
  store i64 %"$consume_1191", i64* @_gasrem, align 8
  %"$$fundef_183_envp_1192_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_183_envp_1192_salloc" = call i8* @_salloc(i8* %"$$fundef_183_envp_1192_load", i64 8)
  %"$$fundef_183_envp_1192" = bitcast i8* %"$$fundef_183_envp_1192_salloc" to %"$$fundef_183_env_438"*
  %"$$fundef_183_env_voidp_1194" = bitcast %"$$fundef_183_env_438"* %"$$fundef_183_envp_1192" to i8*
  %"$$fundef_183_cloval_1195" = insertvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* bitcast ({ %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_183_env_438"*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* @"$fundef_183" to { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*), i8* undef }, i8* %"$$fundef_183_env_voidp_1194", 1
  %"$$fundef_183_env_ListUtils.list_find_1196" = getelementptr inbounds %"$$fundef_183_env_438", %"$$fundef_183_env_438"* %"$$fundef_183_envp_1192", i32 0, i32 0
  %"$ListUtils.list_find_1197" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_find, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_1197", { i8*, i8* }** %"$$fundef_183_env_ListUtils.list_find_1196", align 8
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_183_cloval_1195", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_182", align 8, !dbg !140
  %"$$retval_182_1198" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_182", align 8
  ret { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_182_1198"
}

define internal %TName_Option_ByStr20* @"$fundef_195"(%"$$fundef_195_env_440"* %0, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %1) !dbg !141 {
entry:
  %"$$fundef_195_env_init_1127" = getelementptr inbounds %"$$fundef_195_env_440", %"$$fundef_195_env_440"* %0, i32 0, i32 0
  %"$init_envload_1128" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_195_env_init_1127", align 8
  %init = alloca %TName_Option_ByStr20*, align 8
  store %TName_Option_ByStr20* %"$init_envload_1128", %TName_Option_ByStr20** %init, align 8
  %"$$fundef_195_env_p_1129" = getelementptr inbounds %"$$fundef_195_env_440", %"$$fundef_195_env_440"* %0, i32 0, i32 1
  %"$p_envload_1130" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_195_env_p_1129", align 8
  %p = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_envload_1130", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$$fundef_195_env_x_1131" = getelementptr inbounds %"$$fundef_195_env_440", %"$$fundef_195_env_440"* %0, i32 0, i32 2
  %"$x_envload_1132" = load [20 x i8], [20 x i8]* %"$$fundef_195_env_x_1131", align 1
  %x = alloca [20 x i8], align 1
  store [20 x i8] %"$x_envload_1132", [20 x i8]* %x, align 1
  %"$retval_196" = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_1133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1134" = icmp ugt i64 1, %"$gasrem_1133"
  br i1 %"$gascmp_1134", label %"$out_of_gas_1135", label %"$have_gas_1136"

"$out_of_gas_1135":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1136"

"$have_gas_1136":                                 ; preds = %"$out_of_gas_1135", %entry
  %"$consume_1137" = sub i64 %"$gasrem_1133", 1
  store i64 %"$consume_1137", i64* @_gasrem, align 8
  %p_x = alloca %TName_Bool*, align 8
  %"$gasrem_1138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1139" = icmp ugt i64 1, %"$gasrem_1138"
  br i1 %"$gascmp_1139", label %"$out_of_gas_1140", label %"$have_gas_1141"

"$out_of_gas_1140":                               ; preds = %"$have_gas_1136"
  call void @_out_of_gas()
  br label %"$have_gas_1141"

"$have_gas_1141":                                 ; preds = %"$out_of_gas_1140", %"$have_gas_1136"
  %"$consume_1142" = sub i64 %"$gasrem_1138", 1
  store i64 %"$consume_1142", i64* @_gasrem, align 8
  %"$p_19" = alloca %TName_Bool*, align 8
  %"$p_1143" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$p_fptr_1144" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_1143", 0
  %"$p_envptr_1145" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_1143", 1
  %"$p_x_1146" = alloca [20 x i8], align 1
  %"$x_1147" = load [20 x i8], [20 x i8]* %x, align 1
  store [20 x i8] %"$x_1147", [20 x i8]* %"$p_x_1146", align 1
  %"$p_call_1148" = call %TName_Bool* %"$p_fptr_1144"(i8* %"$p_envptr_1145", [20 x i8]* %"$p_x_1146"), !dbg !142
  store %TName_Bool* %"$p_call_1148", %TName_Bool** %"$p_19", align 8, !dbg !142
  %"$$p_19_1149" = load %TName_Bool*, %TName_Bool** %"$p_19", align 8
  store %TName_Bool* %"$$p_19_1149", %TName_Bool** %p_x, align 8, !dbg !142
  %"$gasrem_1150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1151" = icmp ugt i64 2, %"$gasrem_1150"
  br i1 %"$gascmp_1151", label %"$out_of_gas_1152", label %"$have_gas_1153"

"$out_of_gas_1152":                               ; preds = %"$have_gas_1141"
  call void @_out_of_gas()
  br label %"$have_gas_1153"

"$have_gas_1153":                                 ; preds = %"$out_of_gas_1152", %"$have_gas_1141"
  %"$consume_1154" = sub i64 %"$gasrem_1150", 2
  store i64 %"$consume_1154", i64* @_gasrem, align 8
  %"$p_x_1156" = load %TName_Bool*, %TName_Bool** %p_x, align 8
  %"$p_x_tag_1157" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$p_x_1156", i32 0, i32 0
  %"$p_x_tag_1158" = load i8, i8* %"$p_x_tag_1157", align 1
  switch i8 %"$p_x_tag_1158", label %"$empty_default_1159" [
    i8 0, label %"$True_1160"
    i8 1, label %"$False_1172"
  ], !dbg !143

"$True_1160":                                     ; preds = %"$have_gas_1153"
  %"$p_x_1161" = bitcast %TName_Bool* %"$p_x_1156" to %CName_True*
  %"$gasrem_1162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1163" = icmp ugt i64 1, %"$gasrem_1162"
  br i1 %"$gascmp_1163", label %"$out_of_gas_1164", label %"$have_gas_1165"

"$out_of_gas_1164":                               ; preds = %"$True_1160"
  call void @_out_of_gas()
  br label %"$have_gas_1165"

"$have_gas_1165":                                 ; preds = %"$out_of_gas_1164", %"$True_1160"
  %"$consume_1166" = sub i64 %"$gasrem_1162", 1
  store i64 %"$consume_1166", i64* @_gasrem, align 8
  %"$x_1167" = load [20 x i8], [20 x i8]* %x, align 1
  %"$adtval_1168_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1168_salloc" = call i8* @_salloc(i8* %"$adtval_1168_load", i64 21)
  %"$adtval_1168" = bitcast i8* %"$adtval_1168_salloc" to %CName_Some_ByStr20*
  %"$adtgep_1169" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$adtval_1168", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1169", align 1
  %"$adtgep_1170" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$adtval_1168", i32 0, i32 1
  store [20 x i8] %"$x_1167", [20 x i8]* %"$adtgep_1170", align 1
  %"$adtptr_1171" = bitcast %CName_Some_ByStr20* %"$adtval_1168" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$adtptr_1171", %TName_Option_ByStr20** %"$retval_196", align 8, !dbg !144
  br label %"$matchsucc_1155"

"$False_1172":                                    ; preds = %"$have_gas_1153"
  %"$p_x_1173" = bitcast %TName_Bool* %"$p_x_1156" to %CName_False*
  %"$gasrem_1174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1175" = icmp ugt i64 1, %"$gasrem_1174"
  br i1 %"$gascmp_1175", label %"$out_of_gas_1176", label %"$have_gas_1177"

"$out_of_gas_1176":                               ; preds = %"$False_1172"
  call void @_out_of_gas()
  br label %"$have_gas_1177"

"$have_gas_1177":                                 ; preds = %"$out_of_gas_1176", %"$False_1172"
  %"$consume_1178" = sub i64 %"$gasrem_1174", 1
  store i64 %"$consume_1178", i64* @_gasrem, align 8
  %"$recurse_20" = alloca %TName_Option_ByStr20*, align 8
  %"$recurse_fptr_1179" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %1, 0
  %"$recurse_envptr_1180" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %1, 1
  %"$init_1181" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init, align 8
  %"$recurse_call_1182" = call %TName_Option_ByStr20* %"$recurse_fptr_1179"(i8* %"$recurse_envptr_1180", %TName_Option_ByStr20* %"$init_1181"), !dbg !147
  store %TName_Option_ByStr20* %"$recurse_call_1182", %TName_Option_ByStr20** %"$recurse_20", align 8, !dbg !147
  %"$$recurse_20_1183" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$recurse_20", align 8
  store %TName_Option_ByStr20* %"$$recurse_20_1183", %TName_Option_ByStr20** %"$retval_196", align 8, !dbg !147
  br label %"$matchsucc_1155"

"$empty_default_1159":                            ; preds = %"$have_gas_1153"
  br label %"$matchsucc_1155"

"$matchsucc_1155":                                ; preds = %"$have_gas_1177", %"$have_gas_1165", %"$empty_default_1159"
  %"$$retval_196_1184" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$retval_196", align 8
  ret %TName_Option_ByStr20* %"$$retval_196_1184"
}

define internal { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } @"$fundef_193"(%"$$fundef_193_env_441"* %0, [20 x i8]* %1) !dbg !149 {
entry:
  %x = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_193_env_init_1108" = getelementptr inbounds %"$$fundef_193_env_441", %"$$fundef_193_env_441"* %0, i32 0, i32 0
  %"$init_envload_1109" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_193_env_init_1108", align 8
  %init = alloca %TName_Option_ByStr20*, align 8
  store %TName_Option_ByStr20* %"$init_envload_1109", %TName_Option_ByStr20** %init, align 8
  %"$$fundef_193_env_p_1110" = getelementptr inbounds %"$$fundef_193_env_441", %"$$fundef_193_env_441"* %0, i32 0, i32 1
  %"$p_envload_1111" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_193_env_p_1110", align 8
  %p = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_envload_1111", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$retval_194" = alloca { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, align 8
  %"$gasrem_1112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1113" = icmp ugt i64 1, %"$gasrem_1112"
  br i1 %"$gascmp_1113", label %"$out_of_gas_1114", label %"$have_gas_1115"

"$out_of_gas_1114":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1115"

"$have_gas_1115":                                 ; preds = %"$out_of_gas_1114", %entry
  %"$consume_1116" = sub i64 %"$gasrem_1112", 1
  store i64 %"$consume_1116", i64* @_gasrem, align 8
  %"$$fundef_195_envp_1117_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_195_envp_1117_salloc" = call i8* @_salloc(i8* %"$$fundef_195_envp_1117_load", i64 48)
  %"$$fundef_195_envp_1117" = bitcast i8* %"$$fundef_195_envp_1117_salloc" to %"$$fundef_195_env_440"*
  %"$$fundef_195_env_voidp_1119" = bitcast %"$$fundef_195_env_440"* %"$$fundef_195_envp_1117" to i8*
  %"$$fundef_195_cloval_1120" = insertvalue { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })* bitcast (%TName_Option_ByStr20* (%"$$fundef_195_env_440"*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })* @"$fundef_195" to %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*), i8* undef }, i8* %"$$fundef_195_env_voidp_1119", 1
  %"$$fundef_195_env_init_1121" = getelementptr inbounds %"$$fundef_195_env_440", %"$$fundef_195_env_440"* %"$$fundef_195_envp_1117", i32 0, i32 0
  %"$init_1122" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init, align 8
  store %TName_Option_ByStr20* %"$init_1122", %TName_Option_ByStr20** %"$$fundef_195_env_init_1121", align 8
  %"$$fundef_195_env_p_1123" = getelementptr inbounds %"$$fundef_195_env_440", %"$$fundef_195_env_440"* %"$$fundef_195_envp_1117", i32 0, i32 1
  %"$p_1124" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_1124", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_195_env_p_1123", align 8
  %"$$fundef_195_env_x_1125" = getelementptr inbounds %"$$fundef_195_env_440", %"$$fundef_195_env_440"* %"$$fundef_195_envp_1117", i32 0, i32 2
  store [20 x i8] %x, [20 x i8]* %"$$fundef_195_env_x_1125", align 1
  store { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$fundef_195_cloval_1120", { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_194", align 8, !dbg !150
  %"$$retval_194_1126" = load { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_194", align 8
  ret { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$retval_194_1126"
}

define internal { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_191"(%"$$fundef_191_env_442"* %0, %TName_Option_ByStr20* %1) !dbg !151 {
entry:
  %"$$fundef_191_env_init_1090" = getelementptr inbounds %"$$fundef_191_env_442", %"$$fundef_191_env_442"* %0, i32 0, i32 0
  %"$init_envload_1091" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_191_env_init_1090", align 8
  %init = alloca %TName_Option_ByStr20*, align 8
  store %TName_Option_ByStr20* %"$init_envload_1091", %TName_Option_ByStr20** %init, align 8
  %"$$fundef_191_env_p_1092" = getelementptr inbounds %"$$fundef_191_env_442", %"$$fundef_191_env_442"* %0, i32 0, i32 1
  %"$p_envload_1093" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_191_env_p_1092", align 8
  %p = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_envload_1093", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$retval_192" = alloca { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1094" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1095" = icmp ugt i64 1, %"$gasrem_1094"
  br i1 %"$gascmp_1095", label %"$out_of_gas_1096", label %"$have_gas_1097"

"$out_of_gas_1096":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1097"

"$have_gas_1097":                                 ; preds = %"$out_of_gas_1096", %entry
  %"$consume_1098" = sub i64 %"$gasrem_1094", 1
  store i64 %"$consume_1098", i64* @_gasrem, align 8
  %"$$fundef_193_envp_1099_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_193_envp_1099_salloc" = call i8* @_salloc(i8* %"$$fundef_193_envp_1099_load", i64 24)
  %"$$fundef_193_envp_1099" = bitcast i8* %"$$fundef_193_envp_1099_salloc" to %"$$fundef_193_env_441"*
  %"$$fundef_193_env_voidp_1101" = bitcast %"$$fundef_193_env_441"* %"$$fundef_193_envp_1099" to i8*
  %"$$fundef_193_cloval_1102" = insertvalue { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (%"$$fundef_193_env_441"*, [20 x i8]*)* @"$fundef_193" to { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_193_env_voidp_1101", 1
  %"$$fundef_193_env_init_1103" = getelementptr inbounds %"$$fundef_193_env_441", %"$$fundef_193_env_441"* %"$$fundef_193_envp_1099", i32 0, i32 0
  %"$init_1104" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init, align 8
  store %TName_Option_ByStr20* %"$init_1104", %TName_Option_ByStr20** %"$$fundef_193_env_init_1103", align 8
  %"$$fundef_193_env_p_1105" = getelementptr inbounds %"$$fundef_193_env_441", %"$$fundef_193_env_441"* %"$$fundef_193_envp_1099", i32 0, i32 1
  %"$p_1106" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_1106", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_193_env_p_1105", align 8
  store { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_193_cloval_1102", { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_192", align 8, !dbg !152
  %"$$retval_192_1107" = load { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_192", align 8
  ret { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_192_1107"
}

define internal { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_189"(%"$$fundef_189_env_443"* %0, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1) !dbg !153 {
entry:
  %"$$fundef_189_env_list_foldk_1018" = getelementptr inbounds %"$$fundef_189_env_443", %"$$fundef_189_env_443"* %0, i32 0, i32 0
  %"$list_foldk_envload_1019" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_189_env_list_foldk_1018", align 8
  %list_foldk = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldk_envload_1019", { i8*, i8* }** %list_foldk, align 8
  %"$retval_190" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_1020" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1021" = icmp ugt i64 1, %"$gasrem_1020"
  br i1 %"$gascmp_1021", label %"$out_of_gas_1022", label %"$have_gas_1023"

"$out_of_gas_1022":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1023"

"$have_gas_1023":                                 ; preds = %"$out_of_gas_1022", %entry
  %"$consume_1024" = sub i64 %"$gasrem_1020", 1
  store i64 %"$consume_1024", i64* @_gasrem, align 8
  %foldk = alloca { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, align 8
  %"$gasrem_1025" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1026" = icmp ugt i64 1, %"$gasrem_1025"
  br i1 %"$gascmp_1026", label %"$out_of_gas_1027", label %"$have_gas_1028"

"$out_of_gas_1027":                               ; preds = %"$have_gas_1023"
  call void @_out_of_gas()
  br label %"$have_gas_1028"

"$have_gas_1028":                                 ; preds = %"$out_of_gas_1027", %"$have_gas_1023"
  %"$consume_1029" = sub i64 %"$gasrem_1025", 1
  store i64 %"$consume_1029", i64* @_gasrem, align 8
  %"$list_foldk_1030" = load { i8*, i8* }*, { i8*, i8* }** %list_foldk, align 8
  %"$list_foldk_1031" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldk_1030", i32 0
  %"$list_foldk_1032" = bitcast { i8*, i8* }* %"$list_foldk_1031" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldk_1033" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldk_1032", align 8
  %"$list_foldk_fptr_1034" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldk_1033", 0
  %"$list_foldk_envptr_1035" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldk_1033", 1
  %"$list_foldk_call_1036" = call { i8*, i8* }* %"$list_foldk_fptr_1034"(i8* %"$list_foldk_envptr_1035"), !dbg !154
  %"$list_foldk_1037" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldk_call_1036", i32 2
  %"$list_foldk_1038" = bitcast { i8*, i8* }* %"$list_foldk_1037" to { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldk_1039" = load { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldk_1038", align 8
  %"$list_foldk_fptr_1040" = extractvalue { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldk_1039", 0
  %"$list_foldk_envptr_1041" = extractvalue { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldk_1039", 1
  %"$list_foldk_call_1042" = call { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$list_foldk_fptr_1040"(i8* %"$list_foldk_envptr_1041"), !dbg !154
  store { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$list_foldk_call_1042", { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %foldk, align 8, !dbg !155
  %"$gasrem_1043" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1044" = icmp ugt i64 1, %"$gasrem_1043"
  br i1 %"$gascmp_1044", label %"$out_of_gas_1045", label %"$have_gas_1046"

"$out_of_gas_1045":                               ; preds = %"$have_gas_1028"
  call void @_out_of_gas()
  br label %"$have_gas_1046"

"$have_gas_1046":                                 ; preds = %"$out_of_gas_1045", %"$have_gas_1028"
  %"$consume_1047" = sub i64 %"$gasrem_1043", 1
  store i64 %"$consume_1047", i64* @_gasrem, align 8
  %init = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_1048" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1049" = icmp ugt i64 1, %"$gasrem_1048"
  br i1 %"$gascmp_1049", label %"$out_of_gas_1050", label %"$have_gas_1051"

"$out_of_gas_1050":                               ; preds = %"$have_gas_1046"
  call void @_out_of_gas()
  br label %"$have_gas_1051"

"$have_gas_1051":                                 ; preds = %"$out_of_gas_1050", %"$have_gas_1046"
  %"$consume_1052" = sub i64 %"$gasrem_1048", 1
  store i64 %"$consume_1052", i64* @_gasrem, align 8
  %"$adtval_1053_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1053_salloc" = call i8* @_salloc(i8* %"$adtval_1053_load", i64 1)
  %"$adtval_1053" = bitcast i8* %"$adtval_1053_salloc" to %CName_None_ByStr20*
  %"$adtgep_1054" = getelementptr inbounds %CName_None_ByStr20, %CName_None_ByStr20* %"$adtval_1053", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1054", align 1
  %"$adtptr_1055" = bitcast %CName_None_ByStr20* %"$adtval_1053" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$adtptr_1055", %TName_Option_ByStr20** %init, align 8, !dbg !156
  %"$gasrem_1056" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1057" = icmp ugt i64 1, %"$gasrem_1056"
  br i1 %"$gascmp_1057", label %"$out_of_gas_1058", label %"$have_gas_1059"

"$out_of_gas_1058":                               ; preds = %"$have_gas_1051"
  call void @_out_of_gas()
  br label %"$have_gas_1059"

"$have_gas_1059":                                 ; preds = %"$out_of_gas_1058", %"$have_gas_1051"
  %"$consume_1060" = sub i64 %"$gasrem_1056", 1
  store i64 %"$consume_1060", i64* @_gasrem, align 8
  %predicate_step = alloca { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$gasrem_1061" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1062" = icmp ugt i64 1, %"$gasrem_1061"
  br i1 %"$gascmp_1062", label %"$out_of_gas_1063", label %"$have_gas_1064"

"$out_of_gas_1063":                               ; preds = %"$have_gas_1059"
  call void @_out_of_gas()
  br label %"$have_gas_1064"

"$have_gas_1064":                                 ; preds = %"$out_of_gas_1063", %"$have_gas_1059"
  %"$consume_1065" = sub i64 %"$gasrem_1061", 1
  store i64 %"$consume_1065", i64* @_gasrem, align 8
  %"$$fundef_191_envp_1066_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_191_envp_1066_salloc" = call i8* @_salloc(i8* %"$$fundef_191_envp_1066_load", i64 24)
  %"$$fundef_191_envp_1066" = bitcast i8* %"$$fundef_191_envp_1066_salloc" to %"$$fundef_191_env_442"*
  %"$$fundef_191_env_voidp_1068" = bitcast %"$$fundef_191_env_442"* %"$$fundef_191_envp_1066" to i8*
  %"$$fundef_191_cloval_1069" = insertvalue { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)* bitcast ({ { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_191_env_442"*, %TName_Option_ByStr20*)* @"$fundef_191" to { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_191_env_voidp_1068", 1
  %"$$fundef_191_env_init_1070" = getelementptr inbounds %"$$fundef_191_env_442", %"$$fundef_191_env_442"* %"$$fundef_191_envp_1066", i32 0, i32 0
  %"$init_1071" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init, align 8
  store %TName_Option_ByStr20* %"$init_1071", %TName_Option_ByStr20** %"$$fundef_191_env_init_1070", align 8
  %"$$fundef_191_env_p_1072" = getelementptr inbounds %"$$fundef_191_env_442", %"$$fundef_191_env_442"* %"$$fundef_191_envp_1066", i32 0, i32 1
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_191_env_p_1072", align 8
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_191_cloval_1069", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %predicate_step, align 8, !dbg !157
  %"$gasrem_1073" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1074" = icmp ugt i64 1, %"$gasrem_1073"
  br i1 %"$gascmp_1074", label %"$out_of_gas_1075", label %"$have_gas_1076"

"$out_of_gas_1075":                               ; preds = %"$have_gas_1064"
  call void @_out_of_gas()
  br label %"$have_gas_1076"

"$have_gas_1076":                                 ; preds = %"$out_of_gas_1075", %"$have_gas_1064"
  %"$consume_1077" = sub i64 %"$gasrem_1073", 1
  store i64 %"$consume_1077", i64* @_gasrem, align 8
  %"$foldk_21" = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$foldk_1078" = load { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %foldk, align 8
  %"$foldk_fptr_1079" = extractvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$foldk_1078", 0
  %"$foldk_envptr_1080" = extractvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$foldk_1078", 1
  %"$predicate_step_1081" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %predicate_step, align 8
  %"$foldk_call_1082" = call { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$foldk_fptr_1079"(i8* %"$foldk_envptr_1080", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$predicate_step_1081"), !dbg !158
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$foldk_call_1082", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$foldk_21", align 8, !dbg !158
  %"$foldk_22" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$$foldk_21_1083" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$foldk_21", align 8
  %"$$foldk_21_fptr_1084" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$foldk_21_1083", 0
  %"$$foldk_21_envptr_1085" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$foldk_21_1083", 1
  %"$init_1086" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init, align 8
  %"$$foldk_21_call_1087" = call { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldk_21_fptr_1084"(i8* %"$$foldk_21_envptr_1085", %TName_Option_ByStr20* %"$init_1086"), !dbg !158
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldk_21_call_1087", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldk_22", align 8, !dbg !158
  %"$$foldk_22_1088" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldk_22", align 8
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldk_22_1088", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_190", align 8, !dbg !158
  %"$$retval_190_1089" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_190", align 8
  ret { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_190_1089"
}

define internal { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_187"(%"$$fundef_187_env_444"* %0) !dbg !159 {
entry:
  %"$$fundef_187_env_list_foldk_1004" = getelementptr inbounds %"$$fundef_187_env_444", %"$$fundef_187_env_444"* %0, i32 0, i32 0
  %"$list_foldk_envload_1005" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_187_env_list_foldk_1004", align 8
  %list_foldk = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldk_envload_1005", { i8*, i8* }** %list_foldk, align 8
  %"$retval_188" = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1006" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1007" = icmp ugt i64 1, %"$gasrem_1006"
  br i1 %"$gascmp_1007", label %"$out_of_gas_1008", label %"$have_gas_1009"

"$out_of_gas_1008":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1009"

"$have_gas_1009":                                 ; preds = %"$out_of_gas_1008", %entry
  %"$consume_1010" = sub i64 %"$gasrem_1006", 1
  store i64 %"$consume_1010", i64* @_gasrem, align 8
  %"$$fundef_189_envp_1011_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_189_envp_1011_salloc" = call i8* @_salloc(i8* %"$$fundef_189_envp_1011_load", i64 8)
  %"$$fundef_189_envp_1011" = bitcast i8* %"$$fundef_189_envp_1011_salloc" to %"$$fundef_189_env_443"*
  %"$$fundef_189_env_voidp_1013" = bitcast %"$$fundef_189_env_443"* %"$$fundef_189_envp_1011" to i8*
  %"$$fundef_189_cloval_1014" = insertvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* bitcast ({ %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_189_env_443"*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* @"$fundef_189" to { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*), i8* undef }, i8* %"$$fundef_189_env_voidp_1013", 1
  %"$$fundef_189_env_list_foldk_1015" = getelementptr inbounds %"$$fundef_189_env_443", %"$$fundef_189_env_443"* %"$$fundef_189_envp_1011", i32 0, i32 0
  %"$list_foldk_1016" = load { i8*, i8* }*, { i8*, i8* }** %list_foldk, align 8
  store { i8*, i8* }* %"$list_foldk_1016", { i8*, i8* }** %"$$fundef_189_env_list_foldk_1015", align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_189_cloval_1014", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_188", align 8, !dbg !160
  %"$$retval_188_1017" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_188", align 8
  ret { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_188_1017"
}

define internal %TName_List_ByStr20* @"$fundef_203"(%"$$fundef_203_env_445"* %0, %TName_List_ByStr20* %1) !dbg !161 {
entry:
  %"$$fundef_203_env_f_952" = getelementptr inbounds %"$$fundef_203_env_445", %"$$fundef_203_env_445"* %0, i32 0, i32 0
  %"$f_envload_953" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_203_env_f_952", align 8
  %f = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_envload_953", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$$fundef_203_env_h_954" = getelementptr inbounds %"$$fundef_203_env_445", %"$$fundef_203_env_445"* %0, i32 0, i32 1
  %"$h_envload_955" = load [20 x i8], [20 x i8]* %"$$fundef_203_env_h_954", align 1
  %h = alloca [20 x i8], align 1
  store [20 x i8] %"$h_envload_955", [20 x i8]* %h, align 1
  %"$retval_204" = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_956" = load i64, i64* @_gasrem, align 8
  %"$gascmp_957" = icmp ugt i64 1, %"$gasrem_956"
  br i1 %"$gascmp_957", label %"$out_of_gas_958", label %"$have_gas_959"

"$out_of_gas_958":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_959"

"$have_gas_959":                                  ; preds = %"$out_of_gas_958", %entry
  %"$consume_960" = sub i64 %"$gasrem_956", 1
  store i64 %"$consume_960", i64* @_gasrem, align 8
  %h1 = alloca %TName_Bool*, align 8
  %"$gasrem_961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_962" = icmp ugt i64 1, %"$gasrem_961"
  br i1 %"$gascmp_962", label %"$out_of_gas_963", label %"$have_gas_964"

"$out_of_gas_963":                                ; preds = %"$have_gas_959"
  call void @_out_of_gas()
  br label %"$have_gas_964"

"$have_gas_964":                                  ; preds = %"$out_of_gas_963", %"$have_gas_959"
  %"$consume_965" = sub i64 %"$gasrem_961", 1
  store i64 %"$consume_965", i64* @_gasrem, align 8
  %"$f_16" = alloca %TName_Bool*, align 8
  %"$f_966" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$f_fptr_967" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_966", 0
  %"$f_envptr_968" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_966", 1
  %"$f_h_969" = alloca [20 x i8], align 1
  %"$h_970" = load [20 x i8], [20 x i8]* %h, align 1
  store [20 x i8] %"$h_970", [20 x i8]* %"$f_h_969", align 1
  %"$f_call_971" = call %TName_Bool* %"$f_fptr_967"(i8* %"$f_envptr_968", [20 x i8]* %"$f_h_969"), !dbg !162
  store %TName_Bool* %"$f_call_971", %TName_Bool** %"$f_16", align 8, !dbg !162
  %"$$f_16_972" = load %TName_Bool*, %TName_Bool** %"$f_16", align 8
  store %TName_Bool* %"$$f_16_972", %TName_Bool** %h1, align 8, !dbg !162
  %"$gasrem_973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_974" = icmp ugt i64 2, %"$gasrem_973"
  br i1 %"$gascmp_974", label %"$out_of_gas_975", label %"$have_gas_976"

"$out_of_gas_975":                                ; preds = %"$have_gas_964"
  call void @_out_of_gas()
  br label %"$have_gas_976"

"$have_gas_976":                                  ; preds = %"$out_of_gas_975", %"$have_gas_964"
  %"$consume_977" = sub i64 %"$gasrem_973", 2
  store i64 %"$consume_977", i64* @_gasrem, align 8
  %"$h1_979" = load %TName_Bool*, %TName_Bool** %h1, align 8
  %"$h1_tag_980" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$h1_979", i32 0, i32 0
  %"$h1_tag_981" = load i8, i8* %"$h1_tag_980", align 1
  switch i8 %"$h1_tag_981", label %"$empty_default_982" [
    i8 0, label %"$True_983"
    i8 1, label %"$False_996"
  ], !dbg !163

"$True_983":                                      ; preds = %"$have_gas_976"
  %"$h1_984" = bitcast %TName_Bool* %"$h1_979" to %CName_True*
  %"$gasrem_985" = load i64, i64* @_gasrem, align 8
  %"$gascmp_986" = icmp ugt i64 1, %"$gasrem_985"
  br i1 %"$gascmp_986", label %"$out_of_gas_987", label %"$have_gas_988"

"$out_of_gas_987":                                ; preds = %"$True_983"
  call void @_out_of_gas()
  br label %"$have_gas_988"

"$have_gas_988":                                  ; preds = %"$out_of_gas_987", %"$True_983"
  %"$consume_989" = sub i64 %"$gasrem_985", 1
  store i64 %"$consume_989", i64* @_gasrem, align 8
  %"$h_990" = load [20 x i8], [20 x i8]* %h, align 1
  %"$adtval_991_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_991_salloc" = call i8* @_salloc(i8* %"$adtval_991_load", i64 29)
  %"$adtval_991" = bitcast i8* %"$adtval_991_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_992" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_991", i32 0, i32 0
  store i8 0, i8* %"$adtgep_992", align 1
  %"$adtgep_993" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_991", i32 0, i32 1
  store [20 x i8] %"$h_990", [20 x i8]* %"$adtgep_993", align 1
  %"$adtgep_994" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_991", i32 0, i32 2
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$adtgep_994", align 8
  %"$adtptr_995" = bitcast %CName_Cons_ByStr20* %"$adtval_991" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_995", %TName_List_ByStr20** %"$retval_204", align 8, !dbg !164
  br label %"$matchsucc_978"

"$False_996":                                     ; preds = %"$have_gas_976"
  %"$h1_997" = bitcast %TName_Bool* %"$h1_979" to %CName_False*
  %"$gasrem_998" = load i64, i64* @_gasrem, align 8
  %"$gascmp_999" = icmp ugt i64 1, %"$gasrem_998"
  br i1 %"$gascmp_999", label %"$out_of_gas_1000", label %"$have_gas_1001"

"$out_of_gas_1000":                               ; preds = %"$False_996"
  call void @_out_of_gas()
  br label %"$have_gas_1001"

"$have_gas_1001":                                 ; preds = %"$out_of_gas_1000", %"$False_996"
  %"$consume_1002" = sub i64 %"$gasrem_998", 1
  store i64 %"$consume_1002", i64* @_gasrem, align 8
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$retval_204", align 8, !dbg !167
  br label %"$matchsucc_978"

"$empty_default_982":                             ; preds = %"$have_gas_976"
  br label %"$matchsucc_978"

"$matchsucc_978":                                 ; preds = %"$have_gas_1001", %"$have_gas_988", %"$empty_default_982"
  %"$$retval_204_1003" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$retval_204", align 8
  ret %TName_List_ByStr20* %"$$retval_204_1003"
}

define internal { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_201"(%"$$fundef_201_env_446"* %0, [20 x i8]* %1) !dbg !169 {
entry:
  %h = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_201_env_f_937" = getelementptr inbounds %"$$fundef_201_env_446", %"$$fundef_201_env_446"* %0, i32 0, i32 0
  %"$f_envload_938" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_201_env_f_937", align 8
  %f = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_envload_938", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$retval_202" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_939" = load i64, i64* @_gasrem, align 8
  %"$gascmp_940" = icmp ugt i64 1, %"$gasrem_939"
  br i1 %"$gascmp_940", label %"$out_of_gas_941", label %"$have_gas_942"

"$out_of_gas_941":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_942"

"$have_gas_942":                                  ; preds = %"$out_of_gas_941", %entry
  %"$consume_943" = sub i64 %"$gasrem_939", 1
  store i64 %"$consume_943", i64* @_gasrem, align 8
  %"$$fundef_203_envp_944_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_203_envp_944_salloc" = call i8* @_salloc(i8* %"$$fundef_203_envp_944_load", i64 40)
  %"$$fundef_203_envp_944" = bitcast i8* %"$$fundef_203_envp_944_salloc" to %"$$fundef_203_env_445"*
  %"$$fundef_203_env_voidp_946" = bitcast %"$$fundef_203_env_445"* %"$$fundef_203_envp_944" to i8*
  %"$$fundef_203_cloval_947" = insertvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)* bitcast (%TName_List_ByStr20* (%"$$fundef_203_env_445"*, %TName_List_ByStr20*)* @"$fundef_203" to %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_203_env_voidp_946", 1
  %"$$fundef_203_env_f_948" = getelementptr inbounds %"$$fundef_203_env_445", %"$$fundef_203_env_445"* %"$$fundef_203_envp_944", i32 0, i32 0
  %"$f_949" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %f, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_949", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_203_env_f_948", align 8
  %"$$fundef_203_env_h_950" = getelementptr inbounds %"$$fundef_203_env_445", %"$$fundef_203_env_445"* %"$$fundef_203_envp_944", i32 0, i32 1
  store [20 x i8] %h, [20 x i8]* %"$$fundef_203_env_h_950", align 1
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_203_cloval_947", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_202", align 8, !dbg !170
  %"$$retval_202_951" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_202", align 8
  ret { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_202_951"
}

define internal { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_199"(%"$$fundef_199_env_447"* %0, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1) !dbg !171 {
entry:
  %"$$fundef_199_env_list_foldr_867" = getelementptr inbounds %"$$fundef_199_env_447", %"$$fundef_199_env_447"* %0, i32 0, i32 0
  %"$list_foldr_envload_868" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_199_env_list_foldr_867", align 8
  %list_foldr = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldr_envload_868", { i8*, i8* }** %list_foldr, align 8
  %"$retval_200" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_869" = load i64, i64* @_gasrem, align 8
  %"$gascmp_870" = icmp ugt i64 1, %"$gasrem_869"
  br i1 %"$gascmp_870", label %"$out_of_gas_871", label %"$have_gas_872"

"$out_of_gas_871":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_872"

"$have_gas_872":                                  ; preds = %"$out_of_gas_871", %entry
  %"$consume_873" = sub i64 %"$gasrem_869", 1
  store i64 %"$consume_873", i64* @_gasrem, align 8
  %foldr = alloca { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_874" = load i64, i64* @_gasrem, align 8
  %"$gascmp_875" = icmp ugt i64 1, %"$gasrem_874"
  br i1 %"$gascmp_875", label %"$out_of_gas_876", label %"$have_gas_877"

"$out_of_gas_876":                                ; preds = %"$have_gas_872"
  call void @_out_of_gas()
  br label %"$have_gas_877"

"$have_gas_877":                                  ; preds = %"$out_of_gas_876", %"$have_gas_872"
  %"$consume_878" = sub i64 %"$gasrem_874", 1
  store i64 %"$consume_878", i64* @_gasrem, align 8
  %"$list_foldr_879" = load { i8*, i8* }*, { i8*, i8* }** %list_foldr, align 8
  %"$list_foldr_880" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldr_879", i32 0
  %"$list_foldr_881" = bitcast { i8*, i8* }* %"$list_foldr_880" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldr_882" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldr_881", align 8
  %"$list_foldr_fptr_883" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldr_882", 0
  %"$list_foldr_envptr_884" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldr_882", 1
  %"$list_foldr_call_885" = call { i8*, i8* }* %"$list_foldr_fptr_883"(i8* %"$list_foldr_envptr_884"), !dbg !172
  %"$list_foldr_886" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldr_call_885", i32 1
  %"$list_foldr_887" = bitcast { i8*, i8* }* %"$list_foldr_886" to { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldr_888" = load { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldr_887", align 8
  %"$list_foldr_fptr_889" = extractvalue { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldr_888", 0
  %"$list_foldr_envptr_890" = extractvalue { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldr_888", 1
  %"$list_foldr_call_891" = call { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$list_foldr_fptr_889"(i8* %"$list_foldr_envptr_890"), !dbg !172
  store { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$list_foldr_call_891", { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %foldr, align 8, !dbg !173
  %"$gasrem_892" = load i64, i64* @_gasrem, align 8
  %"$gascmp_893" = icmp ugt i64 1, %"$gasrem_892"
  br i1 %"$gascmp_893", label %"$out_of_gas_894", label %"$have_gas_895"

"$out_of_gas_894":                                ; preds = %"$have_gas_877"
  call void @_out_of_gas()
  br label %"$have_gas_895"

"$have_gas_895":                                  ; preds = %"$out_of_gas_894", %"$have_gas_877"
  %"$consume_896" = sub i64 %"$gasrem_892", 1
  store i64 %"$consume_896", i64* @_gasrem, align 8
  %iter = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_897" = load i64, i64* @_gasrem, align 8
  %"$gascmp_898" = icmp ugt i64 1, %"$gasrem_897"
  br i1 %"$gascmp_898", label %"$out_of_gas_899", label %"$have_gas_900"

"$out_of_gas_899":                                ; preds = %"$have_gas_895"
  call void @_out_of_gas()
  br label %"$have_gas_900"

"$have_gas_900":                                  ; preds = %"$out_of_gas_899", %"$have_gas_895"
  %"$consume_901" = sub i64 %"$gasrem_897", 1
  store i64 %"$consume_901", i64* @_gasrem, align 8
  %"$$fundef_201_envp_902_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_201_envp_902_salloc" = call i8* @_salloc(i8* %"$$fundef_201_envp_902_load", i64 16)
  %"$$fundef_201_envp_902" = bitcast i8* %"$$fundef_201_envp_902_salloc" to %"$$fundef_201_env_446"*
  %"$$fundef_201_env_voidp_904" = bitcast %"$$fundef_201_env_446"* %"$$fundef_201_envp_902" to i8*
  %"$$fundef_201_cloval_905" = insertvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_201_env_446"*, [20 x i8]*)* @"$fundef_201" to { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_201_env_voidp_904", 1
  %"$$fundef_201_env_f_906" = getelementptr inbounds %"$$fundef_201_env_446", %"$$fundef_201_env_446"* %"$$fundef_201_envp_902", i32 0, i32 0
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_201_env_f_906", align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_201_cloval_905", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %iter, align 8, !dbg !174
  %"$gasrem_907" = load i64, i64* @_gasrem, align 8
  %"$gascmp_908" = icmp ugt i64 1, %"$gasrem_907"
  br i1 %"$gascmp_908", label %"$out_of_gas_909", label %"$have_gas_910"

"$out_of_gas_909":                                ; preds = %"$have_gas_900"
  call void @_out_of_gas()
  br label %"$have_gas_910"

"$have_gas_910":                                  ; preds = %"$out_of_gas_909", %"$have_gas_900"
  %"$consume_911" = sub i64 %"$gasrem_907", 1
  store i64 %"$consume_911", i64* @_gasrem, align 8
  %init = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_913" = icmp ugt i64 1, %"$gasrem_912"
  br i1 %"$gascmp_913", label %"$out_of_gas_914", label %"$have_gas_915"

"$out_of_gas_914":                                ; preds = %"$have_gas_910"
  call void @_out_of_gas()
  br label %"$have_gas_915"

"$have_gas_915":                                  ; preds = %"$out_of_gas_914", %"$have_gas_910"
  %"$consume_916" = sub i64 %"$gasrem_912", 1
  store i64 %"$consume_916", i64* @_gasrem, align 8
  %"$adtval_917_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_917_salloc" = call i8* @_salloc(i8* %"$adtval_917_load", i64 1)
  %"$adtval_917" = bitcast i8* %"$adtval_917_salloc" to %CName_Nil_ByStr20*
  %"$adtgep_918" = getelementptr inbounds %CName_Nil_ByStr20, %CName_Nil_ByStr20* %"$adtval_917", i32 0, i32 0
  store i8 1, i8* %"$adtgep_918", align 1
  %"$adtptr_919" = bitcast %CName_Nil_ByStr20* %"$adtval_917" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_919", %TName_List_ByStr20** %init, align 8, !dbg !175
  %"$gasrem_920" = load i64, i64* @_gasrem, align 8
  %"$gascmp_921" = icmp ugt i64 1, %"$gasrem_920"
  br i1 %"$gascmp_921", label %"$out_of_gas_922", label %"$have_gas_923"

"$out_of_gas_922":                                ; preds = %"$have_gas_915"
  call void @_out_of_gas()
  br label %"$have_gas_923"

"$have_gas_923":                                  ; preds = %"$out_of_gas_922", %"$have_gas_915"
  %"$consume_924" = sub i64 %"$gasrem_920", 1
  store i64 %"$consume_924", i64* @_gasrem, align 8
  %"$foldr_17" = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$foldr_925" = load { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %foldr, align 8
  %"$foldr_fptr_926" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$foldr_925", 0
  %"$foldr_envptr_927" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$foldr_925", 1
  %"$iter_928" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %iter, align 8
  %"$foldr_call_929" = call { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$foldr_fptr_926"(i8* %"$foldr_envptr_927", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$iter_928"), !dbg !176
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$foldr_call_929", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_17", align 8, !dbg !176
  %"$foldr_18" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$$foldr_17_930" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_17", align 8
  %"$$foldr_17_fptr_931" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_17_930", 0
  %"$$foldr_17_envptr_932" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_17_930", 1
  %"$init_933" = load %TName_List_ByStr20*, %TName_List_ByStr20** %init, align 8
  %"$$foldr_17_call_934" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_17_fptr_931"(i8* %"$$foldr_17_envptr_932", %TName_List_ByStr20* %"$init_933"), !dbg !176
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_17_call_934", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_18", align 8, !dbg !176
  %"$$foldr_18_935" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_18", align 8
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_18_935", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_200", align 8, !dbg !176
  %"$$retval_200_936" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_200", align 8
  ret { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_200_936"
}

define internal { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_197"(%"$$fundef_197_env_448"* %0) !dbg !177 {
entry:
  %"$$fundef_197_env_list_foldr_853" = getelementptr inbounds %"$$fundef_197_env_448", %"$$fundef_197_env_448"* %0, i32 0, i32 0
  %"$list_foldr_envload_854" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_197_env_list_foldr_853", align 8
  %list_foldr = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldr_envload_854", { i8*, i8* }** %list_foldr, align 8
  %"$retval_198" = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_855" = load i64, i64* @_gasrem, align 8
  %"$gascmp_856" = icmp ugt i64 1, %"$gasrem_855"
  br i1 %"$gascmp_856", label %"$out_of_gas_857", label %"$have_gas_858"

"$out_of_gas_857":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_858"

"$have_gas_858":                                  ; preds = %"$out_of_gas_857", %entry
  %"$consume_859" = sub i64 %"$gasrem_855", 1
  store i64 %"$consume_859", i64* @_gasrem, align 8
  %"$$fundef_199_envp_860_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_199_envp_860_salloc" = call i8* @_salloc(i8* %"$$fundef_199_envp_860_load", i64 8)
  %"$$fundef_199_envp_860" = bitcast i8* %"$$fundef_199_envp_860_salloc" to %"$$fundef_199_env_447"*
  %"$$fundef_199_env_voidp_862" = bitcast %"$$fundef_199_env_447"* %"$$fundef_199_envp_860" to i8*
  %"$$fundef_199_cloval_863" = insertvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* bitcast ({ %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_199_env_447"*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* @"$fundef_199" to { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*), i8* undef }, i8* %"$$fundef_199_env_voidp_862", 1
  %"$$fundef_199_env_list_foldr_864" = getelementptr inbounds %"$$fundef_199_env_447", %"$$fundef_199_env_447"* %"$$fundef_199_envp_860", i32 0, i32 0
  %"$list_foldr_865" = load { i8*, i8* }*, { i8*, i8* }** %list_foldr, align 8
  store { i8*, i8* }* %"$list_foldr_865", { i8*, i8* }** %"$$fundef_199_env_list_foldr_864", align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_199_cloval_863", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_198", align 8, !dbg !178
  %"$$retval_198_866" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_198", align 8
  ret { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_198_866"
}

define internal %TName_Bool* @"$fundef_165"(%"$$fundef_165_env_449"* %0, %TName_Bool* %1) !dbg !179 {
entry:
  %"$retval_166" = alloca %TName_Bool*, align 8
  %"$gasrem_823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_824" = icmp ugt i64 2, %"$gasrem_823"
  br i1 %"$gascmp_824", label %"$out_of_gas_825", label %"$have_gas_826"

"$out_of_gas_825":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_826"

"$have_gas_826":                                  ; preds = %"$out_of_gas_825", %entry
  %"$consume_827" = sub i64 %"$gasrem_823", 2
  store i64 %"$consume_827", i64* @_gasrem, align 8
  %"$b_tag_829" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_830" = load i8, i8* %"$b_tag_829", align 1
  switch i8 %"$b_tag_830", label %"$empty_default_831" [
    i8 0, label %"$True_832"
    i8 1, label %"$False_842"
  ], !dbg !181

"$True_832":                                      ; preds = %"$have_gas_826"
  %"$b_833" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_835" = icmp ugt i64 1, %"$gasrem_834"
  br i1 %"$gascmp_835", label %"$out_of_gas_836", label %"$have_gas_837"

"$out_of_gas_836":                                ; preds = %"$True_832"
  call void @_out_of_gas()
  br label %"$have_gas_837"

"$have_gas_837":                                  ; preds = %"$out_of_gas_836", %"$True_832"
  %"$consume_838" = sub i64 %"$gasrem_834", 1
  store i64 %"$consume_838", i64* @_gasrem, align 8
  %"$adtval_839_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_839_salloc" = call i8* @_salloc(i8* %"$adtval_839_load", i64 1)
  %"$adtval_839" = bitcast i8* %"$adtval_839_salloc" to %CName_False*
  %"$adtgep_840" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_839", i32 0, i32 0
  store i8 1, i8* %"$adtgep_840", align 1
  %"$adtptr_841" = bitcast %CName_False* %"$adtval_839" to %TName_Bool*
  store %TName_Bool* %"$adtptr_841", %TName_Bool** %"$retval_166", align 8, !dbg !182
  br label %"$matchsucc_828"

"$False_842":                                     ; preds = %"$have_gas_826"
  %"$b_843" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_845" = icmp ugt i64 1, %"$gasrem_844"
  br i1 %"$gascmp_845", label %"$out_of_gas_846", label %"$have_gas_847"

"$out_of_gas_846":                                ; preds = %"$False_842"
  call void @_out_of_gas()
  br label %"$have_gas_847"

"$have_gas_847":                                  ; preds = %"$out_of_gas_846", %"$False_842"
  %"$consume_848" = sub i64 %"$gasrem_844", 1
  store i64 %"$consume_848", i64* @_gasrem, align 8
  %"$adtval_849_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_849_salloc" = call i8* @_salloc(i8* %"$adtval_849_load", i64 1)
  %"$adtval_849" = bitcast i8* %"$adtval_849_salloc" to %CName_True*
  %"$adtgep_850" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_849", i32 0, i32 0
  store i8 0, i8* %"$adtgep_850", align 1
  %"$adtptr_851" = bitcast %CName_True* %"$adtval_849" to %TName_Bool*
  store %TName_Bool* %"$adtptr_851", %TName_Bool** %"$retval_166", align 8, !dbg !185
  br label %"$matchsucc_828"

"$empty_default_831":                             ; preds = %"$have_gas_826"
  br label %"$matchsucc_828"

"$matchsucc_828":                                 ; preds = %"$have_gas_847", %"$have_gas_837", %"$empty_default_831"
  %"$$retval_166_852" = load %TName_Bool*, %TName_Bool** %"$retval_166", align 8
  ret %TName_Bool* %"$$retval_166_852"
}

define internal %TName_Bool* @"$fundef_169"(%"$$fundef_169_env_450"* %0, %TName_Bool* %1) !dbg !187 {
entry:
  %"$$fundef_169_env_b_793" = getelementptr inbounds %"$$fundef_169_env_450", %"$$fundef_169_env_450"* %0, i32 0, i32 0
  %"$b_envload_794" = load %TName_Bool*, %TName_Bool** %"$$fundef_169_env_b_793", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_794", %TName_Bool** %b, align 8
  %"$retval_170" = alloca %TName_Bool*, align 8
  %"$gasrem_795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_796" = icmp ugt i64 2, %"$gasrem_795"
  br i1 %"$gascmp_796", label %"$out_of_gas_797", label %"$have_gas_798"

"$out_of_gas_797":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_798"

"$have_gas_798":                                  ; preds = %"$out_of_gas_797", %entry
  %"$consume_799" = sub i64 %"$gasrem_795", 2
  store i64 %"$consume_799", i64* @_gasrem, align 8
  %"$b_801" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_802" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_801", i32 0, i32 0
  %"$b_tag_803" = load i8, i8* %"$b_tag_802", align 1
  switch i8 %"$b_tag_803", label %"$empty_default_804" [
    i8 0, label %"$True_805"
    i8 1, label %"$False_815"
  ], !dbg !188

"$True_805":                                      ; preds = %"$have_gas_798"
  %"$b_806" = bitcast %TName_Bool* %"$b_801" to %CName_True*
  %"$gasrem_807" = load i64, i64* @_gasrem, align 8
  %"$gascmp_808" = icmp ugt i64 1, %"$gasrem_807"
  br i1 %"$gascmp_808", label %"$out_of_gas_809", label %"$have_gas_810"

"$out_of_gas_809":                                ; preds = %"$True_805"
  call void @_out_of_gas()
  br label %"$have_gas_810"

"$have_gas_810":                                  ; preds = %"$out_of_gas_809", %"$True_805"
  %"$consume_811" = sub i64 %"$gasrem_807", 1
  store i64 %"$consume_811", i64* @_gasrem, align 8
  %"$adtval_812_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_812_salloc" = call i8* @_salloc(i8* %"$adtval_812_load", i64 1)
  %"$adtval_812" = bitcast i8* %"$adtval_812_salloc" to %CName_True*
  %"$adtgep_813" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_812", i32 0, i32 0
  store i8 0, i8* %"$adtgep_813", align 1
  %"$adtptr_814" = bitcast %CName_True* %"$adtval_812" to %TName_Bool*
  store %TName_Bool* %"$adtptr_814", %TName_Bool** %"$retval_170", align 8, !dbg !189
  br label %"$matchsucc_800"

"$False_815":                                     ; preds = %"$have_gas_798"
  %"$b_816" = bitcast %TName_Bool* %"$b_801" to %CName_False*
  %"$gasrem_817" = load i64, i64* @_gasrem, align 8
  %"$gascmp_818" = icmp ugt i64 1, %"$gasrem_817"
  br i1 %"$gascmp_818", label %"$out_of_gas_819", label %"$have_gas_820"

"$out_of_gas_819":                                ; preds = %"$False_815"
  call void @_out_of_gas()
  br label %"$have_gas_820"

"$have_gas_820":                                  ; preds = %"$out_of_gas_819", %"$False_815"
  %"$consume_821" = sub i64 %"$gasrem_817", 1
  store i64 %"$consume_821", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_170", align 8, !dbg !192
  br label %"$matchsucc_800"

"$empty_default_804":                             ; preds = %"$have_gas_798"
  br label %"$matchsucc_800"

"$matchsucc_800":                                 ; preds = %"$have_gas_820", %"$have_gas_810", %"$empty_default_804"
  %"$$retval_170_822" = load %TName_Bool*, %TName_Bool** %"$retval_170", align 8
  ret %TName_Bool* %"$$retval_170_822"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_167"(%"$$fundef_167_env_451"* %0, %TName_Bool* %1) !dbg !194 {
entry:
  %"$retval_168" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_783" = icmp ugt i64 1, %"$gasrem_782"
  br i1 %"$gascmp_783", label %"$out_of_gas_784", label %"$have_gas_785"

"$out_of_gas_784":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_785"

"$have_gas_785":                                  ; preds = %"$out_of_gas_784", %entry
  %"$consume_786" = sub i64 %"$gasrem_782", 1
  store i64 %"$consume_786", i64* @_gasrem, align 8
  %"$$fundef_169_envp_787_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_169_envp_787_salloc" = call i8* @_salloc(i8* %"$$fundef_169_envp_787_load", i64 8)
  %"$$fundef_169_envp_787" = bitcast i8* %"$$fundef_169_envp_787_salloc" to %"$$fundef_169_env_450"*
  %"$$fundef_169_env_voidp_789" = bitcast %"$$fundef_169_env_450"* %"$$fundef_169_envp_787" to i8*
  %"$$fundef_169_cloval_790" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_169_env_450"*, %TName_Bool*)* @"$fundef_169" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_169_env_voidp_789", 1
  %"$$fundef_169_env_b_791" = getelementptr inbounds %"$$fundef_169_env_450", %"$$fundef_169_env_450"* %"$$fundef_169_envp_787", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_169_env_b_791", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_169_cloval_790", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_168", align 8, !dbg !195
  %"$$retval_168_792" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_168", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_168_792"
}

define internal %TName_Bool* @"$fundef_173"(%"$$fundef_173_env_452"* %0, %TName_Bool* %1) !dbg !196 {
entry:
  %"$$fundef_173_env_b_752" = getelementptr inbounds %"$$fundef_173_env_452", %"$$fundef_173_env_452"* %0, i32 0, i32 0
  %"$b_envload_753" = load %TName_Bool*, %TName_Bool** %"$$fundef_173_env_b_752", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_753", %TName_Bool** %b, align 8
  %"$retval_174" = alloca %TName_Bool*, align 8
  %"$gasrem_754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_755" = icmp ugt i64 2, %"$gasrem_754"
  br i1 %"$gascmp_755", label %"$out_of_gas_756", label %"$have_gas_757"

"$out_of_gas_756":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_757"

"$have_gas_757":                                  ; preds = %"$out_of_gas_756", %entry
  %"$consume_758" = sub i64 %"$gasrem_754", 2
  store i64 %"$consume_758", i64* @_gasrem, align 8
  %"$b_760" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_761" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_760", i32 0, i32 0
  %"$b_tag_762" = load i8, i8* %"$b_tag_761", align 1
  switch i8 %"$b_tag_762", label %"$empty_default_763" [
    i8 1, label %"$False_764"
    i8 0, label %"$True_774"
  ], !dbg !197

"$False_764":                                     ; preds = %"$have_gas_757"
  %"$b_765" = bitcast %TName_Bool* %"$b_760" to %CName_False*
  %"$gasrem_766" = load i64, i64* @_gasrem, align 8
  %"$gascmp_767" = icmp ugt i64 1, %"$gasrem_766"
  br i1 %"$gascmp_767", label %"$out_of_gas_768", label %"$have_gas_769"

"$out_of_gas_768":                                ; preds = %"$False_764"
  call void @_out_of_gas()
  br label %"$have_gas_769"

"$have_gas_769":                                  ; preds = %"$out_of_gas_768", %"$False_764"
  %"$consume_770" = sub i64 %"$gasrem_766", 1
  store i64 %"$consume_770", i64* @_gasrem, align 8
  %"$adtval_771_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_771_salloc" = call i8* @_salloc(i8* %"$adtval_771_load", i64 1)
  %"$adtval_771" = bitcast i8* %"$adtval_771_salloc" to %CName_False*
  %"$adtgep_772" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_771", i32 0, i32 0
  store i8 1, i8* %"$adtgep_772", align 1
  %"$adtptr_773" = bitcast %CName_False* %"$adtval_771" to %TName_Bool*
  store %TName_Bool* %"$adtptr_773", %TName_Bool** %"$retval_174", align 8, !dbg !198
  br label %"$matchsucc_759"

"$True_774":                                      ; preds = %"$have_gas_757"
  %"$b_775" = bitcast %TName_Bool* %"$b_760" to %CName_True*
  %"$gasrem_776" = load i64, i64* @_gasrem, align 8
  %"$gascmp_777" = icmp ugt i64 1, %"$gasrem_776"
  br i1 %"$gascmp_777", label %"$out_of_gas_778", label %"$have_gas_779"

"$out_of_gas_778":                                ; preds = %"$True_774"
  call void @_out_of_gas()
  br label %"$have_gas_779"

"$have_gas_779":                                  ; preds = %"$out_of_gas_778", %"$True_774"
  %"$consume_780" = sub i64 %"$gasrem_776", 1
  store i64 %"$consume_780", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_174", align 8, !dbg !201
  br label %"$matchsucc_759"

"$empty_default_763":                             ; preds = %"$have_gas_757"
  br label %"$matchsucc_759"

"$matchsucc_759":                                 ; preds = %"$have_gas_779", %"$have_gas_769", %"$empty_default_763"
  %"$$retval_174_781" = load %TName_Bool*, %TName_Bool** %"$retval_174", align 8
  ret %TName_Bool* %"$$retval_174_781"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_171"(%"$$fundef_171_env_453"* %0, %TName_Bool* %1) !dbg !203 {
entry:
  %"$retval_172" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_741" = load i64, i64* @_gasrem, align 8
  %"$gascmp_742" = icmp ugt i64 1, %"$gasrem_741"
  br i1 %"$gascmp_742", label %"$out_of_gas_743", label %"$have_gas_744"

"$out_of_gas_743":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_744"

"$have_gas_744":                                  ; preds = %"$out_of_gas_743", %entry
  %"$consume_745" = sub i64 %"$gasrem_741", 1
  store i64 %"$consume_745", i64* @_gasrem, align 8
  %"$$fundef_173_envp_746_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_173_envp_746_salloc" = call i8* @_salloc(i8* %"$$fundef_173_envp_746_load", i64 8)
  %"$$fundef_173_envp_746" = bitcast i8* %"$$fundef_173_envp_746_salloc" to %"$$fundef_173_env_452"*
  %"$$fundef_173_env_voidp_748" = bitcast %"$$fundef_173_env_452"* %"$$fundef_173_envp_746" to i8*
  %"$$fundef_173_cloval_749" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_173_env_452"*, %TName_Bool*)* @"$fundef_173" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_173_env_voidp_748", 1
  %"$$fundef_173_env_b_750" = getelementptr inbounds %"$$fundef_173_env_452", %"$$fundef_173_env_452"* %"$$fundef_173_envp_746", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_173_env_b_750", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_173_cloval_749", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_172", align 8, !dbg !204
  %"$$retval_172_751" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_172", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_172_751"
}

define internal %TName_Option_ByStr20* @"$fundef_153"(%"$$fundef_153_env_454"* %0, %TName_Option_ByStr20* %1) !dbg !205 {
entry:
  %"$$fundef_153_env_g_721" = getelementptr inbounds %"$$fundef_153_env_454", %"$$fundef_153_env_454"* %0, i32 0, i32 0
  %"$g_envload_722" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_153_env_g_721", align 8
  %g = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_envload_722", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  %"$$fundef_153_env_t_723" = getelementptr inbounds %"$$fundef_153_env_454", %"$$fundef_153_env_454"* %0, i32 0, i32 1
  %"$t_envload_724" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_153_env_t_723", align 8
  %t = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$t_envload_724", %TName_List_ByStr20** %t, align 8
  %"$retval_154" = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_725" = load i64, i64* @_gasrem, align 8
  %"$gascmp_726" = icmp ugt i64 1, %"$gasrem_725"
  br i1 %"$gascmp_726", label %"$out_of_gas_727", label %"$have_gas_728"

"$out_of_gas_727":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_728"

"$have_gas_728":                                  ; preds = %"$out_of_gas_727", %entry
  %"$consume_729" = sub i64 %"$gasrem_725", 1
  store i64 %"$consume_729", i64* @_gasrem, align 8
  %"$g_11" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$g_730" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  %"$g_fptr_731" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_730", 0
  %"$g_envptr_732" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_730", 1
  %"$g_call_733" = call { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_fptr_731"(i8* %"$g_envptr_732", %TName_Option_ByStr20* %1), !dbg !207
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_call_733", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_11", align 8, !dbg !207
  %"$g_12" = alloca %TName_Option_ByStr20*, align 8
  %"$$g_11_734" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_11", align 8
  %"$$g_11_fptr_735" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_11_734", 0
  %"$$g_11_envptr_736" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_11_734", 1
  %"$t_737" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t, align 8
  %"$$g_11_call_738" = call %TName_Option_ByStr20* %"$$g_11_fptr_735"(i8* %"$$g_11_envptr_736", %TName_List_ByStr20* %"$t_737"), !dbg !207
  store %TName_Option_ByStr20* %"$$g_11_call_738", %TName_Option_ByStr20** %"$g_12", align 8, !dbg !207
  %"$$g_12_739" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$g_12", align 8
  store %TName_Option_ByStr20* %"$$g_12_739", %TName_Option_ByStr20** %"$retval_154", align 8, !dbg !207
  %"$$retval_154_740" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$retval_154", align 8
  ret %TName_Option_ByStr20* %"$$retval_154_740"
}

define internal %TName_Option_ByStr20* @"$fundef_151"(%"$$fundef_151_env_455"* %0, %TName_List_ByStr20* %1) !dbg !208 {
entry:
  %"$$fundef_151_env_f_651" = getelementptr inbounds %"$$fundef_151_env_455", %"$$fundef_151_env_455"* %0, i32 0, i32 0
  %"$f_envload_652" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_151_env_f_651", align 8
  %f = alloca { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_envload_652", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %f, align 8
  %"$$fundef_151_env_g_653" = getelementptr inbounds %"$$fundef_151_env_455", %"$$fundef_151_env_455"* %0, i32 0, i32 1
  %"$g_envload_654" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_151_env_g_653", align 8
  %g = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_envload_654", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  %"$$fundef_151_env_z_655" = getelementptr inbounds %"$$fundef_151_env_455", %"$$fundef_151_env_455"* %0, i32 0, i32 2
  %"$z_envload_656" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_151_env_z_655", align 8
  %z = alloca %TName_Option_ByStr20*, align 8
  store %TName_Option_ByStr20* %"$z_envload_656", %TName_Option_ByStr20** %z, align 8
  %"$retval_152" = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_658" = icmp ugt i64 2, %"$gasrem_657"
  br i1 %"$gascmp_658", label %"$out_of_gas_659", label %"$have_gas_660"

"$out_of_gas_659":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_660"

"$have_gas_660":                                  ; preds = %"$out_of_gas_659", %entry
  %"$consume_661" = sub i64 %"$gasrem_657", 2
  store i64 %"$consume_661", i64* @_gasrem, align 8
  %"$l_tag_663" = getelementptr inbounds %TName_List_ByStr20, %TName_List_ByStr20* %1, i32 0, i32 0
  %"$l_tag_664" = load i8, i8* %"$l_tag_663", align 1
  switch i8 %"$l_tag_664", label %"$empty_default_665" [
    i8 0, label %"$Cons_666"
    i8 1, label %"$Nil_712"
  ], !dbg !209

"$Cons_666":                                      ; preds = %"$have_gas_660"
  %"$l_667" = bitcast %TName_List_ByStr20* %1 to %CName_Cons_ByStr20*
  %"$h_gep_668" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_667", i32 0, i32 1
  %"$h_load_669" = load [20 x i8], [20 x i8]* %"$h_gep_668", align 1
  %h = alloca [20 x i8], align 1
  store [20 x i8] %"$h_load_669", [20 x i8]* %h, align 1
  %"$t_gep_670" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_667", i32 0, i32 2
  %"$t_load_671" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$t_gep_670", align 8
  %t = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$t_load_671", %TName_List_ByStr20** %t, align 8
  %"$gasrem_672" = load i64, i64* @_gasrem, align 8
  %"$gascmp_673" = icmp ugt i64 1, %"$gasrem_672"
  br i1 %"$gascmp_673", label %"$out_of_gas_674", label %"$have_gas_675"

"$out_of_gas_674":                                ; preds = %"$Cons_666"
  call void @_out_of_gas()
  br label %"$have_gas_675"

"$have_gas_675":                                  ; preds = %"$out_of_gas_674", %"$Cons_666"
  %"$consume_676" = sub i64 %"$gasrem_672", 1
  store i64 %"$consume_676", i64* @_gasrem, align 8
  %partial = alloca { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$gasrem_677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_678" = icmp ugt i64 1, %"$gasrem_677"
  br i1 %"$gascmp_678", label %"$out_of_gas_679", label %"$have_gas_680"

"$out_of_gas_679":                                ; preds = %"$have_gas_675"
  call void @_out_of_gas()
  br label %"$have_gas_680"

"$have_gas_680":                                  ; preds = %"$out_of_gas_679", %"$have_gas_675"
  %"$consume_681" = sub i64 %"$gasrem_677", 1
  store i64 %"$consume_681", i64* @_gasrem, align 8
  %"$$fundef_153_envp_682_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_153_envp_682_salloc" = call i8* @_salloc(i8* %"$$fundef_153_envp_682_load", i64 24)
  %"$$fundef_153_envp_682" = bitcast i8* %"$$fundef_153_envp_682_salloc" to %"$$fundef_153_env_454"*
  %"$$fundef_153_env_voidp_684" = bitcast %"$$fundef_153_env_454"* %"$$fundef_153_envp_682" to i8*
  %"$$fundef_153_cloval_685" = insertvalue { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)* bitcast (%TName_Option_ByStr20* (%"$$fundef_153_env_454"*, %TName_Option_ByStr20*)* @"$fundef_153" to %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_153_env_voidp_684", 1
  %"$$fundef_153_env_g_686" = getelementptr inbounds %"$$fundef_153_env_454", %"$$fundef_153_env_454"* %"$$fundef_153_envp_682", i32 0, i32 0
  %"$g_687" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_687", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_153_env_g_686", align 8
  %"$$fundef_153_env_t_688" = getelementptr inbounds %"$$fundef_153_env_454", %"$$fundef_153_env_454"* %"$$fundef_153_envp_682", i32 0, i32 1
  %"$t_689" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t, align 8
  store %TName_List_ByStr20* %"$t_689", %TName_List_ByStr20** %"$$fundef_153_env_t_688", align 8
  store { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_153_cloval_685", { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }* %partial, align 8, !dbg !210
  %"$gasrem_690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_691" = icmp ugt i64 1, %"$gasrem_690"
  br i1 %"$gascmp_691", label %"$out_of_gas_692", label %"$have_gas_693"

"$out_of_gas_692":                                ; preds = %"$have_gas_680"
  call void @_out_of_gas()
  br label %"$have_gas_693"

"$have_gas_693":                                  ; preds = %"$out_of_gas_692", %"$have_gas_680"
  %"$consume_694" = sub i64 %"$gasrem_690", 1
  store i64 %"$consume_694", i64* @_gasrem, align 8
  %"$f_13" = alloca { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$f_695" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %f, align 8
  %"$f_fptr_696" = extractvalue { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_695", 0
  %"$f_envptr_697" = extractvalue { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_695", 1
  %"$z_698" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %z, align 8
  %"$f_call_699" = call { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_fptr_696"(i8* %"$f_envptr_697", %TName_Option_ByStr20* %"$z_698"), !dbg !213
  store { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_call_699", { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$f_13", align 8, !dbg !213
  %"$f_14" = alloca { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, align 8
  %"$$f_13_700" = load { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$f_13", align 8
  %"$$f_13_fptr_701" = extractvalue { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$f_13_700", 0
  %"$$f_13_envptr_702" = extractvalue { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$f_13_700", 1
  %"$$f_13_h_703" = alloca [20 x i8], align 1
  %"$h_704" = load [20 x i8], [20 x i8]* %h, align 1
  store [20 x i8] %"$h_704", [20 x i8]* %"$$f_13_h_703", align 1
  %"$$f_13_call_705" = call { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_13_fptr_701"(i8* %"$$f_13_envptr_702", [20 x i8]* %"$$f_13_h_703"), !dbg !213
  store { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_13_call_705", { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$f_14", align 8, !dbg !213
  %"$f_15" = alloca %TName_Option_ByStr20*, align 8
  %"$$f_14_706" = load { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$f_14", align 8
  %"$$f_14_fptr_707" = extractvalue { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_14_706", 0
  %"$$f_14_envptr_708" = extractvalue { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_14_706", 1
  %"$partial_709" = load { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }* %partial, align 8
  %"$$f_14_call_710" = call %TName_Option_ByStr20* %"$$f_14_fptr_707"(i8* %"$$f_14_envptr_708", { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %"$partial_709"), !dbg !213
  store %TName_Option_ByStr20* %"$$f_14_call_710", %TName_Option_ByStr20** %"$f_15", align 8, !dbg !213
  %"$$f_15_711" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$f_15", align 8
  store %TName_Option_ByStr20* %"$$f_15_711", %TName_Option_ByStr20** %"$retval_152", align 8, !dbg !213
  br label %"$matchsucc_662"

"$Nil_712":                                       ; preds = %"$have_gas_660"
  %"$l_713" = bitcast %TName_List_ByStr20* %1 to %CName_Nil_ByStr20*
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 1, %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %"$Nil_712"
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %"$Nil_712"
  %"$consume_718" = sub i64 %"$gasrem_714", 1
  store i64 %"$consume_718", i64* @_gasrem, align 8
  %"$z_719" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %z, align 8
  store %TName_Option_ByStr20* %"$z_719", %TName_Option_ByStr20** %"$retval_152", align 8, !dbg !214
  br label %"$matchsucc_662"

"$empty_default_665":                             ; preds = %"$have_gas_660"
  br label %"$matchsucc_662"

"$matchsucc_662":                                 ; preds = %"$have_gas_717", %"$have_gas_693", %"$empty_default_665"
  %"$$retval_152_720" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$retval_152", align 8
  ret %TName_Option_ByStr20* %"$$retval_152_720"
}

define internal { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_149"(%"$$fundef_149_env_456"* %0, %TName_Option_ByStr20* %1) !dbg !216 {
entry:
  %"$$fundef_149_env_f_632" = getelementptr inbounds %"$$fundef_149_env_456", %"$$fundef_149_env_456"* %0, i32 0, i32 0
  %"$f_envload_633" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_149_env_f_632", align 8
  %f = alloca { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_envload_633", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %f, align 8
  %"$$fundef_149_env_g_634" = getelementptr inbounds %"$$fundef_149_env_456", %"$$fundef_149_env_456"* %0, i32 0, i32 1
  %"$g_envload_635" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_149_env_g_634", align 8
  %g = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_envload_635", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  %"$retval_150" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_637" = icmp ugt i64 1, %"$gasrem_636"
  br i1 %"$gascmp_637", label %"$out_of_gas_638", label %"$have_gas_639"

"$out_of_gas_638":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_639"

"$have_gas_639":                                  ; preds = %"$out_of_gas_638", %entry
  %"$consume_640" = sub i64 %"$gasrem_636", 1
  store i64 %"$consume_640", i64* @_gasrem, align 8
  %"$$fundef_151_envp_641_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_151_envp_641_salloc" = call i8* @_salloc(i8* %"$$fundef_151_envp_641_load", i64 40)
  %"$$fundef_151_envp_641" = bitcast i8* %"$$fundef_151_envp_641_salloc" to %"$$fundef_151_env_455"*
  %"$$fundef_151_env_voidp_643" = bitcast %"$$fundef_151_env_455"* %"$$fundef_151_envp_641" to i8*
  %"$$fundef_151_cloval_644" = insertvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)* bitcast (%TName_Option_ByStr20* (%"$$fundef_151_env_455"*, %TName_List_ByStr20*)* @"$fundef_151" to %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_151_env_voidp_643", 1
  %"$$fundef_151_env_f_645" = getelementptr inbounds %"$$fundef_151_env_455", %"$$fundef_151_env_455"* %"$$fundef_151_envp_641", i32 0, i32 0
  %"$f_646" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %f, align 8
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_646", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_151_env_f_645", align 8
  %"$$fundef_151_env_g_647" = getelementptr inbounds %"$$fundef_151_env_455", %"$$fundef_151_env_455"* %"$$fundef_151_envp_641", i32 0, i32 1
  %"$g_648" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_648", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_151_env_g_647", align 8
  %"$$fundef_151_env_z_649" = getelementptr inbounds %"$$fundef_151_env_455", %"$$fundef_151_env_455"* %"$$fundef_151_envp_641", i32 0, i32 2
  store %TName_Option_ByStr20* %1, %TName_Option_ByStr20** %"$$fundef_151_env_z_649", align 8
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_151_cloval_644", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_150", align 8, !dbg !217
  %"$$retval_150_650" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_150", align 8
  ret { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_150_650"
}

define internal { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } @"$fundef_147"(%"$$fundef_147_env_457"* %0, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %1) !dbg !218 {
entry:
  %"$retval_148" = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$gasrem_613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_614" = icmp ugt i64 1, %"$gasrem_613"
  br i1 %"$gascmp_614", label %"$out_of_gas_615", label %"$have_gas_616"

"$out_of_gas_615":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_616"

"$have_gas_616":                                  ; preds = %"$out_of_gas_615", %entry
  %"$consume_617" = sub i64 %"$gasrem_613", 1
  store i64 %"$consume_617", i64* @_gasrem, align 8
  %"$gasrem_618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_619" = icmp ugt i64 1, %"$gasrem_618"
  br i1 %"$gascmp_619", label %"$out_of_gas_620", label %"$have_gas_621"

"$out_of_gas_620":                                ; preds = %"$have_gas_616"
  call void @_out_of_gas()
  br label %"$have_gas_621"

"$have_gas_621":                                  ; preds = %"$out_of_gas_620", %"$have_gas_616"
  %"$consume_622" = sub i64 %"$gasrem_618", 1
  store i64 %"$consume_622", i64* @_gasrem, align 8
  %"$$fundef_149_envp_623_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_149_envp_623_salloc" = call i8* @_salloc(i8* %"$$fundef_149_envp_623_load", i64 32)
  %"$$fundef_149_envp_623" = bitcast i8* %"$$fundef_149_envp_623_salloc" to %"$$fundef_149_env_456"*
  %"$$fundef_149_env_voidp_625" = bitcast %"$$fundef_149_env_456"* %"$$fundef_149_envp_623" to i8*
  %"$$fundef_149_cloval_626" = insertvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)* bitcast ({ %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_149_env_456"*, %TName_Option_ByStr20*)* @"$fundef_149" to { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_149_env_voidp_625", 1
  %g = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_149_cloval_626", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8, !dbg !219
  %"$$fundef_149_env_f_627" = getelementptr inbounds %"$$fundef_149_env_456", %"$$fundef_149_env_456"* %"$$fundef_149_envp_623", i32 0, i32 0
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %1, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_149_env_f_627", align 8
  %"$$fundef_149_env_g_628" = getelementptr inbounds %"$$fundef_149_env_456", %"$$fundef_149_env_456"* %"$$fundef_149_envp_623", i32 0, i32 1
  %"$g_629" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_629", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_149_env_g_628", align 8
  %"$g_630" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_630", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_148", align 8, !dbg !219
  %"$$retval_148_631" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_148", align 8
  ret { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$retval_148_631"
}

define internal { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } @"$fundef_145"(%"$$fundef_145_env_458"* %0) !dbg !220 {
entry:
  %"$retval_146" = alloca { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, align 8
  %"$gasrem_604" = load i64, i64* @_gasrem, align 8
  %"$gascmp_605" = icmp ugt i64 1, %"$gasrem_604"
  br i1 %"$gascmp_605", label %"$out_of_gas_606", label %"$have_gas_607"

"$out_of_gas_606":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_607"

"$have_gas_607":                                  ; preds = %"$out_of_gas_606", %entry
  %"$consume_608" = sub i64 %"$gasrem_604", 1
  store i64 %"$consume_608", i64* @_gasrem, align 8
  store { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })* bitcast ({ { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (%"$$fundef_147_env_457"*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })* @"$fundef_147" to { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*), i8* null }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_146", align 8, !dbg !221
  %"$$retval_146_612" = load { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_146", align 8
  ret { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$retval_146_612"
}

define internal { i8*, i8* }* @"$fundef_143"(%"$$fundef_143_env_459"* %0) !dbg !222 {
entry:
  %"$retval_144" = alloca { i8*, i8* }*, align 8
  %"$gasrem_592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_593" = icmp ugt i64 1, %"$gasrem_592"
  br i1 %"$gascmp_593", label %"$out_of_gas_594", label %"$have_gas_595"

"$out_of_gas_594":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_595"

"$have_gas_595":                                  ; preds = %"$out_of_gas_594", %entry
  %"$consume_596" = sub i64 %"$gasrem_592", 1
  store i64 %"$consume_596", i64* @_gasrem, align 8
  %"$dyndisp_table_600_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_600_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_600_salloc_load", i64 48)
  %"$dyndisp_table_600_salloc" = bitcast i8* %"$dyndisp_table_600_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_600" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_600_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_601" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_600", i32 2
  %"$dyndisp_pcast_602" = bitcast { i8*, i8* }* %"$dyndisp_gep_601" to { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (%"$$fundef_145_env_458"*)* @"$fundef_145" to { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_602", align 8
  store { i8*, i8* }* %"$dyndisp_table_600", { i8*, i8* }** %"$retval_144", align 8, !dbg !223
  %"$$retval_144_603" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_144", align 8
  ret { i8*, i8* }* %"$$retval_144_603"
}

define internal %TName_List_ByStr20* @"$fundef_163"(%"$$fundef_163_env_460"* %0, %TName_List_ByStr20* %1) !dbg !224 {
entry:
  %"$$fundef_163_env_f_524" = getelementptr inbounds %"$$fundef_163_env_460", %"$$fundef_163_env_460"* %0, i32 0, i32 0
  %"$f_envload_525" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_163_env_f_524", align 8
  %f = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_envload_525", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$$fundef_163_env_g_526" = getelementptr inbounds %"$$fundef_163_env_460", %"$$fundef_163_env_460"* %0, i32 0, i32 1
  %"$g_envload_527" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_163_env_g_526", align 8
  %g = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_envload_527", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  %"$$fundef_163_env_z_528" = getelementptr inbounds %"$$fundef_163_env_460", %"$$fundef_163_env_460"* %0, i32 0, i32 2
  %"$z_envload_529" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_163_env_z_528", align 8
  %z = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$z_envload_529", %TName_List_ByStr20** %z, align 8
  %"$retval_164" = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_530" = load i64, i64* @_gasrem, align 8
  %"$gascmp_531" = icmp ugt i64 2, %"$gasrem_530"
  br i1 %"$gascmp_531", label %"$out_of_gas_532", label %"$have_gas_533"

"$out_of_gas_532":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_533"

"$have_gas_533":                                  ; preds = %"$out_of_gas_532", %entry
  %"$consume_534" = sub i64 %"$gasrem_530", 2
  store i64 %"$consume_534", i64* @_gasrem, align 8
  %"$l_tag_536" = getelementptr inbounds %TName_List_ByStr20, %TName_List_ByStr20* %1, i32 0, i32 0
  %"$l_tag_537" = load i8, i8* %"$l_tag_536", align 1
  switch i8 %"$l_tag_537", label %"$empty_default_538" [
    i8 0, label %"$Cons_539"
    i8 1, label %"$Nil_583"
  ], !dbg !225

"$Cons_539":                                      ; preds = %"$have_gas_533"
  %"$l_540" = bitcast %TName_List_ByStr20* %1 to %CName_Cons_ByStr20*
  %"$h_gep_541" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_540", i32 0, i32 1
  %"$h_load_542" = load [20 x i8], [20 x i8]* %"$h_gep_541", align 1
  %h = alloca [20 x i8], align 1
  store [20 x i8] %"$h_load_542", [20 x i8]* %h, align 1
  %"$t_gep_543" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_540", i32 0, i32 2
  %"$t_load_544" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$t_gep_543", align 8
  %t = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$t_load_544", %TName_List_ByStr20** %t, align 8
  %"$gasrem_545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_546" = icmp ugt i64 1, %"$gasrem_545"
  br i1 %"$gascmp_546", label %"$out_of_gas_547", label %"$have_gas_548"

"$out_of_gas_547":                                ; preds = %"$Cons_539"
  call void @_out_of_gas()
  br label %"$have_gas_548"

"$have_gas_548":                                  ; preds = %"$out_of_gas_547", %"$Cons_539"
  %"$consume_549" = sub i64 %"$gasrem_545", 1
  store i64 %"$consume_549", i64* @_gasrem, align 8
  %res = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_551" = icmp ugt i64 1, %"$gasrem_550"
  br i1 %"$gascmp_551", label %"$out_of_gas_552", label %"$have_gas_553"

"$out_of_gas_552":                                ; preds = %"$have_gas_548"
  call void @_out_of_gas()
  br label %"$have_gas_553"

"$have_gas_553":                                  ; preds = %"$out_of_gas_552", %"$have_gas_548"
  %"$consume_554" = sub i64 %"$gasrem_550", 1
  store i64 %"$consume_554", i64* @_gasrem, align 8
  %"$g_7" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$g_555" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  %"$g_fptr_556" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_555", 0
  %"$g_envptr_557" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_555", 1
  %"$z_558" = load %TName_List_ByStr20*, %TName_List_ByStr20** %z, align 8
  %"$g_call_559" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_fptr_556"(i8* %"$g_envptr_557", %TName_List_ByStr20* %"$z_558"), !dbg !226
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_call_559", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_7", align 8, !dbg !226
  %"$g_8" = alloca %TName_List_ByStr20*, align 8
  %"$$g_7_560" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_7", align 8
  %"$$g_7_fptr_561" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_7_560", 0
  %"$$g_7_envptr_562" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_7_560", 1
  %"$t_563" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t, align 8
  %"$$g_7_call_564" = call %TName_List_ByStr20* %"$$g_7_fptr_561"(i8* %"$$g_7_envptr_562", %TName_List_ByStr20* %"$t_563"), !dbg !226
  store %TName_List_ByStr20* %"$$g_7_call_564", %TName_List_ByStr20** %"$g_8", align 8, !dbg !226
  %"$$g_8_565" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$g_8", align 8
  store %TName_List_ByStr20* %"$$g_8_565", %TName_List_ByStr20** %res, align 8, !dbg !226
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 1, %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$have_gas_553"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$have_gas_553"
  %"$consume_570" = sub i64 %"$gasrem_566", 1
  store i64 %"$consume_570", i64* @_gasrem, align 8
  %"$f_9" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$f_571" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$f_fptr_572" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_571", 0
  %"$f_envptr_573" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_571", 1
  %"$f_h_574" = alloca [20 x i8], align 1
  %"$h_575" = load [20 x i8], [20 x i8]* %h, align 1
  store [20 x i8] %"$h_575", [20 x i8]* %"$f_h_574", align 1
  %"$f_call_576" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$f_fptr_572"(i8* %"$f_envptr_573", [20 x i8]* %"$f_h_574"), !dbg !229
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$f_call_576", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$f_9", align 8, !dbg !229
  %"$f_10" = alloca %TName_List_ByStr20*, align 8
  %"$$f_9_577" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$f_9", align 8
  %"$$f_9_fptr_578" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$f_9_577", 0
  %"$$f_9_envptr_579" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$f_9_577", 1
  %"$res_580" = load %TName_List_ByStr20*, %TName_List_ByStr20** %res, align 8
  %"$$f_9_call_581" = call %TName_List_ByStr20* %"$$f_9_fptr_578"(i8* %"$$f_9_envptr_579", %TName_List_ByStr20* %"$res_580"), !dbg !229
  store %TName_List_ByStr20* %"$$f_9_call_581", %TName_List_ByStr20** %"$f_10", align 8, !dbg !229
  %"$$f_10_582" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$f_10", align 8
  store %TName_List_ByStr20* %"$$f_10_582", %TName_List_ByStr20** %"$retval_164", align 8, !dbg !229
  br label %"$matchsucc_535"

"$Nil_583":                                       ; preds = %"$have_gas_533"
  %"$l_584" = bitcast %TName_List_ByStr20* %1 to %CName_Nil_ByStr20*
  %"$gasrem_585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_586" = icmp ugt i64 1, %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %"$Nil_583"
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %"$Nil_583"
  %"$consume_589" = sub i64 %"$gasrem_585", 1
  store i64 %"$consume_589", i64* @_gasrem, align 8
  %"$z_590" = load %TName_List_ByStr20*, %TName_List_ByStr20** %z, align 8
  store %TName_List_ByStr20* %"$z_590", %TName_List_ByStr20** %"$retval_164", align 8, !dbg !230
  br label %"$matchsucc_535"

"$empty_default_538":                             ; preds = %"$have_gas_533"
  br label %"$matchsucc_535"

"$matchsucc_535":                                 ; preds = %"$have_gas_588", %"$have_gas_569", %"$empty_default_538"
  %"$$retval_164_591" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$retval_164", align 8
  ret %TName_List_ByStr20* %"$$retval_164_591"
}

define internal { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_161"(%"$$fundef_161_env_461"* %0, %TName_List_ByStr20* %1) !dbg !232 {
entry:
  %"$$fundef_161_env_f_505" = getelementptr inbounds %"$$fundef_161_env_461", %"$$fundef_161_env_461"* %0, i32 0, i32 0
  %"$f_envload_506" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_161_env_f_505", align 8
  %f = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_envload_506", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$$fundef_161_env_g_507" = getelementptr inbounds %"$$fundef_161_env_461", %"$$fundef_161_env_461"* %0, i32 0, i32 1
  %"$g_envload_508" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_161_env_g_507", align 8
  %g = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_envload_508", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  %"$retval_162" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 1, %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %entry
  %"$consume_513" = sub i64 %"$gasrem_509", 1
  store i64 %"$consume_513", i64* @_gasrem, align 8
  %"$$fundef_163_envp_514_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_163_envp_514_salloc" = call i8* @_salloc(i8* %"$$fundef_163_envp_514_load", i64 40)
  %"$$fundef_163_envp_514" = bitcast i8* %"$$fundef_163_envp_514_salloc" to %"$$fundef_163_env_460"*
  %"$$fundef_163_env_voidp_516" = bitcast %"$$fundef_163_env_460"* %"$$fundef_163_envp_514" to i8*
  %"$$fundef_163_cloval_517" = insertvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)* bitcast (%TName_List_ByStr20* (%"$$fundef_163_env_460"*, %TName_List_ByStr20*)* @"$fundef_163" to %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_163_env_voidp_516", 1
  %"$$fundef_163_env_f_518" = getelementptr inbounds %"$$fundef_163_env_460", %"$$fundef_163_env_460"* %"$$fundef_163_envp_514", i32 0, i32 0
  %"$f_519" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_519", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_163_env_f_518", align 8
  %"$$fundef_163_env_g_520" = getelementptr inbounds %"$$fundef_163_env_460", %"$$fundef_163_env_460"* %"$$fundef_163_envp_514", i32 0, i32 1
  %"$g_521" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_521", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_163_env_g_520", align 8
  %"$$fundef_163_env_z_522" = getelementptr inbounds %"$$fundef_163_env_460", %"$$fundef_163_env_460"* %"$$fundef_163_envp_514", i32 0, i32 2
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_163_env_z_522", align 8
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_163_cloval_517", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_162", align 8, !dbg !233
  %"$$retval_162_523" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_162", align 8
  ret { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_162_523"
}

define internal { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_159"(%"$$fundef_159_env_462"* %0, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1) !dbg !234 {
entry:
  %"$retval_160" = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_487" = icmp ugt i64 1, %"$gasrem_486"
  br i1 %"$gascmp_487", label %"$out_of_gas_488", label %"$have_gas_489"

"$out_of_gas_488":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_489"

"$have_gas_489":                                  ; preds = %"$out_of_gas_488", %entry
  %"$consume_490" = sub i64 %"$gasrem_486", 1
  store i64 %"$consume_490", i64* @_gasrem, align 8
  %"$gasrem_491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_492" = icmp ugt i64 1, %"$gasrem_491"
  br i1 %"$gascmp_492", label %"$out_of_gas_493", label %"$have_gas_494"

"$out_of_gas_493":                                ; preds = %"$have_gas_489"
  call void @_out_of_gas()
  br label %"$have_gas_494"

"$have_gas_494":                                  ; preds = %"$out_of_gas_493", %"$have_gas_489"
  %"$consume_495" = sub i64 %"$gasrem_491", 1
  store i64 %"$consume_495", i64* @_gasrem, align 8
  %"$$fundef_161_envp_496_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_161_envp_496_salloc" = call i8* @_salloc(i8* %"$$fundef_161_envp_496_load", i64 32)
  %"$$fundef_161_envp_496" = bitcast i8* %"$$fundef_161_envp_496_salloc" to %"$$fundef_161_env_461"*
  %"$$fundef_161_env_voidp_498" = bitcast %"$$fundef_161_env_461"* %"$$fundef_161_envp_496" to i8*
  %"$$fundef_161_cloval_499" = insertvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_161_env_461"*, %TName_List_ByStr20*)* @"$fundef_161" to { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_161_env_voidp_498", 1
  %g = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_161_cloval_499", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8, !dbg !235
  %"$$fundef_161_env_f_500" = getelementptr inbounds %"$$fundef_161_env_461", %"$$fundef_161_env_461"* %"$$fundef_161_envp_496", i32 0, i32 0
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_161_env_f_500", align 8
  %"$$fundef_161_env_g_501" = getelementptr inbounds %"$$fundef_161_env_461", %"$$fundef_161_env_461"* %"$$fundef_161_envp_496", i32 0, i32 1
  %"$g_502" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_502", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_161_env_g_501", align 8
  %"$g_503" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_503", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_160", align 8, !dbg !235
  %"$$retval_160_504" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_160", align 8
  ret { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_160_504"
}

define internal { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_157"(%"$$fundef_157_env_463"* %0) !dbg !236 {
entry:
  %"$retval_158" = alloca { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 1, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %entry
  %"$consume_481" = sub i64 %"$gasrem_477", 1
  store i64 %"$consume_481", i64* @_gasrem, align 8
  store { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })* bitcast ({ { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_159_env_462"*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })* @"$fundef_159" to { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*), i8* null }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_158", align 8, !dbg !237
  %"$$retval_158_485" = load { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_158", align 8
  ret { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_158_485"
}

define internal { i8*, i8* }* @"$fundef_155"(%"$$fundef_155_env_464"* %0) !dbg !238 {
entry:
  %"$retval_156" = alloca { i8*, i8* }*, align 8
  %"$gasrem_465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_466" = icmp ugt i64 1, %"$gasrem_465"
  br i1 %"$gascmp_466", label %"$out_of_gas_467", label %"$have_gas_468"

"$out_of_gas_467":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_468"

"$have_gas_468":                                  ; preds = %"$out_of_gas_467", %entry
  %"$consume_469" = sub i64 %"$gasrem_465", 1
  store i64 %"$consume_469", i64* @_gasrem, align 8
  %"$dyndisp_table_473_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_473_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_473_salloc_load", i64 48)
  %"$dyndisp_table_473_salloc" = bitcast i8* %"$dyndisp_table_473_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_473" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_473_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_474" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_473", i32 1
  %"$dyndisp_pcast_475" = bitcast { i8*, i8* }* %"$dyndisp_gep_474" to { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_157_env_463"*)* @"$fundef_157" to { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_475", align 8
  store { i8*, i8* }* %"$dyndisp_table_473", { i8*, i8* }** %"$retval_156", align 8, !dbg !239
  %"$$retval_156_476" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_156", align 8
  ret { i8*, i8* }* %"$$retval_156_476"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare [32 x i8]* @_sha256hash(i8*, %_TyDescrTy_Typ*, i8*)

declare i8* @_concat_ByStrX(i8*, i32, i8*, i32, i8*)

define void @_init_libs() !dbg !240 {
entry:
  %"$gasrem_2311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2312" = icmp ugt i64 1, %"$gasrem_2311"
  br i1 %"$gascmp_2312", label %"$out_of_gas_2313", label %"$have_gas_2314"

"$out_of_gas_2313":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2314"

"$have_gas_2314":                                 ; preds = %"$out_of_gas_2313", %entry
  %"$consume_2315" = sub i64 %"$gasrem_2311", 1
  store i64 %"$consume_2315", i64* @_gasrem, align 8
  %"$dyndisp_table_2319_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2319_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2319_salloc_load", i64 48)
  %"$dyndisp_table_2319_salloc" = bitcast i8* %"$dyndisp_table_2319_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2319" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2319_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2320" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2319", i32 0
  %"$dyndisp_pcast_2321" = bitcast { i8*, i8* }* %"$dyndisp_gep_2320" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_155_env_464"*)* @"$fundef_155" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_2321", align 8
  store { i8*, i8* }* %"$dyndisp_table_2319", { i8*, i8* }** @list_foldr, align 8, !dbg !242
  %"$gasrem_2322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2323" = icmp ugt i64 1, %"$gasrem_2322"
  br i1 %"$gascmp_2323", label %"$out_of_gas_2324", label %"$have_gas_2325"

"$out_of_gas_2324":                               ; preds = %"$have_gas_2314"
  call void @_out_of_gas()
  br label %"$have_gas_2325"

"$have_gas_2325":                                 ; preds = %"$out_of_gas_2324", %"$have_gas_2314"
  %"$consume_2326" = sub i64 %"$gasrem_2322", 1
  store i64 %"$consume_2326", i64* @_gasrem, align 8
  %"$dyndisp_table_2330_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2330_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2330_salloc_load", i64 48)
  %"$dyndisp_table_2330_salloc" = bitcast i8* %"$dyndisp_table_2330_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2330" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2330_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2331" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2330", i32 0
  %"$dyndisp_pcast_2332" = bitcast { i8*, i8* }* %"$dyndisp_gep_2331" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_143_env_459"*)* @"$fundef_143" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_2332", align 8
  store { i8*, i8* }* %"$dyndisp_table_2330", { i8*, i8* }** @list_foldk, align 8, !dbg !242
  %"$gasrem_2333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2334" = icmp ugt i64 1, %"$gasrem_2333"
  br i1 %"$gascmp_2334", label %"$out_of_gas_2335", label %"$have_gas_2336"

"$out_of_gas_2335":                               ; preds = %"$have_gas_2325"
  call void @_out_of_gas()
  br label %"$have_gas_2336"

"$have_gas_2336":                                 ; preds = %"$out_of_gas_2335", %"$have_gas_2325"
  %"$consume_2337" = sub i64 %"$gasrem_2333", 1
  store i64 %"$consume_2337", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_171_env_453"*, %TName_Bool*)* @"$fundef_171" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !243
  %"$gasrem_2341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2342" = icmp ugt i64 1, %"$gasrem_2341"
  br i1 %"$gascmp_2342", label %"$out_of_gas_2343", label %"$have_gas_2344"

"$out_of_gas_2343":                               ; preds = %"$have_gas_2336"
  call void @_out_of_gas()
  br label %"$have_gas_2344"

"$have_gas_2344":                                 ; preds = %"$out_of_gas_2343", %"$have_gas_2336"
  %"$consume_2345" = sub i64 %"$gasrem_2341", 1
  store i64 %"$consume_2345", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_167_env_451"*, %TName_Bool*)* @"$fundef_167" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8, !dbg !244
  %"$gasrem_2349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2350" = icmp ugt i64 1, %"$gasrem_2349"
  br i1 %"$gascmp_2350", label %"$out_of_gas_2351", label %"$have_gas_2352"

"$out_of_gas_2351":                               ; preds = %"$have_gas_2344"
  call void @_out_of_gas()
  br label %"$have_gas_2352"

"$have_gas_2352":                                 ; preds = %"$out_of_gas_2351", %"$have_gas_2344"
  %"$consume_2353" = sub i64 %"$gasrem_2349", 1
  store i64 %"$consume_2353", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_165_env_449"*, %TName_Bool*)* @"$fundef_165" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8, !dbg !245
  %"$gasrem_2357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2358" = icmp ugt i64 1, %"$gasrem_2357"
  br i1 %"$gascmp_2358", label %"$out_of_gas_2359", label %"$have_gas_2360"

"$out_of_gas_2359":                               ; preds = %"$have_gas_2352"
  call void @_out_of_gas()
  br label %"$have_gas_2360"

"$have_gas_2360":                                 ; preds = %"$out_of_gas_2359", %"$have_gas_2352"
  %"$consume_2361" = sub i64 %"$gasrem_2357", 1
  store i64 %"$consume_2361", i64* @_gasrem, align 8
  %"$$fundef_197_envp_2362_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_197_envp_2362_salloc" = call i8* @_salloc(i8* %"$$fundef_197_envp_2362_load", i64 8)
  %"$$fundef_197_envp_2362" = bitcast i8* %"$$fundef_197_envp_2362_salloc" to %"$$fundef_197_env_448"*
  %"$$fundef_197_env_voidp_2364" = bitcast %"$$fundef_197_env_448"* %"$$fundef_197_envp_2362" to i8*
  %"$$fundef_197_cloval_2365" = insertvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_197_env_448"*)* @"$fundef_197" to { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_197_env_voidp_2364", 1
  %"$$fundef_197_env_list_foldr_2366" = getelementptr inbounds %"$$fundef_197_env_448", %"$$fundef_197_env_448"* %"$$fundef_197_envp_2362", i32 0, i32 0
  %"$list_foldr_2367" = load { i8*, i8* }*, { i8*, i8* }** @list_foldr, align 8
  store { i8*, i8* }* %"$list_foldr_2367", { i8*, i8* }** %"$$fundef_197_env_list_foldr_2366", align 8
  %"$dyndisp_table_2368_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2368_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2368_salloc_load", i64 48)
  %"$dyndisp_table_2368_salloc" = bitcast i8* %"$dyndisp_table_2368_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2368" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2368_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2369" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2368", i32 0
  %"$dyndisp_pcast_2370" = bitcast { i8*, i8* }* %"$dyndisp_gep_2369" to { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_197_cloval_2365", { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2370", align 8
  store { i8*, i8* }* %"$dyndisp_table_2368", { i8*, i8* }** @ListUtils.list_filter, align 8, !dbg !246
  %"$gasrem_2371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2372" = icmp ugt i64 1, %"$gasrem_2371"
  br i1 %"$gascmp_2372", label %"$out_of_gas_2373", label %"$have_gas_2374"

"$out_of_gas_2373":                               ; preds = %"$have_gas_2360"
  call void @_out_of_gas()
  br label %"$have_gas_2374"

"$have_gas_2374":                                 ; preds = %"$out_of_gas_2373", %"$have_gas_2360"
  %"$consume_2375" = sub i64 %"$gasrem_2371", 1
  store i64 %"$consume_2375", i64* @_gasrem, align 8
  %"$$fundef_187_envp_2376_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_187_envp_2376_salloc" = call i8* @_salloc(i8* %"$$fundef_187_envp_2376_load", i64 8)
  %"$$fundef_187_envp_2376" = bitcast i8* %"$$fundef_187_envp_2376_salloc" to %"$$fundef_187_env_444"*
  %"$$fundef_187_env_voidp_2378" = bitcast %"$$fundef_187_env_444"* %"$$fundef_187_envp_2376" to i8*
  %"$$fundef_187_cloval_2379" = insertvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_187_env_444"*)* @"$fundef_187" to { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_187_env_voidp_2378", 1
  %"$$fundef_187_env_list_foldk_2380" = getelementptr inbounds %"$$fundef_187_env_444", %"$$fundef_187_env_444"* %"$$fundef_187_envp_2376", i32 0, i32 0
  %"$list_foldk_2381" = load { i8*, i8* }*, { i8*, i8* }** @list_foldk, align 8
  store { i8*, i8* }* %"$list_foldk_2381", { i8*, i8* }** %"$$fundef_187_env_list_foldk_2380", align 8
  %"$dyndisp_table_2382_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2382_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2382_salloc_load", i64 48)
  %"$dyndisp_table_2382_salloc" = bitcast i8* %"$dyndisp_table_2382_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2382" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2382_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2383" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2382", i32 0
  %"$dyndisp_pcast_2384" = bitcast { i8*, i8* }* %"$dyndisp_gep_2383" to { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_187_cloval_2379", { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2384", align 8
  store { i8*, i8* }* %"$dyndisp_table_2382", { i8*, i8* }** @ListUtils.list_find, align 8, !dbg !247
  %"$gasrem_2385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2386" = icmp ugt i64 1, %"$gasrem_2385"
  br i1 %"$gascmp_2386", label %"$out_of_gas_2387", label %"$have_gas_2388"

"$out_of_gas_2387":                               ; preds = %"$have_gas_2374"
  call void @_out_of_gas()
  br label %"$have_gas_2388"

"$have_gas_2388":                                 ; preds = %"$out_of_gas_2387", %"$have_gas_2374"
  %"$consume_2389" = sub i64 %"$gasrem_2385", 1
  store i64 %"$consume_2389", i64* @_gasrem, align 8
  %"$$fundef_181_envp_2390_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_181_envp_2390_salloc" = call i8* @_salloc(i8* %"$$fundef_181_envp_2390_load", i64 8)
  %"$$fundef_181_envp_2390" = bitcast i8* %"$$fundef_181_envp_2390_salloc" to %"$$fundef_181_env_439"*
  %"$$fundef_181_env_voidp_2392" = bitcast %"$$fundef_181_env_439"* %"$$fundef_181_envp_2390" to i8*
  %"$$fundef_181_cloval_2393" = insertvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_181_env_439"*)* @"$fundef_181" to { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_181_env_voidp_2392", 1
  %"$$fundef_181_env_ListUtils.list_find_2394" = getelementptr inbounds %"$$fundef_181_env_439", %"$$fundef_181_env_439"* %"$$fundef_181_envp_2390", i32 0, i32 0
  %"$ListUtils.list_find_2395" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_find, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_2395", { i8*, i8* }** %"$$fundef_181_env_ListUtils.list_find_2394", align 8
  %"$dyndisp_table_2396_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2396_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2396_salloc_load", i64 48)
  %"$dyndisp_table_2396_salloc" = bitcast i8* %"$dyndisp_table_2396_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2396" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2396_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2397" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2396", i32 0
  %"$dyndisp_pcast_2398" = bitcast { i8*, i8* }* %"$dyndisp_gep_2397" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_181_cloval_2393", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2398", align 8
  store { i8*, i8* }* %"$dyndisp_table_2396", { i8*, i8* }** @ListUtils.list_exists, align 8, !dbg !248
  %"$gasrem_2399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2400" = icmp ugt i64 1, %"$gasrem_2399"
  br i1 %"$gascmp_2400", label %"$out_of_gas_2401", label %"$have_gas_2402"

"$out_of_gas_2401":                               ; preds = %"$have_gas_2388"
  call void @_out_of_gas()
  br label %"$have_gas_2402"

"$have_gas_2402":                                 ; preds = %"$out_of_gas_2401", %"$have_gas_2388"
  %"$consume_2403" = sub i64 %"$gasrem_2399", 1
  store i64 %"$consume_2403", i64* @_gasrem, align 8
  %"$$fundef_175_envp_2404_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_175_envp_2404_salloc" = call i8* @_salloc(i8* %"$$fundef_175_envp_2404_load", i64 8)
  %"$$fundef_175_envp_2404" = bitcast i8* %"$$fundef_175_envp_2404_salloc" to %"$$fundef_175_env_436"*
  %"$$fundef_175_env_voidp_2406" = bitcast %"$$fundef_175_env_436"* %"$$fundef_175_envp_2404" to i8*
  %"$$fundef_175_cloval_2407" = insertvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_175_env_436"*)* @"$fundef_175" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_175_env_voidp_2406", 1
  %"$$fundef_175_env_ListUtils.list_exists_2408" = getelementptr inbounds %"$$fundef_175_env_436", %"$$fundef_175_env_436"* %"$$fundef_175_envp_2404", i32 0, i32 0
  %"$ListUtils.list_exists_2409" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_exists, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_2409", { i8*, i8* }** %"$$fundef_175_env_ListUtils.list_exists_2408", align 8
  %"$dyndisp_table_2410_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2410_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2410_salloc_load", i64 48)
  %"$dyndisp_table_2410_salloc" = bitcast i8* %"$dyndisp_table_2410_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2410" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2410_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2411" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2410", i32 0
  %"$dyndisp_pcast_2412" = bitcast { i8*, i8* }* %"$dyndisp_gep_2411" to { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_175_cloval_2407", { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2412", align 8
  store { i8*, i8* }* %"$dyndisp_table_2410", { i8*, i8* }** @ListUtils.list_mem, align 8, !dbg !249
  %"$gasrem_2413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2414" = icmp ugt i64 1, %"$gasrem_2413"
  br i1 %"$gascmp_2414", label %"$out_of_gas_2415", label %"$have_gas_2416"

"$out_of_gas_2415":                               ; preds = %"$have_gas_2402"
  call void @_out_of_gas()
  br label %"$have_gas_2416"

"$have_gas_2416":                                 ; preds = %"$out_of_gas_2415", %"$have_gas_2402"
  %"$consume_2417" = sub i64 %"$gasrem_2413", 1
  store i64 %"$consume_2417", i64* @_gasrem, align 8
  store [20 x i8] zeroinitializer, [20 x i8]* @ud-registry.zeroByStr20, align 1, !dbg !250
  %"$gasrem_2418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2419" = icmp ugt i64 1, %"$gasrem_2418"
  br i1 %"$gascmp_2419", label %"$out_of_gas_2420", label %"$have_gas_2421"

"$out_of_gas_2420":                               ; preds = %"$have_gas_2416"
  call void @_out_of_gas()
  br label %"$have_gas_2421"

"$have_gas_2421":                                 ; preds = %"$out_of_gas_2420", %"$have_gas_2416"
  %"$consume_2422" = sub i64 %"$gasrem_2418", 1
  store i64 %"$consume_2422", i64* @_gasrem, align 8
  %"$adtval_2423_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2423_salloc" = call i8* @_salloc(i8* %"$adtval_2423_load", i64 1)
  %"$adtval_2423" = bitcast i8* %"$adtval_2423_salloc" to %CName_Nil_ByStr20*
  %"$adtgep_2424" = getelementptr inbounds %CName_Nil_ByStr20, %CName_Nil_ByStr20* %"$adtval_2423", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2424", align 1
  %"$adtptr_2425" = bitcast %CName_Nil_ByStr20* %"$adtval_2423" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2425", %TName_List_ByStr20** @ud-registry.nilByStr20, align 8, !dbg !251
  %"$gasrem_2426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2427" = icmp ugt i64 1, %"$gasrem_2426"
  br i1 %"$gascmp_2427", label %"$out_of_gas_2428", label %"$have_gas_2429"

"$out_of_gas_2428":                               ; preds = %"$have_gas_2421"
  call void @_out_of_gas()
  br label %"$have_gas_2429"

"$have_gas_2429":                                 ; preds = %"$out_of_gas_2428", %"$have_gas_2421"
  %"$consume_2430" = sub i64 %"$gasrem_2426", 1
  store i64 %"$consume_2430", i64* @_gasrem, align 8
  %"$adtval_2431_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2431_salloc" = call i8* @_salloc(i8* %"$adtval_2431_load", i64 1)
  %"$adtval_2431" = bitcast i8* %"$adtval_2431_salloc" to %CName_Nil_Message*
  %"$adtgep_2432" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_2431", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2432", align 1
  %"$adtptr_2433" = bitcast %CName_Nil_Message* %"$adtval_2431" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_2433", %TName_List_Message** @ud-registry.nilMessage, align 8, !dbg !252
  %"$gasrem_2434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2435" = icmp ugt i64 1, %"$gasrem_2434"
  br i1 %"$gascmp_2435", label %"$out_of_gas_2436", label %"$have_gas_2437"

"$out_of_gas_2436":                               ; preds = %"$have_gas_2429"
  call void @_out_of_gas()
  br label %"$have_gas_2437"

"$have_gas_2437":                                 ; preds = %"$out_of_gas_2436", %"$have_gas_2429"
  %"$consume_2438" = sub i64 %"$gasrem_2434", 1
  store i64 %"$consume_2438", i64* @_gasrem, align 8
  %"$$fundef_267_envp_2439_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_267_envp_2439_salloc" = call i8* @_salloc(i8* %"$$fundef_267_envp_2439_load", i64 8)
  %"$$fundef_267_envp_2439" = bitcast i8* %"$$fundef_267_envp_2439_salloc" to %"$$fundef_267_env_433"*
  %"$$fundef_267_env_voidp_2441" = bitcast %"$$fundef_267_env_433"* %"$$fundef_267_envp_2439" to i8*
  %"$$fundef_267_cloval_2442" = insertvalue { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_267_env_433"*, i8*)* @"$fundef_267" to %TName_List_Message* (i8*, i8*)*), i8* undef }, i8* %"$$fundef_267_env_voidp_2441", 1
  %"$$fundef_267_env_ud-registry.nilMessage_2443" = getelementptr inbounds %"$$fundef_267_env_433", %"$$fundef_267_env_433"* %"$$fundef_267_envp_2439", i32 0, i32 0
  %"$ud-registry.nilMessage_2444" = load %TName_List_Message*, %TName_List_Message** @ud-registry.nilMessage, align 8
  store %TName_List_Message* %"$ud-registry.nilMessage_2444", %TName_List_Message** %"$$fundef_267_env_ud-registry.nilMessage_2443", align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } %"$$fundef_267_cloval_2442", { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8, !dbg !253
  %"$gasrem_2445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2446" = icmp ugt i64 1, %"$gasrem_2445"
  br i1 %"$gascmp_2446", label %"$out_of_gas_2447", label %"$have_gas_2448"

"$out_of_gas_2447":                               ; preds = %"$have_gas_2437"
  call void @_out_of_gas()
  br label %"$have_gas_2448"

"$have_gas_2448":                                 ; preds = %"$out_of_gas_2447", %"$have_gas_2437"
  %"$consume_2449" = sub i64 %"$gasrem_2445", 1
  store i64 %"$consume_2449", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_263_env_432"*, [20 x i8]*)* @"$fundef_263" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eqByStr20, align 8, !dbg !254
  %"$gasrem_2453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2454" = icmp ugt i64 1, %"$gasrem_2453"
  br i1 %"$gascmp_2454", label %"$out_of_gas_2455", label %"$have_gas_2456"

"$out_of_gas_2455":                               ; preds = %"$have_gas_2448"
  call void @_out_of_gas()
  br label %"$have_gas_2456"

"$have_gas_2456":                                 ; preds = %"$out_of_gas_2455", %"$have_gas_2448"
  %"$consume_2457" = sub i64 %"$gasrem_2453", 1
  store i64 %"$consume_2457", i64* @_gasrem, align 8
  %"$$fundef_259_envp_2458_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_259_envp_2458_salloc" = call i8* @_salloc(i8* %"$$fundef_259_envp_2458_load", i64 24)
  %"$$fundef_259_envp_2458" = bitcast i8* %"$$fundef_259_envp_2458_salloc" to %"$$fundef_259_env_430"*
  %"$$fundef_259_env_voidp_2460" = bitcast %"$$fundef_259_env_430"* %"$$fundef_259_envp_2458" to i8*
  %"$$fundef_259_cloval_2461" = insertvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_259_env_430"*, %TName_List_ByStr20*)* @"$fundef_259" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_259_env_voidp_2460", 1
  %"$$fundef_259_env_ListUtils.list_mem_2462" = getelementptr inbounds %"$$fundef_259_env_430", %"$$fundef_259_env_430"* %"$$fundef_259_envp_2458", i32 0, i32 0
  %"$ListUtils.list_mem_2463" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_mem, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_2463", { i8*, i8* }** %"$$fundef_259_env_ListUtils.list_mem_2462", align 8
  %"$$fundef_259_env_ud-registry.eqByStr20_2464" = getelementptr inbounds %"$$fundef_259_env_430", %"$$fundef_259_env_430"* %"$$fundef_259_envp_2458", i32 0, i32 1
  %"$ud-registry.eqByStr20_2465" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eqByStr20, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_2465", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_259_env_ud-registry.eqByStr20_2464", align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_259_cloval_2461", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8, !dbg !255
  %"$gasrem_2466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2467" = icmp ugt i64 1, %"$gasrem_2466"
  br i1 %"$gascmp_2467", label %"$out_of_gas_2468", label %"$have_gas_2469"

"$out_of_gas_2468":                               ; preds = %"$have_gas_2456"
  call void @_out_of_gas()
  br label %"$have_gas_2469"

"$have_gas_2469":                                 ; preds = %"$out_of_gas_2468", %"$have_gas_2456"
  %"$consume_2470" = sub i64 %"$gasrem_2466", 1
  store i64 %"$consume_2470", i64* @_gasrem, align 8
  %"$$fundef_255_envp_2471_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_255_envp_2471_salloc" = call i8* @_salloc(i8* %"$$fundef_255_envp_2471_load", i64 32)
  %"$$fundef_255_envp_2471" = bitcast i8* %"$$fundef_255_envp_2471_salloc" to %"$$fundef_255_env_428"*
  %"$$fundef_255_env_voidp_2473" = bitcast %"$$fundef_255_env_428"* %"$$fundef_255_envp_2471" to i8*
  %"$$fundef_255_cloval_2474" = insertvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_255_env_428"*, %TName_List_ByStr20*)* @"$fundef_255" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_255_env_voidp_2473", 1
  %"$$fundef_255_env_BoolUtils.negb_2475" = getelementptr inbounds %"$$fundef_255_env_428", %"$$fundef_255_env_428"* %"$$fundef_255_envp_2471", i32 0, i32 0
  %"$BoolUtils.negb_2476" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_2476", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_255_env_BoolUtils.negb_2475", align 8
  %"$$fundef_255_env_ud-registry.listByStr20Contains_2477" = getelementptr inbounds %"$$fundef_255_env_428", %"$$fundef_255_env_428"* %"$$fundef_255_envp_2471", i32 0, i32 1
  %"$ud-registry.listByStr20Contains_2478" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2478", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_255_env_ud-registry.listByStr20Contains_2477", align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_255_cloval_2474", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes, align 8, !dbg !256
  %"$gasrem_2479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2480" = icmp ugt i64 1, %"$gasrem_2479"
  br i1 %"$gascmp_2480", label %"$out_of_gas_2481", label %"$have_gas_2482"

"$out_of_gas_2481":                               ; preds = %"$have_gas_2469"
  call void @_out_of_gas()
  br label %"$have_gas_2482"

"$have_gas_2482":                                 ; preds = %"$out_of_gas_2481", %"$have_gas_2469"
  %"$consume_2483" = sub i64 %"$gasrem_2479", 1
  store i64 %"$consume_2483", i64* @_gasrem, align 8
  %"$$fundef_249_envp_2484_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_249_envp_2484_salloc" = call i8* @_salloc(i8* %"$$fundef_249_envp_2484_load", i64 24)
  %"$$fundef_249_envp_2484" = bitcast i8* %"$$fundef_249_envp_2484_salloc" to %"$$fundef_249_env_426"*
  %"$$fundef_249_env_voidp_2486" = bitcast %"$$fundef_249_env_426"* %"$$fundef_249_envp_2484" to i8*
  %"$$fundef_249_cloval_2487" = insertvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_249_env_426"*, %TName_List_ByStr20*)* @"$fundef_249" to { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_249_env_voidp_2486", 1
  %"$$fundef_249_env_BoolUtils.negb_2488" = getelementptr inbounds %"$$fundef_249_env_426", %"$$fundef_249_env_426"* %"$$fundef_249_envp_2484", i32 0, i32 0
  %"$BoolUtils.negb_2489" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_2489", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_249_env_BoolUtils.negb_2488", align 8
  %"$$fundef_249_env_ListUtils.list_filter_2490" = getelementptr inbounds %"$$fundef_249_env_426", %"$$fundef_249_env_426"* %"$$fundef_249_envp_2484", i32 0, i32 1
  %"$ListUtils.list_filter_2491" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_filter, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_2491", { i8*, i8* }** %"$$fundef_249_env_ListUtils.list_filter_2490", align 8
  store { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_249_cloval_2487", { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8, !dbg !257
  %"$gasrem_2492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2493" = icmp ugt i64 1, %"$gasrem_2492"
  br i1 %"$gascmp_2493", label %"$out_of_gas_2494", label %"$have_gas_2495"

"$out_of_gas_2494":                               ; preds = %"$have_gas_2482"
  call void @_out_of_gas()
  br label %"$have_gas_2495"

"$have_gas_2495":                                 ; preds = %"$out_of_gas_2494", %"$have_gas_2482"
  %"$consume_2496" = sub i64 %"$gasrem_2492", 1
  store i64 %"$consume_2496", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_245_env_423"*, %TName_Bool*)* @"$fundef_245" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8, !dbg !258
  %"$gasrem_2500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2501" = icmp ugt i64 1, %"$gasrem_2500"
  br i1 %"$gascmp_2501", label %"$out_of_gas_2502", label %"$have_gas_2503"

"$out_of_gas_2502":                               ; preds = %"$have_gas_2495"
  call void @_out_of_gas()
  br label %"$have_gas_2503"

"$have_gas_2503":                                 ; preds = %"$out_of_gas_2502", %"$have_gas_2495"
  %"$consume_2504" = sub i64 %"$gasrem_2500", 1
  store i64 %"$consume_2504", i64* @_gasrem, align 8
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_241_env_421"*, [20 x i8]*)* @"$fundef_241" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eAdminSet, align 8, !dbg !259
  %"$gasrem_2508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2509" = icmp ugt i64 1, %"$gasrem_2508"
  br i1 %"$gascmp_2509", label %"$out_of_gas_2510", label %"$have_gas_2511"

"$out_of_gas_2510":                               ; preds = %"$have_gas_2503"
  call void @_out_of_gas()
  br label %"$have_gas_2511"

"$have_gas_2511":                                 ; preds = %"$out_of_gas_2510", %"$have_gas_2503"
  %"$consume_2512" = sub i64 %"$gasrem_2508", 1
  store i64 %"$consume_2512", i64* @_gasrem, align 8
  store { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_235_env_419"*, [20 x i8]*)* @"$fundef_235" to { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApprovedFor, align 8, !dbg !260
  %"$gasrem_2516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2517" = icmp ugt i64 1, %"$gasrem_2516"
  br i1 %"$gascmp_2517", label %"$out_of_gas_2518", label %"$have_gas_2519"

"$out_of_gas_2518":                               ; preds = %"$have_gas_2511"
  call void @_out_of_gas()
  br label %"$have_gas_2519"

"$have_gas_2519":                                 ; preds = %"$out_of_gas_2518", %"$have_gas_2511"
  %"$consume_2520" = sub i64 %"$gasrem_2516", 1
  store i64 %"$consume_2520", i64* @_gasrem, align 8
  store { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_233_env_416"*, [20 x i8]*)* @"$fundef_233" to i8* (i8*, [20 x i8]*)*), i8* null }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApproved, align 8, !dbg !261
  %"$gasrem_2524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2525" = icmp ugt i64 1, %"$gasrem_2524"
  br i1 %"$gascmp_2525", label %"$out_of_gas_2526", label %"$have_gas_2527"

"$out_of_gas_2526":                               ; preds = %"$have_gas_2519"
  call void @_out_of_gas()
  br label %"$have_gas_2527"

"$have_gas_2527":                                 ; preds = %"$out_of_gas_2526", %"$have_gas_2519"
  %"$consume_2528" = sub i64 %"$gasrem_2524", 1
  store i64 %"$consume_2528", i64* @_gasrem, align 8
  store { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_231_env_415"*, [20 x i8]*)* @"$fundef_231" to i8* (i8*, [20 x i8]*)*), i8* null }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eNewRegistrar, align 8, !dbg !262
  %"$gasrem_2532" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2533" = icmp ugt i64 1, %"$gasrem_2532"
  br i1 %"$gascmp_2533", label %"$out_of_gas_2534", label %"$have_gas_2535"

"$out_of_gas_2534":                               ; preds = %"$have_gas_2527"
  call void @_out_of_gas()
  br label %"$have_gas_2535"

"$have_gas_2535":                                 ; preds = %"$out_of_gas_2534", %"$have_gas_2527"
  %"$consume_2536" = sub i64 %"$gasrem_2532", 1
  store i64 %"$consume_2536", i64* @_gasrem, align 8
  store { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)* bitcast ({ i8* (i8*, %String)*, i8* } (%"$$fundef_227_env_414"*, [32 x i8]*)* @"$fundef_227" to { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain, align 8, !dbg !263
  %"$gasrem_2540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2541" = icmp ugt i64 1, %"$gasrem_2540"
  br i1 %"$gascmp_2541", label %"$out_of_gas_2542", label %"$have_gas_2543"

"$out_of_gas_2542":                               ; preds = %"$have_gas_2535"
  call void @_out_of_gas()
  br label %"$have_gas_2543"

"$have_gas_2543":                                 ; preds = %"$out_of_gas_2542", %"$have_gas_2535"
  %"$consume_2544" = sub i64 %"$gasrem_2540", 1
  store i64 %"$consume_2544", i64* @_gasrem, align 8
  store { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)* bitcast ({ { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_221_env_412"*, [32 x i8]*)* @"$fundef_221" to { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8, !dbg !264
  %"$gasrem_2548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2549" = icmp ugt i64 1, %"$gasrem_2548"
  br i1 %"$gascmp_2549", label %"$out_of_gas_2550", label %"$have_gas_2551"

"$out_of_gas_2550":                               ; preds = %"$have_gas_2543"
  call void @_out_of_gas()
  br label %"$have_gas_2551"

"$have_gas_2551":                                 ; preds = %"$out_of_gas_2550", %"$have_gas_2543"
  %"$consume_2552" = sub i64 %"$gasrem_2548", 1
  store i64 %"$consume_2552", i64* @_gasrem, align 8
  store { i8* (i8*, %String)*, i8* } { i8* (i8*, %String)* bitcast (i8* (%"$$fundef_219_env_409"*, %String)* @"$fundef_219" to i8* (i8*, %String)*), i8* null }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8, !dbg !265
  %"$gasrem_2556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2557" = icmp ugt i64 1, %"$gasrem_2556"
  br i1 %"$gascmp_2557", label %"$out_of_gas_2558", label %"$have_gas_2559"

"$out_of_gas_2558":                               ; preds = %"$have_gas_2551"
  call void @_out_of_gas()
  br label %"$have_gas_2559"

"$have_gas_2559":                                 ; preds = %"$out_of_gas_2558", %"$have_gas_2551"
  %"$consume_2560" = sub i64 %"$gasrem_2556", 1
  store i64 %"$consume_2560", i64* @_gasrem, align 8
  %"$$fundef_217_envp_2561_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_217_envp_2561_salloc" = call i8* @_salloc(i8* %"$$fundef_217_envp_2561_load", i64 20)
  %"$$fundef_217_envp_2561" = bitcast i8* %"$$fundef_217_envp_2561_salloc" to %"$$fundef_217_env_408"*
  %"$$fundef_217_env_voidp_2563" = bitcast %"$$fundef_217_env_408"* %"$$fundef_217_envp_2561" to i8*
  %"$$fundef_217_cloval_2564" = insertvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)* bitcast (void (%"$$fundef_217_env_408"*, [20 x i8]*, %TName_Option_ud-registry.Record*)* @"$fundef_217" to void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*), i8* undef }, i8* %"$$fundef_217_env_voidp_2563", 1
  %"$$fundef_217_env_ud-registry.zeroByStr20_2565" = getelementptr inbounds %"$$fundef_217_env_408", %"$$fundef_217_env_408"* %"$$fundef_217_envp_2561", i32 0, i32 0
  %"$ud-registry.zeroByStr20_2566" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_2566", [20 x i8]* %"$$fundef_217_env_ud-registry.zeroByStr20_2565", align 1
  store { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$$fundef_217_cloval_2564", { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8, !dbg !266
  %"$gasrem_2567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2568" = icmp ugt i64 1, %"$gasrem_2567"
  br i1 %"$gascmp_2568", label %"$out_of_gas_2569", label %"$have_gas_2570"

"$out_of_gas_2569":                               ; preds = %"$have_gas_2559"
  call void @_out_of_gas()
  br label %"$have_gas_2570"

"$have_gas_2570":                                 ; preds = %"$out_of_gas_2569", %"$have_gas_2559"
  %"$consume_2571" = sub i64 %"$gasrem_2567", 1
  store i64 %"$consume_2571", i64* @_gasrem, align 8
  store { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)* bitcast ({ void (i8*, [32 x i8]*, %String)*, i8* } (%"$$fundef_213_env_407"*, [32 x i8]*)* @"$fundef_213" to { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8, !dbg !267
  %"$gasrem_2575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2576" = icmp ugt i64 1, %"$gasrem_2575"
  br i1 %"$gascmp_2576", label %"$out_of_gas_2577", label %"$have_gas_2578"

"$out_of_gas_2577":                               ; preds = %"$have_gas_2570"
  call void @_out_of_gas()
  br label %"$have_gas_2578"

"$have_gas_2578":                                 ; preds = %"$out_of_gas_2577", %"$have_gas_2570"
  %"$consume_2579" = sub i64 %"$gasrem_2575", 1
  store i64 %"$consume_2579", i64* @_gasrem, align 8
  %"$$fundef_205_envp_2580_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_205_envp_2580_salloc" = call i8* @_salloc(i8* %"$$fundef_205_envp_2580_load", i64 32)
  %"$$fundef_205_envp_2580" = bitcast i8* %"$$fundef_205_envp_2580_salloc" to %"$$fundef_205_env_405"*
  %"$$fundef_205_env_voidp_2582" = bitcast %"$$fundef_205_env_405"* %"$$fundef_205_envp_2580" to i8*
  %"$$fundef_205_cloval_2583" = insertvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_205_env_405"*, [20 x i8]*)* @"$fundef_205" to { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_205_env_voidp_2582", 1
  %"$$fundef_205_env_BoolUtils.orb_2584" = getelementptr inbounds %"$$fundef_205_env_405", %"$$fundef_205_env_405"* %"$$fundef_205_envp_2580", i32 0, i32 0
  %"$BoolUtils.orb_2585" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2585", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_205_env_BoolUtils.orb_2584", align 8
  %"$$fundef_205_env_ud-registry.listByStr20Contains_2586" = getelementptr inbounds %"$$fundef_205_env_405", %"$$fundef_205_env_405"* %"$$fundef_205_envp_2580", i32 0, i32 1
  %"$ud-registry.listByStr20Contains_2587" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2587", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_205_env_ud-registry.listByStr20Contains_2586", align 8
  store { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_205_cloval_2583", { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8, !dbg !268
  ret void
}

define void @_init_state() !dbg !269 {
entry:
  %"$records_269" = alloca %Map_ByStr32_ud-registry.Record*, align 8
  %"$gasrem_2588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2589" = icmp ugt i64 1, %"$gasrem_2588"
  br i1 %"$gascmp_2589", label %"$out_of_gas_2590", label %"$have_gas_2591"

"$out_of_gas_2590":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2591"

"$have_gas_2591":                                 ; preds = %"$out_of_gas_2590", %entry
  %"$consume_2592" = sub i64 %"$gasrem_2588", 1
  store i64 %"$consume_2592", i64* @_gasrem, align 8
  %empty = alloca %Map_ByStr32_ud-registry.Record*, align 8
  %"$gasrem_2593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2594" = icmp ugt i64 1, %"$gasrem_2593"
  br i1 %"$gascmp_2594", label %"$out_of_gas_2595", label %"$have_gas_2596"

"$out_of_gas_2595":                               ; preds = %"$have_gas_2591"
  call void @_out_of_gas()
  br label %"$have_gas_2596"

"$have_gas_2596":                                 ; preds = %"$out_of_gas_2595", %"$have_gas_2591"
  %"$consume_2597" = sub i64 %"$gasrem_2593", 1
  store i64 %"$consume_2597", i64* @_gasrem, align 8
  %"$execptr_load_2598" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2599" = call i8* @_new_empty_map(i8* %"$execptr_load_2598")
  %"$_new_empty_map_2600" = bitcast i8* %"$_new_empty_map_call_2599" to %Map_ByStr32_ud-registry.Record*
  store %Map_ByStr32_ud-registry.Record* %"$_new_empty_map_2600", %Map_ByStr32_ud-registry.Record** %empty, align 8, !dbg !270
  %"$gasrem_2601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2602" = icmp ugt i64 1, %"$gasrem_2601"
  br i1 %"$gascmp_2602", label %"$out_of_gas_2603", label %"$have_gas_2604"

"$out_of_gas_2603":                               ; preds = %"$have_gas_2596"
  call void @_out_of_gas()
  br label %"$have_gas_2604"

"$have_gas_2604":                                 ; preds = %"$out_of_gas_2603", %"$have_gas_2596"
  %"$consume_2605" = sub i64 %"$gasrem_2601", 1
  store i64 %"$consume_2605", i64* @_gasrem, align 8
  %rootRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_2606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2607" = icmp ugt i64 1, %"$gasrem_2606"
  br i1 %"$gascmp_2607", label %"$out_of_gas_2608", label %"$have_gas_2609"

"$out_of_gas_2608":                               ; preds = %"$have_gas_2604"
  call void @_out_of_gas()
  br label %"$have_gas_2609"

"$have_gas_2609":                                 ; preds = %"$out_of_gas_2608", %"$have_gas_2604"
  %"$consume_2610" = sub i64 %"$gasrem_2606", 1
  store i64 %"$consume_2610", i64* @_gasrem, align 8
  %"$initialOwner_2611" = load [20 x i8], [20 x i8]* @initialOwner, align 1
  %"$ud-registry.zeroByStr20_2612" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_2613_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2613_salloc" = call i8* @_salloc(i8* %"$adtval_2613_load", i64 41)
  %"$adtval_2613" = bitcast i8* %"$adtval_2613_salloc" to %CName_ud-registry.Record*
  %"$adtgep_2614" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2613", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2614", align 1
  %"$adtgep_2615" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2613", i32 0, i32 1
  store [20 x i8] %"$initialOwner_2611", [20 x i8]* %"$adtgep_2615", align 1
  %"$adtgep_2616" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2613", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_2612", [20 x i8]* %"$adtgep_2616", align 1
  %"$adtptr_2617" = bitcast %CName_ud-registry.Record* %"$adtval_2613" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_2617", %TName_ud-registry.Record** %rootRecord, align 8, !dbg !271
  %"$execptr_load_2618" = load i8*, i8** @_execptr, align 8
  %"$empty_2619" = load %Map_ByStr32_ud-registry.Record*, %Map_ByStr32_ud-registry.Record** %empty, align 8
  %"$$empty_2619_2620" = bitcast %Map_ByStr32_ud-registry.Record* %"$empty_2619" to i8*
  %"$put_rootNode_2621" = alloca [32 x i8], align 1
  %"$rootNode_2622" = load [32 x i8], [32 x i8]* @rootNode, align 1
  store [32 x i8] %"$rootNode_2622", [32 x i8]* %"$put_rootNode_2621", align 1
  %"$$put_rootNode_2621_2623" = bitcast [32 x i8]* %"$put_rootNode_2621" to i8*
  %"$rootRecord_2624" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %rootRecord, align 8
  %"$$rootRecord_2624_2625" = bitcast %TName_ud-registry.Record* %"$rootRecord_2624" to i8*
  %"$put_call_2626" = call i8* @_put(i8* %"$execptr_load_2618", %_TyDescrTy_Typ* @"$TyDescr_Map_322", i8* %"$$empty_2619_2620", i8* %"$$put_rootNode_2621_2623", i8* %"$$rootRecord_2624_2625")
  %"$put_2627" = bitcast i8* %"$put_call_2626" to %Map_ByStr32_ud-registry.Record*
  store %Map_ByStr32_ud-registry.Record* %"$put_2627", %Map_ByStr32_ud-registry.Record** %"$records_269", align 8, !dbg !272
  %"$execptr_load_2628" = load i8*, i8** @_execptr, align 8
  %"$$records_269_2630" = load %Map_ByStr32_ud-registry.Record*, %Map_ByStr32_ud-registry.Record** %"$records_269", align 8
  %"$update_value_2631" = bitcast %Map_ByStr32_ud-registry.Record* %"$$records_269_2630" to i8*
  call void @_update_field(i8* %"$execptr_load_2628", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_2629", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 0, i8* null, i8* %"$update_value_2631"), !dbg !270
  %"$registrar_270" = alloca [20 x i8], align 1
  %"$gasrem_2632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2633" = icmp ugt i64 1, %"$gasrem_2632"
  br i1 %"$gascmp_2633", label %"$out_of_gas_2634", label %"$have_gas_2635"

"$out_of_gas_2634":                               ; preds = %"$have_gas_2609"
  call void @_out_of_gas()
  br label %"$have_gas_2635"

"$have_gas_2635":                                 ; preds = %"$out_of_gas_2634", %"$have_gas_2609"
  %"$consume_2636" = sub i64 %"$gasrem_2632", 1
  store i64 %"$consume_2636", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_2637" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_2637", [20 x i8]* %"$registrar_270", align 1, !dbg !273
  %"$execptr_load_2638" = load i8*, i8** @_execptr, align 8
  %"$$registrar_270_2640" = load [20 x i8], [20 x i8]* %"$registrar_270", align 1
  %"$update_value_2641" = alloca [20 x i8], align 1
  store [20 x i8] %"$$registrar_270_2640", [20 x i8]* %"$update_value_2641", align 1
  %"$update_value_2642" = bitcast [20 x i8]* %"$update_value_2641" to i8*
  call void @_update_field(i8* %"$execptr_load_2638", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_2639", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i32 0, i8* null, i8* %"$update_value_2642"), !dbg !273
  %"$approvals_271" = alloca %Map_ByStr32_ByStr20*, align 8
  %"$gasrem_2643" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2644" = icmp ugt i64 1, %"$gasrem_2643"
  br i1 %"$gascmp_2644", label %"$out_of_gas_2645", label %"$have_gas_2646"

"$out_of_gas_2645":                               ; preds = %"$have_gas_2635"
  call void @_out_of_gas()
  br label %"$have_gas_2646"

"$have_gas_2646":                                 ; preds = %"$out_of_gas_2645", %"$have_gas_2635"
  %"$consume_2647" = sub i64 %"$gasrem_2643", 1
  store i64 %"$consume_2647", i64* @_gasrem, align 8
  %"$execptr_load_2648" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2649" = call i8* @_new_empty_map(i8* %"$execptr_load_2648")
  %"$_new_empty_map_2650" = bitcast i8* %"$_new_empty_map_call_2649" to %Map_ByStr32_ByStr20*
  store %Map_ByStr32_ByStr20* %"$_new_empty_map_2650", %Map_ByStr32_ByStr20** %"$approvals_271", align 8, !dbg !274
  %"$execptr_load_2651" = load i8*, i8** @_execptr, align 8
  %"$$approvals_271_2653" = load %Map_ByStr32_ByStr20*, %Map_ByStr32_ByStr20** %"$approvals_271", align 8
  %"$update_value_2654" = bitcast %Map_ByStr32_ByStr20* %"$$approvals_271_2653" to i8*
  call void @_update_field(i8* %"$execptr_load_2651", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_2652", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 0, i8* null, i8* %"$update_value_2654"), !dbg !274
  %"$operators_272" = alloca %"Map_ByStr20_List_(ByStr20)"*, align 8
  %"$gasrem_2655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2656" = icmp ugt i64 1, %"$gasrem_2655"
  br i1 %"$gascmp_2656", label %"$out_of_gas_2657", label %"$have_gas_2658"

"$out_of_gas_2657":                               ; preds = %"$have_gas_2646"
  call void @_out_of_gas()
  br label %"$have_gas_2658"

"$have_gas_2658":                                 ; preds = %"$out_of_gas_2657", %"$have_gas_2646"
  %"$consume_2659" = sub i64 %"$gasrem_2655", 1
  store i64 %"$consume_2659", i64* @_gasrem, align 8
  %"$execptr_load_2660" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2661" = call i8* @_new_empty_map(i8* %"$execptr_load_2660")
  %"$_new_empty_map_2662" = bitcast i8* %"$_new_empty_map_call_2661" to %"Map_ByStr20_List_(ByStr20)"*
  store %"Map_ByStr20_List_(ByStr20)"* %"$_new_empty_map_2662", %"Map_ByStr20_List_(ByStr20)"** %"$operators_272", align 8, !dbg !275
  %"$execptr_load_2663" = load i8*, i8** @_execptr, align 8
  %"$$operators_272_2665" = load %"Map_ByStr20_List_(ByStr20)"*, %"Map_ByStr20_List_(ByStr20)"** %"$operators_272", align 8
  %"$update_value_2666" = bitcast %"Map_ByStr20_List_(ByStr20)"* %"$$operators_272_2665" to i8*
  call void @_update_field(i8* %"$execptr_load_2663", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_2664", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 0, i8* null, i8* %"$update_value_2666"), !dbg !275
  %"$admins_273" = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_2667" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2668" = icmp ugt i64 1, %"$gasrem_2667"
  br i1 %"$gascmp_2668", label %"$out_of_gas_2669", label %"$have_gas_2670"

"$out_of_gas_2669":                               ; preds = %"$have_gas_2658"
  call void @_out_of_gas()
  br label %"$have_gas_2670"

"$have_gas_2670":                                 ; preds = %"$out_of_gas_2669", %"$have_gas_2658"
  %"$consume_2671" = sub i64 %"$gasrem_2667", 1
  store i64 %"$consume_2671", i64* @_gasrem, align 8
  %"$initialOwner_2672" = load [20 x i8], [20 x i8]* @initialOwner, align 1
  %"$ud-registry.nilByStr20_2673" = load %TName_List_ByStr20*, %TName_List_ByStr20** @ud-registry.nilByStr20, align 8
  %"$adtval_2674_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2674_salloc" = call i8* @_salloc(i8* %"$adtval_2674_load", i64 29)
  %"$adtval_2674" = bitcast i8* %"$adtval_2674_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_2675" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2674", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2675", align 1
  %"$adtgep_2676" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2674", i32 0, i32 1
  store [20 x i8] %"$initialOwner_2672", [20 x i8]* %"$adtgep_2676", align 1
  %"$adtgep_2677" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2674", i32 0, i32 2
  store %TName_List_ByStr20* %"$ud-registry.nilByStr20_2673", %TName_List_ByStr20** %"$adtgep_2677", align 8
  %"$adtptr_2678" = bitcast %CName_Cons_ByStr20* %"$adtval_2674" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2678", %TName_List_ByStr20** %"$admins_273", align 8, !dbg !276
  %"$execptr_load_2679" = load i8*, i8** @_execptr, align 8
  %"$$admins_273_2681" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$admins_273", align 8
  %"$update_value_2682" = bitcast %TName_List_ByStr20* %"$$admins_273_2681" to i8*
  call void @_update_field(i8* %"$execptr_load_2679", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2680", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i8* %"$update_value_2682"), !dbg !276
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setAdmin_2683"(%Uint128 %_amount, [20 x i8]* %"$_origin_2684", [20 x i8]* %"$_sender_2685", [20 x i8]* %"$address_2686", %TName_Bool* %isApproved) !dbg !277 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2684", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2685", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_2686", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_2688" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_2689" = call i8* @_fetch_field(i8* %"$execptr_load_2688", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2687", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i32 1), !dbg !278
  %"$currentAdmins_2690" = bitcast i8* %"$currentAdmins_call_2689" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_2690", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_2691" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_2691_2692" = bitcast %TName_List_ByStr20* %"$currentAdmins_2691" to i8*
  %"$_literal_cost_call_2693" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$currentAdmins_2691_2692")
  %"$gasadd_2694" = add i64 %"$_literal_cost_call_2693", 0
  %"$gasrem_2695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2696" = icmp ugt i64 %"$gasadd_2694", %"$gasrem_2695"
  br i1 %"$gascmp_2696", label %"$out_of_gas_2697", label %"$have_gas_2698"

"$out_of_gas_2697":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2698"

"$have_gas_2698":                                 ; preds = %"$out_of_gas_2697", %entry
  %"$consume_2699" = sub i64 %"$gasrem_2695", %"$gasadd_2694"
  store i64 %"$consume_2699", i64* @_gasrem, align 8
  %"$gasrem_2700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2701" = icmp ugt i64 1, %"$gasrem_2700"
  br i1 %"$gascmp_2701", label %"$out_of_gas_2702", label %"$have_gas_2703"

"$out_of_gas_2702":                               ; preds = %"$have_gas_2698"
  call void @_out_of_gas()
  br label %"$have_gas_2703"

"$have_gas_2703":                                 ; preds = %"$out_of_gas_2702", %"$have_gas_2698"
  %"$consume_2704" = sub i64 %"$gasrem_2700", 1
  store i64 %"$consume_2704", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_2705" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2706" = icmp ugt i64 1, %"$gasrem_2705"
  br i1 %"$gascmp_2706", label %"$out_of_gas_2707", label %"$have_gas_2708"

"$out_of_gas_2707":                               ; preds = %"$have_gas_2703"
  call void @_out_of_gas()
  br label %"$have_gas_2708"

"$have_gas_2708":                                 ; preds = %"$out_of_gas_2707", %"$have_gas_2703"
  %"$consume_2709" = sub i64 %"$gasrem_2705", 1
  store i64 %"$consume_2709", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_51" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_2710" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_2711" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2710", 0
  %"$ud-registry.listByStr20Contains_envptr_2712" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2710", 1
  %"$currentAdmins_2713" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_2714" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_2711"(i8* %"$ud-registry.listByStr20Contains_envptr_2712", %TName_List_ByStr20* %"$currentAdmins_2713"), !dbg !279
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_2714", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_51", align 8, !dbg !279
  %"$ud-registry.listByStr20Contains_52" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_51_2715" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_51", align 8
  %"$$ud-registry.listByStr20Contains_51_fptr_2716" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_51_2715", 0
  %"$$ud-registry.listByStr20Contains_51_envptr_2717" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_51_2715", 1
  %"$$ud-registry.listByStr20Contains_51__sender_2718" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_51__sender_2718", align 1
  %"$$ud-registry.listByStr20Contains_51_call_2719" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_51_fptr_2716"(i8* %"$$ud-registry.listByStr20Contains_51_envptr_2717", [20 x i8]* %"$$ud-registry.listByStr20Contains_51__sender_2718"), !dbg !279
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_51_call_2719", %TName_Bool** %"$ud-registry.listByStr20Contains_52", align 8, !dbg !279
  %"$$ud-registry.listByStr20Contains_52_2720" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_52", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_52_2720", %TName_Bool** %isSenderAdmin, align 8, !dbg !279
  %"$gasrem_2721" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2722" = icmp ugt i64 2, %"$gasrem_2721"
  br i1 %"$gascmp_2722", label %"$out_of_gas_2723", label %"$have_gas_2724"

"$out_of_gas_2723":                               ; preds = %"$have_gas_2708"
  call void @_out_of_gas()
  br label %"$have_gas_2724"

"$have_gas_2724":                                 ; preds = %"$out_of_gas_2723", %"$have_gas_2708"
  %"$consume_2725" = sub i64 %"$gasrem_2721", 2
  store i64 %"$consume_2725", i64* @_gasrem, align 8
  %"$isSenderAdmin_2727" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_2728" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_2727", i32 0, i32 0
  %"$isSenderAdmin_tag_2729" = load i8, i8* %"$isSenderAdmin_tag_2728", align 1
  switch i8 %"$isSenderAdmin_tag_2729", label %"$empty_default_2730" [
    i8 0, label %"$True_2731"
    i8 1, label %"$False_2873"
  ], !dbg !280

"$True_2731":                                     ; preds = %"$have_gas_2724"
  %"$isSenderAdmin_2732" = bitcast %TName_Bool* %"$isSenderAdmin_2727" to %CName_True*
  %"$gasrem_2733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2734" = icmp ugt i64 1, %"$gasrem_2733"
  br i1 %"$gascmp_2734", label %"$out_of_gas_2735", label %"$have_gas_2736"

"$out_of_gas_2735":                               ; preds = %"$True_2731"
  call void @_out_of_gas()
  br label %"$have_gas_2736"

"$have_gas_2736":                                 ; preds = %"$out_of_gas_2735", %"$True_2731"
  %"$consume_2737" = sub i64 %"$gasrem_2733", 1
  store i64 %"$consume_2737", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_2738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2739" = icmp ugt i64 1, %"$gasrem_2738"
  br i1 %"$gascmp_2739", label %"$out_of_gas_2740", label %"$have_gas_2741"

"$out_of_gas_2740":                               ; preds = %"$have_gas_2736"
  call void @_out_of_gas()
  br label %"$have_gas_2741"

"$have_gas_2741":                                 ; preds = %"$out_of_gas_2740", %"$have_gas_2736"
  %"$consume_2742" = sub i64 %"$gasrem_2738", 1
  store i64 %"$consume_2742", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_2743" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2744" = icmp ugt i64 1, %"$gasrem_2743"
  br i1 %"$gascmp_2744", label %"$out_of_gas_2745", label %"$have_gas_2746"

"$out_of_gas_2745":                               ; preds = %"$have_gas_2741"
  call void @_out_of_gas()
  br label %"$have_gas_2746"

"$have_gas_2746":                                 ; preds = %"$out_of_gas_2745", %"$have_gas_2741"
  %"$consume_2747" = sub i64 %"$gasrem_2743", 1
  store i64 %"$consume_2747", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Excludes_46" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Excludes_2748" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes, align 8
  %"$ud-registry.listByStr20Excludes_fptr_2749" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_2748", 0
  %"$ud-registry.listByStr20Excludes_envptr_2750" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_2748", 1
  %"$currentAdmins_2751" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Excludes_call_2752" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_fptr_2749"(i8* %"$ud-registry.listByStr20Excludes_envptr_2750", %TName_List_ByStr20* %"$currentAdmins_2751"), !dbg !281
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_call_2752", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_46", align 8, !dbg !281
  %"$ud-registry.listByStr20Excludes_47" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Excludes_46_2753" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_46", align 8
  %"$$ud-registry.listByStr20Excludes_46_fptr_2754" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_46_2753", 0
  %"$$ud-registry.listByStr20Excludes_46_envptr_2755" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_46_2753", 1
  %"$$ud-registry.listByStr20Excludes_46_address_2756" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20Excludes_46_address_2756", align 1
  %"$$ud-registry.listByStr20Excludes_46_call_2757" = call %TName_Bool* %"$$ud-registry.listByStr20Excludes_46_fptr_2754"(i8* %"$$ud-registry.listByStr20Excludes_46_envptr_2755", [20 x i8]* %"$$ud-registry.listByStr20Excludes_46_address_2756"), !dbg !281
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_46_call_2757", %TName_Bool** %"$ud-registry.listByStr20Excludes_47", align 8, !dbg !281
  %"$$ud-registry.listByStr20Excludes_47_2758" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Excludes_47", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_47_2758", %TName_Bool** %b, align 8, !dbg !281
  %"$gasrem_2759" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2760" = icmp ugt i64 1, %"$gasrem_2759"
  br i1 %"$gascmp_2760", label %"$out_of_gas_2761", label %"$have_gas_2762"

"$out_of_gas_2761":                               ; preds = %"$have_gas_2746"
  call void @_out_of_gas()
  br label %"$have_gas_2762"

"$have_gas_2762":                                 ; preds = %"$out_of_gas_2761", %"$have_gas_2746"
  %"$consume_2763" = sub i64 %"$gasrem_2759", 1
  store i64 %"$consume_2763", i64* @_gasrem, align 8
  %"$ud-registry.xandb_48" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.xandb_2764" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8
  %"$ud-registry.xandb_fptr_2765" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2764", 0
  %"$ud-registry.xandb_envptr_2766" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2764", 1
  %"$b_2767" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$ud-registry.xandb_call_2768" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_fptr_2765"(i8* %"$ud-registry.xandb_envptr_2766", %TName_Bool* %"$b_2767"), !dbg !284
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_call_2768", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_48", align 8, !dbg !284
  %"$ud-registry.xandb_49" = alloca %TName_Bool*, align 8
  %"$$ud-registry.xandb_48_2769" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_48", align 8
  %"$$ud-registry.xandb_48_fptr_2770" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_48_2769", 0
  %"$$ud-registry.xandb_48_envptr_2771" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_48_2769", 1
  %"$$ud-registry.xandb_48_call_2772" = call %TName_Bool* %"$$ud-registry.xandb_48_fptr_2770"(i8* %"$$ud-registry.xandb_48_envptr_2771", %TName_Bool* %isApproved), !dbg !284
  store %TName_Bool* %"$$ud-registry.xandb_48_call_2772", %TName_Bool** %"$ud-registry.xandb_49", align 8, !dbg !284
  %"$$ud-registry.xandb_49_2773" = load %TName_Bool*, %TName_Bool** %"$ud-registry.xandb_49", align 8
  store %TName_Bool* %"$$ud-registry.xandb_49_2773", %TName_Bool** %needsToChange, align 8, !dbg !284
  %"$gasrem_2774" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2775" = icmp ugt i64 2, %"$gasrem_2774"
  br i1 %"$gascmp_2775", label %"$out_of_gas_2776", label %"$have_gas_2777"

"$out_of_gas_2776":                               ; preds = %"$have_gas_2762"
  call void @_out_of_gas()
  br label %"$have_gas_2777"

"$have_gas_2777":                                 ; preds = %"$out_of_gas_2776", %"$have_gas_2762"
  %"$consume_2778" = sub i64 %"$gasrem_2774", 2
  store i64 %"$consume_2778", i64* @_gasrem, align 8
  %"$needsToChange_2780" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_2781" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_2780", i32 0, i32 0
  %"$needsToChange_tag_2782" = load i8, i8* %"$needsToChange_tag_2781", align 1
  switch i8 %"$needsToChange_tag_2782", label %"$default_2783" [
    i8 0, label %"$True_2784"
  ], !dbg !285

"$True_2784":                                     ; preds = %"$have_gas_2777"
  %"$needsToChange_2785" = bitcast %TName_Bool* %"$needsToChange_2780" to %CName_True*
  %"$gasrem_2786" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2787" = icmp ugt i64 1, %"$gasrem_2786"
  br i1 %"$gascmp_2787", label %"$out_of_gas_2788", label %"$have_gas_2789"

"$out_of_gas_2788":                               ; preds = %"$True_2784"
  call void @_out_of_gas()
  br label %"$have_gas_2789"

"$have_gas_2789":                                 ; preds = %"$out_of_gas_2788", %"$True_2784"
  %"$consume_2790" = sub i64 %"$gasrem_2786", 1
  store i64 %"$consume_2790", i64* @_gasrem, align 8
  %newAdmins = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_2791" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2792" = icmp ugt i64 2, %"$gasrem_2791"
  br i1 %"$gascmp_2792", label %"$out_of_gas_2793", label %"$have_gas_2794"

"$out_of_gas_2793":                               ; preds = %"$have_gas_2789"
  call void @_out_of_gas()
  br label %"$have_gas_2794"

"$have_gas_2794":                                 ; preds = %"$out_of_gas_2793", %"$have_gas_2789"
  %"$consume_2795" = sub i64 %"$gasrem_2791", 2
  store i64 %"$consume_2795", i64* @_gasrem, align 8
  %"$isApproved_tag_2797" = getelementptr inbounds %TName_Bool, %TName_Bool* %isApproved, i32 0, i32 0
  %"$isApproved_tag_2798" = load i8, i8* %"$isApproved_tag_2797", align 1
  switch i8 %"$isApproved_tag_2798", label %"$empty_default_2799" [
    i8 0, label %"$True_2800"
    i8 1, label %"$False_2813"
  ], !dbg !286

"$True_2800":                                     ; preds = %"$have_gas_2794"
  %"$isApproved_2801" = bitcast %TName_Bool* %isApproved to %CName_True*
  %"$gasrem_2802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2803" = icmp ugt i64 1, %"$gasrem_2802"
  br i1 %"$gascmp_2803", label %"$out_of_gas_2804", label %"$have_gas_2805"

"$out_of_gas_2804":                               ; preds = %"$True_2800"
  call void @_out_of_gas()
  br label %"$have_gas_2805"

"$have_gas_2805":                                 ; preds = %"$out_of_gas_2804", %"$True_2800"
  %"$consume_2806" = sub i64 %"$gasrem_2802", 1
  store i64 %"$consume_2806", i64* @_gasrem, align 8
  %"$currentAdmins_2807" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$adtval_2808_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2808_salloc" = call i8* @_salloc(i8* %"$adtval_2808_load", i64 29)
  %"$adtval_2808" = bitcast i8* %"$adtval_2808_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_2809" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2808", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2809", align 1
  %"$adtgep_2810" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2808", i32 0, i32 1
  store [20 x i8] %address, [20 x i8]* %"$adtgep_2810", align 1
  %"$adtgep_2811" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2808", i32 0, i32 2
  store %TName_List_ByStr20* %"$currentAdmins_2807", %TName_List_ByStr20** %"$adtgep_2811", align 8
  %"$adtptr_2812" = bitcast %CName_Cons_ByStr20* %"$adtval_2808" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2812", %TName_List_ByStr20** %newAdmins, align 8, !dbg !289
  br label %"$matchsucc_2796"

"$False_2813":                                    ; preds = %"$have_gas_2794"
  %"$isApproved_2814" = bitcast %TName_Bool* %isApproved to %CName_False*
  %"$gasrem_2815" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2816" = icmp ugt i64 1, %"$gasrem_2815"
  br i1 %"$gascmp_2816", label %"$out_of_gas_2817", label %"$have_gas_2818"

"$out_of_gas_2817":                               ; preds = %"$False_2813"
  call void @_out_of_gas()
  br label %"$have_gas_2818"

"$have_gas_2818":                                 ; preds = %"$out_of_gas_2817", %"$False_2813"
  %"$consume_2819" = sub i64 %"$gasrem_2815", 1
  store i64 %"$consume_2819", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20FilterOut_44" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20FilterOut_2820" = load { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8
  %"$ud-registry.listByStr20FilterOut_fptr_2821" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_2820", 0
  %"$ud-registry.listByStr20FilterOut_envptr_2822" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_2820", 1
  %"$currentAdmins_2823" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20FilterOut_call_2824" = call { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_fptr_2821"(i8* %"$ud-registry.listByStr20FilterOut_envptr_2822", %TName_List_ByStr20* %"$currentAdmins_2823"), !dbg !292
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_call_2824", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_44", align 8, !dbg !292
  %"$ud-registry.listByStr20FilterOut_45" = alloca %TName_List_ByStr20*, align 8
  %"$$ud-registry.listByStr20FilterOut_44_2825" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_44", align 8
  %"$$ud-registry.listByStr20FilterOut_44_fptr_2826" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_44_2825", 0
  %"$$ud-registry.listByStr20FilterOut_44_envptr_2827" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_44_2825", 1
  %"$$ud-registry.listByStr20FilterOut_44_address_2828" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20FilterOut_44_address_2828", align 1
  %"$$ud-registry.listByStr20FilterOut_44_call_2829" = call %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_44_fptr_2826"(i8* %"$$ud-registry.listByStr20FilterOut_44_envptr_2827", [20 x i8]* %"$$ud-registry.listByStr20FilterOut_44_address_2828"), !dbg !292
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_44_call_2829", %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_45", align 8, !dbg !292
  %"$$ud-registry.listByStr20FilterOut_45_2830" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_45", align 8
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_45_2830", %TName_List_ByStr20** %newAdmins, align 8, !dbg !292
  br label %"$matchsucc_2796"

"$empty_default_2799":                            ; preds = %"$have_gas_2794"
  br label %"$matchsucc_2796"

"$matchsucc_2796":                                ; preds = %"$have_gas_2818", %"$have_gas_2805", %"$empty_default_2799"
  %"$newAdmins_2831" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newAdmins, align 8
  %"$$newAdmins_2831_2832" = bitcast %TName_List_ByStr20* %"$newAdmins_2831" to i8*
  %"$_literal_cost_call_2833" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$newAdmins_2831_2832")
  %"$gasrem_2834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2835" = icmp ugt i64 %"$_literal_cost_call_2833", %"$gasrem_2834"
  br i1 %"$gascmp_2835", label %"$out_of_gas_2836", label %"$have_gas_2837"

"$out_of_gas_2836":                               ; preds = %"$matchsucc_2796"
  call void @_out_of_gas()
  br label %"$have_gas_2837"

"$have_gas_2837":                                 ; preds = %"$out_of_gas_2836", %"$matchsucc_2796"
  %"$consume_2838" = sub i64 %"$gasrem_2834", %"$_literal_cost_call_2833"
  store i64 %"$consume_2838", i64* @_gasrem, align 8
  %"$execptr_load_2839" = load i8*, i8** @_execptr, align 8
  %"$newAdmins_2841" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newAdmins, align 8
  %"$update_value_2842" = bitcast %TName_List_ByStr20* %"$newAdmins_2841" to i8*
  call void @_update_field(i8* %"$execptr_load_2839", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2840", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i8* %"$update_value_2842"), !dbg !294
  %"$gasrem_2843" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2844" = icmp ugt i64 1, %"$gasrem_2843"
  br i1 %"$gascmp_2844", label %"$out_of_gas_2845", label %"$have_gas_2846"

"$out_of_gas_2845":                               ; preds = %"$have_gas_2837"
  call void @_out_of_gas()
  br label %"$have_gas_2846"

"$have_gas_2846":                                 ; preds = %"$out_of_gas_2845", %"$have_gas_2837"
  %"$consume_2847" = sub i64 %"$gasrem_2843", 1
  store i64 %"$consume_2847", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_2848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2849" = icmp ugt i64 1, %"$gasrem_2848"
  br i1 %"$gascmp_2849", label %"$out_of_gas_2850", label %"$have_gas_2851"

"$out_of_gas_2850":                               ; preds = %"$have_gas_2846"
  call void @_out_of_gas()
  br label %"$have_gas_2851"

"$have_gas_2851":                                 ; preds = %"$out_of_gas_2850", %"$have_gas_2846"
  %"$consume_2852" = sub i64 %"$gasrem_2848", 1
  store i64 %"$consume_2852", i64* @_gasrem, align 8
  %"$ud-registry.eAdminSet_42" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.eAdminSet_2853" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eAdminSet, align 8
  %"$ud-registry.eAdminSet_fptr_2854" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eAdminSet_2853", 0
  %"$ud-registry.eAdminSet_envptr_2855" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eAdminSet_2853", 1
  %"$ud-registry.eAdminSet_address_2856" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eAdminSet_address_2856", align 1
  %"$ud-registry.eAdminSet_call_2857" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.eAdminSet_fptr_2854"(i8* %"$ud-registry.eAdminSet_envptr_2855", [20 x i8]* %"$ud-registry.eAdminSet_address_2856"), !dbg !295
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.eAdminSet_call_2857", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eAdminSet_42", align 8, !dbg !295
  %"$ud-registry.eAdminSet_43" = alloca i8*, align 8
  %"$$ud-registry.eAdminSet_42_2858" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eAdminSet_42", align 8
  %"$$ud-registry.eAdminSet_42_fptr_2859" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eAdminSet_42_2858", 0
  %"$$ud-registry.eAdminSet_42_envptr_2860" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eAdminSet_42_2858", 1
  %"$$ud-registry.eAdminSet_42_call_2861" = call i8* %"$$ud-registry.eAdminSet_42_fptr_2859"(i8* %"$$ud-registry.eAdminSet_42_envptr_2860", %TName_Bool* %isApproved), !dbg !295
  store i8* %"$$ud-registry.eAdminSet_42_call_2861", i8** %"$ud-registry.eAdminSet_43", align 8, !dbg !295
  %"$$ud-registry.eAdminSet_43_2862" = load i8*, i8** %"$ud-registry.eAdminSet_43", align 8
  store i8* %"$$ud-registry.eAdminSet_43_2862", i8** %e, align 8, !dbg !295
  %"$e_2863" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_2865" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_2863")
  %"$gasrem_2866" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2867" = icmp ugt i64 %"$_literal_cost_call_2865", %"$gasrem_2866"
  br i1 %"$gascmp_2867", label %"$out_of_gas_2868", label %"$have_gas_2869"

"$out_of_gas_2868":                               ; preds = %"$have_gas_2851"
  call void @_out_of_gas()
  br label %"$have_gas_2869"

"$have_gas_2869":                                 ; preds = %"$out_of_gas_2868", %"$have_gas_2851"
  %"$consume_2870" = sub i64 %"$gasrem_2866", %"$_literal_cost_call_2865"
  store i64 %"$consume_2870", i64* @_gasrem, align 8
  %"$execptr_load_2871" = load i8*, i8** @_execptr, align 8
  %"$e_2872" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_2871", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_2872"), !dbg !296
  br label %"$matchsucc_2779"

"$default_2783":                                  ; preds = %"$have_gas_2777"
  br label %"$joinp_1"

"$joinp_1":                                       ; preds = %"$default_2783"
  br label %"$matchsucc_2779"

"$matchsucc_2779":                                ; preds = %"$have_gas_2869", %"$joinp_1"
  br label %"$matchsucc_2726"

"$False_2873":                                    ; preds = %"$have_gas_2724"
  %"$isSenderAdmin_2874" = bitcast %TName_Bool* %"$isSenderAdmin_2727" to %CName_False*
  %"$gasrem_2875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2876" = icmp ugt i64 1, %"$gasrem_2875"
  br i1 %"$gascmp_2876", label %"$out_of_gas_2877", label %"$have_gas_2878"

"$out_of_gas_2877":                               ; preds = %"$False_2873"
  call void @_out_of_gas()
  br label %"$have_gas_2878"

"$have_gas_2878":                                 ; preds = %"$out_of_gas_2877", %"$False_2873"
  %"$consume_2879" = sub i64 %"$gasrem_2875", 1
  store i64 %"$consume_2879", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_2880" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2881" = icmp ugt i64 1, %"$gasrem_2880"
  br i1 %"$gascmp_2881", label %"$out_of_gas_2882", label %"$have_gas_2883"

"$out_of_gas_2882":                               ; preds = %"$have_gas_2878"
  call void @_out_of_gas()
  br label %"$have_gas_2883"

"$have_gas_2883":                                 ; preds = %"$out_of_gas_2882", %"$have_gas_2878"
  %"$consume_2884" = sub i64 %"$gasrem_2880", 1
  store i64 %"$consume_2884", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_2885" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2886" = icmp ugt i64 1, %"$gasrem_2885"
  br i1 %"$gascmp_2886", label %"$out_of_gas_2887", label %"$have_gas_2888"

"$out_of_gas_2887":                               ; preds = %"$have_gas_2883"
  call void @_out_of_gas()
  br label %"$have_gas_2888"

"$have_gas_2888":                                 ; preds = %"$out_of_gas_2887", %"$have_gas_2883"
  %"$consume_2889" = sub i64 %"$gasrem_2885", 1
  store i64 %"$consume_2889", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$stringlit_2890", i32 0, i32 0), i32 26 }, %String* %m, align 8, !dbg !297
  %"$gasrem_2891" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2892" = icmp ugt i64 1, %"$gasrem_2891"
  br i1 %"$gascmp_2892", label %"$out_of_gas_2893", label %"$have_gas_2894"

"$out_of_gas_2893":                               ; preds = %"$have_gas_2888"
  call void @_out_of_gas()
  br label %"$have_gas_2894"

"$have_gas_2894":                                 ; preds = %"$out_of_gas_2893", %"$have_gas_2888"
  %"$consume_2895" = sub i64 %"$gasrem_2891", 1
  store i64 %"$consume_2895", i64* @_gasrem, align 8
  %"$ud-registry.eError_50" = alloca i8*, align 8
  %"$ud-registry.eError_2896" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_2897" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2896", 0
  %"$ud-registry.eError_envptr_2898" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2896", 1
  %"$m_2899" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_2900" = call i8* %"$ud-registry.eError_fptr_2897"(i8* %"$ud-registry.eError_envptr_2898", %String %"$m_2899"), !dbg !299
  store i8* %"$ud-registry.eError_call_2900", i8** %"$ud-registry.eError_50", align 8, !dbg !299
  %"$$ud-registry.eError_50_2901" = load i8*, i8** %"$ud-registry.eError_50", align 8
  store i8* %"$$ud-registry.eError_50_2901", i8** %e1, align 8, !dbg !299
  %"$e_2902" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_2904" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_2902")
  %"$gasrem_2905" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2906" = icmp ugt i64 %"$_literal_cost_call_2904", %"$gasrem_2905"
  br i1 %"$gascmp_2906", label %"$out_of_gas_2907", label %"$have_gas_2908"

"$out_of_gas_2907":                               ; preds = %"$have_gas_2894"
  call void @_out_of_gas()
  br label %"$have_gas_2908"

"$have_gas_2908":                                 ; preds = %"$out_of_gas_2907", %"$have_gas_2894"
  %"$consume_2909" = sub i64 %"$gasrem_2905", %"$_literal_cost_call_2904"
  store i64 %"$consume_2909", i64* @_gasrem, align 8
  %"$execptr_load_2910" = load i8*, i8** @_execptr, align 8
  %"$e_2911" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_2910", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_2911"), !dbg !300
  br label %"$matchsucc_2726"

"$empty_default_2730":                            ; preds = %"$have_gas_2724"
  br label %"$matchsucc_2726"

"$matchsucc_2726":                                ; preds = %"$have_gas_2908", %"$matchsucc_2779", %"$empty_default_2730"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) !dbg !301 {
entry:
  %"$_amount_2913" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2914" = bitcast i8* %"$_amount_2913" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2914", align 8
  %"$_origin_2915" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2916" = bitcast i8* %"$_origin_2915" to [20 x i8]*
  %"$_sender_2917" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2918" = bitcast i8* %"$_sender_2917" to [20 x i8]*
  %"$address_2919" = getelementptr i8, i8* %0, i32 56
  %"$address_2920" = bitcast i8* %"$address_2919" to [20 x i8]*
  %"$isApproved_2921" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_2922" = bitcast i8* %"$isApproved_2921" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_2922", align 8
  call void @"$setAdmin_2683"(%Uint128 %_amount, [20 x i8]* %"$_origin_2916", [20 x i8]* %"$_sender_2918", [20 x i8]* %"$address_2920", %TName_Bool* %isApproved), !dbg !302
  ret void
}

define internal void @"$approve_2923"(%Uint128 %_amount, [20 x i8]* %"$_origin_2924", [20 x i8]* %"$_sender_2925", [32 x i8]* %"$node_2926", [20 x i8]* %"$address_2927") !dbg !303 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2924", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2925", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_2926", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_2927", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_2928_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2928_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2928_salloc_load", i64 32)
  %"$indices_buf_2928_salloc" = bitcast i8* %"$indices_buf_2928_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2928" = bitcast [32 x i8]* %"$indices_buf_2928_salloc" to i8*
  %"$indices_gep_2929" = getelementptr i8, i8* %"$indices_buf_2928", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2929" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_2931" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_2932" = call i8* @_fetch_field(i8* %"$execptr_load_2931", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_2930", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_2928", i32 1), !dbg !304
  %"$maybeRecord_2933" = bitcast i8* %"$maybeRecord_call_2932" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_2933", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_2934" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_2934_2935" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_2934" to i8*
  %"$_literal_cost_call_2936" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_2934_2935")
  %"$gasadd_2937" = add i64 %"$_literal_cost_call_2936", 0
  %"$gasadd_2938" = add i64 %"$gasadd_2937", 1
  %"$gasrem_2939" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2940" = icmp ugt i64 %"$gasadd_2938", %"$gasrem_2939"
  br i1 %"$gascmp_2940", label %"$out_of_gas_2941", label %"$have_gas_2942"

"$out_of_gas_2941":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2942"

"$have_gas_2942":                                 ; preds = %"$out_of_gas_2941", %entry
  %"$consume_2943" = sub i64 %"$gasrem_2939", %"$gasadd_2938"
  store i64 %"$consume_2943", i64* @_gasrem, align 8
  %"$gasrem_2944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2945" = icmp ugt i64 1, %"$gasrem_2944"
  br i1 %"$gascmp_2945", label %"$out_of_gas_2946", label %"$have_gas_2947"

"$out_of_gas_2946":                               ; preds = %"$have_gas_2942"
  call void @_out_of_gas()
  br label %"$have_gas_2947"

"$have_gas_2947":                                 ; preds = %"$out_of_gas_2946", %"$have_gas_2942"
  %"$consume_2948" = sub i64 %"$gasrem_2944", 1
  store i64 %"$consume_2948", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_2949" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2950" = icmp ugt i64 1, %"$gasrem_2949"
  br i1 %"$gascmp_2950", label %"$out_of_gas_2951", label %"$have_gas_2952"

"$out_of_gas_2951":                               ; preds = %"$have_gas_2947"
  call void @_out_of_gas()
  br label %"$have_gas_2952"

"$have_gas_2952":                                 ; preds = %"$out_of_gas_2951", %"$have_gas_2947"
  %"$consume_2953" = sub i64 %"$gasrem_2949", 1
  store i64 %"$consume_2953", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_56" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_2954" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_2955" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_2954", 0
  %"$ud-registry.recordMemberOwner_envptr_2956" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_2954", 1
  %"$maybeRecord_2957" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_2958" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_2955"(i8* %"$ud-registry.recordMemberOwner_envptr_2956", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_2958", %TName_Option_ud-registry.Record* %"$maybeRecord_2957"), !dbg !305
  %"$ud-registry.recordMemberOwner_ret_2959" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_2958", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_2959", [20 x i8]* %"$ud-registry.recordMemberOwner_56", align 1, !dbg !305
  %"$$ud-registry.recordMemberOwner_56_2960" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_56", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_56_2960", [20 x i8]* %recordOwner, align 1, !dbg !305
  %"$gasrem_2961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2962" = icmp ugt i64 1, %"$gasrem_2961"
  br i1 %"$gascmp_2962", label %"$out_of_gas_2963", label %"$have_gas_2964"

"$out_of_gas_2963":                               ; preds = %"$have_gas_2952"
  call void @_out_of_gas()
  br label %"$have_gas_2964"

"$have_gas_2964":                                 ; preds = %"$out_of_gas_2963", %"$have_gas_2952"
  %"$consume_2965" = sub i64 %"$gasrem_2961", 1
  store i64 %"$consume_2965", i64* @_gasrem, align 8
  %isSenderNodeOwner = alloca %TName_Bool*, align 8
  %"$execptr_load_2966" = load i8*, i8** @_execptr, align 8
  %"$eq__sender_2967" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_2967", align 1
  %"$$eq__sender_2967_2968" = bitcast [20 x i8]* %"$eq__sender_2967" to i8*
  %"$eq_recordOwner_2969" = alloca [20 x i8], align 1
  %"$recordOwner_2970" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_2970", [20 x i8]* %"$eq_recordOwner_2969", align 1
  %"$$eq_recordOwner_2969_2971" = bitcast [20 x i8]* %"$eq_recordOwner_2969" to i8*
  %"$eq_call_2972" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2966", i32 20, i8* %"$$eq__sender_2967_2968", i8* %"$$eq_recordOwner_2969_2971")
  store %TName_Bool* %"$eq_call_2972", %TName_Bool** %isSenderNodeOwner, align 8, !dbg !306
  %"$gasrem_2973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2974" = icmp ugt i64 2, %"$gasrem_2973"
  br i1 %"$gascmp_2974", label %"$out_of_gas_2975", label %"$have_gas_2976"

"$out_of_gas_2975":                               ; preds = %"$have_gas_2964"
  call void @_out_of_gas()
  br label %"$have_gas_2976"

"$have_gas_2976":                                 ; preds = %"$out_of_gas_2975", %"$have_gas_2964"
  %"$consume_2977" = sub i64 %"$gasrem_2973", 2
  store i64 %"$consume_2977", i64* @_gasrem, align 8
  %"$isSenderNodeOwner_2979" = load %TName_Bool*, %TName_Bool** %isSenderNodeOwner, align 8
  %"$isSenderNodeOwner_tag_2980" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderNodeOwner_2979", i32 0, i32 0
  %"$isSenderNodeOwner_tag_2981" = load i8, i8* %"$isSenderNodeOwner_tag_2980", align 1
  switch i8 %"$isSenderNodeOwner_tag_2981", label %"$empty_default_2982" [
    i8 0, label %"$True_2983"
    i8 1, label %"$False_3115"
  ], !dbg !307

"$True_2983":                                     ; preds = %"$have_gas_2976"
  %"$isSenderNodeOwner_2984" = bitcast %TName_Bool* %"$isSenderNodeOwner_2979" to %CName_True*
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_2985_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2985_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2985_salloc_load", i64 32)
  %"$indices_buf_2985_salloc" = bitcast i8* %"$indices_buf_2985_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2985" = bitcast [32 x i8]* %"$indices_buf_2985_salloc" to i8*
  %"$indices_gep_2986" = getelementptr i8, i8* %"$indices_buf_2985", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_2986" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_2988" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_2989" = call i8* @_fetch_field(i8* %"$execptr_load_2988", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_2987", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_2985", i32 1), !dbg !308
  %"$maybeApproved_2990" = bitcast i8* %"$maybeApproved_call_2989" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_2990", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_2991" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_2991_2992" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2991" to i8*
  %"$_literal_cost_call_2993" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_2991_2992")
  %"$gasadd_2994" = add i64 %"$_literal_cost_call_2993", 0
  %"$gasadd_2995" = add i64 %"$gasadd_2994", 1
  %"$gasrem_2996" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2997" = icmp ugt i64 %"$gasadd_2995", %"$gasrem_2996"
  br i1 %"$gascmp_2997", label %"$out_of_gas_2998", label %"$have_gas_2999"

"$out_of_gas_2998":                               ; preds = %"$True_2983"
  call void @_out_of_gas()
  br label %"$have_gas_2999"

"$have_gas_2999":                                 ; preds = %"$out_of_gas_2998", %"$True_2983"
  %"$consume_3000" = sub i64 %"$gasrem_2996", %"$gasadd_2995"
  store i64 %"$consume_3000", i64* @_gasrem, align 8
  %"$gasrem_3001" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3002" = icmp ugt i64 1, %"$gasrem_3001"
  br i1 %"$gascmp_3002", label %"$out_of_gas_3003", label %"$have_gas_3004"

"$out_of_gas_3003":                               ; preds = %"$have_gas_2999"
  call void @_out_of_gas()
  br label %"$have_gas_3004"

"$have_gas_3004":                                 ; preds = %"$out_of_gas_3003", %"$have_gas_2999"
  %"$consume_3005" = sub i64 %"$gasrem_3001", 1
  store i64 %"$consume_3005", i64* @_gasrem, align 8
  %currentlyApproved = alloca [20 x i8], align 1
  %"$gasrem_3006" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3007" = icmp ugt i64 2, %"$gasrem_3006"
  br i1 %"$gascmp_3007", label %"$out_of_gas_3008", label %"$have_gas_3009"

"$out_of_gas_3008":                               ; preds = %"$have_gas_3004"
  call void @_out_of_gas()
  br label %"$have_gas_3009"

"$have_gas_3009":                                 ; preds = %"$out_of_gas_3008", %"$have_gas_3004"
  %"$consume_3010" = sub i64 %"$gasrem_3006", 2
  store i64 %"$consume_3010", i64* @_gasrem, align 8
  %"$maybeApproved_3012" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_3013" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_3012", i32 0, i32 0
  %"$maybeApproved_tag_3014" = load i8, i8* %"$maybeApproved_tag_3013", align 1
  switch i8 %"$maybeApproved_tag_3014", label %"$empty_default_3015" [
    i8 1, label %"$None_3016"
    i8 0, label %"$Some_3024"
  ], !dbg !311

"$None_3016":                                     ; preds = %"$have_gas_3009"
  %"$maybeApproved_3017" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3012" to %CName_None_ByStr20*
  %"$gasrem_3018" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3019" = icmp ugt i64 1, %"$gasrem_3018"
  br i1 %"$gascmp_3019", label %"$out_of_gas_3020", label %"$have_gas_3021"

"$out_of_gas_3020":                               ; preds = %"$None_3016"
  call void @_out_of_gas()
  br label %"$have_gas_3021"

"$have_gas_3021":                                 ; preds = %"$out_of_gas_3020", %"$None_3016"
  %"$consume_3022" = sub i64 %"$gasrem_3018", 1
  store i64 %"$consume_3022", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_3023" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_3023", [20 x i8]* %currentlyApproved, align 1, !dbg !312
  br label %"$matchsucc_3011"

"$Some_3024":                                     ; preds = %"$have_gas_3009"
  %"$maybeApproved_3025" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3012" to %CName_Some_ByStr20*
  %"$approved_gep_3026" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_3025", i32 0, i32 1
  %"$approved_load_3027" = load [20 x i8], [20 x i8]* %"$approved_gep_3026", align 1
  %approved = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_3027", [20 x i8]* %approved, align 1
  %"$gasrem_3028" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3029" = icmp ugt i64 1, %"$gasrem_3028"
  br i1 %"$gascmp_3029", label %"$out_of_gas_3030", label %"$have_gas_3031"

"$out_of_gas_3030":                               ; preds = %"$Some_3024"
  call void @_out_of_gas()
  br label %"$have_gas_3031"

"$have_gas_3031":                                 ; preds = %"$out_of_gas_3030", %"$Some_3024"
  %"$consume_3032" = sub i64 %"$gasrem_3028", 1
  store i64 %"$consume_3032", i64* @_gasrem, align 8
  %"$approved_3033" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_3033", [20 x i8]* %currentlyApproved, align 1, !dbg !315
  br label %"$matchsucc_3011"

"$empty_default_3015":                            ; preds = %"$have_gas_3009"
  br label %"$matchsucc_3011"

"$matchsucc_3011":                                ; preds = %"$have_gas_3031", %"$have_gas_3021", %"$empty_default_3015"
  %"$gasrem_3034" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3035" = icmp ugt i64 1, %"$gasrem_3034"
  br i1 %"$gascmp_3035", label %"$out_of_gas_3036", label %"$have_gas_3037"

"$out_of_gas_3036":                               ; preds = %"$matchsucc_3011"
  call void @_out_of_gas()
  br label %"$have_gas_3037"

"$have_gas_3037":                                 ; preds = %"$out_of_gas_3036", %"$matchsucc_3011"
  %"$consume_3038" = sub i64 %"$gasrem_3034", 1
  store i64 %"$consume_3038", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_3039" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3040" = icmp ugt i64 1, %"$gasrem_3039"
  br i1 %"$gascmp_3040", label %"$out_of_gas_3041", label %"$have_gas_3042"

"$out_of_gas_3041":                               ; preds = %"$have_gas_3037"
  call void @_out_of_gas()
  br label %"$have_gas_3042"

"$have_gas_3042":                                 ; preds = %"$out_of_gas_3041", %"$have_gas_3037"
  %"$consume_3043" = sub i64 %"$gasrem_3039", 1
  store i64 %"$consume_3043", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$execptr_load_3044" = load i8*, i8** @_execptr, align 8
  %"$eq_currentlyApproved_3045" = alloca [20 x i8], align 1
  %"$currentlyApproved_3046" = load [20 x i8], [20 x i8]* %currentlyApproved, align 1
  store [20 x i8] %"$currentlyApproved_3046", [20 x i8]* %"$eq_currentlyApproved_3045", align 1
  %"$$eq_currentlyApproved_3045_3047" = bitcast [20 x i8]* %"$eq_currentlyApproved_3045" to i8*
  %"$eq_address_3048" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$eq_address_3048", align 1
  %"$$eq_address_3048_3049" = bitcast [20 x i8]* %"$eq_address_3048" to i8*
  %"$eq_call_3050" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_3044", i32 20, i8* %"$$eq_currentlyApproved_3045_3047", i8* %"$$eq_address_3048_3049")
  store %TName_Bool* %"$eq_call_3050", %TName_Bool** %b, align 8, !dbg !317
  %"$gasrem_3051" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3052" = icmp ugt i64 1, %"$gasrem_3051"
  br i1 %"$gascmp_3052", label %"$out_of_gas_3053", label %"$have_gas_3054"

"$out_of_gas_3053":                               ; preds = %"$have_gas_3042"
  call void @_out_of_gas()
  br label %"$have_gas_3054"

"$have_gas_3054":                                 ; preds = %"$out_of_gas_3053", %"$have_gas_3042"
  %"$consume_3055" = sub i64 %"$gasrem_3051", 1
  store i64 %"$consume_3055", i64* @_gasrem, align 8
  %"$BoolUtils.negb_54" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_3056" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_3057" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_3056", 0
  %"$BoolUtils.negb_envptr_3058" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_3056", 1
  %"$b_3059" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$BoolUtils.negb_call_3060" = call %TName_Bool* %"$BoolUtils.negb_fptr_3057"(i8* %"$BoolUtils.negb_envptr_3058", %TName_Bool* %"$b_3059"), !dbg !318
  store %TName_Bool* %"$BoolUtils.negb_call_3060", %TName_Bool** %"$BoolUtils.negb_54", align 8, !dbg !318
  %"$$BoolUtils.negb_54_3061" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_54", align 8
  store %TName_Bool* %"$$BoolUtils.negb_54_3061", %TName_Bool** %needsToChange, align 8, !dbg !318
  %"$gasrem_3062" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3063" = icmp ugt i64 2, %"$gasrem_3062"
  br i1 %"$gascmp_3063", label %"$out_of_gas_3064", label %"$have_gas_3065"

"$out_of_gas_3064":                               ; preds = %"$have_gas_3054"
  call void @_out_of_gas()
  br label %"$have_gas_3065"

"$have_gas_3065":                                 ; preds = %"$out_of_gas_3064", %"$have_gas_3054"
  %"$consume_3066" = sub i64 %"$gasrem_3062", 2
  store i64 %"$consume_3066", i64* @_gasrem, align 8
  %"$needsToChange_3068" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_3069" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_3068", i32 0, i32 0
  %"$needsToChange_tag_3070" = load i8, i8* %"$needsToChange_tag_3069", align 1
  switch i8 %"$needsToChange_tag_3070", label %"$default_3071" [
    i8 0, label %"$True_3072"
  ], !dbg !319

"$True_3072":                                     ; preds = %"$have_gas_3065"
  %"$needsToChange_3073" = bitcast %TName_Bool* %"$needsToChange_3068" to %CName_True*
  %"$_literal_cost_address_3074" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$_literal_cost_address_3074", align 1
  %"$$_literal_cost_address_3074_3075" = bitcast [20 x i8]* %"$_literal_cost_address_3074" to i8*
  %"$_literal_cost_call_3076" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i8* %"$$_literal_cost_address_3074_3075")
  %"$gasadd_3077" = add i64 %"$_literal_cost_call_3076", 1
  %"$gasrem_3078" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3079" = icmp ugt i64 %"$gasadd_3077", %"$gasrem_3078"
  br i1 %"$gascmp_3079", label %"$out_of_gas_3080", label %"$have_gas_3081"

"$out_of_gas_3080":                               ; preds = %"$True_3072"
  call void @_out_of_gas()
  br label %"$have_gas_3081"

"$have_gas_3081":                                 ; preds = %"$out_of_gas_3080", %"$True_3072"
  %"$consume_3082" = sub i64 %"$gasrem_3078", %"$gasadd_3077"
  store i64 %"$consume_3082", i64* @_gasrem, align 8
  %"$indices_buf_3083_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3083_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3083_salloc_load", i64 32)
  %"$indices_buf_3083_salloc" = bitcast i8* %"$indices_buf_3083_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3083" = bitcast [32 x i8]* %"$indices_buf_3083_salloc" to i8*
  %"$indices_gep_3084" = getelementptr i8, i8* %"$indices_buf_3083", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3084" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast2, align 1
  %"$execptr_load_3085" = load i8*, i8** @_execptr, align 8
  %"$update_value_3087" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$update_value_3087", align 1
  %"$update_value_3088" = bitcast [20 x i8]* %"$update_value_3087" to i8*
  call void @_update_field(i8* %"$execptr_load_3085", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3086", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_3083", i8* %"$update_value_3088"), !dbg !320
  %"$gasrem_3089" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3090" = icmp ugt i64 1, %"$gasrem_3089"
  br i1 %"$gascmp_3090", label %"$out_of_gas_3091", label %"$have_gas_3092"

"$out_of_gas_3091":                               ; preds = %"$have_gas_3081"
  call void @_out_of_gas()
  br label %"$have_gas_3092"

"$have_gas_3092":                                 ; preds = %"$out_of_gas_3091", %"$have_gas_3081"
  %"$consume_3093" = sub i64 %"$gasrem_3089", 1
  store i64 %"$consume_3093", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3094" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3095" = icmp ugt i64 1, %"$gasrem_3094"
  br i1 %"$gascmp_3095", label %"$out_of_gas_3096", label %"$have_gas_3097"

"$out_of_gas_3096":                               ; preds = %"$have_gas_3092"
  call void @_out_of_gas()
  br label %"$have_gas_3097"

"$have_gas_3097":                                 ; preds = %"$out_of_gas_3096", %"$have_gas_3092"
  %"$consume_3098" = sub i64 %"$gasrem_3094", 1
  store i64 %"$consume_3098", i64* @_gasrem, align 8
  %"$ud-registry.eApproved_53" = alloca i8*, align 8
  %"$ud-registry.eApproved_3099" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApproved, align 8
  %"$ud-registry.eApproved_fptr_3100" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApproved_3099", 0
  %"$ud-registry.eApproved_envptr_3101" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApproved_3099", 1
  %"$ud-registry.eApproved_address_3102" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eApproved_address_3102", align 1
  %"$ud-registry.eApproved_call_3103" = call i8* %"$ud-registry.eApproved_fptr_3100"(i8* %"$ud-registry.eApproved_envptr_3101", [20 x i8]* %"$ud-registry.eApproved_address_3102"), !dbg !323
  store i8* %"$ud-registry.eApproved_call_3103", i8** %"$ud-registry.eApproved_53", align 8, !dbg !323
  %"$$ud-registry.eApproved_53_3104" = load i8*, i8** %"$ud-registry.eApproved_53", align 8
  store i8* %"$$ud-registry.eApproved_53_3104", i8** %e, align 8, !dbg !323
  %"$e_3105" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3107" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3105")
  %"$gasrem_3108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3109" = icmp ugt i64 %"$_literal_cost_call_3107", %"$gasrem_3108"
  br i1 %"$gascmp_3109", label %"$out_of_gas_3110", label %"$have_gas_3111"

"$out_of_gas_3110":                               ; preds = %"$have_gas_3097"
  call void @_out_of_gas()
  br label %"$have_gas_3111"

"$have_gas_3111":                                 ; preds = %"$out_of_gas_3110", %"$have_gas_3097"
  %"$consume_3112" = sub i64 %"$gasrem_3108", %"$_literal_cost_call_3107"
  store i64 %"$consume_3112", i64* @_gasrem, align 8
  %"$execptr_load_3113" = load i8*, i8** @_execptr, align 8
  %"$e_3114" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3113", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3114"), !dbg !324
  br label %"$matchsucc_3067"

"$default_3071":                                  ; preds = %"$have_gas_3065"
  br label %"$joinp_2"

"$joinp_2":                                       ; preds = %"$default_3071"
  br label %"$matchsucc_3067"

"$matchsucc_3067":                                ; preds = %"$have_gas_3111", %"$joinp_2"
  br label %"$matchsucc_2978"

"$False_3115":                                    ; preds = %"$have_gas_2976"
  %"$isSenderNodeOwner_3116" = bitcast %TName_Bool* %"$isSenderNodeOwner_2979" to %CName_False*
  %"$gasrem_3117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3118" = icmp ugt i64 1, %"$gasrem_3117"
  br i1 %"$gascmp_3118", label %"$out_of_gas_3119", label %"$have_gas_3120"

"$out_of_gas_3119":                               ; preds = %"$False_3115"
  call void @_out_of_gas()
  br label %"$have_gas_3120"

"$have_gas_3120":                                 ; preds = %"$out_of_gas_3119", %"$False_3115"
  %"$consume_3121" = sub i64 %"$gasrem_3117", 1
  store i64 %"$consume_3121", i64* @_gasrem, align 8
  %e3 = alloca i8*, align 8
  %"$gasrem_3122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3123" = icmp ugt i64 1, %"$gasrem_3122"
  br i1 %"$gascmp_3123", label %"$out_of_gas_3124", label %"$have_gas_3125"

"$out_of_gas_3124":                               ; preds = %"$have_gas_3120"
  call void @_out_of_gas()
  br label %"$have_gas_3125"

"$have_gas_3125":                                 ; preds = %"$out_of_gas_3124", %"$have_gas_3120"
  %"$consume_3126" = sub i64 %"$gasrem_3122", 1
  store i64 %"$consume_3126", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_3127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3128" = icmp ugt i64 1, %"$gasrem_3127"
  br i1 %"$gascmp_3128", label %"$out_of_gas_3129", label %"$have_gas_3130"

"$out_of_gas_3129":                               ; preds = %"$have_gas_3125"
  call void @_out_of_gas()
  br label %"$have_gas_3130"

"$have_gas_3130":                                 ; preds = %"$out_of_gas_3129", %"$have_gas_3125"
  %"$consume_3131" = sub i64 %"$gasrem_3127", 1
  store i64 %"$consume_3131", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_3132", i32 0, i32 0), i32 21 }, %String* %m, align 8, !dbg !325
  %"$gasrem_3133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3134" = icmp ugt i64 1, %"$gasrem_3133"
  br i1 %"$gascmp_3134", label %"$out_of_gas_3135", label %"$have_gas_3136"

"$out_of_gas_3135":                               ; preds = %"$have_gas_3130"
  call void @_out_of_gas()
  br label %"$have_gas_3136"

"$have_gas_3136":                                 ; preds = %"$out_of_gas_3135", %"$have_gas_3130"
  %"$consume_3137" = sub i64 %"$gasrem_3133", 1
  store i64 %"$consume_3137", i64* @_gasrem, align 8
  %"$ud-registry.eError_55" = alloca i8*, align 8
  %"$ud-registry.eError_3138" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3139" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3138", 0
  %"$ud-registry.eError_envptr_3140" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3138", 1
  %"$m_3141" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_3142" = call i8* %"$ud-registry.eError_fptr_3139"(i8* %"$ud-registry.eError_envptr_3140", %String %"$m_3141"), !dbg !327
  store i8* %"$ud-registry.eError_call_3142", i8** %"$ud-registry.eError_55", align 8, !dbg !327
  %"$$ud-registry.eError_55_3143" = load i8*, i8** %"$ud-registry.eError_55", align 8
  store i8* %"$$ud-registry.eError_55_3143", i8** %e3, align 8, !dbg !327
  %"$e_3144" = load i8*, i8** %e3, align 8
  %"$_literal_cost_call_3146" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3144")
  %"$gasrem_3147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3148" = icmp ugt i64 %"$_literal_cost_call_3146", %"$gasrem_3147"
  br i1 %"$gascmp_3148", label %"$out_of_gas_3149", label %"$have_gas_3150"

"$out_of_gas_3149":                               ; preds = %"$have_gas_3136"
  call void @_out_of_gas()
  br label %"$have_gas_3150"

"$have_gas_3150":                                 ; preds = %"$out_of_gas_3149", %"$have_gas_3136"
  %"$consume_3151" = sub i64 %"$gasrem_3147", %"$_literal_cost_call_3146"
  store i64 %"$consume_3151", i64* @_gasrem, align 8
  %"$execptr_load_3152" = load i8*, i8** @_execptr, align 8
  %"$e_3153" = load i8*, i8** %e3, align 8
  call void @_event(i8* %"$execptr_load_3152", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3153"), !dbg !328
  br label %"$matchsucc_2978"

"$empty_default_2982":                            ; preds = %"$have_gas_2976"
  br label %"$matchsucc_2978"

"$matchsucc_2978":                                ; preds = %"$have_gas_3150", %"$matchsucc_3067", %"$empty_default_2982"
  ret void
}

define void @approve(i8* %0) !dbg !329 {
entry:
  %"$_amount_3155" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3156" = bitcast i8* %"$_amount_3155" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3156", align 8
  %"$_origin_3157" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3158" = bitcast i8* %"$_origin_3157" to [20 x i8]*
  %"$_sender_3159" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3160" = bitcast i8* %"$_sender_3159" to [20 x i8]*
  %"$node_3161" = getelementptr i8, i8* %0, i32 56
  %"$node_3162" = bitcast i8* %"$node_3161" to [32 x i8]*
  %"$address_3163" = getelementptr i8, i8* %0, i32 88
  %"$address_3164" = bitcast i8* %"$address_3163" to [20 x i8]*
  call void @"$approve_2923"(%Uint128 %_amount, [20 x i8]* %"$_origin_3158", [20 x i8]* %"$_sender_3160", [32 x i8]* %"$node_3162", [20 x i8]* %"$address_3164"), !dbg !330
  ret void
}

define internal void @"$approveFor_3165"(%Uint128 %_amount, [20 x i8]* %"$_origin_3166", [20 x i8]* %"$_sender_3167", [20 x i8]* %"$address_3168", %TName_Bool* %isApproved) !dbg !331 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3166", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3167", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_3168", align 1
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3169_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3169_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3169_salloc_load", i64 20)
  %"$indices_buf_3169_salloc" = bitcast i8* %"$indices_buf_3169_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3169" = bitcast [20 x i8]* %"$indices_buf_3169_salloc" to i8*
  %"$indices_gep_3170" = getelementptr i8, i8* %"$indices_buf_3169", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3170" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_3172" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3173" = call i8* @_fetch_field(i8* %"$execptr_load_3172", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3171", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_3169", i32 1), !dbg !332
  %"$maybeOperators_3174" = bitcast i8* %"$maybeOperators_call_3173" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3174", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3175" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3175_3176" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3175" to i8*
  %"$_literal_cost_call_3177" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_3175_3176")
  %"$gasadd_3178" = add i64 %"$_literal_cost_call_3177", 0
  %"$gasadd_3179" = add i64 %"$gasadd_3178", 1
  %"$gasrem_3180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3181" = icmp ugt i64 %"$gasadd_3179", %"$gasrem_3180"
  br i1 %"$gascmp_3181", label %"$out_of_gas_3182", label %"$have_gas_3183"

"$out_of_gas_3182":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3183"

"$have_gas_3183":                                 ; preds = %"$out_of_gas_3182", %entry
  %"$consume_3184" = sub i64 %"$gasrem_3180", %"$gasadd_3179"
  store i64 %"$consume_3184", i64* @_gasrem, align 8
  %"$gasrem_3185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3186" = icmp ugt i64 1, %"$gasrem_3185"
  br i1 %"$gascmp_3186", label %"$out_of_gas_3187", label %"$have_gas_3188"

"$out_of_gas_3187":                               ; preds = %"$have_gas_3183"
  call void @_out_of_gas()
  br label %"$have_gas_3188"

"$have_gas_3188":                                 ; preds = %"$out_of_gas_3187", %"$have_gas_3183"
  %"$consume_3189" = sub i64 %"$gasrem_3185", 1
  store i64 %"$consume_3189", i64* @_gasrem, align 8
  %currentOperators = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_3190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3191" = icmp ugt i64 2, %"$gasrem_3190"
  br i1 %"$gascmp_3191", label %"$out_of_gas_3192", label %"$have_gas_3193"

"$out_of_gas_3192":                               ; preds = %"$have_gas_3188"
  call void @_out_of_gas()
  br label %"$have_gas_3193"

"$have_gas_3193":                                 ; preds = %"$out_of_gas_3192", %"$have_gas_3188"
  %"$consume_3194" = sub i64 %"$gasrem_3190", 2
  store i64 %"$consume_3194", i64* @_gasrem, align 8
  %"$maybeOperators_3196" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_tag_3197" = getelementptr inbounds %"TName_Option_List_(ByStr20)", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3196", i32 0, i32 0
  %"$maybeOperators_tag_3198" = load i8, i8* %"$maybeOperators_tag_3197", align 1
  switch i8 %"$maybeOperators_tag_3198", label %"$empty_default_3199" [
    i8 1, label %"$None_3200"
    i8 0, label %"$Some_3208"
  ], !dbg !333

"$None_3200":                                     ; preds = %"$have_gas_3193"
  %"$maybeOperators_3201" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3196" to %"CName_None_List_(ByStr20)"*
  %"$gasrem_3202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3203" = icmp ugt i64 1, %"$gasrem_3202"
  br i1 %"$gascmp_3203", label %"$out_of_gas_3204", label %"$have_gas_3205"

"$out_of_gas_3204":                               ; preds = %"$None_3200"
  call void @_out_of_gas()
  br label %"$have_gas_3205"

"$have_gas_3205":                                 ; preds = %"$out_of_gas_3204", %"$None_3200"
  %"$consume_3206" = sub i64 %"$gasrem_3202", 1
  store i64 %"$consume_3206", i64* @_gasrem, align 8
  %"$ud-registry.nilByStr20_3207" = load %TName_List_ByStr20*, %TName_List_ByStr20** @ud-registry.nilByStr20, align 8
  store %TName_List_ByStr20* %"$ud-registry.nilByStr20_3207", %TName_List_ByStr20** %currentOperators, align 8, !dbg !334
  br label %"$matchsucc_3195"

"$Some_3208":                                     ; preds = %"$have_gas_3193"
  %"$maybeOperators_3209" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3196" to %"CName_Some_List_(ByStr20)"*
  %"$ops_gep_3210" = getelementptr inbounds %"CName_Some_List_(ByStr20)", %"CName_Some_List_(ByStr20)"* %"$maybeOperators_3209", i32 0, i32 1
  %"$ops_load_3211" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ops_gep_3210", align 8
  %ops = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$ops_load_3211", %TName_List_ByStr20** %ops, align 8
  %"$gasrem_3212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3213" = icmp ugt i64 1, %"$gasrem_3212"
  br i1 %"$gascmp_3213", label %"$out_of_gas_3214", label %"$have_gas_3215"

"$out_of_gas_3214":                               ; preds = %"$Some_3208"
  call void @_out_of_gas()
  br label %"$have_gas_3215"

"$have_gas_3215":                                 ; preds = %"$out_of_gas_3214", %"$Some_3208"
  %"$consume_3216" = sub i64 %"$gasrem_3212", 1
  store i64 %"$consume_3216", i64* @_gasrem, align 8
  %"$ops_3217" = load %TName_List_ByStr20*, %TName_List_ByStr20** %ops, align 8
  store %TName_List_ByStr20* %"$ops_3217", %TName_List_ByStr20** %currentOperators, align 8, !dbg !337
  br label %"$matchsucc_3195"

"$empty_default_3199":                            ; preds = %"$have_gas_3193"
  br label %"$matchsucc_3195"

"$matchsucc_3195":                                ; preds = %"$have_gas_3215", %"$have_gas_3205", %"$empty_default_3199"
  %"$gasrem_3218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3219" = icmp ugt i64 1, %"$gasrem_3218"
  br i1 %"$gascmp_3219", label %"$out_of_gas_3220", label %"$have_gas_3221"

"$out_of_gas_3220":                               ; preds = %"$matchsucc_3195"
  call void @_out_of_gas()
  br label %"$have_gas_3221"

"$have_gas_3221":                                 ; preds = %"$out_of_gas_3220", %"$matchsucc_3195"
  %"$consume_3222" = sub i64 %"$gasrem_3218", 1
  store i64 %"$consume_3222", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_3223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3224" = icmp ugt i64 1, %"$gasrem_3223"
  br i1 %"$gascmp_3224", label %"$out_of_gas_3225", label %"$have_gas_3226"

"$out_of_gas_3225":                               ; preds = %"$have_gas_3221"
  call void @_out_of_gas()
  br label %"$have_gas_3226"

"$have_gas_3226":                                 ; preds = %"$out_of_gas_3225", %"$have_gas_3221"
  %"$consume_3227" = sub i64 %"$gasrem_3223", 1
  store i64 %"$consume_3227", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_3228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3229" = icmp ugt i64 1, %"$gasrem_3228"
  br i1 %"$gascmp_3229", label %"$out_of_gas_3230", label %"$have_gas_3231"

"$out_of_gas_3230":                               ; preds = %"$have_gas_3226"
  call void @_out_of_gas()
  br label %"$have_gas_3231"

"$have_gas_3231":                                 ; preds = %"$out_of_gas_3230", %"$have_gas_3226"
  %"$consume_3232" = sub i64 %"$gasrem_3228", 1
  store i64 %"$consume_3232", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Excludes_62" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Excludes_3233" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes, align 8
  %"$ud-registry.listByStr20Excludes_fptr_3234" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_3233", 0
  %"$ud-registry.listByStr20Excludes_envptr_3235" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_3233", 1
  %"$currentOperators_3236" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$ud-registry.listByStr20Excludes_call_3237" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_fptr_3234"(i8* %"$ud-registry.listByStr20Excludes_envptr_3235", %TName_List_ByStr20* %"$currentOperators_3236"), !dbg !339
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_call_3237", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_62", align 8, !dbg !339
  %"$ud-registry.listByStr20Excludes_63" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Excludes_62_3238" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_62", align 8
  %"$$ud-registry.listByStr20Excludes_62_fptr_3239" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_62_3238", 0
  %"$$ud-registry.listByStr20Excludes_62_envptr_3240" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_62_3238", 1
  %"$$ud-registry.listByStr20Excludes_62_address_3241" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20Excludes_62_address_3241", align 1
  %"$$ud-registry.listByStr20Excludes_62_call_3242" = call %TName_Bool* %"$$ud-registry.listByStr20Excludes_62_fptr_3239"(i8* %"$$ud-registry.listByStr20Excludes_62_envptr_3240", [20 x i8]* %"$$ud-registry.listByStr20Excludes_62_address_3241"), !dbg !339
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_62_call_3242", %TName_Bool** %"$ud-registry.listByStr20Excludes_63", align 8, !dbg !339
  %"$$ud-registry.listByStr20Excludes_63_3243" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Excludes_63", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_63_3243", %TName_Bool** %b, align 8, !dbg !339
  %"$gasrem_3244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3245" = icmp ugt i64 1, %"$gasrem_3244"
  br i1 %"$gascmp_3245", label %"$out_of_gas_3246", label %"$have_gas_3247"

"$out_of_gas_3246":                               ; preds = %"$have_gas_3231"
  call void @_out_of_gas()
  br label %"$have_gas_3247"

"$have_gas_3247":                                 ; preds = %"$out_of_gas_3246", %"$have_gas_3231"
  %"$consume_3248" = sub i64 %"$gasrem_3244", 1
  store i64 %"$consume_3248", i64* @_gasrem, align 8
  %"$ud-registry.xandb_64" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.xandb_3249" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8
  %"$ud-registry.xandb_fptr_3250" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_3249", 0
  %"$ud-registry.xandb_envptr_3251" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_3249", 1
  %"$b_3252" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$ud-registry.xandb_call_3253" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_fptr_3250"(i8* %"$ud-registry.xandb_envptr_3251", %TName_Bool* %"$b_3252"), !dbg !340
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_call_3253", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_64", align 8, !dbg !340
  %"$ud-registry.xandb_65" = alloca %TName_Bool*, align 8
  %"$$ud-registry.xandb_64_3254" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_64", align 8
  %"$$ud-registry.xandb_64_fptr_3255" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_64_3254", 0
  %"$$ud-registry.xandb_64_envptr_3256" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_64_3254", 1
  %"$$ud-registry.xandb_64_call_3257" = call %TName_Bool* %"$$ud-registry.xandb_64_fptr_3255"(i8* %"$$ud-registry.xandb_64_envptr_3256", %TName_Bool* %isApproved), !dbg !340
  store %TName_Bool* %"$$ud-registry.xandb_64_call_3257", %TName_Bool** %"$ud-registry.xandb_65", align 8, !dbg !340
  %"$$ud-registry.xandb_65_3258" = load %TName_Bool*, %TName_Bool** %"$ud-registry.xandb_65", align 8
  store %TName_Bool* %"$$ud-registry.xandb_65_3258", %TName_Bool** %needsToChange, align 8, !dbg !340
  %"$gasrem_3259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3260" = icmp ugt i64 2, %"$gasrem_3259"
  br i1 %"$gascmp_3260", label %"$out_of_gas_3261", label %"$have_gas_3262"

"$out_of_gas_3261":                               ; preds = %"$have_gas_3247"
  call void @_out_of_gas()
  br label %"$have_gas_3262"

"$have_gas_3262":                                 ; preds = %"$out_of_gas_3261", %"$have_gas_3247"
  %"$consume_3263" = sub i64 %"$gasrem_3259", 2
  store i64 %"$consume_3263", i64* @_gasrem, align 8
  %"$needsToChange_3265" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_3266" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_3265", i32 0, i32 0
  %"$needsToChange_tag_3267" = load i8, i8* %"$needsToChange_tag_3266", align 1
  switch i8 %"$needsToChange_tag_3267", label %"$default_3268" [
    i8 0, label %"$True_3269"
  ], !dbg !341

"$True_3269":                                     ; preds = %"$have_gas_3262"
  %"$needsToChange_3270" = bitcast %TName_Bool* %"$needsToChange_3265" to %CName_True*
  %"$gasrem_3271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3272" = icmp ugt i64 1, %"$gasrem_3271"
  br i1 %"$gascmp_3272", label %"$out_of_gas_3273", label %"$have_gas_3274"

"$out_of_gas_3273":                               ; preds = %"$True_3269"
  call void @_out_of_gas()
  br label %"$have_gas_3274"

"$have_gas_3274":                                 ; preds = %"$out_of_gas_3273", %"$True_3269"
  %"$consume_3275" = sub i64 %"$gasrem_3271", 1
  store i64 %"$consume_3275", i64* @_gasrem, align 8
  %newOperators = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_3276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3277" = icmp ugt i64 2, %"$gasrem_3276"
  br i1 %"$gascmp_3277", label %"$out_of_gas_3278", label %"$have_gas_3279"

"$out_of_gas_3278":                               ; preds = %"$have_gas_3274"
  call void @_out_of_gas()
  br label %"$have_gas_3279"

"$have_gas_3279":                                 ; preds = %"$out_of_gas_3278", %"$have_gas_3274"
  %"$consume_3280" = sub i64 %"$gasrem_3276", 2
  store i64 %"$consume_3280", i64* @_gasrem, align 8
  %"$isApproved_tag_3282" = getelementptr inbounds %TName_Bool, %TName_Bool* %isApproved, i32 0, i32 0
  %"$isApproved_tag_3283" = load i8, i8* %"$isApproved_tag_3282", align 1
  switch i8 %"$isApproved_tag_3283", label %"$empty_default_3284" [
    i8 0, label %"$True_3285"
    i8 1, label %"$False_3298"
  ], !dbg !342

"$True_3285":                                     ; preds = %"$have_gas_3279"
  %"$isApproved_3286" = bitcast %TName_Bool* %isApproved to %CName_True*
  %"$gasrem_3287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3288" = icmp ugt i64 1, %"$gasrem_3287"
  br i1 %"$gascmp_3288", label %"$out_of_gas_3289", label %"$have_gas_3290"

"$out_of_gas_3289":                               ; preds = %"$True_3285"
  call void @_out_of_gas()
  br label %"$have_gas_3290"

"$have_gas_3290":                                 ; preds = %"$out_of_gas_3289", %"$True_3285"
  %"$consume_3291" = sub i64 %"$gasrem_3287", 1
  store i64 %"$consume_3291", i64* @_gasrem, align 8
  %"$currentOperators_3292" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$adtval_3293_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3293_salloc" = call i8* @_salloc(i8* %"$adtval_3293_load", i64 29)
  %"$adtval_3293" = bitcast i8* %"$adtval_3293_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_3294" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3293", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3294", align 1
  %"$adtgep_3295" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3293", i32 0, i32 1
  store [20 x i8] %address, [20 x i8]* %"$adtgep_3295", align 1
  %"$adtgep_3296" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3293", i32 0, i32 2
  store %TName_List_ByStr20* %"$currentOperators_3292", %TName_List_ByStr20** %"$adtgep_3296", align 8
  %"$adtptr_3297" = bitcast %CName_Cons_ByStr20* %"$adtval_3293" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_3297", %TName_List_ByStr20** %newOperators, align 8, !dbg !345
  br label %"$matchsucc_3281"

"$False_3298":                                    ; preds = %"$have_gas_3279"
  %"$isApproved_3299" = bitcast %TName_Bool* %isApproved to %CName_False*
  %"$gasrem_3300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3301" = icmp ugt i64 1, %"$gasrem_3300"
  br i1 %"$gascmp_3301", label %"$out_of_gas_3302", label %"$have_gas_3303"

"$out_of_gas_3302":                               ; preds = %"$False_3298"
  call void @_out_of_gas()
  br label %"$have_gas_3303"

"$have_gas_3303":                                 ; preds = %"$out_of_gas_3302", %"$False_3298"
  %"$consume_3304" = sub i64 %"$gasrem_3300", 1
  store i64 %"$consume_3304", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20FilterOut_60" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20FilterOut_3305" = load { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8
  %"$ud-registry.listByStr20FilterOut_fptr_3306" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_3305", 0
  %"$ud-registry.listByStr20FilterOut_envptr_3307" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_3305", 1
  %"$currentOperators_3308" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$ud-registry.listByStr20FilterOut_call_3309" = call { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_fptr_3306"(i8* %"$ud-registry.listByStr20FilterOut_envptr_3307", %TName_List_ByStr20* %"$currentOperators_3308"), !dbg !348
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_call_3309", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_60", align 8, !dbg !348
  %"$ud-registry.listByStr20FilterOut_61" = alloca %TName_List_ByStr20*, align 8
  %"$$ud-registry.listByStr20FilterOut_60_3310" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_60", align 8
  %"$$ud-registry.listByStr20FilterOut_60_fptr_3311" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_60_3310", 0
  %"$$ud-registry.listByStr20FilterOut_60_envptr_3312" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_60_3310", 1
  %"$$ud-registry.listByStr20FilterOut_60_address_3313" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20FilterOut_60_address_3313", align 1
  %"$$ud-registry.listByStr20FilterOut_60_call_3314" = call %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_60_fptr_3311"(i8* %"$$ud-registry.listByStr20FilterOut_60_envptr_3312", [20 x i8]* %"$$ud-registry.listByStr20FilterOut_60_address_3313"), !dbg !348
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_60_call_3314", %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_61", align 8, !dbg !348
  %"$$ud-registry.listByStr20FilterOut_61_3315" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_61", align 8
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_61_3315", %TName_List_ByStr20** %newOperators, align 8, !dbg !348
  br label %"$matchsucc_3281"

"$empty_default_3284":                            ; preds = %"$have_gas_3279"
  br label %"$matchsucc_3281"

"$matchsucc_3281":                                ; preds = %"$have_gas_3303", %"$have_gas_3290", %"$empty_default_3284"
  %"$newOperators_3316" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newOperators, align 8
  %"$$newOperators_3316_3317" = bitcast %TName_List_ByStr20* %"$newOperators_3316" to i8*
  %"$_literal_cost_call_3318" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$newOperators_3316_3317")
  %"$gasadd_3319" = add i64 %"$_literal_cost_call_3318", 1
  %"$gasrem_3320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3321" = icmp ugt i64 %"$gasadd_3319", %"$gasrem_3320"
  br i1 %"$gascmp_3321", label %"$out_of_gas_3322", label %"$have_gas_3323"

"$out_of_gas_3322":                               ; preds = %"$matchsucc_3281"
  call void @_out_of_gas()
  br label %"$have_gas_3323"

"$have_gas_3323":                                 ; preds = %"$out_of_gas_3322", %"$matchsucc_3281"
  %"$consume_3324" = sub i64 %"$gasrem_3320", %"$gasadd_3319"
  store i64 %"$consume_3324", i64* @_gasrem, align 8
  %"$indices_buf_3325_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3325_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3325_salloc_load", i64 20)
  %"$indices_buf_3325_salloc" = bitcast i8* %"$indices_buf_3325_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3325" = bitcast [20 x i8]* %"$indices_buf_3325_salloc" to i8*
  %"$indices_gep_3326" = getelementptr i8, i8* %"$indices_buf_3325", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3326" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_3327" = load i8*, i8** @_execptr, align 8
  %"$newOperators_3329" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newOperators, align 8
  %"$update_value_3330" = bitcast %TName_List_ByStr20* %"$newOperators_3329" to i8*
  call void @_update_field(i8* %"$execptr_load_3327", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3328", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_3325", i8* %"$update_value_3330"), !dbg !350
  %"$gasrem_3331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3332" = icmp ugt i64 1, %"$gasrem_3331"
  br i1 %"$gascmp_3332", label %"$out_of_gas_3333", label %"$have_gas_3334"

"$out_of_gas_3333":                               ; preds = %"$have_gas_3323"
  call void @_out_of_gas()
  br label %"$have_gas_3334"

"$have_gas_3334":                                 ; preds = %"$out_of_gas_3333", %"$have_gas_3323"
  %"$consume_3335" = sub i64 %"$gasrem_3331", 1
  store i64 %"$consume_3335", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3337" = icmp ugt i64 1, %"$gasrem_3336"
  br i1 %"$gascmp_3337", label %"$out_of_gas_3338", label %"$have_gas_3339"

"$out_of_gas_3338":                               ; preds = %"$have_gas_3334"
  call void @_out_of_gas()
  br label %"$have_gas_3339"

"$have_gas_3339":                                 ; preds = %"$out_of_gas_3338", %"$have_gas_3334"
  %"$consume_3340" = sub i64 %"$gasrem_3336", 1
  store i64 %"$consume_3340", i64* @_gasrem, align 8
  %"$ud-registry.eApprovedFor_57" = alloca { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eApprovedFor_3341" = load { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApprovedFor, align 8
  %"$ud-registry.eApprovedFor_fptr_3342" = extractvalue { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_3341", 0
  %"$ud-registry.eApprovedFor_envptr_3343" = extractvalue { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_3341", 1
  %"$ud-registry.eApprovedFor__sender_3344" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.eApprovedFor__sender_3344", align 1
  %"$ud-registry.eApprovedFor_call_3345" = call { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_fptr_3342"(i8* %"$ud-registry.eApprovedFor_envptr_3343", [20 x i8]* %"$ud-registry.eApprovedFor__sender_3344"), !dbg !351
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_call_3345", { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eApprovedFor_57", align 8, !dbg !351
  %"$ud-registry.eApprovedFor_58" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$ud-registry.eApprovedFor_57_3346" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eApprovedFor_57", align 8
  %"$$ud-registry.eApprovedFor_57_fptr_3347" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eApprovedFor_57_3346", 0
  %"$$ud-registry.eApprovedFor_57_envptr_3348" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eApprovedFor_57_3346", 1
  %"$$ud-registry.eApprovedFor_57_address_3349" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.eApprovedFor_57_address_3349", align 1
  %"$$ud-registry.eApprovedFor_57_call_3350" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_57_fptr_3347"(i8* %"$$ud-registry.eApprovedFor_57_envptr_3348", [20 x i8]* %"$$ud-registry.eApprovedFor_57_address_3349"), !dbg !351
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_57_call_3350", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eApprovedFor_58", align 8, !dbg !351
  %"$ud-registry.eApprovedFor_59" = alloca i8*, align 8
  %"$$ud-registry.eApprovedFor_58_3351" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eApprovedFor_58", align 8
  %"$$ud-registry.eApprovedFor_58_fptr_3352" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_58_3351", 0
  %"$$ud-registry.eApprovedFor_58_envptr_3353" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_58_3351", 1
  %"$$ud-registry.eApprovedFor_58_call_3354" = call i8* %"$$ud-registry.eApprovedFor_58_fptr_3352"(i8* %"$$ud-registry.eApprovedFor_58_envptr_3353", %TName_Bool* %isApproved), !dbg !351
  store i8* %"$$ud-registry.eApprovedFor_58_call_3354", i8** %"$ud-registry.eApprovedFor_59", align 8, !dbg !351
  %"$$ud-registry.eApprovedFor_59_3355" = load i8*, i8** %"$ud-registry.eApprovedFor_59", align 8
  store i8* %"$$ud-registry.eApprovedFor_59_3355", i8** %e, align 8, !dbg !351
  %"$e_3356" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3358" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3356")
  %"$gasrem_3359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3360" = icmp ugt i64 %"$_literal_cost_call_3358", %"$gasrem_3359"
  br i1 %"$gascmp_3360", label %"$out_of_gas_3361", label %"$have_gas_3362"

"$out_of_gas_3361":                               ; preds = %"$have_gas_3339"
  call void @_out_of_gas()
  br label %"$have_gas_3362"

"$have_gas_3362":                                 ; preds = %"$out_of_gas_3361", %"$have_gas_3339"
  %"$consume_3363" = sub i64 %"$gasrem_3359", %"$_literal_cost_call_3358"
  store i64 %"$consume_3363", i64* @_gasrem, align 8
  %"$execptr_load_3364" = load i8*, i8** @_execptr, align 8
  %"$e_3365" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3364", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3365"), !dbg !352
  br label %"$matchsucc_3264"

"$default_3268":                                  ; preds = %"$have_gas_3262"
  br label %"$joinp_3"

"$joinp_3":                                       ; preds = %"$default_3268"
  br label %"$matchsucc_3264"

"$matchsucc_3264":                                ; preds = %"$have_gas_3362", %"$joinp_3"
  ret void
}

define void @approveFor(i8* %0) !dbg !353 {
entry:
  %"$_amount_3367" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3368" = bitcast i8* %"$_amount_3367" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3368", align 8
  %"$_origin_3369" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3370" = bitcast i8* %"$_origin_3369" to [20 x i8]*
  %"$_sender_3371" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3372" = bitcast i8* %"$_sender_3371" to [20 x i8]*
  %"$address_3373" = getelementptr i8, i8* %0, i32 56
  %"$address_3374" = bitcast i8* %"$address_3373" to [20 x i8]*
  %"$isApproved_3375" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_3376" = bitcast i8* %"$isApproved_3375" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_3376", align 8
  call void @"$approveFor_3165"(%Uint128 %_amount, [20 x i8]* %"$_origin_3370", [20 x i8]* %"$_sender_3372", [20 x i8]* %"$address_3374", %TName_Bool* %isApproved), !dbg !354
  ret void
}

define internal void @"$configureNode_3377"(%Uint128 %_amount, [20 x i8]* %"$_origin_3378", [20 x i8]* %"$_sender_3379", [32 x i8]* %"$node_3380", [20 x i8]* %"$owner_3381", [20 x i8]* %"$resolver_3382") !dbg !355 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3378", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3379", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_3380", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_3381", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_3382", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3383_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3383_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3383_salloc_load", i64 32)
  %"$indices_buf_3383_salloc" = bitcast i8* %"$indices_buf_3383_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3383" = bitcast [32 x i8]* %"$indices_buf_3383_salloc" to i8*
  %"$indices_gep_3384" = getelementptr i8, i8* %"$indices_buf_3383", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3384" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3386" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_3387" = call i8* @_fetch_field(i8* %"$execptr_load_3386", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3385", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3383", i32 1), !dbg !356
  %"$maybeRecord_3388" = bitcast i8* %"$maybeRecord_call_3387" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3388", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3389" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3389_3390" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3389" to i8*
  %"$_literal_cost_call_3391" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_3389_3390")
  %"$gasadd_3392" = add i64 %"$_literal_cost_call_3391", 0
  %"$gasadd_3393" = add i64 %"$gasadd_3392", 1
  %"$gasrem_3394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3395" = icmp ugt i64 %"$gasadd_3393", %"$gasrem_3394"
  br i1 %"$gascmp_3395", label %"$out_of_gas_3396", label %"$have_gas_3397"

"$out_of_gas_3396":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3397"

"$have_gas_3397":                                 ; preds = %"$out_of_gas_3396", %entry
  %"$consume_3398" = sub i64 %"$gasrem_3394", %"$gasadd_3393"
  store i64 %"$consume_3398", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3399_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3399_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3399_salloc_load", i64 32)
  %"$indices_buf_3399_salloc" = bitcast i8* %"$indices_buf_3399_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3399" = bitcast [32 x i8]* %"$indices_buf_3399_salloc" to i8*
  %"$indices_gep_3400" = getelementptr i8, i8* %"$indices_buf_3399", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3400" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_3402" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_3403" = call i8* @_fetch_field(i8* %"$execptr_load_3402", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3401", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_3399", i32 1), !dbg !357
  %"$maybeApproved_3404" = bitcast i8* %"$maybeApproved_call_3403" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3404", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3405" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3405_3406" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3405" to i8*
  %"$_literal_cost_call_3407" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_3405_3406")
  %"$gasadd_3408" = add i64 %"$_literal_cost_call_3407", 0
  %"$gasadd_3409" = add i64 %"$gasadd_3408", 1
  %"$gasrem_3410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3411" = icmp ugt i64 %"$gasadd_3409", %"$gasrem_3410"
  br i1 %"$gascmp_3411", label %"$out_of_gas_3412", label %"$have_gas_3413"

"$out_of_gas_3412":                               ; preds = %"$have_gas_3397"
  call void @_out_of_gas()
  br label %"$have_gas_3413"

"$have_gas_3413":                                 ; preds = %"$out_of_gas_3412", %"$have_gas_3397"
  %"$consume_3414" = sub i64 %"$gasrem_3410", %"$gasadd_3409"
  store i64 %"$consume_3414", i64* @_gasrem, align 8
  %"$gasrem_3415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3416" = icmp ugt i64 1, %"$gasrem_3415"
  br i1 %"$gascmp_3416", label %"$out_of_gas_3417", label %"$have_gas_3418"

"$out_of_gas_3417":                               ; preds = %"$have_gas_3413"
  call void @_out_of_gas()
  br label %"$have_gas_3418"

"$have_gas_3418":                                 ; preds = %"$out_of_gas_3417", %"$have_gas_3413"
  %"$consume_3419" = sub i64 %"$gasrem_3415", 1
  store i64 %"$consume_3419", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3421" = icmp ugt i64 1, %"$gasrem_3420"
  br i1 %"$gascmp_3421", label %"$out_of_gas_3422", label %"$have_gas_3423"

"$out_of_gas_3422":                               ; preds = %"$have_gas_3418"
  call void @_out_of_gas()
  br label %"$have_gas_3423"

"$have_gas_3423":                                 ; preds = %"$out_of_gas_3422", %"$have_gas_3418"
  %"$consume_3424" = sub i64 %"$gasrem_3420", 1
  store i64 %"$consume_3424", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_76" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3425" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3426" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3425", 0
  %"$ud-registry.recordMemberOwner_envptr_3427" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3425", 1
  %"$maybeRecord_3428" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3429" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3426"(i8* %"$ud-registry.recordMemberOwner_envptr_3427", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3429", %TName_Option_ud-registry.Record* %"$maybeRecord_3428"), !dbg !358
  %"$ud-registry.recordMemberOwner_ret_3430" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3429", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3430", [20 x i8]* %"$ud-registry.recordMemberOwner_76", align 1, !dbg !358
  %"$$ud-registry.recordMemberOwner_76_3431" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_76", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_76_3431", [20 x i8]* %recordOwner, align 1, !dbg !358
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3432_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3432_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3432_salloc_load", i64 20)
  %"$indices_buf_3432_salloc" = bitcast i8* %"$indices_buf_3432_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3432" = bitcast [20 x i8]* %"$indices_buf_3432_salloc" to i8*
  %"$recordOwner_3433" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_3434" = getelementptr i8, i8* %"$indices_buf_3432", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3434" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3433", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_3436" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3437" = call i8* @_fetch_field(i8* %"$execptr_load_3436", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3435", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_3432", i32 1), !dbg !359
  %"$maybeOperators_3438" = bitcast i8* %"$maybeOperators_call_3437" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3438", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3439" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3439_3440" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3439" to i8*
  %"$_literal_cost_call_3441" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_3439_3440")
  %"$gasadd_3442" = add i64 %"$_literal_cost_call_3441", 0
  %"$gasadd_3443" = add i64 %"$gasadd_3442", 1
  %"$gasrem_3444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3445" = icmp ugt i64 %"$gasadd_3443", %"$gasrem_3444"
  br i1 %"$gascmp_3445", label %"$out_of_gas_3446", label %"$have_gas_3447"

"$out_of_gas_3446":                               ; preds = %"$have_gas_3423"
  call void @_out_of_gas()
  br label %"$have_gas_3447"

"$have_gas_3447":                                 ; preds = %"$out_of_gas_3446", %"$have_gas_3423"
  %"$consume_3448" = sub i64 %"$gasrem_3444", %"$gasadd_3443"
  store i64 %"$consume_3448", i64* @_gasrem, align 8
  %"$gasrem_3449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3450" = icmp ugt i64 1, %"$gasrem_3449"
  br i1 %"$gascmp_3450", label %"$out_of_gas_3451", label %"$have_gas_3452"

"$out_of_gas_3451":                               ; preds = %"$have_gas_3447"
  call void @_out_of_gas()
  br label %"$have_gas_3452"

"$have_gas_3452":                                 ; preds = %"$out_of_gas_3451", %"$have_gas_3447"
  %"$consume_3453" = sub i64 %"$gasrem_3449", 1
  store i64 %"$consume_3453", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_3454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3455" = icmp ugt i64 1, %"$gasrem_3454"
  br i1 %"$gascmp_3455", label %"$out_of_gas_3456", label %"$have_gas_3457"

"$out_of_gas_3456":                               ; preds = %"$have_gas_3452"
  call void @_out_of_gas()
  br label %"$have_gas_3457"

"$have_gas_3457":                                 ; preds = %"$out_of_gas_3456", %"$have_gas_3452"
  %"$consume_3458" = sub i64 %"$gasrem_3454", 1
  store i64 %"$consume_3458", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_72" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_3459" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_3460" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3459", 0
  %"$ud-registry.getIsOAO_envptr_3461" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3459", 1
  %"$ud-registry.getIsOAO__sender_3462" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3462", align 1
  %"$ud-registry.getIsOAO_call_3463" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_3460"(i8* %"$ud-registry.getIsOAO_envptr_3461", [20 x i8]* %"$ud-registry.getIsOAO__sender_3462"), !dbg !360
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_3463", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_72", align 8, !dbg !360
  %"$ud-registry.getIsOAO_73" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_72_3464" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_72", align 8
  %"$$ud-registry.getIsOAO_72_fptr_3465" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_72_3464", 0
  %"$$ud-registry.getIsOAO_72_envptr_3466" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_72_3464", 1
  %"$$ud-registry.getIsOAO_72_recordOwner_3467" = alloca [20 x i8], align 1
  %"$recordOwner_3468" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3468", [20 x i8]* %"$$ud-registry.getIsOAO_72_recordOwner_3467", align 1
  %"$$ud-registry.getIsOAO_72_call_3469" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_72_fptr_3465"(i8* %"$$ud-registry.getIsOAO_72_envptr_3466", [20 x i8]* %"$$ud-registry.getIsOAO_72_recordOwner_3467"), !dbg !360
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_72_call_3469", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_73", align 8, !dbg !360
  %"$ud-registry.getIsOAO_74" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_73_3470" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_73", align 8
  %"$$ud-registry.getIsOAO_73_fptr_3471" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_73_3470", 0
  %"$$ud-registry.getIsOAO_73_envptr_3472" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_73_3470", 1
  %"$maybeApproved_3473" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_73_call_3474" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_73_fptr_3471"(i8* %"$$ud-registry.getIsOAO_73_envptr_3472", %TName_Option_ByStr20* %"$maybeApproved_3473"), !dbg !360
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_73_call_3474", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_74", align 8, !dbg !360
  %"$ud-registry.getIsOAO_75" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_74_3475" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_74", align 8
  %"$$ud-registry.getIsOAO_74_fptr_3476" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_74_3475", 0
  %"$$ud-registry.getIsOAO_74_envptr_3477" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_74_3475", 1
  %"$maybeOperators_3478" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_74_call_3479" = call %TName_Bool* %"$$ud-registry.getIsOAO_74_fptr_3476"(i8* %"$$ud-registry.getIsOAO_74_envptr_3477", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3478"), !dbg !360
  store %TName_Bool* %"$$ud-registry.getIsOAO_74_call_3479", %TName_Bool** %"$ud-registry.getIsOAO_75", align 8, !dbg !360
  %"$$ud-registry.getIsOAO_75_3480" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_75", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_75_3480", %TName_Bool** %isSenderOAO, align 8, !dbg !360
  %"$gasrem_3481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3482" = icmp ugt i64 2, %"$gasrem_3481"
  br i1 %"$gascmp_3482", label %"$out_of_gas_3483", label %"$have_gas_3484"

"$out_of_gas_3483":                               ; preds = %"$have_gas_3457"
  call void @_out_of_gas()
  br label %"$have_gas_3484"

"$have_gas_3484":                                 ; preds = %"$out_of_gas_3483", %"$have_gas_3457"
  %"$consume_3485" = sub i64 %"$gasrem_3481", 2
  store i64 %"$consume_3485", i64* @_gasrem, align 8
  %"$isSenderOAO_3487" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_3488" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3487", i32 0, i32 0
  %"$isSenderOAO_tag_3489" = load i8, i8* %"$isSenderOAO_tag_3488", align 1
  switch i8 %"$isSenderOAO_tag_3489", label %"$empty_default_3490" [
    i8 0, label %"$True_3491"
    i8 1, label %"$False_3633"
  ], !dbg !361

"$True_3491":                                     ; preds = %"$have_gas_3484"
  %"$isSenderOAO_3492" = bitcast %TName_Bool* %"$isSenderOAO_3487" to %CName_True*
  %"$gasrem_3493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3494" = icmp ugt i64 1, %"$gasrem_3493"
  br i1 %"$gascmp_3494", label %"$out_of_gas_3495", label %"$have_gas_3496"

"$out_of_gas_3495":                               ; preds = %"$True_3491"
  call void @_out_of_gas()
  br label %"$have_gas_3496"

"$have_gas_3496":                                 ; preds = %"$out_of_gas_3495", %"$True_3491"
  %"$consume_3497" = sub i64 %"$gasrem_3493", 1
  store i64 %"$consume_3497", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_3498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3499" = icmp ugt i64 1, %"$gasrem_3498"
  br i1 %"$gascmp_3499", label %"$out_of_gas_3500", label %"$have_gas_3501"

"$out_of_gas_3500":                               ; preds = %"$have_gas_3496"
  call void @_out_of_gas()
  br label %"$have_gas_3501"

"$have_gas_3501":                                 ; preds = %"$out_of_gas_3500", %"$have_gas_3496"
  %"$consume_3502" = sub i64 %"$gasrem_3498", 1
  store i64 %"$consume_3502", i64* @_gasrem, align 8
  %"$adtval_3503_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3503_salloc" = call i8* @_salloc(i8* %"$adtval_3503_load", i64 41)
  %"$adtval_3503" = bitcast i8* %"$adtval_3503_salloc" to %CName_ud-registry.Record*
  %"$adtgep_3504" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3503", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3504", align 1
  %"$adtgep_3505" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3503", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_3505", align 1
  %"$adtgep_3506" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3503", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_3506", align 1
  %"$adtptr_3507" = bitcast %CName_ud-registry.Record* %"$adtval_3503" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_3507", %TName_ud-registry.Record** %newRecord, align 8, !dbg !362
  %"$newRecord_3508" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_3508_3509" = bitcast %TName_ud-registry.Record* %"$newRecord_3508" to i8*
  %"$_literal_cost_call_3510" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_3508_3509")
  %"$gasadd_3511" = add i64 %"$_literal_cost_call_3510", 1
  %"$gasrem_3512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3513" = icmp ugt i64 %"$gasadd_3511", %"$gasrem_3512"
  br i1 %"$gascmp_3513", label %"$out_of_gas_3514", label %"$have_gas_3515"

"$out_of_gas_3514":                               ; preds = %"$have_gas_3501"
  call void @_out_of_gas()
  br label %"$have_gas_3515"

"$have_gas_3515":                                 ; preds = %"$out_of_gas_3514", %"$have_gas_3501"
  %"$consume_3516" = sub i64 %"$gasrem_3512", %"$gasadd_3511"
  store i64 %"$consume_3516", i64* @_gasrem, align 8
  %"$indices_buf_3517_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3517_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3517_salloc_load", i64 32)
  %"$indices_buf_3517_salloc" = bitcast i8* %"$indices_buf_3517_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3517" = bitcast [32 x i8]* %"$indices_buf_3517_salloc" to i8*
  %"$indices_gep_3518" = getelementptr i8, i8* %"$indices_buf_3517", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_3518" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_3519" = load i8*, i8** @_execptr, align 8
  %"$newRecord_3521" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_3522" = bitcast %TName_ud-registry.Record* %"$newRecord_3521" to i8*
  call void @_update_field(i8* %"$execptr_load_3519", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3520", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3517", i8* %"$update_value_3522"), !dbg !365
  %"$gasrem_3523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3524" = icmp ugt i64 1, %"$gasrem_3523"
  br i1 %"$gascmp_3524", label %"$out_of_gas_3525", label %"$have_gas_3526"

"$out_of_gas_3525":                               ; preds = %"$have_gas_3515"
  call void @_out_of_gas()
  br label %"$have_gas_3526"

"$have_gas_3526":                                 ; preds = %"$out_of_gas_3525", %"$have_gas_3515"
  %"$consume_3527" = sub i64 %"$gasrem_3523", 1
  store i64 %"$consume_3527", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3529" = icmp ugt i64 1, %"$gasrem_3528"
  br i1 %"$gascmp_3529", label %"$out_of_gas_3530", label %"$have_gas_3531"

"$out_of_gas_3530":                               ; preds = %"$have_gas_3526"
  call void @_out_of_gas()
  br label %"$have_gas_3531"

"$have_gas_3531":                                 ; preds = %"$out_of_gas_3530", %"$have_gas_3526"
  %"$consume_3532" = sub i64 %"$gasrem_3528", 1
  store i64 %"$consume_3532", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_67" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_3533" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_3534" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3533", 0
  %"$ud-registry.eConfigured_envptr_3535" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3533", 1
  %"$ud-registry.eConfigured_node_3536" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_3536", align 1
  %"$ud-registry.eConfigured_call_3537" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_3534"(i8* %"$ud-registry.eConfigured_envptr_3535", [32 x i8]* %"$ud-registry.eConfigured_node_3536"), !dbg !366
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_3537", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_67", align 8, !dbg !366
  %"$ud-registry.eConfigured_68" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_67_3538" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_67", align 8
  %"$$ud-registry.eConfigured_67_fptr_3539" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_67_3538", 0
  %"$$ud-registry.eConfigured_67_envptr_3540" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_67_3538", 1
  %"$$ud-registry.eConfigured_67_owner_3541" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_67_owner_3541", align 1
  %"$$ud-registry.eConfigured_67_call_3542" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_67_fptr_3539"(i8* %"$$ud-registry.eConfigured_67_envptr_3540", [20 x i8]* %"$$ud-registry.eConfigured_67_owner_3541"), !dbg !366
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_67_call_3542", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_68", align 8, !dbg !366
  %"$ud-registry.eConfigured_69" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_68_3543" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_68", align 8
  %"$$ud-registry.eConfigured_68_fptr_3544" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_68_3543", 0
  %"$$ud-registry.eConfigured_68_envptr_3545" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_68_3543", 1
  %"$$ud-registry.eConfigured_68_resolver_3546" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_68_resolver_3546", align 1
  %"$$ud-registry.eConfigured_68_call_3547" = call i8* %"$$ud-registry.eConfigured_68_fptr_3544"(i8* %"$$ud-registry.eConfigured_68_envptr_3545", [20 x i8]* %"$$ud-registry.eConfigured_68_resolver_3546"), !dbg !366
  store i8* %"$$ud-registry.eConfigured_68_call_3547", i8** %"$ud-registry.eConfigured_69", align 8, !dbg !366
  %"$$ud-registry.eConfigured_69_3548" = load i8*, i8** %"$ud-registry.eConfigured_69", align 8
  store i8* %"$$ud-registry.eConfigured_69_3548", i8** %e, align 8, !dbg !366
  %"$e_3549" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3551" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3549")
  %"$gasrem_3552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3553" = icmp ugt i64 %"$_literal_cost_call_3551", %"$gasrem_3552"
  br i1 %"$gascmp_3553", label %"$out_of_gas_3554", label %"$have_gas_3555"

"$out_of_gas_3554":                               ; preds = %"$have_gas_3531"
  call void @_out_of_gas()
  br label %"$have_gas_3555"

"$have_gas_3555":                                 ; preds = %"$out_of_gas_3554", %"$have_gas_3531"
  %"$consume_3556" = sub i64 %"$gasrem_3552", %"$_literal_cost_call_3551"
  store i64 %"$consume_3556", i64* @_gasrem, align 8
  %"$execptr_load_3557" = load i8*, i8** @_execptr, align 8
  %"$e_3558" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3557", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3558"), !dbg !367
  %"$gasrem_3559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3560" = icmp ugt i64 1, %"$gasrem_3559"
  br i1 %"$gascmp_3560", label %"$out_of_gas_3561", label %"$have_gas_3562"

"$out_of_gas_3561":                               ; preds = %"$have_gas_3555"
  call void @_out_of_gas()
  br label %"$have_gas_3562"

"$have_gas_3562":                                 ; preds = %"$out_of_gas_3561", %"$have_gas_3555"
  %"$consume_3563" = sub i64 %"$gasrem_3559", 1
  store i64 %"$consume_3563", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_3564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3565" = icmp ugt i64 1, %"$gasrem_3564"
  br i1 %"$gascmp_3565", label %"$out_of_gas_3566", label %"$have_gas_3567"

"$out_of_gas_3566":                               ; preds = %"$have_gas_3562"
  call void @_out_of_gas()
  br label %"$have_gas_3567"

"$have_gas_3567":                                 ; preds = %"$out_of_gas_3566", %"$have_gas_3562"
  %"$consume_3568" = sub i64 %"$gasrem_3564", 1
  store i64 %"$consume_3568", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_3569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3570" = icmp ugt i64 1, %"$gasrem_3569"
  br i1 %"$gascmp_3570", label %"$out_of_gas_3571", label %"$have_gas_3572"

"$out_of_gas_3571":                               ; preds = %"$have_gas_3567"
  call void @_out_of_gas()
  br label %"$have_gas_3572"

"$have_gas_3572":                                 ; preds = %"$out_of_gas_3571", %"$have_gas_3567"
  %"$consume_3573" = sub i64 %"$gasrem_3569", 1
  store i64 %"$consume_3573", i64* @_gasrem, align 8
  %"$msgobj_3574_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_3574_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3574_salloc_load", i64 225)
  %"$msgobj_3574_salloc" = bitcast i8* %"$msgobj_3574_salloc_salloc" to [225 x i8]*
  %"$msgobj_3574" = bitcast [225 x i8]* %"$msgobj_3574_salloc" to i8*
  store i8 5, i8* %"$msgobj_3574", align 1
  %"$msgobj_fname_3576" = getelementptr i8, i8* %"$msgobj_3574", i32 1
  %"$msgobj_fname_3577" = bitcast i8* %"$msgobj_fname_3576" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3575", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3577", align 8
  %"$msgobj_td_3578" = getelementptr i8, i8* %"$msgobj_3574", i32 17
  %"$msgobj_td_3579" = bitcast i8* %"$msgobj_td_3578" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_3579", align 8
  %"$msgobj_v_3581" = getelementptr i8, i8* %"$msgobj_3574", i32 25
  %"$msgobj_v_3582" = bitcast i8* %"$msgobj_v_3581" to %String*
  store %String { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$stringlit_3580", i32 0, i32 0), i32 18 }, %String* %"$msgobj_v_3582", align 8
  %"$msgobj_fname_3584" = getelementptr i8, i8* %"$msgobj_3574", i32 41
  %"$msgobj_fname_3585" = bitcast i8* %"$msgobj_fname_3584" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3583", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3585", align 8
  %"$msgobj_td_3586" = getelementptr i8, i8* %"$msgobj_3574", i32 57
  %"$msgobj_td_3587" = bitcast i8* %"$msgobj_td_3586" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_3587", align 8
  %"$msgobj_v_3588" = getelementptr i8, i8* %"$msgobj_3574", i32 65
  %"$msgobj_v_3589" = bitcast i8* %"$msgobj_v_3588" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3589", align 1
  %"$msgobj_fname_3591" = getelementptr i8, i8* %"$msgobj_3574", i32 97
  %"$msgobj_fname_3592" = bitcast i8* %"$msgobj_fname_3591" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3590", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3592", align 8
  %"$msgobj_td_3593" = getelementptr i8, i8* %"$msgobj_3574", i32 113
  %"$msgobj_td_3594" = bitcast i8* %"$msgobj_td_3593" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_3594", align 8
  %"$msgobj_v_3595" = getelementptr i8, i8* %"$msgobj_3574", i32 121
  %"$msgobj_v_3596" = bitcast i8* %"$msgobj_v_3595" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_3596", align 1
  %"$msgobj_fname_3598" = getelementptr i8, i8* %"$msgobj_3574", i32 141
  %"$msgobj_fname_3599" = bitcast i8* %"$msgobj_fname_3598" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3597", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3599", align 8
  %"$msgobj_td_3600" = getelementptr i8, i8* %"$msgobj_3574", i32 157
  %"$msgobj_td_3601" = bitcast i8* %"$msgobj_td_3600" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_3601", align 8
  %"$msgobj_v_3602" = getelementptr i8, i8* %"$msgobj_3574", i32 165
  %"$msgobj_v_3603" = bitcast i8* %"$msgobj_v_3602" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3603", align 8
  %"$msgobj_fname_3605" = getelementptr i8, i8* %"$msgobj_3574", i32 181
  %"$msgobj_fname_3606" = bitcast i8* %"$msgobj_fname_3605" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3604", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3606", align 8
  %"$msgobj_td_3607" = getelementptr i8, i8* %"$msgobj_3574", i32 197
  %"$msgobj_td_3608" = bitcast i8* %"$msgobj_td_3607" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_3608", align 8
  %"$msgobj_v_3609" = getelementptr i8, i8* %"$msgobj_3574", i32 205
  %"$msgobj_v_3610" = bitcast i8* %"$msgobj_v_3609" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3610", align 1
  store i8* %"$msgobj_3574", i8** %m, align 8, !dbg !368
  %"$gasrem_3612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3613" = icmp ugt i64 1, %"$gasrem_3612"
  br i1 %"$gascmp_3613", label %"$out_of_gas_3614", label %"$have_gas_3615"

"$out_of_gas_3614":                               ; preds = %"$have_gas_3572"
  call void @_out_of_gas()
  br label %"$have_gas_3615"

"$have_gas_3615":                                 ; preds = %"$out_of_gas_3614", %"$have_gas_3572"
  %"$consume_3616" = sub i64 %"$gasrem_3612", 1
  store i64 %"$consume_3616", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_66" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_3617" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_3618" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3617", 0
  %"$ud-registry.oneMsg_envptr_3619" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3617", 1
  %"$m_3620" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_3621" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3618"(i8* %"$ud-registry.oneMsg_envptr_3619", i8* %"$m_3620"), !dbg !369
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3621", %TName_List_Message** %"$ud-registry.oneMsg_66", align 8, !dbg !369
  %"$$ud-registry.oneMsg_66_3622" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_66", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_66_3622", %TName_List_Message** %msgs, align 8, !dbg !369
  %"$msgs_3623" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_3623_3624" = bitcast %TName_List_Message* %"$msgs_3623" to i8*
  %"$_literal_cost_call_3625" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_3623_3624")
  %"$gasrem_3626" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3627" = icmp ugt i64 %"$_literal_cost_call_3625", %"$gasrem_3626"
  br i1 %"$gascmp_3627", label %"$out_of_gas_3628", label %"$have_gas_3629"

"$out_of_gas_3628":                               ; preds = %"$have_gas_3615"
  call void @_out_of_gas()
  br label %"$have_gas_3629"

"$have_gas_3629":                                 ; preds = %"$out_of_gas_3628", %"$have_gas_3615"
  %"$consume_3630" = sub i64 %"$gasrem_3626", %"$_literal_cost_call_3625"
  store i64 %"$consume_3630", i64* @_gasrem, align 8
  %"$execptr_load_3631" = load i8*, i8** @_execptr, align 8
  %"$msgs_3632" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_3631", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_3632"), !dbg !370
  br label %"$matchsucc_3486"

"$False_3633":                                    ; preds = %"$have_gas_3484"
  %"$isSenderOAO_3634" = bitcast %TName_Bool* %"$isSenderOAO_3487" to %CName_False*
  %"$gasrem_3635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3636" = icmp ugt i64 1, %"$gasrem_3635"
  br i1 %"$gascmp_3636", label %"$out_of_gas_3637", label %"$have_gas_3638"

"$out_of_gas_3637":                               ; preds = %"$False_3633"
  call void @_out_of_gas()
  br label %"$have_gas_3638"

"$have_gas_3638":                                 ; preds = %"$out_of_gas_3637", %"$False_3633"
  %"$consume_3639" = sub i64 %"$gasrem_3635", 1
  store i64 %"$consume_3639", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_3640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3641" = icmp ugt i64 1, %"$gasrem_3640"
  br i1 %"$gascmp_3641", label %"$out_of_gas_3642", label %"$have_gas_3643"

"$out_of_gas_3642":                               ; preds = %"$have_gas_3638"
  call void @_out_of_gas()
  br label %"$have_gas_3643"

"$have_gas_3643":                                 ; preds = %"$out_of_gas_3642", %"$have_gas_3638"
  %"$consume_3644" = sub i64 %"$gasrem_3640", 1
  store i64 %"$consume_3644", i64* @_gasrem, align 8
  %m5 = alloca %String, align 8
  %"$gasrem_3645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3646" = icmp ugt i64 1, %"$gasrem_3645"
  br i1 %"$gascmp_3646", label %"$out_of_gas_3647", label %"$have_gas_3648"

"$out_of_gas_3647":                               ; preds = %"$have_gas_3643"
  call void @_out_of_gas()
  br label %"$have_gas_3648"

"$have_gas_3648":                                 ; preds = %"$out_of_gas_3647", %"$have_gas_3643"
  %"$consume_3649" = sub i64 %"$gasrem_3645", 1
  store i64 %"$consume_3649", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_3650", i32 0, i32 0), i32 43 }, %String* %m5, align 8, !dbg !371
  %"$gasrem_3651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3652" = icmp ugt i64 1, %"$gasrem_3651"
  br i1 %"$gascmp_3652", label %"$out_of_gas_3653", label %"$have_gas_3654"

"$out_of_gas_3653":                               ; preds = %"$have_gas_3648"
  call void @_out_of_gas()
  br label %"$have_gas_3654"

"$have_gas_3654":                                 ; preds = %"$out_of_gas_3653", %"$have_gas_3648"
  %"$consume_3655" = sub i64 %"$gasrem_3651", 1
  store i64 %"$consume_3655", i64* @_gasrem, align 8
  %"$ud-registry.eError_71" = alloca i8*, align 8
  %"$ud-registry.eError_3656" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3657" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3656", 0
  %"$ud-registry.eError_envptr_3658" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3656", 1
  %"$m_3659" = load %String, %String* %m5, align 8
  %"$ud-registry.eError_call_3660" = call i8* %"$ud-registry.eError_fptr_3657"(i8* %"$ud-registry.eError_envptr_3658", %String %"$m_3659"), !dbg !373
  store i8* %"$ud-registry.eError_call_3660", i8** %"$ud-registry.eError_71", align 8, !dbg !373
  %"$$ud-registry.eError_71_3661" = load i8*, i8** %"$ud-registry.eError_71", align 8
  store i8* %"$$ud-registry.eError_71_3661", i8** %e4, align 8, !dbg !373
  %"$e_3662" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_3664" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3662")
  %"$gasrem_3665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3666" = icmp ugt i64 %"$_literal_cost_call_3664", %"$gasrem_3665"
  br i1 %"$gascmp_3666", label %"$out_of_gas_3667", label %"$have_gas_3668"

"$out_of_gas_3667":                               ; preds = %"$have_gas_3654"
  call void @_out_of_gas()
  br label %"$have_gas_3668"

"$have_gas_3668":                                 ; preds = %"$out_of_gas_3667", %"$have_gas_3654"
  %"$consume_3669" = sub i64 %"$gasrem_3665", %"$_literal_cost_call_3664"
  store i64 %"$consume_3669", i64* @_gasrem, align 8
  %"$execptr_load_3670" = load i8*, i8** @_execptr, align 8
  %"$e_3671" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_3670", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3671"), !dbg !374
  %"$gasrem_3672" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3673" = icmp ugt i64 1, %"$gasrem_3672"
  br i1 %"$gascmp_3673", label %"$out_of_gas_3674", label %"$have_gas_3675"

"$out_of_gas_3674":                               ; preds = %"$have_gas_3668"
  call void @_out_of_gas()
  br label %"$have_gas_3675"

"$have_gas_3675":                                 ; preds = %"$out_of_gas_3674", %"$have_gas_3668"
  %"$consume_3676" = sub i64 %"$gasrem_3672", 1
  store i64 %"$consume_3676", i64* @_gasrem, align 8
  %msgs6 = alloca %TName_List_Message*, align 8
  %"$gasrem_3677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3678" = icmp ugt i64 1, %"$gasrem_3677"
  br i1 %"$gascmp_3678", label %"$out_of_gas_3679", label %"$have_gas_3680"

"$out_of_gas_3679":                               ; preds = %"$have_gas_3675"
  call void @_out_of_gas()
  br label %"$have_gas_3680"

"$have_gas_3680":                                 ; preds = %"$out_of_gas_3679", %"$have_gas_3675"
  %"$consume_3681" = sub i64 %"$gasrem_3677", 1
  store i64 %"$consume_3681", i64* @_gasrem, align 8
  %m7 = alloca i8*, align 8
  %"$gasrem_3682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3683" = icmp ugt i64 1, %"$gasrem_3682"
  br i1 %"$gascmp_3683", label %"$out_of_gas_3684", label %"$have_gas_3685"

"$out_of_gas_3684":                               ; preds = %"$have_gas_3680"
  call void @_out_of_gas()
  br label %"$have_gas_3685"

"$have_gas_3685":                                 ; preds = %"$out_of_gas_3684", %"$have_gas_3680"
  %"$consume_3686" = sub i64 %"$gasrem_3682", 1
  store i64 %"$consume_3686", i64* @_gasrem, align 8
  %"$msgobj_3687_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_3687_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3687_salloc_load", i64 225)
  %"$msgobj_3687_salloc" = bitcast i8* %"$msgobj_3687_salloc_salloc" to [225 x i8]*
  %"$msgobj_3687" = bitcast [225 x i8]* %"$msgobj_3687_salloc" to i8*
  store i8 5, i8* %"$msgobj_3687", align 1
  %"$msgobj_fname_3689" = getelementptr i8, i8* %"$msgobj_3687", i32 1
  %"$msgobj_fname_3690" = bitcast i8* %"$msgobj_fname_3689" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3688", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3690", align 8
  %"$msgobj_td_3691" = getelementptr i8, i8* %"$msgobj_3687", i32 17
  %"$msgobj_td_3692" = bitcast i8* %"$msgobj_td_3691" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_3692", align 8
  %"$msgobj_v_3694" = getelementptr i8, i8* %"$msgobj_3687", i32 25
  %"$msgobj_v_3695" = bitcast i8* %"$msgobj_v_3694" to %String*
  store %String { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$stringlit_3693", i32 0, i32 0), i32 18 }, %String* %"$msgobj_v_3695", align 8
  %"$msgobj_fname_3697" = getelementptr i8, i8* %"$msgobj_3687", i32 41
  %"$msgobj_fname_3698" = bitcast i8* %"$msgobj_fname_3697" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3696", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3698", align 8
  %"$msgobj_td_3699" = getelementptr i8, i8* %"$msgobj_3687", i32 57
  %"$msgobj_td_3700" = bitcast i8* %"$msgobj_td_3699" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_3700", align 8
  %"$msgobj_v_3701" = getelementptr i8, i8* %"$msgobj_3687", i32 65
  %"$msgobj_v_3702" = bitcast i8* %"$msgobj_v_3701" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3702", align 1
  %"$msgobj_fname_3704" = getelementptr i8, i8* %"$msgobj_3687", i32 97
  %"$msgobj_fname_3705" = bitcast i8* %"$msgobj_fname_3704" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3703", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3705", align 8
  %"$msgobj_td_3706" = getelementptr i8, i8* %"$msgobj_3687", i32 113
  %"$msgobj_td_3707" = bitcast i8* %"$msgobj_td_3706" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_3707", align 8
  %"$recordOwner_3708" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$msgobj_v_3709" = getelementptr i8, i8* %"$msgobj_3687", i32 121
  %"$msgobj_v_3710" = bitcast i8* %"$msgobj_v_3709" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3708", [20 x i8]* %"$msgobj_v_3710", align 1
  %"$msgobj_fname_3712" = getelementptr i8, i8* %"$msgobj_3687", i32 141
  %"$msgobj_fname_3713" = bitcast i8* %"$msgobj_fname_3712" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3711", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3713", align 8
  %"$msgobj_td_3714" = getelementptr i8, i8* %"$msgobj_3687", i32 157
  %"$msgobj_td_3715" = bitcast i8* %"$msgobj_td_3714" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_3715", align 8
  %"$msgobj_v_3716" = getelementptr i8, i8* %"$msgobj_3687", i32 165
  %"$msgobj_v_3717" = bitcast i8* %"$msgobj_v_3716" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3717", align 8
  %"$msgobj_fname_3719" = getelementptr i8, i8* %"$msgobj_3687", i32 181
  %"$msgobj_fname_3720" = bitcast i8* %"$msgobj_fname_3719" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3718", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3720", align 8
  %"$msgobj_td_3721" = getelementptr i8, i8* %"$msgobj_3687", i32 197
  %"$msgobj_td_3722" = bitcast i8* %"$msgobj_td_3721" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_3722", align 8
  %"$msgobj_v_3723" = getelementptr i8, i8* %"$msgobj_3687", i32 205
  %"$msgobj_v_3724" = bitcast i8* %"$msgobj_v_3723" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3724", align 1
  store i8* %"$msgobj_3687", i8** %m7, align 8, !dbg !375
  %"$gasrem_3726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3727" = icmp ugt i64 1, %"$gasrem_3726"
  br i1 %"$gascmp_3727", label %"$out_of_gas_3728", label %"$have_gas_3729"

"$out_of_gas_3728":                               ; preds = %"$have_gas_3685"
  call void @_out_of_gas()
  br label %"$have_gas_3729"

"$have_gas_3729":                                 ; preds = %"$out_of_gas_3728", %"$have_gas_3685"
  %"$consume_3730" = sub i64 %"$gasrem_3726", 1
  store i64 %"$consume_3730", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_70" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_3731" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_3732" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3731", 0
  %"$ud-registry.oneMsg_envptr_3733" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3731", 1
  %"$m_3734" = load i8*, i8** %m7, align 8
  %"$ud-registry.oneMsg_call_3735" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3732"(i8* %"$ud-registry.oneMsg_envptr_3733", i8* %"$m_3734"), !dbg !376
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3735", %TName_List_Message** %"$ud-registry.oneMsg_70", align 8, !dbg !376
  %"$$ud-registry.oneMsg_70_3736" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_70", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_70_3736", %TName_List_Message** %msgs6, align 8, !dbg !376
  %"$msgs_3737" = load %TName_List_Message*, %TName_List_Message** %msgs6, align 8
  %"$$msgs_3737_3738" = bitcast %TName_List_Message* %"$msgs_3737" to i8*
  %"$_literal_cost_call_3739" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_3737_3738")
  %"$gasrem_3740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3741" = icmp ugt i64 %"$_literal_cost_call_3739", %"$gasrem_3740"
  br i1 %"$gascmp_3741", label %"$out_of_gas_3742", label %"$have_gas_3743"

"$out_of_gas_3742":                               ; preds = %"$have_gas_3729"
  call void @_out_of_gas()
  br label %"$have_gas_3743"

"$have_gas_3743":                                 ; preds = %"$out_of_gas_3742", %"$have_gas_3729"
  %"$consume_3744" = sub i64 %"$gasrem_3740", %"$_literal_cost_call_3739"
  store i64 %"$consume_3744", i64* @_gasrem, align 8
  %"$execptr_load_3745" = load i8*, i8** @_execptr, align 8
  %"$msgs_3746" = load %TName_List_Message*, %TName_List_Message** %msgs6, align 8
  call void @_send(i8* %"$execptr_load_3745", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_3746"), !dbg !377
  br label %"$matchsucc_3486"

"$empty_default_3490":                            ; preds = %"$have_gas_3484"
  br label %"$matchsucc_3486"

"$matchsucc_3486":                                ; preds = %"$have_gas_3743", %"$have_gas_3629", %"$empty_default_3490"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @configureNode(i8* %0) !dbg !378 {
entry:
  %"$_amount_3748" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3749" = bitcast i8* %"$_amount_3748" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3749", align 8
  %"$_origin_3750" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3751" = bitcast i8* %"$_origin_3750" to [20 x i8]*
  %"$_sender_3752" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3753" = bitcast i8* %"$_sender_3752" to [20 x i8]*
  %"$node_3754" = getelementptr i8, i8* %0, i32 56
  %"$node_3755" = bitcast i8* %"$node_3754" to [32 x i8]*
  %"$owner_3756" = getelementptr i8, i8* %0, i32 88
  %"$owner_3757" = bitcast i8* %"$owner_3756" to [20 x i8]*
  %"$resolver_3758" = getelementptr i8, i8* %0, i32 108
  %"$resolver_3759" = bitcast i8* %"$resolver_3758" to [20 x i8]*
  call void @"$configureNode_3377"(%Uint128 %_amount, [20 x i8]* %"$_origin_3751", [20 x i8]* %"$_sender_3753", [32 x i8]* %"$node_3755", [20 x i8]* %"$owner_3757", [20 x i8]* %"$resolver_3759"), !dbg !379
  ret void
}

define internal void @"$configureResolver_3760"(%Uint128 %_amount, [20 x i8]* %"$_origin_3761", [20 x i8]* %"$_sender_3762", [32 x i8]* %"$node_3763", [20 x i8]* %"$resolver_3764") !dbg !380 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3761", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3762", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_3763", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_3764", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3765_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3765_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3765_salloc_load", i64 32)
  %"$indices_buf_3765_salloc" = bitcast i8* %"$indices_buf_3765_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3765" = bitcast [32 x i8]* %"$indices_buf_3765_salloc" to i8*
  %"$indices_gep_3766" = getelementptr i8, i8* %"$indices_buf_3765", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3766" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3768" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_3769" = call i8* @_fetch_field(i8* %"$execptr_load_3768", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3767", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3765", i32 1), !dbg !381
  %"$maybeRecord_3770" = bitcast i8* %"$maybeRecord_call_3769" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3770", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3771" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3771_3772" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3771" to i8*
  %"$_literal_cost_call_3773" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_3771_3772")
  %"$gasadd_3774" = add i64 %"$_literal_cost_call_3773", 0
  %"$gasadd_3775" = add i64 %"$gasadd_3774", 1
  %"$gasrem_3776" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3777" = icmp ugt i64 %"$gasadd_3775", %"$gasrem_3776"
  br i1 %"$gascmp_3777", label %"$out_of_gas_3778", label %"$have_gas_3779"

"$out_of_gas_3778":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3779"

"$have_gas_3779":                                 ; preds = %"$out_of_gas_3778", %entry
  %"$consume_3780" = sub i64 %"$gasrem_3776", %"$gasadd_3775"
  store i64 %"$consume_3780", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3781_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3781_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3781_salloc_load", i64 32)
  %"$indices_buf_3781_salloc" = bitcast i8* %"$indices_buf_3781_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3781" = bitcast [32 x i8]* %"$indices_buf_3781_salloc" to i8*
  %"$indices_gep_3782" = getelementptr i8, i8* %"$indices_buf_3781", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3782" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_3784" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_3785" = call i8* @_fetch_field(i8* %"$execptr_load_3784", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3783", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_3781", i32 1), !dbg !382
  %"$maybeApproved_3786" = bitcast i8* %"$maybeApproved_call_3785" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3786", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3787" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3787_3788" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3787" to i8*
  %"$_literal_cost_call_3789" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_3787_3788")
  %"$gasadd_3790" = add i64 %"$_literal_cost_call_3789", 0
  %"$gasadd_3791" = add i64 %"$gasadd_3790", 1
  %"$gasrem_3792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3793" = icmp ugt i64 %"$gasadd_3791", %"$gasrem_3792"
  br i1 %"$gascmp_3793", label %"$out_of_gas_3794", label %"$have_gas_3795"

"$out_of_gas_3794":                               ; preds = %"$have_gas_3779"
  call void @_out_of_gas()
  br label %"$have_gas_3795"

"$have_gas_3795":                                 ; preds = %"$out_of_gas_3794", %"$have_gas_3779"
  %"$consume_3796" = sub i64 %"$gasrem_3792", %"$gasadd_3791"
  store i64 %"$consume_3796", i64* @_gasrem, align 8
  %"$gasrem_3797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3798" = icmp ugt i64 1, %"$gasrem_3797"
  br i1 %"$gascmp_3798", label %"$out_of_gas_3799", label %"$have_gas_3800"

"$out_of_gas_3799":                               ; preds = %"$have_gas_3795"
  call void @_out_of_gas()
  br label %"$have_gas_3800"

"$have_gas_3800":                                 ; preds = %"$out_of_gas_3799", %"$have_gas_3795"
  %"$consume_3801" = sub i64 %"$gasrem_3797", 1
  store i64 %"$consume_3801", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3803" = icmp ugt i64 1, %"$gasrem_3802"
  br i1 %"$gascmp_3803", label %"$out_of_gas_3804", label %"$have_gas_3805"

"$out_of_gas_3804":                               ; preds = %"$have_gas_3800"
  call void @_out_of_gas()
  br label %"$have_gas_3805"

"$have_gas_3805":                                 ; preds = %"$out_of_gas_3804", %"$have_gas_3800"
  %"$consume_3806" = sub i64 %"$gasrem_3802", 1
  store i64 %"$consume_3806", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_85" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3807" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3808" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3807", 0
  %"$ud-registry.recordMemberOwner_envptr_3809" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3807", 1
  %"$maybeRecord_3810" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3811" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3808"(i8* %"$ud-registry.recordMemberOwner_envptr_3809", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3811", %TName_Option_ud-registry.Record* %"$maybeRecord_3810"), !dbg !383
  %"$ud-registry.recordMemberOwner_ret_3812" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3811", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3812", [20 x i8]* %"$ud-registry.recordMemberOwner_85", align 1, !dbg !383
  %"$$ud-registry.recordMemberOwner_85_3813" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_85", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_85_3813", [20 x i8]* %recordOwner, align 1, !dbg !383
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3814_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3814_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3814_salloc_load", i64 20)
  %"$indices_buf_3814_salloc" = bitcast i8* %"$indices_buf_3814_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3814" = bitcast [20 x i8]* %"$indices_buf_3814_salloc" to i8*
  %"$recordOwner_3815" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_3816" = getelementptr i8, i8* %"$indices_buf_3814", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3816" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3815", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_3818" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3819" = call i8* @_fetch_field(i8* %"$execptr_load_3818", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3817", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_3814", i32 1), !dbg !384
  %"$maybeOperators_3820" = bitcast i8* %"$maybeOperators_call_3819" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3820", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3821" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3821_3822" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3821" to i8*
  %"$_literal_cost_call_3823" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_3821_3822")
  %"$gasadd_3824" = add i64 %"$_literal_cost_call_3823", 0
  %"$gasadd_3825" = add i64 %"$gasadd_3824", 1
  %"$gasrem_3826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3827" = icmp ugt i64 %"$gasadd_3825", %"$gasrem_3826"
  br i1 %"$gascmp_3827", label %"$out_of_gas_3828", label %"$have_gas_3829"

"$out_of_gas_3828":                               ; preds = %"$have_gas_3805"
  call void @_out_of_gas()
  br label %"$have_gas_3829"

"$have_gas_3829":                                 ; preds = %"$out_of_gas_3828", %"$have_gas_3805"
  %"$consume_3830" = sub i64 %"$gasrem_3826", %"$gasadd_3825"
  store i64 %"$consume_3830", i64* @_gasrem, align 8
  %"$gasrem_3831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3832" = icmp ugt i64 1, %"$gasrem_3831"
  br i1 %"$gascmp_3832", label %"$out_of_gas_3833", label %"$have_gas_3834"

"$out_of_gas_3833":                               ; preds = %"$have_gas_3829"
  call void @_out_of_gas()
  br label %"$have_gas_3834"

"$have_gas_3834":                                 ; preds = %"$out_of_gas_3833", %"$have_gas_3829"
  %"$consume_3835" = sub i64 %"$gasrem_3831", 1
  store i64 %"$consume_3835", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_3836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3837" = icmp ugt i64 1, %"$gasrem_3836"
  br i1 %"$gascmp_3837", label %"$out_of_gas_3838", label %"$have_gas_3839"

"$out_of_gas_3838":                               ; preds = %"$have_gas_3834"
  call void @_out_of_gas()
  br label %"$have_gas_3839"

"$have_gas_3839":                                 ; preds = %"$out_of_gas_3838", %"$have_gas_3834"
  %"$consume_3840" = sub i64 %"$gasrem_3836", 1
  store i64 %"$consume_3840", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_81" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_3841" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_3842" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3841", 0
  %"$ud-registry.getIsOAO_envptr_3843" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3841", 1
  %"$ud-registry.getIsOAO__sender_3844" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3844", align 1
  %"$ud-registry.getIsOAO_call_3845" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_3842"(i8* %"$ud-registry.getIsOAO_envptr_3843", [20 x i8]* %"$ud-registry.getIsOAO__sender_3844"), !dbg !385
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_3845", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_81", align 8, !dbg !385
  %"$ud-registry.getIsOAO_82" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_81_3846" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_81", align 8
  %"$$ud-registry.getIsOAO_81_fptr_3847" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_81_3846", 0
  %"$$ud-registry.getIsOAO_81_envptr_3848" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_81_3846", 1
  %"$$ud-registry.getIsOAO_81_recordOwner_3849" = alloca [20 x i8], align 1
  %"$recordOwner_3850" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3850", [20 x i8]* %"$$ud-registry.getIsOAO_81_recordOwner_3849", align 1
  %"$$ud-registry.getIsOAO_81_call_3851" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_81_fptr_3847"(i8* %"$$ud-registry.getIsOAO_81_envptr_3848", [20 x i8]* %"$$ud-registry.getIsOAO_81_recordOwner_3849"), !dbg !385
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_81_call_3851", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_82", align 8, !dbg !385
  %"$ud-registry.getIsOAO_83" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_82_3852" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_82", align 8
  %"$$ud-registry.getIsOAO_82_fptr_3853" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_82_3852", 0
  %"$$ud-registry.getIsOAO_82_envptr_3854" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_82_3852", 1
  %"$maybeApproved_3855" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_82_call_3856" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_82_fptr_3853"(i8* %"$$ud-registry.getIsOAO_82_envptr_3854", %TName_Option_ByStr20* %"$maybeApproved_3855"), !dbg !385
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_82_call_3856", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_83", align 8, !dbg !385
  %"$ud-registry.getIsOAO_84" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_83_3857" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_83", align 8
  %"$$ud-registry.getIsOAO_83_fptr_3858" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_83_3857", 0
  %"$$ud-registry.getIsOAO_83_envptr_3859" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_83_3857", 1
  %"$maybeOperators_3860" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_83_call_3861" = call %TName_Bool* %"$$ud-registry.getIsOAO_83_fptr_3858"(i8* %"$$ud-registry.getIsOAO_83_envptr_3859", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3860"), !dbg !385
  store %TName_Bool* %"$$ud-registry.getIsOAO_83_call_3861", %TName_Bool** %"$ud-registry.getIsOAO_84", align 8, !dbg !385
  %"$$ud-registry.getIsOAO_84_3862" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_84", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_84_3862", %TName_Bool** %isSenderOAO, align 8, !dbg !385
  %"$gasrem_3863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3864" = icmp ugt i64 2, %"$gasrem_3863"
  br i1 %"$gascmp_3864", label %"$out_of_gas_3865", label %"$have_gas_3866"

"$out_of_gas_3865":                               ; preds = %"$have_gas_3839"
  call void @_out_of_gas()
  br label %"$have_gas_3866"

"$have_gas_3866":                                 ; preds = %"$out_of_gas_3865", %"$have_gas_3839"
  %"$consume_3867" = sub i64 %"$gasrem_3863", 2
  store i64 %"$consume_3867", i64* @_gasrem, align 8
  %"$isSenderOAO_3869" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_3870" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3869", i32 0, i32 0
  %"$isSenderOAO_tag_3871" = load i8, i8* %"$isSenderOAO_tag_3870", align 1
  switch i8 %"$isSenderOAO_tag_3871", label %"$empty_default_3872" [
    i8 0, label %"$True_3873"
    i8 1, label %"$False_3943"
  ], !dbg !386

"$True_3873":                                     ; preds = %"$have_gas_3866"
  %"$isSenderOAO_3874" = bitcast %TName_Bool* %"$isSenderOAO_3869" to %CName_True*
  %"$gasrem_3875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3876" = icmp ugt i64 1, %"$gasrem_3875"
  br i1 %"$gascmp_3876", label %"$out_of_gas_3877", label %"$have_gas_3878"

"$out_of_gas_3877":                               ; preds = %"$True_3873"
  call void @_out_of_gas()
  br label %"$have_gas_3878"

"$have_gas_3878":                                 ; preds = %"$out_of_gas_3877", %"$True_3873"
  %"$consume_3879" = sub i64 %"$gasrem_3875", 1
  store i64 %"$consume_3879", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_3880" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3881" = icmp ugt i64 1, %"$gasrem_3880"
  br i1 %"$gascmp_3881", label %"$out_of_gas_3882", label %"$have_gas_3883"

"$out_of_gas_3882":                               ; preds = %"$have_gas_3878"
  call void @_out_of_gas()
  br label %"$have_gas_3883"

"$have_gas_3883":                                 ; preds = %"$out_of_gas_3882", %"$have_gas_3878"
  %"$consume_3884" = sub i64 %"$gasrem_3880", 1
  store i64 %"$consume_3884", i64* @_gasrem, align 8
  %"$recordOwner_3885" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$adtval_3886_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3886_salloc" = call i8* @_salloc(i8* %"$adtval_3886_load", i64 41)
  %"$adtval_3886" = bitcast i8* %"$adtval_3886_salloc" to %CName_ud-registry.Record*
  %"$adtgep_3887" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3886", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3887", align 1
  %"$adtgep_3888" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3886", i32 0, i32 1
  store [20 x i8] %"$recordOwner_3885", [20 x i8]* %"$adtgep_3888", align 1
  %"$adtgep_3889" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3886", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_3889", align 1
  %"$adtptr_3890" = bitcast %CName_ud-registry.Record* %"$adtval_3886" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_3890", %TName_ud-registry.Record** %newRecord, align 8, !dbg !387
  %"$newRecord_3891" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_3891_3892" = bitcast %TName_ud-registry.Record* %"$newRecord_3891" to i8*
  %"$_literal_cost_call_3893" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_3891_3892")
  %"$gasadd_3894" = add i64 %"$_literal_cost_call_3893", 1
  %"$gasrem_3895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3896" = icmp ugt i64 %"$gasadd_3894", %"$gasrem_3895"
  br i1 %"$gascmp_3896", label %"$out_of_gas_3897", label %"$have_gas_3898"

"$out_of_gas_3897":                               ; preds = %"$have_gas_3883"
  call void @_out_of_gas()
  br label %"$have_gas_3898"

"$have_gas_3898":                                 ; preds = %"$out_of_gas_3897", %"$have_gas_3883"
  %"$consume_3899" = sub i64 %"$gasrem_3895", %"$gasadd_3894"
  store i64 %"$consume_3899", i64* @_gasrem, align 8
  %"$indices_buf_3900_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3900_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3900_salloc_load", i64 32)
  %"$indices_buf_3900_salloc" = bitcast i8* %"$indices_buf_3900_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3900" = bitcast [32 x i8]* %"$indices_buf_3900_salloc" to i8*
  %"$indices_gep_3901" = getelementptr i8, i8* %"$indices_buf_3900", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_3901" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_3902" = load i8*, i8** @_execptr, align 8
  %"$newRecord_3904" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_3905" = bitcast %TName_ud-registry.Record* %"$newRecord_3904" to i8*
  call void @_update_field(i8* %"$execptr_load_3902", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3903", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3900", i8* %"$update_value_3905"), !dbg !390
  %"$gasrem_3906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3907" = icmp ugt i64 1, %"$gasrem_3906"
  br i1 %"$gascmp_3907", label %"$out_of_gas_3908", label %"$have_gas_3909"

"$out_of_gas_3908":                               ; preds = %"$have_gas_3898"
  call void @_out_of_gas()
  br label %"$have_gas_3909"

"$have_gas_3909":                                 ; preds = %"$out_of_gas_3908", %"$have_gas_3898"
  %"$consume_3910" = sub i64 %"$gasrem_3906", 1
  store i64 %"$consume_3910", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3912" = icmp ugt i64 1, %"$gasrem_3911"
  br i1 %"$gascmp_3912", label %"$out_of_gas_3913", label %"$have_gas_3914"

"$out_of_gas_3913":                               ; preds = %"$have_gas_3909"
  call void @_out_of_gas()
  br label %"$have_gas_3914"

"$have_gas_3914":                                 ; preds = %"$out_of_gas_3913", %"$have_gas_3909"
  %"$consume_3915" = sub i64 %"$gasrem_3911", 1
  store i64 %"$consume_3915", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_77" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_3916" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_3917" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3916", 0
  %"$ud-registry.eConfigured_envptr_3918" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3916", 1
  %"$ud-registry.eConfigured_node_3919" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_3919", align 1
  %"$ud-registry.eConfigured_call_3920" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_3917"(i8* %"$ud-registry.eConfigured_envptr_3918", [32 x i8]* %"$ud-registry.eConfigured_node_3919"), !dbg !391
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_3920", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_77", align 8, !dbg !391
  %"$ud-registry.eConfigured_78" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_77_3921" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_77", align 8
  %"$$ud-registry.eConfigured_77_fptr_3922" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_77_3921", 0
  %"$$ud-registry.eConfigured_77_envptr_3923" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_77_3921", 1
  %"$$ud-registry.eConfigured_77_recordOwner_3924" = alloca [20 x i8], align 1
  %"$recordOwner_3925" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3925", [20 x i8]* %"$$ud-registry.eConfigured_77_recordOwner_3924", align 1
  %"$$ud-registry.eConfigured_77_call_3926" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_77_fptr_3922"(i8* %"$$ud-registry.eConfigured_77_envptr_3923", [20 x i8]* %"$$ud-registry.eConfigured_77_recordOwner_3924"), !dbg !391
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_77_call_3926", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_78", align 8, !dbg !391
  %"$ud-registry.eConfigured_79" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_78_3927" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_78", align 8
  %"$$ud-registry.eConfigured_78_fptr_3928" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_78_3927", 0
  %"$$ud-registry.eConfigured_78_envptr_3929" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_78_3927", 1
  %"$$ud-registry.eConfigured_78_resolver_3930" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_78_resolver_3930", align 1
  %"$$ud-registry.eConfigured_78_call_3931" = call i8* %"$$ud-registry.eConfigured_78_fptr_3928"(i8* %"$$ud-registry.eConfigured_78_envptr_3929", [20 x i8]* %"$$ud-registry.eConfigured_78_resolver_3930"), !dbg !391
  store i8* %"$$ud-registry.eConfigured_78_call_3931", i8** %"$ud-registry.eConfigured_79", align 8, !dbg !391
  %"$$ud-registry.eConfigured_79_3932" = load i8*, i8** %"$ud-registry.eConfigured_79", align 8
  store i8* %"$$ud-registry.eConfigured_79_3932", i8** %e, align 8, !dbg !391
  %"$e_3933" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3935" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3933")
  %"$gasrem_3936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3937" = icmp ugt i64 %"$_literal_cost_call_3935", %"$gasrem_3936"
  br i1 %"$gascmp_3937", label %"$out_of_gas_3938", label %"$have_gas_3939"

"$out_of_gas_3938":                               ; preds = %"$have_gas_3914"
  call void @_out_of_gas()
  br label %"$have_gas_3939"

"$have_gas_3939":                                 ; preds = %"$out_of_gas_3938", %"$have_gas_3914"
  %"$consume_3940" = sub i64 %"$gasrem_3936", %"$_literal_cost_call_3935"
  store i64 %"$consume_3940", i64* @_gasrem, align 8
  %"$execptr_load_3941" = load i8*, i8** @_execptr, align 8
  %"$e_3942" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3941", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3942"), !dbg !392
  br label %"$matchsucc_3868"

"$False_3943":                                    ; preds = %"$have_gas_3866"
  %"$isSenderOAO_3944" = bitcast %TName_Bool* %"$isSenderOAO_3869" to %CName_False*
  %"$gasrem_3945" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3946" = icmp ugt i64 1, %"$gasrem_3945"
  br i1 %"$gascmp_3946", label %"$out_of_gas_3947", label %"$have_gas_3948"

"$out_of_gas_3947":                               ; preds = %"$False_3943"
  call void @_out_of_gas()
  br label %"$have_gas_3948"

"$have_gas_3948":                                 ; preds = %"$out_of_gas_3947", %"$False_3943"
  %"$consume_3949" = sub i64 %"$gasrem_3945", 1
  store i64 %"$consume_3949", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_3950" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3951" = icmp ugt i64 1, %"$gasrem_3950"
  br i1 %"$gascmp_3951", label %"$out_of_gas_3952", label %"$have_gas_3953"

"$out_of_gas_3952":                               ; preds = %"$have_gas_3948"
  call void @_out_of_gas()
  br label %"$have_gas_3953"

"$have_gas_3953":                                 ; preds = %"$out_of_gas_3952", %"$have_gas_3948"
  %"$consume_3954" = sub i64 %"$gasrem_3950", 1
  store i64 %"$consume_3954", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_3955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3956" = icmp ugt i64 1, %"$gasrem_3955"
  br i1 %"$gascmp_3956", label %"$out_of_gas_3957", label %"$have_gas_3958"

"$out_of_gas_3957":                               ; preds = %"$have_gas_3953"
  call void @_out_of_gas()
  br label %"$have_gas_3958"

"$have_gas_3958":                                 ; preds = %"$out_of_gas_3957", %"$have_gas_3953"
  %"$consume_3959" = sub i64 %"$gasrem_3955", 1
  store i64 %"$consume_3959", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_3960", i32 0, i32 0), i32 43 }, %String* %m, align 8, !dbg !393
  %"$gasrem_3961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3962" = icmp ugt i64 1, %"$gasrem_3961"
  br i1 %"$gascmp_3962", label %"$out_of_gas_3963", label %"$have_gas_3964"

"$out_of_gas_3963":                               ; preds = %"$have_gas_3958"
  call void @_out_of_gas()
  br label %"$have_gas_3964"

"$have_gas_3964":                                 ; preds = %"$out_of_gas_3963", %"$have_gas_3958"
  %"$consume_3965" = sub i64 %"$gasrem_3961", 1
  store i64 %"$consume_3965", i64* @_gasrem, align 8
  %"$ud-registry.eError_80" = alloca i8*, align 8
  %"$ud-registry.eError_3966" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3967" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3966", 0
  %"$ud-registry.eError_envptr_3968" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3966", 1
  %"$m_3969" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_3970" = call i8* %"$ud-registry.eError_fptr_3967"(i8* %"$ud-registry.eError_envptr_3968", %String %"$m_3969"), !dbg !395
  store i8* %"$ud-registry.eError_call_3970", i8** %"$ud-registry.eError_80", align 8, !dbg !395
  %"$$ud-registry.eError_80_3971" = load i8*, i8** %"$ud-registry.eError_80", align 8
  store i8* %"$$ud-registry.eError_80_3971", i8** %e4, align 8, !dbg !395
  %"$e_3972" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_3974" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3972")
  %"$gasrem_3975" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3976" = icmp ugt i64 %"$_literal_cost_call_3974", %"$gasrem_3975"
  br i1 %"$gascmp_3976", label %"$out_of_gas_3977", label %"$have_gas_3978"

"$out_of_gas_3977":                               ; preds = %"$have_gas_3964"
  call void @_out_of_gas()
  br label %"$have_gas_3978"

"$have_gas_3978":                                 ; preds = %"$out_of_gas_3977", %"$have_gas_3964"
  %"$consume_3979" = sub i64 %"$gasrem_3975", %"$_literal_cost_call_3974"
  store i64 %"$consume_3979", i64* @_gasrem, align 8
  %"$execptr_load_3980" = load i8*, i8** @_execptr, align 8
  %"$e_3981" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_3980", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3981"), !dbg !396
  br label %"$matchsucc_3868"

"$empty_default_3872":                            ; preds = %"$have_gas_3866"
  br label %"$matchsucc_3868"

"$matchsucc_3868":                                ; preds = %"$have_gas_3978", %"$have_gas_3939", %"$empty_default_3872"
  ret void
}

define void @configureResolver(i8* %0) !dbg !397 {
entry:
  %"$_amount_3983" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3984" = bitcast i8* %"$_amount_3983" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3984", align 8
  %"$_origin_3985" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3986" = bitcast i8* %"$_origin_3985" to [20 x i8]*
  %"$_sender_3987" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3988" = bitcast i8* %"$_sender_3987" to [20 x i8]*
  %"$node_3989" = getelementptr i8, i8* %0, i32 56
  %"$node_3990" = bitcast i8* %"$node_3989" to [32 x i8]*
  %"$resolver_3991" = getelementptr i8, i8* %0, i32 88
  %"$resolver_3992" = bitcast i8* %"$resolver_3991" to [20 x i8]*
  call void @"$configureResolver_3760"(%Uint128 %_amount, [20 x i8]* %"$_origin_3986", [20 x i8]* %"$_sender_3988", [32 x i8]* %"$node_3990", [20 x i8]* %"$resolver_3992"), !dbg !398
  ret void
}

define internal void @"$transfer_3993"(%Uint128 %_amount, [20 x i8]* %"$_origin_3994", [20 x i8]* %"$_sender_3995", [32 x i8]* %"$node_3996", [20 x i8]* %"$owner_3997") !dbg !399 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3994", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3995", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_3996", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_3997", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3998_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3998_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3998_salloc_load", i64 32)
  %"$indices_buf_3998_salloc" = bitcast i8* %"$indices_buf_3998_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3998" = bitcast [32 x i8]* %"$indices_buf_3998_salloc" to i8*
  %"$indices_gep_3999" = getelementptr i8, i8* %"$indices_buf_3998", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3999" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4001" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_4002" = call i8* @_fetch_field(i8* %"$execptr_load_4001", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4000", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3998", i32 1), !dbg !400
  %"$maybeRecord_4003" = bitcast i8* %"$maybeRecord_call_4002" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4003", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_4004" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_4004_4005" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4004" to i8*
  %"$_literal_cost_call_4006" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_4004_4005")
  %"$gasadd_4007" = add i64 %"$_literal_cost_call_4006", 0
  %"$gasadd_4008" = add i64 %"$gasadd_4007", 1
  %"$gasrem_4009" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4010" = icmp ugt i64 %"$gasadd_4008", %"$gasrem_4009"
  br i1 %"$gascmp_4010", label %"$out_of_gas_4011", label %"$have_gas_4012"

"$out_of_gas_4011":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4012"

"$have_gas_4012":                                 ; preds = %"$out_of_gas_4011", %entry
  %"$consume_4013" = sub i64 %"$gasrem_4009", %"$gasadd_4008"
  store i64 %"$consume_4013", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_4014_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4014_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4014_salloc_load", i64 32)
  %"$indices_buf_4014_salloc" = bitcast i8* %"$indices_buf_4014_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4014" = bitcast [32 x i8]* %"$indices_buf_4014_salloc" to i8*
  %"$indices_gep_4015" = getelementptr i8, i8* %"$indices_buf_4014", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4015" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4017" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_4018" = call i8* @_fetch_field(i8* %"$execptr_load_4017", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4016", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_4014", i32 1), !dbg !401
  %"$maybeApproved_4019" = bitcast i8* %"$maybeApproved_call_4018" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_4019", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_4020" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_4020_4021" = bitcast %TName_Option_ByStr20* %"$maybeApproved_4020" to i8*
  %"$_literal_cost_call_4022" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_4020_4021")
  %"$gasadd_4023" = add i64 %"$_literal_cost_call_4022", 0
  %"$gasadd_4024" = add i64 %"$gasadd_4023", 1
  %"$gasrem_4025" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4026" = icmp ugt i64 %"$gasadd_4024", %"$gasrem_4025"
  br i1 %"$gascmp_4026", label %"$out_of_gas_4027", label %"$have_gas_4028"

"$out_of_gas_4027":                               ; preds = %"$have_gas_4012"
  call void @_out_of_gas()
  br label %"$have_gas_4028"

"$have_gas_4028":                                 ; preds = %"$out_of_gas_4027", %"$have_gas_4012"
  %"$consume_4029" = sub i64 %"$gasrem_4025", %"$gasadd_4024"
  store i64 %"$consume_4029", i64* @_gasrem, align 8
  %"$gasrem_4030" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4031" = icmp ugt i64 1, %"$gasrem_4030"
  br i1 %"$gascmp_4031", label %"$out_of_gas_4032", label %"$have_gas_4033"

"$out_of_gas_4032":                               ; preds = %"$have_gas_4028"
  call void @_out_of_gas()
  br label %"$have_gas_4033"

"$have_gas_4033":                                 ; preds = %"$out_of_gas_4032", %"$have_gas_4028"
  %"$consume_4034" = sub i64 %"$gasrem_4030", 1
  store i64 %"$consume_4034", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_4035" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4036" = icmp ugt i64 1, %"$gasrem_4035"
  br i1 %"$gascmp_4036", label %"$out_of_gas_4037", label %"$have_gas_4038"

"$out_of_gas_4037":                               ; preds = %"$have_gas_4033"
  call void @_out_of_gas()
  br label %"$have_gas_4038"

"$have_gas_4038":                                 ; preds = %"$out_of_gas_4037", %"$have_gas_4033"
  %"$consume_4039" = sub i64 %"$gasrem_4035", 1
  store i64 %"$consume_4039", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_96" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_4040" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_4041" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4040", 0
  %"$ud-registry.recordMemberOwner_envptr_4042" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4040", 1
  %"$maybeRecord_4043" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_4044" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_4041"(i8* %"$ud-registry.recordMemberOwner_envptr_4042", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4044", %TName_Option_ud-registry.Record* %"$maybeRecord_4043"), !dbg !402
  %"$ud-registry.recordMemberOwner_ret_4045" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4044", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_4045", [20 x i8]* %"$ud-registry.recordMemberOwner_96", align 1, !dbg !402
  %"$$ud-registry.recordMemberOwner_96_4046" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_96", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_96_4046", [20 x i8]* %recordOwner, align 1, !dbg !402
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_4047_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4047_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4047_salloc_load", i64 20)
  %"$indices_buf_4047_salloc" = bitcast i8* %"$indices_buf_4047_salloc_salloc" to [20 x i8]*
  %"$indices_buf_4047" = bitcast [20 x i8]* %"$indices_buf_4047_salloc" to i8*
  %"$recordOwner_4048" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_4049" = getelementptr i8, i8* %"$indices_buf_4047", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4049" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4048", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_4051" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_4052" = call i8* @_fetch_field(i8* %"$execptr_load_4051", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_4050", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_4047", i32 1), !dbg !403
  %"$maybeOperators_4053" = bitcast i8* %"$maybeOperators_call_4052" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4053", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_4054" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_4054_4055" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4054" to i8*
  %"$_literal_cost_call_4056" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_4054_4055")
  %"$gasadd_4057" = add i64 %"$_literal_cost_call_4056", 0
  %"$gasadd_4058" = add i64 %"$gasadd_4057", 1
  %"$gasrem_4059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4060" = icmp ugt i64 %"$gasadd_4058", %"$gasrem_4059"
  br i1 %"$gascmp_4060", label %"$out_of_gas_4061", label %"$have_gas_4062"

"$out_of_gas_4061":                               ; preds = %"$have_gas_4038"
  call void @_out_of_gas()
  br label %"$have_gas_4062"

"$have_gas_4062":                                 ; preds = %"$out_of_gas_4061", %"$have_gas_4038"
  %"$consume_4063" = sub i64 %"$gasrem_4059", %"$gasadd_4058"
  store i64 %"$consume_4063", i64* @_gasrem, align 8
  %"$gasrem_4064" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4065" = icmp ugt i64 1, %"$gasrem_4064"
  br i1 %"$gascmp_4065", label %"$out_of_gas_4066", label %"$have_gas_4067"

"$out_of_gas_4066":                               ; preds = %"$have_gas_4062"
  call void @_out_of_gas()
  br label %"$have_gas_4067"

"$have_gas_4067":                                 ; preds = %"$out_of_gas_4066", %"$have_gas_4062"
  %"$consume_4068" = sub i64 %"$gasrem_4064", 1
  store i64 %"$consume_4068", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_4069" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4070" = icmp ugt i64 1, %"$gasrem_4069"
  br i1 %"$gascmp_4070", label %"$out_of_gas_4071", label %"$have_gas_4072"

"$out_of_gas_4071":                               ; preds = %"$have_gas_4067"
  call void @_out_of_gas()
  br label %"$have_gas_4072"

"$have_gas_4072":                                 ; preds = %"$out_of_gas_4071", %"$have_gas_4067"
  %"$consume_4073" = sub i64 %"$gasrem_4069", 1
  store i64 %"$consume_4073", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_92" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_4074" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_4075" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4074", 0
  %"$ud-registry.getIsOAO_envptr_4076" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4074", 1
  %"$ud-registry.getIsOAO__sender_4077" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_4077", align 1
  %"$ud-registry.getIsOAO_call_4078" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_4075"(i8* %"$ud-registry.getIsOAO_envptr_4076", [20 x i8]* %"$ud-registry.getIsOAO__sender_4077"), !dbg !404
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_4078", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_92", align 8, !dbg !404
  %"$ud-registry.getIsOAO_93" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_92_4079" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_92", align 8
  %"$$ud-registry.getIsOAO_92_fptr_4080" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_92_4079", 0
  %"$$ud-registry.getIsOAO_92_envptr_4081" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_92_4079", 1
  %"$$ud-registry.getIsOAO_92_recordOwner_4082" = alloca [20 x i8], align 1
  %"$recordOwner_4083" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_4083", [20 x i8]* %"$$ud-registry.getIsOAO_92_recordOwner_4082", align 1
  %"$$ud-registry.getIsOAO_92_call_4084" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_92_fptr_4080"(i8* %"$$ud-registry.getIsOAO_92_envptr_4081", [20 x i8]* %"$$ud-registry.getIsOAO_92_recordOwner_4082"), !dbg !404
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_92_call_4084", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_93", align 8, !dbg !404
  %"$ud-registry.getIsOAO_94" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_93_4085" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_93", align 8
  %"$$ud-registry.getIsOAO_93_fptr_4086" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_93_4085", 0
  %"$$ud-registry.getIsOAO_93_envptr_4087" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_93_4085", 1
  %"$maybeApproved_4088" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_93_call_4089" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_93_fptr_4086"(i8* %"$$ud-registry.getIsOAO_93_envptr_4087", %TName_Option_ByStr20* %"$maybeApproved_4088"), !dbg !404
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_93_call_4089", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_94", align 8, !dbg !404
  %"$ud-registry.getIsOAO_95" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_94_4090" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_94", align 8
  %"$$ud-registry.getIsOAO_94_fptr_4091" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_94_4090", 0
  %"$$ud-registry.getIsOAO_94_envptr_4092" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_94_4090", 1
  %"$maybeOperators_4093" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_94_call_4094" = call %TName_Bool* %"$$ud-registry.getIsOAO_94_fptr_4091"(i8* %"$$ud-registry.getIsOAO_94_envptr_4092", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4093"), !dbg !404
  store %TName_Bool* %"$$ud-registry.getIsOAO_94_call_4094", %TName_Bool** %"$ud-registry.getIsOAO_95", align 8, !dbg !404
  %"$$ud-registry.getIsOAO_95_4095" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_95", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_95_4095", %TName_Bool** %isSenderOAO, align 8, !dbg !404
  %"$gasrem_4096" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4097" = icmp ugt i64 2, %"$gasrem_4096"
  br i1 %"$gascmp_4097", label %"$out_of_gas_4098", label %"$have_gas_4099"

"$out_of_gas_4098":                               ; preds = %"$have_gas_4072"
  call void @_out_of_gas()
  br label %"$have_gas_4099"

"$have_gas_4099":                                 ; preds = %"$out_of_gas_4098", %"$have_gas_4072"
  %"$consume_4100" = sub i64 %"$gasrem_4096", 2
  store i64 %"$consume_4100", i64* @_gasrem, align 8
  %"$isSenderOAO_4102" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_4103" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_4102", i32 0, i32 0
  %"$isSenderOAO_tag_4104" = load i8, i8* %"$isSenderOAO_tag_4103", align 1
  switch i8 %"$isSenderOAO_tag_4104", label %"$empty_default_4105" [
    i8 0, label %"$True_4106"
    i8 1, label %"$False_4259"
  ], !dbg !405

"$True_4106":                                     ; preds = %"$have_gas_4099"
  %"$isSenderOAO_4107" = bitcast %TName_Bool* %"$isSenderOAO_4102" to %CName_True*
  %"$gasrem_4108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4109" = icmp ugt i64 1, %"$gasrem_4108"
  br i1 %"$gascmp_4109", label %"$out_of_gas_4110", label %"$have_gas_4111"

"$out_of_gas_4110":                               ; preds = %"$True_4106"
  call void @_out_of_gas()
  br label %"$have_gas_4111"

"$have_gas_4111":                                 ; preds = %"$out_of_gas_4110", %"$True_4106"
  %"$consume_4112" = sub i64 %"$gasrem_4108", 1
  store i64 %"$consume_4112", i64* @_gasrem, align 8
  %"$indices_buf_4113_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4113_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4113_salloc_load", i64 32)
  %"$indices_buf_4113_salloc" = bitcast i8* %"$indices_buf_4113_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4113" = bitcast [32 x i8]* %"$indices_buf_4113_salloc" to i8*
  %"$indices_gep_4114" = getelementptr i8, i8* %"$indices_buf_4113", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_4114" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_4115" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4115", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4116", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_4113", i8* null), !dbg !406
  %"$gasrem_4117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4118" = icmp ugt i64 1, %"$gasrem_4117"
  br i1 %"$gascmp_4118", label %"$out_of_gas_4119", label %"$have_gas_4120"

"$out_of_gas_4119":                               ; preds = %"$have_gas_4111"
  call void @_out_of_gas()
  br label %"$have_gas_4120"

"$have_gas_4120":                                 ; preds = %"$out_of_gas_4119", %"$have_gas_4111"
  %"$consume_4121" = sub i64 %"$gasrem_4117", 1
  store i64 %"$consume_4121", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_4122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4123" = icmp ugt i64 1, %"$gasrem_4122"
  br i1 %"$gascmp_4123", label %"$out_of_gas_4124", label %"$have_gas_4125"

"$out_of_gas_4124":                               ; preds = %"$have_gas_4120"
  call void @_out_of_gas()
  br label %"$have_gas_4125"

"$have_gas_4125":                                 ; preds = %"$out_of_gas_4124", %"$have_gas_4120"
  %"$consume_4126" = sub i64 %"$gasrem_4122", 1
  store i64 %"$consume_4126", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_4127" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_4128_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4128_salloc" = call i8* @_salloc(i8* %"$adtval_4128_load", i64 41)
  %"$adtval_4128" = bitcast i8* %"$adtval_4128_salloc" to %CName_ud-registry.Record*
  %"$adtgep_4129" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4128", i32 0, i32 0
  store i8 0, i8* %"$adtgep_4129", align 1
  %"$adtgep_4130" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4128", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_4130", align 1
  %"$adtgep_4131" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4128", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_4127", [20 x i8]* %"$adtgep_4131", align 1
  %"$adtptr_4132" = bitcast %CName_ud-registry.Record* %"$adtval_4128" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_4132", %TName_ud-registry.Record** %newRecord, align 8, !dbg !409
  %"$newRecord_4133" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_4133_4134" = bitcast %TName_ud-registry.Record* %"$newRecord_4133" to i8*
  %"$_literal_cost_call_4135" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_4133_4134")
  %"$gasadd_4136" = add i64 %"$_literal_cost_call_4135", 1
  %"$gasrem_4137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4138" = icmp ugt i64 %"$gasadd_4136", %"$gasrem_4137"
  br i1 %"$gascmp_4138", label %"$out_of_gas_4139", label %"$have_gas_4140"

"$out_of_gas_4139":                               ; preds = %"$have_gas_4125"
  call void @_out_of_gas()
  br label %"$have_gas_4140"

"$have_gas_4140":                                 ; preds = %"$out_of_gas_4139", %"$have_gas_4125"
  %"$consume_4141" = sub i64 %"$gasrem_4137", %"$gasadd_4136"
  store i64 %"$consume_4141", i64* @_gasrem, align 8
  %"$indices_buf_4142_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4142_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4142_salloc_load", i64 32)
  %"$indices_buf_4142_salloc" = bitcast i8* %"$indices_buf_4142_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4142" = bitcast [32 x i8]* %"$indices_buf_4142_salloc" to i8*
  %"$indices_gep_4143" = getelementptr i8, i8* %"$indices_buf_4142", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4143" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast4, align 1
  %"$execptr_load_4144" = load i8*, i8** @_execptr, align 8
  %"$newRecord_4146" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_4147" = bitcast %TName_ud-registry.Record* %"$newRecord_4146" to i8*
  call void @_update_field(i8* %"$execptr_load_4144", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4145", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4142", i8* %"$update_value_4147"), !dbg !410
  %"$gasrem_4148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4149" = icmp ugt i64 1, %"$gasrem_4148"
  br i1 %"$gascmp_4149", label %"$out_of_gas_4150", label %"$have_gas_4151"

"$out_of_gas_4150":                               ; preds = %"$have_gas_4140"
  call void @_out_of_gas()
  br label %"$have_gas_4151"

"$have_gas_4151":                                 ; preds = %"$out_of_gas_4150", %"$have_gas_4140"
  %"$consume_4152" = sub i64 %"$gasrem_4148", 1
  store i64 %"$consume_4152", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_4153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4154" = icmp ugt i64 1, %"$gasrem_4153"
  br i1 %"$gascmp_4154", label %"$out_of_gas_4155", label %"$have_gas_4156"

"$out_of_gas_4155":                               ; preds = %"$have_gas_4151"
  call void @_out_of_gas()
  br label %"$have_gas_4156"

"$have_gas_4156":                                 ; preds = %"$out_of_gas_4155", %"$have_gas_4151"
  %"$consume_4157" = sub i64 %"$gasrem_4153", 1
  store i64 %"$consume_4157", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_87" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_4158" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_4159" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4158", 0
  %"$ud-registry.eConfigured_envptr_4160" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4158", 1
  %"$ud-registry.eConfigured_node_4161" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_4161", align 1
  %"$ud-registry.eConfigured_call_4162" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_4159"(i8* %"$ud-registry.eConfigured_envptr_4160", [32 x i8]* %"$ud-registry.eConfigured_node_4161"), !dbg !411
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_4162", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_87", align 8, !dbg !411
  %"$ud-registry.eConfigured_88" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_87_4163" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_87", align 8
  %"$$ud-registry.eConfigured_87_fptr_4164" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_87_4163", 0
  %"$$ud-registry.eConfigured_87_envptr_4165" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_87_4163", 1
  %"$$ud-registry.eConfigured_87_owner_4166" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_87_owner_4166", align 1
  %"$$ud-registry.eConfigured_87_call_4167" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_87_fptr_4164"(i8* %"$$ud-registry.eConfigured_87_envptr_4165", [20 x i8]* %"$$ud-registry.eConfigured_87_owner_4166"), !dbg !411
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_87_call_4167", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_88", align 8, !dbg !411
  %"$ud-registry.eConfigured_89" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_88_4168" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_88", align 8
  %"$$ud-registry.eConfigured_88_fptr_4169" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_88_4168", 0
  %"$$ud-registry.eConfigured_88_envptr_4170" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_88_4168", 1
  %"$$ud-registry.eConfigured_88_ud-registry.zeroByStr20_4171" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_4172" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_4172", [20 x i8]* %"$$ud-registry.eConfigured_88_ud-registry.zeroByStr20_4171", align 1
  %"$$ud-registry.eConfigured_88_call_4173" = call i8* %"$$ud-registry.eConfigured_88_fptr_4169"(i8* %"$$ud-registry.eConfigured_88_envptr_4170", [20 x i8]* %"$$ud-registry.eConfigured_88_ud-registry.zeroByStr20_4171"), !dbg !411
  store i8* %"$$ud-registry.eConfigured_88_call_4173", i8** %"$ud-registry.eConfigured_89", align 8, !dbg !411
  %"$$ud-registry.eConfigured_89_4174" = load i8*, i8** %"$ud-registry.eConfigured_89", align 8
  store i8* %"$$ud-registry.eConfigured_89_4174", i8** %e, align 8, !dbg !411
  %"$e_4175" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_4177" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4175")
  %"$gasrem_4178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4179" = icmp ugt i64 %"$_literal_cost_call_4177", %"$gasrem_4178"
  br i1 %"$gascmp_4179", label %"$out_of_gas_4180", label %"$have_gas_4181"

"$out_of_gas_4180":                               ; preds = %"$have_gas_4156"
  call void @_out_of_gas()
  br label %"$have_gas_4181"

"$have_gas_4181":                                 ; preds = %"$out_of_gas_4180", %"$have_gas_4156"
  %"$consume_4182" = sub i64 %"$gasrem_4178", %"$_literal_cost_call_4177"
  store i64 %"$consume_4182", i64* @_gasrem, align 8
  %"$execptr_load_4183" = load i8*, i8** @_execptr, align 8
  %"$e_4184" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_4183", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4184"), !dbg !412
  %"$gasrem_4185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4186" = icmp ugt i64 1, %"$gasrem_4185"
  br i1 %"$gascmp_4186", label %"$out_of_gas_4187", label %"$have_gas_4188"

"$out_of_gas_4187":                               ; preds = %"$have_gas_4181"
  call void @_out_of_gas()
  br label %"$have_gas_4188"

"$have_gas_4188":                                 ; preds = %"$out_of_gas_4187", %"$have_gas_4181"
  %"$consume_4189" = sub i64 %"$gasrem_4185", 1
  store i64 %"$consume_4189", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_4190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4191" = icmp ugt i64 1, %"$gasrem_4190"
  br i1 %"$gascmp_4191", label %"$out_of_gas_4192", label %"$have_gas_4193"

"$out_of_gas_4192":                               ; preds = %"$have_gas_4188"
  call void @_out_of_gas()
  br label %"$have_gas_4193"

"$have_gas_4193":                                 ; preds = %"$out_of_gas_4192", %"$have_gas_4188"
  %"$consume_4194" = sub i64 %"$gasrem_4190", 1
  store i64 %"$consume_4194", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_4195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4196" = icmp ugt i64 1, %"$gasrem_4195"
  br i1 %"$gascmp_4196", label %"$out_of_gas_4197", label %"$have_gas_4198"

"$out_of_gas_4197":                               ; preds = %"$have_gas_4193"
  call void @_out_of_gas()
  br label %"$have_gas_4198"

"$have_gas_4198":                                 ; preds = %"$out_of_gas_4197", %"$have_gas_4193"
  %"$consume_4199" = sub i64 %"$gasrem_4195", 1
  store i64 %"$consume_4199", i64* @_gasrem, align 8
  %"$msgobj_4200_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4200_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4200_salloc_load", i64 225)
  %"$msgobj_4200_salloc" = bitcast i8* %"$msgobj_4200_salloc_salloc" to [225 x i8]*
  %"$msgobj_4200" = bitcast [225 x i8]* %"$msgobj_4200_salloc" to i8*
  store i8 5, i8* %"$msgobj_4200", align 1
  %"$msgobj_fname_4202" = getelementptr i8, i8* %"$msgobj_4200", i32 1
  %"$msgobj_fname_4203" = bitcast i8* %"$msgobj_fname_4202" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4201", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4203", align 8
  %"$msgobj_td_4204" = getelementptr i8, i8* %"$msgobj_4200", i32 17
  %"$msgobj_td_4205" = bitcast i8* %"$msgobj_td_4204" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4205", align 8
  %"$msgobj_v_4207" = getelementptr i8, i8* %"$msgobj_4200", i32 25
  %"$msgobj_v_4208" = bitcast i8* %"$msgobj_v_4207" to %String*
  store %String { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$stringlit_4206", i32 0, i32 0), i32 17 }, %String* %"$msgobj_v_4208", align 8
  %"$msgobj_fname_4210" = getelementptr i8, i8* %"$msgobj_4200", i32 41
  %"$msgobj_fname_4211" = bitcast i8* %"$msgobj_fname_4210" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4209", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4211", align 8
  %"$msgobj_td_4212" = getelementptr i8, i8* %"$msgobj_4200", i32 57
  %"$msgobj_td_4213" = bitcast i8* %"$msgobj_td_4212" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_4213", align 8
  %"$msgobj_v_4214" = getelementptr i8, i8* %"$msgobj_4200", i32 65
  %"$msgobj_v_4215" = bitcast i8* %"$msgobj_v_4214" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_4215", align 1
  %"$msgobj_fname_4217" = getelementptr i8, i8* %"$msgobj_4200", i32 97
  %"$msgobj_fname_4218" = bitcast i8* %"$msgobj_fname_4217" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4216", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4218", align 8
  %"$msgobj_td_4219" = getelementptr i8, i8* %"$msgobj_4200", i32 113
  %"$msgobj_td_4220" = bitcast i8* %"$msgobj_td_4219" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4220", align 8
  %"$msgobj_v_4221" = getelementptr i8, i8* %"$msgobj_4200", i32 121
  %"$msgobj_v_4222" = bitcast i8* %"$msgobj_v_4221" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4222", align 1
  %"$msgobj_fname_4224" = getelementptr i8, i8* %"$msgobj_4200", i32 141
  %"$msgobj_fname_4225" = bitcast i8* %"$msgobj_fname_4224" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4223", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4225", align 8
  %"$msgobj_td_4226" = getelementptr i8, i8* %"$msgobj_4200", i32 157
  %"$msgobj_td_4227" = bitcast i8* %"$msgobj_td_4226" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_4227", align 8
  %"$msgobj_v_4228" = getelementptr i8, i8* %"$msgobj_4200", i32 165
  %"$msgobj_v_4229" = bitcast i8* %"$msgobj_v_4228" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4229", align 8
  %"$msgobj_fname_4231" = getelementptr i8, i8* %"$msgobj_4200", i32 181
  %"$msgobj_fname_4232" = bitcast i8* %"$msgobj_fname_4231" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4230", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4232", align 8
  %"$msgobj_td_4233" = getelementptr i8, i8* %"$msgobj_4200", i32 197
  %"$msgobj_td_4234" = bitcast i8* %"$msgobj_td_4233" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_4234", align 8
  %"$msgobj_v_4235" = getelementptr i8, i8* %"$msgobj_4200", i32 205
  %"$msgobj_v_4236" = bitcast i8* %"$msgobj_v_4235" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4236", align 1
  store i8* %"$msgobj_4200", i8** %m, align 8, !dbg !413
  %"$gasrem_4238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4239" = icmp ugt i64 1, %"$gasrem_4238"
  br i1 %"$gascmp_4239", label %"$out_of_gas_4240", label %"$have_gas_4241"

"$out_of_gas_4240":                               ; preds = %"$have_gas_4198"
  call void @_out_of_gas()
  br label %"$have_gas_4241"

"$have_gas_4241":                                 ; preds = %"$out_of_gas_4240", %"$have_gas_4198"
  %"$consume_4242" = sub i64 %"$gasrem_4238", 1
  store i64 %"$consume_4242", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_86" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4243" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4244" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4243", 0
  %"$ud-registry.oneMsg_envptr_4245" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4243", 1
  %"$m_4246" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_4247" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4244"(i8* %"$ud-registry.oneMsg_envptr_4245", i8* %"$m_4246"), !dbg !414
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4247", %TName_List_Message** %"$ud-registry.oneMsg_86", align 8, !dbg !414
  %"$$ud-registry.oneMsg_86_4248" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_86", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_86_4248", %TName_List_Message** %msgs, align 8, !dbg !414
  %"$msgs_4249" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_4249_4250" = bitcast %TName_List_Message* %"$msgs_4249" to i8*
  %"$_literal_cost_call_4251" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_4249_4250")
  %"$gasrem_4252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4253" = icmp ugt i64 %"$_literal_cost_call_4251", %"$gasrem_4252"
  br i1 %"$gascmp_4253", label %"$out_of_gas_4254", label %"$have_gas_4255"

"$out_of_gas_4254":                               ; preds = %"$have_gas_4241"
  call void @_out_of_gas()
  br label %"$have_gas_4255"

"$have_gas_4255":                                 ; preds = %"$out_of_gas_4254", %"$have_gas_4241"
  %"$consume_4256" = sub i64 %"$gasrem_4252", %"$_literal_cost_call_4251"
  store i64 %"$consume_4256", i64* @_gasrem, align 8
  %"$execptr_load_4257" = load i8*, i8** @_execptr, align 8
  %"$msgs_4258" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_4257", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_4258"), !dbg !415
  br label %"$matchsucc_4101"

"$False_4259":                                    ; preds = %"$have_gas_4099"
  %"$isSenderOAO_4260" = bitcast %TName_Bool* %"$isSenderOAO_4102" to %CName_False*
  %"$gasrem_4261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4262" = icmp ugt i64 1, %"$gasrem_4261"
  br i1 %"$gascmp_4262", label %"$out_of_gas_4263", label %"$have_gas_4264"

"$out_of_gas_4263":                               ; preds = %"$False_4259"
  call void @_out_of_gas()
  br label %"$have_gas_4264"

"$have_gas_4264":                                 ; preds = %"$out_of_gas_4263", %"$False_4259"
  %"$consume_4265" = sub i64 %"$gasrem_4261", 1
  store i64 %"$consume_4265", i64* @_gasrem, align 8
  %e5 = alloca i8*, align 8
  %"$gasrem_4266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4267" = icmp ugt i64 1, %"$gasrem_4266"
  br i1 %"$gascmp_4267", label %"$out_of_gas_4268", label %"$have_gas_4269"

"$out_of_gas_4268":                               ; preds = %"$have_gas_4264"
  call void @_out_of_gas()
  br label %"$have_gas_4269"

"$have_gas_4269":                                 ; preds = %"$out_of_gas_4268", %"$have_gas_4264"
  %"$consume_4270" = sub i64 %"$gasrem_4266", 1
  store i64 %"$consume_4270", i64* @_gasrem, align 8
  %m6 = alloca %String, align 8
  %"$gasrem_4271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4272" = icmp ugt i64 1, %"$gasrem_4271"
  br i1 %"$gascmp_4272", label %"$out_of_gas_4273", label %"$have_gas_4274"

"$out_of_gas_4273":                               ; preds = %"$have_gas_4269"
  call void @_out_of_gas()
  br label %"$have_gas_4274"

"$have_gas_4274":                                 ; preds = %"$out_of_gas_4273", %"$have_gas_4269"
  %"$consume_4275" = sub i64 %"$gasrem_4271", 1
  store i64 %"$consume_4275", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_4276", i32 0, i32 0), i32 43 }, %String* %m6, align 8, !dbg !416
  %"$gasrem_4277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4278" = icmp ugt i64 1, %"$gasrem_4277"
  br i1 %"$gascmp_4278", label %"$out_of_gas_4279", label %"$have_gas_4280"

"$out_of_gas_4279":                               ; preds = %"$have_gas_4274"
  call void @_out_of_gas()
  br label %"$have_gas_4280"

"$have_gas_4280":                                 ; preds = %"$out_of_gas_4279", %"$have_gas_4274"
  %"$consume_4281" = sub i64 %"$gasrem_4277", 1
  store i64 %"$consume_4281", i64* @_gasrem, align 8
  %"$ud-registry.eError_91" = alloca i8*, align 8
  %"$ud-registry.eError_4282" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_4283" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4282", 0
  %"$ud-registry.eError_envptr_4284" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4282", 1
  %"$m_4285" = load %String, %String* %m6, align 8
  %"$ud-registry.eError_call_4286" = call i8* %"$ud-registry.eError_fptr_4283"(i8* %"$ud-registry.eError_envptr_4284", %String %"$m_4285"), !dbg !418
  store i8* %"$ud-registry.eError_call_4286", i8** %"$ud-registry.eError_91", align 8, !dbg !418
  %"$$ud-registry.eError_91_4287" = load i8*, i8** %"$ud-registry.eError_91", align 8
  store i8* %"$$ud-registry.eError_91_4287", i8** %e5, align 8, !dbg !418
  %"$e_4288" = load i8*, i8** %e5, align 8
  %"$_literal_cost_call_4290" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4288")
  %"$gasrem_4291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4292" = icmp ugt i64 %"$_literal_cost_call_4290", %"$gasrem_4291"
  br i1 %"$gascmp_4292", label %"$out_of_gas_4293", label %"$have_gas_4294"

"$out_of_gas_4293":                               ; preds = %"$have_gas_4280"
  call void @_out_of_gas()
  br label %"$have_gas_4294"

"$have_gas_4294":                                 ; preds = %"$out_of_gas_4293", %"$have_gas_4280"
  %"$consume_4295" = sub i64 %"$gasrem_4291", %"$_literal_cost_call_4290"
  store i64 %"$consume_4295", i64* @_gasrem, align 8
  %"$execptr_load_4296" = load i8*, i8** @_execptr, align 8
  %"$e_4297" = load i8*, i8** %e5, align 8
  call void @_event(i8* %"$execptr_load_4296", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4297"), !dbg !419
  %"$gasrem_4298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4299" = icmp ugt i64 1, %"$gasrem_4298"
  br i1 %"$gascmp_4299", label %"$out_of_gas_4300", label %"$have_gas_4301"

"$out_of_gas_4300":                               ; preds = %"$have_gas_4294"
  call void @_out_of_gas()
  br label %"$have_gas_4301"

"$have_gas_4301":                                 ; preds = %"$out_of_gas_4300", %"$have_gas_4294"
  %"$consume_4302" = sub i64 %"$gasrem_4298", 1
  store i64 %"$consume_4302", i64* @_gasrem, align 8
  %msgs7 = alloca %TName_List_Message*, align 8
  %"$gasrem_4303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4304" = icmp ugt i64 1, %"$gasrem_4303"
  br i1 %"$gascmp_4304", label %"$out_of_gas_4305", label %"$have_gas_4306"

"$out_of_gas_4305":                               ; preds = %"$have_gas_4301"
  call void @_out_of_gas()
  br label %"$have_gas_4306"

"$have_gas_4306":                                 ; preds = %"$out_of_gas_4305", %"$have_gas_4301"
  %"$consume_4307" = sub i64 %"$gasrem_4303", 1
  store i64 %"$consume_4307", i64* @_gasrem, align 8
  %m8 = alloca i8*, align 8
  %"$gasrem_4308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4309" = icmp ugt i64 1, %"$gasrem_4308"
  br i1 %"$gascmp_4309", label %"$out_of_gas_4310", label %"$have_gas_4311"

"$out_of_gas_4310":                               ; preds = %"$have_gas_4306"
  call void @_out_of_gas()
  br label %"$have_gas_4311"

"$have_gas_4311":                                 ; preds = %"$out_of_gas_4310", %"$have_gas_4306"
  %"$consume_4312" = sub i64 %"$gasrem_4308", 1
  store i64 %"$consume_4312", i64* @_gasrem, align 8
  %"$msgobj_4313_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4313_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4313_salloc_load", i64 225)
  %"$msgobj_4313_salloc" = bitcast i8* %"$msgobj_4313_salloc_salloc" to [225 x i8]*
  %"$msgobj_4313" = bitcast [225 x i8]* %"$msgobj_4313_salloc" to i8*
  store i8 5, i8* %"$msgobj_4313", align 1
  %"$msgobj_fname_4315" = getelementptr i8, i8* %"$msgobj_4313", i32 1
  %"$msgobj_fname_4316" = bitcast i8* %"$msgobj_fname_4315" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4314", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4316", align 8
  %"$msgobj_td_4317" = getelementptr i8, i8* %"$msgobj_4313", i32 17
  %"$msgobj_td_4318" = bitcast i8* %"$msgobj_td_4317" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4318", align 8
  %"$msgobj_v_4320" = getelementptr i8, i8* %"$msgobj_4313", i32 25
  %"$msgobj_v_4321" = bitcast i8* %"$msgobj_v_4320" to %String*
  store %String { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$stringlit_4319", i32 0, i32 0), i32 17 }, %String* %"$msgobj_v_4321", align 8
  %"$msgobj_fname_4323" = getelementptr i8, i8* %"$msgobj_4313", i32 41
  %"$msgobj_fname_4324" = bitcast i8* %"$msgobj_fname_4323" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4322", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4324", align 8
  %"$msgobj_td_4325" = getelementptr i8, i8* %"$msgobj_4313", i32 57
  %"$msgobj_td_4326" = bitcast i8* %"$msgobj_td_4325" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_4326", align 8
  %"$msgobj_v_4327" = getelementptr i8, i8* %"$msgobj_4313", i32 65
  %"$msgobj_v_4328" = bitcast i8* %"$msgobj_v_4327" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_4328", align 1
  %"$msgobj_fname_4330" = getelementptr i8, i8* %"$msgobj_4313", i32 97
  %"$msgobj_fname_4331" = bitcast i8* %"$msgobj_fname_4330" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4329", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4331", align 8
  %"$msgobj_td_4332" = getelementptr i8, i8* %"$msgobj_4313", i32 113
  %"$msgobj_td_4333" = bitcast i8* %"$msgobj_td_4332" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4333", align 8
  %"$msgobj_v_4334" = getelementptr i8, i8* %"$msgobj_4313", i32 121
  %"$msgobj_v_4335" = bitcast i8* %"$msgobj_v_4334" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4335", align 1
  %"$msgobj_fname_4337" = getelementptr i8, i8* %"$msgobj_4313", i32 141
  %"$msgobj_fname_4338" = bitcast i8* %"$msgobj_fname_4337" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4336", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4338", align 8
  %"$msgobj_td_4339" = getelementptr i8, i8* %"$msgobj_4313", i32 157
  %"$msgobj_td_4340" = bitcast i8* %"$msgobj_td_4339" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_4340", align 8
  %"$msgobj_v_4341" = getelementptr i8, i8* %"$msgobj_4313", i32 165
  %"$msgobj_v_4342" = bitcast i8* %"$msgobj_v_4341" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4342", align 8
  %"$msgobj_fname_4344" = getelementptr i8, i8* %"$msgobj_4313", i32 181
  %"$msgobj_fname_4345" = bitcast i8* %"$msgobj_fname_4344" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4343", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4345", align 8
  %"$msgobj_td_4346" = getelementptr i8, i8* %"$msgobj_4313", i32 197
  %"$msgobj_td_4347" = bitcast i8* %"$msgobj_td_4346" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_4347", align 8
  %"$msgobj_v_4348" = getelementptr i8, i8* %"$msgobj_4313", i32 205
  %"$msgobj_v_4349" = bitcast i8* %"$msgobj_v_4348" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4349", align 1
  store i8* %"$msgobj_4313", i8** %m8, align 8, !dbg !420
  %"$gasrem_4351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4352" = icmp ugt i64 1, %"$gasrem_4351"
  br i1 %"$gascmp_4352", label %"$out_of_gas_4353", label %"$have_gas_4354"

"$out_of_gas_4353":                               ; preds = %"$have_gas_4311"
  call void @_out_of_gas()
  br label %"$have_gas_4354"

"$have_gas_4354":                                 ; preds = %"$out_of_gas_4353", %"$have_gas_4311"
  %"$consume_4355" = sub i64 %"$gasrem_4351", 1
  store i64 %"$consume_4355", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_90" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4356" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4357" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4356", 0
  %"$ud-registry.oneMsg_envptr_4358" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4356", 1
  %"$m_4359" = load i8*, i8** %m8, align 8
  %"$ud-registry.oneMsg_call_4360" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4357"(i8* %"$ud-registry.oneMsg_envptr_4358", i8* %"$m_4359"), !dbg !421
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4360", %TName_List_Message** %"$ud-registry.oneMsg_90", align 8, !dbg !421
  %"$$ud-registry.oneMsg_90_4361" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_90", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_90_4361", %TName_List_Message** %msgs7, align 8, !dbg !421
  %"$msgs_4362" = load %TName_List_Message*, %TName_List_Message** %msgs7, align 8
  %"$$msgs_4362_4363" = bitcast %TName_List_Message* %"$msgs_4362" to i8*
  %"$_literal_cost_call_4364" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_4362_4363")
  %"$gasrem_4365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4366" = icmp ugt i64 %"$_literal_cost_call_4364", %"$gasrem_4365"
  br i1 %"$gascmp_4366", label %"$out_of_gas_4367", label %"$have_gas_4368"

"$out_of_gas_4367":                               ; preds = %"$have_gas_4354"
  call void @_out_of_gas()
  br label %"$have_gas_4368"

"$have_gas_4368":                                 ; preds = %"$out_of_gas_4367", %"$have_gas_4354"
  %"$consume_4369" = sub i64 %"$gasrem_4365", %"$_literal_cost_call_4364"
  store i64 %"$consume_4369", i64* @_gasrem, align 8
  %"$execptr_load_4370" = load i8*, i8** @_execptr, align 8
  %"$msgs_4371" = load %TName_List_Message*, %TName_List_Message** %msgs7, align 8
  call void @_send(i8* %"$execptr_load_4370", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_4371"), !dbg !422
  br label %"$matchsucc_4101"

"$empty_default_4105":                            ; preds = %"$have_gas_4099"
  br label %"$matchsucc_4101"

"$matchsucc_4101":                                ; preds = %"$have_gas_4368", %"$have_gas_4255", %"$empty_default_4105"
  ret void
}

define void @transfer(i8* %0) !dbg !423 {
entry:
  %"$_amount_4373" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4374" = bitcast i8* %"$_amount_4373" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4374", align 8
  %"$_origin_4375" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4376" = bitcast i8* %"$_origin_4375" to [20 x i8]*
  %"$_sender_4377" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4378" = bitcast i8* %"$_sender_4377" to [20 x i8]*
  %"$node_4379" = getelementptr i8, i8* %0, i32 56
  %"$node_4380" = bitcast i8* %"$node_4379" to [32 x i8]*
  %"$owner_4381" = getelementptr i8, i8* %0, i32 88
  %"$owner_4382" = bitcast i8* %"$owner_4381" to [20 x i8]*
  call void @"$transfer_3993"(%Uint128 %_amount, [20 x i8]* %"$_origin_4376", [20 x i8]* %"$_sender_4378", [32 x i8]* %"$node_4380", [20 x i8]* %"$owner_4382"), !dbg !424
  ret void
}

define internal void @"$assign_4383"(%Uint128 %_amount, [20 x i8]* %"$_origin_4384", [20 x i8]* %"$_sender_4385", [32 x i8]* %"$parent_4386", %String %label, [20 x i8]* %"$owner_4387") !dbg !425 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4384", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4385", align 1
  %parent = load [32 x i8], [32 x i8]* %"$parent_4386", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_4387", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_4388_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4388_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4388_salloc_load", i64 32)
  %"$indices_buf_4388_salloc" = bitcast i8* %"$indices_buf_4388_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4388" = bitcast [32 x i8]* %"$indices_buf_4388_salloc" to i8*
  %"$indices_gep_4389" = getelementptr i8, i8* %"$indices_buf_4388", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4389" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4391" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_4392" = call i8* @_fetch_field(i8* %"$execptr_load_4391", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4390", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4388", i32 1), !dbg !426
  %"$maybeRecord_4393" = bitcast i8* %"$maybeRecord_call_4392" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4393", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_4394" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_4394_4395" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4394" to i8*
  %"$_literal_cost_call_4396" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_4394_4395")
  %"$gasadd_4397" = add i64 %"$_literal_cost_call_4396", 0
  %"$gasadd_4398" = add i64 %"$gasadd_4397", 1
  %"$gasrem_4399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4400" = icmp ugt i64 %"$gasadd_4398", %"$gasrem_4399"
  br i1 %"$gascmp_4400", label %"$out_of_gas_4401", label %"$have_gas_4402"

"$out_of_gas_4401":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4402"

"$have_gas_4402":                                 ; preds = %"$out_of_gas_4401", %entry
  %"$consume_4403" = sub i64 %"$gasrem_4399", %"$gasadd_4398"
  store i64 %"$consume_4403", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_4404_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4404_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4404_salloc_load", i64 32)
  %"$indices_buf_4404_salloc" = bitcast i8* %"$indices_buf_4404_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4404" = bitcast [32 x i8]* %"$indices_buf_4404_salloc" to i8*
  %"$indices_gep_4405" = getelementptr i8, i8* %"$indices_buf_4404", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4405" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4407" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_4408" = call i8* @_fetch_field(i8* %"$execptr_load_4407", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4406", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_4404", i32 1), !dbg !427
  %"$maybeApproved_4409" = bitcast i8* %"$maybeApproved_call_4408" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_4409", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_4410" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_4410_4411" = bitcast %TName_Option_ByStr20* %"$maybeApproved_4410" to i8*
  %"$_literal_cost_call_4412" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_4410_4411")
  %"$gasadd_4413" = add i64 %"$_literal_cost_call_4412", 0
  %"$gasadd_4414" = add i64 %"$gasadd_4413", 1
  %"$gasrem_4415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4416" = icmp ugt i64 %"$gasadd_4414", %"$gasrem_4415"
  br i1 %"$gascmp_4416", label %"$out_of_gas_4417", label %"$have_gas_4418"

"$out_of_gas_4417":                               ; preds = %"$have_gas_4402"
  call void @_out_of_gas()
  br label %"$have_gas_4418"

"$have_gas_4418":                                 ; preds = %"$out_of_gas_4417", %"$have_gas_4402"
  %"$consume_4419" = sub i64 %"$gasrem_4415", %"$gasadd_4414"
  store i64 %"$consume_4419", i64* @_gasrem, align 8
  %"$gasrem_4420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4421" = icmp ugt i64 1, %"$gasrem_4420"
  br i1 %"$gascmp_4421", label %"$out_of_gas_4422", label %"$have_gas_4423"

"$out_of_gas_4422":                               ; preds = %"$have_gas_4418"
  call void @_out_of_gas()
  br label %"$have_gas_4423"

"$have_gas_4423":                                 ; preds = %"$out_of_gas_4422", %"$have_gas_4418"
  %"$consume_4424" = sub i64 %"$gasrem_4420", 1
  store i64 %"$consume_4424", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_4425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4426" = icmp ugt i64 1, %"$gasrem_4425"
  br i1 %"$gascmp_4426", label %"$out_of_gas_4427", label %"$have_gas_4428"

"$out_of_gas_4427":                               ; preds = %"$have_gas_4423"
  call void @_out_of_gas()
  br label %"$have_gas_4428"

"$have_gas_4428":                                 ; preds = %"$out_of_gas_4427", %"$have_gas_4423"
  %"$consume_4429" = sub i64 %"$gasrem_4425", 1
  store i64 %"$consume_4429", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_111" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_4430" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_4431" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4430", 0
  %"$ud-registry.recordMemberOwner_envptr_4432" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4430", 1
  %"$maybeRecord_4433" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_4434" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_4431"(i8* %"$ud-registry.recordMemberOwner_envptr_4432", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4434", %TName_Option_ud-registry.Record* %"$maybeRecord_4433"), !dbg !428
  %"$ud-registry.recordMemberOwner_ret_4435" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4434", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_4435", [20 x i8]* %"$ud-registry.recordMemberOwner_111", align 1, !dbg !428
  %"$$ud-registry.recordMemberOwner_111_4436" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_111", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_111_4436", [20 x i8]* %recordOwner, align 1, !dbg !428
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_4437_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4437_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4437_salloc_load", i64 20)
  %"$indices_buf_4437_salloc" = bitcast i8* %"$indices_buf_4437_salloc_salloc" to [20 x i8]*
  %"$indices_buf_4437" = bitcast [20 x i8]* %"$indices_buf_4437_salloc" to i8*
  %"$recordOwner_4438" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_4439" = getelementptr i8, i8* %"$indices_buf_4437", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4439" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4438", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_4441" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_4442" = call i8* @_fetch_field(i8* %"$execptr_load_4441", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_4440", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_4437", i32 1), !dbg !429
  %"$maybeOperators_4443" = bitcast i8* %"$maybeOperators_call_4442" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4443", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_4444" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_4444_4445" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4444" to i8*
  %"$_literal_cost_call_4446" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_4444_4445")
  %"$gasadd_4447" = add i64 %"$_literal_cost_call_4446", 0
  %"$gasadd_4448" = add i64 %"$gasadd_4447", 1
  %"$gasrem_4449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4450" = icmp ugt i64 %"$gasadd_4448", %"$gasrem_4449"
  br i1 %"$gascmp_4450", label %"$out_of_gas_4451", label %"$have_gas_4452"

"$out_of_gas_4451":                               ; preds = %"$have_gas_4428"
  call void @_out_of_gas()
  br label %"$have_gas_4452"

"$have_gas_4452":                                 ; preds = %"$out_of_gas_4451", %"$have_gas_4428"
  %"$consume_4453" = sub i64 %"$gasrem_4449", %"$gasadd_4448"
  store i64 %"$consume_4453", i64* @_gasrem, align 8
  %"$gasrem_4454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4455" = icmp ugt i64 1, %"$gasrem_4454"
  br i1 %"$gascmp_4455", label %"$out_of_gas_4456", label %"$have_gas_4457"

"$out_of_gas_4456":                               ; preds = %"$have_gas_4452"
  call void @_out_of_gas()
  br label %"$have_gas_4457"

"$have_gas_4457":                                 ; preds = %"$out_of_gas_4456", %"$have_gas_4452"
  %"$consume_4458" = sub i64 %"$gasrem_4454", 1
  store i64 %"$consume_4458", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_4459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4460" = icmp ugt i64 1, %"$gasrem_4459"
  br i1 %"$gascmp_4460", label %"$out_of_gas_4461", label %"$have_gas_4462"

"$out_of_gas_4461":                               ; preds = %"$have_gas_4457"
  call void @_out_of_gas()
  br label %"$have_gas_4462"

"$have_gas_4462":                                 ; preds = %"$out_of_gas_4461", %"$have_gas_4457"
  %"$consume_4463" = sub i64 %"$gasrem_4459", 1
  store i64 %"$consume_4463", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_107" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_4464" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_4465" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4464", 0
  %"$ud-registry.getIsOAO_envptr_4466" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4464", 1
  %"$ud-registry.getIsOAO__sender_4467" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_4467", align 1
  %"$ud-registry.getIsOAO_call_4468" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_4465"(i8* %"$ud-registry.getIsOAO_envptr_4466", [20 x i8]* %"$ud-registry.getIsOAO__sender_4467"), !dbg !430
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_4468", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_107", align 8, !dbg !430
  %"$ud-registry.getIsOAO_108" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_107_4469" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_107", align 8
  %"$$ud-registry.getIsOAO_107_fptr_4470" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_107_4469", 0
  %"$$ud-registry.getIsOAO_107_envptr_4471" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_107_4469", 1
  %"$$ud-registry.getIsOAO_107_recordOwner_4472" = alloca [20 x i8], align 1
  %"$recordOwner_4473" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_4473", [20 x i8]* %"$$ud-registry.getIsOAO_107_recordOwner_4472", align 1
  %"$$ud-registry.getIsOAO_107_call_4474" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_107_fptr_4470"(i8* %"$$ud-registry.getIsOAO_107_envptr_4471", [20 x i8]* %"$$ud-registry.getIsOAO_107_recordOwner_4472"), !dbg !430
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_107_call_4474", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_108", align 8, !dbg !430
  %"$ud-registry.getIsOAO_109" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_108_4475" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_108", align 8
  %"$$ud-registry.getIsOAO_108_fptr_4476" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_108_4475", 0
  %"$$ud-registry.getIsOAO_108_envptr_4477" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_108_4475", 1
  %"$maybeApproved_4478" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_108_call_4479" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_108_fptr_4476"(i8* %"$$ud-registry.getIsOAO_108_envptr_4477", %TName_Option_ByStr20* %"$maybeApproved_4478"), !dbg !430
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_108_call_4479", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_109", align 8, !dbg !430
  %"$ud-registry.getIsOAO_110" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_109_4480" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_109", align 8
  %"$$ud-registry.getIsOAO_109_fptr_4481" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_109_4480", 0
  %"$$ud-registry.getIsOAO_109_envptr_4482" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_109_4480", 1
  %"$maybeOperators_4483" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_109_call_4484" = call %TName_Bool* %"$$ud-registry.getIsOAO_109_fptr_4481"(i8* %"$$ud-registry.getIsOAO_109_envptr_4482", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4483"), !dbg !430
  store %TName_Bool* %"$$ud-registry.getIsOAO_109_call_4484", %TName_Bool** %"$ud-registry.getIsOAO_110", align 8, !dbg !430
  %"$$ud-registry.getIsOAO_110_4485" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_110", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_110_4485", %TName_Bool** %isSenderOAO, align 8, !dbg !430
  %"$gasrem_4486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4487" = icmp ugt i64 2, %"$gasrem_4486"
  br i1 %"$gascmp_4487", label %"$out_of_gas_4488", label %"$have_gas_4489"

"$out_of_gas_4488":                               ; preds = %"$have_gas_4462"
  call void @_out_of_gas()
  br label %"$have_gas_4489"

"$have_gas_4489":                                 ; preds = %"$out_of_gas_4488", %"$have_gas_4462"
  %"$consume_4490" = sub i64 %"$gasrem_4486", 2
  store i64 %"$consume_4490", i64* @_gasrem, align 8
  %"$isSenderOAO_4492" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_4493" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_4492", i32 0, i32 0
  %"$isSenderOAO_tag_4494" = load i8, i8* %"$isSenderOAO_tag_4493", align 1
  switch i8 %"$isSenderOAO_tag_4494", label %"$empty_default_4495" [
    i8 0, label %"$True_4496"
    i8 1, label %"$False_4739"
  ], !dbg !431

"$True_4496":                                     ; preds = %"$have_gas_4489"
  %"$isSenderOAO_4497" = bitcast %TName_Bool* %"$isSenderOAO_4492" to %CName_True*
  %"$gasrem_4498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4499" = icmp ugt i64 1, %"$gasrem_4498"
  br i1 %"$gascmp_4499", label %"$out_of_gas_4500", label %"$have_gas_4501"

"$out_of_gas_4500":                               ; preds = %"$True_4496"
  call void @_out_of_gas()
  br label %"$have_gas_4501"

"$have_gas_4501":                                 ; preds = %"$out_of_gas_4500", %"$True_4496"
  %"$consume_4502" = sub i64 %"$gasrem_4498", 1
  store i64 %"$consume_4502", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_4503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4504" = icmp ugt i64 1, %"$gasrem_4503"
  br i1 %"$gascmp_4504", label %"$out_of_gas_4505", label %"$have_gas_4506"

"$out_of_gas_4505":                               ; preds = %"$have_gas_4501"
  call void @_out_of_gas()
  br label %"$have_gas_4506"

"$have_gas_4506":                                 ; preds = %"$out_of_gas_4505", %"$have_gas_4501"
  %"$consume_4507" = sub i64 %"$gasrem_4503", 1
  store i64 %"$consume_4507", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_103" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_4508" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_4509" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4508", 0
  %"$ud-registry.parentLabelToNode_envptr_4510" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4508", 1
  %"$ud-registry.parentLabelToNode_parent_4511" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4511", align 1
  %"$ud-registry.parentLabelToNode_call_4512" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_4509"(i8* %"$ud-registry.parentLabelToNode_envptr_4510", [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4511"), !dbg !432
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_4512", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_103", align 8, !dbg !432
  %"$ud-registry.parentLabelToNode_104" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_103_4513" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_103", align 8
  %"$$ud-registry.parentLabelToNode_103_fptr_4514" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_103_4513", 0
  %"$$ud-registry.parentLabelToNode_103_envptr_4515" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_103_4513", 1
  %"$$ud-registry.parentLabelToNode_103_retalloca_4516" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_103_fptr_4514"(i8* %"$$ud-registry.parentLabelToNode_103_envptr_4515", [32 x i8]* %"$$ud-registry.parentLabelToNode_103_retalloca_4516", %String %label), !dbg !432
  %"$$ud-registry.parentLabelToNode_103_ret_4517" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_103_retalloca_4516", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_103_ret_4517", [32 x i8]* %"$ud-registry.parentLabelToNode_104", align 1, !dbg !432
  %"$$ud-registry.parentLabelToNode_104_4518" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_104", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_104_4518", [32 x i8]* %node, align 1, !dbg !432
  %recordExists = alloca %TName_Bool*, align 8
  %"$indices_buf_4519_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4519_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4519_salloc_load", i64 32)
  %"$indices_buf_4519_salloc" = bitcast i8* %"$indices_buf_4519_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4519" = bitcast [32 x i8]* %"$indices_buf_4519_salloc" to i8*
  %"$node_4520" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4521" = getelementptr i8, i8* %"$indices_buf_4519", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_4521" to [32 x i8]*
  store [32 x i8] %"$node_4520", [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_4523" = load i8*, i8** @_execptr, align 8
  %"$recordExists_call_4524" = call i8* @_fetch_field(i8* %"$execptr_load_4523", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4522", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4519", i32 0), !dbg !435
  %"$recordExists_4525" = bitcast i8* %"$recordExists_call_4524" to %TName_Bool*
  store %TName_Bool* %"$recordExists_4525", %TName_Bool** %recordExists, align 8
  %"$recordExists_4526" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$$recordExists_4526_4527" = bitcast %TName_Bool* %"$recordExists_4526" to i8*
  %"$_literal_cost_call_4528" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", i8* %"$$recordExists_4526_4527")
  %"$gasadd_4529" = add i64 %"$_literal_cost_call_4528", 0
  %"$gasadd_4530" = add i64 %"$gasadd_4529", 1
  %"$gasrem_4531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4532" = icmp ugt i64 %"$gasadd_4530", %"$gasrem_4531"
  br i1 %"$gascmp_4532", label %"$out_of_gas_4533", label %"$have_gas_4534"

"$out_of_gas_4533":                               ; preds = %"$have_gas_4506"
  call void @_out_of_gas()
  br label %"$have_gas_4534"

"$have_gas_4534":                                 ; preds = %"$out_of_gas_4533", %"$have_gas_4506"
  %"$consume_4535" = sub i64 %"$gasrem_4531", %"$gasadd_4530"
  store i64 %"$consume_4535", i64* @_gasrem, align 8
  %"$gasrem_4536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4537" = icmp ugt i64 2, %"$gasrem_4536"
  br i1 %"$gascmp_4537", label %"$out_of_gas_4538", label %"$have_gas_4539"

"$out_of_gas_4538":                               ; preds = %"$have_gas_4534"
  call void @_out_of_gas()
  br label %"$have_gas_4539"

"$have_gas_4539":                                 ; preds = %"$out_of_gas_4538", %"$have_gas_4534"
  %"$consume_4540" = sub i64 %"$gasrem_4536", 2
  store i64 %"$consume_4540", i64* @_gasrem, align 8
  %"$recordExists_4542" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$recordExists_tag_4543" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$recordExists_4542", i32 0, i32 0
  %"$recordExists_tag_4544" = load i8, i8* %"$recordExists_tag_4543", align 1
  switch i8 %"$recordExists_tag_4544", label %"$default_4545" [
    i8 1, label %"$False_4546"
  ], !dbg !436

"$False_4546":                                    ; preds = %"$have_gas_4539"
  %"$recordExists_4547" = bitcast %TName_Bool* %"$recordExists_4542" to %CName_False*
  %"$gasrem_4548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4549" = icmp ugt i64 1, %"$gasrem_4548"
  br i1 %"$gascmp_4549", label %"$out_of_gas_4550", label %"$have_gas_4551"

"$out_of_gas_4550":                               ; preds = %"$False_4546"
  call void @_out_of_gas()
  br label %"$have_gas_4551"

"$have_gas_4551":                                 ; preds = %"$out_of_gas_4550", %"$False_4546"
  %"$consume_4552" = sub i64 %"$gasrem_4548", 1
  store i64 %"$consume_4552", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_4553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4554" = icmp ugt i64 1, %"$gasrem_4553"
  br i1 %"$gascmp_4554", label %"$out_of_gas_4555", label %"$have_gas_4556"

"$out_of_gas_4555":                               ; preds = %"$have_gas_4551"
  call void @_out_of_gas()
  br label %"$have_gas_4556"

"$have_gas_4556":                                 ; preds = %"$out_of_gas_4555", %"$have_gas_4551"
  %"$consume_4557" = sub i64 %"$gasrem_4553", 1
  store i64 %"$consume_4557", i64* @_gasrem, align 8
  %"$ud-registry.eNewDomain_101" = alloca { i8* (i8*, %String)*, i8* }, align 8
  %"$ud-registry.eNewDomain_4558" = load { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain, align 8
  %"$ud-registry.eNewDomain_fptr_4559" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_4558", 0
  %"$ud-registry.eNewDomain_envptr_4560" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_4558", 1
  %"$ud-registry.eNewDomain_parent_4561" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.eNewDomain_parent_4561", align 1
  %"$ud-registry.eNewDomain_call_4562" = call { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_fptr_4559"(i8* %"$ud-registry.eNewDomain_envptr_4560", [32 x i8]* %"$ud-registry.eNewDomain_parent_4561"), !dbg !437
  store { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_call_4562", { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_101", align 8, !dbg !437
  %"$ud-registry.eNewDomain_102" = alloca i8*, align 8
  %"$$ud-registry.eNewDomain_101_4563" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_101", align 8
  %"$$ud-registry.eNewDomain_101_fptr_4564" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_101_4563", 0
  %"$$ud-registry.eNewDomain_101_envptr_4565" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_101_4563", 1
  %"$$ud-registry.eNewDomain_101_call_4566" = call i8* %"$$ud-registry.eNewDomain_101_fptr_4564"(i8* %"$$ud-registry.eNewDomain_101_envptr_4565", %String %label), !dbg !437
  store i8* %"$$ud-registry.eNewDomain_101_call_4566", i8** %"$ud-registry.eNewDomain_102", align 8, !dbg !437
  %"$$ud-registry.eNewDomain_102_4567" = load i8*, i8** %"$ud-registry.eNewDomain_102", align 8
  store i8* %"$$ud-registry.eNewDomain_102_4567", i8** %e, align 8, !dbg !437
  %"$e_4568" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_4570" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4568")
  %"$gasrem_4571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4572" = icmp ugt i64 %"$_literal_cost_call_4570", %"$gasrem_4571"
  br i1 %"$gascmp_4572", label %"$out_of_gas_4573", label %"$have_gas_4574"

"$out_of_gas_4573":                               ; preds = %"$have_gas_4556"
  call void @_out_of_gas()
  br label %"$have_gas_4574"

"$have_gas_4574":                                 ; preds = %"$out_of_gas_4573", %"$have_gas_4556"
  %"$consume_4575" = sub i64 %"$gasrem_4571", %"$_literal_cost_call_4570"
  store i64 %"$consume_4575", i64* @_gasrem, align 8
  %"$execptr_load_4576" = load i8*, i8** @_execptr, align 8
  %"$e_4577" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_4576", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4577"), !dbg !440
  br label %"$matchsucc_4541"

"$default_4545":                                  ; preds = %"$have_gas_4539"
  br label %"$joinp_4"

"$joinp_4":                                       ; preds = %"$default_4545"
  br label %"$matchsucc_4541"

"$matchsucc_4541":                                ; preds = %"$have_gas_4574", %"$joinp_4"
  %"$gasrem_4578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4579" = icmp ugt i64 1, %"$gasrem_4578"
  br i1 %"$gascmp_4579", label %"$out_of_gas_4580", label %"$have_gas_4581"

"$out_of_gas_4580":                               ; preds = %"$matchsucc_4541"
  call void @_out_of_gas()
  br label %"$have_gas_4581"

"$have_gas_4581":                                 ; preds = %"$out_of_gas_4580", %"$matchsucc_4541"
  %"$consume_4582" = sub i64 %"$gasrem_4578", 1
  store i64 %"$consume_4582", i64* @_gasrem, align 8
  %"$indices_buf_4583_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4583_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4583_salloc_load", i64 32)
  %"$indices_buf_4583_salloc" = bitcast i8* %"$indices_buf_4583_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4583" = bitcast [32 x i8]* %"$indices_buf_4583_salloc" to i8*
  %"$node_4584" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4585" = getelementptr i8, i8* %"$indices_buf_4583", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4585" to [32 x i8]*
  store [32 x i8] %"$node_4584", [32 x i8]* %indices_cast4, align 1
  %"$execptr_load_4586" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4586", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4587", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_4583", i8* null), !dbg !441
  %"$gasrem_4588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4589" = icmp ugt i64 1, %"$gasrem_4588"
  br i1 %"$gascmp_4589", label %"$out_of_gas_4590", label %"$have_gas_4591"

"$out_of_gas_4590":                               ; preds = %"$have_gas_4581"
  call void @_out_of_gas()
  br label %"$have_gas_4591"

"$have_gas_4591":                                 ; preds = %"$out_of_gas_4590", %"$have_gas_4581"
  %"$consume_4592" = sub i64 %"$gasrem_4588", 1
  store i64 %"$consume_4592", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_4593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4594" = icmp ugt i64 1, %"$gasrem_4593"
  br i1 %"$gascmp_4594", label %"$out_of_gas_4595", label %"$have_gas_4596"

"$out_of_gas_4595":                               ; preds = %"$have_gas_4591"
  call void @_out_of_gas()
  br label %"$have_gas_4596"

"$have_gas_4596":                                 ; preds = %"$out_of_gas_4595", %"$have_gas_4591"
  %"$consume_4597" = sub i64 %"$gasrem_4593", 1
  store i64 %"$consume_4597", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_4598" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_4599_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4599_salloc" = call i8* @_salloc(i8* %"$adtval_4599_load", i64 41)
  %"$adtval_4599" = bitcast i8* %"$adtval_4599_salloc" to %CName_ud-registry.Record*
  %"$adtgep_4600" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4599", i32 0, i32 0
  store i8 0, i8* %"$adtgep_4600", align 1
  %"$adtgep_4601" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4599", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_4601", align 1
  %"$adtgep_4602" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4599", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_4598", [20 x i8]* %"$adtgep_4602", align 1
  %"$adtptr_4603" = bitcast %CName_ud-registry.Record* %"$adtval_4599" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_4603", %TName_ud-registry.Record** %newRecord, align 8, !dbg !442
  %"$newRecord_4604" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_4604_4605" = bitcast %TName_ud-registry.Record* %"$newRecord_4604" to i8*
  %"$_literal_cost_call_4606" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_4604_4605")
  %"$gasadd_4607" = add i64 %"$_literal_cost_call_4606", 1
  %"$gasrem_4608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4609" = icmp ugt i64 %"$gasadd_4607", %"$gasrem_4608"
  br i1 %"$gascmp_4609", label %"$out_of_gas_4610", label %"$have_gas_4611"

"$out_of_gas_4610":                               ; preds = %"$have_gas_4596"
  call void @_out_of_gas()
  br label %"$have_gas_4611"

"$have_gas_4611":                                 ; preds = %"$out_of_gas_4610", %"$have_gas_4596"
  %"$consume_4612" = sub i64 %"$gasrem_4608", %"$gasadd_4607"
  store i64 %"$consume_4612", i64* @_gasrem, align 8
  %"$indices_buf_4613_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4613_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4613_salloc_load", i64 32)
  %"$indices_buf_4613_salloc" = bitcast i8* %"$indices_buf_4613_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4613" = bitcast [32 x i8]* %"$indices_buf_4613_salloc" to i8*
  %"$node_4614" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4615" = getelementptr i8, i8* %"$indices_buf_4613", i32 0
  %indices_cast5 = bitcast i8* %"$indices_gep_4615" to [32 x i8]*
  store [32 x i8] %"$node_4614", [32 x i8]* %indices_cast5, align 1
  %"$execptr_load_4616" = load i8*, i8** @_execptr, align 8
  %"$newRecord_4618" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_4619" = bitcast %TName_ud-registry.Record* %"$newRecord_4618" to i8*
  call void @_update_field(i8* %"$execptr_load_4616", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4617", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4613", i8* %"$update_value_4619"), !dbg !443
  %"$gasrem_4620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4621" = icmp ugt i64 1, %"$gasrem_4620"
  br i1 %"$gascmp_4621", label %"$out_of_gas_4622", label %"$have_gas_4623"

"$out_of_gas_4622":                               ; preds = %"$have_gas_4611"
  call void @_out_of_gas()
  br label %"$have_gas_4623"

"$have_gas_4623":                                 ; preds = %"$out_of_gas_4622", %"$have_gas_4611"
  %"$consume_4624" = sub i64 %"$gasrem_4620", 1
  store i64 %"$consume_4624", i64* @_gasrem, align 8
  %e6 = alloca i8*, align 8
  %"$gasrem_4625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4626" = icmp ugt i64 1, %"$gasrem_4625"
  br i1 %"$gascmp_4626", label %"$out_of_gas_4627", label %"$have_gas_4628"

"$out_of_gas_4627":                               ; preds = %"$have_gas_4623"
  call void @_out_of_gas()
  br label %"$have_gas_4628"

"$have_gas_4628":                                 ; preds = %"$out_of_gas_4627", %"$have_gas_4623"
  %"$consume_4629" = sub i64 %"$gasrem_4625", 1
  store i64 %"$consume_4629", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_98" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_4630" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_4631" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4630", 0
  %"$ud-registry.eConfigured_envptr_4632" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4630", 1
  %"$ud-registry.eConfigured_node_4633" = alloca [32 x i8], align 1
  %"$node_4634" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_4634", [32 x i8]* %"$ud-registry.eConfigured_node_4633", align 1
  %"$ud-registry.eConfigured_call_4635" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_4631"(i8* %"$ud-registry.eConfigured_envptr_4632", [32 x i8]* %"$ud-registry.eConfigured_node_4633"), !dbg !444
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_4635", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_98", align 8, !dbg !444
  %"$ud-registry.eConfigured_99" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_98_4636" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_98", align 8
  %"$$ud-registry.eConfigured_98_fptr_4637" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_98_4636", 0
  %"$$ud-registry.eConfigured_98_envptr_4638" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_98_4636", 1
  %"$$ud-registry.eConfigured_98_owner_4639" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_98_owner_4639", align 1
  %"$$ud-registry.eConfigured_98_call_4640" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_98_fptr_4637"(i8* %"$$ud-registry.eConfigured_98_envptr_4638", [20 x i8]* %"$$ud-registry.eConfigured_98_owner_4639"), !dbg !444
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_98_call_4640", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_99", align 8, !dbg !444
  %"$ud-registry.eConfigured_100" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_99_4641" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_99", align 8
  %"$$ud-registry.eConfigured_99_fptr_4642" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_99_4641", 0
  %"$$ud-registry.eConfigured_99_envptr_4643" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_99_4641", 1
  %"$$ud-registry.eConfigured_99_ud-registry.zeroByStr20_4644" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_4645" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_4645", [20 x i8]* %"$$ud-registry.eConfigured_99_ud-registry.zeroByStr20_4644", align 1
  %"$$ud-registry.eConfigured_99_call_4646" = call i8* %"$$ud-registry.eConfigured_99_fptr_4642"(i8* %"$$ud-registry.eConfigured_99_envptr_4643", [20 x i8]* %"$$ud-registry.eConfigured_99_ud-registry.zeroByStr20_4644"), !dbg !444
  store i8* %"$$ud-registry.eConfigured_99_call_4646", i8** %"$ud-registry.eConfigured_100", align 8, !dbg !444
  %"$$ud-registry.eConfigured_100_4647" = load i8*, i8** %"$ud-registry.eConfigured_100", align 8
  store i8* %"$$ud-registry.eConfigured_100_4647", i8** %e6, align 8, !dbg !444
  %"$e_4648" = load i8*, i8** %e6, align 8
  %"$_literal_cost_call_4650" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4648")
  %"$gasrem_4651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4652" = icmp ugt i64 %"$_literal_cost_call_4650", %"$gasrem_4651"
  br i1 %"$gascmp_4652", label %"$out_of_gas_4653", label %"$have_gas_4654"

"$out_of_gas_4653":                               ; preds = %"$have_gas_4628"
  call void @_out_of_gas()
  br label %"$have_gas_4654"

"$have_gas_4654":                                 ; preds = %"$out_of_gas_4653", %"$have_gas_4628"
  %"$consume_4655" = sub i64 %"$gasrem_4651", %"$_literal_cost_call_4650"
  store i64 %"$consume_4655", i64* @_gasrem, align 8
  %"$execptr_load_4656" = load i8*, i8** @_execptr, align 8
  %"$e_4657" = load i8*, i8** %e6, align 8
  call void @_event(i8* %"$execptr_load_4656", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4657"), !dbg !445
  %"$gasrem_4658" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4659" = icmp ugt i64 1, %"$gasrem_4658"
  br i1 %"$gascmp_4659", label %"$out_of_gas_4660", label %"$have_gas_4661"

"$out_of_gas_4660":                               ; preds = %"$have_gas_4654"
  call void @_out_of_gas()
  br label %"$have_gas_4661"

"$have_gas_4661":                                 ; preds = %"$out_of_gas_4660", %"$have_gas_4654"
  %"$consume_4662" = sub i64 %"$gasrem_4658", 1
  store i64 %"$consume_4662", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_4663" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4664" = icmp ugt i64 1, %"$gasrem_4663"
  br i1 %"$gascmp_4664", label %"$out_of_gas_4665", label %"$have_gas_4666"

"$out_of_gas_4665":                               ; preds = %"$have_gas_4661"
  call void @_out_of_gas()
  br label %"$have_gas_4666"

"$have_gas_4666":                                 ; preds = %"$out_of_gas_4665", %"$have_gas_4661"
  %"$consume_4667" = sub i64 %"$gasrem_4663", 1
  store i64 %"$consume_4667", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_4668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4669" = icmp ugt i64 1, %"$gasrem_4668"
  br i1 %"$gascmp_4669", label %"$out_of_gas_4670", label %"$have_gas_4671"

"$out_of_gas_4670":                               ; preds = %"$have_gas_4666"
  call void @_out_of_gas()
  br label %"$have_gas_4671"

"$have_gas_4671":                                 ; preds = %"$out_of_gas_4670", %"$have_gas_4666"
  %"$consume_4672" = sub i64 %"$gasrem_4668", 1
  store i64 %"$consume_4672", i64* @_gasrem, align 8
  %"$msgobj_4673_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4673_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4673_salloc_load", i64 265)
  %"$msgobj_4673_salloc" = bitcast i8* %"$msgobj_4673_salloc_salloc" to [265 x i8]*
  %"$msgobj_4673" = bitcast [265 x i8]* %"$msgobj_4673_salloc" to i8*
  store i8 6, i8* %"$msgobj_4673", align 1
  %"$msgobj_fname_4675" = getelementptr i8, i8* %"$msgobj_4673", i32 1
  %"$msgobj_fname_4676" = bitcast i8* %"$msgobj_fname_4675" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4674", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4676", align 8
  %"$msgobj_td_4677" = getelementptr i8, i8* %"$msgobj_4673", i32 17
  %"$msgobj_td_4678" = bitcast i8* %"$msgobj_td_4677" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4678", align 8
  %"$msgobj_v_4680" = getelementptr i8, i8* %"$msgobj_4673", i32 25
  %"$msgobj_v_4681" = bitcast i8* %"$msgobj_v_4680" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_4679", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_4681", align 8
  %"$msgobj_fname_4683" = getelementptr i8, i8* %"$msgobj_4673", i32 41
  %"$msgobj_fname_4684" = bitcast i8* %"$msgobj_fname_4683" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_4682", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_4684", align 8
  %"$msgobj_td_4685" = getelementptr i8, i8* %"$msgobj_4673", i32 57
  %"$msgobj_td_4686" = bitcast i8* %"$msgobj_td_4685" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_4686", align 8
  %"$msgobj_v_4687" = getelementptr i8, i8* %"$msgobj_4673", i32 65
  %"$msgobj_v_4688" = bitcast i8* %"$msgobj_v_4687" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_4688", align 1
  %"$msgobj_fname_4690" = getelementptr i8, i8* %"$msgobj_4673", i32 97
  %"$msgobj_fname_4691" = bitcast i8* %"$msgobj_fname_4690" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4689", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4691", align 8
  %"$msgobj_td_4692" = getelementptr i8, i8* %"$msgobj_4673", i32 113
  %"$msgobj_td_4693" = bitcast i8* %"$msgobj_td_4692" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4693", align 8
  %"$msgobj_v_4694" = getelementptr i8, i8* %"$msgobj_4673", i32 121
  %"$msgobj_v_4695" = bitcast i8* %"$msgobj_v_4694" to %String*
  store %String %label, %String* %"$msgobj_v_4695", align 8
  %"$msgobj_fname_4697" = getelementptr i8, i8* %"$msgobj_4673", i32 137
  %"$msgobj_fname_4698" = bitcast i8* %"$msgobj_fname_4697" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4696", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4698", align 8
  %"$msgobj_td_4699" = getelementptr i8, i8* %"$msgobj_4673", i32 153
  %"$msgobj_td_4700" = bitcast i8* %"$msgobj_td_4699" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4700", align 8
  %"$msgobj_v_4701" = getelementptr i8, i8* %"$msgobj_4673", i32 161
  %"$msgobj_v_4702" = bitcast i8* %"$msgobj_v_4701" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4702", align 1
  %"$msgobj_fname_4704" = getelementptr i8, i8* %"$msgobj_4673", i32 181
  %"$msgobj_fname_4705" = bitcast i8* %"$msgobj_fname_4704" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4703", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4705", align 8
  %"$msgobj_td_4706" = getelementptr i8, i8* %"$msgobj_4673", i32 197
  %"$msgobj_td_4707" = bitcast i8* %"$msgobj_td_4706" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_4707", align 8
  %"$msgobj_v_4708" = getelementptr i8, i8* %"$msgobj_4673", i32 205
  %"$msgobj_v_4709" = bitcast i8* %"$msgobj_v_4708" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4709", align 8
  %"$msgobj_fname_4711" = getelementptr i8, i8* %"$msgobj_4673", i32 221
  %"$msgobj_fname_4712" = bitcast i8* %"$msgobj_fname_4711" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4710", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4712", align 8
  %"$msgobj_td_4713" = getelementptr i8, i8* %"$msgobj_4673", i32 237
  %"$msgobj_td_4714" = bitcast i8* %"$msgobj_td_4713" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_4714", align 8
  %"$msgobj_v_4715" = getelementptr i8, i8* %"$msgobj_4673", i32 245
  %"$msgobj_v_4716" = bitcast i8* %"$msgobj_v_4715" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4716", align 1
  store i8* %"$msgobj_4673", i8** %m, align 8, !dbg !446
  %"$gasrem_4718" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4719" = icmp ugt i64 1, %"$gasrem_4718"
  br i1 %"$gascmp_4719", label %"$out_of_gas_4720", label %"$have_gas_4721"

"$out_of_gas_4720":                               ; preds = %"$have_gas_4671"
  call void @_out_of_gas()
  br label %"$have_gas_4721"

"$have_gas_4721":                                 ; preds = %"$out_of_gas_4720", %"$have_gas_4671"
  %"$consume_4722" = sub i64 %"$gasrem_4718", 1
  store i64 %"$consume_4722", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_97" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4723" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4724" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4723", 0
  %"$ud-registry.oneMsg_envptr_4725" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4723", 1
  %"$m_4726" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_4727" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4724"(i8* %"$ud-registry.oneMsg_envptr_4725", i8* %"$m_4726"), !dbg !447
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4727", %TName_List_Message** %"$ud-registry.oneMsg_97", align 8, !dbg !447
  %"$$ud-registry.oneMsg_97_4728" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_97", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_97_4728", %TName_List_Message** %msgs, align 8, !dbg !447
  %"$msgs_4729" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_4729_4730" = bitcast %TName_List_Message* %"$msgs_4729" to i8*
  %"$_literal_cost_call_4731" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_4729_4730")
  %"$gasrem_4732" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4733" = icmp ugt i64 %"$_literal_cost_call_4731", %"$gasrem_4732"
  br i1 %"$gascmp_4733", label %"$out_of_gas_4734", label %"$have_gas_4735"

"$out_of_gas_4734":                               ; preds = %"$have_gas_4721"
  call void @_out_of_gas()
  br label %"$have_gas_4735"

"$have_gas_4735":                                 ; preds = %"$out_of_gas_4734", %"$have_gas_4721"
  %"$consume_4736" = sub i64 %"$gasrem_4732", %"$_literal_cost_call_4731"
  store i64 %"$consume_4736", i64* @_gasrem, align 8
  %"$execptr_load_4737" = load i8*, i8** @_execptr, align 8
  %"$msgs_4738" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_4737", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_4738"), !dbg !448
  br label %"$matchsucc_4491"

"$False_4739":                                    ; preds = %"$have_gas_4489"
  %"$isSenderOAO_4740" = bitcast %TName_Bool* %"$isSenderOAO_4492" to %CName_False*
  %"$gasrem_4741" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4742" = icmp ugt i64 1, %"$gasrem_4741"
  br i1 %"$gascmp_4742", label %"$out_of_gas_4743", label %"$have_gas_4744"

"$out_of_gas_4743":                               ; preds = %"$False_4739"
  call void @_out_of_gas()
  br label %"$have_gas_4744"

"$have_gas_4744":                                 ; preds = %"$out_of_gas_4743", %"$False_4739"
  %"$consume_4745" = sub i64 %"$gasrem_4741", 1
  store i64 %"$consume_4745", i64* @_gasrem, align 8
  %e7 = alloca i8*, align 8
  %"$gasrem_4746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4747" = icmp ugt i64 1, %"$gasrem_4746"
  br i1 %"$gascmp_4747", label %"$out_of_gas_4748", label %"$have_gas_4749"

"$out_of_gas_4748":                               ; preds = %"$have_gas_4744"
  call void @_out_of_gas()
  br label %"$have_gas_4749"

"$have_gas_4749":                                 ; preds = %"$out_of_gas_4748", %"$have_gas_4744"
  %"$consume_4750" = sub i64 %"$gasrem_4746", 1
  store i64 %"$consume_4750", i64* @_gasrem, align 8
  %m8 = alloca %String, align 8
  %"$gasrem_4751" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4752" = icmp ugt i64 1, %"$gasrem_4751"
  br i1 %"$gascmp_4752", label %"$out_of_gas_4753", label %"$have_gas_4754"

"$out_of_gas_4753":                               ; preds = %"$have_gas_4749"
  call void @_out_of_gas()
  br label %"$have_gas_4754"

"$have_gas_4754":                                 ; preds = %"$out_of_gas_4753", %"$have_gas_4749"
  %"$consume_4755" = sub i64 %"$gasrem_4751", 1
  store i64 %"$consume_4755", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"$stringlit_4756", i32 0, i32 0), i32 45 }, %String* %m8, align 8, !dbg !449
  %"$gasrem_4757" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4758" = icmp ugt i64 1, %"$gasrem_4757"
  br i1 %"$gascmp_4758", label %"$out_of_gas_4759", label %"$have_gas_4760"

"$out_of_gas_4759":                               ; preds = %"$have_gas_4754"
  call void @_out_of_gas()
  br label %"$have_gas_4760"

"$have_gas_4760":                                 ; preds = %"$out_of_gas_4759", %"$have_gas_4754"
  %"$consume_4761" = sub i64 %"$gasrem_4757", 1
  store i64 %"$consume_4761", i64* @_gasrem, align 8
  %"$ud-registry.eError_106" = alloca i8*, align 8
  %"$ud-registry.eError_4762" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_4763" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4762", 0
  %"$ud-registry.eError_envptr_4764" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4762", 1
  %"$m_4765" = load %String, %String* %m8, align 8
  %"$ud-registry.eError_call_4766" = call i8* %"$ud-registry.eError_fptr_4763"(i8* %"$ud-registry.eError_envptr_4764", %String %"$m_4765"), !dbg !451
  store i8* %"$ud-registry.eError_call_4766", i8** %"$ud-registry.eError_106", align 8, !dbg !451
  %"$$ud-registry.eError_106_4767" = load i8*, i8** %"$ud-registry.eError_106", align 8
  store i8* %"$$ud-registry.eError_106_4767", i8** %e7, align 8, !dbg !451
  %"$e_4768" = load i8*, i8** %e7, align 8
  %"$_literal_cost_call_4770" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4768")
  %"$gasrem_4771" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4772" = icmp ugt i64 %"$_literal_cost_call_4770", %"$gasrem_4771"
  br i1 %"$gascmp_4772", label %"$out_of_gas_4773", label %"$have_gas_4774"

"$out_of_gas_4773":                               ; preds = %"$have_gas_4760"
  call void @_out_of_gas()
  br label %"$have_gas_4774"

"$have_gas_4774":                                 ; preds = %"$out_of_gas_4773", %"$have_gas_4760"
  %"$consume_4775" = sub i64 %"$gasrem_4771", %"$_literal_cost_call_4770"
  store i64 %"$consume_4775", i64* @_gasrem, align 8
  %"$execptr_load_4776" = load i8*, i8** @_execptr, align 8
  %"$e_4777" = load i8*, i8** %e7, align 8
  call void @_event(i8* %"$execptr_load_4776", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4777"), !dbg !452
  %"$gasrem_4778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4779" = icmp ugt i64 1, %"$gasrem_4778"
  br i1 %"$gascmp_4779", label %"$out_of_gas_4780", label %"$have_gas_4781"

"$out_of_gas_4780":                               ; preds = %"$have_gas_4774"
  call void @_out_of_gas()
  br label %"$have_gas_4781"

"$have_gas_4781":                                 ; preds = %"$out_of_gas_4780", %"$have_gas_4774"
  %"$consume_4782" = sub i64 %"$gasrem_4778", 1
  store i64 %"$consume_4782", i64* @_gasrem, align 8
  %msgs9 = alloca %TName_List_Message*, align 8
  %"$gasrem_4783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4784" = icmp ugt i64 1, %"$gasrem_4783"
  br i1 %"$gascmp_4784", label %"$out_of_gas_4785", label %"$have_gas_4786"

"$out_of_gas_4785":                               ; preds = %"$have_gas_4781"
  call void @_out_of_gas()
  br label %"$have_gas_4786"

"$have_gas_4786":                                 ; preds = %"$out_of_gas_4785", %"$have_gas_4781"
  %"$consume_4787" = sub i64 %"$gasrem_4783", 1
  store i64 %"$consume_4787", i64* @_gasrem, align 8
  %m10 = alloca i8*, align 8
  %"$gasrem_4788" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4789" = icmp ugt i64 1, %"$gasrem_4788"
  br i1 %"$gascmp_4789", label %"$out_of_gas_4790", label %"$have_gas_4791"

"$out_of_gas_4790":                               ; preds = %"$have_gas_4786"
  call void @_out_of_gas()
  br label %"$have_gas_4791"

"$have_gas_4791":                                 ; preds = %"$out_of_gas_4790", %"$have_gas_4786"
  %"$consume_4792" = sub i64 %"$gasrem_4788", 1
  store i64 %"$consume_4792", i64* @_gasrem, align 8
  %"$msgobj_4793_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4793_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4793_salloc_load", i64 265)
  %"$msgobj_4793_salloc" = bitcast i8* %"$msgobj_4793_salloc_salloc" to [265 x i8]*
  %"$msgobj_4793" = bitcast [265 x i8]* %"$msgobj_4793_salloc" to i8*
  store i8 6, i8* %"$msgobj_4793", align 1
  %"$msgobj_fname_4795" = getelementptr i8, i8* %"$msgobj_4793", i32 1
  %"$msgobj_fname_4796" = bitcast i8* %"$msgobj_fname_4795" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4794", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4796", align 8
  %"$msgobj_td_4797" = getelementptr i8, i8* %"$msgobj_4793", i32 17
  %"$msgobj_td_4798" = bitcast i8* %"$msgobj_td_4797" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4798", align 8
  %"$msgobj_v_4800" = getelementptr i8, i8* %"$msgobj_4793", i32 25
  %"$msgobj_v_4801" = bitcast i8* %"$msgobj_v_4800" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_4799", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_4801", align 8
  %"$msgobj_fname_4803" = getelementptr i8, i8* %"$msgobj_4793", i32 41
  %"$msgobj_fname_4804" = bitcast i8* %"$msgobj_fname_4803" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_4802", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_4804", align 8
  %"$msgobj_td_4805" = getelementptr i8, i8* %"$msgobj_4793", i32 57
  %"$msgobj_td_4806" = bitcast i8* %"$msgobj_td_4805" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_4806", align 8
  %"$msgobj_v_4807" = getelementptr i8, i8* %"$msgobj_4793", i32 65
  %"$msgobj_v_4808" = bitcast i8* %"$msgobj_v_4807" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_4808", align 1
  %"$msgobj_fname_4810" = getelementptr i8, i8* %"$msgobj_4793", i32 97
  %"$msgobj_fname_4811" = bitcast i8* %"$msgobj_fname_4810" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4809", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4811", align 8
  %"$msgobj_td_4812" = getelementptr i8, i8* %"$msgobj_4793", i32 113
  %"$msgobj_td_4813" = bitcast i8* %"$msgobj_td_4812" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4813", align 8
  %"$msgobj_v_4814" = getelementptr i8, i8* %"$msgobj_4793", i32 121
  %"$msgobj_v_4815" = bitcast i8* %"$msgobj_v_4814" to %String*
  store %String %label, %String* %"$msgobj_v_4815", align 8
  %"$msgobj_fname_4817" = getelementptr i8, i8* %"$msgobj_4793", i32 137
  %"$msgobj_fname_4818" = bitcast i8* %"$msgobj_fname_4817" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4816", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4818", align 8
  %"$msgobj_td_4819" = getelementptr i8, i8* %"$msgobj_4793", i32 153
  %"$msgobj_td_4820" = bitcast i8* %"$msgobj_td_4819" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4820", align 8
  %"$recordOwner_4821" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$msgobj_v_4822" = getelementptr i8, i8* %"$msgobj_4793", i32 161
  %"$msgobj_v_4823" = bitcast i8* %"$msgobj_v_4822" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4821", [20 x i8]* %"$msgobj_v_4823", align 1
  %"$msgobj_fname_4825" = getelementptr i8, i8* %"$msgobj_4793", i32 181
  %"$msgobj_fname_4826" = bitcast i8* %"$msgobj_fname_4825" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4824", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4826", align 8
  %"$msgobj_td_4827" = getelementptr i8, i8* %"$msgobj_4793", i32 197
  %"$msgobj_td_4828" = bitcast i8* %"$msgobj_td_4827" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_4828", align 8
  %"$msgobj_v_4829" = getelementptr i8, i8* %"$msgobj_4793", i32 205
  %"$msgobj_v_4830" = bitcast i8* %"$msgobj_v_4829" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4830", align 8
  %"$msgobj_fname_4832" = getelementptr i8, i8* %"$msgobj_4793", i32 221
  %"$msgobj_fname_4833" = bitcast i8* %"$msgobj_fname_4832" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4831", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4833", align 8
  %"$msgobj_td_4834" = getelementptr i8, i8* %"$msgobj_4793", i32 237
  %"$msgobj_td_4835" = bitcast i8* %"$msgobj_td_4834" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_4835", align 8
  %"$msgobj_v_4836" = getelementptr i8, i8* %"$msgobj_4793", i32 245
  %"$msgobj_v_4837" = bitcast i8* %"$msgobj_v_4836" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4837", align 1
  store i8* %"$msgobj_4793", i8** %m10, align 8, !dbg !453
  %"$gasrem_4839" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4840" = icmp ugt i64 1, %"$gasrem_4839"
  br i1 %"$gascmp_4840", label %"$out_of_gas_4841", label %"$have_gas_4842"

"$out_of_gas_4841":                               ; preds = %"$have_gas_4791"
  call void @_out_of_gas()
  br label %"$have_gas_4842"

"$have_gas_4842":                                 ; preds = %"$out_of_gas_4841", %"$have_gas_4791"
  %"$consume_4843" = sub i64 %"$gasrem_4839", 1
  store i64 %"$consume_4843", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_105" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4844" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4845" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4844", 0
  %"$ud-registry.oneMsg_envptr_4846" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4844", 1
  %"$m_4847" = load i8*, i8** %m10, align 8
  %"$ud-registry.oneMsg_call_4848" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4845"(i8* %"$ud-registry.oneMsg_envptr_4846", i8* %"$m_4847"), !dbg !454
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4848", %TName_List_Message** %"$ud-registry.oneMsg_105", align 8, !dbg !454
  %"$$ud-registry.oneMsg_105_4849" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_105", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_105_4849", %TName_List_Message** %msgs9, align 8, !dbg !454
  %"$msgs_4850" = load %TName_List_Message*, %TName_List_Message** %msgs9, align 8
  %"$$msgs_4850_4851" = bitcast %TName_List_Message* %"$msgs_4850" to i8*
  %"$_literal_cost_call_4852" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_4850_4851")
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
  %"$msgs_4859" = load %TName_List_Message*, %TName_List_Message** %msgs9, align 8
  call void @_send(i8* %"$execptr_load_4858", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_4859"), !dbg !455
  br label %"$matchsucc_4491"

"$empty_default_4495":                            ; preds = %"$have_gas_4489"
  br label %"$matchsucc_4491"

"$matchsucc_4491":                                ; preds = %"$have_gas_4856", %"$have_gas_4735", %"$empty_default_4495"
  ret void
}

define void @assign(i8* %0) !dbg !456 {
entry:
  %"$_amount_4861" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4862" = bitcast i8* %"$_amount_4861" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4862", align 8
  %"$_origin_4863" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4864" = bitcast i8* %"$_origin_4863" to [20 x i8]*
  %"$_sender_4865" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4866" = bitcast i8* %"$_sender_4865" to [20 x i8]*
  %"$parent_4867" = getelementptr i8, i8* %0, i32 56
  %"$parent_4868" = bitcast i8* %"$parent_4867" to [32 x i8]*
  %"$label_4869" = getelementptr i8, i8* %0, i32 88
  %"$label_4870" = bitcast i8* %"$label_4869" to %String*
  %label = load %String, %String* %"$label_4870", align 8
  %"$owner_4871" = getelementptr i8, i8* %0, i32 104
  %"$owner_4872" = bitcast i8* %"$owner_4871" to [20 x i8]*
  call void @"$assign_4383"(%Uint128 %_amount, [20 x i8]* %"$_origin_4864", [20 x i8]* %"$_sender_4866", [32 x i8]* %"$parent_4868", %String %label, [20 x i8]* %"$owner_4872"), !dbg !457
  ret void
}

define internal void @"$bestow_4873"(%Uint128 %_amount, [20 x i8]* %"$_origin_4874", [20 x i8]* %"$_sender_4875", %String %label, [20 x i8]* %"$owner_4876", [20 x i8]* %"$resolver_4877") !dbg !458 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4874", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4875", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_4876", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_4877", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_4879" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_4880" = call i8* @_fetch_field(i8* %"$execptr_load_4879", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_4878", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i32 1), !dbg !459
  %"$currentAdmins_4881" = bitcast i8* %"$currentAdmins_call_4880" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_4881", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_4882" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_4882_4883" = bitcast %TName_List_ByStr20* %"$currentAdmins_4882" to i8*
  %"$_literal_cost_call_4884" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$currentAdmins_4882_4883")
  %"$gasadd_4885" = add i64 %"$_literal_cost_call_4884", 0
  %"$gasrem_4886" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4887" = icmp ugt i64 %"$gasadd_4885", %"$gasrem_4886"
  br i1 %"$gascmp_4887", label %"$out_of_gas_4888", label %"$have_gas_4889"

"$out_of_gas_4888":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4889"

"$have_gas_4889":                                 ; preds = %"$out_of_gas_4888", %entry
  %"$consume_4890" = sub i64 %"$gasrem_4886", %"$gasadd_4885"
  store i64 %"$consume_4890", i64* @_gasrem, align 8
  %"$gasrem_4891" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4892" = icmp ugt i64 1, %"$gasrem_4891"
  br i1 %"$gascmp_4892", label %"$out_of_gas_4893", label %"$have_gas_4894"

"$out_of_gas_4893":                               ; preds = %"$have_gas_4889"
  call void @_out_of_gas()
  br label %"$have_gas_4894"

"$have_gas_4894":                                 ; preds = %"$out_of_gas_4893", %"$have_gas_4889"
  %"$consume_4895" = sub i64 %"$gasrem_4891", 1
  store i64 %"$consume_4895", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_4896" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4897" = icmp ugt i64 1, %"$gasrem_4896"
  br i1 %"$gascmp_4897", label %"$out_of_gas_4898", label %"$have_gas_4899"

"$out_of_gas_4898":                               ; preds = %"$have_gas_4894"
  call void @_out_of_gas()
  br label %"$have_gas_4899"

"$have_gas_4899":                                 ; preds = %"$out_of_gas_4898", %"$have_gas_4894"
  %"$consume_4900" = sub i64 %"$gasrem_4896", 1
  store i64 %"$consume_4900", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_129" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_4901" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_4902" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4901", 0
  %"$ud-registry.parentLabelToNode_envptr_4903" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4901", 1
  %"$ud-registry.parentLabelToNode_rootNode_4904" = alloca [32 x i8], align 1
  %"$rootNode_4905" = load [32 x i8], [32 x i8]* @rootNode, align 1
  store [32 x i8] %"$rootNode_4905", [32 x i8]* %"$ud-registry.parentLabelToNode_rootNode_4904", align 1
  %"$ud-registry.parentLabelToNode_call_4906" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_4902"(i8* %"$ud-registry.parentLabelToNode_envptr_4903", [32 x i8]* %"$ud-registry.parentLabelToNode_rootNode_4904"), !dbg !460
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_4906", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_129", align 8, !dbg !460
  %"$ud-registry.parentLabelToNode_130" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_129_4907" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_129", align 8
  %"$$ud-registry.parentLabelToNode_129_fptr_4908" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_129_4907", 0
  %"$$ud-registry.parentLabelToNode_129_envptr_4909" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_129_4907", 1
  %"$$ud-registry.parentLabelToNode_129_retalloca_4910" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_129_fptr_4908"(i8* %"$$ud-registry.parentLabelToNode_129_envptr_4909", [32 x i8]* %"$$ud-registry.parentLabelToNode_129_retalloca_4910", %String %label), !dbg !460
  %"$$ud-registry.parentLabelToNode_129_ret_4911" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_129_retalloca_4910", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_129_ret_4911", [32 x i8]* %"$ud-registry.parentLabelToNode_130", align 1, !dbg !460
  %"$$ud-registry.parentLabelToNode_130_4912" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_130", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_130_4912", [32 x i8]* %node, align 1, !dbg !460
  %recordExists = alloca %TName_Bool*, align 8
  %"$indices_buf_4913_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4913_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4913_salloc_load", i64 32)
  %"$indices_buf_4913_salloc" = bitcast i8* %"$indices_buf_4913_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4913" = bitcast [32 x i8]* %"$indices_buf_4913_salloc" to i8*
  %"$node_4914" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4915" = getelementptr i8, i8* %"$indices_buf_4913", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4915" to [32 x i8]*
  store [32 x i8] %"$node_4914", [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4917" = load i8*, i8** @_execptr, align 8
  %"$recordExists_call_4918" = call i8* @_fetch_field(i8* %"$execptr_load_4917", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4916", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4913", i32 0), !dbg !461
  %"$recordExists_4919" = bitcast i8* %"$recordExists_call_4918" to %TName_Bool*
  store %TName_Bool* %"$recordExists_4919", %TName_Bool** %recordExists, align 8
  %"$recordExists_4920" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$$recordExists_4920_4921" = bitcast %TName_Bool* %"$recordExists_4920" to i8*
  %"$_literal_cost_call_4922" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", i8* %"$$recordExists_4920_4921")
  %"$gasadd_4923" = add i64 %"$_literal_cost_call_4922", 0
  %"$gasadd_4924" = add i64 %"$gasadd_4923", 1
  %"$gasrem_4925" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4926" = icmp ugt i64 %"$gasadd_4924", %"$gasrem_4925"
  br i1 %"$gascmp_4926", label %"$out_of_gas_4927", label %"$have_gas_4928"

"$out_of_gas_4927":                               ; preds = %"$have_gas_4899"
  call void @_out_of_gas()
  br label %"$have_gas_4928"

"$have_gas_4928":                                 ; preds = %"$out_of_gas_4927", %"$have_gas_4899"
  %"$consume_4929" = sub i64 %"$gasrem_4925", %"$gasadd_4924"
  store i64 %"$consume_4929", i64* @_gasrem, align 8
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_4930_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4930_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4930_salloc_load", i64 32)
  %"$indices_buf_4930_salloc" = bitcast i8* %"$indices_buf_4930_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4930" = bitcast [32 x i8]* %"$indices_buf_4930_salloc" to i8*
  %"$node_4931" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4932" = getelementptr i8, i8* %"$indices_buf_4930", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4932" to [32 x i8]*
  store [32 x i8] %"$node_4931", [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4934" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_4935" = call i8* @_fetch_field(i8* %"$execptr_load_4934", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4933", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4930", i32 1), !dbg !462
  %"$maybeRecord_4936" = bitcast i8* %"$maybeRecord_call_4935" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4936", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_4937" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_4937_4938" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4937" to i8*
  %"$_literal_cost_call_4939" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_4937_4938")
  %"$gasadd_4940" = add i64 %"$_literal_cost_call_4939", 0
  %"$gasadd_4941" = add i64 %"$gasadd_4940", 1
  %"$gasrem_4942" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4943" = icmp ugt i64 %"$gasadd_4941", %"$gasrem_4942"
  br i1 %"$gascmp_4943", label %"$out_of_gas_4944", label %"$have_gas_4945"

"$out_of_gas_4944":                               ; preds = %"$have_gas_4928"
  call void @_out_of_gas()
  br label %"$have_gas_4945"

"$have_gas_4945":                                 ; preds = %"$out_of_gas_4944", %"$have_gas_4928"
  %"$consume_4946" = sub i64 %"$gasrem_4942", %"$gasadd_4941"
  store i64 %"$consume_4946", i64* @_gasrem, align 8
  %currentRegistrar = alloca [20 x i8], align 1
  %"$execptr_load_4948" = load i8*, i8** @_execptr, align 8
  %"$currentRegistrar_call_4949" = call i8* @_fetch_field(i8* %"$execptr_load_4948", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_4947", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i32 0, i8* null, i32 1), !dbg !463
  %"$currentRegistrar_4950" = bitcast i8* %"$currentRegistrar_call_4949" to [20 x i8]*
  %"$currentRegistrar_4951" = load [20 x i8], [20 x i8]* %"$currentRegistrar_4950", align 1
  store [20 x i8] %"$currentRegistrar_4951", [20 x i8]* %currentRegistrar, align 1
  %"$_literal_cost_currentRegistrar_4952" = alloca [20 x i8], align 1
  %"$currentRegistrar_4953" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_4953", [20 x i8]* %"$_literal_cost_currentRegistrar_4952", align 1
  %"$$_literal_cost_currentRegistrar_4952_4954" = bitcast [20 x i8]* %"$_literal_cost_currentRegistrar_4952" to i8*
  %"$_literal_cost_call_4955" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i8* %"$$_literal_cost_currentRegistrar_4952_4954")
  %"$gasadd_4956" = add i64 %"$_literal_cost_call_4955", 0
  %"$gasrem_4957" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4958" = icmp ugt i64 %"$gasadd_4956", %"$gasrem_4957"
  br i1 %"$gascmp_4958", label %"$out_of_gas_4959", label %"$have_gas_4960"

"$out_of_gas_4959":                               ; preds = %"$have_gas_4945"
  call void @_out_of_gas()
  br label %"$have_gas_4960"

"$have_gas_4960":                                 ; preds = %"$out_of_gas_4959", %"$have_gas_4945"
  %"$consume_4961" = sub i64 %"$gasrem_4957", %"$gasadd_4956"
  store i64 %"$consume_4961", i64* @_gasrem, align 8
  %"$gasrem_4962" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4963" = icmp ugt i64 1, %"$gasrem_4962"
  br i1 %"$gascmp_4963", label %"$out_of_gas_4964", label %"$have_gas_4965"

"$out_of_gas_4964":                               ; preds = %"$have_gas_4960"
  call void @_out_of_gas()
  br label %"$have_gas_4965"

"$have_gas_4965":                                 ; preds = %"$out_of_gas_4964", %"$have_gas_4960"
  %"$consume_4966" = sub i64 %"$gasrem_4962", 1
  store i64 %"$consume_4966", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_4967" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4968" = icmp ugt i64 1, %"$gasrem_4967"
  br i1 %"$gascmp_4968", label %"$out_of_gas_4969", label %"$have_gas_4970"

"$out_of_gas_4969":                               ; preds = %"$have_gas_4965"
  call void @_out_of_gas()
  br label %"$have_gas_4970"

"$have_gas_4970":                                 ; preds = %"$out_of_gas_4969", %"$have_gas_4965"
  %"$consume_4971" = sub i64 %"$gasrem_4967", 1
  store i64 %"$consume_4971", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_4972" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4973" = icmp ugt i64 1, %"$gasrem_4972"
  br i1 %"$gascmp_4973", label %"$out_of_gas_4974", label %"$have_gas_4975"

"$out_of_gas_4974":                               ; preds = %"$have_gas_4970"
  call void @_out_of_gas()
  br label %"$have_gas_4975"

"$have_gas_4975":                                 ; preds = %"$out_of_gas_4974", %"$have_gas_4970"
  %"$consume_4976" = sub i64 %"$gasrem_4972", 1
  store i64 %"$consume_4976", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_118" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_4977" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_4978" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_4977", 0
  %"$ud-registry.listByStr20Contains_envptr_4979" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_4977", 1
  %"$currentAdmins_4980" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_4981" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_4978"(i8* %"$ud-registry.listByStr20Contains_envptr_4979", %TName_List_ByStr20* %"$currentAdmins_4980"), !dbg !464
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_4981", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_118", align 8, !dbg !464
  %"$ud-registry.listByStr20Contains_119" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_118_4982" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_118", align 8
  %"$$ud-registry.listByStr20Contains_118_fptr_4983" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_118_4982", 0
  %"$$ud-registry.listByStr20Contains_118_envptr_4984" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_118_4982", 1
  %"$$ud-registry.listByStr20Contains_118__sender_4985" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_118__sender_4985", align 1
  %"$$ud-registry.listByStr20Contains_118_call_4986" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_118_fptr_4983"(i8* %"$$ud-registry.listByStr20Contains_118_envptr_4984", [20 x i8]* %"$$ud-registry.listByStr20Contains_118__sender_4985"), !dbg !464
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_118_call_4986", %TName_Bool** %"$ud-registry.listByStr20Contains_119", align 8, !dbg !464
  %"$$ud-registry.listByStr20Contains_119_4987" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_119", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_119_4987", %TName_Bool** %isSenderAdmin, align 8, !dbg !464
  %"$gasrem_4988" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4989" = icmp ugt i64 1, %"$gasrem_4988"
  br i1 %"$gascmp_4989", label %"$out_of_gas_4990", label %"$have_gas_4991"

"$out_of_gas_4990":                               ; preds = %"$have_gas_4975"
  call void @_out_of_gas()
  br label %"$have_gas_4991"

"$have_gas_4991":                                 ; preds = %"$out_of_gas_4990", %"$have_gas_4975"
  %"$consume_4992" = sub i64 %"$gasrem_4988", 1
  store i64 %"$consume_4992", i64* @_gasrem, align 8
  %isSenderRegistrar = alloca %TName_Bool*, align 8
  %"$execptr_load_4993" = load i8*, i8** @_execptr, align 8
  %"$eq_currentRegistrar_4994" = alloca [20 x i8], align 1
  %"$currentRegistrar_4995" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_4995", [20 x i8]* %"$eq_currentRegistrar_4994", align 1
  %"$$eq_currentRegistrar_4994_4996" = bitcast [20 x i8]* %"$eq_currentRegistrar_4994" to i8*
  %"$eq__sender_4997" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_4997", align 1
  %"$$eq__sender_4997_4998" = bitcast [20 x i8]* %"$eq__sender_4997" to i8*
  %"$eq_call_4999" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_4993", i32 20, i8* %"$$eq_currentRegistrar_4994_4996", i8* %"$$eq__sender_4997_4998")
  store %TName_Bool* %"$eq_call_4999", %TName_Bool** %isSenderRegistrar, align 8, !dbg !465
  %"$gasrem_5000" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5001" = icmp ugt i64 1, %"$gasrem_5000"
  br i1 %"$gascmp_5001", label %"$out_of_gas_5002", label %"$have_gas_5003"

"$out_of_gas_5002":                               ; preds = %"$have_gas_4991"
  call void @_out_of_gas()
  br label %"$have_gas_5003"

"$have_gas_5003":                                 ; preds = %"$out_of_gas_5002", %"$have_gas_4991"
  %"$consume_5004" = sub i64 %"$gasrem_5000", 1
  store i64 %"$consume_5004", i64* @_gasrem, align 8
  %isOkSender = alloca %TName_Bool*, align 8
  %"$gasrem_5005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5006" = icmp ugt i64 1, %"$gasrem_5005"
  br i1 %"$gascmp_5006", label %"$out_of_gas_5007", label %"$have_gas_5008"

"$out_of_gas_5007":                               ; preds = %"$have_gas_5003"
  call void @_out_of_gas()
  br label %"$have_gas_5008"

"$have_gas_5008":                                 ; preds = %"$out_of_gas_5007", %"$have_gas_5003"
  %"$consume_5009" = sub i64 %"$gasrem_5005", 1
  store i64 %"$consume_5009", i64* @_gasrem, align 8
  %"$BoolUtils.orb_120" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_5010" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_5011" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5010", 0
  %"$BoolUtils.orb_envptr_5012" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5010", 1
  %"$isSenderRegistrar_5013" = load %TName_Bool*, %TName_Bool** %isSenderRegistrar, align 8
  %"$BoolUtils.orb_call_5014" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_5011"(i8* %"$BoolUtils.orb_envptr_5012", %TName_Bool* %"$isSenderRegistrar_5013"), !dbg !466
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_5014", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_120", align 8, !dbg !466
  %"$BoolUtils.orb_121" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_120_5015" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_120", align 8
  %"$$BoolUtils.orb_120_fptr_5016" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_120_5015", 0
  %"$$BoolUtils.orb_120_envptr_5017" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_120_5015", 1
  %"$isSenderAdmin_5018" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$$BoolUtils.orb_120_call_5019" = call %TName_Bool* %"$$BoolUtils.orb_120_fptr_5016"(i8* %"$$BoolUtils.orb_120_envptr_5017", %TName_Bool* %"$isSenderAdmin_5018"), !dbg !466
  store %TName_Bool* %"$$BoolUtils.orb_120_call_5019", %TName_Bool** %"$BoolUtils.orb_121", align 8, !dbg !466
  %"$$BoolUtils.orb_121_5020" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_121", align 8
  store %TName_Bool* %"$$BoolUtils.orb_121_5020", %TName_Bool** %isOkSender, align 8, !dbg !466
  %"$gasrem_5021" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5022" = icmp ugt i64 1, %"$gasrem_5021"
  br i1 %"$gascmp_5022", label %"$out_of_gas_5023", label %"$have_gas_5024"

"$out_of_gas_5023":                               ; preds = %"$have_gas_5008"
  call void @_out_of_gas()
  br label %"$have_gas_5024"

"$have_gas_5024":                                 ; preds = %"$out_of_gas_5023", %"$have_gas_5008"
  %"$consume_5025" = sub i64 %"$gasrem_5021", 1
  store i64 %"$consume_5025", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_5026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5027" = icmp ugt i64 1, %"$gasrem_5026"
  br i1 %"$gascmp_5027", label %"$out_of_gas_5028", label %"$have_gas_5029"

"$out_of_gas_5028":                               ; preds = %"$have_gas_5024"
  call void @_out_of_gas()
  br label %"$have_gas_5029"

"$have_gas_5029":                                 ; preds = %"$out_of_gas_5028", %"$have_gas_5024"
  %"$consume_5030" = sub i64 %"$gasrem_5026", 1
  store i64 %"$consume_5030", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_122" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_5031" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_5032" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5031", 0
  %"$ud-registry.recordMemberOwner_envptr_5033" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5031", 1
  %"$maybeRecord_5034" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_5035" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_5032"(i8* %"$ud-registry.recordMemberOwner_envptr_5033", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5035", %TName_Option_ud-registry.Record* %"$maybeRecord_5034"), !dbg !467
  %"$ud-registry.recordMemberOwner_ret_5036" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5035", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_5036", [20 x i8]* %"$ud-registry.recordMemberOwner_122", align 1, !dbg !467
  %"$$ud-registry.recordMemberOwner_122_5037" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_122", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_122_5037", [20 x i8]* %recordOwner, align 1, !dbg !467
  %"$gasrem_5038" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5039" = icmp ugt i64 1, %"$gasrem_5038"
  br i1 %"$gascmp_5039", label %"$out_of_gas_5040", label %"$have_gas_5041"

"$out_of_gas_5040":                               ; preds = %"$have_gas_5029"
  call void @_out_of_gas()
  br label %"$have_gas_5041"

"$have_gas_5041":                                 ; preds = %"$out_of_gas_5040", %"$have_gas_5029"
  %"$consume_5042" = sub i64 %"$gasrem_5038", 1
  store i64 %"$consume_5042", i64* @_gasrem, align 8
  %recordIsUnowned = alloca %TName_Bool*, align 8
  %"$execptr_load_5043" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5044" = alloca [20 x i8], align 1
  %"$recordOwner_5045" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5045", [20 x i8]* %"$eq_recordOwner_5044", align 1
  %"$$eq_recordOwner_5044_5046" = bitcast [20 x i8]* %"$eq_recordOwner_5044" to i8*
  %"$eq_ud-registry.zeroByStr20_5047" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5048" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5048", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5047", align 1
  %"$$eq_ud-registry.zeroByStr20_5047_5049" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5047" to i8*
  %"$eq_call_5050" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5043", i32 20, i8* %"$$eq_recordOwner_5044_5046", i8* %"$$eq_ud-registry.zeroByStr20_5047_5049")
  store %TName_Bool* %"$eq_call_5050", %TName_Bool** %recordIsUnowned, align 8, !dbg !468
  %"$gasrem_5051" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5052" = icmp ugt i64 1, %"$gasrem_5051"
  br i1 %"$gascmp_5052", label %"$out_of_gas_5053", label %"$have_gas_5054"

"$out_of_gas_5053":                               ; preds = %"$have_gas_5041"
  call void @_out_of_gas()
  br label %"$have_gas_5054"

"$have_gas_5054":                                 ; preds = %"$out_of_gas_5053", %"$have_gas_5041"
  %"$consume_5055" = sub i64 %"$gasrem_5051", 1
  store i64 %"$consume_5055", i64* @_gasrem, align 8
  %recordIsOwnedByRegistrar = alloca %TName_Bool*, align 8
  %"$execptr_load_5056" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5057" = alloca [20 x i8], align 1
  %"$recordOwner_5058" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5058", [20 x i8]* %"$eq_recordOwner_5057", align 1
  %"$$eq_recordOwner_5057_5059" = bitcast [20 x i8]* %"$eq_recordOwner_5057" to i8*
  %"$eq_currentRegistrar_5060" = alloca [20 x i8], align 1
  %"$currentRegistrar_5061" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5061", [20 x i8]* %"$eq_currentRegistrar_5060", align 1
  %"$$eq_currentRegistrar_5060_5062" = bitcast [20 x i8]* %"$eq_currentRegistrar_5060" to i8*
  %"$eq_call_5063" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5056", i32 20, i8* %"$$eq_recordOwner_5057_5059", i8* %"$$eq_currentRegistrar_5060_5062")
  store %TName_Bool* %"$eq_call_5063", %TName_Bool** %recordIsOwnedByRegistrar, align 8, !dbg !469
  %"$gasrem_5064" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5065" = icmp ugt i64 1, %"$gasrem_5064"
  br i1 %"$gascmp_5065", label %"$out_of_gas_5066", label %"$have_gas_5067"

"$out_of_gas_5066":                               ; preds = %"$have_gas_5054"
  call void @_out_of_gas()
  br label %"$have_gas_5067"

"$have_gas_5067":                                 ; preds = %"$out_of_gas_5066", %"$have_gas_5054"
  %"$consume_5068" = sub i64 %"$gasrem_5064", 1
  store i64 %"$consume_5068", i64* @_gasrem, align 8
  %isRegistrarSenderAndOwned = alloca %TName_Bool*, align 8
  %"$gasrem_5069" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5070" = icmp ugt i64 1, %"$gasrem_5069"
  br i1 %"$gascmp_5070", label %"$out_of_gas_5071", label %"$have_gas_5072"

"$out_of_gas_5071":                               ; preds = %"$have_gas_5067"
  call void @_out_of_gas()
  br label %"$have_gas_5072"

"$have_gas_5072":                                 ; preds = %"$out_of_gas_5071", %"$have_gas_5067"
  %"$consume_5073" = sub i64 %"$gasrem_5069", 1
  store i64 %"$consume_5073", i64* @_gasrem, align 8
  %"$BoolUtils.andb_123" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5074" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5075" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5074", 0
  %"$BoolUtils.andb_envptr_5076" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5074", 1
  %"$recordIsOwnedByRegistrar_5077" = load %TName_Bool*, %TName_Bool** %recordIsOwnedByRegistrar, align 8
  %"$BoolUtils.andb_call_5078" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5075"(i8* %"$BoolUtils.andb_envptr_5076", %TName_Bool* %"$recordIsOwnedByRegistrar_5077"), !dbg !470
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5078", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_123", align 8, !dbg !470
  %"$BoolUtils.andb_124" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_123_5079" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_123", align 8
  %"$$BoolUtils.andb_123_fptr_5080" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_123_5079", 0
  %"$$BoolUtils.andb_123_envptr_5081" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_123_5079", 1
  %"$isSenderRegistrar_5082" = load %TName_Bool*, %TName_Bool** %isSenderRegistrar, align 8
  %"$$BoolUtils.andb_123_call_5083" = call %TName_Bool* %"$$BoolUtils.andb_123_fptr_5080"(i8* %"$$BoolUtils.andb_123_envptr_5081", %TName_Bool* %"$isSenderRegistrar_5082"), !dbg !470
  store %TName_Bool* %"$$BoolUtils.andb_123_call_5083", %TName_Bool** %"$BoolUtils.andb_124", align 8, !dbg !470
  %"$$BoolUtils.andb_124_5084" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_124", align 8
  store %TName_Bool* %"$$BoolUtils.andb_124_5084", %TName_Bool** %isRegistrarSenderAndOwned, align 8, !dbg !470
  %"$gasrem_5085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5086" = icmp ugt i64 1, %"$gasrem_5085"
  br i1 %"$gascmp_5086", label %"$out_of_gas_5087", label %"$have_gas_5088"

"$out_of_gas_5087":                               ; preds = %"$have_gas_5072"
  call void @_out_of_gas()
  br label %"$have_gas_5088"

"$have_gas_5088":                                 ; preds = %"$out_of_gas_5087", %"$have_gas_5072"
  %"$consume_5089" = sub i64 %"$gasrem_5085", 1
  store i64 %"$consume_5089", i64* @_gasrem, align 8
  %isOkRecordOwner = alloca %TName_Bool*, align 8
  %"$gasrem_5090" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5091" = icmp ugt i64 1, %"$gasrem_5090"
  br i1 %"$gascmp_5091", label %"$out_of_gas_5092", label %"$have_gas_5093"

"$out_of_gas_5092":                               ; preds = %"$have_gas_5088"
  call void @_out_of_gas()
  br label %"$have_gas_5093"

"$have_gas_5093":                                 ; preds = %"$out_of_gas_5092", %"$have_gas_5088"
  %"$consume_5094" = sub i64 %"$gasrem_5090", 1
  store i64 %"$consume_5094", i64* @_gasrem, align 8
  %"$BoolUtils.orb_125" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_5095" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_5096" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5095", 0
  %"$BoolUtils.orb_envptr_5097" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5095", 1
  %"$recordIsUnowned_5098" = load %TName_Bool*, %TName_Bool** %recordIsUnowned, align 8
  %"$BoolUtils.orb_call_5099" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_5096"(i8* %"$BoolUtils.orb_envptr_5097", %TName_Bool* %"$recordIsUnowned_5098"), !dbg !471
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_5099", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_125", align 8, !dbg !471
  %"$BoolUtils.orb_126" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_125_5100" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_125", align 8
  %"$$BoolUtils.orb_125_fptr_5101" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_125_5100", 0
  %"$$BoolUtils.orb_125_envptr_5102" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_125_5100", 1
  %"$isRegistrarSenderAndOwned_5103" = load %TName_Bool*, %TName_Bool** %isRegistrarSenderAndOwned, align 8
  %"$$BoolUtils.orb_125_call_5104" = call %TName_Bool* %"$$BoolUtils.orb_125_fptr_5101"(i8* %"$$BoolUtils.orb_125_envptr_5102", %TName_Bool* %"$isRegistrarSenderAndOwned_5103"), !dbg !471
  store %TName_Bool* %"$$BoolUtils.orb_125_call_5104", %TName_Bool** %"$BoolUtils.orb_126", align 8, !dbg !471
  %"$$BoolUtils.orb_126_5105" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_126", align 8
  store %TName_Bool* %"$$BoolUtils.orb_126_5105", %TName_Bool** %isOkRecordOwner, align 8, !dbg !471
  %"$gasrem_5106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5107" = icmp ugt i64 1, %"$gasrem_5106"
  br i1 %"$gascmp_5107", label %"$out_of_gas_5108", label %"$have_gas_5109"

"$out_of_gas_5108":                               ; preds = %"$have_gas_5093"
  call void @_out_of_gas()
  br label %"$have_gas_5109"

"$have_gas_5109":                                 ; preds = %"$out_of_gas_5108", %"$have_gas_5093"
  %"$consume_5110" = sub i64 %"$gasrem_5106", 1
  store i64 %"$consume_5110", i64* @_gasrem, align 8
  %"$BoolUtils.andb_127" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5111" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5112" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5111", 0
  %"$BoolUtils.andb_envptr_5113" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5111", 1
  %"$isOkSender_5114" = load %TName_Bool*, %TName_Bool** %isOkSender, align 8
  %"$BoolUtils.andb_call_5115" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5112"(i8* %"$BoolUtils.andb_envptr_5113", %TName_Bool* %"$isOkSender_5114"), !dbg !472
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5115", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127", align 8, !dbg !472
  %"$BoolUtils.andb_128" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_127_5116" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127", align 8
  %"$$BoolUtils.andb_127_fptr_5117" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_5116", 0
  %"$$BoolUtils.andb_127_envptr_5118" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_5116", 1
  %"$isOkRecordOwner_5119" = load %TName_Bool*, %TName_Bool** %isOkRecordOwner, align 8
  %"$$BoolUtils.andb_127_call_5120" = call %TName_Bool* %"$$BoolUtils.andb_127_fptr_5117"(i8* %"$$BoolUtils.andb_127_envptr_5118", %TName_Bool* %"$isOkRecordOwner_5119"), !dbg !472
  store %TName_Bool* %"$$BoolUtils.andb_127_call_5120", %TName_Bool** %"$BoolUtils.andb_128", align 8, !dbg !472
  %"$$BoolUtils.andb_128_5121" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_128", align 8
  store %TName_Bool* %"$$BoolUtils.andb_128_5121", %TName_Bool** %isOk, align 8, !dbg !472
  %"$gasrem_5122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5123" = icmp ugt i64 2, %"$gasrem_5122"
  br i1 %"$gascmp_5123", label %"$out_of_gas_5124", label %"$have_gas_5125"

"$out_of_gas_5124":                               ; preds = %"$have_gas_5109"
  call void @_out_of_gas()
  br label %"$have_gas_5125"

"$have_gas_5125":                                 ; preds = %"$out_of_gas_5124", %"$have_gas_5109"
  %"$consume_5126" = sub i64 %"$gasrem_5122", 2
  store i64 %"$consume_5126", i64* @_gasrem, align 8
  %"$isOk_5128" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5129" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5128", i32 0, i32 0
  %"$isOk_tag_5130" = load i8, i8* %"$isOk_tag_5129", align 1
  switch i8 %"$isOk_tag_5130", label %"$empty_default_5131" [
    i8 0, label %"$True_5132"
    i8 1, label %"$False_5245"
  ], !dbg !473

"$True_5132":                                     ; preds = %"$have_gas_5125"
  %"$isOk_5133" = bitcast %TName_Bool* %"$isOk_5128" to %CName_True*
  %"$gasrem_5134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5135" = icmp ugt i64 2, %"$gasrem_5134"
  br i1 %"$gascmp_5135", label %"$out_of_gas_5136", label %"$have_gas_5137"

"$out_of_gas_5136":                               ; preds = %"$True_5132"
  call void @_out_of_gas()
  br label %"$have_gas_5137"

"$have_gas_5137":                                 ; preds = %"$out_of_gas_5136", %"$True_5132"
  %"$consume_5138" = sub i64 %"$gasrem_5134", 2
  store i64 %"$consume_5138", i64* @_gasrem, align 8
  %"$recordExists_5140" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$recordExists_tag_5141" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$recordExists_5140", i32 0, i32 0
  %"$recordExists_tag_5142" = load i8, i8* %"$recordExists_tag_5141", align 1
  switch i8 %"$recordExists_tag_5142", label %"$default_5143" [
    i8 1, label %"$False_5144"
  ], !dbg !474

"$False_5144":                                    ; preds = %"$have_gas_5137"
  %"$recordExists_5145" = bitcast %TName_Bool* %"$recordExists_5140" to %CName_False*
  %"$gasrem_5146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5147" = icmp ugt i64 1, %"$gasrem_5146"
  br i1 %"$gascmp_5147", label %"$out_of_gas_5148", label %"$have_gas_5149"

"$out_of_gas_5148":                               ; preds = %"$False_5144"
  call void @_out_of_gas()
  br label %"$have_gas_5149"

"$have_gas_5149":                                 ; preds = %"$out_of_gas_5148", %"$False_5144"
  %"$consume_5150" = sub i64 %"$gasrem_5146", 1
  store i64 %"$consume_5150", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5152" = icmp ugt i64 1, %"$gasrem_5151"
  br i1 %"$gascmp_5152", label %"$out_of_gas_5153", label %"$have_gas_5154"

"$out_of_gas_5153":                               ; preds = %"$have_gas_5149"
  call void @_out_of_gas()
  br label %"$have_gas_5154"

"$have_gas_5154":                                 ; preds = %"$out_of_gas_5153", %"$have_gas_5149"
  %"$consume_5155" = sub i64 %"$gasrem_5151", 1
  store i64 %"$consume_5155", i64* @_gasrem, align 8
  %"$ud-registry.eNewDomain_115" = alloca { i8* (i8*, %String)*, i8* }, align 8
  %"$ud-registry.eNewDomain_5156" = load { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain, align 8
  %"$ud-registry.eNewDomain_fptr_5157" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_5156", 0
  %"$ud-registry.eNewDomain_envptr_5158" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_5156", 1
  %"$ud-registry.eNewDomain_rootNode_5159" = alloca [32 x i8], align 1
  %"$rootNode_5160" = load [32 x i8], [32 x i8]* @rootNode, align 1
  store [32 x i8] %"$rootNode_5160", [32 x i8]* %"$ud-registry.eNewDomain_rootNode_5159", align 1
  %"$ud-registry.eNewDomain_call_5161" = call { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_fptr_5157"(i8* %"$ud-registry.eNewDomain_envptr_5158", [32 x i8]* %"$ud-registry.eNewDomain_rootNode_5159"), !dbg !477
  store { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_call_5161", { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_115", align 8, !dbg !477
  %"$ud-registry.eNewDomain_116" = alloca i8*, align 8
  %"$$ud-registry.eNewDomain_115_5162" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_115", align 8
  %"$$ud-registry.eNewDomain_115_fptr_5163" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_115_5162", 0
  %"$$ud-registry.eNewDomain_115_envptr_5164" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_115_5162", 1
  %"$$ud-registry.eNewDomain_115_call_5165" = call i8* %"$$ud-registry.eNewDomain_115_fptr_5163"(i8* %"$$ud-registry.eNewDomain_115_envptr_5164", %String %label), !dbg !477
  store i8* %"$$ud-registry.eNewDomain_115_call_5165", i8** %"$ud-registry.eNewDomain_116", align 8, !dbg !477
  %"$$ud-registry.eNewDomain_116_5166" = load i8*, i8** %"$ud-registry.eNewDomain_116", align 8
  store i8* %"$$ud-registry.eNewDomain_116_5166", i8** %e, align 8, !dbg !477
  %"$e_5167" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5169" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5167")
  %"$gasrem_5170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5171" = icmp ugt i64 %"$_literal_cost_call_5169", %"$gasrem_5170"
  br i1 %"$gascmp_5171", label %"$out_of_gas_5172", label %"$have_gas_5173"

"$out_of_gas_5172":                               ; preds = %"$have_gas_5154"
  call void @_out_of_gas()
  br label %"$have_gas_5173"

"$have_gas_5173":                                 ; preds = %"$out_of_gas_5172", %"$have_gas_5154"
  %"$consume_5174" = sub i64 %"$gasrem_5170", %"$_literal_cost_call_5169"
  store i64 %"$consume_5174", i64* @_gasrem, align 8
  %"$execptr_load_5175" = load i8*, i8** @_execptr, align 8
  %"$e_5176" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5175", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5176"), !dbg !480
  br label %"$matchsucc_5139"

"$default_5143":                                  ; preds = %"$have_gas_5137"
  br label %"$joinp_5"

"$joinp_5":                                       ; preds = %"$default_5143"
  br label %"$matchsucc_5139"

"$matchsucc_5139":                                ; preds = %"$have_gas_5173", %"$joinp_5"
  %"$gasrem_5177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5178" = icmp ugt i64 1, %"$gasrem_5177"
  br i1 %"$gascmp_5178", label %"$out_of_gas_5179", label %"$have_gas_5180"

"$out_of_gas_5179":                               ; preds = %"$matchsucc_5139"
  call void @_out_of_gas()
  br label %"$have_gas_5180"

"$have_gas_5180":                                 ; preds = %"$out_of_gas_5179", %"$matchsucc_5139"
  %"$consume_5181" = sub i64 %"$gasrem_5177", 1
  store i64 %"$consume_5181", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_5182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5183" = icmp ugt i64 1, %"$gasrem_5182"
  br i1 %"$gascmp_5183", label %"$out_of_gas_5184", label %"$have_gas_5185"

"$out_of_gas_5184":                               ; preds = %"$have_gas_5180"
  call void @_out_of_gas()
  br label %"$have_gas_5185"

"$have_gas_5185":                                 ; preds = %"$out_of_gas_5184", %"$have_gas_5180"
  %"$consume_5186" = sub i64 %"$gasrem_5182", 1
  store i64 %"$consume_5186", i64* @_gasrem, align 8
  %"$adtval_5187_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_5187_salloc" = call i8* @_salloc(i8* %"$adtval_5187_load", i64 41)
  %"$adtval_5187" = bitcast i8* %"$adtval_5187_salloc" to %CName_ud-registry.Record*
  %"$adtgep_5188" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5187", i32 0, i32 0
  store i8 0, i8* %"$adtgep_5188", align 1
  %"$adtgep_5189" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5187", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_5189", align 1
  %"$adtgep_5190" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5187", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_5190", align 1
  %"$adtptr_5191" = bitcast %CName_ud-registry.Record* %"$adtval_5187" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_5191", %TName_ud-registry.Record** %newRecord, align 8, !dbg !481
  %"$newRecord_5192" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_5192_5193" = bitcast %TName_ud-registry.Record* %"$newRecord_5192" to i8*
  %"$_literal_cost_call_5194" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_5192_5193")
  %"$gasadd_5195" = add i64 %"$_literal_cost_call_5194", 1
  %"$gasrem_5196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5197" = icmp ugt i64 %"$gasadd_5195", %"$gasrem_5196"
  br i1 %"$gascmp_5197", label %"$out_of_gas_5198", label %"$have_gas_5199"

"$out_of_gas_5198":                               ; preds = %"$have_gas_5185"
  call void @_out_of_gas()
  br label %"$have_gas_5199"

"$have_gas_5199":                                 ; preds = %"$out_of_gas_5198", %"$have_gas_5185"
  %"$consume_5200" = sub i64 %"$gasrem_5196", %"$gasadd_5195"
  store i64 %"$consume_5200", i64* @_gasrem, align 8
  %"$indices_buf_5201_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5201_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5201_salloc_load", i64 32)
  %"$indices_buf_5201_salloc" = bitcast i8* %"$indices_buf_5201_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5201" = bitcast [32 x i8]* %"$indices_buf_5201_salloc" to i8*
  %"$node_5202" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5203" = getelementptr i8, i8* %"$indices_buf_5201", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_5203" to [32 x i8]*
  store [32 x i8] %"$node_5202", [32 x i8]* %indices_cast2, align 1
  %"$execptr_load_5204" = load i8*, i8** @_execptr, align 8
  %"$newRecord_5206" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_5207" = bitcast %TName_ud-registry.Record* %"$newRecord_5206" to i8*
  call void @_update_field(i8* %"$execptr_load_5204", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5205", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_5201", i8* %"$update_value_5207"), !dbg !482
  %"$gasrem_5208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5209" = icmp ugt i64 1, %"$gasrem_5208"
  br i1 %"$gascmp_5209", label %"$out_of_gas_5210", label %"$have_gas_5211"

"$out_of_gas_5210":                               ; preds = %"$have_gas_5199"
  call void @_out_of_gas()
  br label %"$have_gas_5211"

"$have_gas_5211":                                 ; preds = %"$out_of_gas_5210", %"$have_gas_5199"
  %"$consume_5212" = sub i64 %"$gasrem_5208", 1
  store i64 %"$consume_5212", i64* @_gasrem, align 8
  %e3 = alloca i8*, align 8
  %"$gasrem_5213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5214" = icmp ugt i64 1, %"$gasrem_5213"
  br i1 %"$gascmp_5214", label %"$out_of_gas_5215", label %"$have_gas_5216"

"$out_of_gas_5215":                               ; preds = %"$have_gas_5211"
  call void @_out_of_gas()
  br label %"$have_gas_5216"

"$have_gas_5216":                                 ; preds = %"$out_of_gas_5215", %"$have_gas_5211"
  %"$consume_5217" = sub i64 %"$gasrem_5213", 1
  store i64 %"$consume_5217", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_112" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_5218" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_5219" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5218", 0
  %"$ud-registry.eConfigured_envptr_5220" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5218", 1
  %"$ud-registry.eConfigured_node_5221" = alloca [32 x i8], align 1
  %"$node_5222" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_5222", [32 x i8]* %"$ud-registry.eConfigured_node_5221", align 1
  %"$ud-registry.eConfigured_call_5223" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_5219"(i8* %"$ud-registry.eConfigured_envptr_5220", [32 x i8]* %"$ud-registry.eConfigured_node_5221"), !dbg !483
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_5223", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_112", align 8, !dbg !483
  %"$ud-registry.eConfigured_113" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_112_5224" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_112", align 8
  %"$$ud-registry.eConfigured_112_fptr_5225" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_112_5224", 0
  %"$$ud-registry.eConfigured_112_envptr_5226" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_112_5224", 1
  %"$$ud-registry.eConfigured_112_owner_5227" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_112_owner_5227", align 1
  %"$$ud-registry.eConfigured_112_call_5228" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_112_fptr_5225"(i8* %"$$ud-registry.eConfigured_112_envptr_5226", [20 x i8]* %"$$ud-registry.eConfigured_112_owner_5227"), !dbg !483
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_112_call_5228", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_113", align 8, !dbg !483
  %"$ud-registry.eConfigured_114" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_113_5229" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_113", align 8
  %"$$ud-registry.eConfigured_113_fptr_5230" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_113_5229", 0
  %"$$ud-registry.eConfigured_113_envptr_5231" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_113_5229", 1
  %"$$ud-registry.eConfigured_113_resolver_5232" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_113_resolver_5232", align 1
  %"$$ud-registry.eConfigured_113_call_5233" = call i8* %"$$ud-registry.eConfigured_113_fptr_5230"(i8* %"$$ud-registry.eConfigured_113_envptr_5231", [20 x i8]* %"$$ud-registry.eConfigured_113_resolver_5232"), !dbg !483
  store i8* %"$$ud-registry.eConfigured_113_call_5233", i8** %"$ud-registry.eConfigured_114", align 8, !dbg !483
  %"$$ud-registry.eConfigured_114_5234" = load i8*, i8** %"$ud-registry.eConfigured_114", align 8
  store i8* %"$$ud-registry.eConfigured_114_5234", i8** %e3, align 8, !dbg !483
  %"$e_5235" = load i8*, i8** %e3, align 8
  %"$_literal_cost_call_5237" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5235")
  %"$gasrem_5238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5239" = icmp ugt i64 %"$_literal_cost_call_5237", %"$gasrem_5238"
  br i1 %"$gascmp_5239", label %"$out_of_gas_5240", label %"$have_gas_5241"

"$out_of_gas_5240":                               ; preds = %"$have_gas_5216"
  call void @_out_of_gas()
  br label %"$have_gas_5241"

"$have_gas_5241":                                 ; preds = %"$out_of_gas_5240", %"$have_gas_5216"
  %"$consume_5242" = sub i64 %"$gasrem_5238", %"$_literal_cost_call_5237"
  store i64 %"$consume_5242", i64* @_gasrem, align 8
  %"$execptr_load_5243" = load i8*, i8** @_execptr, align 8
  %"$e_5244" = load i8*, i8** %e3, align 8
  call void @_event(i8* %"$execptr_load_5243", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5244"), !dbg !484
  br label %"$matchsucc_5127"

"$False_5245":                                    ; preds = %"$have_gas_5125"
  %"$isOk_5246" = bitcast %TName_Bool* %"$isOk_5128" to %CName_False*
  %"$gasrem_5247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5248" = icmp ugt i64 1, %"$gasrem_5247"
  br i1 %"$gascmp_5248", label %"$out_of_gas_5249", label %"$have_gas_5250"

"$out_of_gas_5249":                               ; preds = %"$False_5245"
  call void @_out_of_gas()
  br label %"$have_gas_5250"

"$have_gas_5250":                                 ; preds = %"$out_of_gas_5249", %"$False_5245"
  %"$consume_5251" = sub i64 %"$gasrem_5247", 1
  store i64 %"$consume_5251", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_5252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5253" = icmp ugt i64 1, %"$gasrem_5252"
  br i1 %"$gascmp_5253", label %"$out_of_gas_5254", label %"$have_gas_5255"

"$out_of_gas_5254":                               ; preds = %"$have_gas_5250"
  call void @_out_of_gas()
  br label %"$have_gas_5255"

"$have_gas_5255":                                 ; preds = %"$out_of_gas_5254", %"$have_gas_5250"
  %"$consume_5256" = sub i64 %"$gasrem_5252", 1
  store i64 %"$consume_5256", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_5257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5258" = icmp ugt i64 1, %"$gasrem_5257"
  br i1 %"$gascmp_5258", label %"$out_of_gas_5259", label %"$have_gas_5260"

"$out_of_gas_5259":                               ; preds = %"$have_gas_5255"
  call void @_out_of_gas()
  br label %"$have_gas_5260"

"$have_gas_5260":                                 ; preds = %"$out_of_gas_5259", %"$have_gas_5255"
  %"$consume_5261" = sub i64 %"$gasrem_5257", 1
  store i64 %"$consume_5261", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_5262", i32 0, i32 0), i32 12 }, %String* %m, align 8, !dbg !485
  %"$gasrem_5263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5264" = icmp ugt i64 1, %"$gasrem_5263"
  br i1 %"$gascmp_5264", label %"$out_of_gas_5265", label %"$have_gas_5266"

"$out_of_gas_5265":                               ; preds = %"$have_gas_5260"
  call void @_out_of_gas()
  br label %"$have_gas_5266"

"$have_gas_5266":                                 ; preds = %"$out_of_gas_5265", %"$have_gas_5260"
  %"$consume_5267" = sub i64 %"$gasrem_5263", 1
  store i64 %"$consume_5267", i64* @_gasrem, align 8
  %"$ud-registry.eError_117" = alloca i8*, align 8
  %"$ud-registry.eError_5268" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_5269" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_5268", 0
  %"$ud-registry.eError_envptr_5270" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_5268", 1
  %"$m_5271" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_5272" = call i8* %"$ud-registry.eError_fptr_5269"(i8* %"$ud-registry.eError_envptr_5270", %String %"$m_5271"), !dbg !487
  store i8* %"$ud-registry.eError_call_5272", i8** %"$ud-registry.eError_117", align 8, !dbg !487
  %"$$ud-registry.eError_117_5273" = load i8*, i8** %"$ud-registry.eError_117", align 8
  store i8* %"$$ud-registry.eError_117_5273", i8** %e4, align 8, !dbg !487
  %"$e_5274" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_5276" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5274")
  %"$gasrem_5277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5278" = icmp ugt i64 %"$_literal_cost_call_5276", %"$gasrem_5277"
  br i1 %"$gascmp_5278", label %"$out_of_gas_5279", label %"$have_gas_5280"

"$out_of_gas_5279":                               ; preds = %"$have_gas_5266"
  call void @_out_of_gas()
  br label %"$have_gas_5280"

"$have_gas_5280":                                 ; preds = %"$out_of_gas_5279", %"$have_gas_5266"
  %"$consume_5281" = sub i64 %"$gasrem_5277", %"$_literal_cost_call_5276"
  store i64 %"$consume_5281", i64* @_gasrem, align 8
  %"$execptr_load_5282" = load i8*, i8** @_execptr, align 8
  %"$e_5283" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_5282", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5283"), !dbg !488
  br label %"$matchsucc_5127"

"$empty_default_5131":                            ; preds = %"$have_gas_5125"
  br label %"$matchsucc_5127"

"$matchsucc_5127":                                ; preds = %"$have_gas_5280", %"$have_gas_5241", %"$empty_default_5131"
  ret void
}

define void @bestow(i8* %0) !dbg !489 {
entry:
  %"$_amount_5285" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5286" = bitcast i8* %"$_amount_5285" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5286", align 8
  %"$_origin_5287" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5288" = bitcast i8* %"$_origin_5287" to [20 x i8]*
  %"$_sender_5289" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5290" = bitcast i8* %"$_sender_5289" to [20 x i8]*
  %"$label_5291" = getelementptr i8, i8* %0, i32 56
  %"$label_5292" = bitcast i8* %"$label_5291" to %String*
  %label = load %String, %String* %"$label_5292", align 8
  %"$owner_5293" = getelementptr i8, i8* %0, i32 72
  %"$owner_5294" = bitcast i8* %"$owner_5293" to [20 x i8]*
  %"$resolver_5295" = getelementptr i8, i8* %0, i32 92
  %"$resolver_5296" = bitcast i8* %"$resolver_5295" to [20 x i8]*
  call void @"$bestow_4873"(%Uint128 %_amount, [20 x i8]* %"$_origin_5288", [20 x i8]* %"$_sender_5290", %String %label, [20 x i8]* %"$owner_5294", [20 x i8]* %"$resolver_5296"), !dbg !490
  ret void
}

define internal void @"$setRegistrar_5297"(%Uint128 %_amount, [20 x i8]* %"$_origin_5298", [20 x i8]* %"$_sender_5299", [20 x i8]* %"$address_5300") !dbg !491 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_5298", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5299", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_5300", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_5302" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_5303" = call i8* @_fetch_field(i8* %"$execptr_load_5302", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_5301", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i32 1), !dbg !492
  %"$currentAdmins_5304" = bitcast i8* %"$currentAdmins_call_5303" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_5304", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_5305" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_5305_5306" = bitcast %TName_List_ByStr20* %"$currentAdmins_5305" to i8*
  %"$_literal_cost_call_5307" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$currentAdmins_5305_5306")
  %"$gasadd_5308" = add i64 %"$_literal_cost_call_5307", 0
  %"$gasrem_5309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5310" = icmp ugt i64 %"$gasadd_5308", %"$gasrem_5309"
  br i1 %"$gascmp_5310", label %"$out_of_gas_5311", label %"$have_gas_5312"

"$out_of_gas_5311":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5312"

"$have_gas_5312":                                 ; preds = %"$out_of_gas_5311", %entry
  %"$consume_5313" = sub i64 %"$gasrem_5309", %"$gasadd_5308"
  store i64 %"$consume_5313", i64* @_gasrem, align 8
  %"$gasrem_5314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5315" = icmp ugt i64 1, %"$gasrem_5314"
  br i1 %"$gascmp_5315", label %"$out_of_gas_5316", label %"$have_gas_5317"

"$out_of_gas_5316":                               ; preds = %"$have_gas_5312"
  call void @_out_of_gas()
  br label %"$have_gas_5317"

"$have_gas_5317":                                 ; preds = %"$out_of_gas_5316", %"$have_gas_5312"
  %"$consume_5318" = sub i64 %"$gasrem_5314", 1
  store i64 %"$consume_5318", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_5319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5320" = icmp ugt i64 1, %"$gasrem_5319"
  br i1 %"$gascmp_5320", label %"$out_of_gas_5321", label %"$have_gas_5322"

"$out_of_gas_5321":                               ; preds = %"$have_gas_5317"
  call void @_out_of_gas()
  br label %"$have_gas_5322"

"$have_gas_5322":                                 ; preds = %"$out_of_gas_5321", %"$have_gas_5317"
  %"$consume_5323" = sub i64 %"$gasrem_5319", 1
  store i64 %"$consume_5323", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_132" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_5324" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_5325" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5324", 0
  %"$ud-registry.listByStr20Contains_envptr_5326" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5324", 1
  %"$currentAdmins_5327" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_5328" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_5325"(i8* %"$ud-registry.listByStr20Contains_envptr_5326", %TName_List_ByStr20* %"$currentAdmins_5327"), !dbg !493
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_5328", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_132", align 8, !dbg !493
  %"$ud-registry.listByStr20Contains_133" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_132_5329" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_132", align 8
  %"$$ud-registry.listByStr20Contains_132_fptr_5330" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_132_5329", 0
  %"$$ud-registry.listByStr20Contains_132_envptr_5331" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_132_5329", 1
  %"$$ud-registry.listByStr20Contains_132__sender_5332" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_132__sender_5332", align 1
  %"$$ud-registry.listByStr20Contains_132_call_5333" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_132_fptr_5330"(i8* %"$$ud-registry.listByStr20Contains_132_envptr_5331", [20 x i8]* %"$$ud-registry.listByStr20Contains_132__sender_5332"), !dbg !493
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_132_call_5333", %TName_Bool** %"$ud-registry.listByStr20Contains_133", align 8, !dbg !493
  %"$$ud-registry.listByStr20Contains_133_5334" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_133", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_133_5334", %TName_Bool** %isOk, align 8, !dbg !493
  %"$gasrem_5335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5336" = icmp ugt i64 2, %"$gasrem_5335"
  br i1 %"$gascmp_5336", label %"$out_of_gas_5337", label %"$have_gas_5338"

"$out_of_gas_5337":                               ; preds = %"$have_gas_5322"
  call void @_out_of_gas()
  br label %"$have_gas_5338"

"$have_gas_5338":                                 ; preds = %"$out_of_gas_5337", %"$have_gas_5322"
  %"$consume_5339" = sub i64 %"$gasrem_5335", 2
  store i64 %"$consume_5339", i64* @_gasrem, align 8
  %"$isOk_5341" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5342" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5341", i32 0, i32 0
  %"$isOk_tag_5343" = load i8, i8* %"$isOk_tag_5342", align 1
  switch i8 %"$isOk_tag_5343", label %"$default_5344" [
    i8 0, label %"$True_5345"
  ], !dbg !494

"$True_5345":                                     ; preds = %"$have_gas_5338"
  %"$isOk_5346" = bitcast %TName_Bool* %"$isOk_5341" to %CName_True*
  %"$gasrem_5347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5348" = icmp ugt i64 1, %"$gasrem_5347"
  br i1 %"$gascmp_5348", label %"$out_of_gas_5349", label %"$have_gas_5350"

"$out_of_gas_5349":                               ; preds = %"$True_5345"
  call void @_out_of_gas()
  br label %"$have_gas_5350"

"$have_gas_5350":                                 ; preds = %"$out_of_gas_5349", %"$True_5345"
  %"$consume_5351" = sub i64 %"$gasrem_5347", 1
  store i64 %"$consume_5351", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5353" = icmp ugt i64 1, %"$gasrem_5352"
  br i1 %"$gascmp_5353", label %"$out_of_gas_5354", label %"$have_gas_5355"

"$out_of_gas_5354":                               ; preds = %"$have_gas_5350"
  call void @_out_of_gas()
  br label %"$have_gas_5355"

"$have_gas_5355":                                 ; preds = %"$out_of_gas_5354", %"$have_gas_5350"
  %"$consume_5356" = sub i64 %"$gasrem_5352", 1
  store i64 %"$consume_5356", i64* @_gasrem, align 8
  %"$ud-registry.eNewRegistrar_131" = alloca i8*, align 8
  %"$ud-registry.eNewRegistrar_5357" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eNewRegistrar, align 8
  %"$ud-registry.eNewRegistrar_fptr_5358" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eNewRegistrar_5357", 0
  %"$ud-registry.eNewRegistrar_envptr_5359" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eNewRegistrar_5357", 1
  %"$ud-registry.eNewRegistrar_address_5360" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eNewRegistrar_address_5360", align 1
  %"$ud-registry.eNewRegistrar_call_5361" = call i8* %"$ud-registry.eNewRegistrar_fptr_5358"(i8* %"$ud-registry.eNewRegistrar_envptr_5359", [20 x i8]* %"$ud-registry.eNewRegistrar_address_5360"), !dbg !495
  store i8* %"$ud-registry.eNewRegistrar_call_5361", i8** %"$ud-registry.eNewRegistrar_131", align 8, !dbg !495
  %"$$ud-registry.eNewRegistrar_131_5362" = load i8*, i8** %"$ud-registry.eNewRegistrar_131", align 8
  store i8* %"$$ud-registry.eNewRegistrar_131_5362", i8** %e, align 8, !dbg !495
  %"$e_5363" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5365" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5363")
  %"$gasrem_5366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5367" = icmp ugt i64 %"$_literal_cost_call_5365", %"$gasrem_5366"
  br i1 %"$gascmp_5367", label %"$out_of_gas_5368", label %"$have_gas_5369"

"$out_of_gas_5368":                               ; preds = %"$have_gas_5355"
  call void @_out_of_gas()
  br label %"$have_gas_5369"

"$have_gas_5369":                                 ; preds = %"$out_of_gas_5368", %"$have_gas_5355"
  %"$consume_5370" = sub i64 %"$gasrem_5366", %"$_literal_cost_call_5365"
  store i64 %"$consume_5370", i64* @_gasrem, align 8
  %"$execptr_load_5371" = load i8*, i8** @_execptr, align 8
  %"$e_5372" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5371", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5372"), !dbg !498
  %"$_literal_cost_address_5373" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$_literal_cost_address_5373", align 1
  %"$$_literal_cost_address_5373_5374" = bitcast [20 x i8]* %"$_literal_cost_address_5373" to i8*
  %"$_literal_cost_call_5375" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i8* %"$$_literal_cost_address_5373_5374")
  %"$gasrem_5376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5377" = icmp ugt i64 %"$_literal_cost_call_5375", %"$gasrem_5376"
  br i1 %"$gascmp_5377", label %"$out_of_gas_5378", label %"$have_gas_5379"

"$out_of_gas_5378":                               ; preds = %"$have_gas_5369"
  call void @_out_of_gas()
  br label %"$have_gas_5379"

"$have_gas_5379":                                 ; preds = %"$out_of_gas_5378", %"$have_gas_5369"
  %"$consume_5380" = sub i64 %"$gasrem_5376", %"$_literal_cost_call_5375"
  store i64 %"$consume_5380", i64* @_gasrem, align 8
  %"$execptr_load_5381" = load i8*, i8** @_execptr, align 8
  %"$update_value_5383" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$update_value_5383", align 1
  %"$update_value_5384" = bitcast [20 x i8]* %"$update_value_5383" to i8*
  call void @_update_field(i8* %"$execptr_load_5381", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_5382", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i32 0, i8* null, i8* %"$update_value_5384"), !dbg !499
  br label %"$matchsucc_5340"

"$default_5344":                                  ; preds = %"$have_gas_5338"
  br label %"$joinp_6"

"$joinp_6":                                       ; preds = %"$default_5344"
  br label %"$matchsucc_5340"

"$matchsucc_5340":                                ; preds = %"$have_gas_5379", %"$joinp_6"
  ret void
}

define void @setRegistrar(i8* %0) !dbg !500 {
entry:
  %"$_amount_5386" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5387" = bitcast i8* %"$_amount_5386" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5387", align 8
  %"$_origin_5388" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5389" = bitcast i8* %"$_origin_5388" to [20 x i8]*
  %"$_sender_5390" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5391" = bitcast i8* %"$_sender_5390" to [20 x i8]*
  %"$address_5392" = getelementptr i8, i8* %0, i32 56
  %"$address_5393" = bitcast i8* %"$address_5392" to [20 x i8]*
  call void @"$setRegistrar_5297"(%Uint128 %_amount, [20 x i8]* %"$_origin_5389", [20 x i8]* %"$_sender_5391", [20 x i8]* %"$address_5393"), !dbg !501
  ret void
}

define internal void @"$register_5394"(%Uint128 %_amount, [20 x i8]* %"$_origin_5395", [20 x i8]* %"$_sender_5396", [32 x i8]* %"$parent_5397", %String %label) !dbg !502 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_5395", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5396", align 1
  %parent = load [32 x i8], [32 x i8]* %"$parent_5397", align 1
  %"$gasrem_5398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5399" = icmp ugt i64 1, %"$gasrem_5398"
  br i1 %"$gascmp_5399", label %"$out_of_gas_5400", label %"$have_gas_5401"

"$out_of_gas_5400":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5401"

"$have_gas_5401":                                 ; preds = %"$out_of_gas_5400", %entry
  %"$consume_5402" = sub i64 %"$gasrem_5398", 1
  store i64 %"$consume_5402", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_5403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5404" = icmp ugt i64 1, %"$gasrem_5403"
  br i1 %"$gascmp_5404", label %"$out_of_gas_5405", label %"$have_gas_5406"

"$out_of_gas_5405":                               ; preds = %"$have_gas_5401"
  call void @_out_of_gas()
  br label %"$have_gas_5406"

"$have_gas_5406":                                 ; preds = %"$out_of_gas_5405", %"$have_gas_5401"
  %"$consume_5407" = sub i64 %"$gasrem_5403", 1
  store i64 %"$consume_5407", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_138" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_5408" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_5409" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_5408", 0
  %"$ud-registry.parentLabelToNode_envptr_5410" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_5408", 1
  %"$ud-registry.parentLabelToNode_parent_5411" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.parentLabelToNode_parent_5411", align 1
  %"$ud-registry.parentLabelToNode_call_5412" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_5409"(i8* %"$ud-registry.parentLabelToNode_envptr_5410", [32 x i8]* %"$ud-registry.parentLabelToNode_parent_5411"), !dbg !503
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_5412", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_138", align 8, !dbg !503
  %"$ud-registry.parentLabelToNode_139" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_138_5413" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_138", align 8
  %"$$ud-registry.parentLabelToNode_138_fptr_5414" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_138_5413", 0
  %"$$ud-registry.parentLabelToNode_138_envptr_5415" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_138_5413", 1
  %"$$ud-registry.parentLabelToNode_138_retalloca_5416" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_138_fptr_5414"(i8* %"$$ud-registry.parentLabelToNode_138_envptr_5415", [32 x i8]* %"$$ud-registry.parentLabelToNode_138_retalloca_5416", %String %label), !dbg !503
  %"$$ud-registry.parentLabelToNode_138_ret_5417" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_138_retalloca_5416", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_138_ret_5417", [32 x i8]* %"$ud-registry.parentLabelToNode_139", align 1, !dbg !503
  %"$$ud-registry.parentLabelToNode_139_5418" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_139", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_139_5418", [32 x i8]* %node, align 1, !dbg !503
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_5419_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5419_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5419_salloc_load", i64 32)
  %"$indices_buf_5419_salloc" = bitcast i8* %"$indices_buf_5419_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5419" = bitcast [32 x i8]* %"$indices_buf_5419_salloc" to i8*
  %"$node_5420" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5421" = getelementptr i8, i8* %"$indices_buf_5419", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_5421" to [32 x i8]*
  store [32 x i8] %"$node_5420", [32 x i8]* %indices_cast, align 1
  %"$execptr_load_5423" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_5424" = call i8* @_fetch_field(i8* %"$execptr_load_5423", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5422", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_5419", i32 1), !dbg !504
  %"$maybeRecord_5425" = bitcast i8* %"$maybeRecord_call_5424" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_5425", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_5426" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_5426_5427" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5426" to i8*
  %"$_literal_cost_call_5428" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_5426_5427")
  %"$gasadd_5429" = add i64 %"$_literal_cost_call_5428", 0
  %"$gasadd_5430" = add i64 %"$gasadd_5429", 1
  %"$gasrem_5431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5432" = icmp ugt i64 %"$gasadd_5430", %"$gasrem_5431"
  br i1 %"$gascmp_5432", label %"$out_of_gas_5433", label %"$have_gas_5434"

"$out_of_gas_5433":                               ; preds = %"$have_gas_5406"
  call void @_out_of_gas()
  br label %"$have_gas_5434"

"$have_gas_5434":                                 ; preds = %"$out_of_gas_5433", %"$have_gas_5406"
  %"$consume_5435" = sub i64 %"$gasrem_5431", %"$gasadd_5430"
  store i64 %"$consume_5435", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_5436_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5436_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5436_salloc_load", i64 32)
  %"$indices_buf_5436_salloc" = bitcast i8* %"$indices_buf_5436_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5436" = bitcast [32 x i8]* %"$indices_buf_5436_salloc" to i8*
  %"$node_5437" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5438" = getelementptr i8, i8* %"$indices_buf_5436", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_5438" to [32 x i8]*
  store [32 x i8] %"$node_5437", [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_5440" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_5441" = call i8* @_fetch_field(i8* %"$execptr_load_5440", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_5439", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_5436", i32 1), !dbg !505
  %"$maybeApproved_5442" = bitcast i8* %"$maybeApproved_call_5441" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_5442", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_5443" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_5443_5444" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5443" to i8*
  %"$_literal_cost_call_5445" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_5443_5444")
  %"$gasadd_5446" = add i64 %"$_literal_cost_call_5445", 0
  %"$gasadd_5447" = add i64 %"$gasadd_5446", 1
  %"$gasrem_5448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5449" = icmp ugt i64 %"$gasadd_5447", %"$gasrem_5448"
  br i1 %"$gascmp_5449", label %"$out_of_gas_5450", label %"$have_gas_5451"

"$out_of_gas_5450":                               ; preds = %"$have_gas_5434"
  call void @_out_of_gas()
  br label %"$have_gas_5451"

"$have_gas_5451":                                 ; preds = %"$out_of_gas_5450", %"$have_gas_5434"
  %"$consume_5452" = sub i64 %"$gasrem_5448", %"$gasadd_5447"
  store i64 %"$consume_5452", i64* @_gasrem, align 8
  %"$gasrem_5453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5454" = icmp ugt i64 1, %"$gasrem_5453"
  br i1 %"$gascmp_5454", label %"$out_of_gas_5455", label %"$have_gas_5456"

"$out_of_gas_5455":                               ; preds = %"$have_gas_5451"
  call void @_out_of_gas()
  br label %"$have_gas_5456"

"$have_gas_5456":                                 ; preds = %"$out_of_gas_5455", %"$have_gas_5451"
  %"$consume_5457" = sub i64 %"$gasrem_5453", 1
  store i64 %"$consume_5457", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_5458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5459" = icmp ugt i64 1, %"$gasrem_5458"
  br i1 %"$gascmp_5459", label %"$out_of_gas_5460", label %"$have_gas_5461"

"$out_of_gas_5460":                               ; preds = %"$have_gas_5456"
  call void @_out_of_gas()
  br label %"$have_gas_5461"

"$have_gas_5461":                                 ; preds = %"$out_of_gas_5460", %"$have_gas_5456"
  %"$consume_5462" = sub i64 %"$gasrem_5458", 1
  store i64 %"$consume_5462", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_137" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_5463" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_5464" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5463", 0
  %"$ud-registry.recordMemberOwner_envptr_5465" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5463", 1
  %"$maybeRecord_5466" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_5467" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_5464"(i8* %"$ud-registry.recordMemberOwner_envptr_5465", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5467", %TName_Option_ud-registry.Record* %"$maybeRecord_5466"), !dbg !506
  %"$ud-registry.recordMemberOwner_ret_5468" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5467", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_5468", [20 x i8]* %"$ud-registry.recordMemberOwner_137", align 1, !dbg !506
  %"$$ud-registry.recordMemberOwner_137_5469" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_137", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_137_5469", [20 x i8]* %recordOwner, align 1, !dbg !506
  %"$gasrem_5470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5471" = icmp ugt i64 1, %"$gasrem_5470"
  br i1 %"$gascmp_5471", label %"$out_of_gas_5472", label %"$have_gas_5473"

"$out_of_gas_5472":                               ; preds = %"$have_gas_5461"
  call void @_out_of_gas()
  br label %"$have_gas_5473"

"$have_gas_5473":                                 ; preds = %"$out_of_gas_5472", %"$have_gas_5461"
  %"$consume_5474" = sub i64 %"$gasrem_5470", 1
  store i64 %"$consume_5474", i64* @_gasrem, align 8
  %approved = alloca [20 x i8], align 1
  %"$gasrem_5475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5476" = icmp ugt i64 2, %"$gasrem_5475"
  br i1 %"$gascmp_5476", label %"$out_of_gas_5477", label %"$have_gas_5478"

"$out_of_gas_5477":                               ; preds = %"$have_gas_5473"
  call void @_out_of_gas()
  br label %"$have_gas_5478"

"$have_gas_5478":                                 ; preds = %"$out_of_gas_5477", %"$have_gas_5473"
  %"$consume_5479" = sub i64 %"$gasrem_5475", 2
  store i64 %"$consume_5479", i64* @_gasrem, align 8
  %"$maybeApproved_5481" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_5482" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_5481", i32 0, i32 0
  %"$maybeApproved_tag_5483" = load i8, i8* %"$maybeApproved_tag_5482", align 1
  switch i8 %"$maybeApproved_tag_5483", label %"$empty_default_5484" [
    i8 1, label %"$None_5485"
    i8 0, label %"$Some_5493"
  ], !dbg !507

"$None_5485":                                     ; preds = %"$have_gas_5478"
  %"$maybeApproved_5486" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5481" to %CName_None_ByStr20*
  %"$gasrem_5487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5488" = icmp ugt i64 1, %"$gasrem_5487"
  br i1 %"$gascmp_5488", label %"$out_of_gas_5489", label %"$have_gas_5490"

"$out_of_gas_5489":                               ; preds = %"$None_5485"
  call void @_out_of_gas()
  br label %"$have_gas_5490"

"$have_gas_5490":                                 ; preds = %"$out_of_gas_5489", %"$None_5485"
  %"$consume_5491" = sub i64 %"$gasrem_5487", 1
  store i64 %"$consume_5491", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_5492" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5492", [20 x i8]* %approved, align 1, !dbg !508
  br label %"$matchsucc_5480"

"$Some_5493":                                     ; preds = %"$have_gas_5478"
  %"$maybeApproved_5494" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5481" to %CName_Some_ByStr20*
  %"$approved_gep_5495" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_5494", i32 0, i32 1
  %"$approved_load_5496" = load [20 x i8], [20 x i8]* %"$approved_gep_5495", align 1
  %approved2 = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_5496", [20 x i8]* %approved2, align 1
  %"$gasrem_5497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5498" = icmp ugt i64 1, %"$gasrem_5497"
  br i1 %"$gascmp_5498", label %"$out_of_gas_5499", label %"$have_gas_5500"

"$out_of_gas_5499":                               ; preds = %"$Some_5493"
  call void @_out_of_gas()
  br label %"$have_gas_5500"

"$have_gas_5500":                                 ; preds = %"$out_of_gas_5499", %"$Some_5493"
  %"$consume_5501" = sub i64 %"$gasrem_5497", 1
  store i64 %"$consume_5501", i64* @_gasrem, align 8
  %"$approved_5502" = load [20 x i8], [20 x i8]* %approved2, align 1
  store [20 x i8] %"$approved_5502", [20 x i8]* %approved2, align 1, !dbg !511
  br label %"$matchsucc_5480"

"$empty_default_5484":                            ; preds = %"$have_gas_5478"
  br label %"$matchsucc_5480"

"$matchsucc_5480":                                ; preds = %"$have_gas_5500", %"$have_gas_5490", %"$empty_default_5484"
  %currentRegistrar = alloca [20 x i8], align 1
  %"$execptr_load_5504" = load i8*, i8** @_execptr, align 8
  %"$currentRegistrar_call_5505" = call i8* @_fetch_field(i8* %"$execptr_load_5504", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_5503", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i32 0, i8* null, i32 1), !dbg !513
  %"$currentRegistrar_5506" = bitcast i8* %"$currentRegistrar_call_5505" to [20 x i8]*
  %"$currentRegistrar_5507" = load [20 x i8], [20 x i8]* %"$currentRegistrar_5506", align 1
  store [20 x i8] %"$currentRegistrar_5507", [20 x i8]* %currentRegistrar, align 1
  %"$_literal_cost_currentRegistrar_5508" = alloca [20 x i8], align 1
  %"$currentRegistrar_5509" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5509", [20 x i8]* %"$_literal_cost_currentRegistrar_5508", align 1
  %"$$_literal_cost_currentRegistrar_5508_5510" = bitcast [20 x i8]* %"$_literal_cost_currentRegistrar_5508" to i8*
  %"$_literal_cost_call_5511" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i8* %"$$_literal_cost_currentRegistrar_5508_5510")
  %"$gasadd_5512" = add i64 %"$_literal_cost_call_5511", 0
  %"$gasrem_5513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5514" = icmp ugt i64 %"$gasadd_5512", %"$gasrem_5513"
  br i1 %"$gascmp_5514", label %"$out_of_gas_5515", label %"$have_gas_5516"

"$out_of_gas_5515":                               ; preds = %"$matchsucc_5480"
  call void @_out_of_gas()
  br label %"$have_gas_5516"

"$have_gas_5516":                                 ; preds = %"$out_of_gas_5515", %"$matchsucc_5480"
  %"$consume_5517" = sub i64 %"$gasrem_5513", %"$gasadd_5512"
  store i64 %"$consume_5517", i64* @_gasrem, align 8
  %"$gasrem_5518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5519" = icmp ugt i64 1, %"$gasrem_5518"
  br i1 %"$gascmp_5519", label %"$out_of_gas_5520", label %"$have_gas_5521"

"$out_of_gas_5520":                               ; preds = %"$have_gas_5516"
  call void @_out_of_gas()
  br label %"$have_gas_5521"

"$have_gas_5521":                                 ; preds = %"$out_of_gas_5520", %"$have_gas_5516"
  %"$consume_5522" = sub i64 %"$gasrem_5518", 1
  store i64 %"$consume_5522", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_5523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5524" = icmp ugt i64 1, %"$gasrem_5523"
  br i1 %"$gascmp_5524", label %"$out_of_gas_5525", label %"$have_gas_5526"

"$out_of_gas_5525":                               ; preds = %"$have_gas_5521"
  call void @_out_of_gas()
  br label %"$have_gas_5526"

"$have_gas_5526":                                 ; preds = %"$out_of_gas_5525", %"$have_gas_5521"
  %"$consume_5527" = sub i64 %"$gasrem_5523", 1
  store i64 %"$consume_5527", i64* @_gasrem, align 8
  %isRecordUnowned = alloca %TName_Bool*, align 8
  %"$execptr_load_5528" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5529" = alloca [20 x i8], align 1
  %"$recordOwner_5530" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5530", [20 x i8]* %"$eq_recordOwner_5529", align 1
  %"$$eq_recordOwner_5529_5531" = bitcast [20 x i8]* %"$eq_recordOwner_5529" to i8*
  %"$eq_ud-registry.zeroByStr20_5532" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5533" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5533", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5532", align 1
  %"$$eq_ud-registry.zeroByStr20_5532_5534" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5532" to i8*
  %"$eq_call_5535" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5528", i32 20, i8* %"$$eq_recordOwner_5529_5531", i8* %"$$eq_ud-registry.zeroByStr20_5532_5534")
  store %TName_Bool* %"$eq_call_5535", %TName_Bool** %isRecordUnowned, align 8, !dbg !514
  %"$gasrem_5536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5537" = icmp ugt i64 1, %"$gasrem_5536"
  br i1 %"$gascmp_5537", label %"$out_of_gas_5538", label %"$have_gas_5539"

"$out_of_gas_5538":                               ; preds = %"$have_gas_5526"
  call void @_out_of_gas()
  br label %"$have_gas_5539"

"$have_gas_5539":                                 ; preds = %"$out_of_gas_5538", %"$have_gas_5526"
  %"$consume_5540" = sub i64 %"$gasrem_5536", 1
  store i64 %"$consume_5540", i64* @_gasrem, align 8
  %isUnapproved = alloca %TName_Bool*, align 8
  %"$execptr_load_5541" = load i8*, i8** @_execptr, align 8
  %"$eq_approved_5542" = alloca [20 x i8], align 1
  %"$approved_5543" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_5543", [20 x i8]* %"$eq_approved_5542", align 1
  %"$$eq_approved_5542_5544" = bitcast [20 x i8]* %"$eq_approved_5542" to i8*
  %"$eq_ud-registry.zeroByStr20_5545" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5546" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5546", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5545", align 1
  %"$$eq_ud-registry.zeroByStr20_5545_5547" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5545" to i8*
  %"$eq_call_5548" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5541", i32 20, i8* %"$$eq_approved_5542_5544", i8* %"$$eq_ud-registry.zeroByStr20_5545_5547")
  store %TName_Bool* %"$eq_call_5548", %TName_Bool** %isUnapproved, align 8, !dbg !515
  %"$gasrem_5549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5550" = icmp ugt i64 1, %"$gasrem_5549"
  br i1 %"$gascmp_5550", label %"$out_of_gas_5551", label %"$have_gas_5552"

"$out_of_gas_5551":                               ; preds = %"$have_gas_5539"
  call void @_out_of_gas()
  br label %"$have_gas_5552"

"$have_gas_5552":                                 ; preds = %"$out_of_gas_5551", %"$have_gas_5539"
  %"$consume_5553" = sub i64 %"$gasrem_5549", 1
  store i64 %"$consume_5553", i64* @_gasrem, align 8
  %"$BoolUtils.andb_135" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5554" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5555" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5554", 0
  %"$BoolUtils.andb_envptr_5556" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5554", 1
  %"$isRecordUnowned_5557" = load %TName_Bool*, %TName_Bool** %isRecordUnowned, align 8
  %"$BoolUtils.andb_call_5558" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5555"(i8* %"$BoolUtils.andb_envptr_5556", %TName_Bool* %"$isRecordUnowned_5557"), !dbg !516
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5558", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8, !dbg !516
  %"$BoolUtils.andb_136" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_135_5559" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8
  %"$$BoolUtils.andb_135_fptr_5560" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_5559", 0
  %"$$BoolUtils.andb_135_envptr_5561" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_5559", 1
  %"$isUnapproved_5562" = load %TName_Bool*, %TName_Bool** %isUnapproved, align 8
  %"$$BoolUtils.andb_135_call_5563" = call %TName_Bool* %"$$BoolUtils.andb_135_fptr_5560"(i8* %"$$BoolUtils.andb_135_envptr_5561", %TName_Bool* %"$isUnapproved_5562"), !dbg !516
  store %TName_Bool* %"$$BoolUtils.andb_135_call_5563", %TName_Bool** %"$BoolUtils.andb_136", align 8, !dbg !516
  %"$$BoolUtils.andb_136_5564" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_136", align 8
  store %TName_Bool* %"$$BoolUtils.andb_136_5564", %TName_Bool** %isOk, align 8, !dbg !516
  %"$gasrem_5565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5566" = icmp ugt i64 2, %"$gasrem_5565"
  br i1 %"$gascmp_5566", label %"$out_of_gas_5567", label %"$have_gas_5568"

"$out_of_gas_5567":                               ; preds = %"$have_gas_5552"
  call void @_out_of_gas()
  br label %"$have_gas_5568"

"$have_gas_5568":                                 ; preds = %"$out_of_gas_5567", %"$have_gas_5552"
  %"$consume_5569" = sub i64 %"$gasrem_5565", 2
  store i64 %"$consume_5569", i64* @_gasrem, align 8
  %"$isOk_5571" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5572" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5571", i32 0, i32 0
  %"$isOk_tag_5573" = load i8, i8* %"$isOk_tag_5572", align 1
  switch i8 %"$isOk_tag_5573", label %"$empty_default_5574" [
    i8 0, label %"$True_5575"
    i8 1, label %"$False_5673"
  ], !dbg !517

"$True_5575":                                     ; preds = %"$have_gas_5568"
  %"$isOk_5576" = bitcast %TName_Bool* %"$isOk_5571" to %CName_True*
  %"$gasrem_5577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5578" = icmp ugt i64 1, %"$gasrem_5577"
  br i1 %"$gascmp_5578", label %"$out_of_gas_5579", label %"$have_gas_5580"

"$out_of_gas_5579":                               ; preds = %"$True_5575"
  call void @_out_of_gas()
  br label %"$have_gas_5580"

"$have_gas_5580":                                 ; preds = %"$out_of_gas_5579", %"$True_5575"
  %"$consume_5581" = sub i64 %"$gasrem_5577", 1
  store i64 %"$consume_5581", i64* @_gasrem, align 8
  %"$execptr_load_5582" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_5582"), !dbg !518
  %"$gasrem_5583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5584" = icmp ugt i64 1, %"$gasrem_5583"
  br i1 %"$gascmp_5584", label %"$out_of_gas_5585", label %"$have_gas_5586"

"$out_of_gas_5585":                               ; preds = %"$have_gas_5580"
  call void @_out_of_gas()
  br label %"$have_gas_5586"

"$have_gas_5586":                                 ; preds = %"$out_of_gas_5585", %"$have_gas_5580"
  %"$consume_5587" = sub i64 %"$gasrem_5583", 1
  store i64 %"$consume_5587", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_5588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5589" = icmp ugt i64 1, %"$gasrem_5588"
  br i1 %"$gascmp_5589", label %"$out_of_gas_5590", label %"$have_gas_5591"

"$out_of_gas_5590":                               ; preds = %"$have_gas_5586"
  call void @_out_of_gas()
  br label %"$have_gas_5591"

"$have_gas_5591":                                 ; preds = %"$out_of_gas_5590", %"$have_gas_5586"
  %"$consume_5592" = sub i64 %"$gasrem_5588", 1
  store i64 %"$consume_5592", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_5593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5594" = icmp ugt i64 1, %"$gasrem_5593"
  br i1 %"$gascmp_5594", label %"$out_of_gas_5595", label %"$have_gas_5596"

"$out_of_gas_5595":                               ; preds = %"$have_gas_5591"
  call void @_out_of_gas()
  br label %"$have_gas_5596"

"$have_gas_5596":                                 ; preds = %"$out_of_gas_5595", %"$have_gas_5591"
  %"$consume_5597" = sub i64 %"$gasrem_5593", 1
  store i64 %"$consume_5597", i64* @_gasrem, align 8
  %"$msgobj_5598_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_5598_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_5598_salloc_load", i64 321)
  %"$msgobj_5598_salloc" = bitcast i8* %"$msgobj_5598_salloc_salloc" to [321 x i8]*
  %"$msgobj_5598" = bitcast [321 x i8]* %"$msgobj_5598_salloc" to i8*
  store i8 7, i8* %"$msgobj_5598", align 1
  %"$msgobj_fname_5600" = getelementptr i8, i8* %"$msgobj_5598", i32 1
  %"$msgobj_fname_5601" = bitcast i8* %"$msgobj_fname_5600" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_5599", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_5601", align 8
  %"$msgobj_td_5602" = getelementptr i8, i8* %"$msgobj_5598", i32 17
  %"$msgobj_td_5603" = bitcast i8* %"$msgobj_td_5602" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_5603", align 8
  %"$msgobj_v_5605" = getelementptr i8, i8* %"$msgobj_5598", i32 25
  %"$msgobj_v_5606" = bitcast i8* %"$msgobj_v_5605" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_5604", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_5606", align 8
  %"$msgobj_fname_5608" = getelementptr i8, i8* %"$msgobj_5598", i32 41
  %"$msgobj_fname_5609" = bitcast i8* %"$msgobj_fname_5608" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_5607", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_5609", align 8
  %"$msgobj_td_5610" = getelementptr i8, i8* %"$msgobj_5598", i32 57
  %"$msgobj_td_5611" = bitcast i8* %"$msgobj_td_5610" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_5611", align 8
  %"$msgobj_v_5612" = getelementptr i8, i8* %"$msgobj_5598", i32 65
  %"$msgobj_v_5613" = bitcast i8* %"$msgobj_v_5612" to %Uint128*
  store %Uint128 %_amount, %Uint128* %"$msgobj_v_5613", align 8
  %"$msgobj_fname_5615" = getelementptr i8, i8* %"$msgobj_5598", i32 81
  %"$msgobj_fname_5616" = bitcast i8* %"$msgobj_fname_5615" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_5614", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_5616", align 8
  %"$msgobj_td_5617" = getelementptr i8, i8* %"$msgobj_5598", i32 97
  %"$msgobj_td_5618" = bitcast i8* %"$msgobj_td_5617" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_5618", align 8
  %"$currentRegistrar_5619" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  %"$msgobj_v_5620" = getelementptr i8, i8* %"$msgobj_5598", i32 105
  %"$msgobj_v_5621" = bitcast i8* %"$msgobj_v_5620" to [20 x i8]*
  store [20 x i8] %"$currentRegistrar_5619", [20 x i8]* %"$msgobj_v_5621", align 1
  %"$msgobj_fname_5623" = getelementptr i8, i8* %"$msgobj_5598", i32 125
  %"$msgobj_fname_5624" = bitcast i8* %"$msgobj_fname_5623" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_5622", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_5624", align 8
  %"$msgobj_td_5625" = getelementptr i8, i8* %"$msgobj_5598", i32 141
  %"$msgobj_td_5626" = bitcast i8* %"$msgobj_td_5625" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_5626", align 8
  %"$msgobj_v_5627" = getelementptr i8, i8* %"$msgobj_5598", i32 149
  %"$msgobj_v_5628" = bitcast i8* %"$msgobj_v_5627" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_5628", align 1
  %"$msgobj_fname_5630" = getelementptr i8, i8* %"$msgobj_5598", i32 169
  %"$msgobj_fname_5631" = bitcast i8* %"$msgobj_fname_5630" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_5629", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_5631", align 8
  %"$msgobj_td_5632" = getelementptr i8, i8* %"$msgobj_5598", i32 185
  %"$msgobj_td_5633" = bitcast i8* %"$msgobj_td_5632" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_5633", align 8
  %"$node_5634" = load [32 x i8], [32 x i8]* %node, align 1
  %"$msgobj_v_5635" = getelementptr i8, i8* %"$msgobj_5598", i32 193
  %"$msgobj_v_5636" = bitcast i8* %"$msgobj_v_5635" to [32 x i8]*
  store [32 x i8] %"$node_5634", [32 x i8]* %"$msgobj_v_5636", align 1
  %"$msgobj_fname_5638" = getelementptr i8, i8* %"$msgobj_5598", i32 225
  %"$msgobj_fname_5639" = bitcast i8* %"$msgobj_fname_5638" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_5637", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_5639", align 8
  %"$msgobj_td_5640" = getelementptr i8, i8* %"$msgobj_5598", i32 241
  %"$msgobj_td_5641" = bitcast i8* %"$msgobj_td_5640" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_5641", align 8
  %"$msgobj_v_5642" = getelementptr i8, i8* %"$msgobj_5598", i32 249
  %"$msgobj_v_5643" = bitcast i8* %"$msgobj_v_5642" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_5643", align 1
  %"$msgobj_fname_5645" = getelementptr i8, i8* %"$msgobj_5598", i32 281
  %"$msgobj_fname_5646" = bitcast i8* %"$msgobj_fname_5645" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_5644", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_5646", align 8
  %"$msgobj_td_5647" = getelementptr i8, i8* %"$msgobj_5598", i32 297
  %"$msgobj_td_5648" = bitcast i8* %"$msgobj_td_5647" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_5648", align 8
  %"$msgobj_v_5649" = getelementptr i8, i8* %"$msgobj_5598", i32 305
  %"$msgobj_v_5650" = bitcast i8* %"$msgobj_v_5649" to %String*
  store %String %label, %String* %"$msgobj_v_5650", align 8
  store i8* %"$msgobj_5598", i8** %m, align 8, !dbg !521
  %"$gasrem_5652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5653" = icmp ugt i64 1, %"$gasrem_5652"
  br i1 %"$gascmp_5653", label %"$out_of_gas_5654", label %"$have_gas_5655"

"$out_of_gas_5654":                               ; preds = %"$have_gas_5596"
  call void @_out_of_gas()
  br label %"$have_gas_5655"

"$have_gas_5655":                                 ; preds = %"$out_of_gas_5654", %"$have_gas_5596"
  %"$consume_5656" = sub i64 %"$gasrem_5652", 1
  store i64 %"$consume_5656", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_134" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_5657" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_5658" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_5657", 0
  %"$ud-registry.oneMsg_envptr_5659" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_5657", 1
  %"$m_5660" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_5661" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_5658"(i8* %"$ud-registry.oneMsg_envptr_5659", i8* %"$m_5660"), !dbg !522
  store %TName_List_Message* %"$ud-registry.oneMsg_call_5661", %TName_List_Message** %"$ud-registry.oneMsg_134", align 8, !dbg !522
  %"$$ud-registry.oneMsg_134_5662" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_134", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_134_5662", %TName_List_Message** %msgs, align 8, !dbg !522
  %"$msgs_5663" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_5663_5664" = bitcast %TName_List_Message* %"$msgs_5663" to i8*
  %"$_literal_cost_call_5665" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_5663_5664")
  %"$gasrem_5666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5667" = icmp ugt i64 %"$_literal_cost_call_5665", %"$gasrem_5666"
  br i1 %"$gascmp_5667", label %"$out_of_gas_5668", label %"$have_gas_5669"

"$out_of_gas_5668":                               ; preds = %"$have_gas_5655"
  call void @_out_of_gas()
  br label %"$have_gas_5669"

"$have_gas_5669":                                 ; preds = %"$out_of_gas_5668", %"$have_gas_5655"
  %"$consume_5670" = sub i64 %"$gasrem_5666", %"$_literal_cost_call_5665"
  store i64 %"$consume_5670", i64* @_gasrem, align 8
  %"$execptr_load_5671" = load i8*, i8** @_execptr, align 8
  %"$msgs_5672" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_5671", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_5672"), !dbg !523
  br label %"$matchsucc_5570"

"$False_5673":                                    ; preds = %"$have_gas_5568"
  %"$isOk_5674" = bitcast %TName_Bool* %"$isOk_5571" to %CName_False*
  br label %"$matchsucc_5570"

"$empty_default_5574":                            ; preds = %"$have_gas_5568"
  br label %"$matchsucc_5570"

"$matchsucc_5570":                                ; preds = %"$False_5673", %"$have_gas_5669", %"$empty_default_5574"
  ret void
}

declare void @_accept(i8*)

define void @register(i8* %0) !dbg !524 {
entry:
  %"$_amount_5676" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5677" = bitcast i8* %"$_amount_5676" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5677", align 8
  %"$_origin_5678" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5679" = bitcast i8* %"$_origin_5678" to [20 x i8]*
  %"$_sender_5680" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5681" = bitcast i8* %"$_sender_5680" to [20 x i8]*
  %"$parent_5682" = getelementptr i8, i8* %0, i32 56
  %"$parent_5683" = bitcast i8* %"$parent_5682" to [32 x i8]*
  %"$label_5684" = getelementptr i8, i8* %0, i32 88
  %"$label_5685" = bitcast i8* %"$label_5684" to %String*
  %label = load %String, %String* %"$label_5685", align 8
  call void @"$register_5394"(%Uint128 %_amount, [20 x i8]* %"$_origin_5679", [20 x i8]* %"$_sender_5681", [32 x i8]* %"$parent_5683", %String %label), !dbg !525
  ret void
}

define internal void @"$onResolverConfigured_5686"(%Uint128 %_amount, [20 x i8]* %"$_origin_5687", [20 x i8]* %"$_sender_5688", [32 x i8]* %"$node_5689") !dbg !526 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_5687", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5688", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_5689", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_5690_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5690_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5690_salloc_load", i64 32)
  %"$indices_buf_5690_salloc" = bitcast i8* %"$indices_buf_5690_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5690" = bitcast [32 x i8]* %"$indices_buf_5690_salloc" to i8*
  %"$indices_gep_5691" = getelementptr i8, i8* %"$indices_buf_5690", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_5691" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_5693" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_5694" = call i8* @_fetch_field(i8* %"$execptr_load_5693", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5692", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_5690", i32 1), !dbg !527
  %"$maybeRecord_5695" = bitcast i8* %"$maybeRecord_call_5694" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_5695", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_5696" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_5696_5697" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5696" to i8*
  %"$_literal_cost_call_5698" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_5696_5697")
  %"$gasadd_5699" = add i64 %"$_literal_cost_call_5698", 0
  %"$gasadd_5700" = add i64 %"$gasadd_5699", 1
  %"$gasrem_5701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5702" = icmp ugt i64 %"$gasadd_5700", %"$gasrem_5701"
  br i1 %"$gascmp_5702", label %"$out_of_gas_5703", label %"$have_gas_5704"

"$out_of_gas_5703":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5704"

"$have_gas_5704":                                 ; preds = %"$out_of_gas_5703", %entry
  %"$consume_5705" = sub i64 %"$gasrem_5701", %"$gasadd_5700"
  store i64 %"$consume_5705", i64* @_gasrem, align 8
  %"$gasrem_5706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5707" = icmp ugt i64 2, %"$gasrem_5706"
  br i1 %"$gascmp_5707", label %"$out_of_gas_5708", label %"$have_gas_5709"

"$out_of_gas_5708":                               ; preds = %"$have_gas_5704"
  call void @_out_of_gas()
  br label %"$have_gas_5709"

"$have_gas_5709":                                 ; preds = %"$out_of_gas_5708", %"$have_gas_5704"
  %"$consume_5710" = sub i64 %"$gasrem_5706", 2
  store i64 %"$consume_5710", i64* @_gasrem, align 8
  %"$maybeRecord_5712" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_tag_5713" = getelementptr inbounds %TName_Option_ud-registry.Record, %TName_Option_ud-registry.Record* %"$maybeRecord_5712", i32 0, i32 0
  %"$maybeRecord_tag_5714" = load i8, i8* %"$maybeRecord_tag_5713", align 1
  switch i8 %"$maybeRecord_tag_5714", label %"$empty_default_5715" [
    i8 1, label %"$None_5716"
    i8 0, label %"$Some_5718"
  ], !dbg !528

"$None_5716":                                     ; preds = %"$have_gas_5709"
  %"$maybeRecord_5717" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5712" to %CName_None_ud-registry.Record*
  br label %"$matchsucc_5711"

"$Some_5718":                                     ; preds = %"$have_gas_5709"
  %"$maybeRecord_5719" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5712" to %CName_Some_ud-registry.Record*
  %"$record_gep_5720" = getelementptr inbounds %CName_Some_ud-registry.Record, %CName_Some_ud-registry.Record* %"$maybeRecord_5719", i32 0, i32 1
  %"$record_load_5721" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %"$record_gep_5720", align 8
  %record = alloca %TName_ud-registry.Record*, align 8
  store %TName_ud-registry.Record* %"$record_load_5721", %TName_ud-registry.Record** %record, align 8
  %"$gasrem_5722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5723" = icmp ugt i64 1, %"$gasrem_5722"
  br i1 %"$gascmp_5723", label %"$out_of_gas_5724", label %"$have_gas_5725"

"$out_of_gas_5724":                               ; preds = %"$Some_5718"
  call void @_out_of_gas()
  br label %"$have_gas_5725"

"$have_gas_5725":                                 ; preds = %"$out_of_gas_5724", %"$Some_5718"
  %"$consume_5726" = sub i64 %"$gasrem_5722", 1
  store i64 %"$consume_5726", i64* @_gasrem, align 8
  %"$record_5728" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %record, align 8
  %"$record_tag_5729" = getelementptr inbounds %TName_ud-registry.Record, %TName_ud-registry.Record* %"$record_5728", i32 0, i32 0
  %"$record_tag_5730" = load i8, i8* %"$record_tag_5729", align 1
  switch i8 %"$record_tag_5730", label %"$empty_default_5731" [
    i8 0, label %"$ud-registry.Record_5732"
  ], !dbg !529

"$ud-registry.Record_5732":                       ; preds = %"$have_gas_5725"
  %"$record_5733" = bitcast %TName_ud-registry.Record* %"$record_5728" to %CName_ud-registry.Record*
  %"$owner_gep_5734" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_5733", i32 0, i32 1
  %"$owner_load_5735" = load [20 x i8], [20 x i8]* %"$owner_gep_5734", align 1
  %owner = alloca [20 x i8], align 1
  store [20 x i8] %"$owner_load_5735", [20 x i8]* %owner, align 1
  %"$resolver_gep_5736" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_5733", i32 0, i32 2
  %"$resolver_load_5737" = load [20 x i8], [20 x i8]* %"$resolver_gep_5736", align 1
  %resolver = alloca [20 x i8], align 1
  store [20 x i8] %"$resolver_load_5737", [20 x i8]* %resolver, align 1
  %"$gasrem_5738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5739" = icmp ugt i64 1, %"$gasrem_5738"
  br i1 %"$gascmp_5739", label %"$out_of_gas_5740", label %"$have_gas_5741"

"$out_of_gas_5740":                               ; preds = %"$ud-registry.Record_5732"
  call void @_out_of_gas()
  br label %"$have_gas_5741"

"$have_gas_5741":                                 ; preds = %"$out_of_gas_5740", %"$ud-registry.Record_5732"
  %"$consume_5742" = sub i64 %"$gasrem_5738", 1
  store i64 %"$consume_5742", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$execptr_load_5743" = load i8*, i8** @_execptr, align 8
  %"$eq_resolver_5744" = alloca [20 x i8], align 1
  %"$resolver_5745" = load [20 x i8], [20 x i8]* %resolver, align 1
  store [20 x i8] %"$resolver_5745", [20 x i8]* %"$eq_resolver_5744", align 1
  %"$$eq_resolver_5744_5746" = bitcast [20 x i8]* %"$eq_resolver_5744" to i8*
  %"$eq__sender_5747" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_5747", align 1
  %"$$eq__sender_5747_5748" = bitcast [20 x i8]* %"$eq__sender_5747" to i8*
  %"$eq_call_5749" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5743", i32 20, i8* %"$$eq_resolver_5744_5746", i8* %"$$eq__sender_5747_5748")
  store %TName_Bool* %"$eq_call_5749", %TName_Bool** %isOk, align 8, !dbg !532
  %"$gasrem_5750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5751" = icmp ugt i64 2, %"$gasrem_5750"
  br i1 %"$gascmp_5751", label %"$out_of_gas_5752", label %"$have_gas_5753"

"$out_of_gas_5752":                               ; preds = %"$have_gas_5741"
  call void @_out_of_gas()
  br label %"$have_gas_5753"

"$have_gas_5753":                                 ; preds = %"$out_of_gas_5752", %"$have_gas_5741"
  %"$consume_5754" = sub i64 %"$gasrem_5750", 2
  store i64 %"$consume_5754", i64* @_gasrem, align 8
  %"$isOk_5756" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5757" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5756", i32 0, i32 0
  %"$isOk_tag_5758" = load i8, i8* %"$isOk_tag_5757", align 1
  switch i8 %"$isOk_tag_5758", label %"$empty_default_5759" [
    i8 0, label %"$True_5760"
    i8 1, label %"$False_5800"
  ], !dbg !535

"$True_5760":                                     ; preds = %"$have_gas_5753"
  %"$isOk_5761" = bitcast %TName_Bool* %"$isOk_5756" to %CName_True*
  %"$gasrem_5762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5763" = icmp ugt i64 1, %"$gasrem_5762"
  br i1 %"$gascmp_5763", label %"$out_of_gas_5764", label %"$have_gas_5765"

"$out_of_gas_5764":                               ; preds = %"$True_5760"
  call void @_out_of_gas()
  br label %"$have_gas_5765"

"$have_gas_5765":                                 ; preds = %"$out_of_gas_5764", %"$True_5760"
  %"$consume_5766" = sub i64 %"$gasrem_5762", 1
  store i64 %"$consume_5766", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5768" = icmp ugt i64 1, %"$gasrem_5767"
  br i1 %"$gascmp_5768", label %"$out_of_gas_5769", label %"$have_gas_5770"

"$out_of_gas_5769":                               ; preds = %"$have_gas_5765"
  call void @_out_of_gas()
  br label %"$have_gas_5770"

"$have_gas_5770":                                 ; preds = %"$out_of_gas_5769", %"$have_gas_5765"
  %"$consume_5771" = sub i64 %"$gasrem_5767", 1
  store i64 %"$consume_5771", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_140" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_5772" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_5773" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5772", 0
  %"$ud-registry.eConfigured_envptr_5774" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5772", 1
  %"$ud-registry.eConfigured_node_5775" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_5775", align 1
  %"$ud-registry.eConfigured_call_5776" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_5773"(i8* %"$ud-registry.eConfigured_envptr_5774", [32 x i8]* %"$ud-registry.eConfigured_node_5775"), !dbg !536
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_5776", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_140", align 8, !dbg !536
  %"$ud-registry.eConfigured_141" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_140_5777" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_140", align 8
  %"$$ud-registry.eConfigured_140_fptr_5778" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_140_5777", 0
  %"$$ud-registry.eConfigured_140_envptr_5779" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_140_5777", 1
  %"$$ud-registry.eConfigured_140_owner_5780" = alloca [20 x i8], align 1
  %"$owner_5781" = load [20 x i8], [20 x i8]* %owner, align 1
  store [20 x i8] %"$owner_5781", [20 x i8]* %"$$ud-registry.eConfigured_140_owner_5780", align 1
  %"$$ud-registry.eConfigured_140_call_5782" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_140_fptr_5778"(i8* %"$$ud-registry.eConfigured_140_envptr_5779", [20 x i8]* %"$$ud-registry.eConfigured_140_owner_5780"), !dbg !536
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_140_call_5782", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_141", align 8, !dbg !536
  %"$ud-registry.eConfigured_142" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_141_5783" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_141", align 8
  %"$$ud-registry.eConfigured_141_fptr_5784" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_141_5783", 0
  %"$$ud-registry.eConfigured_141_envptr_5785" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_141_5783", 1
  %"$$ud-registry.eConfigured_141_resolver_5786" = alloca [20 x i8], align 1
  %"$resolver_5787" = load [20 x i8], [20 x i8]* %resolver, align 1
  store [20 x i8] %"$resolver_5787", [20 x i8]* %"$$ud-registry.eConfigured_141_resolver_5786", align 1
  %"$$ud-registry.eConfigured_141_call_5788" = call i8* %"$$ud-registry.eConfigured_141_fptr_5784"(i8* %"$$ud-registry.eConfigured_141_envptr_5785", [20 x i8]* %"$$ud-registry.eConfigured_141_resolver_5786"), !dbg !536
  store i8* %"$$ud-registry.eConfigured_141_call_5788", i8** %"$ud-registry.eConfigured_142", align 8, !dbg !536
  %"$$ud-registry.eConfigured_142_5789" = load i8*, i8** %"$ud-registry.eConfigured_142", align 8
  store i8* %"$$ud-registry.eConfigured_142_5789", i8** %e, align 8, !dbg !536
  %"$e_5790" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5792" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5790")
  %"$gasrem_5793" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5794" = icmp ugt i64 %"$_literal_cost_call_5792", %"$gasrem_5793"
  br i1 %"$gascmp_5794", label %"$out_of_gas_5795", label %"$have_gas_5796"

"$out_of_gas_5795":                               ; preds = %"$have_gas_5770"
  call void @_out_of_gas()
  br label %"$have_gas_5796"

"$have_gas_5796":                                 ; preds = %"$out_of_gas_5795", %"$have_gas_5770"
  %"$consume_5797" = sub i64 %"$gasrem_5793", %"$_literal_cost_call_5792"
  store i64 %"$consume_5797", i64* @_gasrem, align 8
  %"$execptr_load_5798" = load i8*, i8** @_execptr, align 8
  %"$e_5799" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5798", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5799"), !dbg !539
  br label %"$matchsucc_5755"

"$False_5800":                                    ; preds = %"$have_gas_5753"
  %"$isOk_5801" = bitcast %TName_Bool* %"$isOk_5756" to %CName_False*
  br label %"$matchsucc_5755"

"$empty_default_5759":                            ; preds = %"$have_gas_5753"
  br label %"$matchsucc_5755"

"$matchsucc_5755":                                ; preds = %"$False_5800", %"$have_gas_5796", %"$empty_default_5759"
  br label %"$matchsucc_5727"

"$empty_default_5731":                            ; preds = %"$have_gas_5725"
  br label %"$matchsucc_5727"

"$matchsucc_5727":                                ; preds = %"$matchsucc_5755", %"$empty_default_5731"
  br label %"$matchsucc_5711"

"$empty_default_5715":                            ; preds = %"$have_gas_5709"
  br label %"$matchsucc_5711"

"$matchsucc_5711":                                ; preds = %"$matchsucc_5727", %"$None_5716", %"$empty_default_5715"
  ret void
}

define void @onResolverConfigured(i8* %0) !dbg !540 {
entry:
  %"$_amount_5803" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5804" = bitcast i8* %"$_amount_5803" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5804", align 8
  %"$_origin_5805" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5806" = bitcast i8* %"$_origin_5805" to [20 x i8]*
  %"$_sender_5807" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5808" = bitcast i8* %"$_sender_5807" to [20 x i8]*
  %"$node_5809" = getelementptr i8, i8* %0, i32 56
  %"$node_5810" = bitcast i8* %"$node_5809" to [32 x i8]*
  call void @"$onResolverConfigured_5686"(%Uint128 %_amount, [20 x i8]* %"$_origin_5806", [20 x i8]* %"$_sender_5808", [32 x i8]* %"$node_5810"), !dbg !541
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "ud-registry.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_211", linkageName: "$fundef_211", scope: !2, file: !2, line: 100, type: !5, scopeLine: 100, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
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
!23 = distinct !DISubprogram(name: "$fundef_209", linkageName: "$fundef_209", scope: !2, file: !2, line: 99, type: !5, scopeLine: 99, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!24 = !DILocation(line: 100, column: 5, scope: !23)
!25 = distinct !DISubprogram(name: "$fundef_207", linkageName: "$fundef_207", scope: !2, file: !2, line: 98, type: !5, scopeLine: 98, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!26 = !DILocation(line: 99, column: 3, scope: !25)
!27 = distinct !DISubprogram(name: "$fundef_205", linkageName: "$fundef_205", scope: !2, file: !2, line: 97, type: !5, scopeLine: 97, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 98, column: 3, scope: !27)
!29 = distinct !DISubprogram(name: "$fundef_215", linkageName: "$fundef_215", scope: !2, file: !2, line: 92, type: !5, scopeLine: 92, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!30 = !DILocation(line: 92, column: 21, scope: !29)
!31 = !DILocation(line: 93, column: 21, scope: !29)
!32 = !DILocation(line: 94, column: 7, scope: !29)
!33 = distinct !DISubprogram(name: "$fundef_213", linkageName: "$fundef_213", scope: !2, file: !2, line: 91, type: !5, scopeLine: 91, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!34 = !DILocation(line: 92, column: 5, scope: !33)
!35 = distinct !DISubprogram(name: "$fundef_217", linkageName: "$fundef_217", scope: !2, file: !2, line: 82, type: !5, scopeLine: 82, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!36 = !DILocation(line: 82, column: 5, scope: !35)
!37 = !DILocation(line: 83, column: 15, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !2, line: 83, column: 7)
!39 = distinct !DILexicalBlock(scope: !35, file: !2, line: 82, column: 5)
!40 = !DILocation(line: 85, column: 7, scope: !41)
!41 = distinct !DILexicalBlock(scope: !39, file: !2, line: 84, column: 7)
!42 = !DILocation(line: 86, column: 34, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !2, line: 86, column: 9)
!44 = distinct !DILexicalBlock(scope: !41, file: !2, line: 85, column: 7)
!45 = distinct !DISubprogram(name: "$fundef_219", linkageName: "$fundef_219", scope: !2, file: !2, line: 77, type: !5, scopeLine: 77, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!46 = !DILocation(line: 77, column: 5, scope: !45)
!47 = distinct !DISubprogram(name: "$fundef_225", linkageName: "$fundef_225", scope: !2, file: !2, line: 74, type: !5, scopeLine: 74, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!48 = !DILocation(line: 74, column: 5, scope: !47)
!49 = distinct !DISubprogram(name: "$fundef_223", linkageName: "$fundef_223", scope: !2, file: !2, line: 73, type: !5, scopeLine: 73, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!50 = !DILocation(line: 74, column: 5, scope: !49)
!51 = distinct !DISubprogram(name: "$fundef_221", linkageName: "$fundef_221", scope: !2, file: !2, line: 72, type: !5, scopeLine: 72, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!52 = !DILocation(line: 73, column: 3, scope: !51)
!53 = distinct !DISubprogram(name: "$fundef_229", linkageName: "$fundef_229", scope: !2, file: !2, line: 69, type: !5, scopeLine: 69, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!54 = !DILocation(line: 69, column: 5, scope: !53)
!55 = distinct !DISubprogram(name: "$fundef_227", linkageName: "$fundef_227", scope: !2, file: !2, line: 68, type: !5, scopeLine: 68, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!56 = !DILocation(line: 69, column: 5, scope: !55)
!57 = distinct !DISubprogram(name: "$fundef_231", linkageName: "$fundef_231", scope: !2, file: !2, line: 65, type: !5, scopeLine: 65, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!58 = !DILocation(line: 65, column: 5, scope: !57)
!59 = distinct !DISubprogram(name: "$fundef_233", linkageName: "$fundef_233", scope: !2, file: !2, line: 62, type: !5, scopeLine: 62, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!60 = !DILocation(line: 62, column: 5, scope: !59)
!61 = distinct !DISubprogram(name: "$fundef_239", linkageName: "$fundef_239", scope: !2, file: !2, line: 59, type: !5, scopeLine: 59, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!62 = !DILocation(line: 59, column: 5, scope: !61)
!63 = distinct !DISubprogram(name: "$fundef_237", linkageName: "$fundef_237", scope: !2, file: !2, line: 58, type: !5, scopeLine: 58, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!64 = !DILocation(line: 59, column: 5, scope: !63)
!65 = distinct !DISubprogram(name: "$fundef_235", linkageName: "$fundef_235", scope: !2, file: !2, line: 57, type: !5, scopeLine: 57, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!66 = !DILocation(line: 58, column: 3, scope: !65)
!67 = distinct !DISubprogram(name: "$fundef_243", linkageName: "$fundef_243", scope: !2, file: !2, line: 54, type: !5, scopeLine: 54, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!68 = !DILocation(line: 54, column: 5, scope: !67)
!69 = distinct !DISubprogram(name: "$fundef_241", linkageName: "$fundef_241", scope: !2, file: !2, line: 53, type: !5, scopeLine: 53, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!70 = !DILocation(line: 54, column: 5, scope: !69)
!71 = distinct !DISubprogram(name: "$fundef_247", linkageName: "$fundef_247", scope: !2, file: !2, line: 39, type: !5, scopeLine: 39, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
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
!88 = distinct !DISubprogram(name: "$fundef_245", linkageName: "$fundef_245", scope: !2, file: !2, line: 38, type: !5, scopeLine: 38, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!89 = !DILocation(line: 39, column: 5, scope: !88)
!90 = distinct !DISubprogram(name: "$fundef_253", linkageName: "$fundef_253", scope: !2, file: !2, line: 33, type: !5, scopeLine: 33, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!91 = !DILocation(line: 33, column: 15, scope: !90)
!92 = !DILocation(line: 34, column: 8, scope: !90)
!93 = distinct !DISubprogram(name: "$fundef_251", linkageName: "$fundef_251", scope: !2, file: !2, line: 31, type: !5, scopeLine: 31, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!94 = !DILocation(line: 31, column: 30, scope: !93)
!95 = !DILocation(line: 31, column: 29, scope: !93)
!96 = !DILocation(line: 33, column: 7, scope: !93)
!97 = !DILocation(line: 35, column: 7, scope: !93)
!98 = distinct !DISubprogram(name: "$fundef_249", linkageName: "$fundef_249", scope: !2, file: !2, line: 30, type: !5, scopeLine: 30, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!99 = !DILocation(line: 31, column: 5, scope: !98)
!100 = distinct !DISubprogram(name: "$fundef_257", linkageName: "$fundef_257", scope: !2, file: !2, line: 27, type: !5, scopeLine: 27, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!101 = !DILocation(line: 27, column: 13, scope: !100)
!102 = !DILocation(line: 27, column: 44, scope: !100)
!103 = distinct !DISubprogram(name: "$fundef_255", linkageName: "$fundef_255", scope: !2, file: !2, line: 26, type: !5, scopeLine: 26, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!104 = !DILocation(line: 27, column: 5, scope: !103)
!105 = distinct !DISubprogram(name: "$fundef_261", linkageName: "$fundef_261", scope: !2, file: !2, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!106 = !DILocation(line: 22, column: 27, scope: !105)
!107 = !DILocation(line: 22, column: 26, scope: !105)
!108 = !DILocation(line: 23, column: 7, scope: !105)
!109 = distinct !DISubprogram(name: "$fundef_259", linkageName: "$fundef_259", scope: !2, file: !2, line: 21, type: !5, scopeLine: 21, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!110 = !DILocation(line: 22, column: 5, scope: !109)
!111 = distinct !DISubprogram(name: "$fundef_265", linkageName: "$fundef_265", scope: !2, file: !2, line: 18, type: !5, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!112 = !DILocation(line: 18, column: 5, scope: !111)
!113 = distinct !DISubprogram(name: "$fundef_263", linkageName: "$fundef_263", scope: !2, file: !2, line: 17, type: !5, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!114 = !DILocation(line: 18, column: 5, scope: !113)
!115 = distinct !DISubprogram(name: "$fundef_267", linkageName: "$fundef_267", scope: !2, file: !2, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!116 = !DILocation(line: 14, column: 5, scope: !115)
!117 = distinct !DISubprogram(name: "$fundef_179", linkageName: "$fundef_179", scope: !118, file: !118, line: 252, type: !5, scopeLine: 252, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!118 = !DIFile(filename: "ListUtils.scillib", directory: "../src/stdlib")
!119 = !DILocation(line: 252, column: 19, scope: !117)
!120 = !DILocation(line: 253, column: 15, scope: !117)
!121 = !DILocation(line: 253, column: 14, scope: !117)
!122 = !DILocation(line: 254, column: 5, scope: !117)
!123 = distinct !DISubprogram(name: "$fundef_177", linkageName: "$fundef_177", scope: !118, file: !118, line: 251, type: !5, scopeLine: 251, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!124 = !DILocation(line: 252, column: 5, scope: !123)
!125 = distinct !DISubprogram(name: "$fundef_175", linkageName: "$fundef_175", scope: !118, file: !118, line: 251, type: !5, scopeLine: 251, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!126 = !DILocation(line: 251, column: 33, scope: !125)
!127 = distinct !DISubprogram(name: "$fundef_185", linkageName: "$fundef_185", scope: !118, file: !118, line: 241, type: !5, scopeLine: 241, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!128 = !DILocation(line: 241, column: 17, scope: !127)
!129 = !DILocation(line: 241, column: 16, scope: !127)
!130 = !DILocation(line: 242, column: 18, scope: !127)
!131 = !DILocation(line: 243, column: 5, scope: !127)
!132 = !DILocation(line: 244, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !118, line: 244, column: 7)
!134 = distinct !DILexicalBlock(scope: !127, file: !118, line: 243, column: 5)
!135 = !DILocation(line: 245, column: 15, scope: !136)
!136 = distinct !DILexicalBlock(scope: !134, file: !118, line: 245, column: 7)
!137 = distinct !DISubprogram(name: "$fundef_183", linkageName: "$fundef_183", scope: !118, file: !118, line: 240, type: !5, scopeLine: 240, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!138 = !DILocation(line: 241, column: 5, scope: !137)
!139 = distinct !DISubprogram(name: "$fundef_181", linkageName: "$fundef_181", scope: !118, file: !118, line: 240, type: !5, scopeLine: 240, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!140 = !DILocation(line: 240, column: 27, scope: !139)
!141 = distinct !DISubprogram(name: "$fundef_195", linkageName: "$fundef_195", scope: !118, file: !118, line: 230, type: !5, scopeLine: 230, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!142 = !DILocation(line: 230, column: 19, scope: !141)
!143 = !DILocation(line: 231, column: 9, scope: !141)
!144 = !DILocation(line: 232, column: 19, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !118, line: 232, column: 11)
!146 = distinct !DILexicalBlock(scope: !141, file: !118, line: 231, column: 9)
!147 = !DILocation(line: 233, column: 20, scope: !148)
!148 = distinct !DILexicalBlock(scope: !146, file: !118, line: 233, column: 11)
!149 = distinct !DISubprogram(name: "$fundef_193", linkageName: "$fundef_193", scope: !118, file: !118, line: 229, type: !5, scopeLine: 229, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!150 = !DILocation(line: 230, column: 9, scope: !149)
!151 = distinct !DISubprogram(name: "$fundef_191", linkageName: "$fundef_191", scope: !118, file: !118, line: 228, type: !5, scopeLine: 228, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!152 = !DILocation(line: 229, column: 7, scope: !151)
!153 = distinct !DISubprogram(name: "$fundef_189", linkageName: "$fundef_189", scope: !118, file: !118, line: 224, type: !5, scopeLine: 224, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!154 = !DILocation(line: 224, column: 18, scope: !153)
!155 = !DILocation(line: 224, column: 17, scope: !153)
!156 = !DILocation(line: 225, column: 16, scope: !153)
!157 = !DILocation(line: 228, column: 35, scope: !153)
!158 = !DILocation(line: 235, column: 5, scope: !153)
!159 = distinct !DISubprogram(name: "$fundef_187", linkageName: "$fundef_187", scope: !118, file: !118, line: 224, type: !5, scopeLine: 224, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!160 = !DILocation(line: 224, column: 5, scope: !159)
!161 = distinct !DISubprogram(name: "$fundef_203", linkageName: "$fundef_203", scope: !118, file: !118, line: 40, type: !5, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!162 = !DILocation(line: 40, column: 16, scope: !161)
!163 = !DILocation(line: 41, column: 7, scope: !161)
!164 = !DILocation(line: 42, column: 17, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !118, line: 42, column: 9)
!166 = distinct !DILexicalBlock(scope: !161, file: !118, line: 41, column: 7)
!167 = !DILocation(line: 43, column: 18, scope: !168)
!168 = distinct !DILexicalBlock(scope: !166, file: !118, line: 43, column: 9)
!169 = distinct !DISubprogram(name: "$fundef_201", linkageName: "$fundef_201", scope: !118, file: !118, line: 39, type: !5, scopeLine: 39, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!170 = !DILocation(line: 40, column: 7, scope: !169)
!171 = distinct !DISubprogram(name: "$fundef_199", linkageName: "$fundef_199", scope: !118, file: !118, line: 38, type: !5, scopeLine: 38, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!172 = !DILocation(line: 38, column: 18, scope: !171)
!173 = !DILocation(line: 38, column: 17, scope: !171)
!174 = !DILocation(line: 39, column: 32, scope: !171)
!175 = !DILocation(line: 45, column: 16, scope: !171)
!176 = !DILocation(line: 46, column: 5, scope: !171)
!177 = distinct !DISubprogram(name: "$fundef_197", linkageName: "$fundef_197", scope: !118, file: !118, line: 38, type: !5, scopeLine: 38, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!178 = !DILocation(line: 38, column: 5, scope: !177)
!179 = distinct !DISubprogram(name: "$fundef_165", linkageName: "$fundef_165", scope: !180, file: !180, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!180 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!181 = !DILocation(line: 22, column: 5, scope: !179)
!182 = !DILocation(line: 23, column: 15, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !180, line: 23, column: 7)
!184 = distinct !DILexicalBlock(scope: !179, file: !180, line: 22, column: 5)
!185 = !DILocation(line: 24, column: 16, scope: !186)
!186 = distinct !DILexicalBlock(scope: !184, file: !180, line: 24, column: 7)
!187 = distinct !DISubprogram(name: "$fundef_169", linkageName: "$fundef_169", scope: !180, file: !180, line: 15, type: !5, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!188 = !DILocation(line: 15, column: 5, scope: !187)
!189 = !DILocation(line: 16, column: 16, scope: !190)
!190 = distinct !DILexicalBlock(scope: !191, file: !180, line: 16, column: 7)
!191 = distinct !DILexicalBlock(scope: !187, file: !180, line: 15, column: 5)
!192 = !DILocation(line: 17, column: 16, scope: !193)
!193 = distinct !DILexicalBlock(scope: !191, file: !180, line: 17, column: 7)
!194 = distinct !DISubprogram(name: "$fundef_167", linkageName: "$fundef_167", scope: !180, file: !180, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!195 = !DILocation(line: 15, column: 5, scope: !194)
!196 = distinct !DISubprogram(name: "$fundef_173", linkageName: "$fundef_173", scope: !180, file: !180, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!197 = !DILocation(line: 8, column: 5, scope: !196)
!198 = !DILocation(line: 9, column: 16, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !180, line: 9, column: 7)
!200 = distinct !DILexicalBlock(scope: !196, file: !180, line: 8, column: 5)
!201 = !DILocation(line: 10, column: 16, scope: !202)
!202 = distinct !DILexicalBlock(scope: !200, file: !180, line: 10, column: 7)
!203 = distinct !DISubprogram(name: "$fundef_171", linkageName: "$fundef_171", scope: !180, file: !180, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!204 = !DILocation(line: 8, column: 5, scope: !203)
!205 = distinct !DISubprogram(name: "$fundef_153", linkageName: "$fundef_153", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!206 = !DIFile(filename: "Prelude", directory: ".")
!207 = !DILocation(line: 1, column: 94, scope: !205)
!208 = distinct !DISubprogram(name: "$fundef_151", linkageName: "$fundef_151", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!209 = !DILocation(line: 1, column: 37, scope: !208)
!210 = !DILocation(line: 1, column: 94, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !206, line: 1, column: 52)
!212 = distinct !DILexicalBlock(scope: !208, file: !206, line: 1, column: 37)
!213 = !DILocation(line: 1, column: 106, scope: !211)
!214 = !DILocation(line: 1, column: 129, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !206, line: 1, column: 122)
!216 = distinct !DISubprogram(name: "$fundef_149", linkageName: "$fundef_149", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!217 = !DILocation(line: 1, column: 37, scope: !216)
!218 = distinct !DISubprogram(name: "$fundef_147", linkageName: "$fundef_147", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!219 = !DILocation(line: 1, column: 17, scope: !218)
!220 = distinct !DISubprogram(name: "$fundef_145", linkageName: "$fundef_145", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!221 = !DILocation(line: 1, column: 17, scope: !220)
!222 = distinct !DISubprogram(name: "$fundef_143", linkageName: "$fundef_143", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!223 = !DILocation(line: 1, column: 17, scope: !222)
!224 = distinct !DISubprogram(name: "$fundef_163", linkageName: "$fundef_163", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!225 = !DILocation(line: 1, column: 37, scope: !224)
!226 = !DILocation(line: 1, column: 74, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !206, line: 1, column: 52)
!228 = distinct !DILexicalBlock(scope: !224, file: !206, line: 1, column: 37)
!229 = !DILocation(line: 1, column: 83, scope: !227)
!230 = !DILocation(line: 1, column: 100, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !206, line: 1, column: 93)
!232 = distinct !DISubprogram(name: "$fundef_161", linkageName: "$fundef_161", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!233 = !DILocation(line: 1, column: 37, scope: !232)
!234 = distinct !DISubprogram(name: "$fundef_159", linkageName: "$fundef_159", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!235 = !DILocation(line: 1, column: 17, scope: !234)
!236 = distinct !DISubprogram(name: "$fundef_157", linkageName: "$fundef_157", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!237 = !DILocation(line: 1, column: 17, scope: !236)
!238 = distinct !DISubprogram(name: "$fundef_155", linkageName: "$fundef_155", scope: !206, file: !206, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
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
