

; gas_remaining: 4001329
; ModuleID = 'Registry'
source_filename = "Registry"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_274" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_310" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_309"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_309" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_311"**, %"$TyDescrTy_ADTTyp_310"* }
%"$TyDescrTy_ADTTyp_Constr_311" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_319" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
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
%"$$fundef_211_env_398" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, %TName_Option_ByStr20*, [20 x i8], [20 x i8], { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_209_env_399" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, [20 x i8], [20 x i8], { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_207_env_400" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, [20 x i8], { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_205_env_401" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_215_env_402" = type { [32 x i8] }
%"$$fundef_213_env_403" = type {}
%"$$fundef_217_env_404" = type { [20 x i8] }
%"$$fundef_219_env_405" = type {}
%"$$fundef_225_env_406" = type { [32 x i8], [20 x i8] }
%"$$fundef_223_env_407" = type { [32 x i8] }
%"$$fundef_221_env_408" = type {}
%"$$fundef_229_env_409" = type { [32 x i8] }
%"$$fundef_227_env_410" = type {}
%"$$fundef_231_env_411" = type {}
%"$$fundef_233_env_412" = type {}
%"$$fundef_239_env_413" = type { [20 x i8], [20 x i8] }
%"$$fundef_237_env_414" = type { [20 x i8] }
%"$$fundef_235_env_415" = type {}
%"$$fundef_243_env_416" = type { [20 x i8] }
%"$$fundef_241_env_417" = type {}
%"$$fundef_247_env_418" = type { %TName_Bool* }
%"$$fundef_245_env_419" = type {}
%"$$fundef_253_env_420" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, [20 x i8] }
%"$$fundef_251_env_421" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { i8*, i8* }*, %TName_List_ByStr20* }
%"$$fundef_249_env_422" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { i8*, i8* }* }
%"$$fundef_257_env_423" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, %TName_List_ByStr20*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_255_env_424" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_261_env_425" = type { { i8*, i8* }*, %TName_List_ByStr20*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_259_env_426" = type { { i8*, i8* }*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_265_env_427" = type { [20 x i8] }
%"$$fundef_263_env_428" = type {}
%"$$fundef_267_env_429" = type { %TName_List_Message* }
%"$$fundef_179_env_430" = type { { i8*, i8* }*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_177_env_431" = type { { i8*, i8* }* }
%"$$fundef_175_env_432" = type { { i8*, i8* }* }
%"$$fundef_185_env_433" = type { { i8*, i8* }*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_183_env_434" = type { { i8*, i8* }* }
%"$$fundef_181_env_435" = type { { i8*, i8* }* }
%"$$fundef_195_env_436" = type { %TName_Option_ByStr20*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, [20 x i8] }
%"$$fundef_193_env_437" = type { %TName_Option_ByStr20*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_191_env_438" = type { %TName_Option_ByStr20*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_189_env_439" = type { { i8*, i8* }* }
%"$$fundef_187_env_440" = type { { i8*, i8* }* }
%"$$fundef_203_env_441" = type { { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, [20 x i8] }
%"$$fundef_201_env_442" = type { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_199_env_443" = type { { i8*, i8* }* }
%"$$fundef_197_env_444" = type { { i8*, i8* }* }
%"$$fundef_165_env_445" = type {}
%"$$fundef_169_env_446" = type { %TName_Bool* }
%"$$fundef_167_env_447" = type {}
%"$$fundef_173_env_448" = type { %TName_Bool* }
%"$$fundef_171_env_449" = type {}
%"$$fundef_153_env_450" = type { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, %TName_List_ByStr20* }
%"$$fundef_151_env_451" = type { { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, %TName_Option_ByStr20* }
%"$$fundef_149_env_452" = type { { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } }
%"$$fundef_147_env_453" = type {}
%"$$fundef_145_env_454" = type {}
%"$$fundef_143_env_455" = type {}
%"$$fundef_163_env_456" = type { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, %TName_List_ByStr20* }
%"$$fundef_161_env_457" = type { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_159_env_458" = type {}
%"$$fundef_157_env_459" = type {}
%"$$fundef_155_env_460" = type {}
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
@"$TyDescr_ADT_Option_List_(ByStr20)_312" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_332" to i8*) }
@"$TyDescr_ADT_Option_ud-registry.Record_313" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_341" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_314" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_350" to i8*) }
@"$TyDescr_ADT_ud-registry.Record_315" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_ud-registry.Record_ADTTyp_Specl_359" to i8*) }
@"$TyDescr_ADT_List_Message_316" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_List_Message_ADTTyp_Specl_371" to i8*) }
@"$TyDescr_ADT_List_ByStr20_317" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_380" to i8*) }
@"$TyDescr_ADT_Bool_318" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_Bool_ADTTyp_Specl_392" to i8*) }
@"$TyDescr_Map_320" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_319"* @"$TyDescr_MapTyp_395" to i8*) }
@"$TyDescr_Map_321" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_319"* @"$TyDescr_MapTyp_396" to i8*) }
@"$TyDescr_Map_322" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_319"* @"$TyDescr_MapTyp_397" to i8*) }
@"$TyDescr_Option_ADTTyp_323" = unnamed_addr constant %"$TyDescrTy_ADTTyp_310" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_352", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 3, %"$TyDescrTy_ADTTyp_Specl_309"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_309"*], [3 x %"$TyDescrTy_ADTTyp_Specl_309"*]* @"$TyDescr_Option_ADTTyp_m_specls_351", i32 0, i32 0) }
@"$TyDescr_Option_Some_List_(ByStr20)_Constr_m_args_324" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317"]
@"$TyDescr_ADT_Some_325" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_List_(ByStr20)_ADTTyp_Constr_326" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_325", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_List_(ByStr20)_Constr_m_args_324", i32 0, i32 0) }
@"$TyDescr_Option_None_List_(ByStr20)_Constr_m_args_327" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_328" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_List_(ByStr20)_ADTTyp_Constr_329" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_328", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_List_(ByStr20)_Constr_m_args_327", i32 0, i32 0) }
@"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_m_constrs_330" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_311"*] [%"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_Option_Some_List_(ByStr20)_ADTTyp_Constr_326", %"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_Option_None_List_(ByStr20)_ADTTyp_Constr_329"]
@"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_m_TArgs_331" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317"]
@"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_332" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_309" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_m_TArgs_331", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_311"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_311"*], [2 x %"$TyDescrTy_ADTTyp_Constr_311"*]* @"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_m_constrs_330", i32 0, i32 0), %"$TyDescrTy_ADTTyp_310"* @"$TyDescr_Option_ADTTyp_323" }
@"$TyDescr_Option_Some_ud-registry.Record_Constr_m_args_333" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315"]
@"$TyDescr_ADT_Some_334" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ud-registry.Record_ADTTyp_Constr_335" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_334", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ud-registry.Record_Constr_m_args_333", i32 0, i32 0) }
@"$TyDescr_Option_None_ud-registry.Record_Constr_m_args_336" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_337" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ud-registry.Record_ADTTyp_Constr_338" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_337", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ud-registry.Record_Constr_m_args_336", i32 0, i32 0) }
@"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_m_constrs_339" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_311"*] [%"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_Option_Some_ud-registry.Record_ADTTyp_Constr_335", %"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_Option_None_ud-registry.Record_ADTTyp_Constr_338"]
@"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_m_TArgs_340" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315"]
@"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_341" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_309" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_m_TArgs_340", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_311"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_311"*], [2 x %"$TyDescrTy_ADTTyp_Constr_311"*]* @"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_m_constrs_339", i32 0, i32 0), %"$TyDescrTy_ADTTyp_310"* @"$TyDescr_Option_ADTTyp_323" }
@"$TyDescr_Option_Some_ByStr20_Constr_m_args_342" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308"]
@"$TyDescr_ADT_Some_343" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_344" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_343", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_Constr_m_args_342", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_Constr_m_args_345" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_346" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_347" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_346", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_Constr_m_args_345", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_348" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_311"*] [%"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_344", %"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_347"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_349" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_350" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_309" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_349", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_311"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_311"*], [2 x %"$TyDescrTy_ADTTyp_Constr_311"*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_348", i32 0, i32 0), %"$TyDescrTy_ADTTyp_310"* @"$TyDescr_Option_ADTTyp_323" }
@"$TyDescr_Option_ADTTyp_m_specls_351" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_309"*] [%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_332", %"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_341", %"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_350"]
@"$TyDescr_ADT_Option_352" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_ud-registry.Record_ADTTyp_353" = unnamed_addr constant %"$TyDescrTy_ADTTyp_310" { %TyDescrString { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$TyDescr_ADT_ud-registry.Record_361", i32 0, i32 0), i32 18 }, i32 0, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_309"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_309"*], [1 x %"$TyDescrTy_ADTTyp_Specl_309"*]* @"$TyDescr_ud-registry.Record_ADTTyp_m_specls_360", i32 0, i32 0) }
@"$TyDescr_ud-registry.Record_ud-registry.Record_Constr_m_args_354" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308"]
@"$TyDescr_ADT_ud-registry.Record_355" = unnamed_addr constant [18 x i8] c"ud-registry.Record"
@"$TyDescr_ud-registry.Record_ud-registry.Record_ADTTyp_Constr_356" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$TyDescr_ADT_ud-registry.Record_355", i32 0, i32 0), i32 18 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_ud-registry.Record_ud-registry.Record_Constr_m_args_354", i32 0, i32 0) }
@"$TyDescr_ud-registry.Record_ADTTyp_Specl_m_constrs_357" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_311"*] [%"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_ud-registry.Record_ud-registry.Record_ADTTyp_Constr_356"]
@"$TyDescr_ud-registry.Record_ADTTyp_Specl_m_TArgs_358" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ud-registry.Record_ADTTyp_Specl_359" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_309" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_ud-registry.Record_ADTTyp_Specl_m_TArgs_358", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_311"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_311"*], [1 x %"$TyDescrTy_ADTTyp_Constr_311"*]* @"$TyDescr_ud-registry.Record_ADTTyp_Specl_m_constrs_357", i32 0, i32 0), %"$TyDescrTy_ADTTyp_310"* @"$TyDescr_ud-registry.Record_ADTTyp_353" }
@"$TyDescr_ud-registry.Record_ADTTyp_m_specls_360" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_309"*] [%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_ud-registry.Record_ADTTyp_Specl_359"]
@"$TyDescr_ADT_ud-registry.Record_361" = unnamed_addr constant [18 x i8] c"ud-registry.Record"
@"$TyDescr_List_ADTTyp_362" = unnamed_addr constant %"$TyDescrTy_ADTTyp_310" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_382", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_309"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_309"*], [2 x %"$TyDescrTy_ADTTyp_Specl_309"*]* @"$TyDescr_List_ADTTyp_m_specls_381", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_363" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_296", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316"]
@"$TyDescr_ADT_Cons_364" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_365" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_364", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_363", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_366" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_367" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_368" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_367", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_366", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_369" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_311"*] [%"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_365", %"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_368"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_370" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_296"]
@"$TyDescr_List_Message_ADTTyp_Specl_371" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_309" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_370", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_311"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_311"*], [2 x %"$TyDescrTy_ADTTyp_Constr_311"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_369", i32 0, i32 0), %"$TyDescrTy_ADTTyp_310"* @"$TyDescr_List_ADTTyp_362" }
@"$TyDescr_List_Cons_ByStr20_Constr_m_args_372" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317"]
@"$TyDescr_ADT_Cons_373" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_374" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_373", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_Constr_m_args_372", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_Constr_m_args_375" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_376" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_377" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_376", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_Constr_m_args_375", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_378" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_311"*] [%"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_374", %"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_377"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_379" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_380" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_309" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_379", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_311"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_311"*], [2 x %"$TyDescrTy_ADTTyp_Constr_311"*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_378", i32 0, i32 0), %"$TyDescrTy_ADTTyp_310"* @"$TyDescr_List_ADTTyp_362" }
@"$TyDescr_List_ADTTyp_m_specls_381" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_309"*] [%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_List_Message_ADTTyp_Specl_371", %"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_380"]
@"$TyDescr_ADT_List_382" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Bool_ADTTyp_383" = unnamed_addr constant %"$TyDescrTy_ADTTyp_310" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_394", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_309"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_309"*], [1 x %"$TyDescrTy_ADTTyp_Specl_309"*]* @"$TyDescr_Bool_ADTTyp_m_specls_393", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_384" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_385" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_386" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_385", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_384", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_387" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_388" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_389" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_311" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_388", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_387", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_390" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_311"*] [%"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_Bool_True_ADTTyp_Constr_386", %"$TyDescrTy_ADTTyp_Constr_311"* @"$TyDescr_Bool_False_ADTTyp_Constr_389"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_391" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_392" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_309" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_391", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_311"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_311"*], [2 x %"$TyDescrTy_ADTTyp_Constr_311"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_390", i32 0, i32 0), %"$TyDescrTy_ADTTyp_310"* @"$TyDescr_Bool_ADTTyp_383" }
@"$TyDescr_Bool_ADTTyp_m_specls_393" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_309"*] [%"$TyDescrTy_ADTTyp_Specl_309"* @"$TyDescr_Bool_ADTTyp_Specl_392"]
@"$TyDescr_ADT_Bool_394" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_395" = unnamed_addr constant %"$TyDescr_MapTyp_319" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317" }
@"$TyDescr_MapTyp_396" = unnamed_addr constant %"$TyDescr_MapTyp_319" { %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }
@"$TyDescr_MapTyp_397" = unnamed_addr constant %"$TyDescr_MapTyp_319" { %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315" }
@"$stringlit_1728" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1733" = unnamed_addr constant [8 x i8] c"AdminSet"
@"$stringlit_1736" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1744" = unnamed_addr constant [10 x i8] c"isApproved"
@"$stringlit_1789" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1794" = unnamed_addr constant [11 x i8] c"ApprovedFor"
@"$stringlit_1797" = unnamed_addr constant [4 x i8] c"user"
@"$stringlit_1805" = unnamed_addr constant [8 x i8] c"operator"
@"$stringlit_1813" = unnamed_addr constant [10 x i8] c"isApproved"
@"$stringlit_1828" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1833" = unnamed_addr constant [8 x i8] c"Approved"
@"$stringlit_1836" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1851" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1856" = unnamed_addr constant [12 x i8] c"NewRegistrar"
@"$stringlit_1859" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1887" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1892" = unnamed_addr constant [9 x i8] c"NewDomain"
@"$stringlit_1895" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_1903" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_1948" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1953" = unnamed_addr constant [10 x i8] c"Configured"
@"$stringlit_1956" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_1964" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_1972" = unnamed_addr constant [8 x i8] c"resolver"
@"$stringlit_1987" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1992" = unnamed_addr constant [5 x i8] c"Error"
@"$stringlit_1995" = unnamed_addr constant [3 x i8] c"msg"
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
@"$records_2625" = unnamed_addr constant [8 x i8] c"records\00"
@"$registrar_2635" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$approvals_2648" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_2660" = unnamed_addr constant [10 x i8] c"operators\00"
@"$admins_2676" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_2683" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_2835" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_2885" = unnamed_addr constant [26 x i8] c"Sender not root node owner"
@"$records_2923" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_2980" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$approvals_3078" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$stringlit_3124" = unnamed_addr constant [21 x i8] c"Sender not node owner"
@"$operators_3161" = unnamed_addr constant [10 x i8] c"operators\00"
@"$operators_3317" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3372" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3388" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3422" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3506" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_3561" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3566" = unnamed_addr constant [18 x i8] c"onConfigureSuccess"
@"$stringlit_3569" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3576" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3583" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3590" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_3636" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$stringlit_3674" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3679" = unnamed_addr constant [18 x i8] c"onConfigureFailure"
@"$stringlit_3682" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3689" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3697" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3704" = unnamed_addr constant [10 x i8] c"_recipient"
@"$records_3751" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3767" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3801" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3886" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_3943" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$records_3981" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3997" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_4031" = unnamed_addr constant [10 x i8] c"operators\00"
@"$approvals_4096" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$records_4125" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4181" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4186" = unnamed_addr constant [17 x i8] c"onTransferSuccess"
@"$stringlit_4189" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_4196" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4203" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4210" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_4256" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$stringlit_4294" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4299" = unnamed_addr constant [17 x i8] c"onTransferFailure"
@"$stringlit_4302" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_4309" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4316" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4323" = unnamed_addr constant [10 x i8] c"_recipient"
@"$records_4368" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4384" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_4418" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_4500" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4564" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$records_4594" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4651" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4656" = unnamed_addr constant [15 x i8] c"onAssignSuccess"
@"$stringlit_4659" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_4666" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_4673" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4680" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4687" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_4733" = unnamed_addr constant [45 x i8] c"Sender not parent owner, approved or operator"
@"$stringlit_4771" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4776" = unnamed_addr constant [15 x i8] c"onAssignFailure"
@"$stringlit_4779" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_4786" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_4793" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4801" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4808" = unnamed_addr constant [10 x i8] c"_recipient"
@"$admins_4853" = unnamed_addr constant [7 x i8] c"admins\00"
@"$records_4891" = unnamed_addr constant [8 x i8] c"records\00"
@"$records_4908" = unnamed_addr constant [8 x i8] c"records\00"
@"$registrar_4922" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$records_5179" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_5236" = unnamed_addr constant [12 x i8] c"Sender admin"
@"$admins_5273" = unnamed_addr constant [7 x i8] c"admins\00"
@"$registrar_5353" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$records_5391" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_5408" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$registrar_5472" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$stringlit_5567" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_5572" = unnamed_addr constant [8 x i8] c"register"
@"$stringlit_5575" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_5582" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_5590" = unnamed_addr constant [6 x i8] c"origin"
@"$stringlit_5597" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_5605" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_5612" = unnamed_addr constant [5 x i8] c"label"
@"$records_5658" = unnamed_addr constant [8 x i8] c"records\00"
@_tydescr_table = constant [27 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %_TyDescrTy_Typ* @"$TyDescr_Event_298", %_TyDescrTy_Typ* @"$TyDescr_Int64_280", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ* @"$TyDescr_Uint256_290", %_TyDescrTy_Typ* @"$TyDescr_Uint32_278", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_304", %_TyDescrTy_Typ* @"$TyDescr_Uint64_282", %_TyDescrTy_Typ* @"$TyDescr_Bnum_294", %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ* @"$TyDescr_Map_322", %_TyDescrTy_Typ* @"$TyDescr_Exception_300", %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ* @"$TyDescr_Int256_288", %_TyDescrTy_Typ* @"$TyDescr_Int128_284", %_TyDescrTy_Typ* @"$TyDescr_Map_320", %_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", %_TyDescrTy_Typ* @"$TyDescr_Bystr_302", %_TyDescrTy_Typ* @"$TyDescr_Message_296", %_TyDescrTy_Typ* @"$TyDescr_Map_321", %_TyDescrTy_Typ* @"$TyDescr_Int32_276"]
@_tydescr_table_length = constant i32 27

define internal %TName_Bool* @"$fundef_211"(%"$$fundef_211_env_398"* %0, %"TName_Option_List_(ByStr20)"* %1) {
entry:
  %"$$fundef_211_env_BoolUtils.orb_2164" = getelementptr inbounds %"$$fundef_211_env_398", %"$$fundef_211_env_398"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2165" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_211_env_BoolUtils.orb_2164"
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2165", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb
  %"$$fundef_211_env_maybeApproved_2166" = getelementptr inbounds %"$$fundef_211_env_398", %"$$fundef_211_env_398"* %0, i32 0, i32 1
  %"$maybeApproved_envload_2167" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_211_env_maybeApproved_2166"
  %maybeApproved = alloca %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_envload_2167", %TName_Option_ByStr20** %maybeApproved
  %"$$fundef_211_env_recordOwner_2168" = getelementptr inbounds %"$$fundef_211_env_398", %"$$fundef_211_env_398"* %0, i32 0, i32 2
  %"$recordOwner_envload_2169" = load [20 x i8], [20 x i8]* %"$$fundef_211_env_recordOwner_2168"
  %recordOwner = alloca [20 x i8]
  store [20 x i8] %"$recordOwner_envload_2169", [20 x i8]* %recordOwner
  %"$$fundef_211_env_sender_2170" = getelementptr inbounds %"$$fundef_211_env_398", %"$$fundef_211_env_398"* %0, i32 0, i32 3
  %"$sender_envload_2171" = load [20 x i8], [20 x i8]* %"$$fundef_211_env_sender_2170"
  %sender = alloca [20 x i8]
  store [20 x i8] %"$sender_envload_2171", [20 x i8]* %sender
  %"$$fundef_211_env_ud-registry.listByStr20Contains_2172" = getelementptr inbounds %"$$fundef_211_env_398", %"$$fundef_211_env_398"* %0, i32 0, i32 4
  %"$ud-registry.listByStr20Contains_envload_2173" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_211_env_ud-registry.listByStr20Contains_2172"
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2173", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains
  %"$retval_212" = alloca %TName_Bool*
  %"$gasrem_2174" = load i64, i64* @_gasrem
  %"$gascmp_2175" = icmp ugt i64 1, %"$gasrem_2174"
  br i1 %"$gascmp_2175", label %"$out_of_gas_2176", label %"$have_gas_2177"

"$out_of_gas_2176":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2177"

"$have_gas_2177":                                 ; preds = %"$out_of_gas_2176", %entry
  %"$consume_2178" = sub i64 %"$gasrem_2174", 1
  store i64 %"$consume_2178", i64* @_gasrem
  %isOwner = alloca %TName_Bool*
  %"$execptr_load_2179" = load i8*, i8** @_execptr
  %"$eq_sender_2180" = alloca [20 x i8]
  %"$sender_2181" = load [20 x i8], [20 x i8]* %sender
  store [20 x i8] %"$sender_2181", [20 x i8]* %"$eq_sender_2180"
  %"$$eq_sender_2180_2182" = bitcast [20 x i8]* %"$eq_sender_2180" to i8*
  %"$eq_recordOwner_2183" = alloca [20 x i8]
  %"$recordOwner_2184" = load [20 x i8], [20 x i8]* %recordOwner
  store [20 x i8] %"$recordOwner_2184", [20 x i8]* %"$eq_recordOwner_2183"
  %"$$eq_recordOwner_2183_2185" = bitcast [20 x i8]* %"$eq_recordOwner_2183" to i8*
  %"$eq_call_2186" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2179", i32 20, i8* %"$$eq_sender_2180_2182", i8* %"$$eq_recordOwner_2183_2185")
  store %TName_Bool* %"$eq_call_2186", %TName_Bool** %isOwner
  %"$gasrem_2187" = load i64, i64* @_gasrem
  %"$gascmp_2188" = icmp ugt i64 1, %"$gasrem_2187"
  br i1 %"$gascmp_2188", label %"$out_of_gas_2189", label %"$have_gas_2190"

"$out_of_gas_2189":                               ; preds = %"$have_gas_2177"
  call void @_out_of_gas()
  br label %"$have_gas_2190"

"$have_gas_2190":                                 ; preds = %"$out_of_gas_2189", %"$have_gas_2177"
  %"$consume_2191" = sub i64 %"$gasrem_2187", 1
  store i64 %"$consume_2191", i64* @_gasrem
  %isApproved = alloca %TName_Bool*
  %"$gasrem_2192" = load i64, i64* @_gasrem
  %"$gascmp_2193" = icmp ugt i64 2, %"$gasrem_2192"
  br i1 %"$gascmp_2193", label %"$out_of_gas_2194", label %"$have_gas_2195"

"$out_of_gas_2194":                               ; preds = %"$have_gas_2190"
  call void @_out_of_gas()
  br label %"$have_gas_2195"

"$have_gas_2195":                                 ; preds = %"$out_of_gas_2194", %"$have_gas_2190"
  %"$consume_2196" = sub i64 %"$gasrem_2192", 2
  store i64 %"$consume_2196", i64* @_gasrem
  %"$maybeApproved_2198" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved
  %"$maybeApproved_tag_2199" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_2198", i32 0, i32 0
  %"$maybeApproved_tag_2200" = load i8, i8* %"$maybeApproved_tag_2199"
  switch i8 %"$maybeApproved_tag_2200", label %"$empty_default_2201" [
    i8 1, label %"$None_2202"
    i8 0, label %"$Some_2212"
  ]

"$None_2202":                                     ; preds = %"$have_gas_2195"
  %"$maybeApproved_2203" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2198" to %CName_None_ByStr20*
  %"$gasrem_2204" = load i64, i64* @_gasrem
  %"$gascmp_2205" = icmp ugt i64 1, %"$gasrem_2204"
  br i1 %"$gascmp_2205", label %"$out_of_gas_2206", label %"$have_gas_2207"

"$out_of_gas_2206":                               ; preds = %"$None_2202"
  call void @_out_of_gas()
  br label %"$have_gas_2207"

"$have_gas_2207":                                 ; preds = %"$out_of_gas_2206", %"$None_2202"
  %"$consume_2208" = sub i64 %"$gasrem_2204", 1
  store i64 %"$consume_2208", i64* @_gasrem
  %"$adtval_2209_load" = load i8*, i8** @_execptr
  %"$adtval_2209_salloc" = call i8* @_salloc(i8* %"$adtval_2209_load", i64 1)
  %"$adtval_2209" = bitcast i8* %"$adtval_2209_salloc" to %CName_False*
  %"$adtgep_2210" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_2209", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2210"
  %"$adtptr_2211" = bitcast %CName_False* %"$adtval_2209" to %TName_Bool*
  store %TName_Bool* %"$adtptr_2211", %TName_Bool** %isApproved
  br label %"$matchsucc_2197"

"$Some_2212":                                     ; preds = %"$have_gas_2195"
  %"$maybeApproved_2213" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2198" to %CName_Some_ByStr20*
  %"$approved_gep_2214" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_2213", i32 0, i32 1
  %"$approved_load_2215" = load [20 x i8], [20 x i8]* %"$approved_gep_2214"
  %approved = alloca [20 x i8]
  store [20 x i8] %"$approved_load_2215", [20 x i8]* %approved
  %"$execptr_load_2216" = load i8*, i8** @_execptr
  %"$eq_sender_2217" = alloca [20 x i8]
  %"$sender_2218" = load [20 x i8], [20 x i8]* %sender
  store [20 x i8] %"$sender_2218", [20 x i8]* %"$eq_sender_2217"
  %"$$eq_sender_2217_2219" = bitcast [20 x i8]* %"$eq_sender_2217" to i8*
  %"$eq_approved_2220" = alloca [20 x i8]
  %"$approved_2221" = load [20 x i8], [20 x i8]* %approved
  store [20 x i8] %"$approved_2221", [20 x i8]* %"$eq_approved_2220"
  %"$$eq_approved_2220_2222" = bitcast [20 x i8]* %"$eq_approved_2220" to i8*
  %"$eq_call_2223" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2216", i32 20, i8* %"$$eq_sender_2217_2219", i8* %"$$eq_approved_2220_2222")
  store %TName_Bool* %"$eq_call_2223", %TName_Bool** %isApproved
  br label %"$matchsucc_2197"

"$empty_default_2201":                            ; preds = %"$have_gas_2195"
  br label %"$matchsucc_2197"

"$matchsucc_2197":                                ; preds = %"$Some_2212", %"$have_gas_2207", %"$empty_default_2201"
  %"$gasrem_2224" = load i64, i64* @_gasrem
  %"$gascmp_2225" = icmp ugt i64 1, %"$gasrem_2224"
  br i1 %"$gascmp_2225", label %"$out_of_gas_2226", label %"$have_gas_2227"

"$out_of_gas_2226":                               ; preds = %"$matchsucc_2197"
  call void @_out_of_gas()
  br label %"$have_gas_2227"

"$have_gas_2227":                                 ; preds = %"$out_of_gas_2226", %"$matchsucc_2197"
  %"$consume_2228" = sub i64 %"$gasrem_2224", 1
  store i64 %"$consume_2228", i64* @_gasrem
  %isOperator = alloca %TName_Bool*
  %"$gasrem_2229" = load i64, i64* @_gasrem
  %"$gascmp_2230" = icmp ugt i64 2, %"$gasrem_2229"
  br i1 %"$gascmp_2230", label %"$out_of_gas_2231", label %"$have_gas_2232"

"$out_of_gas_2231":                               ; preds = %"$have_gas_2227"
  call void @_out_of_gas()
  br label %"$have_gas_2232"

"$have_gas_2232":                                 ; preds = %"$out_of_gas_2231", %"$have_gas_2227"
  %"$consume_2233" = sub i64 %"$gasrem_2229", 2
  store i64 %"$consume_2233", i64* @_gasrem
  %"$maybeOperators_tag_2235" = getelementptr inbounds %"TName_Option_List_(ByStr20)", %"TName_Option_List_(ByStr20)"* %1, i32 0, i32 0
  %"$maybeOperators_tag_2236" = load i8, i8* %"$maybeOperators_tag_2235"
  switch i8 %"$maybeOperators_tag_2236", label %"$empty_default_2237" [
    i8 1, label %"$None_2238"
    i8 0, label %"$Some_2248"
  ]

"$None_2238":                                     ; preds = %"$have_gas_2232"
  %"$maybeOperators_2239" = bitcast %"TName_Option_List_(ByStr20)"* %1 to %"CName_None_List_(ByStr20)"*
  %"$gasrem_2240" = load i64, i64* @_gasrem
  %"$gascmp_2241" = icmp ugt i64 1, %"$gasrem_2240"
  br i1 %"$gascmp_2241", label %"$out_of_gas_2242", label %"$have_gas_2243"

"$out_of_gas_2242":                               ; preds = %"$None_2238"
  call void @_out_of_gas()
  br label %"$have_gas_2243"

"$have_gas_2243":                                 ; preds = %"$out_of_gas_2242", %"$None_2238"
  %"$consume_2244" = sub i64 %"$gasrem_2240", 1
  store i64 %"$consume_2244", i64* @_gasrem
  %"$adtval_2245_load" = load i8*, i8** @_execptr
  %"$adtval_2245_salloc" = call i8* @_salloc(i8* %"$adtval_2245_load", i64 1)
  %"$adtval_2245" = bitcast i8* %"$adtval_2245_salloc" to %CName_False*
  %"$adtgep_2246" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_2245", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2246"
  %"$adtptr_2247" = bitcast %CName_False* %"$adtval_2245" to %TName_Bool*
  store %TName_Bool* %"$adtptr_2247", %TName_Bool** %isOperator
  br label %"$matchsucc_2234"

"$Some_2248":                                     ; preds = %"$have_gas_2232"
  %"$maybeOperators_2249" = bitcast %"TName_Option_List_(ByStr20)"* %1 to %"CName_Some_List_(ByStr20)"*
  %"$operators_gep_2250" = getelementptr inbounds %"CName_Some_List_(ByStr20)", %"CName_Some_List_(ByStr20)"* %"$maybeOperators_2249", i32 0, i32 1
  %"$operators_load_2251" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$operators_gep_2250"
  %operators = alloca %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$operators_load_2251", %TName_List_ByStr20** %operators
  %"$gasrem_2252" = load i64, i64* @_gasrem
  %"$gascmp_2253" = icmp ugt i64 1, %"$gasrem_2252"
  br i1 %"$gascmp_2253", label %"$out_of_gas_2254", label %"$have_gas_2255"

"$out_of_gas_2254":                               ; preds = %"$Some_2248"
  call void @_out_of_gas()
  br label %"$have_gas_2255"

"$have_gas_2255":                                 ; preds = %"$out_of_gas_2254", %"$Some_2248"
  %"$consume_2256" = sub i64 %"$gasrem_2252", 1
  store i64 %"$consume_2256", i64* @_gasrem
  %"$ud-registry.listByStr20Contains_36" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.listByStr20Contains_2257" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains
  %"$ud-registry.listByStr20Contains_fptr_2258" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2257", 0
  %"$ud-registry.listByStr20Contains_envptr_2259" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2257", 1
  %"$operators_2260" = load %TName_List_ByStr20*, %TName_List_ByStr20** %operators
  %"$ud-registry.listByStr20Contains_call_2261" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_2258"(i8* %"$ud-registry.listByStr20Contains_envptr_2259", %TName_List_ByStr20* %"$operators_2260")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_2261", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_36"
  %"$ud-registry.listByStr20Contains_37" = alloca %TName_Bool*
  %"$$ud-registry.listByStr20Contains_36_2262" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_36"
  %"$$ud-registry.listByStr20Contains_36_fptr_2263" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_36_2262", 0
  %"$$ud-registry.listByStr20Contains_36_envptr_2264" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_36_2262", 1
  %"$$ud-registry.listByStr20Contains_36_sender_2265" = alloca [20 x i8]
  %"$sender_2266" = load [20 x i8], [20 x i8]* %sender
  store [20 x i8] %"$sender_2266", [20 x i8]* %"$$ud-registry.listByStr20Contains_36_sender_2265"
  %"$$ud-registry.listByStr20Contains_36_call_2267" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_36_fptr_2263"(i8* %"$$ud-registry.listByStr20Contains_36_envptr_2264", [20 x i8]* %"$$ud-registry.listByStr20Contains_36_sender_2265")
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_36_call_2267", %TName_Bool** %"$ud-registry.listByStr20Contains_37"
  %"$$ud-registry.listByStr20Contains_37_2268" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_37"
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_37_2268", %TName_Bool** %isOperator
  br label %"$matchsucc_2234"

"$empty_default_2237":                            ; preds = %"$have_gas_2232"
  br label %"$matchsucc_2234"

"$matchsucc_2234":                                ; preds = %"$have_gas_2255", %"$have_gas_2243", %"$empty_default_2237"
  %"$gasrem_2269" = load i64, i64* @_gasrem
  %"$gascmp_2270" = icmp ugt i64 1, %"$gasrem_2269"
  br i1 %"$gascmp_2270", label %"$out_of_gas_2271", label %"$have_gas_2272"

"$out_of_gas_2271":                               ; preds = %"$matchsucc_2234"
  call void @_out_of_gas()
  br label %"$have_gas_2272"

"$have_gas_2272":                                 ; preds = %"$out_of_gas_2271", %"$matchsucc_2234"
  %"$consume_2273" = sub i64 %"$gasrem_2269", 1
  store i64 %"$consume_2273", i64* @_gasrem
  %b1 = alloca %TName_Bool*
  %"$gasrem_2274" = load i64, i64* @_gasrem
  %"$gascmp_2275" = icmp ugt i64 1, %"$gasrem_2274"
  br i1 %"$gascmp_2275", label %"$out_of_gas_2276", label %"$have_gas_2277"

"$out_of_gas_2276":                               ; preds = %"$have_gas_2272"
  call void @_out_of_gas()
  br label %"$have_gas_2277"

"$have_gas_2277":                                 ; preds = %"$out_of_gas_2276", %"$have_gas_2272"
  %"$consume_2278" = sub i64 %"$gasrem_2274", 1
  store i64 %"$consume_2278", i64* @_gasrem
  %"$BoolUtils.orb_38" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.orb_2279" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb
  %"$BoolUtils.orb_fptr_2280" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2279", 0
  %"$BoolUtils.orb_envptr_2281" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2279", 1
  %"$isOwner_2282" = load %TName_Bool*, %TName_Bool** %isOwner
  %"$BoolUtils.orb_call_2283" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_2280"(i8* %"$BoolUtils.orb_envptr_2281", %TName_Bool* %"$isOwner_2282")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_2283", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_38"
  %"$BoolUtils.orb_39" = alloca %TName_Bool*
  %"$$BoolUtils.orb_38_2284" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_38"
  %"$$BoolUtils.orb_38_fptr_2285" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_38_2284", 0
  %"$$BoolUtils.orb_38_envptr_2286" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_38_2284", 1
  %"$isApproved_2287" = load %TName_Bool*, %TName_Bool** %isApproved
  %"$$BoolUtils.orb_38_call_2288" = call %TName_Bool* %"$$BoolUtils.orb_38_fptr_2285"(i8* %"$$BoolUtils.orb_38_envptr_2286", %TName_Bool* %"$isApproved_2287")
  store %TName_Bool* %"$$BoolUtils.orb_38_call_2288", %TName_Bool** %"$BoolUtils.orb_39"
  %"$$BoolUtils.orb_39_2289" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_39"
  store %TName_Bool* %"$$BoolUtils.orb_39_2289", %TName_Bool** %b1
  %"$gasrem_2290" = load i64, i64* @_gasrem
  %"$gascmp_2291" = icmp ugt i64 1, %"$gasrem_2290"
  br i1 %"$gascmp_2291", label %"$out_of_gas_2292", label %"$have_gas_2293"

"$out_of_gas_2292":                               ; preds = %"$have_gas_2277"
  call void @_out_of_gas()
  br label %"$have_gas_2293"

"$have_gas_2293":                                 ; preds = %"$out_of_gas_2292", %"$have_gas_2277"
  %"$consume_2294" = sub i64 %"$gasrem_2290", 1
  store i64 %"$consume_2294", i64* @_gasrem
  %"$BoolUtils.orb_40" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.orb_2295" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb
  %"$BoolUtils.orb_fptr_2296" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2295", 0
  %"$BoolUtils.orb_envptr_2297" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2295", 1
  %"$b1_2298" = load %TName_Bool*, %TName_Bool** %b1
  %"$BoolUtils.orb_call_2299" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_2296"(i8* %"$BoolUtils.orb_envptr_2297", %TName_Bool* %"$b1_2298")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_2299", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_40"
  %"$BoolUtils.orb_41" = alloca %TName_Bool*
  %"$$BoolUtils.orb_40_2300" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_40"
  %"$$BoolUtils.orb_40_fptr_2301" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_40_2300", 0
  %"$$BoolUtils.orb_40_envptr_2302" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_40_2300", 1
  %"$isOperator_2303" = load %TName_Bool*, %TName_Bool** %isOperator
  %"$$BoolUtils.orb_40_call_2304" = call %TName_Bool* %"$$BoolUtils.orb_40_fptr_2301"(i8* %"$$BoolUtils.orb_40_envptr_2302", %TName_Bool* %"$isOperator_2303")
  store %TName_Bool* %"$$BoolUtils.orb_40_call_2304", %TName_Bool** %"$BoolUtils.orb_41"
  %"$$BoolUtils.orb_41_2305" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_41"
  store %TName_Bool* %"$$BoolUtils.orb_41_2305", %TName_Bool** %"$retval_212"
  %"$$retval_212_2306" = load %TName_Bool*, %TName_Bool** %"$retval_212"
  ret %TName_Bool* %"$$retval_212_2306"
}

define internal { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } @"$fundef_209"(%"$$fundef_209_env_399"* %0, %TName_Option_ByStr20* %1) {
entry:
  %"$$fundef_209_env_BoolUtils.orb_2137" = getelementptr inbounds %"$$fundef_209_env_399", %"$$fundef_209_env_399"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2138" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_209_env_BoolUtils.orb_2137"
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2138", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb
  %"$$fundef_209_env_recordOwner_2139" = getelementptr inbounds %"$$fundef_209_env_399", %"$$fundef_209_env_399"* %0, i32 0, i32 1
  %"$recordOwner_envload_2140" = load [20 x i8], [20 x i8]* %"$$fundef_209_env_recordOwner_2139"
  %recordOwner = alloca [20 x i8]
  store [20 x i8] %"$recordOwner_envload_2140", [20 x i8]* %recordOwner
  %"$$fundef_209_env_sender_2141" = getelementptr inbounds %"$$fundef_209_env_399", %"$$fundef_209_env_399"* %0, i32 0, i32 2
  %"$sender_envload_2142" = load [20 x i8], [20 x i8]* %"$$fundef_209_env_sender_2141"
  %sender = alloca [20 x i8]
  store [20 x i8] %"$sender_envload_2142", [20 x i8]* %sender
  %"$$fundef_209_env_ud-registry.listByStr20Contains_2143" = getelementptr inbounds %"$$fundef_209_env_399", %"$$fundef_209_env_399"* %0, i32 0, i32 3
  %"$ud-registry.listByStr20Contains_envload_2144" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_209_env_ud-registry.listByStr20Contains_2143"
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2144", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains
  %"$retval_210" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }
  %"$gasrem_2145" = load i64, i64* @_gasrem
  %"$gascmp_2146" = icmp ugt i64 1, %"$gasrem_2145"
  br i1 %"$gascmp_2146", label %"$out_of_gas_2147", label %"$have_gas_2148"

"$out_of_gas_2147":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2148"

"$have_gas_2148":                                 ; preds = %"$out_of_gas_2147", %entry
  %"$consume_2149" = sub i64 %"$gasrem_2145", 1
  store i64 %"$consume_2149", i64* @_gasrem
  %"$$fundef_211_envp_2150_load" = load i8*, i8** @_execptr
  %"$$fundef_211_envp_2150_salloc" = call i8* @_salloc(i8* %"$$fundef_211_envp_2150_load", i64 80)
  %"$$fundef_211_envp_2150" = bitcast i8* %"$$fundef_211_envp_2150_salloc" to %"$$fundef_211_env_398"*
  %"$$fundef_211_env_voidp_2152" = bitcast %"$$fundef_211_env_398"* %"$$fundef_211_envp_2150" to i8*
  %"$$fundef_211_cloval_2153" = insertvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)* bitcast (%TName_Bool* (%"$$fundef_211_env_398"*, %"TName_Option_List_(ByStr20)"*)* @"$fundef_211" to %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*), i8* undef }, i8* %"$$fundef_211_env_voidp_2152", 1
  %"$$fundef_211_env_BoolUtils.orb_2154" = getelementptr inbounds %"$$fundef_211_env_398", %"$$fundef_211_env_398"* %"$$fundef_211_envp_2150", i32 0, i32 0
  %"$BoolUtils.orb_2155" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2155", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_211_env_BoolUtils.orb_2154"
  %"$$fundef_211_env_maybeApproved_2156" = getelementptr inbounds %"$$fundef_211_env_398", %"$$fundef_211_env_398"* %"$$fundef_211_envp_2150", i32 0, i32 1
  store %TName_Option_ByStr20* %1, %TName_Option_ByStr20** %"$$fundef_211_env_maybeApproved_2156"
  %"$$fundef_211_env_recordOwner_2157" = getelementptr inbounds %"$$fundef_211_env_398", %"$$fundef_211_env_398"* %"$$fundef_211_envp_2150", i32 0, i32 2
  %"$recordOwner_2158" = load [20 x i8], [20 x i8]* %recordOwner
  store [20 x i8] %"$recordOwner_2158", [20 x i8]* %"$$fundef_211_env_recordOwner_2157"
  %"$$fundef_211_env_sender_2159" = getelementptr inbounds %"$$fundef_211_env_398", %"$$fundef_211_env_398"* %"$$fundef_211_envp_2150", i32 0, i32 3
  %"$sender_2160" = load [20 x i8], [20 x i8]* %sender
  store [20 x i8] %"$sender_2160", [20 x i8]* %"$$fundef_211_env_sender_2159"
  %"$$fundef_211_env_ud-registry.listByStr20Contains_2161" = getelementptr inbounds %"$$fundef_211_env_398", %"$$fundef_211_env_398"* %"$$fundef_211_envp_2150", i32 0, i32 4
  %"$ud-registry.listByStr20Contains_2162" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2162", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_211_env_ud-registry.listByStr20Contains_2161"
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$fundef_211_cloval_2153", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$retval_210"
  %"$$retval_210_2163" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$retval_210"
  ret { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$retval_210_2163"
}

define internal { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } @"$fundef_207"(%"$$fundef_207_env_400"* %0, [20 x i8]* %1) {
entry:
  %recordOwner = load [20 x i8], [20 x i8]* %1
  %"$$fundef_207_env_BoolUtils.orb_2114" = getelementptr inbounds %"$$fundef_207_env_400", %"$$fundef_207_env_400"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2115" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_207_env_BoolUtils.orb_2114"
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2115", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb
  %"$$fundef_207_env_sender_2116" = getelementptr inbounds %"$$fundef_207_env_400", %"$$fundef_207_env_400"* %0, i32 0, i32 1
  %"$sender_envload_2117" = load [20 x i8], [20 x i8]* %"$$fundef_207_env_sender_2116"
  %sender = alloca [20 x i8]
  store [20 x i8] %"$sender_envload_2117", [20 x i8]* %sender
  %"$$fundef_207_env_ud-registry.listByStr20Contains_2118" = getelementptr inbounds %"$$fundef_207_env_400", %"$$fundef_207_env_400"* %0, i32 0, i32 2
  %"$ud-registry.listByStr20Contains_envload_2119" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_207_env_ud-registry.listByStr20Contains_2118"
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2119", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains
  %"$retval_208" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }
  %"$gasrem_2120" = load i64, i64* @_gasrem
  %"$gascmp_2121" = icmp ugt i64 1, %"$gasrem_2120"
  br i1 %"$gascmp_2121", label %"$out_of_gas_2122", label %"$have_gas_2123"

"$out_of_gas_2122":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2123"

"$have_gas_2123":                                 ; preds = %"$out_of_gas_2122", %entry
  %"$consume_2124" = sub i64 %"$gasrem_2120", 1
  store i64 %"$consume_2124", i64* @_gasrem
  %"$$fundef_209_envp_2125_load" = load i8*, i8** @_execptr
  %"$$fundef_209_envp_2125_salloc" = call i8* @_salloc(i8* %"$$fundef_209_envp_2125_load", i64 72)
  %"$$fundef_209_envp_2125" = bitcast i8* %"$$fundef_209_envp_2125_salloc" to %"$$fundef_209_env_399"*
  %"$$fundef_209_env_voidp_2127" = bitcast %"$$fundef_209_env_399"* %"$$fundef_209_envp_2125" to i8*
  %"$$fundef_209_cloval_2128" = insertvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)* bitcast ({ %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (%"$$fundef_209_env_399"*, %TName_Option_ByStr20*)* @"$fundef_209" to { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_209_env_voidp_2127", 1
  %"$$fundef_209_env_BoolUtils.orb_2129" = getelementptr inbounds %"$$fundef_209_env_399", %"$$fundef_209_env_399"* %"$$fundef_209_envp_2125", i32 0, i32 0
  %"$BoolUtils.orb_2130" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2130", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_209_env_BoolUtils.orb_2129"
  %"$$fundef_209_env_recordOwner_2131" = getelementptr inbounds %"$$fundef_209_env_399", %"$$fundef_209_env_399"* %"$$fundef_209_envp_2125", i32 0, i32 1
  store [20 x i8] %recordOwner, [20 x i8]* %"$$fundef_209_env_recordOwner_2131"
  %"$$fundef_209_env_sender_2132" = getelementptr inbounds %"$$fundef_209_env_399", %"$$fundef_209_env_399"* %"$$fundef_209_envp_2125", i32 0, i32 2
  %"$sender_2133" = load [20 x i8], [20 x i8]* %sender
  store [20 x i8] %"$sender_2133", [20 x i8]* %"$$fundef_209_env_sender_2132"
  %"$$fundef_209_env_ud-registry.listByStr20Contains_2134" = getelementptr inbounds %"$$fundef_209_env_399", %"$$fundef_209_env_399"* %"$$fundef_209_envp_2125", i32 0, i32 3
  %"$ud-registry.listByStr20Contains_2135" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2135", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_209_env_ud-registry.listByStr20Contains_2134"
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_209_cloval_2128", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_208"
  %"$$retval_208_2136" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_208"
  ret { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$retval_208_2136"
}

define internal { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_205"(%"$$fundef_205_env_401"* %0, [20 x i8]* %1) {
entry:
  %sender = load [20 x i8], [20 x i8]* %1
  %"$$fundef_205_env_BoolUtils.orb_2095" = getelementptr inbounds %"$$fundef_205_env_401", %"$$fundef_205_env_401"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2096" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_205_env_BoolUtils.orb_2095"
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2096", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb
  %"$$fundef_205_env_ud-registry.listByStr20Contains_2097" = getelementptr inbounds %"$$fundef_205_env_401", %"$$fundef_205_env_401"* %0, i32 0, i32 1
  %"$ud-registry.listByStr20Contains_envload_2098" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_205_env_ud-registry.listByStr20Contains_2097"
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2098", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains
  %"$retval_206" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$gasrem_2099" = load i64, i64* @_gasrem
  %"$gascmp_2100" = icmp ugt i64 1, %"$gasrem_2099"
  br i1 %"$gascmp_2100", label %"$out_of_gas_2101", label %"$have_gas_2102"

"$out_of_gas_2101":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2102"

"$have_gas_2102":                                 ; preds = %"$out_of_gas_2101", %entry
  %"$consume_2103" = sub i64 %"$gasrem_2099", 1
  store i64 %"$consume_2103", i64* @_gasrem
  %"$$fundef_207_envp_2104_load" = load i8*, i8** @_execptr
  %"$$fundef_207_envp_2104_salloc" = call i8* @_salloc(i8* %"$$fundef_207_envp_2104_load", i64 56)
  %"$$fundef_207_envp_2104" = bitcast i8* %"$$fundef_207_envp_2104_salloc" to %"$$fundef_207_env_400"*
  %"$$fundef_207_env_voidp_2106" = bitcast %"$$fundef_207_env_400"* %"$$fundef_207_envp_2104" to i8*
  %"$$fundef_207_cloval_2107" = insertvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (%"$$fundef_207_env_400"*, [20 x i8]*)* @"$fundef_207" to { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_207_env_voidp_2106", 1
  %"$$fundef_207_env_BoolUtils.orb_2108" = getelementptr inbounds %"$$fundef_207_env_400", %"$$fundef_207_env_400"* %"$$fundef_207_envp_2104", i32 0, i32 0
  %"$BoolUtils.orb_2109" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2109", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_207_env_BoolUtils.orb_2108"
  %"$$fundef_207_env_sender_2110" = getelementptr inbounds %"$$fundef_207_env_400", %"$$fundef_207_env_400"* %"$$fundef_207_envp_2104", i32 0, i32 1
  store [20 x i8] %sender, [20 x i8]* %"$$fundef_207_env_sender_2110"
  %"$$fundef_207_env_ud-registry.listByStr20Contains_2111" = getelementptr inbounds %"$$fundef_207_env_400", %"$$fundef_207_env_400"* %"$$fundef_207_envp_2104", i32 0, i32 2
  %"$ud-registry.listByStr20Contains_2112" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2112", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_207_env_ud-registry.listByStr20Contains_2111"
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_207_cloval_2107", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_206"
  %"$$retval_206_2113" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_206"
  ret { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_206_2113"
}

define internal void @"$fundef_215"(%"$$fundef_215_env_402"* %0, [32 x i8]* %1, %String %2) {
entry:
  %"$$fundef_215_env_parent_2061" = getelementptr inbounds %"$$fundef_215_env_402", %"$$fundef_215_env_402"* %0, i32 0, i32 0
  %"$parent_envload_2062" = load [32 x i8], [32 x i8]* %"$$fundef_215_env_parent_2061"
  %parent = alloca [32 x i8]
  store [32 x i8] %"$parent_envload_2062", [32 x i8]* %parent
  %"$retval_216" = alloca [32 x i8]
  %"$gasrem_2063" = load i64, i64* @_gasrem
  %"$gascmp_2064" = icmp ugt i64 1, %"$gasrem_2063"
  br i1 %"$gascmp_2064", label %"$out_of_gas_2065", label %"$have_gas_2066"

"$out_of_gas_2065":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2066"

"$have_gas_2066":                                 ; preds = %"$out_of_gas_2065", %entry
  %"$consume_2067" = sub i64 %"$gasrem_2063", 1
  store i64 %"$consume_2067", i64* @_gasrem
  %labelHash = alloca [32 x i8]
  %"$execptr_load_2068" = load i8*, i8** @_execptr
  %"$sha256hash_label_2069" = alloca %String
  store %String %2, %String* %"$sha256hash_label_2069"
  %"$$sha256hash_label_2069_2070" = bitcast %String* %"$sha256hash_label_2069" to i8*
  %"$sha256hash_call_2071" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_2068", %_TyDescrTy_Typ* @"$TyDescr_String_292", i8* %"$$sha256hash_label_2069_2070")
  %"$sha256hash_2072" = load [32 x i8], [32 x i8]* %"$sha256hash_call_2071"
  store [32 x i8] %"$sha256hash_2072", [32 x i8]* %labelHash
  %"$gasrem_2073" = load i64, i64* @_gasrem
  %"$gascmp_2074" = icmp ugt i64 1, %"$gasrem_2073"
  br i1 %"$gascmp_2074", label %"$out_of_gas_2075", label %"$have_gas_2076"

"$out_of_gas_2075":                               ; preds = %"$have_gas_2066"
  call void @_out_of_gas()
  br label %"$have_gas_2076"

"$have_gas_2076":                                 ; preds = %"$out_of_gas_2075", %"$have_gas_2066"
  %"$consume_2077" = sub i64 %"$gasrem_2073", 1
  store i64 %"$consume_2077", i64* @_gasrem
  %nodeInput = alloca [64 x i8]
  %"$execptr_load_2078" = load i8*, i8** @_execptr
  %"$concat_parent_2079" = alloca [32 x i8]
  %"$parent_2080" = load [32 x i8], [32 x i8]* %parent
  store [32 x i8] %"$parent_2080", [32 x i8]* %"$concat_parent_2079"
  %"$$concat_parent_2079_2081" = bitcast [32 x i8]* %"$concat_parent_2079" to i8*
  %"$concat_labelHash_2082" = alloca [32 x i8]
  %"$labelHash_2083" = load [32 x i8], [32 x i8]* %labelHash
  store [32 x i8] %"$labelHash_2083", [32 x i8]* %"$concat_labelHash_2082"
  %"$$concat_labelHash_2082_2084" = bitcast [32 x i8]* %"$concat_labelHash_2082" to i8*
  %"$concat_call_2085" = call i8* @_concat_ByStrX(i8* %"$execptr_load_2078", i32 32, i8* %"$$concat_parent_2079_2081", i32 32, i8* %"$$concat_labelHash_2082_2084")
  %"$concat_2086" = bitcast i8* %"$concat_call_2085" to [64 x i8]*
  %"$concat_2087" = load [64 x i8], [64 x i8]* %"$concat_2086"
  store [64 x i8] %"$concat_2087", [64 x i8]* %nodeInput
  %"$execptr_load_2088" = load i8*, i8** @_execptr
  %"$sha256hash_nodeInput_2089" = alloca [64 x i8]
  %"$nodeInput_2090" = load [64 x i8], [64 x i8]* %nodeInput
  store [64 x i8] %"$nodeInput_2090", [64 x i8]* %"$sha256hash_nodeInput_2089"
  %"$$sha256hash_nodeInput_2089_2091" = bitcast [64 x i8]* %"$sha256hash_nodeInput_2089" to i8*
  %"$sha256hash_call_2092" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_2088", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_304", i8* %"$$sha256hash_nodeInput_2089_2091")
  %"$sha256hash_2093" = load [32 x i8], [32 x i8]* %"$sha256hash_call_2092"
  store [32 x i8] %"$sha256hash_2093", [32 x i8]* %"$retval_216"
  %"$$retval_216_2094" = load [32 x i8], [32 x i8]* %"$retval_216"
  store [32 x i8] %"$$retval_216_2094", [32 x i8]* %1
  ret void
}

define internal { void (i8*, [32 x i8]*, %String)*, i8* } @"$fundef_213"(%"$$fundef_213_env_403"* %0, [32 x i8]* %1) {
entry:
  %parent = load [32 x i8], [32 x i8]* %1
  %"$retval_214" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }
  %"$gasrem_2050" = load i64, i64* @_gasrem
  %"$gascmp_2051" = icmp ugt i64 1, %"$gasrem_2050"
  br i1 %"$gascmp_2051", label %"$out_of_gas_2052", label %"$have_gas_2053"

"$out_of_gas_2052":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2053"

"$have_gas_2053":                                 ; preds = %"$out_of_gas_2052", %entry
  %"$consume_2054" = sub i64 %"$gasrem_2050", 1
  store i64 %"$consume_2054", i64* @_gasrem
  %"$$fundef_215_envp_2055_load" = load i8*, i8** @_execptr
  %"$$fundef_215_envp_2055_salloc" = call i8* @_salloc(i8* %"$$fundef_215_envp_2055_load", i64 32)
  %"$$fundef_215_envp_2055" = bitcast i8* %"$$fundef_215_envp_2055_salloc" to %"$$fundef_215_env_402"*
  %"$$fundef_215_env_voidp_2057" = bitcast %"$$fundef_215_env_402"* %"$$fundef_215_envp_2055" to i8*
  %"$$fundef_215_cloval_2058" = insertvalue { void (i8*, [32 x i8]*, %String)*, i8* } { void (i8*, [32 x i8]*, %String)* bitcast (void (%"$$fundef_215_env_402"*, [32 x i8]*, %String)* @"$fundef_215" to void (i8*, [32 x i8]*, %String)*), i8* undef }, i8* %"$$fundef_215_env_voidp_2057", 1
  %"$$fundef_215_env_parent_2059" = getelementptr inbounds %"$$fundef_215_env_402", %"$$fundef_215_env_402"* %"$$fundef_215_envp_2055", i32 0, i32 0
  store [32 x i8] %parent, [32 x i8]* %"$$fundef_215_env_parent_2059"
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$$fundef_215_cloval_2058", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$retval_214"
  %"$$retval_214_2060" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$retval_214"
  ret { void (i8*, [32 x i8]*, %String)*, i8* } %"$$retval_214_2060"
}

define internal void @"$fundef_217"(%"$$fundef_217_env_404"* %0, [20 x i8]* %1, %TName_Option_ud-registry.Record* %2) {
entry:
  %"$$fundef_217_env_ud-registry.zeroByStr20_2004" = getelementptr inbounds %"$$fundef_217_env_404", %"$$fundef_217_env_404"* %0, i32 0, i32 0
  %"$ud-registry.zeroByStr20_envload_2005" = load [20 x i8], [20 x i8]* %"$$fundef_217_env_ud-registry.zeroByStr20_2004"
  %ud-registry.zeroByStr20 = alloca [20 x i8]
  store [20 x i8] %"$ud-registry.zeroByStr20_envload_2005", [20 x i8]* %ud-registry.zeroByStr20
  %"$retval_218" = alloca [20 x i8]
  %"$gasrem_2006" = load i64, i64* @_gasrem
  %"$gascmp_2007" = icmp ugt i64 2, %"$gasrem_2006"
  br i1 %"$gascmp_2007", label %"$out_of_gas_2008", label %"$have_gas_2009"

"$out_of_gas_2008":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2009"

"$have_gas_2009":                                 ; preds = %"$out_of_gas_2008", %entry
  %"$consume_2010" = sub i64 %"$gasrem_2006", 2
  store i64 %"$consume_2010", i64* @_gasrem
  %"$maybeRecord_tag_2012" = getelementptr inbounds %TName_Option_ud-registry.Record, %TName_Option_ud-registry.Record* %2, i32 0, i32 0
  %"$maybeRecord_tag_2013" = load i8, i8* %"$maybeRecord_tag_2012"
  switch i8 %"$maybeRecord_tag_2013", label %"$empty_default_2014" [
    i8 1, label %"$None_2015"
    i8 0, label %"$Some_2023"
  ]

"$None_2015":                                     ; preds = %"$have_gas_2009"
  %"$maybeRecord_2016" = bitcast %TName_Option_ud-registry.Record* %2 to %CName_None_ud-registry.Record*
  %"$gasrem_2017" = load i64, i64* @_gasrem
  %"$gascmp_2018" = icmp ugt i64 1, %"$gasrem_2017"
  br i1 %"$gascmp_2018", label %"$out_of_gas_2019", label %"$have_gas_2020"

"$out_of_gas_2019":                               ; preds = %"$None_2015"
  call void @_out_of_gas()
  br label %"$have_gas_2020"

"$have_gas_2020":                                 ; preds = %"$out_of_gas_2019", %"$None_2015"
  %"$consume_2021" = sub i64 %"$gasrem_2017", 1
  store i64 %"$consume_2021", i64* @_gasrem
  %"$ud-registry.zeroByStr20_2022" = load [20 x i8], [20 x i8]* %ud-registry.zeroByStr20
  store [20 x i8] %"$ud-registry.zeroByStr20_2022", [20 x i8]* %"$retval_218"
  br label %"$matchsucc_2011"

"$Some_2023":                                     ; preds = %"$have_gas_2009"
  %"$maybeRecord_2024" = bitcast %TName_Option_ud-registry.Record* %2 to %CName_Some_ud-registry.Record*
  %"$record_gep_2025" = getelementptr inbounds %CName_Some_ud-registry.Record, %CName_Some_ud-registry.Record* %"$maybeRecord_2024", i32 0, i32 1
  %"$record_load_2026" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %"$record_gep_2025"
  %record = alloca %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$record_load_2026", %TName_ud-registry.Record** %record
  %"$gasrem_2027" = load i64, i64* @_gasrem
  %"$gascmp_2028" = icmp ugt i64 1, %"$gasrem_2027"
  br i1 %"$gascmp_2028", label %"$out_of_gas_2029", label %"$have_gas_2030"

"$out_of_gas_2029":                               ; preds = %"$Some_2023"
  call void @_out_of_gas()
  br label %"$have_gas_2030"

"$have_gas_2030":                                 ; preds = %"$out_of_gas_2029", %"$Some_2023"
  %"$consume_2031" = sub i64 %"$gasrem_2027", 1
  store i64 %"$consume_2031", i64* @_gasrem
  %"$record_2033" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %record
  %"$record_tag_2034" = getelementptr inbounds %TName_ud-registry.Record, %TName_ud-registry.Record* %"$record_2033", i32 0, i32 0
  %"$record_tag_2035" = load i8, i8* %"$record_tag_2034"
  switch i8 %"$record_tag_2035", label %"$empty_default_2036" [
    i8 0, label %"$ud-registry.Record_2037"
  ]

"$ud-registry.Record_2037":                       ; preds = %"$have_gas_2030"
  %"$record_2038" = bitcast %TName_ud-registry.Record* %"$record_2033" to %CName_ud-registry.Record*
  %"$owner_gep_2039" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_2038", i32 0, i32 1
  %"$owner_load_2040" = load [20 x i8], [20 x i8]* %"$owner_gep_2039"
  %owner = alloca [20 x i8]
  store [20 x i8] %"$owner_load_2040", [20 x i8]* %owner
  %"$resolver_gep_2041" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_2038", i32 0, i32 2
  %"$resolver_load_2042" = load [20 x i8], [20 x i8]* %"$resolver_gep_2041"
  %resolver = alloca [20 x i8]
  store [20 x i8] %"$resolver_load_2042", [20 x i8]* %resolver
  %"$gasrem_2043" = load i64, i64* @_gasrem
  %"$gascmp_2044" = icmp ugt i64 1, %"$gasrem_2043"
  br i1 %"$gascmp_2044", label %"$out_of_gas_2045", label %"$have_gas_2046"

"$out_of_gas_2045":                               ; preds = %"$ud-registry.Record_2037"
  call void @_out_of_gas()
  br label %"$have_gas_2046"

"$have_gas_2046":                                 ; preds = %"$out_of_gas_2045", %"$ud-registry.Record_2037"
  %"$consume_2047" = sub i64 %"$gasrem_2043", 1
  store i64 %"$consume_2047", i64* @_gasrem
  %"$owner_2048" = load [20 x i8], [20 x i8]* %owner
  store [20 x i8] %"$owner_2048", [20 x i8]* %"$retval_218"
  br label %"$matchsucc_2032"

"$empty_default_2036":                            ; preds = %"$have_gas_2030"
  br label %"$matchsucc_2032"

"$matchsucc_2032":                                ; preds = %"$have_gas_2046", %"$empty_default_2036"
  br label %"$matchsucc_2011"

"$empty_default_2014":                            ; preds = %"$have_gas_2009"
  br label %"$matchsucc_2011"

"$matchsucc_2011":                                ; preds = %"$matchsucc_2032", %"$have_gas_2020", %"$empty_default_2014"
  %"$$retval_218_2049" = load [20 x i8], [20 x i8]* %"$retval_218"
  store [20 x i8] %"$$retval_218_2049", [20 x i8]* %1
  ret void
}

define internal i8* @"$fundef_219"(%"$$fundef_219_env_405"* %0, %String %1) {
entry:
  %"$retval_220" = alloca i8*
  %"$gasrem_1981" = load i64, i64* @_gasrem
  %"$gascmp_1982" = icmp ugt i64 1, %"$gasrem_1981"
  br i1 %"$gascmp_1982", label %"$out_of_gas_1983", label %"$have_gas_1984"

"$out_of_gas_1983":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1984"

"$have_gas_1984":                                 ; preds = %"$out_of_gas_1983", %entry
  %"$consume_1985" = sub i64 %"$gasrem_1981", 1
  store i64 %"$consume_1985", i64* @_gasrem
  %"$msgobj_1986_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_1986_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1986_salloc_load", i64 81)
  %"$msgobj_1986_salloc" = bitcast i8* %"$msgobj_1986_salloc_salloc" to [81 x i8]*
  %"$msgobj_1986" = bitcast [81 x i8]* %"$msgobj_1986_salloc" to i8*
  store i8 2, i8* %"$msgobj_1986"
  %"$msgobj_fname_1988" = getelementptr i8, i8* %"$msgobj_1986", i32 1
  %"$msgobj_fname_1989" = bitcast i8* %"$msgobj_fname_1988" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1987", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1989"
  %"$msgobj_td_1990" = getelementptr i8, i8* %"$msgobj_1986", i32 17
  %"$msgobj_td_1991" = bitcast i8* %"$msgobj_td_1990" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1991"
  %"$msgobj_v_1993" = getelementptr i8, i8* %"$msgobj_1986", i32 25
  %"$msgobj_v_1994" = bitcast i8* %"$msgobj_v_1993" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1992", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_1994"
  %"$msgobj_fname_1996" = getelementptr i8, i8* %"$msgobj_1986", i32 41
  %"$msgobj_fname_1997" = bitcast i8* %"$msgobj_fname_1996" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1995", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_1997"
  %"$msgobj_td_1998" = getelementptr i8, i8* %"$msgobj_1986", i32 57
  %"$msgobj_td_1999" = bitcast i8* %"$msgobj_td_1998" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1999"
  %"$msgobj_v_2000" = getelementptr i8, i8* %"$msgobj_1986", i32 65
  %"$msgobj_v_2001" = bitcast i8* %"$msgobj_v_2000" to %String*
  store %String %1, %String* %"$msgobj_v_2001"
  store i8* %"$msgobj_1986", i8** %"$retval_220"
  %"$$retval_220_2003" = load i8*, i8** %"$retval_220"
  ret i8* %"$$retval_220_2003"
}

define internal i8* @"$fundef_225"(%"$$fundef_225_env_406"* %0, [20 x i8]* %1) {
entry:
  %resolver = load [20 x i8], [20 x i8]* %1
  %"$$fundef_225_env_node_1938" = getelementptr inbounds %"$$fundef_225_env_406", %"$$fundef_225_env_406"* %0, i32 0, i32 0
  %"$node_envload_1939" = load [32 x i8], [32 x i8]* %"$$fundef_225_env_node_1938"
  %node = alloca [32 x i8]
  store [32 x i8] %"$node_envload_1939", [32 x i8]* %node
  %"$$fundef_225_env_owner_1940" = getelementptr inbounds %"$$fundef_225_env_406", %"$$fundef_225_env_406"* %0, i32 0, i32 1
  %"$owner_envload_1941" = load [20 x i8], [20 x i8]* %"$$fundef_225_env_owner_1940"
  %owner = alloca [20 x i8]
  store [20 x i8] %"$owner_envload_1941", [20 x i8]* %owner
  %"$retval_226" = alloca i8*
  %"$gasrem_1942" = load i64, i64* @_gasrem
  %"$gascmp_1943" = icmp ugt i64 1, %"$gasrem_1942"
  br i1 %"$gascmp_1943", label %"$out_of_gas_1944", label %"$have_gas_1945"

"$out_of_gas_1944":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1945"

"$have_gas_1945":                                 ; preds = %"$out_of_gas_1944", %entry
  %"$consume_1946" = sub i64 %"$gasrem_1942", 1
  store i64 %"$consume_1946", i64* @_gasrem
  %"$msgobj_1947_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_1947_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1947_salloc_load", i64 185)
  %"$msgobj_1947_salloc" = bitcast i8* %"$msgobj_1947_salloc_salloc" to [185 x i8]*
  %"$msgobj_1947" = bitcast [185 x i8]* %"$msgobj_1947_salloc" to i8*
  store i8 4, i8* %"$msgobj_1947"
  %"$msgobj_fname_1949" = getelementptr i8, i8* %"$msgobj_1947", i32 1
  %"$msgobj_fname_1950" = bitcast i8* %"$msgobj_fname_1949" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1948", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1950"
  %"$msgobj_td_1951" = getelementptr i8, i8* %"$msgobj_1947", i32 17
  %"$msgobj_td_1952" = bitcast i8* %"$msgobj_td_1951" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1952"
  %"$msgobj_v_1954" = getelementptr i8, i8* %"$msgobj_1947", i32 25
  %"$msgobj_v_1955" = bitcast i8* %"$msgobj_v_1954" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1953", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_1955"
  %"$msgobj_fname_1957" = getelementptr i8, i8* %"$msgobj_1947", i32 41
  %"$msgobj_fname_1958" = bitcast i8* %"$msgobj_fname_1957" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1956", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1958"
  %"$msgobj_td_1959" = getelementptr i8, i8* %"$msgobj_1947", i32 57
  %"$msgobj_td_1960" = bitcast i8* %"$msgobj_td_1959" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_1960"
  %"$node_1961" = load [32 x i8], [32 x i8]* %node
  %"$msgobj_v_1962" = getelementptr i8, i8* %"$msgobj_1947", i32 65
  %"$msgobj_v_1963" = bitcast i8* %"$msgobj_v_1962" to [32 x i8]*
  store [32 x i8] %"$node_1961", [32 x i8]* %"$msgobj_v_1963"
  %"$msgobj_fname_1965" = getelementptr i8, i8* %"$msgobj_1947", i32 97
  %"$msgobj_fname_1966" = bitcast i8* %"$msgobj_fname_1965" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1964", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1966"
  %"$msgobj_td_1967" = getelementptr i8, i8* %"$msgobj_1947", i32 113
  %"$msgobj_td_1968" = bitcast i8* %"$msgobj_td_1967" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1968"
  %"$owner_1969" = load [20 x i8], [20 x i8]* %owner
  %"$msgobj_v_1970" = getelementptr i8, i8* %"$msgobj_1947", i32 121
  %"$msgobj_v_1971" = bitcast i8* %"$msgobj_v_1970" to [20 x i8]*
  store [20 x i8] %"$owner_1969", [20 x i8]* %"$msgobj_v_1971"
  %"$msgobj_fname_1973" = getelementptr i8, i8* %"$msgobj_1947", i32 141
  %"$msgobj_fname_1974" = bitcast i8* %"$msgobj_fname_1973" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1972", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_1974"
  %"$msgobj_td_1975" = getelementptr i8, i8* %"$msgobj_1947", i32 157
  %"$msgobj_td_1976" = bitcast i8* %"$msgobj_td_1975" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1976"
  %"$msgobj_v_1977" = getelementptr i8, i8* %"$msgobj_1947", i32 165
  %"$msgobj_v_1978" = bitcast i8* %"$msgobj_v_1977" to [20 x i8]*
  store [20 x i8] %resolver, [20 x i8]* %"$msgobj_v_1978"
  store i8* %"$msgobj_1947", i8** %"$retval_226"
  %"$$retval_226_1980" = load i8*, i8** %"$retval_226"
  ret i8* %"$$retval_226_1980"
}

define internal { i8* (i8*, [20 x i8]*)*, i8* } @"$fundef_223"(%"$$fundef_223_env_407"* %0, [20 x i8]* %1) {
entry:
  %owner = load [20 x i8], [20 x i8]* %1
  %"$$fundef_223_env_node_1923" = getelementptr inbounds %"$$fundef_223_env_407", %"$$fundef_223_env_407"* %0, i32 0, i32 0
  %"$node_envload_1924" = load [32 x i8], [32 x i8]* %"$$fundef_223_env_node_1923"
  %node = alloca [32 x i8]
  store [32 x i8] %"$node_envload_1924", [32 x i8]* %node
  %"$retval_224" = alloca { i8* (i8*, [20 x i8]*)*, i8* }
  %"$gasrem_1925" = load i64, i64* @_gasrem
  %"$gascmp_1926" = icmp ugt i64 1, %"$gasrem_1925"
  br i1 %"$gascmp_1926", label %"$out_of_gas_1927", label %"$have_gas_1928"

"$out_of_gas_1927":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1928"

"$have_gas_1928":                                 ; preds = %"$out_of_gas_1927", %entry
  %"$consume_1929" = sub i64 %"$gasrem_1925", 1
  store i64 %"$consume_1929", i64* @_gasrem
  %"$$fundef_225_envp_1930_load" = load i8*, i8** @_execptr
  %"$$fundef_225_envp_1930_salloc" = call i8* @_salloc(i8* %"$$fundef_225_envp_1930_load", i64 52)
  %"$$fundef_225_envp_1930" = bitcast i8* %"$$fundef_225_envp_1930_salloc" to %"$$fundef_225_env_406"*
  %"$$fundef_225_env_voidp_1932" = bitcast %"$$fundef_225_env_406"* %"$$fundef_225_envp_1930" to i8*
  %"$$fundef_225_cloval_1933" = insertvalue { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_225_env_406"*, [20 x i8]*)* @"$fundef_225" to i8* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_225_env_voidp_1932", 1
  %"$$fundef_225_env_node_1934" = getelementptr inbounds %"$$fundef_225_env_406", %"$$fundef_225_env_406"* %"$$fundef_225_envp_1930", i32 0, i32 0
  %"$node_1935" = load [32 x i8], [32 x i8]* %node
  store [32 x i8] %"$node_1935", [32 x i8]* %"$$fundef_225_env_node_1934"
  %"$$fundef_225_env_owner_1936" = getelementptr inbounds %"$$fundef_225_env_406", %"$$fundef_225_env_406"* %"$$fundef_225_envp_1930", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$$fundef_225_env_owner_1936"
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$fundef_225_cloval_1933", { i8* (i8*, [20 x i8]*)*, i8* }* %"$retval_224"
  %"$$retval_224_1937" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$retval_224"
  ret { i8* (i8*, [20 x i8]*)*, i8* } %"$$retval_224_1937"
}

define internal { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_221"(%"$$fundef_221_env_408"* %0, [32 x i8]* %1) {
entry:
  %node = load [32 x i8], [32 x i8]* %1
  %"$retval_222" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$gasrem_1912" = load i64, i64* @_gasrem
  %"$gascmp_1913" = icmp ugt i64 1, %"$gasrem_1912"
  br i1 %"$gascmp_1913", label %"$out_of_gas_1914", label %"$have_gas_1915"

"$out_of_gas_1914":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1915"

"$have_gas_1915":                                 ; preds = %"$out_of_gas_1914", %entry
  %"$consume_1916" = sub i64 %"$gasrem_1912", 1
  store i64 %"$consume_1916", i64* @_gasrem
  %"$$fundef_223_envp_1917_load" = load i8*, i8** @_execptr
  %"$$fundef_223_envp_1917_salloc" = call i8* @_salloc(i8* %"$$fundef_223_envp_1917_load", i64 32)
  %"$$fundef_223_envp_1917" = bitcast i8* %"$$fundef_223_envp_1917_salloc" to %"$$fundef_223_env_407"*
  %"$$fundef_223_env_voidp_1919" = bitcast %"$$fundef_223_env_407"* %"$$fundef_223_envp_1917" to i8*
  %"$$fundef_223_cloval_1920" = insertvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_223_env_407"*, [20 x i8]*)* @"$fundef_223" to { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_223_env_voidp_1919", 1
  %"$$fundef_223_env_node_1921" = getelementptr inbounds %"$$fundef_223_env_407", %"$$fundef_223_env_407"* %"$$fundef_223_envp_1917", i32 0, i32 0
  store [32 x i8] %node, [32 x i8]* %"$$fundef_223_env_node_1921"
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_223_cloval_1920", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_222"
  %"$$retval_222_1922" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_222"
  ret { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_222_1922"
}

define internal i8* @"$fundef_229"(%"$$fundef_229_env_409"* %0, %String %1) {
entry:
  %"$$fundef_229_env_parent_1879" = getelementptr inbounds %"$$fundef_229_env_409", %"$$fundef_229_env_409"* %0, i32 0, i32 0
  %"$parent_envload_1880" = load [32 x i8], [32 x i8]* %"$$fundef_229_env_parent_1879"
  %parent = alloca [32 x i8]
  store [32 x i8] %"$parent_envload_1880", [32 x i8]* %parent
  %"$retval_230" = alloca i8*
  %"$gasrem_1881" = load i64, i64* @_gasrem
  %"$gascmp_1882" = icmp ugt i64 1, %"$gasrem_1881"
  br i1 %"$gascmp_1882", label %"$out_of_gas_1883", label %"$have_gas_1884"

"$out_of_gas_1883":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1884"

"$have_gas_1884":                                 ; preds = %"$out_of_gas_1883", %entry
  %"$consume_1885" = sub i64 %"$gasrem_1881", 1
  store i64 %"$consume_1885", i64* @_gasrem
  %"$msgobj_1886_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_1886_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1886_salloc_load", i64 137)
  %"$msgobj_1886_salloc" = bitcast i8* %"$msgobj_1886_salloc_salloc" to [137 x i8]*
  %"$msgobj_1886" = bitcast [137 x i8]* %"$msgobj_1886_salloc" to i8*
  store i8 3, i8* %"$msgobj_1886"
  %"$msgobj_fname_1888" = getelementptr i8, i8* %"$msgobj_1886", i32 1
  %"$msgobj_fname_1889" = bitcast i8* %"$msgobj_fname_1888" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1887", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1889"
  %"$msgobj_td_1890" = getelementptr i8, i8* %"$msgobj_1886", i32 17
  %"$msgobj_td_1891" = bitcast i8* %"$msgobj_td_1890" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1891"
  %"$msgobj_v_1893" = getelementptr i8, i8* %"$msgobj_1886", i32 25
  %"$msgobj_v_1894" = bitcast i8* %"$msgobj_v_1893" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1892", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1894"
  %"$msgobj_fname_1896" = getelementptr i8, i8* %"$msgobj_1886", i32 41
  %"$msgobj_fname_1897" = bitcast i8* %"$msgobj_fname_1896" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_1895", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_1897"
  %"$msgobj_td_1898" = getelementptr i8, i8* %"$msgobj_1886", i32 57
  %"$msgobj_td_1899" = bitcast i8* %"$msgobj_td_1898" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_1899"
  %"$parent_1900" = load [32 x i8], [32 x i8]* %parent
  %"$msgobj_v_1901" = getelementptr i8, i8* %"$msgobj_1886", i32 65
  %"$msgobj_v_1902" = bitcast i8* %"$msgobj_v_1901" to [32 x i8]*
  store [32 x i8] %"$parent_1900", [32 x i8]* %"$msgobj_v_1902"
  %"$msgobj_fname_1904" = getelementptr i8, i8* %"$msgobj_1886", i32 97
  %"$msgobj_fname_1905" = bitcast i8* %"$msgobj_fname_1904" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1903", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1905"
  %"$msgobj_td_1906" = getelementptr i8, i8* %"$msgobj_1886", i32 113
  %"$msgobj_td_1907" = bitcast i8* %"$msgobj_td_1906" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1907"
  %"$msgobj_v_1908" = getelementptr i8, i8* %"$msgobj_1886", i32 121
  %"$msgobj_v_1909" = bitcast i8* %"$msgobj_v_1908" to %String*
  store %String %1, %String* %"$msgobj_v_1909"
  store i8* %"$msgobj_1886", i8** %"$retval_230"
  %"$$retval_230_1911" = load i8*, i8** %"$retval_230"
  ret i8* %"$$retval_230_1911"
}

define internal { i8* (i8*, %String)*, i8* } @"$fundef_227"(%"$$fundef_227_env_410"* %0, [32 x i8]* %1) {
entry:
  %parent = load [32 x i8], [32 x i8]* %1
  %"$retval_228" = alloca { i8* (i8*, %String)*, i8* }
  %"$gasrem_1868" = load i64, i64* @_gasrem
  %"$gascmp_1869" = icmp ugt i64 1, %"$gasrem_1868"
  br i1 %"$gascmp_1869", label %"$out_of_gas_1870", label %"$have_gas_1871"

"$out_of_gas_1870":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1871"

"$have_gas_1871":                                 ; preds = %"$out_of_gas_1870", %entry
  %"$consume_1872" = sub i64 %"$gasrem_1868", 1
  store i64 %"$consume_1872", i64* @_gasrem
  %"$$fundef_229_envp_1873_load" = load i8*, i8** @_execptr
  %"$$fundef_229_envp_1873_salloc" = call i8* @_salloc(i8* %"$$fundef_229_envp_1873_load", i64 32)
  %"$$fundef_229_envp_1873" = bitcast i8* %"$$fundef_229_envp_1873_salloc" to %"$$fundef_229_env_409"*
  %"$$fundef_229_env_voidp_1875" = bitcast %"$$fundef_229_env_409"* %"$$fundef_229_envp_1873" to i8*
  %"$$fundef_229_cloval_1876" = insertvalue { i8* (i8*, %String)*, i8* } { i8* (i8*, %String)* bitcast (i8* (%"$$fundef_229_env_409"*, %String)* @"$fundef_229" to i8* (i8*, %String)*), i8* undef }, i8* %"$$fundef_229_env_voidp_1875", 1
  %"$$fundef_229_env_parent_1877" = getelementptr inbounds %"$$fundef_229_env_409", %"$$fundef_229_env_409"* %"$$fundef_229_envp_1873", i32 0, i32 0
  store [32 x i8] %parent, [32 x i8]* %"$$fundef_229_env_parent_1877"
  store { i8* (i8*, %String)*, i8* } %"$$fundef_229_cloval_1876", { i8* (i8*, %String)*, i8* }* %"$retval_228"
  %"$$retval_228_1878" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$retval_228"
  ret { i8* (i8*, %String)*, i8* } %"$$retval_228_1878"
}

define internal i8* @"$fundef_231"(%"$$fundef_231_env_411"* %0, [20 x i8]* %1) {
entry:
  %address = load [20 x i8], [20 x i8]* %1
  %"$retval_232" = alloca i8*
  %"$gasrem_1845" = load i64, i64* @_gasrem
  %"$gascmp_1846" = icmp ugt i64 1, %"$gasrem_1845"
  br i1 %"$gascmp_1846", label %"$out_of_gas_1847", label %"$have_gas_1848"

"$out_of_gas_1847":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1848"

"$have_gas_1848":                                 ; preds = %"$out_of_gas_1847", %entry
  %"$consume_1849" = sub i64 %"$gasrem_1845", 1
  store i64 %"$consume_1849", i64* @_gasrem
  %"$msgobj_1850_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_1850_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1850_salloc_load", i64 85)
  %"$msgobj_1850_salloc" = bitcast i8* %"$msgobj_1850_salloc_salloc" to [85 x i8]*
  %"$msgobj_1850" = bitcast [85 x i8]* %"$msgobj_1850_salloc" to i8*
  store i8 2, i8* %"$msgobj_1850"
  %"$msgobj_fname_1852" = getelementptr i8, i8* %"$msgobj_1850", i32 1
  %"$msgobj_fname_1853" = bitcast i8* %"$msgobj_fname_1852" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1851", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1853"
  %"$msgobj_td_1854" = getelementptr i8, i8* %"$msgobj_1850", i32 17
  %"$msgobj_td_1855" = bitcast i8* %"$msgobj_td_1854" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1855"
  %"$msgobj_v_1857" = getelementptr i8, i8* %"$msgobj_1850", i32 25
  %"$msgobj_v_1858" = bitcast i8* %"$msgobj_v_1857" to %String*
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_1856", i32 0, i32 0), i32 12 }, %String* %"$msgobj_v_1858"
  %"$msgobj_fname_1860" = getelementptr i8, i8* %"$msgobj_1850", i32 41
  %"$msgobj_fname_1861" = bitcast i8* %"$msgobj_fname_1860" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1859", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1861"
  %"$msgobj_td_1862" = getelementptr i8, i8* %"$msgobj_1850", i32 57
  %"$msgobj_td_1863" = bitcast i8* %"$msgobj_td_1862" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1863"
  %"$msgobj_v_1864" = getelementptr i8, i8* %"$msgobj_1850", i32 65
  %"$msgobj_v_1865" = bitcast i8* %"$msgobj_v_1864" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %"$msgobj_v_1865"
  store i8* %"$msgobj_1850", i8** %"$retval_232"
  %"$$retval_232_1867" = load i8*, i8** %"$retval_232"
  ret i8* %"$$retval_232_1867"
}

define internal i8* @"$fundef_233"(%"$$fundef_233_env_412"* %0, [20 x i8]* %1) {
entry:
  %address = load [20 x i8], [20 x i8]* %1
  %"$retval_234" = alloca i8*
  %"$gasrem_1822" = load i64, i64* @_gasrem
  %"$gascmp_1823" = icmp ugt i64 1, %"$gasrem_1822"
  br i1 %"$gascmp_1823", label %"$out_of_gas_1824", label %"$have_gas_1825"

"$out_of_gas_1824":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1825"

"$have_gas_1825":                                 ; preds = %"$out_of_gas_1824", %entry
  %"$consume_1826" = sub i64 %"$gasrem_1822", 1
  store i64 %"$consume_1826", i64* @_gasrem
  %"$msgobj_1827_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_1827_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1827_salloc_load", i64 85)
  %"$msgobj_1827_salloc" = bitcast i8* %"$msgobj_1827_salloc_salloc" to [85 x i8]*
  %"$msgobj_1827" = bitcast [85 x i8]* %"$msgobj_1827_salloc" to i8*
  store i8 2, i8* %"$msgobj_1827"
  %"$msgobj_fname_1829" = getelementptr i8, i8* %"$msgobj_1827", i32 1
  %"$msgobj_fname_1830" = bitcast i8* %"$msgobj_fname_1829" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1828", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1830"
  %"$msgobj_td_1831" = getelementptr i8, i8* %"$msgobj_1827", i32 17
  %"$msgobj_td_1832" = bitcast i8* %"$msgobj_td_1831" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1832"
  %"$msgobj_v_1834" = getelementptr i8, i8* %"$msgobj_1827", i32 25
  %"$msgobj_v_1835" = bitcast i8* %"$msgobj_v_1834" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1833", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_1835"
  %"$msgobj_fname_1837" = getelementptr i8, i8* %"$msgobj_1827", i32 41
  %"$msgobj_fname_1838" = bitcast i8* %"$msgobj_fname_1837" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1836", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1838"
  %"$msgobj_td_1839" = getelementptr i8, i8* %"$msgobj_1827", i32 57
  %"$msgobj_td_1840" = bitcast i8* %"$msgobj_td_1839" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1840"
  %"$msgobj_v_1841" = getelementptr i8, i8* %"$msgobj_1827", i32 65
  %"$msgobj_v_1842" = bitcast i8* %"$msgobj_v_1841" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %"$msgobj_v_1842"
  store i8* %"$msgobj_1827", i8** %"$retval_234"
  %"$$retval_234_1844" = load i8*, i8** %"$retval_234"
  ret i8* %"$$retval_234_1844"
}

define internal i8* @"$fundef_239"(%"$$fundef_239_env_413"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_239_env_operator_1779" = getelementptr inbounds %"$$fundef_239_env_413", %"$$fundef_239_env_413"* %0, i32 0, i32 0
  %"$operator_envload_1780" = load [20 x i8], [20 x i8]* %"$$fundef_239_env_operator_1779"
  %operator = alloca [20 x i8]
  store [20 x i8] %"$operator_envload_1780", [20 x i8]* %operator
  %"$$fundef_239_env_user_1781" = getelementptr inbounds %"$$fundef_239_env_413", %"$$fundef_239_env_413"* %0, i32 0, i32 1
  %"$user_envload_1782" = load [20 x i8], [20 x i8]* %"$$fundef_239_env_user_1781"
  %user = alloca [20 x i8]
  store [20 x i8] %"$user_envload_1782", [20 x i8]* %user
  %"$retval_240" = alloca i8*
  %"$gasrem_1783" = load i64, i64* @_gasrem
  %"$gascmp_1784" = icmp ugt i64 1, %"$gasrem_1783"
  br i1 %"$gascmp_1784", label %"$out_of_gas_1785", label %"$have_gas_1786"

"$out_of_gas_1785":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1786"

"$have_gas_1786":                                 ; preds = %"$out_of_gas_1785", %entry
  %"$consume_1787" = sub i64 %"$gasrem_1783", 1
  store i64 %"$consume_1787", i64* @_gasrem
  %"$msgobj_1788_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_1788_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1788_salloc_load", i64 161)
  %"$msgobj_1788_salloc" = bitcast i8* %"$msgobj_1788_salloc_salloc" to [161 x i8]*
  %"$msgobj_1788" = bitcast [161 x i8]* %"$msgobj_1788_salloc" to i8*
  store i8 4, i8* %"$msgobj_1788"
  %"$msgobj_fname_1790" = getelementptr i8, i8* %"$msgobj_1788", i32 1
  %"$msgobj_fname_1791" = bitcast i8* %"$msgobj_fname_1790" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1789", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1791"
  %"$msgobj_td_1792" = getelementptr i8, i8* %"$msgobj_1788", i32 17
  %"$msgobj_td_1793" = bitcast i8* %"$msgobj_td_1792" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1793"
  %"$msgobj_v_1795" = getelementptr i8, i8* %"$msgobj_1788", i32 25
  %"$msgobj_v_1796" = bitcast i8* %"$msgobj_v_1795" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_1794", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_1796"
  %"$msgobj_fname_1798" = getelementptr i8, i8* %"$msgobj_1788", i32 41
  %"$msgobj_fname_1799" = bitcast i8* %"$msgobj_fname_1798" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1797", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1799"
  %"$msgobj_td_1800" = getelementptr i8, i8* %"$msgobj_1788", i32 57
  %"$msgobj_td_1801" = bitcast i8* %"$msgobj_td_1800" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1801"
  %"$user_1802" = load [20 x i8], [20 x i8]* %user
  %"$msgobj_v_1803" = getelementptr i8, i8* %"$msgobj_1788", i32 65
  %"$msgobj_v_1804" = bitcast i8* %"$msgobj_v_1803" to [20 x i8]*
  store [20 x i8] %"$user_1802", [20 x i8]* %"$msgobj_v_1804"
  %"$msgobj_fname_1806" = getelementptr i8, i8* %"$msgobj_1788", i32 85
  %"$msgobj_fname_1807" = bitcast i8* %"$msgobj_fname_1806" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1805", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_1807"
  %"$msgobj_td_1808" = getelementptr i8, i8* %"$msgobj_1788", i32 101
  %"$msgobj_td_1809" = bitcast i8* %"$msgobj_td_1808" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1809"
  %"$operator_1810" = load [20 x i8], [20 x i8]* %operator
  %"$msgobj_v_1811" = getelementptr i8, i8* %"$msgobj_1788", i32 109
  %"$msgobj_v_1812" = bitcast i8* %"$msgobj_v_1811" to [20 x i8]*
  store [20 x i8] %"$operator_1810", [20 x i8]* %"$msgobj_v_1812"
  %"$msgobj_fname_1814" = getelementptr i8, i8* %"$msgobj_1788", i32 129
  %"$msgobj_fname_1815" = bitcast i8* %"$msgobj_fname_1814" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1813", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1815"
  %"$msgobj_td_1816" = getelementptr i8, i8* %"$msgobj_1788", i32 145
  %"$msgobj_td_1817" = bitcast i8* %"$msgobj_td_1816" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", %_TyDescrTy_Typ** %"$msgobj_td_1817"
  %"$msgobj_v_1818" = getelementptr i8, i8* %"$msgobj_1788", i32 153
  %"$msgobj_v_1819" = bitcast i8* %"$msgobj_v_1818" to %TName_Bool**
  store %TName_Bool* %1, %TName_Bool** %"$msgobj_v_1819"
  store i8* %"$msgobj_1788", i8** %"$retval_240"
  %"$$retval_240_1821" = load i8*, i8** %"$retval_240"
  ret i8* %"$$retval_240_1821"
}

define internal { i8* (i8*, %TName_Bool*)*, i8* } @"$fundef_237"(%"$$fundef_237_env_414"* %0, [20 x i8]* %1) {
entry:
  %operator = load [20 x i8], [20 x i8]* %1
  %"$$fundef_237_env_user_1764" = getelementptr inbounds %"$$fundef_237_env_414", %"$$fundef_237_env_414"* %0, i32 0, i32 0
  %"$user_envload_1765" = load [20 x i8], [20 x i8]* %"$$fundef_237_env_user_1764"
  %user = alloca [20 x i8]
  store [20 x i8] %"$user_envload_1765", [20 x i8]* %user
  %"$retval_238" = alloca { i8* (i8*, %TName_Bool*)*, i8* }
  %"$gasrem_1766" = load i64, i64* @_gasrem
  %"$gascmp_1767" = icmp ugt i64 1, %"$gasrem_1766"
  br i1 %"$gascmp_1767", label %"$out_of_gas_1768", label %"$have_gas_1769"

"$out_of_gas_1768":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1769"

"$have_gas_1769":                                 ; preds = %"$out_of_gas_1768", %entry
  %"$consume_1770" = sub i64 %"$gasrem_1766", 1
  store i64 %"$consume_1770", i64* @_gasrem
  %"$$fundef_239_envp_1771_load" = load i8*, i8** @_execptr
  %"$$fundef_239_envp_1771_salloc" = call i8* @_salloc(i8* %"$$fundef_239_envp_1771_load", i64 40)
  %"$$fundef_239_envp_1771" = bitcast i8* %"$$fundef_239_envp_1771_salloc" to %"$$fundef_239_env_413"*
  %"$$fundef_239_env_voidp_1773" = bitcast %"$$fundef_239_env_413"* %"$$fundef_239_envp_1771" to i8*
  %"$$fundef_239_cloval_1774" = insertvalue { i8* (i8*, %TName_Bool*)*, i8* } { i8* (i8*, %TName_Bool*)* bitcast (i8* (%"$$fundef_239_env_413"*, %TName_Bool*)* @"$fundef_239" to i8* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_239_env_voidp_1773", 1
  %"$$fundef_239_env_operator_1775" = getelementptr inbounds %"$$fundef_239_env_413", %"$$fundef_239_env_413"* %"$$fundef_239_envp_1771", i32 0, i32 0
  store [20 x i8] %operator, [20 x i8]* %"$$fundef_239_env_operator_1775"
  %"$$fundef_239_env_user_1776" = getelementptr inbounds %"$$fundef_239_env_413", %"$$fundef_239_env_413"* %"$$fundef_239_envp_1771", i32 0, i32 1
  %"$user_1777" = load [20 x i8], [20 x i8]* %user
  store [20 x i8] %"$user_1777", [20 x i8]* %"$$fundef_239_env_user_1776"
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$fundef_239_cloval_1774", { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_238"
  %"$$retval_238_1778" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_238"
  ret { i8* (i8*, %TName_Bool*)*, i8* } %"$$retval_238_1778"
}

define internal { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_235"(%"$$fundef_235_env_415"* %0, [20 x i8]* %1) {
entry:
  %user = load [20 x i8], [20 x i8]* %1
  %"$retval_236" = alloca { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$gasrem_1753" = load i64, i64* @_gasrem
  %"$gascmp_1754" = icmp ugt i64 1, %"$gasrem_1753"
  br i1 %"$gascmp_1754", label %"$out_of_gas_1755", label %"$have_gas_1756"

"$out_of_gas_1755":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1756"

"$have_gas_1756":                                 ; preds = %"$out_of_gas_1755", %entry
  %"$consume_1757" = sub i64 %"$gasrem_1753", 1
  store i64 %"$consume_1757", i64* @_gasrem
  %"$$fundef_237_envp_1758_load" = load i8*, i8** @_execptr
  %"$$fundef_237_envp_1758_salloc" = call i8* @_salloc(i8* %"$$fundef_237_envp_1758_load", i64 20)
  %"$$fundef_237_envp_1758" = bitcast i8* %"$$fundef_237_envp_1758_salloc" to %"$$fundef_237_env_414"*
  %"$$fundef_237_env_voidp_1760" = bitcast %"$$fundef_237_env_414"* %"$$fundef_237_envp_1758" to i8*
  %"$$fundef_237_cloval_1761" = insertvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_237_env_414"*, [20 x i8]*)* @"$fundef_237" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_237_env_voidp_1760", 1
  %"$$fundef_237_env_user_1762" = getelementptr inbounds %"$$fundef_237_env_414", %"$$fundef_237_env_414"* %"$$fundef_237_envp_1758", i32 0, i32 0
  store [20 x i8] %user, [20 x i8]* %"$$fundef_237_env_user_1762"
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_237_cloval_1761", { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_236"
  %"$$retval_236_1763" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_236"
  ret { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_236_1763"
}

define internal i8* @"$fundef_243"(%"$$fundef_243_env_416"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_243_env_address_1720" = getelementptr inbounds %"$$fundef_243_env_416", %"$$fundef_243_env_416"* %0, i32 0, i32 0
  %"$address_envload_1721" = load [20 x i8], [20 x i8]* %"$$fundef_243_env_address_1720"
  %address = alloca [20 x i8]
  store [20 x i8] %"$address_envload_1721", [20 x i8]* %address
  %"$retval_244" = alloca i8*
  %"$gasrem_1722" = load i64, i64* @_gasrem
  %"$gascmp_1723" = icmp ugt i64 1, %"$gasrem_1722"
  br i1 %"$gascmp_1723", label %"$out_of_gas_1724", label %"$have_gas_1725"

"$out_of_gas_1724":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1725"

"$have_gas_1725":                                 ; preds = %"$out_of_gas_1724", %entry
  %"$consume_1726" = sub i64 %"$gasrem_1722", 1
  store i64 %"$consume_1726", i64* @_gasrem
  %"$msgobj_1727_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_1727_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1727_salloc_load", i64 117)
  %"$msgobj_1727_salloc" = bitcast i8* %"$msgobj_1727_salloc_salloc" to [117 x i8]*
  %"$msgobj_1727" = bitcast [117 x i8]* %"$msgobj_1727_salloc" to i8*
  store i8 3, i8* %"$msgobj_1727"
  %"$msgobj_fname_1729" = getelementptr i8, i8* %"$msgobj_1727", i32 1
  %"$msgobj_fname_1730" = bitcast i8* %"$msgobj_fname_1729" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1728", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1730"
  %"$msgobj_td_1731" = getelementptr i8, i8* %"$msgobj_1727", i32 17
  %"$msgobj_td_1732" = bitcast i8* %"$msgobj_td_1731" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1732"
  %"$msgobj_v_1734" = getelementptr i8, i8* %"$msgobj_1727", i32 25
  %"$msgobj_v_1735" = bitcast i8* %"$msgobj_v_1734" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1733", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_1735"
  %"$msgobj_fname_1737" = getelementptr i8, i8* %"$msgobj_1727", i32 41
  %"$msgobj_fname_1738" = bitcast i8* %"$msgobj_fname_1737" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1736", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1738"
  %"$msgobj_td_1739" = getelementptr i8, i8* %"$msgobj_1727", i32 57
  %"$msgobj_td_1740" = bitcast i8* %"$msgobj_td_1739" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1740"
  %"$address_1741" = load [20 x i8], [20 x i8]* %address
  %"$msgobj_v_1742" = getelementptr i8, i8* %"$msgobj_1727", i32 65
  %"$msgobj_v_1743" = bitcast i8* %"$msgobj_v_1742" to [20 x i8]*
  store [20 x i8] %"$address_1741", [20 x i8]* %"$msgobj_v_1743"
  %"$msgobj_fname_1745" = getelementptr i8, i8* %"$msgobj_1727", i32 85
  %"$msgobj_fname_1746" = bitcast i8* %"$msgobj_fname_1745" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1744", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1746"
  %"$msgobj_td_1747" = getelementptr i8, i8* %"$msgobj_1727", i32 101
  %"$msgobj_td_1748" = bitcast i8* %"$msgobj_td_1747" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", %_TyDescrTy_Typ** %"$msgobj_td_1748"
  %"$msgobj_v_1749" = getelementptr i8, i8* %"$msgobj_1727", i32 109
  %"$msgobj_v_1750" = bitcast i8* %"$msgobj_v_1749" to %TName_Bool**
  store %TName_Bool* %1, %TName_Bool** %"$msgobj_v_1750"
  store i8* %"$msgobj_1727", i8** %"$retval_244"
  %"$$retval_244_1752" = load i8*, i8** %"$retval_244"
  ret i8* %"$$retval_244_1752"
}

define internal { i8* (i8*, %TName_Bool*)*, i8* } @"$fundef_241"(%"$$fundef_241_env_417"* %0, [20 x i8]* %1) {
entry:
  %address = load [20 x i8], [20 x i8]* %1
  %"$retval_242" = alloca { i8* (i8*, %TName_Bool*)*, i8* }
  %"$gasrem_1709" = load i64, i64* @_gasrem
  %"$gascmp_1710" = icmp ugt i64 1, %"$gasrem_1709"
  br i1 %"$gascmp_1710", label %"$out_of_gas_1711", label %"$have_gas_1712"

"$out_of_gas_1711":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1712"

"$have_gas_1712":                                 ; preds = %"$out_of_gas_1711", %entry
  %"$consume_1713" = sub i64 %"$gasrem_1709", 1
  store i64 %"$consume_1713", i64* @_gasrem
  %"$$fundef_243_envp_1714_load" = load i8*, i8** @_execptr
  %"$$fundef_243_envp_1714_salloc" = call i8* @_salloc(i8* %"$$fundef_243_envp_1714_load", i64 20)
  %"$$fundef_243_envp_1714" = bitcast i8* %"$$fundef_243_envp_1714_salloc" to %"$$fundef_243_env_416"*
  %"$$fundef_243_env_voidp_1716" = bitcast %"$$fundef_243_env_416"* %"$$fundef_243_envp_1714" to i8*
  %"$$fundef_243_cloval_1717" = insertvalue { i8* (i8*, %TName_Bool*)*, i8* } { i8* (i8*, %TName_Bool*)* bitcast (i8* (%"$$fundef_243_env_416"*, %TName_Bool*)* @"$fundef_243" to i8* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_243_env_voidp_1716", 1
  %"$$fundef_243_env_address_1718" = getelementptr inbounds %"$$fundef_243_env_416", %"$$fundef_243_env_416"* %"$$fundef_243_envp_1714", i32 0, i32 0
  store [20 x i8] %address, [20 x i8]* %"$$fundef_243_env_address_1718"
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$fundef_243_cloval_1717", { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_242"
  %"$$retval_242_1719" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_242"
  ret { i8* (i8*, %TName_Bool*)*, i8* } %"$$retval_242_1719"
}

define internal %TName_Bool* @"$fundef_247"(%"$$fundef_247_env_418"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_247_env_b1_1634" = getelementptr inbounds %"$$fundef_247_env_418", %"$$fundef_247_env_418"* %0, i32 0, i32 0
  %"$b1_envload_1635" = load %TName_Bool*, %TName_Bool** %"$$fundef_247_env_b1_1634"
  %b1 = alloca %TName_Bool*
  store %TName_Bool* %"$b1_envload_1635", %TName_Bool** %b1
  %"$retval_248" = alloca %TName_Bool*
  %"$gasrem_1636" = load i64, i64* @_gasrem
  %"$gascmp_1637" = icmp ugt i64 2, %"$gasrem_1636"
  br i1 %"$gascmp_1637", label %"$out_of_gas_1638", label %"$have_gas_1639"

"$out_of_gas_1638":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1639"

"$have_gas_1639":                                 ; preds = %"$out_of_gas_1638", %entry
  %"$consume_1640" = sub i64 %"$gasrem_1636", 2
  store i64 %"$consume_1640", i64* @_gasrem
  %"$b1_1642" = load %TName_Bool*, %TName_Bool** %b1
  %"$b1_tag_1643" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b1_1642", i32 0, i32 0
  %"$b1_tag_1644" = load i8, i8* %"$b1_tag_1643"
  switch i8 %"$b1_tag_1644", label %"$empty_default_1645" [
    i8 0, label %"$True_1646"
    i8 1, label %"$False_1677"
  ]

"$True_1646":                                     ; preds = %"$have_gas_1639"
  %"$b1_1647" = bitcast %TName_Bool* %"$b1_1642" to %CName_True*
  %"$gasrem_1648" = load i64, i64* @_gasrem
  %"$gascmp_1649" = icmp ugt i64 2, %"$gasrem_1648"
  br i1 %"$gascmp_1649", label %"$out_of_gas_1650", label %"$have_gas_1651"

"$out_of_gas_1650":                               ; preds = %"$True_1646"
  call void @_out_of_gas()
  br label %"$have_gas_1651"

"$have_gas_1651":                                 ; preds = %"$out_of_gas_1650", %"$True_1646"
  %"$consume_1652" = sub i64 %"$gasrem_1648", 2
  store i64 %"$consume_1652", i64* @_gasrem
  %"$b2_tag_1654" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b2_tag_1655" = load i8, i8* %"$b2_tag_1654"
  switch i8 %"$b2_tag_1655", label %"$empty_default_1656" [
    i8 0, label %"$True_1657"
    i8 1, label %"$False_1667"
  ]

"$True_1657":                                     ; preds = %"$have_gas_1651"
  %"$b2_1658" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_1659" = load i64, i64* @_gasrem
  %"$gascmp_1660" = icmp ugt i64 1, %"$gasrem_1659"
  br i1 %"$gascmp_1660", label %"$out_of_gas_1661", label %"$have_gas_1662"

"$out_of_gas_1661":                               ; preds = %"$True_1657"
  call void @_out_of_gas()
  br label %"$have_gas_1662"

"$have_gas_1662":                                 ; preds = %"$out_of_gas_1661", %"$True_1657"
  %"$consume_1663" = sub i64 %"$gasrem_1659", 1
  store i64 %"$consume_1663", i64* @_gasrem
  %"$adtval_1664_load" = load i8*, i8** @_execptr
  %"$adtval_1664_salloc" = call i8* @_salloc(i8* %"$adtval_1664_load", i64 1)
  %"$adtval_1664" = bitcast i8* %"$adtval_1664_salloc" to %CName_True*
  %"$adtgep_1665" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1664", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1665"
  %"$adtptr_1666" = bitcast %CName_True* %"$adtval_1664" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1666", %TName_Bool** %"$retval_248"
  br label %"$matchsucc_1653"

"$False_1667":                                    ; preds = %"$have_gas_1651"
  %"$b2_1668" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_1669" = load i64, i64* @_gasrem
  %"$gascmp_1670" = icmp ugt i64 1, %"$gasrem_1669"
  br i1 %"$gascmp_1670", label %"$out_of_gas_1671", label %"$have_gas_1672"

"$out_of_gas_1671":                               ; preds = %"$False_1667"
  call void @_out_of_gas()
  br label %"$have_gas_1672"

"$have_gas_1672":                                 ; preds = %"$out_of_gas_1671", %"$False_1667"
  %"$consume_1673" = sub i64 %"$gasrem_1669", 1
  store i64 %"$consume_1673", i64* @_gasrem
  %"$adtval_1674_load" = load i8*, i8** @_execptr
  %"$adtval_1674_salloc" = call i8* @_salloc(i8* %"$adtval_1674_load", i64 1)
  %"$adtval_1674" = bitcast i8* %"$adtval_1674_salloc" to %CName_False*
  %"$adtgep_1675" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1674", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1675"
  %"$adtptr_1676" = bitcast %CName_False* %"$adtval_1674" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1676", %TName_Bool** %"$retval_248"
  br label %"$matchsucc_1653"

"$empty_default_1656":                            ; preds = %"$have_gas_1651"
  br label %"$matchsucc_1653"

"$matchsucc_1653":                                ; preds = %"$have_gas_1672", %"$have_gas_1662", %"$empty_default_1656"
  br label %"$matchsucc_1641"

"$False_1677":                                    ; preds = %"$have_gas_1639"
  %"$b1_1678" = bitcast %TName_Bool* %"$b1_1642" to %CName_False*
  %"$gasrem_1679" = load i64, i64* @_gasrem
  %"$gascmp_1680" = icmp ugt i64 2, %"$gasrem_1679"
  br i1 %"$gascmp_1680", label %"$out_of_gas_1681", label %"$have_gas_1682"

"$out_of_gas_1681":                               ; preds = %"$False_1677"
  call void @_out_of_gas()
  br label %"$have_gas_1682"

"$have_gas_1682":                                 ; preds = %"$out_of_gas_1681", %"$False_1677"
  %"$consume_1683" = sub i64 %"$gasrem_1679", 2
  store i64 %"$consume_1683", i64* @_gasrem
  %"$b2_tag_1685" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b2_tag_1686" = load i8, i8* %"$b2_tag_1685"
  switch i8 %"$b2_tag_1686", label %"$empty_default_1687" [
    i8 0, label %"$True_1688"
    i8 1, label %"$False_1698"
  ]

"$True_1688":                                     ; preds = %"$have_gas_1682"
  %"$b2_1689" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_1690" = load i64, i64* @_gasrem
  %"$gascmp_1691" = icmp ugt i64 1, %"$gasrem_1690"
  br i1 %"$gascmp_1691", label %"$out_of_gas_1692", label %"$have_gas_1693"

"$out_of_gas_1692":                               ; preds = %"$True_1688"
  call void @_out_of_gas()
  br label %"$have_gas_1693"

"$have_gas_1693":                                 ; preds = %"$out_of_gas_1692", %"$True_1688"
  %"$consume_1694" = sub i64 %"$gasrem_1690", 1
  store i64 %"$consume_1694", i64* @_gasrem
  %"$adtval_1695_load" = load i8*, i8** @_execptr
  %"$adtval_1695_salloc" = call i8* @_salloc(i8* %"$adtval_1695_load", i64 1)
  %"$adtval_1695" = bitcast i8* %"$adtval_1695_salloc" to %CName_False*
  %"$adtgep_1696" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1695", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1696"
  %"$adtptr_1697" = bitcast %CName_False* %"$adtval_1695" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1697", %TName_Bool** %"$retval_248"
  br label %"$matchsucc_1684"

"$False_1698":                                    ; preds = %"$have_gas_1682"
  %"$b2_1699" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_1700" = load i64, i64* @_gasrem
  %"$gascmp_1701" = icmp ugt i64 1, %"$gasrem_1700"
  br i1 %"$gascmp_1701", label %"$out_of_gas_1702", label %"$have_gas_1703"

"$out_of_gas_1702":                               ; preds = %"$False_1698"
  call void @_out_of_gas()
  br label %"$have_gas_1703"

"$have_gas_1703":                                 ; preds = %"$out_of_gas_1702", %"$False_1698"
  %"$consume_1704" = sub i64 %"$gasrem_1700", 1
  store i64 %"$consume_1704", i64* @_gasrem
  %"$adtval_1705_load" = load i8*, i8** @_execptr
  %"$adtval_1705_salloc" = call i8* @_salloc(i8* %"$adtval_1705_load", i64 1)
  %"$adtval_1705" = bitcast i8* %"$adtval_1705_salloc" to %CName_True*
  %"$adtgep_1706" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1705", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1706"
  %"$adtptr_1707" = bitcast %CName_True* %"$adtval_1705" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1707", %TName_Bool** %"$retval_248"
  br label %"$matchsucc_1684"

"$empty_default_1687":                            ; preds = %"$have_gas_1682"
  br label %"$matchsucc_1684"

"$matchsucc_1684":                                ; preds = %"$have_gas_1703", %"$have_gas_1693", %"$empty_default_1687"
  br label %"$matchsucc_1641"

"$empty_default_1645":                            ; preds = %"$have_gas_1639"
  br label %"$matchsucc_1641"

"$matchsucc_1641":                                ; preds = %"$matchsucc_1684", %"$matchsucc_1653", %"$empty_default_1645"
  %"$$retval_248_1708" = load %TName_Bool*, %TName_Bool** %"$retval_248"
  ret %TName_Bool* %"$$retval_248_1708"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_245"(%"$$fundef_245_env_419"* %0, %TName_Bool* %1) {
entry:
  %"$retval_246" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$gasrem_1623" = load i64, i64* @_gasrem
  %"$gascmp_1624" = icmp ugt i64 1, %"$gasrem_1623"
  br i1 %"$gascmp_1624", label %"$out_of_gas_1625", label %"$have_gas_1626"

"$out_of_gas_1625":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1626"

"$have_gas_1626":                                 ; preds = %"$out_of_gas_1625", %entry
  %"$consume_1627" = sub i64 %"$gasrem_1623", 1
  store i64 %"$consume_1627", i64* @_gasrem
  %"$$fundef_247_envp_1628_load" = load i8*, i8** @_execptr
  %"$$fundef_247_envp_1628_salloc" = call i8* @_salloc(i8* %"$$fundef_247_envp_1628_load", i64 8)
  %"$$fundef_247_envp_1628" = bitcast i8* %"$$fundef_247_envp_1628_salloc" to %"$$fundef_247_env_418"*
  %"$$fundef_247_env_voidp_1630" = bitcast %"$$fundef_247_env_418"* %"$$fundef_247_envp_1628" to i8*
  %"$$fundef_247_cloval_1631" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_247_env_418"*, %TName_Bool*)* @"$fundef_247" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_247_env_voidp_1630", 1
  %"$$fundef_247_env_b1_1632" = getelementptr inbounds %"$$fundef_247_env_418", %"$$fundef_247_env_418"* %"$$fundef_247_envp_1628", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_247_env_b1_1632"
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_247_cloval_1631", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_246"
  %"$$retval_246_1633" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_246"
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_246_1633"
}

define internal %TName_Bool* @"$fundef_253"(%"$$fundef_253_env_420"* %0, [20 x i8]* %1) {
entry:
  %v = load [20 x i8], [20 x i8]* %1
  %"$$fundef_253_env_BoolUtils.negb_1595" = getelementptr inbounds %"$$fundef_253_env_420", %"$$fundef_253_env_420"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1596" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_253_env_BoolUtils.negb_1595"
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1596", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb
  %"$$fundef_253_env_bs_1597" = getelementptr inbounds %"$$fundef_253_env_420", %"$$fundef_253_env_420"* %0, i32 0, i32 1
  %"$bs_envload_1598" = load [20 x i8], [20 x i8]* %"$$fundef_253_env_bs_1597"
  %bs = alloca [20 x i8]
  store [20 x i8] %"$bs_envload_1598", [20 x i8]* %bs
  %"$retval_254" = alloca %TName_Bool*
  %"$gasrem_1599" = load i64, i64* @_gasrem
  %"$gascmp_1600" = icmp ugt i64 1, %"$gasrem_1599"
  br i1 %"$gascmp_1600", label %"$out_of_gas_1601", label %"$have_gas_1602"

"$out_of_gas_1601":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1602"

"$have_gas_1602":                                 ; preds = %"$out_of_gas_1601", %entry
  %"$consume_1603" = sub i64 %"$gasrem_1599", 1
  store i64 %"$consume_1603", i64* @_gasrem
  %b = alloca %TName_Bool*
  %"$execptr_load_1604" = load i8*, i8** @_execptr
  %"$eq_v_1605" = alloca [20 x i8]
  store [20 x i8] %v, [20 x i8]* %"$eq_v_1605"
  %"$$eq_v_1605_1606" = bitcast [20 x i8]* %"$eq_v_1605" to i8*
  %"$eq_bs_1607" = alloca [20 x i8]
  %"$bs_1608" = load [20 x i8], [20 x i8]* %bs
  store [20 x i8] %"$bs_1608", [20 x i8]* %"$eq_bs_1607"
  %"$$eq_bs_1607_1609" = bitcast [20 x i8]* %"$eq_bs_1607" to i8*
  %"$eq_call_1610" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_1604", i32 20, i8* %"$$eq_v_1605_1606", i8* %"$$eq_bs_1607_1609")
  store %TName_Bool* %"$eq_call_1610", %TName_Bool** %b
  %"$gasrem_1611" = load i64, i64* @_gasrem
  %"$gascmp_1612" = icmp ugt i64 1, %"$gasrem_1611"
  br i1 %"$gascmp_1612", label %"$out_of_gas_1613", label %"$have_gas_1614"

"$out_of_gas_1613":                               ; preds = %"$have_gas_1602"
  call void @_out_of_gas()
  br label %"$have_gas_1614"

"$have_gas_1614":                                 ; preds = %"$out_of_gas_1613", %"$have_gas_1602"
  %"$consume_1615" = sub i64 %"$gasrem_1611", 1
  store i64 %"$consume_1615", i64* @_gasrem
  %"$BoolUtils.negb_33" = alloca %TName_Bool*
  %"$BoolUtils.negb_1616" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb
  %"$BoolUtils.negb_fptr_1617" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1616", 0
  %"$BoolUtils.negb_envptr_1618" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1616", 1
  %"$b_1619" = load %TName_Bool*, %TName_Bool** %b
  %"$BoolUtils.negb_call_1620" = call %TName_Bool* %"$BoolUtils.negb_fptr_1617"(i8* %"$BoolUtils.negb_envptr_1618", %TName_Bool* %"$b_1619")
  store %TName_Bool* %"$BoolUtils.negb_call_1620", %TName_Bool** %"$BoolUtils.negb_33"
  %"$$BoolUtils.negb_33_1621" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_33"
  store %TName_Bool* %"$$BoolUtils.negb_33_1621", %TName_Bool** %"$retval_254"
  %"$$retval_254_1622" = load %TName_Bool*, %TName_Bool** %"$retval_254"
  ret %TName_Bool* %"$$retval_254_1622"
}

define internal %TName_List_ByStr20* @"$fundef_251"(%"$$fundef_251_env_421"* %0, [20 x i8]* %1) {
entry:
  %bs = load [20 x i8], [20 x i8]* %1
  %"$$fundef_251_env_BoolUtils.negb_1538" = getelementptr inbounds %"$$fundef_251_env_421", %"$$fundef_251_env_421"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1539" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_251_env_BoolUtils.negb_1538"
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1539", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb
  %"$$fundef_251_env_ListUtils.list_filter_1540" = getelementptr inbounds %"$$fundef_251_env_421", %"$$fundef_251_env_421"* %0, i32 0, i32 1
  %"$ListUtils.list_filter_envload_1541" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_251_env_ListUtils.list_filter_1540"
  %ListUtils.list_filter = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$ListUtils.list_filter_envload_1541", { i8*, i8* }** %ListUtils.list_filter
  %"$$fundef_251_env_list_1542" = getelementptr inbounds %"$$fundef_251_env_421", %"$$fundef_251_env_421"* %0, i32 0, i32 2
  %"$list_envload_1543" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_251_env_list_1542"
  %list = alloca %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$list_envload_1543", %TName_List_ByStr20** %list
  %"$retval_252" = alloca %TName_List_ByStr20*
  %"$gasrem_1544" = load i64, i64* @_gasrem
  %"$gascmp_1545" = icmp ugt i64 1, %"$gasrem_1544"
  br i1 %"$gascmp_1545", label %"$out_of_gas_1546", label %"$have_gas_1547"

"$out_of_gas_1546":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1547"

"$have_gas_1547":                                 ; preds = %"$out_of_gas_1546", %entry
  %"$consume_1548" = sub i64 %"$gasrem_1544", 1
  store i64 %"$consume_1548", i64* @_gasrem
  %listByStr20Filter = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }
  %"$gasrem_1549" = load i64, i64* @_gasrem
  %"$gascmp_1550" = icmp ugt i64 1, %"$gasrem_1549"
  br i1 %"$gascmp_1550", label %"$out_of_gas_1551", label %"$have_gas_1552"

"$out_of_gas_1551":                               ; preds = %"$have_gas_1547"
  call void @_out_of_gas()
  br label %"$have_gas_1552"

"$have_gas_1552":                                 ; preds = %"$out_of_gas_1551", %"$have_gas_1547"
  %"$consume_1553" = sub i64 %"$gasrem_1549", 1
  store i64 %"$consume_1553", i64* @_gasrem
  %"$ListUtils.list_filter_1554" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_filter
  %"$ListUtils.list_filter_1555" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_filter_1554", i32 0
  %"$ListUtils.list_filter_1556" = bitcast { i8*, i8* }* %"$ListUtils.list_filter_1555" to { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_filter_1557" = load { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_filter_1556"
  %"$ListUtils.list_filter_fptr_1558" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_filter_1557", 0
  %"$ListUtils.list_filter_envptr_1559" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_filter_1557", 1
  %"$ListUtils.list_filter_call_1560" = call { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_filter_fptr_1558"(i8* %"$ListUtils.list_filter_envptr_1559")
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_filter_call_1560", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %listByStr20Filter
  %"$gasrem_1561" = load i64, i64* @_gasrem
  %"$gascmp_1562" = icmp ugt i64 1, %"$gasrem_1561"
  br i1 %"$gascmp_1562", label %"$out_of_gas_1563", label %"$have_gas_1564"

"$out_of_gas_1563":                               ; preds = %"$have_gas_1552"
  call void @_out_of_gas()
  br label %"$have_gas_1564"

"$have_gas_1564":                                 ; preds = %"$out_of_gas_1563", %"$have_gas_1552"
  %"$consume_1565" = sub i64 %"$gasrem_1561", 1
  store i64 %"$consume_1565", i64* @_gasrem
  %fn = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  %"$gasrem_1566" = load i64, i64* @_gasrem
  %"$gascmp_1567" = icmp ugt i64 1, %"$gasrem_1566"
  br i1 %"$gascmp_1567", label %"$out_of_gas_1568", label %"$have_gas_1569"

"$out_of_gas_1568":                               ; preds = %"$have_gas_1564"
  call void @_out_of_gas()
  br label %"$have_gas_1569"

"$have_gas_1569":                                 ; preds = %"$out_of_gas_1568", %"$have_gas_1564"
  %"$consume_1570" = sub i64 %"$gasrem_1566", 1
  store i64 %"$consume_1570", i64* @_gasrem
  %"$$fundef_253_envp_1571_load" = load i8*, i8** @_execptr
  %"$$fundef_253_envp_1571_salloc" = call i8* @_salloc(i8* %"$$fundef_253_envp_1571_load", i64 40)
  %"$$fundef_253_envp_1571" = bitcast i8* %"$$fundef_253_envp_1571_salloc" to %"$$fundef_253_env_420"*
  %"$$fundef_253_env_voidp_1573" = bitcast %"$$fundef_253_env_420"* %"$$fundef_253_envp_1571" to i8*
  %"$$fundef_253_cloval_1574" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_253_env_420"*, [20 x i8]*)* @"$fundef_253" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_253_env_voidp_1573", 1
  %"$$fundef_253_env_BoolUtils.negb_1575" = getelementptr inbounds %"$$fundef_253_env_420", %"$$fundef_253_env_420"* %"$$fundef_253_envp_1571", i32 0, i32 0
  %"$BoolUtils.negb_1576" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1576", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_253_env_BoolUtils.negb_1575"
  %"$$fundef_253_env_bs_1577" = getelementptr inbounds %"$$fundef_253_env_420", %"$$fundef_253_env_420"* %"$$fundef_253_envp_1571", i32 0, i32 1
  store [20 x i8] %bs, [20 x i8]* %"$$fundef_253_env_bs_1577"
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_253_cloval_1574", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %fn
  %"$gasrem_1578" = load i64, i64* @_gasrem
  %"$gascmp_1579" = icmp ugt i64 1, %"$gasrem_1578"
  br i1 %"$gascmp_1579", label %"$out_of_gas_1580", label %"$have_gas_1581"

"$out_of_gas_1580":                               ; preds = %"$have_gas_1569"
  call void @_out_of_gas()
  br label %"$have_gas_1581"

"$have_gas_1581":                                 ; preds = %"$out_of_gas_1580", %"$have_gas_1569"
  %"$consume_1582" = sub i64 %"$gasrem_1578", 1
  store i64 %"$consume_1582", i64* @_gasrem
  %"$listByStr20Filter_34" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }
  %"$listByStr20Filter_1583" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %listByStr20Filter
  %"$listByStr20Filter_fptr_1584" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listByStr20Filter_1583", 0
  %"$listByStr20Filter_envptr_1585" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listByStr20Filter_1583", 1
  %"$fn_1586" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %fn
  %"$listByStr20Filter_call_1587" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$listByStr20Filter_fptr_1584"(i8* %"$listByStr20Filter_envptr_1585", { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$fn_1586")
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$listByStr20Filter_call_1587", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listByStr20Filter_34"
  %"$listByStr20Filter_35" = alloca %TName_List_ByStr20*
  %"$$listByStr20Filter_34_1588" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listByStr20Filter_34"
  %"$$listByStr20Filter_34_fptr_1589" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listByStr20Filter_34_1588", 0
  %"$$listByStr20Filter_34_envptr_1590" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listByStr20Filter_34_1588", 1
  %"$list_1591" = load %TName_List_ByStr20*, %TName_List_ByStr20** %list
  %"$$listByStr20Filter_34_call_1592" = call %TName_List_ByStr20* %"$$listByStr20Filter_34_fptr_1589"(i8* %"$$listByStr20Filter_34_envptr_1590", %TName_List_ByStr20* %"$list_1591")
  store %TName_List_ByStr20* %"$$listByStr20Filter_34_call_1592", %TName_List_ByStr20** %"$listByStr20Filter_35"
  %"$$listByStr20Filter_35_1593" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$listByStr20Filter_35"
  store %TName_List_ByStr20* %"$$listByStr20Filter_35_1593", %TName_List_ByStr20** %"$retval_252"
  %"$$retval_252_1594" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$retval_252"
  ret %TName_List_ByStr20* %"$$retval_252_1594"
}

define internal { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } @"$fundef_249"(%"$$fundef_249_env_422"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_249_env_BoolUtils.negb_1519" = getelementptr inbounds %"$$fundef_249_env_422", %"$$fundef_249_env_422"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1520" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_249_env_BoolUtils.negb_1519"
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1520", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb
  %"$$fundef_249_env_ListUtils.list_filter_1521" = getelementptr inbounds %"$$fundef_249_env_422", %"$$fundef_249_env_422"* %0, i32 0, i32 1
  %"$ListUtils.list_filter_envload_1522" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_249_env_ListUtils.list_filter_1521"
  %ListUtils.list_filter = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$ListUtils.list_filter_envload_1522", { i8*, i8* }** %ListUtils.list_filter
  %"$retval_250" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }
  %"$gasrem_1523" = load i64, i64* @_gasrem
  %"$gascmp_1524" = icmp ugt i64 1, %"$gasrem_1523"
  br i1 %"$gascmp_1524", label %"$out_of_gas_1525", label %"$have_gas_1526"

"$out_of_gas_1525":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1526"

"$have_gas_1526":                                 ; preds = %"$out_of_gas_1525", %entry
  %"$consume_1527" = sub i64 %"$gasrem_1523", 1
  store i64 %"$consume_1527", i64* @_gasrem
  %"$$fundef_251_envp_1528_load" = load i8*, i8** @_execptr
  %"$$fundef_251_envp_1528_salloc" = call i8* @_salloc(i8* %"$$fundef_251_envp_1528_load", i64 32)
  %"$$fundef_251_envp_1528" = bitcast i8* %"$$fundef_251_envp_1528_salloc" to %"$$fundef_251_env_421"*
  %"$$fundef_251_env_voidp_1530" = bitcast %"$$fundef_251_env_421"* %"$$fundef_251_envp_1528" to i8*
  %"$$fundef_251_cloval_1531" = insertvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } { %TName_List_ByStr20* (i8*, [20 x i8]*)* bitcast (%TName_List_ByStr20* (%"$$fundef_251_env_421"*, [20 x i8]*)* @"$fundef_251" to %TName_List_ByStr20* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_251_env_voidp_1530", 1
  %"$$fundef_251_env_BoolUtils.negb_1532" = getelementptr inbounds %"$$fundef_251_env_421", %"$$fundef_251_env_421"* %"$$fundef_251_envp_1528", i32 0, i32 0
  %"$BoolUtils.negb_1533" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1533", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_251_env_BoolUtils.negb_1532"
  %"$$fundef_251_env_ListUtils.list_filter_1534" = getelementptr inbounds %"$$fundef_251_env_421", %"$$fundef_251_env_421"* %"$$fundef_251_envp_1528", i32 0, i32 1
  %"$ListUtils.list_filter_1535" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_filter
  store { i8*, i8* }* %"$ListUtils.list_filter_1535", { i8*, i8* }** %"$$fundef_251_env_ListUtils.list_filter_1534"
  %"$$fundef_251_env_list_1536" = getelementptr inbounds %"$$fundef_251_env_421", %"$$fundef_251_env_421"* %"$$fundef_251_envp_1528", i32 0, i32 2
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_251_env_list_1536"
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$fundef_251_cloval_1531", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_250"
  %"$$retval_250_1537" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_250"
  ret { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$retval_250_1537"
}

define internal %TName_Bool* @"$fundef_257"(%"$$fundef_257_env_423"* %0, [20 x i8]* %1) {
entry:
  %bs = load [20 x i8], [20 x i8]* %1
  %"$$fundef_257_env_BoolUtils.negb_1480" = getelementptr inbounds %"$$fundef_257_env_423", %"$$fundef_257_env_423"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1481" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_257_env_BoolUtils.negb_1480"
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1481", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb
  %"$$fundef_257_env_list_1482" = getelementptr inbounds %"$$fundef_257_env_423", %"$$fundef_257_env_423"* %0, i32 0, i32 1
  %"$list_envload_1483" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_257_env_list_1482"
  %list = alloca %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$list_envload_1483", %TName_List_ByStr20** %list
  %"$$fundef_257_env_ud-registry.listByStr20Contains_1484" = getelementptr inbounds %"$$fundef_257_env_423", %"$$fundef_257_env_423"* %0, i32 0, i32 2
  %"$ud-registry.listByStr20Contains_envload_1485" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_257_env_ud-registry.listByStr20Contains_1484"
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_1485", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains
  %"$retval_258" = alloca %TName_Bool*
  %"$gasrem_1486" = load i64, i64* @_gasrem
  %"$gascmp_1487" = icmp ugt i64 1, %"$gasrem_1486"
  br i1 %"$gascmp_1487", label %"$out_of_gas_1488", label %"$have_gas_1489"

"$out_of_gas_1488":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1489"

"$have_gas_1489":                                 ; preds = %"$out_of_gas_1488", %entry
  %"$consume_1490" = sub i64 %"$gasrem_1486", 1
  store i64 %"$consume_1490", i64* @_gasrem
  %b = alloca %TName_Bool*
  %"$gasrem_1491" = load i64, i64* @_gasrem
  %"$gascmp_1492" = icmp ugt i64 1, %"$gasrem_1491"
  br i1 %"$gascmp_1492", label %"$out_of_gas_1493", label %"$have_gas_1494"

"$out_of_gas_1493":                               ; preds = %"$have_gas_1489"
  call void @_out_of_gas()
  br label %"$have_gas_1494"

"$have_gas_1494":                                 ; preds = %"$out_of_gas_1493", %"$have_gas_1489"
  %"$consume_1495" = sub i64 %"$gasrem_1491", 1
  store i64 %"$consume_1495", i64* @_gasrem
  %"$ud-registry.listByStr20Contains_30" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.listByStr20Contains_1496" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains
  %"$ud-registry.listByStr20Contains_fptr_1497" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_1496", 0
  %"$ud-registry.listByStr20Contains_envptr_1498" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_1496", 1
  %"$list_1499" = load %TName_List_ByStr20*, %TName_List_ByStr20** %list
  %"$ud-registry.listByStr20Contains_call_1500" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_1497"(i8* %"$ud-registry.listByStr20Contains_envptr_1498", %TName_List_ByStr20* %"$list_1499")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_1500", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_30"
  %"$ud-registry.listByStr20Contains_31" = alloca %TName_Bool*
  %"$$ud-registry.listByStr20Contains_30_1501" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_30"
  %"$$ud-registry.listByStr20Contains_30_fptr_1502" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_30_1501", 0
  %"$$ud-registry.listByStr20Contains_30_envptr_1503" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_30_1501", 1
  %"$$ud-registry.listByStr20Contains_30_bs_1504" = alloca [20 x i8]
  store [20 x i8] %bs, [20 x i8]* %"$$ud-registry.listByStr20Contains_30_bs_1504"
  %"$$ud-registry.listByStr20Contains_30_call_1505" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_30_fptr_1502"(i8* %"$$ud-registry.listByStr20Contains_30_envptr_1503", [20 x i8]* %"$$ud-registry.listByStr20Contains_30_bs_1504")
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_30_call_1505", %TName_Bool** %"$ud-registry.listByStr20Contains_31"
  %"$$ud-registry.listByStr20Contains_31_1506" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_31"
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_31_1506", %TName_Bool** %b
  %"$gasrem_1507" = load i64, i64* @_gasrem
  %"$gascmp_1508" = icmp ugt i64 1, %"$gasrem_1507"
  br i1 %"$gascmp_1508", label %"$out_of_gas_1509", label %"$have_gas_1510"

"$out_of_gas_1509":                               ; preds = %"$have_gas_1494"
  call void @_out_of_gas()
  br label %"$have_gas_1510"

"$have_gas_1510":                                 ; preds = %"$out_of_gas_1509", %"$have_gas_1494"
  %"$consume_1511" = sub i64 %"$gasrem_1507", 1
  store i64 %"$consume_1511", i64* @_gasrem
  %"$BoolUtils.negb_32" = alloca %TName_Bool*
  %"$BoolUtils.negb_1512" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb
  %"$BoolUtils.negb_fptr_1513" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1512", 0
  %"$BoolUtils.negb_envptr_1514" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1512", 1
  %"$b_1515" = load %TName_Bool*, %TName_Bool** %b
  %"$BoolUtils.negb_call_1516" = call %TName_Bool* %"$BoolUtils.negb_fptr_1513"(i8* %"$BoolUtils.negb_envptr_1514", %TName_Bool* %"$b_1515")
  store %TName_Bool* %"$BoolUtils.negb_call_1516", %TName_Bool** %"$BoolUtils.negb_32"
  %"$$BoolUtils.negb_32_1517" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_32"
  store %TName_Bool* %"$$BoolUtils.negb_32_1517", %TName_Bool** %"$retval_258"
  %"$$retval_258_1518" = load %TName_Bool*, %TName_Bool** %"$retval_258"
  ret %TName_Bool* %"$$retval_258_1518"
}

define internal { %TName_Bool* (i8*, [20 x i8]*)*, i8* } @"$fundef_255"(%"$$fundef_255_env_424"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_255_env_BoolUtils.negb_1461" = getelementptr inbounds %"$$fundef_255_env_424", %"$$fundef_255_env_424"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1462" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_255_env_BoolUtils.negb_1461"
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1462", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb
  %"$$fundef_255_env_ud-registry.listByStr20Contains_1463" = getelementptr inbounds %"$$fundef_255_env_424", %"$$fundef_255_env_424"* %0, i32 0, i32 1
  %"$ud-registry.listByStr20Contains_envload_1464" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_255_env_ud-registry.listByStr20Contains_1463"
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_1464", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains
  %"$retval_256" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  %"$gasrem_1465" = load i64, i64* @_gasrem
  %"$gascmp_1466" = icmp ugt i64 1, %"$gasrem_1465"
  br i1 %"$gascmp_1466", label %"$out_of_gas_1467", label %"$have_gas_1468"

"$out_of_gas_1467":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1468"

"$have_gas_1468":                                 ; preds = %"$out_of_gas_1467", %entry
  %"$consume_1469" = sub i64 %"$gasrem_1465", 1
  store i64 %"$consume_1469", i64* @_gasrem
  %"$$fundef_257_envp_1470_load" = load i8*, i8** @_execptr
  %"$$fundef_257_envp_1470_salloc" = call i8* @_salloc(i8* %"$$fundef_257_envp_1470_load", i64 40)
  %"$$fundef_257_envp_1470" = bitcast i8* %"$$fundef_257_envp_1470_salloc" to %"$$fundef_257_env_423"*
  %"$$fundef_257_env_voidp_1472" = bitcast %"$$fundef_257_env_423"* %"$$fundef_257_envp_1470" to i8*
  %"$$fundef_257_cloval_1473" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_257_env_423"*, [20 x i8]*)* @"$fundef_257" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_257_env_voidp_1472", 1
  %"$$fundef_257_env_BoolUtils.negb_1474" = getelementptr inbounds %"$$fundef_257_env_423", %"$$fundef_257_env_423"* %"$$fundef_257_envp_1470", i32 0, i32 0
  %"$BoolUtils.negb_1475" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1475", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_257_env_BoolUtils.negb_1474"
  %"$$fundef_257_env_list_1476" = getelementptr inbounds %"$$fundef_257_env_423", %"$$fundef_257_env_423"* %"$$fundef_257_envp_1470", i32 0, i32 1
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_257_env_list_1476"
  %"$$fundef_257_env_ud-registry.listByStr20Contains_1477" = getelementptr inbounds %"$$fundef_257_env_423", %"$$fundef_257_env_423"* %"$$fundef_257_envp_1470", i32 0, i32 2
  %"$ud-registry.listByStr20Contains_1478" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_1478", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_257_env_ud-registry.listByStr20Contains_1477"
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_257_cloval_1473", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_256"
  %"$$retval_256_1479" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_256"
  ret { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$retval_256_1479"
}

define internal %TName_Bool* @"$fundef_261"(%"$$fundef_261_env_425"* %0, [20 x i8]* %1) {
entry:
  %bs = load [20 x i8], [20 x i8]* %1
  %"$$fundef_261_env_ListUtils.list_mem_1416" = getelementptr inbounds %"$$fundef_261_env_425", %"$$fundef_261_env_425"* %0, i32 0, i32 0
  %"$ListUtils.list_mem_envload_1417" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_261_env_ListUtils.list_mem_1416"
  %ListUtils.list_mem = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$ListUtils.list_mem_envload_1417", { i8*, i8* }** %ListUtils.list_mem
  %"$$fundef_261_env_list_1418" = getelementptr inbounds %"$$fundef_261_env_425", %"$$fundef_261_env_425"* %0, i32 0, i32 1
  %"$list_envload_1419" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_261_env_list_1418"
  %list = alloca %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$list_envload_1419", %TName_List_ByStr20** %list
  %"$$fundef_261_env_ud-registry.eqByStr20_1420" = getelementptr inbounds %"$$fundef_261_env_425", %"$$fundef_261_env_425"* %0, i32 0, i32 2
  %"$ud-registry.eqByStr20_envload_1421" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_261_env_ud-registry.eqByStr20_1420"
  %ud-registry.eqByStr20 = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_envload_1421", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20
  %"$retval_262" = alloca %TName_Bool*
  %"$gasrem_1422" = load i64, i64* @_gasrem
  %"$gascmp_1423" = icmp ugt i64 1, %"$gasrem_1422"
  br i1 %"$gascmp_1423", label %"$out_of_gas_1424", label %"$have_gas_1425"

"$out_of_gas_1424":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1425"

"$have_gas_1425":                                 ; preds = %"$out_of_gas_1424", %entry
  %"$consume_1426" = sub i64 %"$gasrem_1422", 1
  store i64 %"$consume_1426", i64* @_gasrem
  %listMemByStr20 = alloca { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }
  %"$gasrem_1427" = load i64, i64* @_gasrem
  %"$gascmp_1428" = icmp ugt i64 1, %"$gasrem_1427"
  br i1 %"$gascmp_1428", label %"$out_of_gas_1429", label %"$have_gas_1430"

"$out_of_gas_1429":                               ; preds = %"$have_gas_1425"
  call void @_out_of_gas()
  br label %"$have_gas_1430"

"$have_gas_1430":                                 ; preds = %"$out_of_gas_1429", %"$have_gas_1425"
  %"$consume_1431" = sub i64 %"$gasrem_1427", 1
  store i64 %"$consume_1431", i64* @_gasrem
  %"$ListUtils.list_mem_1432" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_mem
  %"$ListUtils.list_mem_1433" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_mem_1432", i32 0
  %"$ListUtils.list_mem_1434" = bitcast { i8*, i8* }* %"$ListUtils.list_mem_1433" to { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_mem_1435" = load { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_mem_1434"
  %"$ListUtils.list_mem_fptr_1436" = extractvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_mem_1435", 0
  %"$ListUtils.list_mem_envptr_1437" = extractvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_mem_1435", 1
  %"$ListUtils.list_mem_call_1438" = call { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_mem_fptr_1436"(i8* %"$ListUtils.list_mem_envptr_1437")
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_mem_call_1438", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %listMemByStr20
  %"$gasrem_1439" = load i64, i64* @_gasrem
  %"$gascmp_1440" = icmp ugt i64 1, %"$gasrem_1439"
  br i1 %"$gascmp_1440", label %"$out_of_gas_1441", label %"$have_gas_1442"

"$out_of_gas_1441":                               ; preds = %"$have_gas_1430"
  call void @_out_of_gas()
  br label %"$have_gas_1442"

"$have_gas_1442":                                 ; preds = %"$out_of_gas_1441", %"$have_gas_1430"
  %"$consume_1443" = sub i64 %"$gasrem_1439", 1
  store i64 %"$consume_1443", i64* @_gasrem
  %"$listMemByStr20_27" = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$listMemByStr20_1444" = load { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %listMemByStr20
  %"$listMemByStr20_fptr_1445" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listMemByStr20_1444", 0
  %"$listMemByStr20_envptr_1446" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listMemByStr20_1444", 1
  %"$ud-registry.eqByStr20_1447" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20
  %"$listMemByStr20_call_1448" = call { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$listMemByStr20_fptr_1445"(i8* %"$listMemByStr20_envptr_1446", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_1447")
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$listMemByStr20_call_1448", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$listMemByStr20_27"
  %"$listMemByStr20_28" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }
  %"$$listMemByStr20_27_1449" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$listMemByStr20_27"
  %"$$listMemByStr20_27_fptr_1450" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$listMemByStr20_27_1449", 0
  %"$$listMemByStr20_27_envptr_1451" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$listMemByStr20_27_1449", 1
  %"$$listMemByStr20_27_bs_1452" = alloca [20 x i8]
  store [20 x i8] %bs, [20 x i8]* %"$$listMemByStr20_27_bs_1452"
  %"$$listMemByStr20_27_call_1453" = call { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_27_fptr_1450"(i8* %"$$listMemByStr20_27_envptr_1451", [20 x i8]* %"$$listMemByStr20_27_bs_1452")
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_27_call_1453", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listMemByStr20_28"
  %"$listMemByStr20_29" = alloca %TName_Bool*
  %"$$listMemByStr20_28_1454" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listMemByStr20_28"
  %"$$listMemByStr20_28_fptr_1455" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_28_1454", 0
  %"$$listMemByStr20_28_envptr_1456" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_28_1454", 1
  %"$list_1457" = load %TName_List_ByStr20*, %TName_List_ByStr20** %list
  %"$$listMemByStr20_28_call_1458" = call %TName_Bool* %"$$listMemByStr20_28_fptr_1455"(i8* %"$$listMemByStr20_28_envptr_1456", %TName_List_ByStr20* %"$list_1457")
  store %TName_Bool* %"$$listMemByStr20_28_call_1458", %TName_Bool** %"$listMemByStr20_29"
  %"$$listMemByStr20_29_1459" = load %TName_Bool*, %TName_Bool** %"$listMemByStr20_29"
  store %TName_Bool* %"$$listMemByStr20_29_1459", %TName_Bool** %"$retval_262"
  %"$$retval_262_1460" = load %TName_Bool*, %TName_Bool** %"$retval_262"
  ret %TName_Bool* %"$$retval_262_1460"
}

define internal { %TName_Bool* (i8*, [20 x i8]*)*, i8* } @"$fundef_259"(%"$$fundef_259_env_426"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_259_env_ListUtils.list_mem_1397" = getelementptr inbounds %"$$fundef_259_env_426", %"$$fundef_259_env_426"* %0, i32 0, i32 0
  %"$ListUtils.list_mem_envload_1398" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_259_env_ListUtils.list_mem_1397"
  %ListUtils.list_mem = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$ListUtils.list_mem_envload_1398", { i8*, i8* }** %ListUtils.list_mem
  %"$$fundef_259_env_ud-registry.eqByStr20_1399" = getelementptr inbounds %"$$fundef_259_env_426", %"$$fundef_259_env_426"* %0, i32 0, i32 1
  %"$ud-registry.eqByStr20_envload_1400" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_259_env_ud-registry.eqByStr20_1399"
  %ud-registry.eqByStr20 = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_envload_1400", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20
  %"$retval_260" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  %"$gasrem_1401" = load i64, i64* @_gasrem
  %"$gascmp_1402" = icmp ugt i64 1, %"$gasrem_1401"
  br i1 %"$gascmp_1402", label %"$out_of_gas_1403", label %"$have_gas_1404"

"$out_of_gas_1403":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1404"

"$have_gas_1404":                                 ; preds = %"$out_of_gas_1403", %entry
  %"$consume_1405" = sub i64 %"$gasrem_1401", 1
  store i64 %"$consume_1405", i64* @_gasrem
  %"$$fundef_261_envp_1406_load" = load i8*, i8** @_execptr
  %"$$fundef_261_envp_1406_salloc" = call i8* @_salloc(i8* %"$$fundef_261_envp_1406_load", i64 32)
  %"$$fundef_261_envp_1406" = bitcast i8* %"$$fundef_261_envp_1406_salloc" to %"$$fundef_261_env_425"*
  %"$$fundef_261_env_voidp_1408" = bitcast %"$$fundef_261_env_425"* %"$$fundef_261_envp_1406" to i8*
  %"$$fundef_261_cloval_1409" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_261_env_425"*, [20 x i8]*)* @"$fundef_261" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_261_env_voidp_1408", 1
  %"$$fundef_261_env_ListUtils.list_mem_1410" = getelementptr inbounds %"$$fundef_261_env_425", %"$$fundef_261_env_425"* %"$$fundef_261_envp_1406", i32 0, i32 0
  %"$ListUtils.list_mem_1411" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_mem
  store { i8*, i8* }* %"$ListUtils.list_mem_1411", { i8*, i8* }** %"$$fundef_261_env_ListUtils.list_mem_1410"
  %"$$fundef_261_env_list_1412" = getelementptr inbounds %"$$fundef_261_env_425", %"$$fundef_261_env_425"* %"$$fundef_261_envp_1406", i32 0, i32 1
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_261_env_list_1412"
  %"$$fundef_261_env_ud-registry.eqByStr20_1413" = getelementptr inbounds %"$$fundef_261_env_425", %"$$fundef_261_env_425"* %"$$fundef_261_envp_1406", i32 0, i32 2
  %"$ud-registry.eqByStr20_1414" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_1414", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_261_env_ud-registry.eqByStr20_1413"
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_261_cloval_1409", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_260"
  %"$$retval_260_1415" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_260"
  ret { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$retval_260_1415"
}

define internal %TName_Bool* @"$fundef_265"(%"$$fundef_265_env_427"* %0, [20 x i8]* %1) {
entry:
  %bs2 = load [20 x i8], [20 x i8]* %1
  %"$$fundef_265_env_bs1_1387" = getelementptr inbounds %"$$fundef_265_env_427", %"$$fundef_265_env_427"* %0, i32 0, i32 0
  %"$bs1_envload_1388" = load [20 x i8], [20 x i8]* %"$$fundef_265_env_bs1_1387"
  %bs1 = alloca [20 x i8]
  store [20 x i8] %"$bs1_envload_1388", [20 x i8]* %bs1
  %"$retval_266" = alloca %TName_Bool*
  %"$execptr_load_1389" = load i8*, i8** @_execptr
  %"$eq_bs1_1390" = alloca [20 x i8]
  %"$bs1_1391" = load [20 x i8], [20 x i8]* %bs1
  store [20 x i8] %"$bs1_1391", [20 x i8]* %"$eq_bs1_1390"
  %"$$eq_bs1_1390_1392" = bitcast [20 x i8]* %"$eq_bs1_1390" to i8*
  %"$eq_bs2_1393" = alloca [20 x i8]
  store [20 x i8] %bs2, [20 x i8]* %"$eq_bs2_1393"
  %"$$eq_bs2_1393_1394" = bitcast [20 x i8]* %"$eq_bs2_1393" to i8*
  %"$eq_call_1395" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_1389", i32 20, i8* %"$$eq_bs1_1390_1392", i8* %"$$eq_bs2_1393_1394")
  store %TName_Bool* %"$eq_call_1395", %TName_Bool** %"$retval_266"
  %"$$retval_266_1396" = load %TName_Bool*, %TName_Bool** %"$retval_266"
  ret %TName_Bool* %"$$retval_266_1396"
}

define internal { %TName_Bool* (i8*, [20 x i8]*)*, i8* } @"$fundef_263"(%"$$fundef_263_env_428"* %0, [20 x i8]* %1) {
entry:
  %bs1 = load [20 x i8], [20 x i8]* %1
  %"$retval_264" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  %"$gasrem_1376" = load i64, i64* @_gasrem
  %"$gascmp_1377" = icmp ugt i64 1, %"$gasrem_1376"
  br i1 %"$gascmp_1377", label %"$out_of_gas_1378", label %"$have_gas_1379"

"$out_of_gas_1378":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1379"

"$have_gas_1379":                                 ; preds = %"$out_of_gas_1378", %entry
  %"$consume_1380" = sub i64 %"$gasrem_1376", 1
  store i64 %"$consume_1380", i64* @_gasrem
  %"$$fundef_265_envp_1381_load" = load i8*, i8** @_execptr
  %"$$fundef_265_envp_1381_salloc" = call i8* @_salloc(i8* %"$$fundef_265_envp_1381_load", i64 20)
  %"$$fundef_265_envp_1381" = bitcast i8* %"$$fundef_265_envp_1381_salloc" to %"$$fundef_265_env_427"*
  %"$$fundef_265_env_voidp_1383" = bitcast %"$$fundef_265_env_427"* %"$$fundef_265_envp_1381" to i8*
  %"$$fundef_265_cloval_1384" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_265_env_427"*, [20 x i8]*)* @"$fundef_265" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_265_env_voidp_1383", 1
  %"$$fundef_265_env_bs1_1385" = getelementptr inbounds %"$$fundef_265_env_427", %"$$fundef_265_env_427"* %"$$fundef_265_envp_1381", i32 0, i32 0
  store [20 x i8] %bs1, [20 x i8]* %"$$fundef_265_env_bs1_1385"
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_265_cloval_1384", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_264"
  %"$$retval_264_1386" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_264"
  ret { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$retval_264_1386"
}

define internal %TName_List_Message* @"$fundef_267"(%"$$fundef_267_env_429"* %0, i8* %1) {
entry:
  %"$$fundef_267_env_ud-registry.nilMessage_1362" = getelementptr inbounds %"$$fundef_267_env_429", %"$$fundef_267_env_429"* %0, i32 0, i32 0
  %"$ud-registry.nilMessage_envload_1363" = load %TName_List_Message*, %TName_List_Message** %"$$fundef_267_env_ud-registry.nilMessage_1362"
  %ud-registry.nilMessage = alloca %TName_List_Message*
  store %TName_List_Message* %"$ud-registry.nilMessage_envload_1363", %TName_List_Message** %ud-registry.nilMessage
  %"$retval_268" = alloca %TName_List_Message*
  %"$gasrem_1364" = load i64, i64* @_gasrem
  %"$gascmp_1365" = icmp ugt i64 1, %"$gasrem_1364"
  br i1 %"$gascmp_1365", label %"$out_of_gas_1366", label %"$have_gas_1367"

"$out_of_gas_1366":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1367"

"$have_gas_1367":                                 ; preds = %"$out_of_gas_1366", %entry
  %"$consume_1368" = sub i64 %"$gasrem_1364", 1
  store i64 %"$consume_1368", i64* @_gasrem
  %"$ud-registry.nilMessage_1369" = load %TName_List_Message*, %TName_List_Message** %ud-registry.nilMessage
  %"$adtval_1370_load" = load i8*, i8** @_execptr
  %"$adtval_1370_salloc" = call i8* @_salloc(i8* %"$adtval_1370_load", i64 17)
  %"$adtval_1370" = bitcast i8* %"$adtval_1370_salloc" to %CName_Cons_Message*
  %"$adtgep_1371" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1370", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1371"
  %"$adtgep_1372" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1370", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_1372"
  %"$adtgep_1373" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1370", i32 0, i32 2
  store %TName_List_Message* %"$ud-registry.nilMessage_1369", %TName_List_Message** %"$adtgep_1373"
  %"$adtptr_1374" = bitcast %CName_Cons_Message* %"$adtval_1370" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_1374", %TName_List_Message** %"$retval_268"
  %"$$retval_268_1375" = load %TName_List_Message*, %TName_List_Message** %"$retval_268"
  ret %TName_List_Message* %"$$retval_268_1375"
}

define internal { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_179"(%"$$fundef_179_env_430"* %0, [20 x i8]* %1) {
entry:
  %m = load [20 x i8], [20 x i8]* %1
  %"$$fundef_179_env_ListUtils.list_exists_1313" = getelementptr inbounds %"$$fundef_179_env_430", %"$$fundef_179_env_430"* %0, i32 0, i32 0
  %"$ListUtils.list_exists_envload_1314" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_179_env_ListUtils.list_exists_1313"
  %ListUtils.list_exists = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$ListUtils.list_exists_envload_1314", { i8*, i8* }** %ListUtils.list_exists
  %"$$fundef_179_env_f_1315" = getelementptr inbounds %"$$fundef_179_env_430", %"$$fundef_179_env_430"* %0, i32 0, i32 1
  %"$f_envload_1316" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_179_env_f_1315"
  %f = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_envload_1316", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f
  %"$retval_180" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }
  %"$gasrem_1317" = load i64, i64* @_gasrem
  %"$gascmp_1318" = icmp ugt i64 1, %"$gasrem_1317"
  br i1 %"$gascmp_1318", label %"$out_of_gas_1319", label %"$have_gas_1320"

"$out_of_gas_1319":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1320"

"$have_gas_1320":                                 ; preds = %"$out_of_gas_1319", %entry
  %"$consume_1321" = sub i64 %"$gasrem_1317", 1
  store i64 %"$consume_1321", i64* @_gasrem
  %ex_pred = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  %"$gasrem_1322" = load i64, i64* @_gasrem
  %"$gascmp_1323" = icmp ugt i64 1, %"$gasrem_1322"
  br i1 %"$gascmp_1323", label %"$out_of_gas_1324", label %"$have_gas_1325"

"$out_of_gas_1324":                               ; preds = %"$have_gas_1320"
  call void @_out_of_gas()
  br label %"$have_gas_1325"

"$have_gas_1325":                                 ; preds = %"$out_of_gas_1324", %"$have_gas_1320"
  %"$consume_1326" = sub i64 %"$gasrem_1322", 1
  store i64 %"$consume_1326", i64* @_gasrem
  %"$f_25" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  %"$f_1327" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f
  %"$f_fptr_1328" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_1327", 0
  %"$f_envptr_1329" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_1327", 1
  %"$f_m_1330" = alloca [20 x i8]
  store [20 x i8] %m, [20 x i8]* %"$f_m_1330"
  %"$f_call_1331" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_fptr_1328"(i8* %"$f_envptr_1329", [20 x i8]* %"$f_m_1330")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_call_1331", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$f_25"
  %"$$f_25_1332" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$f_25"
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$f_25_1332", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %ex_pred
  %"$gasrem_1333" = load i64, i64* @_gasrem
  %"$gascmp_1334" = icmp ugt i64 1, %"$gasrem_1333"
  br i1 %"$gascmp_1334", label %"$out_of_gas_1335", label %"$have_gas_1336"

"$out_of_gas_1335":                               ; preds = %"$have_gas_1325"
  call void @_out_of_gas()
  br label %"$have_gas_1336"

"$have_gas_1336":                                 ; preds = %"$out_of_gas_1335", %"$have_gas_1325"
  %"$consume_1337" = sub i64 %"$gasrem_1333", 1
  store i64 %"$consume_1337", i64* @_gasrem
  %ex = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }
  %"$gasrem_1338" = load i64, i64* @_gasrem
  %"$gascmp_1339" = icmp ugt i64 1, %"$gasrem_1338"
  br i1 %"$gascmp_1339", label %"$out_of_gas_1340", label %"$have_gas_1341"

"$out_of_gas_1340":                               ; preds = %"$have_gas_1336"
  call void @_out_of_gas()
  br label %"$have_gas_1341"

"$have_gas_1341":                                 ; preds = %"$out_of_gas_1340", %"$have_gas_1336"
  %"$consume_1342" = sub i64 %"$gasrem_1338", 1
  store i64 %"$consume_1342", i64* @_gasrem
  %"$ListUtils.list_exists_1343" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_exists
  %"$ListUtils.list_exists_1344" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_exists_1343", i32 0
  %"$ListUtils.list_exists_1345" = bitcast { i8*, i8* }* %"$ListUtils.list_exists_1344" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_exists_1346" = load { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_exists_1345"
  %"$ListUtils.list_exists_fptr_1347" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_exists_1346", 0
  %"$ListUtils.list_exists_envptr_1348" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_exists_1346", 1
  %"$ListUtils.list_exists_call_1349" = call { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_exists_fptr_1347"(i8* %"$ListUtils.list_exists_envptr_1348")
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_exists_call_1349", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %ex
  %"$gasrem_1350" = load i64, i64* @_gasrem
  %"$gascmp_1351" = icmp ugt i64 1, %"$gasrem_1350"
  br i1 %"$gascmp_1351", label %"$out_of_gas_1352", label %"$have_gas_1353"

"$out_of_gas_1352":                               ; preds = %"$have_gas_1341"
  call void @_out_of_gas()
  br label %"$have_gas_1353"

"$have_gas_1353":                                 ; preds = %"$out_of_gas_1352", %"$have_gas_1341"
  %"$consume_1354" = sub i64 %"$gasrem_1350", 1
  store i64 %"$consume_1354", i64* @_gasrem
  %"$ex_26" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }
  %"$ex_1355" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %ex
  %"$ex_fptr_1356" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ex_1355", 0
  %"$ex_envptr_1357" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ex_1355", 1
  %"$ex_pred_1358" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %ex_pred
  %"$ex_call_1359" = call { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$ex_fptr_1356"(i8* %"$ex_envptr_1357", { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ex_pred_1358")
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$ex_call_1359", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$ex_26"
  %"$$ex_26_1360" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$ex_26"
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$ex_26_1360", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_180"
  %"$$retval_180_1361" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_180"
  ret { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_180_1361"
}

define internal { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_177"(%"$$fundef_177_env_431"* %0, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1) {
entry:
  %"$$fundef_177_env_ListUtils.list_exists_1298" = getelementptr inbounds %"$$fundef_177_env_431", %"$$fundef_177_env_431"* %0, i32 0, i32 0
  %"$ListUtils.list_exists_envload_1299" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_177_env_ListUtils.list_exists_1298"
  %ListUtils.list_exists = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$ListUtils.list_exists_envload_1299", { i8*, i8* }** %ListUtils.list_exists
  %"$retval_178" = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$gasrem_1300" = load i64, i64* @_gasrem
  %"$gascmp_1301" = icmp ugt i64 1, %"$gasrem_1300"
  br i1 %"$gascmp_1301", label %"$out_of_gas_1302", label %"$have_gas_1303"

"$out_of_gas_1302":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1303"

"$have_gas_1303":                                 ; preds = %"$out_of_gas_1302", %entry
  %"$consume_1304" = sub i64 %"$gasrem_1300", 1
  store i64 %"$consume_1304", i64* @_gasrem
  %"$$fundef_179_envp_1305_load" = load i8*, i8** @_execptr
  %"$$fundef_179_envp_1305_salloc" = call i8* @_salloc(i8* %"$$fundef_179_envp_1305_load", i64 24)
  %"$$fundef_179_envp_1305" = bitcast i8* %"$$fundef_179_envp_1305_salloc" to %"$$fundef_179_env_430"*
  %"$$fundef_179_env_voidp_1307" = bitcast %"$$fundef_179_env_430"* %"$$fundef_179_envp_1305" to i8*
  %"$$fundef_179_cloval_1308" = insertvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_179_env_430"*, [20 x i8]*)* @"$fundef_179" to { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_179_env_voidp_1307", 1
  %"$$fundef_179_env_ListUtils.list_exists_1309" = getelementptr inbounds %"$$fundef_179_env_430", %"$$fundef_179_env_430"* %"$$fundef_179_envp_1305", i32 0, i32 0
  %"$ListUtils.list_exists_1310" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_exists
  store { i8*, i8* }* %"$ListUtils.list_exists_1310", { i8*, i8* }** %"$$fundef_179_env_ListUtils.list_exists_1309"
  %"$$fundef_179_env_f_1311" = getelementptr inbounds %"$$fundef_179_env_430", %"$$fundef_179_env_430"* %"$$fundef_179_envp_1305", i32 0, i32 1
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_179_env_f_1311"
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_179_cloval_1308", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_178"
  %"$$retval_178_1312" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_178"
  ret { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_178_1312"
}

define internal { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_175"(%"$$fundef_175_env_432"* %0) {
entry:
  %"$$fundef_175_env_ListUtils.list_exists_1284" = getelementptr inbounds %"$$fundef_175_env_432", %"$$fundef_175_env_432"* %0, i32 0, i32 0
  %"$ListUtils.list_exists_envload_1285" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_175_env_ListUtils.list_exists_1284"
  %ListUtils.list_exists = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$ListUtils.list_exists_envload_1285", { i8*, i8* }** %ListUtils.list_exists
  %"$retval_176" = alloca { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }
  %"$gasrem_1286" = load i64, i64* @_gasrem
  %"$gascmp_1287" = icmp ugt i64 1, %"$gasrem_1286"
  br i1 %"$gascmp_1287", label %"$out_of_gas_1288", label %"$have_gas_1289"

"$out_of_gas_1288":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1289"

"$have_gas_1289":                                 ; preds = %"$out_of_gas_1288", %entry
  %"$consume_1290" = sub i64 %"$gasrem_1286", 1
  store i64 %"$consume_1290", i64* @_gasrem
  %"$$fundef_177_envp_1291_load" = load i8*, i8** @_execptr
  %"$$fundef_177_envp_1291_salloc" = call i8* @_salloc(i8* %"$$fundef_177_envp_1291_load", i64 8)
  %"$$fundef_177_envp_1291" = bitcast i8* %"$$fundef_177_envp_1291_salloc" to %"$$fundef_177_env_431"*
  %"$$fundef_177_env_voidp_1293" = bitcast %"$$fundef_177_env_431"* %"$$fundef_177_envp_1291" to i8*
  %"$$fundef_177_cloval_1294" = insertvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })* bitcast ({ { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_177_env_431"*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })* @"$fundef_177" to { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*), i8* undef }, i8* %"$$fundef_177_env_voidp_1293", 1
  %"$$fundef_177_env_ListUtils.list_exists_1295" = getelementptr inbounds %"$$fundef_177_env_431", %"$$fundef_177_env_431"* %"$$fundef_177_envp_1291", i32 0, i32 0
  %"$ListUtils.list_exists_1296" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_exists
  store { i8*, i8* }* %"$ListUtils.list_exists_1296", { i8*, i8* }** %"$$fundef_177_env_ListUtils.list_exists_1295"
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_177_cloval_1294", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_176"
  %"$$retval_176_1297" = load { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_176"
  ret { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_176_1297"
}

define internal %TName_Bool* @"$fundef_185"(%"$$fundef_185_env_433"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_185_env_ListUtils.list_find_1210" = getelementptr inbounds %"$$fundef_185_env_433", %"$$fundef_185_env_433"* %0, i32 0, i32 0
  %"$ListUtils.list_find_envload_1211" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_185_env_ListUtils.list_find_1210"
  %ListUtils.list_find = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$ListUtils.list_find_envload_1211", { i8*, i8* }** %ListUtils.list_find
  %"$$fundef_185_env_p_1212" = getelementptr inbounds %"$$fundef_185_env_433", %"$$fundef_185_env_433"* %0, i32 0, i32 1
  %"$p_envload_1213" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_185_env_p_1212"
  %p = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_envload_1213", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p
  %"$retval_186" = alloca %TName_Bool*
  %"$gasrem_1214" = load i64, i64* @_gasrem
  %"$gascmp_1215" = icmp ugt i64 1, %"$gasrem_1214"
  br i1 %"$gascmp_1215", label %"$out_of_gas_1216", label %"$have_gas_1217"

"$out_of_gas_1216":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1217"

"$have_gas_1217":                                 ; preds = %"$out_of_gas_1216", %entry
  %"$consume_1218" = sub i64 %"$gasrem_1214", 1
  store i64 %"$consume_1218", i64* @_gasrem
  %find = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }
  %"$gasrem_1219" = load i64, i64* @_gasrem
  %"$gascmp_1220" = icmp ugt i64 1, %"$gasrem_1219"
  br i1 %"$gascmp_1220", label %"$out_of_gas_1221", label %"$have_gas_1222"

"$out_of_gas_1221":                               ; preds = %"$have_gas_1217"
  call void @_out_of_gas()
  br label %"$have_gas_1222"

"$have_gas_1222":                                 ; preds = %"$out_of_gas_1221", %"$have_gas_1217"
  %"$consume_1223" = sub i64 %"$gasrem_1219", 1
  store i64 %"$consume_1223", i64* @_gasrem
  %"$ListUtils.list_find_1224" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_find
  %"$ListUtils.list_find_1225" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_find_1224", i32 0
  %"$ListUtils.list_find_1226" = bitcast { i8*, i8* }* %"$ListUtils.list_find_1225" to { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_find_1227" = load { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_find_1226"
  %"$ListUtils.list_find_fptr_1228" = extractvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_find_1227", 0
  %"$ListUtils.list_find_envptr_1229" = extractvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_find_1227", 1
  %"$ListUtils.list_find_call_1230" = call { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_find_fptr_1228"(i8* %"$ListUtils.list_find_envptr_1229")
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_find_call_1230", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %find
  %"$gasrem_1231" = load i64, i64* @_gasrem
  %"$gascmp_1232" = icmp ugt i64 1, %"$gasrem_1231"
  br i1 %"$gascmp_1232", label %"$out_of_gas_1233", label %"$have_gas_1234"

"$out_of_gas_1233":                               ; preds = %"$have_gas_1222"
  call void @_out_of_gas()
  br label %"$have_gas_1234"

"$have_gas_1234":                                 ; preds = %"$out_of_gas_1233", %"$have_gas_1222"
  %"$consume_1235" = sub i64 %"$gasrem_1231", 1
  store i64 %"$consume_1235", i64* @_gasrem
  %search = alloca %TName_Option_ByStr20*
  %"$gasrem_1236" = load i64, i64* @_gasrem
  %"$gascmp_1237" = icmp ugt i64 1, %"$gasrem_1236"
  br i1 %"$gascmp_1237", label %"$out_of_gas_1238", label %"$have_gas_1239"

"$out_of_gas_1238":                               ; preds = %"$have_gas_1234"
  call void @_out_of_gas()
  br label %"$have_gas_1239"

"$have_gas_1239":                                 ; preds = %"$out_of_gas_1238", %"$have_gas_1234"
  %"$consume_1240" = sub i64 %"$gasrem_1236", 1
  store i64 %"$consume_1240", i64* @_gasrem
  %"$find_23" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }
  %"$find_1241" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %find
  %"$find_fptr_1242" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$find_1241", 0
  %"$find_envptr_1243" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$find_1241", 1
  %"$p_1244" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p
  %"$find_call_1245" = call { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$find_fptr_1242"(i8* %"$find_envptr_1243", { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_1244")
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$find_call_1245", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$find_23"
  %"$find_24" = alloca %TName_Option_ByStr20*
  %"$$find_23_1246" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$find_23"
  %"$$find_23_fptr_1247" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$find_23_1246", 0
  %"$$find_23_envptr_1248" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$find_23_1246", 1
  %"$$find_23_call_1249" = call %TName_Option_ByStr20* %"$$find_23_fptr_1247"(i8* %"$$find_23_envptr_1248", %TName_List_ByStr20* %1)
  store %TName_Option_ByStr20* %"$$find_23_call_1249", %TName_Option_ByStr20** %"$find_24"
  %"$$find_24_1250" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$find_24"
  store %TName_Option_ByStr20* %"$$find_24_1250", %TName_Option_ByStr20** %search
  %"$gasrem_1251" = load i64, i64* @_gasrem
  %"$gascmp_1252" = icmp ugt i64 2, %"$gasrem_1251"
  br i1 %"$gascmp_1252", label %"$out_of_gas_1253", label %"$have_gas_1254"

"$out_of_gas_1253":                               ; preds = %"$have_gas_1239"
  call void @_out_of_gas()
  br label %"$have_gas_1254"

"$have_gas_1254":                                 ; preds = %"$out_of_gas_1253", %"$have_gas_1239"
  %"$consume_1255" = sub i64 %"$gasrem_1251", 2
  store i64 %"$consume_1255", i64* @_gasrem
  %"$search_1257" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %search
  %"$search_tag_1258" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$search_1257", i32 0, i32 0
  %"$search_tag_1259" = load i8, i8* %"$search_tag_1258"
  switch i8 %"$search_tag_1259", label %"$empty_default_1260" [
    i8 0, label %"$Some_1261"
    i8 1, label %"$None_1273"
  ]

"$Some_1261":                                     ; preds = %"$have_gas_1254"
  %"$search_1262" = bitcast %TName_Option_ByStr20* %"$search_1257" to %CName_Some_ByStr20*
  %"$$search_0_gep_1263" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$search_1262", i32 0, i32 1
  %"$$search_0_load_1264" = load [20 x i8], [20 x i8]* %"$$search_0_gep_1263"
  %"$search_0" = alloca [20 x i8]
  store [20 x i8] %"$$search_0_load_1264", [20 x i8]* %"$search_0"
  %"$gasrem_1265" = load i64, i64* @_gasrem
  %"$gascmp_1266" = icmp ugt i64 1, %"$gasrem_1265"
  br i1 %"$gascmp_1266", label %"$out_of_gas_1267", label %"$have_gas_1268"

"$out_of_gas_1267":                               ; preds = %"$Some_1261"
  call void @_out_of_gas()
  br label %"$have_gas_1268"

"$have_gas_1268":                                 ; preds = %"$out_of_gas_1267", %"$Some_1261"
  %"$consume_1269" = sub i64 %"$gasrem_1265", 1
  store i64 %"$consume_1269", i64* @_gasrem
  %"$adtval_1270_load" = load i8*, i8** @_execptr
  %"$adtval_1270_salloc" = call i8* @_salloc(i8* %"$adtval_1270_load", i64 1)
  %"$adtval_1270" = bitcast i8* %"$adtval_1270_salloc" to %CName_True*
  %"$adtgep_1271" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1270", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1271"
  %"$adtptr_1272" = bitcast %CName_True* %"$adtval_1270" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1272", %TName_Bool** %"$retval_186"
  br label %"$matchsucc_1256"

"$None_1273":                                     ; preds = %"$have_gas_1254"
  %"$search_1274" = bitcast %TName_Option_ByStr20* %"$search_1257" to %CName_None_ByStr20*
  %"$gasrem_1275" = load i64, i64* @_gasrem
  %"$gascmp_1276" = icmp ugt i64 1, %"$gasrem_1275"
  br i1 %"$gascmp_1276", label %"$out_of_gas_1277", label %"$have_gas_1278"

"$out_of_gas_1277":                               ; preds = %"$None_1273"
  call void @_out_of_gas()
  br label %"$have_gas_1278"

"$have_gas_1278":                                 ; preds = %"$out_of_gas_1277", %"$None_1273"
  %"$consume_1279" = sub i64 %"$gasrem_1275", 1
  store i64 %"$consume_1279", i64* @_gasrem
  %"$adtval_1280_load" = load i8*, i8** @_execptr
  %"$adtval_1280_salloc" = call i8* @_salloc(i8* %"$adtval_1280_load", i64 1)
  %"$adtval_1280" = bitcast i8* %"$adtval_1280_salloc" to %CName_False*
  %"$adtgep_1281" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1280", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1281"
  %"$adtptr_1282" = bitcast %CName_False* %"$adtval_1280" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1282", %TName_Bool** %"$retval_186"
  br label %"$matchsucc_1256"

"$empty_default_1260":                            ; preds = %"$have_gas_1254"
  br label %"$matchsucc_1256"

"$matchsucc_1256":                                ; preds = %"$have_gas_1278", %"$have_gas_1268", %"$empty_default_1260"
  %"$$retval_186_1283" = load %TName_Bool*, %TName_Bool** %"$retval_186"
  ret %TName_Bool* %"$$retval_186_1283"
}

define internal { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_183"(%"$$fundef_183_env_434"* %0, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1) {
entry:
  %"$$fundef_183_env_ListUtils.list_find_1195" = getelementptr inbounds %"$$fundef_183_env_434", %"$$fundef_183_env_434"* %0, i32 0, i32 0
  %"$ListUtils.list_find_envload_1196" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_183_env_ListUtils.list_find_1195"
  %ListUtils.list_find = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$ListUtils.list_find_envload_1196", { i8*, i8* }** %ListUtils.list_find
  %"$retval_184" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }
  %"$gasrem_1197" = load i64, i64* @_gasrem
  %"$gascmp_1198" = icmp ugt i64 1, %"$gasrem_1197"
  br i1 %"$gascmp_1198", label %"$out_of_gas_1199", label %"$have_gas_1200"

"$out_of_gas_1199":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1200"

"$have_gas_1200":                                 ; preds = %"$out_of_gas_1199", %entry
  %"$consume_1201" = sub i64 %"$gasrem_1197", 1
  store i64 %"$consume_1201", i64* @_gasrem
  %"$$fundef_185_envp_1202_load" = load i8*, i8** @_execptr
  %"$$fundef_185_envp_1202_salloc" = call i8* @_salloc(i8* %"$$fundef_185_envp_1202_load", i64 24)
  %"$$fundef_185_envp_1202" = bitcast i8* %"$$fundef_185_envp_1202_salloc" to %"$$fundef_185_env_433"*
  %"$$fundef_185_env_voidp_1204" = bitcast %"$$fundef_185_env_433"* %"$$fundef_185_envp_1202" to i8*
  %"$$fundef_185_cloval_1205" = insertvalue { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } { %TName_Bool* (i8*, %TName_List_ByStr20*)* bitcast (%TName_Bool* (%"$$fundef_185_env_433"*, %TName_List_ByStr20*)* @"$fundef_185" to %TName_Bool* (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_185_env_voidp_1204", 1
  %"$$fundef_185_env_ListUtils.list_find_1206" = getelementptr inbounds %"$$fundef_185_env_433", %"$$fundef_185_env_433"* %"$$fundef_185_envp_1202", i32 0, i32 0
  %"$ListUtils.list_find_1207" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_find
  store { i8*, i8* }* %"$ListUtils.list_find_1207", { i8*, i8* }** %"$$fundef_185_env_ListUtils.list_find_1206"
  %"$$fundef_185_env_p_1208" = getelementptr inbounds %"$$fundef_185_env_433", %"$$fundef_185_env_433"* %"$$fundef_185_envp_1202", i32 0, i32 1
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_185_env_p_1208"
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_185_cloval_1205", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_184"
  %"$$retval_184_1209" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_184"
  ret { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_184_1209"
}

define internal { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_181"(%"$$fundef_181_env_435"* %0) {
entry:
  %"$$fundef_181_env_ListUtils.list_find_1181" = getelementptr inbounds %"$$fundef_181_env_435", %"$$fundef_181_env_435"* %0, i32 0, i32 0
  %"$ListUtils.list_find_envload_1182" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_181_env_ListUtils.list_find_1181"
  %ListUtils.list_find = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$ListUtils.list_find_envload_1182", { i8*, i8* }** %ListUtils.list_find
  %"$retval_182" = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }
  %"$gasrem_1183" = load i64, i64* @_gasrem
  %"$gascmp_1184" = icmp ugt i64 1, %"$gasrem_1183"
  br i1 %"$gascmp_1184", label %"$out_of_gas_1185", label %"$have_gas_1186"

"$out_of_gas_1185":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1186"

"$have_gas_1186":                                 ; preds = %"$out_of_gas_1185", %entry
  %"$consume_1187" = sub i64 %"$gasrem_1183", 1
  store i64 %"$consume_1187", i64* @_gasrem
  %"$$fundef_183_envp_1188_load" = load i8*, i8** @_execptr
  %"$$fundef_183_envp_1188_salloc" = call i8* @_salloc(i8* %"$$fundef_183_envp_1188_load", i64 8)
  %"$$fundef_183_envp_1188" = bitcast i8* %"$$fundef_183_envp_1188_salloc" to %"$$fundef_183_env_434"*
  %"$$fundef_183_env_voidp_1190" = bitcast %"$$fundef_183_env_434"* %"$$fundef_183_envp_1188" to i8*
  %"$$fundef_183_cloval_1191" = insertvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* bitcast ({ %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_183_env_434"*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* @"$fundef_183" to { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*), i8* undef }, i8* %"$$fundef_183_env_voidp_1190", 1
  %"$$fundef_183_env_ListUtils.list_find_1192" = getelementptr inbounds %"$$fundef_183_env_434", %"$$fundef_183_env_434"* %"$$fundef_183_envp_1188", i32 0, i32 0
  %"$ListUtils.list_find_1193" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_find
  store { i8*, i8* }* %"$ListUtils.list_find_1193", { i8*, i8* }** %"$$fundef_183_env_ListUtils.list_find_1192"
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_183_cloval_1191", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_182"
  %"$$retval_182_1194" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_182"
  ret { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_182_1194"
}

define internal %TName_Option_ByStr20* @"$fundef_195"(%"$$fundef_195_env_436"* %0, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %1) {
entry:
  %"$$fundef_195_env_init_1123" = getelementptr inbounds %"$$fundef_195_env_436", %"$$fundef_195_env_436"* %0, i32 0, i32 0
  %"$init_envload_1124" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_195_env_init_1123"
  %init = alloca %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$init_envload_1124", %TName_Option_ByStr20** %init
  %"$$fundef_195_env_p_1125" = getelementptr inbounds %"$$fundef_195_env_436", %"$$fundef_195_env_436"* %0, i32 0, i32 1
  %"$p_envload_1126" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_195_env_p_1125"
  %p = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_envload_1126", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p
  %"$$fundef_195_env_x_1127" = getelementptr inbounds %"$$fundef_195_env_436", %"$$fundef_195_env_436"* %0, i32 0, i32 2
  %"$x_envload_1128" = load [20 x i8], [20 x i8]* %"$$fundef_195_env_x_1127"
  %x = alloca [20 x i8]
  store [20 x i8] %"$x_envload_1128", [20 x i8]* %x
  %"$retval_196" = alloca %TName_Option_ByStr20*
  %"$gasrem_1129" = load i64, i64* @_gasrem
  %"$gascmp_1130" = icmp ugt i64 1, %"$gasrem_1129"
  br i1 %"$gascmp_1130", label %"$out_of_gas_1131", label %"$have_gas_1132"

"$out_of_gas_1131":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1132"

"$have_gas_1132":                                 ; preds = %"$out_of_gas_1131", %entry
  %"$consume_1133" = sub i64 %"$gasrem_1129", 1
  store i64 %"$consume_1133", i64* @_gasrem
  %p_x = alloca %TName_Bool*
  %"$gasrem_1134" = load i64, i64* @_gasrem
  %"$gascmp_1135" = icmp ugt i64 1, %"$gasrem_1134"
  br i1 %"$gascmp_1135", label %"$out_of_gas_1136", label %"$have_gas_1137"

"$out_of_gas_1136":                               ; preds = %"$have_gas_1132"
  call void @_out_of_gas()
  br label %"$have_gas_1137"

"$have_gas_1137":                                 ; preds = %"$out_of_gas_1136", %"$have_gas_1132"
  %"$consume_1138" = sub i64 %"$gasrem_1134", 1
  store i64 %"$consume_1138", i64* @_gasrem
  %"$p_19" = alloca %TName_Bool*
  %"$p_1139" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p
  %"$p_fptr_1140" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_1139", 0
  %"$p_envptr_1141" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_1139", 1
  %"$p_x_1142" = alloca [20 x i8]
  %"$x_1143" = load [20 x i8], [20 x i8]* %x
  store [20 x i8] %"$x_1143", [20 x i8]* %"$p_x_1142"
  %"$p_call_1144" = call %TName_Bool* %"$p_fptr_1140"(i8* %"$p_envptr_1141", [20 x i8]* %"$p_x_1142")
  store %TName_Bool* %"$p_call_1144", %TName_Bool** %"$p_19"
  %"$$p_19_1145" = load %TName_Bool*, %TName_Bool** %"$p_19"
  store %TName_Bool* %"$$p_19_1145", %TName_Bool** %p_x
  %"$gasrem_1146" = load i64, i64* @_gasrem
  %"$gascmp_1147" = icmp ugt i64 2, %"$gasrem_1146"
  br i1 %"$gascmp_1147", label %"$out_of_gas_1148", label %"$have_gas_1149"

"$out_of_gas_1148":                               ; preds = %"$have_gas_1137"
  call void @_out_of_gas()
  br label %"$have_gas_1149"

"$have_gas_1149":                                 ; preds = %"$out_of_gas_1148", %"$have_gas_1137"
  %"$consume_1150" = sub i64 %"$gasrem_1146", 2
  store i64 %"$consume_1150", i64* @_gasrem
  %"$p_x_1152" = load %TName_Bool*, %TName_Bool** %p_x
  %"$p_x_tag_1153" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$p_x_1152", i32 0, i32 0
  %"$p_x_tag_1154" = load i8, i8* %"$p_x_tag_1153"
  switch i8 %"$p_x_tag_1154", label %"$empty_default_1155" [
    i8 0, label %"$True_1156"
    i8 1, label %"$False_1168"
  ]

"$True_1156":                                     ; preds = %"$have_gas_1149"
  %"$p_x_1157" = bitcast %TName_Bool* %"$p_x_1152" to %CName_True*
  %"$gasrem_1158" = load i64, i64* @_gasrem
  %"$gascmp_1159" = icmp ugt i64 1, %"$gasrem_1158"
  br i1 %"$gascmp_1159", label %"$out_of_gas_1160", label %"$have_gas_1161"

"$out_of_gas_1160":                               ; preds = %"$True_1156"
  call void @_out_of_gas()
  br label %"$have_gas_1161"

"$have_gas_1161":                                 ; preds = %"$out_of_gas_1160", %"$True_1156"
  %"$consume_1162" = sub i64 %"$gasrem_1158", 1
  store i64 %"$consume_1162", i64* @_gasrem
  %"$x_1163" = load [20 x i8], [20 x i8]* %x
  %"$adtval_1164_load" = load i8*, i8** @_execptr
  %"$adtval_1164_salloc" = call i8* @_salloc(i8* %"$adtval_1164_load", i64 21)
  %"$adtval_1164" = bitcast i8* %"$adtval_1164_salloc" to %CName_Some_ByStr20*
  %"$adtgep_1165" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$adtval_1164", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1165"
  %"$adtgep_1166" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$adtval_1164", i32 0, i32 1
  store [20 x i8] %"$x_1163", [20 x i8]* %"$adtgep_1166"
  %"$adtptr_1167" = bitcast %CName_Some_ByStr20* %"$adtval_1164" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$adtptr_1167", %TName_Option_ByStr20** %"$retval_196"
  br label %"$matchsucc_1151"

"$False_1168":                                    ; preds = %"$have_gas_1149"
  %"$p_x_1169" = bitcast %TName_Bool* %"$p_x_1152" to %CName_False*
  %"$gasrem_1170" = load i64, i64* @_gasrem
  %"$gascmp_1171" = icmp ugt i64 1, %"$gasrem_1170"
  br i1 %"$gascmp_1171", label %"$out_of_gas_1172", label %"$have_gas_1173"

"$out_of_gas_1172":                               ; preds = %"$False_1168"
  call void @_out_of_gas()
  br label %"$have_gas_1173"

"$have_gas_1173":                                 ; preds = %"$out_of_gas_1172", %"$False_1168"
  %"$consume_1174" = sub i64 %"$gasrem_1170", 1
  store i64 %"$consume_1174", i64* @_gasrem
  %"$recurse_20" = alloca %TName_Option_ByStr20*
  %"$recurse_fptr_1175" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %1, 0
  %"$recurse_envptr_1176" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %1, 1
  %"$init_1177" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init
  %"$recurse_call_1178" = call %TName_Option_ByStr20* %"$recurse_fptr_1175"(i8* %"$recurse_envptr_1176", %TName_Option_ByStr20* %"$init_1177")
  store %TName_Option_ByStr20* %"$recurse_call_1178", %TName_Option_ByStr20** %"$recurse_20"
  %"$$recurse_20_1179" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$recurse_20"
  store %TName_Option_ByStr20* %"$$recurse_20_1179", %TName_Option_ByStr20** %"$retval_196"
  br label %"$matchsucc_1151"

"$empty_default_1155":                            ; preds = %"$have_gas_1149"
  br label %"$matchsucc_1151"

"$matchsucc_1151":                                ; preds = %"$have_gas_1173", %"$have_gas_1161", %"$empty_default_1155"
  %"$$retval_196_1180" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$retval_196"
  ret %TName_Option_ByStr20* %"$$retval_196_1180"
}

define internal { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } @"$fundef_193"(%"$$fundef_193_env_437"* %0, [20 x i8]* %1) {
entry:
  %x = load [20 x i8], [20 x i8]* %1
  %"$$fundef_193_env_init_1104" = getelementptr inbounds %"$$fundef_193_env_437", %"$$fundef_193_env_437"* %0, i32 0, i32 0
  %"$init_envload_1105" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_193_env_init_1104"
  %init = alloca %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$init_envload_1105", %TName_Option_ByStr20** %init
  %"$$fundef_193_env_p_1106" = getelementptr inbounds %"$$fundef_193_env_437", %"$$fundef_193_env_437"* %0, i32 0, i32 1
  %"$p_envload_1107" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_193_env_p_1106"
  %p = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_envload_1107", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p
  %"$retval_194" = alloca { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }
  %"$gasrem_1108" = load i64, i64* @_gasrem
  %"$gascmp_1109" = icmp ugt i64 1, %"$gasrem_1108"
  br i1 %"$gascmp_1109", label %"$out_of_gas_1110", label %"$have_gas_1111"

"$out_of_gas_1110":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1111"

"$have_gas_1111":                                 ; preds = %"$out_of_gas_1110", %entry
  %"$consume_1112" = sub i64 %"$gasrem_1108", 1
  store i64 %"$consume_1112", i64* @_gasrem
  %"$$fundef_195_envp_1113_load" = load i8*, i8** @_execptr
  %"$$fundef_195_envp_1113_salloc" = call i8* @_salloc(i8* %"$$fundef_195_envp_1113_load", i64 48)
  %"$$fundef_195_envp_1113" = bitcast i8* %"$$fundef_195_envp_1113_salloc" to %"$$fundef_195_env_436"*
  %"$$fundef_195_env_voidp_1115" = bitcast %"$$fundef_195_env_436"* %"$$fundef_195_envp_1113" to i8*
  %"$$fundef_195_cloval_1116" = insertvalue { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })* bitcast (%TName_Option_ByStr20* (%"$$fundef_195_env_436"*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })* @"$fundef_195" to %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*), i8* undef }, i8* %"$$fundef_195_env_voidp_1115", 1
  %"$$fundef_195_env_init_1117" = getelementptr inbounds %"$$fundef_195_env_436", %"$$fundef_195_env_436"* %"$$fundef_195_envp_1113", i32 0, i32 0
  %"$init_1118" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init
  store %TName_Option_ByStr20* %"$init_1118", %TName_Option_ByStr20** %"$$fundef_195_env_init_1117"
  %"$$fundef_195_env_p_1119" = getelementptr inbounds %"$$fundef_195_env_436", %"$$fundef_195_env_436"* %"$$fundef_195_envp_1113", i32 0, i32 1
  %"$p_1120" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_1120", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_195_env_p_1119"
  %"$$fundef_195_env_x_1121" = getelementptr inbounds %"$$fundef_195_env_436", %"$$fundef_195_env_436"* %"$$fundef_195_envp_1113", i32 0, i32 2
  store [20 x i8] %x, [20 x i8]* %"$$fundef_195_env_x_1121"
  store { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$fundef_195_cloval_1116", { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_194"
  %"$$retval_194_1122" = load { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_194"
  ret { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$retval_194_1122"
}

define internal { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_191"(%"$$fundef_191_env_438"* %0, %TName_Option_ByStr20* %1) {
entry:
  %"$$fundef_191_env_init_1086" = getelementptr inbounds %"$$fundef_191_env_438", %"$$fundef_191_env_438"* %0, i32 0, i32 0
  %"$init_envload_1087" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_191_env_init_1086"
  %init = alloca %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$init_envload_1087", %TName_Option_ByStr20** %init
  %"$$fundef_191_env_p_1088" = getelementptr inbounds %"$$fundef_191_env_438", %"$$fundef_191_env_438"* %0, i32 0, i32 1
  %"$p_envload_1089" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_191_env_p_1088"
  %p = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_envload_1089", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p
  %"$retval_192" = alloca { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$gasrem_1090" = load i64, i64* @_gasrem
  %"$gascmp_1091" = icmp ugt i64 1, %"$gasrem_1090"
  br i1 %"$gascmp_1091", label %"$out_of_gas_1092", label %"$have_gas_1093"

"$out_of_gas_1092":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1093"

"$have_gas_1093":                                 ; preds = %"$out_of_gas_1092", %entry
  %"$consume_1094" = sub i64 %"$gasrem_1090", 1
  store i64 %"$consume_1094", i64* @_gasrem
  %"$$fundef_193_envp_1095_load" = load i8*, i8** @_execptr
  %"$$fundef_193_envp_1095_salloc" = call i8* @_salloc(i8* %"$$fundef_193_envp_1095_load", i64 24)
  %"$$fundef_193_envp_1095" = bitcast i8* %"$$fundef_193_envp_1095_salloc" to %"$$fundef_193_env_437"*
  %"$$fundef_193_env_voidp_1097" = bitcast %"$$fundef_193_env_437"* %"$$fundef_193_envp_1095" to i8*
  %"$$fundef_193_cloval_1098" = insertvalue { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (%"$$fundef_193_env_437"*, [20 x i8]*)* @"$fundef_193" to { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_193_env_voidp_1097", 1
  %"$$fundef_193_env_init_1099" = getelementptr inbounds %"$$fundef_193_env_437", %"$$fundef_193_env_437"* %"$$fundef_193_envp_1095", i32 0, i32 0
  %"$init_1100" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init
  store %TName_Option_ByStr20* %"$init_1100", %TName_Option_ByStr20** %"$$fundef_193_env_init_1099"
  %"$$fundef_193_env_p_1101" = getelementptr inbounds %"$$fundef_193_env_437", %"$$fundef_193_env_437"* %"$$fundef_193_envp_1095", i32 0, i32 1
  %"$p_1102" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_1102", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_193_env_p_1101"
  store { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_193_cloval_1098", { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_192"
  %"$$retval_192_1103" = load { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_192"
  ret { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_192_1103"
}

define internal { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_189"(%"$$fundef_189_env_439"* %0, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1) {
entry:
  %"$$fundef_189_env_list_foldk_1014" = getelementptr inbounds %"$$fundef_189_env_439", %"$$fundef_189_env_439"* %0, i32 0, i32 0
  %"$list_foldk_envload_1015" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_189_env_list_foldk_1014"
  %list_foldk = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldk_envload_1015", { i8*, i8* }** %list_foldk
  %"$retval_190" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }
  %"$gasrem_1016" = load i64, i64* @_gasrem
  %"$gascmp_1017" = icmp ugt i64 1, %"$gasrem_1016"
  br i1 %"$gascmp_1017", label %"$out_of_gas_1018", label %"$have_gas_1019"

"$out_of_gas_1018":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1019"

"$have_gas_1019":                                 ; preds = %"$out_of_gas_1018", %entry
  %"$consume_1020" = sub i64 %"$gasrem_1016", 1
  store i64 %"$consume_1020", i64* @_gasrem
  %foldk = alloca { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }
  %"$gasrem_1021" = load i64, i64* @_gasrem
  %"$gascmp_1022" = icmp ugt i64 1, %"$gasrem_1021"
  br i1 %"$gascmp_1022", label %"$out_of_gas_1023", label %"$have_gas_1024"

"$out_of_gas_1023":                               ; preds = %"$have_gas_1019"
  call void @_out_of_gas()
  br label %"$have_gas_1024"

"$have_gas_1024":                                 ; preds = %"$out_of_gas_1023", %"$have_gas_1019"
  %"$consume_1025" = sub i64 %"$gasrem_1021", 1
  store i64 %"$consume_1025", i64* @_gasrem
  %"$list_foldk_1026" = load { i8*, i8* }*, { i8*, i8* }** %list_foldk
  %"$list_foldk_1027" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldk_1026", i32 0
  %"$list_foldk_1028" = bitcast { i8*, i8* }* %"$list_foldk_1027" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldk_1029" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldk_1028"
  %"$list_foldk_fptr_1030" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldk_1029", 0
  %"$list_foldk_envptr_1031" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldk_1029", 1
  %"$list_foldk_call_1032" = call { i8*, i8* }* %"$list_foldk_fptr_1030"(i8* %"$list_foldk_envptr_1031")
  %"$list_foldk_1033" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldk_call_1032", i32 2
  %"$list_foldk_1034" = bitcast { i8*, i8* }* %"$list_foldk_1033" to { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldk_1035" = load { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldk_1034"
  %"$list_foldk_fptr_1036" = extractvalue { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldk_1035", 0
  %"$list_foldk_envptr_1037" = extractvalue { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldk_1035", 1
  %"$list_foldk_call_1038" = call { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$list_foldk_fptr_1036"(i8* %"$list_foldk_envptr_1037")
  store { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$list_foldk_call_1038", { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %foldk
  %"$gasrem_1039" = load i64, i64* @_gasrem
  %"$gascmp_1040" = icmp ugt i64 1, %"$gasrem_1039"
  br i1 %"$gascmp_1040", label %"$out_of_gas_1041", label %"$have_gas_1042"

"$out_of_gas_1041":                               ; preds = %"$have_gas_1024"
  call void @_out_of_gas()
  br label %"$have_gas_1042"

"$have_gas_1042":                                 ; preds = %"$out_of_gas_1041", %"$have_gas_1024"
  %"$consume_1043" = sub i64 %"$gasrem_1039", 1
  store i64 %"$consume_1043", i64* @_gasrem
  %init = alloca %TName_Option_ByStr20*
  %"$gasrem_1044" = load i64, i64* @_gasrem
  %"$gascmp_1045" = icmp ugt i64 1, %"$gasrem_1044"
  br i1 %"$gascmp_1045", label %"$out_of_gas_1046", label %"$have_gas_1047"

"$out_of_gas_1046":                               ; preds = %"$have_gas_1042"
  call void @_out_of_gas()
  br label %"$have_gas_1047"

"$have_gas_1047":                                 ; preds = %"$out_of_gas_1046", %"$have_gas_1042"
  %"$consume_1048" = sub i64 %"$gasrem_1044", 1
  store i64 %"$consume_1048", i64* @_gasrem
  %"$adtval_1049_load" = load i8*, i8** @_execptr
  %"$adtval_1049_salloc" = call i8* @_salloc(i8* %"$adtval_1049_load", i64 1)
  %"$adtval_1049" = bitcast i8* %"$adtval_1049_salloc" to %CName_None_ByStr20*
  %"$adtgep_1050" = getelementptr inbounds %CName_None_ByStr20, %CName_None_ByStr20* %"$adtval_1049", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1050"
  %"$adtptr_1051" = bitcast %CName_None_ByStr20* %"$adtval_1049" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$adtptr_1051", %TName_Option_ByStr20** %init
  %"$gasrem_1052" = load i64, i64* @_gasrem
  %"$gascmp_1053" = icmp ugt i64 1, %"$gasrem_1052"
  br i1 %"$gascmp_1053", label %"$out_of_gas_1054", label %"$have_gas_1055"

"$out_of_gas_1054":                               ; preds = %"$have_gas_1047"
  call void @_out_of_gas()
  br label %"$have_gas_1055"

"$have_gas_1055":                                 ; preds = %"$out_of_gas_1054", %"$have_gas_1047"
  %"$consume_1056" = sub i64 %"$gasrem_1052", 1
  store i64 %"$consume_1056", i64* @_gasrem
  %predicate_step = alloca { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }
  %"$gasrem_1057" = load i64, i64* @_gasrem
  %"$gascmp_1058" = icmp ugt i64 1, %"$gasrem_1057"
  br i1 %"$gascmp_1058", label %"$out_of_gas_1059", label %"$have_gas_1060"

"$out_of_gas_1059":                               ; preds = %"$have_gas_1055"
  call void @_out_of_gas()
  br label %"$have_gas_1060"

"$have_gas_1060":                                 ; preds = %"$out_of_gas_1059", %"$have_gas_1055"
  %"$consume_1061" = sub i64 %"$gasrem_1057", 1
  store i64 %"$consume_1061", i64* @_gasrem
  %"$$fundef_191_envp_1062_load" = load i8*, i8** @_execptr
  %"$$fundef_191_envp_1062_salloc" = call i8* @_salloc(i8* %"$$fundef_191_envp_1062_load", i64 24)
  %"$$fundef_191_envp_1062" = bitcast i8* %"$$fundef_191_envp_1062_salloc" to %"$$fundef_191_env_438"*
  %"$$fundef_191_env_voidp_1064" = bitcast %"$$fundef_191_env_438"* %"$$fundef_191_envp_1062" to i8*
  %"$$fundef_191_cloval_1065" = insertvalue { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)* bitcast ({ { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_191_env_438"*, %TName_Option_ByStr20*)* @"$fundef_191" to { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_191_env_voidp_1064", 1
  %"$$fundef_191_env_init_1066" = getelementptr inbounds %"$$fundef_191_env_438", %"$$fundef_191_env_438"* %"$$fundef_191_envp_1062", i32 0, i32 0
  %"$init_1067" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init
  store %TName_Option_ByStr20* %"$init_1067", %TName_Option_ByStr20** %"$$fundef_191_env_init_1066"
  %"$$fundef_191_env_p_1068" = getelementptr inbounds %"$$fundef_191_env_438", %"$$fundef_191_env_438"* %"$$fundef_191_envp_1062", i32 0, i32 1
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_191_env_p_1068"
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_191_cloval_1065", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %predicate_step
  %"$gasrem_1069" = load i64, i64* @_gasrem
  %"$gascmp_1070" = icmp ugt i64 1, %"$gasrem_1069"
  br i1 %"$gascmp_1070", label %"$out_of_gas_1071", label %"$have_gas_1072"

"$out_of_gas_1071":                               ; preds = %"$have_gas_1060"
  call void @_out_of_gas()
  br label %"$have_gas_1072"

"$have_gas_1072":                                 ; preds = %"$out_of_gas_1071", %"$have_gas_1060"
  %"$consume_1073" = sub i64 %"$gasrem_1069", 1
  store i64 %"$consume_1073", i64* @_gasrem
  %"$foldk_21" = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }
  %"$foldk_1074" = load { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %foldk
  %"$foldk_fptr_1075" = extractvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$foldk_1074", 0
  %"$foldk_envptr_1076" = extractvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$foldk_1074", 1
  %"$predicate_step_1077" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %predicate_step
  %"$foldk_call_1078" = call { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$foldk_fptr_1075"(i8* %"$foldk_envptr_1076", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$predicate_step_1077")
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$foldk_call_1078", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$foldk_21"
  %"$foldk_22" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }
  %"$$foldk_21_1079" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$foldk_21"
  %"$$foldk_21_fptr_1080" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$foldk_21_1079", 0
  %"$$foldk_21_envptr_1081" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$foldk_21_1079", 1
  %"$init_1082" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init
  %"$$foldk_21_call_1083" = call { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldk_21_fptr_1080"(i8* %"$$foldk_21_envptr_1081", %TName_Option_ByStr20* %"$init_1082")
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldk_21_call_1083", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldk_22"
  %"$$foldk_22_1084" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldk_22"
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldk_22_1084", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_190"
  %"$$retval_190_1085" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_190"
  ret { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_190_1085"
}

define internal { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_187"(%"$$fundef_187_env_440"* %0) {
entry:
  %"$$fundef_187_env_list_foldk_1000" = getelementptr inbounds %"$$fundef_187_env_440", %"$$fundef_187_env_440"* %0, i32 0, i32 0
  %"$list_foldk_envload_1001" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_187_env_list_foldk_1000"
  %list_foldk = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldk_envload_1001", { i8*, i8* }** %list_foldk
  %"$retval_188" = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }
  %"$gasrem_1002" = load i64, i64* @_gasrem
  %"$gascmp_1003" = icmp ugt i64 1, %"$gasrem_1002"
  br i1 %"$gascmp_1003", label %"$out_of_gas_1004", label %"$have_gas_1005"

"$out_of_gas_1004":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1005"

"$have_gas_1005":                                 ; preds = %"$out_of_gas_1004", %entry
  %"$consume_1006" = sub i64 %"$gasrem_1002", 1
  store i64 %"$consume_1006", i64* @_gasrem
  %"$$fundef_189_envp_1007_load" = load i8*, i8** @_execptr
  %"$$fundef_189_envp_1007_salloc" = call i8* @_salloc(i8* %"$$fundef_189_envp_1007_load", i64 8)
  %"$$fundef_189_envp_1007" = bitcast i8* %"$$fundef_189_envp_1007_salloc" to %"$$fundef_189_env_439"*
  %"$$fundef_189_env_voidp_1009" = bitcast %"$$fundef_189_env_439"* %"$$fundef_189_envp_1007" to i8*
  %"$$fundef_189_cloval_1010" = insertvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* bitcast ({ %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_189_env_439"*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* @"$fundef_189" to { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*), i8* undef }, i8* %"$$fundef_189_env_voidp_1009", 1
  %"$$fundef_189_env_list_foldk_1011" = getelementptr inbounds %"$$fundef_189_env_439", %"$$fundef_189_env_439"* %"$$fundef_189_envp_1007", i32 0, i32 0
  %"$list_foldk_1012" = load { i8*, i8* }*, { i8*, i8* }** %list_foldk
  store { i8*, i8* }* %"$list_foldk_1012", { i8*, i8* }** %"$$fundef_189_env_list_foldk_1011"
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_189_cloval_1010", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_188"
  %"$$retval_188_1013" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_188"
  ret { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_188_1013"
}

define internal %TName_List_ByStr20* @"$fundef_203"(%"$$fundef_203_env_441"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_203_env_f_948" = getelementptr inbounds %"$$fundef_203_env_441", %"$$fundef_203_env_441"* %0, i32 0, i32 0
  %"$f_envload_949" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_203_env_f_948"
  %f = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_envload_949", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %f
  %"$$fundef_203_env_h_950" = getelementptr inbounds %"$$fundef_203_env_441", %"$$fundef_203_env_441"* %0, i32 0, i32 1
  %"$h_envload_951" = load [20 x i8], [20 x i8]* %"$$fundef_203_env_h_950"
  %h = alloca [20 x i8]
  store [20 x i8] %"$h_envload_951", [20 x i8]* %h
  %"$retval_204" = alloca %TName_List_ByStr20*
  %"$gasrem_952" = load i64, i64* @_gasrem
  %"$gascmp_953" = icmp ugt i64 1, %"$gasrem_952"
  br i1 %"$gascmp_953", label %"$out_of_gas_954", label %"$have_gas_955"

"$out_of_gas_954":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_955"

"$have_gas_955":                                  ; preds = %"$out_of_gas_954", %entry
  %"$consume_956" = sub i64 %"$gasrem_952", 1
  store i64 %"$consume_956", i64* @_gasrem
  %h1 = alloca %TName_Bool*
  %"$gasrem_957" = load i64, i64* @_gasrem
  %"$gascmp_958" = icmp ugt i64 1, %"$gasrem_957"
  br i1 %"$gascmp_958", label %"$out_of_gas_959", label %"$have_gas_960"

"$out_of_gas_959":                                ; preds = %"$have_gas_955"
  call void @_out_of_gas()
  br label %"$have_gas_960"

"$have_gas_960":                                  ; preds = %"$out_of_gas_959", %"$have_gas_955"
  %"$consume_961" = sub i64 %"$gasrem_957", 1
  store i64 %"$consume_961", i64* @_gasrem
  %"$f_16" = alloca %TName_Bool*
  %"$f_962" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %f
  %"$f_fptr_963" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_962", 0
  %"$f_envptr_964" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_962", 1
  %"$f_h_965" = alloca [20 x i8]
  %"$h_966" = load [20 x i8], [20 x i8]* %h
  store [20 x i8] %"$h_966", [20 x i8]* %"$f_h_965"
  %"$f_call_967" = call %TName_Bool* %"$f_fptr_963"(i8* %"$f_envptr_964", [20 x i8]* %"$f_h_965")
  store %TName_Bool* %"$f_call_967", %TName_Bool** %"$f_16"
  %"$$f_16_968" = load %TName_Bool*, %TName_Bool** %"$f_16"
  store %TName_Bool* %"$$f_16_968", %TName_Bool** %h1
  %"$gasrem_969" = load i64, i64* @_gasrem
  %"$gascmp_970" = icmp ugt i64 2, %"$gasrem_969"
  br i1 %"$gascmp_970", label %"$out_of_gas_971", label %"$have_gas_972"

"$out_of_gas_971":                                ; preds = %"$have_gas_960"
  call void @_out_of_gas()
  br label %"$have_gas_972"

"$have_gas_972":                                  ; preds = %"$out_of_gas_971", %"$have_gas_960"
  %"$consume_973" = sub i64 %"$gasrem_969", 2
  store i64 %"$consume_973", i64* @_gasrem
  %"$h1_975" = load %TName_Bool*, %TName_Bool** %h1
  %"$h1_tag_976" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$h1_975", i32 0, i32 0
  %"$h1_tag_977" = load i8, i8* %"$h1_tag_976"
  switch i8 %"$h1_tag_977", label %"$empty_default_978" [
    i8 0, label %"$True_979"
    i8 1, label %"$False_992"
  ]

"$True_979":                                      ; preds = %"$have_gas_972"
  %"$h1_980" = bitcast %TName_Bool* %"$h1_975" to %CName_True*
  %"$gasrem_981" = load i64, i64* @_gasrem
  %"$gascmp_982" = icmp ugt i64 1, %"$gasrem_981"
  br i1 %"$gascmp_982", label %"$out_of_gas_983", label %"$have_gas_984"

"$out_of_gas_983":                                ; preds = %"$True_979"
  call void @_out_of_gas()
  br label %"$have_gas_984"

"$have_gas_984":                                  ; preds = %"$out_of_gas_983", %"$True_979"
  %"$consume_985" = sub i64 %"$gasrem_981", 1
  store i64 %"$consume_985", i64* @_gasrem
  %"$h_986" = load [20 x i8], [20 x i8]* %h
  %"$adtval_987_load" = load i8*, i8** @_execptr
  %"$adtval_987_salloc" = call i8* @_salloc(i8* %"$adtval_987_load", i64 29)
  %"$adtval_987" = bitcast i8* %"$adtval_987_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_988" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_987", i32 0, i32 0
  store i8 0, i8* %"$adtgep_988"
  %"$adtgep_989" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_987", i32 0, i32 1
  store [20 x i8] %"$h_986", [20 x i8]* %"$adtgep_989"
  %"$adtgep_990" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_987", i32 0, i32 2
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$adtgep_990"
  %"$adtptr_991" = bitcast %CName_Cons_ByStr20* %"$adtval_987" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_991", %TName_List_ByStr20** %"$retval_204"
  br label %"$matchsucc_974"

"$False_992":                                     ; preds = %"$have_gas_972"
  %"$h1_993" = bitcast %TName_Bool* %"$h1_975" to %CName_False*
  %"$gasrem_994" = load i64, i64* @_gasrem
  %"$gascmp_995" = icmp ugt i64 1, %"$gasrem_994"
  br i1 %"$gascmp_995", label %"$out_of_gas_996", label %"$have_gas_997"

"$out_of_gas_996":                                ; preds = %"$False_992"
  call void @_out_of_gas()
  br label %"$have_gas_997"

"$have_gas_997":                                  ; preds = %"$out_of_gas_996", %"$False_992"
  %"$consume_998" = sub i64 %"$gasrem_994", 1
  store i64 %"$consume_998", i64* @_gasrem
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$retval_204"
  br label %"$matchsucc_974"

"$empty_default_978":                             ; preds = %"$have_gas_972"
  br label %"$matchsucc_974"

"$matchsucc_974":                                 ; preds = %"$have_gas_997", %"$have_gas_984", %"$empty_default_978"
  %"$$retval_204_999" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$retval_204"
  ret %TName_List_ByStr20* %"$$retval_204_999"
}

define internal { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_201"(%"$$fundef_201_env_442"* %0, [20 x i8]* %1) {
entry:
  %h = load [20 x i8], [20 x i8]* %1
  %"$$fundef_201_env_f_933" = getelementptr inbounds %"$$fundef_201_env_442", %"$$fundef_201_env_442"* %0, i32 0, i32 0
  %"$f_envload_934" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_201_env_f_933"
  %f = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_envload_934", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %f
  %"$retval_202" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }
  %"$gasrem_935" = load i64, i64* @_gasrem
  %"$gascmp_936" = icmp ugt i64 1, %"$gasrem_935"
  br i1 %"$gascmp_936", label %"$out_of_gas_937", label %"$have_gas_938"

"$out_of_gas_937":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_938"

"$have_gas_938":                                  ; preds = %"$out_of_gas_937", %entry
  %"$consume_939" = sub i64 %"$gasrem_935", 1
  store i64 %"$consume_939", i64* @_gasrem
  %"$$fundef_203_envp_940_load" = load i8*, i8** @_execptr
  %"$$fundef_203_envp_940_salloc" = call i8* @_salloc(i8* %"$$fundef_203_envp_940_load", i64 40)
  %"$$fundef_203_envp_940" = bitcast i8* %"$$fundef_203_envp_940_salloc" to %"$$fundef_203_env_441"*
  %"$$fundef_203_env_voidp_942" = bitcast %"$$fundef_203_env_441"* %"$$fundef_203_envp_940" to i8*
  %"$$fundef_203_cloval_943" = insertvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)* bitcast (%TName_List_ByStr20* (%"$$fundef_203_env_441"*, %TName_List_ByStr20*)* @"$fundef_203" to %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_203_env_voidp_942", 1
  %"$$fundef_203_env_f_944" = getelementptr inbounds %"$$fundef_203_env_441", %"$$fundef_203_env_441"* %"$$fundef_203_envp_940", i32 0, i32 0
  %"$f_945" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %f
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_945", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_203_env_f_944"
  %"$$fundef_203_env_h_946" = getelementptr inbounds %"$$fundef_203_env_441", %"$$fundef_203_env_441"* %"$$fundef_203_envp_940", i32 0, i32 1
  store [20 x i8] %h, [20 x i8]* %"$$fundef_203_env_h_946"
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_203_cloval_943", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_202"
  %"$$retval_202_947" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_202"
  ret { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_202_947"
}

define internal { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_199"(%"$$fundef_199_env_443"* %0, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1) {
entry:
  %"$$fundef_199_env_list_foldr_863" = getelementptr inbounds %"$$fundef_199_env_443", %"$$fundef_199_env_443"* %0, i32 0, i32 0
  %"$list_foldr_envload_864" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_199_env_list_foldr_863"
  %list_foldr = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldr_envload_864", { i8*, i8* }** %list_foldr
  %"$retval_200" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }
  %"$gasrem_865" = load i64, i64* @_gasrem
  %"$gascmp_866" = icmp ugt i64 1, %"$gasrem_865"
  br i1 %"$gascmp_866", label %"$out_of_gas_867", label %"$have_gas_868"

"$out_of_gas_867":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_868"

"$have_gas_868":                                  ; preds = %"$out_of_gas_867", %entry
  %"$consume_869" = sub i64 %"$gasrem_865", 1
  store i64 %"$consume_869", i64* @_gasrem
  %foldr = alloca { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }
  %"$gasrem_870" = load i64, i64* @_gasrem
  %"$gascmp_871" = icmp ugt i64 1, %"$gasrem_870"
  br i1 %"$gascmp_871", label %"$out_of_gas_872", label %"$have_gas_873"

"$out_of_gas_872":                                ; preds = %"$have_gas_868"
  call void @_out_of_gas()
  br label %"$have_gas_873"

"$have_gas_873":                                  ; preds = %"$out_of_gas_872", %"$have_gas_868"
  %"$consume_874" = sub i64 %"$gasrem_870", 1
  store i64 %"$consume_874", i64* @_gasrem
  %"$list_foldr_875" = load { i8*, i8* }*, { i8*, i8* }** %list_foldr
  %"$list_foldr_876" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldr_875", i32 0
  %"$list_foldr_877" = bitcast { i8*, i8* }* %"$list_foldr_876" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldr_878" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldr_877"
  %"$list_foldr_fptr_879" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldr_878", 0
  %"$list_foldr_envptr_880" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldr_878", 1
  %"$list_foldr_call_881" = call { i8*, i8* }* %"$list_foldr_fptr_879"(i8* %"$list_foldr_envptr_880")
  %"$list_foldr_882" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldr_call_881", i32 1
  %"$list_foldr_883" = bitcast { i8*, i8* }* %"$list_foldr_882" to { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldr_884" = load { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldr_883"
  %"$list_foldr_fptr_885" = extractvalue { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldr_884", 0
  %"$list_foldr_envptr_886" = extractvalue { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldr_884", 1
  %"$list_foldr_call_887" = call { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$list_foldr_fptr_885"(i8* %"$list_foldr_envptr_886")
  store { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$list_foldr_call_887", { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %foldr
  %"$gasrem_888" = load i64, i64* @_gasrem
  %"$gascmp_889" = icmp ugt i64 1, %"$gasrem_888"
  br i1 %"$gascmp_889", label %"$out_of_gas_890", label %"$have_gas_891"

"$out_of_gas_890":                                ; preds = %"$have_gas_873"
  call void @_out_of_gas()
  br label %"$have_gas_891"

"$have_gas_891":                                  ; preds = %"$out_of_gas_890", %"$have_gas_873"
  %"$consume_892" = sub i64 %"$gasrem_888", 1
  store i64 %"$consume_892", i64* @_gasrem
  %iter = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$gasrem_893" = load i64, i64* @_gasrem
  %"$gascmp_894" = icmp ugt i64 1, %"$gasrem_893"
  br i1 %"$gascmp_894", label %"$out_of_gas_895", label %"$have_gas_896"

"$out_of_gas_895":                                ; preds = %"$have_gas_891"
  call void @_out_of_gas()
  br label %"$have_gas_896"

"$have_gas_896":                                  ; preds = %"$out_of_gas_895", %"$have_gas_891"
  %"$consume_897" = sub i64 %"$gasrem_893", 1
  store i64 %"$consume_897", i64* @_gasrem
  %"$$fundef_201_envp_898_load" = load i8*, i8** @_execptr
  %"$$fundef_201_envp_898_salloc" = call i8* @_salloc(i8* %"$$fundef_201_envp_898_load", i64 16)
  %"$$fundef_201_envp_898" = bitcast i8* %"$$fundef_201_envp_898_salloc" to %"$$fundef_201_env_442"*
  %"$$fundef_201_env_voidp_900" = bitcast %"$$fundef_201_env_442"* %"$$fundef_201_envp_898" to i8*
  %"$$fundef_201_cloval_901" = insertvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_201_env_442"*, [20 x i8]*)* @"$fundef_201" to { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_201_env_voidp_900", 1
  %"$$fundef_201_env_f_902" = getelementptr inbounds %"$$fundef_201_env_442", %"$$fundef_201_env_442"* %"$$fundef_201_envp_898", i32 0, i32 0
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_201_env_f_902"
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_201_cloval_901", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %iter
  %"$gasrem_903" = load i64, i64* @_gasrem
  %"$gascmp_904" = icmp ugt i64 1, %"$gasrem_903"
  br i1 %"$gascmp_904", label %"$out_of_gas_905", label %"$have_gas_906"

"$out_of_gas_905":                                ; preds = %"$have_gas_896"
  call void @_out_of_gas()
  br label %"$have_gas_906"

"$have_gas_906":                                  ; preds = %"$out_of_gas_905", %"$have_gas_896"
  %"$consume_907" = sub i64 %"$gasrem_903", 1
  store i64 %"$consume_907", i64* @_gasrem
  %init = alloca %TName_List_ByStr20*
  %"$gasrem_908" = load i64, i64* @_gasrem
  %"$gascmp_909" = icmp ugt i64 1, %"$gasrem_908"
  br i1 %"$gascmp_909", label %"$out_of_gas_910", label %"$have_gas_911"

"$out_of_gas_910":                                ; preds = %"$have_gas_906"
  call void @_out_of_gas()
  br label %"$have_gas_911"

"$have_gas_911":                                  ; preds = %"$out_of_gas_910", %"$have_gas_906"
  %"$consume_912" = sub i64 %"$gasrem_908", 1
  store i64 %"$consume_912", i64* @_gasrem
  %"$adtval_913_load" = load i8*, i8** @_execptr
  %"$adtval_913_salloc" = call i8* @_salloc(i8* %"$adtval_913_load", i64 1)
  %"$adtval_913" = bitcast i8* %"$adtval_913_salloc" to %CName_Nil_ByStr20*
  %"$adtgep_914" = getelementptr inbounds %CName_Nil_ByStr20, %CName_Nil_ByStr20* %"$adtval_913", i32 0, i32 0
  store i8 1, i8* %"$adtgep_914"
  %"$adtptr_915" = bitcast %CName_Nil_ByStr20* %"$adtval_913" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_915", %TName_List_ByStr20** %init
  %"$gasrem_916" = load i64, i64* @_gasrem
  %"$gascmp_917" = icmp ugt i64 1, %"$gasrem_916"
  br i1 %"$gascmp_917", label %"$out_of_gas_918", label %"$have_gas_919"

"$out_of_gas_918":                                ; preds = %"$have_gas_911"
  call void @_out_of_gas()
  br label %"$have_gas_919"

"$have_gas_919":                                  ; preds = %"$out_of_gas_918", %"$have_gas_911"
  %"$consume_920" = sub i64 %"$gasrem_916", 1
  store i64 %"$consume_920", i64* @_gasrem
  %"$foldr_17" = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }
  %"$foldr_921" = load { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %foldr
  %"$foldr_fptr_922" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$foldr_921", 0
  %"$foldr_envptr_923" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$foldr_921", 1
  %"$iter_924" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %iter
  %"$foldr_call_925" = call { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$foldr_fptr_922"(i8* %"$foldr_envptr_923", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$iter_924")
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$foldr_call_925", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_17"
  %"$foldr_18" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }
  %"$$foldr_17_926" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_17"
  %"$$foldr_17_fptr_927" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_17_926", 0
  %"$$foldr_17_envptr_928" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_17_926", 1
  %"$init_929" = load %TName_List_ByStr20*, %TName_List_ByStr20** %init
  %"$$foldr_17_call_930" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_17_fptr_927"(i8* %"$$foldr_17_envptr_928", %TName_List_ByStr20* %"$init_929")
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_17_call_930", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_18"
  %"$$foldr_18_931" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_18"
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_18_931", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_200"
  %"$$retval_200_932" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_200"
  ret { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_200_932"
}

define internal { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_197"(%"$$fundef_197_env_444"* %0) {
entry:
  %"$$fundef_197_env_list_foldr_849" = getelementptr inbounds %"$$fundef_197_env_444", %"$$fundef_197_env_444"* %0, i32 0, i32 0
  %"$list_foldr_envload_850" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_197_env_list_foldr_849"
  %list_foldr = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldr_envload_850", { i8*, i8* }** %list_foldr
  %"$retval_198" = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }
  %"$gasrem_851" = load i64, i64* @_gasrem
  %"$gascmp_852" = icmp ugt i64 1, %"$gasrem_851"
  br i1 %"$gascmp_852", label %"$out_of_gas_853", label %"$have_gas_854"

"$out_of_gas_853":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_854"

"$have_gas_854":                                  ; preds = %"$out_of_gas_853", %entry
  %"$consume_855" = sub i64 %"$gasrem_851", 1
  store i64 %"$consume_855", i64* @_gasrem
  %"$$fundef_199_envp_856_load" = load i8*, i8** @_execptr
  %"$$fundef_199_envp_856_salloc" = call i8* @_salloc(i8* %"$$fundef_199_envp_856_load", i64 8)
  %"$$fundef_199_envp_856" = bitcast i8* %"$$fundef_199_envp_856_salloc" to %"$$fundef_199_env_443"*
  %"$$fundef_199_env_voidp_858" = bitcast %"$$fundef_199_env_443"* %"$$fundef_199_envp_856" to i8*
  %"$$fundef_199_cloval_859" = insertvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* bitcast ({ %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_199_env_443"*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* @"$fundef_199" to { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*), i8* undef }, i8* %"$$fundef_199_env_voidp_858", 1
  %"$$fundef_199_env_list_foldr_860" = getelementptr inbounds %"$$fundef_199_env_443", %"$$fundef_199_env_443"* %"$$fundef_199_envp_856", i32 0, i32 0
  %"$list_foldr_861" = load { i8*, i8* }*, { i8*, i8* }** %list_foldr
  store { i8*, i8* }* %"$list_foldr_861", { i8*, i8* }** %"$$fundef_199_env_list_foldr_860"
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_199_cloval_859", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_198"
  %"$$retval_198_862" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_198"
  ret { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_198_862"
}

define internal %TName_Bool* @"$fundef_165"(%"$$fundef_165_env_445"* %0, %TName_Bool* %1) {
entry:
  %"$retval_166" = alloca %TName_Bool*
  %"$gasrem_819" = load i64, i64* @_gasrem
  %"$gascmp_820" = icmp ugt i64 2, %"$gasrem_819"
  br i1 %"$gascmp_820", label %"$out_of_gas_821", label %"$have_gas_822"

"$out_of_gas_821":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_822"

"$have_gas_822":                                  ; preds = %"$out_of_gas_821", %entry
  %"$consume_823" = sub i64 %"$gasrem_819", 2
  store i64 %"$consume_823", i64* @_gasrem
  %"$b_tag_825" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_826" = load i8, i8* %"$b_tag_825"
  switch i8 %"$b_tag_826", label %"$empty_default_827" [
    i8 0, label %"$True_828"
    i8 1, label %"$False_838"
  ]

"$True_828":                                      ; preds = %"$have_gas_822"
  %"$b_829" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_830" = load i64, i64* @_gasrem
  %"$gascmp_831" = icmp ugt i64 1, %"$gasrem_830"
  br i1 %"$gascmp_831", label %"$out_of_gas_832", label %"$have_gas_833"

"$out_of_gas_832":                                ; preds = %"$True_828"
  call void @_out_of_gas()
  br label %"$have_gas_833"

"$have_gas_833":                                  ; preds = %"$out_of_gas_832", %"$True_828"
  %"$consume_834" = sub i64 %"$gasrem_830", 1
  store i64 %"$consume_834", i64* @_gasrem
  %"$adtval_835_load" = load i8*, i8** @_execptr
  %"$adtval_835_salloc" = call i8* @_salloc(i8* %"$adtval_835_load", i64 1)
  %"$adtval_835" = bitcast i8* %"$adtval_835_salloc" to %CName_False*
  %"$adtgep_836" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_835", i32 0, i32 0
  store i8 1, i8* %"$adtgep_836"
  %"$adtptr_837" = bitcast %CName_False* %"$adtval_835" to %TName_Bool*
  store %TName_Bool* %"$adtptr_837", %TName_Bool** %"$retval_166"
  br label %"$matchsucc_824"

"$False_838":                                     ; preds = %"$have_gas_822"
  %"$b_839" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_840" = load i64, i64* @_gasrem
  %"$gascmp_841" = icmp ugt i64 1, %"$gasrem_840"
  br i1 %"$gascmp_841", label %"$out_of_gas_842", label %"$have_gas_843"

"$out_of_gas_842":                                ; preds = %"$False_838"
  call void @_out_of_gas()
  br label %"$have_gas_843"

"$have_gas_843":                                  ; preds = %"$out_of_gas_842", %"$False_838"
  %"$consume_844" = sub i64 %"$gasrem_840", 1
  store i64 %"$consume_844", i64* @_gasrem
  %"$adtval_845_load" = load i8*, i8** @_execptr
  %"$adtval_845_salloc" = call i8* @_salloc(i8* %"$adtval_845_load", i64 1)
  %"$adtval_845" = bitcast i8* %"$adtval_845_salloc" to %CName_True*
  %"$adtgep_846" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_845", i32 0, i32 0
  store i8 0, i8* %"$adtgep_846"
  %"$adtptr_847" = bitcast %CName_True* %"$adtval_845" to %TName_Bool*
  store %TName_Bool* %"$adtptr_847", %TName_Bool** %"$retval_166"
  br label %"$matchsucc_824"

"$empty_default_827":                             ; preds = %"$have_gas_822"
  br label %"$matchsucc_824"

"$matchsucc_824":                                 ; preds = %"$have_gas_843", %"$have_gas_833", %"$empty_default_827"
  %"$$retval_166_848" = load %TName_Bool*, %TName_Bool** %"$retval_166"
  ret %TName_Bool* %"$$retval_166_848"
}

define internal %TName_Bool* @"$fundef_169"(%"$$fundef_169_env_446"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_169_env_b_789" = getelementptr inbounds %"$$fundef_169_env_446", %"$$fundef_169_env_446"* %0, i32 0, i32 0
  %"$b_envload_790" = load %TName_Bool*, %TName_Bool** %"$$fundef_169_env_b_789"
  %b = alloca %TName_Bool*
  store %TName_Bool* %"$b_envload_790", %TName_Bool** %b
  %"$retval_170" = alloca %TName_Bool*
  %"$gasrem_791" = load i64, i64* @_gasrem
  %"$gascmp_792" = icmp ugt i64 2, %"$gasrem_791"
  br i1 %"$gascmp_792", label %"$out_of_gas_793", label %"$have_gas_794"

"$out_of_gas_793":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_794"

"$have_gas_794":                                  ; preds = %"$out_of_gas_793", %entry
  %"$consume_795" = sub i64 %"$gasrem_791", 2
  store i64 %"$consume_795", i64* @_gasrem
  %"$b_797" = load %TName_Bool*, %TName_Bool** %b
  %"$b_tag_798" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_797", i32 0, i32 0
  %"$b_tag_799" = load i8, i8* %"$b_tag_798"
  switch i8 %"$b_tag_799", label %"$empty_default_800" [
    i8 0, label %"$True_801"
    i8 1, label %"$False_811"
  ]

"$True_801":                                      ; preds = %"$have_gas_794"
  %"$b_802" = bitcast %TName_Bool* %"$b_797" to %CName_True*
  %"$gasrem_803" = load i64, i64* @_gasrem
  %"$gascmp_804" = icmp ugt i64 1, %"$gasrem_803"
  br i1 %"$gascmp_804", label %"$out_of_gas_805", label %"$have_gas_806"

"$out_of_gas_805":                                ; preds = %"$True_801"
  call void @_out_of_gas()
  br label %"$have_gas_806"

"$have_gas_806":                                  ; preds = %"$out_of_gas_805", %"$True_801"
  %"$consume_807" = sub i64 %"$gasrem_803", 1
  store i64 %"$consume_807", i64* @_gasrem
  %"$adtval_808_load" = load i8*, i8** @_execptr
  %"$adtval_808_salloc" = call i8* @_salloc(i8* %"$adtval_808_load", i64 1)
  %"$adtval_808" = bitcast i8* %"$adtval_808_salloc" to %CName_True*
  %"$adtgep_809" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_808", i32 0, i32 0
  store i8 0, i8* %"$adtgep_809"
  %"$adtptr_810" = bitcast %CName_True* %"$adtval_808" to %TName_Bool*
  store %TName_Bool* %"$adtptr_810", %TName_Bool** %"$retval_170"
  br label %"$matchsucc_796"

"$False_811":                                     ; preds = %"$have_gas_794"
  %"$b_812" = bitcast %TName_Bool* %"$b_797" to %CName_False*
  %"$gasrem_813" = load i64, i64* @_gasrem
  %"$gascmp_814" = icmp ugt i64 1, %"$gasrem_813"
  br i1 %"$gascmp_814", label %"$out_of_gas_815", label %"$have_gas_816"

"$out_of_gas_815":                                ; preds = %"$False_811"
  call void @_out_of_gas()
  br label %"$have_gas_816"

"$have_gas_816":                                  ; preds = %"$out_of_gas_815", %"$False_811"
  %"$consume_817" = sub i64 %"$gasrem_813", 1
  store i64 %"$consume_817", i64* @_gasrem
  store %TName_Bool* %1, %TName_Bool** %"$retval_170"
  br label %"$matchsucc_796"

"$empty_default_800":                             ; preds = %"$have_gas_794"
  br label %"$matchsucc_796"

"$matchsucc_796":                                 ; preds = %"$have_gas_816", %"$have_gas_806", %"$empty_default_800"
  %"$$retval_170_818" = load %TName_Bool*, %TName_Bool** %"$retval_170"
  ret %TName_Bool* %"$$retval_170_818"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_167"(%"$$fundef_167_env_447"* %0, %TName_Bool* %1) {
entry:
  %"$retval_168" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$gasrem_778" = load i64, i64* @_gasrem
  %"$gascmp_779" = icmp ugt i64 1, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %entry
  %"$consume_782" = sub i64 %"$gasrem_778", 1
  store i64 %"$consume_782", i64* @_gasrem
  %"$$fundef_169_envp_783_load" = load i8*, i8** @_execptr
  %"$$fundef_169_envp_783_salloc" = call i8* @_salloc(i8* %"$$fundef_169_envp_783_load", i64 8)
  %"$$fundef_169_envp_783" = bitcast i8* %"$$fundef_169_envp_783_salloc" to %"$$fundef_169_env_446"*
  %"$$fundef_169_env_voidp_785" = bitcast %"$$fundef_169_env_446"* %"$$fundef_169_envp_783" to i8*
  %"$$fundef_169_cloval_786" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_169_env_446"*, %TName_Bool*)* @"$fundef_169" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_169_env_voidp_785", 1
  %"$$fundef_169_env_b_787" = getelementptr inbounds %"$$fundef_169_env_446", %"$$fundef_169_env_446"* %"$$fundef_169_envp_783", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_169_env_b_787"
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_169_cloval_786", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_168"
  %"$$retval_168_788" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_168"
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_168_788"
}

define internal %TName_Bool* @"$fundef_173"(%"$$fundef_173_env_448"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_173_env_b_748" = getelementptr inbounds %"$$fundef_173_env_448", %"$$fundef_173_env_448"* %0, i32 0, i32 0
  %"$b_envload_749" = load %TName_Bool*, %TName_Bool** %"$$fundef_173_env_b_748"
  %b = alloca %TName_Bool*
  store %TName_Bool* %"$b_envload_749", %TName_Bool** %b
  %"$retval_174" = alloca %TName_Bool*
  %"$gasrem_750" = load i64, i64* @_gasrem
  %"$gascmp_751" = icmp ugt i64 2, %"$gasrem_750"
  br i1 %"$gascmp_751", label %"$out_of_gas_752", label %"$have_gas_753"

"$out_of_gas_752":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_753"

"$have_gas_753":                                  ; preds = %"$out_of_gas_752", %entry
  %"$consume_754" = sub i64 %"$gasrem_750", 2
  store i64 %"$consume_754", i64* @_gasrem
  %"$b_756" = load %TName_Bool*, %TName_Bool** %b
  %"$b_tag_757" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_756", i32 0, i32 0
  %"$b_tag_758" = load i8, i8* %"$b_tag_757"
  switch i8 %"$b_tag_758", label %"$empty_default_759" [
    i8 1, label %"$False_760"
    i8 0, label %"$True_770"
  ]

"$False_760":                                     ; preds = %"$have_gas_753"
  %"$b_761" = bitcast %TName_Bool* %"$b_756" to %CName_False*
  %"$gasrem_762" = load i64, i64* @_gasrem
  %"$gascmp_763" = icmp ugt i64 1, %"$gasrem_762"
  br i1 %"$gascmp_763", label %"$out_of_gas_764", label %"$have_gas_765"

"$out_of_gas_764":                                ; preds = %"$False_760"
  call void @_out_of_gas()
  br label %"$have_gas_765"

"$have_gas_765":                                  ; preds = %"$out_of_gas_764", %"$False_760"
  %"$consume_766" = sub i64 %"$gasrem_762", 1
  store i64 %"$consume_766", i64* @_gasrem
  %"$adtval_767_load" = load i8*, i8** @_execptr
  %"$adtval_767_salloc" = call i8* @_salloc(i8* %"$adtval_767_load", i64 1)
  %"$adtval_767" = bitcast i8* %"$adtval_767_salloc" to %CName_False*
  %"$adtgep_768" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_767", i32 0, i32 0
  store i8 1, i8* %"$adtgep_768"
  %"$adtptr_769" = bitcast %CName_False* %"$adtval_767" to %TName_Bool*
  store %TName_Bool* %"$adtptr_769", %TName_Bool** %"$retval_174"
  br label %"$matchsucc_755"

"$True_770":                                      ; preds = %"$have_gas_753"
  %"$b_771" = bitcast %TName_Bool* %"$b_756" to %CName_True*
  %"$gasrem_772" = load i64, i64* @_gasrem
  %"$gascmp_773" = icmp ugt i64 1, %"$gasrem_772"
  br i1 %"$gascmp_773", label %"$out_of_gas_774", label %"$have_gas_775"

"$out_of_gas_774":                                ; preds = %"$True_770"
  call void @_out_of_gas()
  br label %"$have_gas_775"

"$have_gas_775":                                  ; preds = %"$out_of_gas_774", %"$True_770"
  %"$consume_776" = sub i64 %"$gasrem_772", 1
  store i64 %"$consume_776", i64* @_gasrem
  store %TName_Bool* %1, %TName_Bool** %"$retval_174"
  br label %"$matchsucc_755"

"$empty_default_759":                             ; preds = %"$have_gas_753"
  br label %"$matchsucc_755"

"$matchsucc_755":                                 ; preds = %"$have_gas_775", %"$have_gas_765", %"$empty_default_759"
  %"$$retval_174_777" = load %TName_Bool*, %TName_Bool** %"$retval_174"
  ret %TName_Bool* %"$$retval_174_777"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_171"(%"$$fundef_171_env_449"* %0, %TName_Bool* %1) {
entry:
  %"$retval_172" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$gasrem_737" = load i64, i64* @_gasrem
  %"$gascmp_738" = icmp ugt i64 1, %"$gasrem_737"
  br i1 %"$gascmp_738", label %"$out_of_gas_739", label %"$have_gas_740"

"$out_of_gas_739":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_740"

"$have_gas_740":                                  ; preds = %"$out_of_gas_739", %entry
  %"$consume_741" = sub i64 %"$gasrem_737", 1
  store i64 %"$consume_741", i64* @_gasrem
  %"$$fundef_173_envp_742_load" = load i8*, i8** @_execptr
  %"$$fundef_173_envp_742_salloc" = call i8* @_salloc(i8* %"$$fundef_173_envp_742_load", i64 8)
  %"$$fundef_173_envp_742" = bitcast i8* %"$$fundef_173_envp_742_salloc" to %"$$fundef_173_env_448"*
  %"$$fundef_173_env_voidp_744" = bitcast %"$$fundef_173_env_448"* %"$$fundef_173_envp_742" to i8*
  %"$$fundef_173_cloval_745" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_173_env_448"*, %TName_Bool*)* @"$fundef_173" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_173_env_voidp_744", 1
  %"$$fundef_173_env_b_746" = getelementptr inbounds %"$$fundef_173_env_448", %"$$fundef_173_env_448"* %"$$fundef_173_envp_742", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_173_env_b_746"
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_173_cloval_745", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_172"
  %"$$retval_172_747" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_172"
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_172_747"
}

define internal %TName_Option_ByStr20* @"$fundef_153"(%"$$fundef_153_env_450"* %0, %TName_Option_ByStr20* %1) {
entry:
  %"$$fundef_153_env_g_717" = getelementptr inbounds %"$$fundef_153_env_450", %"$$fundef_153_env_450"* %0, i32 0, i32 0
  %"$g_envload_718" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_153_env_g_717"
  %g = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_envload_718", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g
  %"$$fundef_153_env_t_719" = getelementptr inbounds %"$$fundef_153_env_450", %"$$fundef_153_env_450"* %0, i32 0, i32 1
  %"$t_envload_720" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_153_env_t_719"
  %t = alloca %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$t_envload_720", %TName_List_ByStr20** %t
  %"$retval_154" = alloca %TName_Option_ByStr20*
  %"$gasrem_721" = load i64, i64* @_gasrem
  %"$gascmp_722" = icmp ugt i64 1, %"$gasrem_721"
  br i1 %"$gascmp_722", label %"$out_of_gas_723", label %"$have_gas_724"

"$out_of_gas_723":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_724"

"$have_gas_724":                                  ; preds = %"$out_of_gas_723", %entry
  %"$consume_725" = sub i64 %"$gasrem_721", 1
  store i64 %"$consume_725", i64* @_gasrem
  %"$g_11" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }
  %"$g_726" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g
  %"$g_fptr_727" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_726", 0
  %"$g_envptr_728" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_726", 1
  %"$g_call_729" = call { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_fptr_727"(i8* %"$g_envptr_728", %TName_Option_ByStr20* %1)
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_call_729", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_11"
  %"$g_12" = alloca %TName_Option_ByStr20*
  %"$$g_11_730" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_11"
  %"$$g_11_fptr_731" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_11_730", 0
  %"$$g_11_envptr_732" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_11_730", 1
  %"$t_733" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t
  %"$$g_11_call_734" = call %TName_Option_ByStr20* %"$$g_11_fptr_731"(i8* %"$$g_11_envptr_732", %TName_List_ByStr20* %"$t_733")
  store %TName_Option_ByStr20* %"$$g_11_call_734", %TName_Option_ByStr20** %"$g_12"
  %"$$g_12_735" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$g_12"
  store %TName_Option_ByStr20* %"$$g_12_735", %TName_Option_ByStr20** %"$retval_154"
  %"$$retval_154_736" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$retval_154"
  ret %TName_Option_ByStr20* %"$$retval_154_736"
}

define internal %TName_Option_ByStr20* @"$fundef_151"(%"$$fundef_151_env_451"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_151_env_f_647" = getelementptr inbounds %"$$fundef_151_env_451", %"$$fundef_151_env_451"* %0, i32 0, i32 0
  %"$f_envload_648" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_151_env_f_647"
  %f = alloca { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_envload_648", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %f
  %"$$fundef_151_env_g_649" = getelementptr inbounds %"$$fundef_151_env_451", %"$$fundef_151_env_451"* %0, i32 0, i32 1
  %"$g_envload_650" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_151_env_g_649"
  %g = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_envload_650", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g
  %"$$fundef_151_env_z_651" = getelementptr inbounds %"$$fundef_151_env_451", %"$$fundef_151_env_451"* %0, i32 0, i32 2
  %"$z_envload_652" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_151_env_z_651"
  %z = alloca %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$z_envload_652", %TName_Option_ByStr20** %z
  %"$retval_152" = alloca %TName_Option_ByStr20*
  %"$gasrem_653" = load i64, i64* @_gasrem
  %"$gascmp_654" = icmp ugt i64 2, %"$gasrem_653"
  br i1 %"$gascmp_654", label %"$out_of_gas_655", label %"$have_gas_656"

"$out_of_gas_655":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_656"

"$have_gas_656":                                  ; preds = %"$out_of_gas_655", %entry
  %"$consume_657" = sub i64 %"$gasrem_653", 2
  store i64 %"$consume_657", i64* @_gasrem
  %"$l_tag_659" = getelementptr inbounds %TName_List_ByStr20, %TName_List_ByStr20* %1, i32 0, i32 0
  %"$l_tag_660" = load i8, i8* %"$l_tag_659"
  switch i8 %"$l_tag_660", label %"$empty_default_661" [
    i8 0, label %"$Cons_662"
    i8 1, label %"$Nil_708"
  ]

"$Cons_662":                                      ; preds = %"$have_gas_656"
  %"$l_663" = bitcast %TName_List_ByStr20* %1 to %CName_Cons_ByStr20*
  %"$h_gep_664" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_663", i32 0, i32 1
  %"$h_load_665" = load [20 x i8], [20 x i8]* %"$h_gep_664"
  %h = alloca [20 x i8]
  store [20 x i8] %"$h_load_665", [20 x i8]* %h
  %"$t_gep_666" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_663", i32 0, i32 2
  %"$t_load_667" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$t_gep_666"
  %t = alloca %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$t_load_667", %TName_List_ByStr20** %t
  %"$gasrem_668" = load i64, i64* @_gasrem
  %"$gascmp_669" = icmp ugt i64 1, %"$gasrem_668"
  br i1 %"$gascmp_669", label %"$out_of_gas_670", label %"$have_gas_671"

"$out_of_gas_670":                                ; preds = %"$Cons_662"
  call void @_out_of_gas()
  br label %"$have_gas_671"

"$have_gas_671":                                  ; preds = %"$out_of_gas_670", %"$Cons_662"
  %"$consume_672" = sub i64 %"$gasrem_668", 1
  store i64 %"$consume_672", i64* @_gasrem
  %partial = alloca { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }
  %"$gasrem_673" = load i64, i64* @_gasrem
  %"$gascmp_674" = icmp ugt i64 1, %"$gasrem_673"
  br i1 %"$gascmp_674", label %"$out_of_gas_675", label %"$have_gas_676"

"$out_of_gas_675":                                ; preds = %"$have_gas_671"
  call void @_out_of_gas()
  br label %"$have_gas_676"

"$have_gas_676":                                  ; preds = %"$out_of_gas_675", %"$have_gas_671"
  %"$consume_677" = sub i64 %"$gasrem_673", 1
  store i64 %"$consume_677", i64* @_gasrem
  %"$$fundef_153_envp_678_load" = load i8*, i8** @_execptr
  %"$$fundef_153_envp_678_salloc" = call i8* @_salloc(i8* %"$$fundef_153_envp_678_load", i64 24)
  %"$$fundef_153_envp_678" = bitcast i8* %"$$fundef_153_envp_678_salloc" to %"$$fundef_153_env_450"*
  %"$$fundef_153_env_voidp_680" = bitcast %"$$fundef_153_env_450"* %"$$fundef_153_envp_678" to i8*
  %"$$fundef_153_cloval_681" = insertvalue { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)* bitcast (%TName_Option_ByStr20* (%"$$fundef_153_env_450"*, %TName_Option_ByStr20*)* @"$fundef_153" to %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_153_env_voidp_680", 1
  %"$$fundef_153_env_g_682" = getelementptr inbounds %"$$fundef_153_env_450", %"$$fundef_153_env_450"* %"$$fundef_153_envp_678", i32 0, i32 0
  %"$g_683" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_683", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_153_env_g_682"
  %"$$fundef_153_env_t_684" = getelementptr inbounds %"$$fundef_153_env_450", %"$$fundef_153_env_450"* %"$$fundef_153_envp_678", i32 0, i32 1
  %"$t_685" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t
  store %TName_List_ByStr20* %"$t_685", %TName_List_ByStr20** %"$$fundef_153_env_t_684"
  store { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_153_cloval_681", { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }* %partial
  %"$gasrem_686" = load i64, i64* @_gasrem
  %"$gascmp_687" = icmp ugt i64 1, %"$gasrem_686"
  br i1 %"$gascmp_687", label %"$out_of_gas_688", label %"$have_gas_689"

"$out_of_gas_688":                                ; preds = %"$have_gas_676"
  call void @_out_of_gas()
  br label %"$have_gas_689"

"$have_gas_689":                                  ; preds = %"$out_of_gas_688", %"$have_gas_676"
  %"$consume_690" = sub i64 %"$gasrem_686", 1
  store i64 %"$consume_690", i64* @_gasrem
  %"$f_13" = alloca { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$f_691" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %f
  %"$f_fptr_692" = extractvalue { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_691", 0
  %"$f_envptr_693" = extractvalue { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_691", 1
  %"$z_694" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %z
  %"$f_call_695" = call { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_fptr_692"(i8* %"$f_envptr_693", %TName_Option_ByStr20* %"$z_694")
  store { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_call_695", { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$f_13"
  %"$f_14" = alloca { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }
  %"$$f_13_696" = load { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$f_13"
  %"$$f_13_fptr_697" = extractvalue { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$f_13_696", 0
  %"$$f_13_envptr_698" = extractvalue { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$f_13_696", 1
  %"$$f_13_h_699" = alloca [20 x i8]
  %"$h_700" = load [20 x i8], [20 x i8]* %h
  store [20 x i8] %"$h_700", [20 x i8]* %"$$f_13_h_699"
  %"$$f_13_call_701" = call { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_13_fptr_697"(i8* %"$$f_13_envptr_698", [20 x i8]* %"$$f_13_h_699")
  store { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_13_call_701", { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$f_14"
  %"$f_15" = alloca %TName_Option_ByStr20*
  %"$$f_14_702" = load { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$f_14"
  %"$$f_14_fptr_703" = extractvalue { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_14_702", 0
  %"$$f_14_envptr_704" = extractvalue { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_14_702", 1
  %"$partial_705" = load { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }* %partial
  %"$$f_14_call_706" = call %TName_Option_ByStr20* %"$$f_14_fptr_703"(i8* %"$$f_14_envptr_704", { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %"$partial_705")
  store %TName_Option_ByStr20* %"$$f_14_call_706", %TName_Option_ByStr20** %"$f_15"
  %"$$f_15_707" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$f_15"
  store %TName_Option_ByStr20* %"$$f_15_707", %TName_Option_ByStr20** %"$retval_152"
  br label %"$matchsucc_658"

"$Nil_708":                                       ; preds = %"$have_gas_656"
  %"$l_709" = bitcast %TName_List_ByStr20* %1 to %CName_Nil_ByStr20*
  %"$gasrem_710" = load i64, i64* @_gasrem
  %"$gascmp_711" = icmp ugt i64 1, %"$gasrem_710"
  br i1 %"$gascmp_711", label %"$out_of_gas_712", label %"$have_gas_713"

"$out_of_gas_712":                                ; preds = %"$Nil_708"
  call void @_out_of_gas()
  br label %"$have_gas_713"

"$have_gas_713":                                  ; preds = %"$out_of_gas_712", %"$Nil_708"
  %"$consume_714" = sub i64 %"$gasrem_710", 1
  store i64 %"$consume_714", i64* @_gasrem
  %"$z_715" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %z
  store %TName_Option_ByStr20* %"$z_715", %TName_Option_ByStr20** %"$retval_152"
  br label %"$matchsucc_658"

"$empty_default_661":                             ; preds = %"$have_gas_656"
  br label %"$matchsucc_658"

"$matchsucc_658":                                 ; preds = %"$have_gas_713", %"$have_gas_689", %"$empty_default_661"
  %"$$retval_152_716" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$retval_152"
  ret %TName_Option_ByStr20* %"$$retval_152_716"
}

define internal { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_149"(%"$$fundef_149_env_452"* %0, %TName_Option_ByStr20* %1) {
entry:
  %"$$fundef_149_env_f_628" = getelementptr inbounds %"$$fundef_149_env_452", %"$$fundef_149_env_452"* %0, i32 0, i32 0
  %"$f_envload_629" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_149_env_f_628"
  %f = alloca { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_envload_629", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %f
  %"$$fundef_149_env_g_630" = getelementptr inbounds %"$$fundef_149_env_452", %"$$fundef_149_env_452"* %0, i32 0, i32 1
  %"$g_envload_631" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_149_env_g_630"
  %g = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_envload_631", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g
  %"$retval_150" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }
  %"$gasrem_632" = load i64, i64* @_gasrem
  %"$gascmp_633" = icmp ugt i64 1, %"$gasrem_632"
  br i1 %"$gascmp_633", label %"$out_of_gas_634", label %"$have_gas_635"

"$out_of_gas_634":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_635"

"$have_gas_635":                                  ; preds = %"$out_of_gas_634", %entry
  %"$consume_636" = sub i64 %"$gasrem_632", 1
  store i64 %"$consume_636", i64* @_gasrem
  %"$$fundef_151_envp_637_load" = load i8*, i8** @_execptr
  %"$$fundef_151_envp_637_salloc" = call i8* @_salloc(i8* %"$$fundef_151_envp_637_load", i64 40)
  %"$$fundef_151_envp_637" = bitcast i8* %"$$fundef_151_envp_637_salloc" to %"$$fundef_151_env_451"*
  %"$$fundef_151_env_voidp_639" = bitcast %"$$fundef_151_env_451"* %"$$fundef_151_envp_637" to i8*
  %"$$fundef_151_cloval_640" = insertvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)* bitcast (%TName_Option_ByStr20* (%"$$fundef_151_env_451"*, %TName_List_ByStr20*)* @"$fundef_151" to %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_151_env_voidp_639", 1
  %"$$fundef_151_env_f_641" = getelementptr inbounds %"$$fundef_151_env_451", %"$$fundef_151_env_451"* %"$$fundef_151_envp_637", i32 0, i32 0
  %"$f_642" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %f
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_642", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_151_env_f_641"
  %"$$fundef_151_env_g_643" = getelementptr inbounds %"$$fundef_151_env_451", %"$$fundef_151_env_451"* %"$$fundef_151_envp_637", i32 0, i32 1
  %"$g_644" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_644", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_151_env_g_643"
  %"$$fundef_151_env_z_645" = getelementptr inbounds %"$$fundef_151_env_451", %"$$fundef_151_env_451"* %"$$fundef_151_envp_637", i32 0, i32 2
  store %TName_Option_ByStr20* %1, %TName_Option_ByStr20** %"$$fundef_151_env_z_645"
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_151_cloval_640", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_150"
  %"$$retval_150_646" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_150"
  ret { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_150_646"
}

define internal { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } @"$fundef_147"(%"$$fundef_147_env_453"* %0, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %1) {
entry:
  %"$retval_148" = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }
  %"$gasrem_609" = load i64, i64* @_gasrem
  %"$gascmp_610" = icmp ugt i64 1, %"$gasrem_609"
  br i1 %"$gascmp_610", label %"$out_of_gas_611", label %"$have_gas_612"

"$out_of_gas_611":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_612"

"$have_gas_612":                                  ; preds = %"$out_of_gas_611", %entry
  %"$consume_613" = sub i64 %"$gasrem_609", 1
  store i64 %"$consume_613", i64* @_gasrem
  %"$gasrem_614" = load i64, i64* @_gasrem
  %"$gascmp_615" = icmp ugt i64 1, %"$gasrem_614"
  br i1 %"$gascmp_615", label %"$out_of_gas_616", label %"$have_gas_617"

"$out_of_gas_616":                                ; preds = %"$have_gas_612"
  call void @_out_of_gas()
  br label %"$have_gas_617"

"$have_gas_617":                                  ; preds = %"$out_of_gas_616", %"$have_gas_612"
  %"$consume_618" = sub i64 %"$gasrem_614", 1
  store i64 %"$consume_618", i64* @_gasrem
  %"$$fundef_149_envp_619_load" = load i8*, i8** @_execptr
  %"$$fundef_149_envp_619_salloc" = call i8* @_salloc(i8* %"$$fundef_149_envp_619_load", i64 32)
  %"$$fundef_149_envp_619" = bitcast i8* %"$$fundef_149_envp_619_salloc" to %"$$fundef_149_env_452"*
  %"$$fundef_149_env_voidp_621" = bitcast %"$$fundef_149_env_452"* %"$$fundef_149_envp_619" to i8*
  %"$$fundef_149_cloval_622" = insertvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)* bitcast ({ %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_149_env_452"*, %TName_Option_ByStr20*)* @"$fundef_149" to { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_149_env_voidp_621", 1
  %g = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_149_cloval_622", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g
  %"$$fundef_149_env_f_623" = getelementptr inbounds %"$$fundef_149_env_452", %"$$fundef_149_env_452"* %"$$fundef_149_envp_619", i32 0, i32 0
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %1, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_149_env_f_623"
  %"$$fundef_149_env_g_624" = getelementptr inbounds %"$$fundef_149_env_452", %"$$fundef_149_env_452"* %"$$fundef_149_envp_619", i32 0, i32 1
  %"$g_625" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_625", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_149_env_g_624"
  %"$g_626" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_626", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_148"
  %"$$retval_148_627" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_148"
  ret { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$retval_148_627"
}

define internal { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } @"$fundef_145"(%"$$fundef_145_env_454"* %0) {
entry:
  %"$retval_146" = alloca { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }
  %"$gasrem_600" = load i64, i64* @_gasrem
  %"$gascmp_601" = icmp ugt i64 1, %"$gasrem_600"
  br i1 %"$gascmp_601", label %"$out_of_gas_602", label %"$have_gas_603"

"$out_of_gas_602":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_603"

"$have_gas_603":                                  ; preds = %"$out_of_gas_602", %entry
  %"$consume_604" = sub i64 %"$gasrem_600", 1
  store i64 %"$consume_604", i64* @_gasrem
  store { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })* bitcast ({ { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (%"$$fundef_147_env_453"*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })* @"$fundef_147" to { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*), i8* null }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_146"
  %"$$retval_146_608" = load { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_146"
  ret { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$retval_146_608"
}

define internal { i8*, i8* }* @"$fundef_143"(%"$$fundef_143_env_455"* %0) {
entry:
  %"$retval_144" = alloca { i8*, i8* }*
  %"$gasrem_588" = load i64, i64* @_gasrem
  %"$gascmp_589" = icmp ugt i64 1, %"$gasrem_588"
  br i1 %"$gascmp_589", label %"$out_of_gas_590", label %"$have_gas_591"

"$out_of_gas_590":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_591"

"$have_gas_591":                                  ; preds = %"$out_of_gas_590", %entry
  %"$consume_592" = sub i64 %"$gasrem_588", 1
  store i64 %"$consume_592", i64* @_gasrem
  %"$dyndisp_table_596_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_596_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_596_salloc_load", i64 48)
  %"$dyndisp_table_596_salloc" = bitcast i8* %"$dyndisp_table_596_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_596" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_596_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_597" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_596", i32 2
  %"$dyndisp_pcast_598" = bitcast { i8*, i8* }* %"$dyndisp_gep_597" to { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (%"$$fundef_145_env_454"*)* @"$fundef_145" to { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_598"
  store { i8*, i8* }* %"$dyndisp_table_596", { i8*, i8* }** %"$retval_144"
  %"$$retval_144_599" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_144"
  ret { i8*, i8* }* %"$$retval_144_599"
}

define internal %TName_List_ByStr20* @"$fundef_163"(%"$$fundef_163_env_456"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_163_env_f_520" = getelementptr inbounds %"$$fundef_163_env_456", %"$$fundef_163_env_456"* %0, i32 0, i32 0
  %"$f_envload_521" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_163_env_f_520"
  %f = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_envload_521", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f
  %"$$fundef_163_env_g_522" = getelementptr inbounds %"$$fundef_163_env_456", %"$$fundef_163_env_456"* %0, i32 0, i32 1
  %"$g_envload_523" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_163_env_g_522"
  %g = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_envload_523", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g
  %"$$fundef_163_env_z_524" = getelementptr inbounds %"$$fundef_163_env_456", %"$$fundef_163_env_456"* %0, i32 0, i32 2
  %"$z_envload_525" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_163_env_z_524"
  %z = alloca %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$z_envload_525", %TName_List_ByStr20** %z
  %"$retval_164" = alloca %TName_List_ByStr20*
  %"$gasrem_526" = load i64, i64* @_gasrem
  %"$gascmp_527" = icmp ugt i64 2, %"$gasrem_526"
  br i1 %"$gascmp_527", label %"$out_of_gas_528", label %"$have_gas_529"

"$out_of_gas_528":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_529"

"$have_gas_529":                                  ; preds = %"$out_of_gas_528", %entry
  %"$consume_530" = sub i64 %"$gasrem_526", 2
  store i64 %"$consume_530", i64* @_gasrem
  %"$l_tag_532" = getelementptr inbounds %TName_List_ByStr20, %TName_List_ByStr20* %1, i32 0, i32 0
  %"$l_tag_533" = load i8, i8* %"$l_tag_532"
  switch i8 %"$l_tag_533", label %"$empty_default_534" [
    i8 0, label %"$Cons_535"
    i8 1, label %"$Nil_579"
  ]

"$Cons_535":                                      ; preds = %"$have_gas_529"
  %"$l_536" = bitcast %TName_List_ByStr20* %1 to %CName_Cons_ByStr20*
  %"$h_gep_537" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_536", i32 0, i32 1
  %"$h_load_538" = load [20 x i8], [20 x i8]* %"$h_gep_537"
  %h = alloca [20 x i8]
  store [20 x i8] %"$h_load_538", [20 x i8]* %h
  %"$t_gep_539" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_536", i32 0, i32 2
  %"$t_load_540" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$t_gep_539"
  %t = alloca %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$t_load_540", %TName_List_ByStr20** %t
  %"$gasrem_541" = load i64, i64* @_gasrem
  %"$gascmp_542" = icmp ugt i64 1, %"$gasrem_541"
  br i1 %"$gascmp_542", label %"$out_of_gas_543", label %"$have_gas_544"

"$out_of_gas_543":                                ; preds = %"$Cons_535"
  call void @_out_of_gas()
  br label %"$have_gas_544"

"$have_gas_544":                                  ; preds = %"$out_of_gas_543", %"$Cons_535"
  %"$consume_545" = sub i64 %"$gasrem_541", 1
  store i64 %"$consume_545", i64* @_gasrem
  %res = alloca %TName_List_ByStr20*
  %"$gasrem_546" = load i64, i64* @_gasrem
  %"$gascmp_547" = icmp ugt i64 1, %"$gasrem_546"
  br i1 %"$gascmp_547", label %"$out_of_gas_548", label %"$have_gas_549"

"$out_of_gas_548":                                ; preds = %"$have_gas_544"
  call void @_out_of_gas()
  br label %"$have_gas_549"

"$have_gas_549":                                  ; preds = %"$out_of_gas_548", %"$have_gas_544"
  %"$consume_550" = sub i64 %"$gasrem_546", 1
  store i64 %"$consume_550", i64* @_gasrem
  %"$g_7" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }
  %"$g_551" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g
  %"$g_fptr_552" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_551", 0
  %"$g_envptr_553" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_551", 1
  %"$z_554" = load %TName_List_ByStr20*, %TName_List_ByStr20** %z
  %"$g_call_555" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_fptr_552"(i8* %"$g_envptr_553", %TName_List_ByStr20* %"$z_554")
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_call_555", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_7"
  %"$g_8" = alloca %TName_List_ByStr20*
  %"$$g_7_556" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_7"
  %"$$g_7_fptr_557" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_7_556", 0
  %"$$g_7_envptr_558" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_7_556", 1
  %"$t_559" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t
  %"$$g_7_call_560" = call %TName_List_ByStr20* %"$$g_7_fptr_557"(i8* %"$$g_7_envptr_558", %TName_List_ByStr20* %"$t_559")
  store %TName_List_ByStr20* %"$$g_7_call_560", %TName_List_ByStr20** %"$g_8"
  %"$$g_8_561" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$g_8"
  store %TName_List_ByStr20* %"$$g_8_561", %TName_List_ByStr20** %res
  %"$gasrem_562" = load i64, i64* @_gasrem
  %"$gascmp_563" = icmp ugt i64 1, %"$gasrem_562"
  br i1 %"$gascmp_563", label %"$out_of_gas_564", label %"$have_gas_565"

"$out_of_gas_564":                                ; preds = %"$have_gas_549"
  call void @_out_of_gas()
  br label %"$have_gas_565"

"$have_gas_565":                                  ; preds = %"$out_of_gas_564", %"$have_gas_549"
  %"$consume_566" = sub i64 %"$gasrem_562", 1
  store i64 %"$consume_566", i64* @_gasrem
  %"$f_9" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }
  %"$f_567" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f
  %"$f_fptr_568" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_567", 0
  %"$f_envptr_569" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_567", 1
  %"$f_h_570" = alloca [20 x i8]
  %"$h_571" = load [20 x i8], [20 x i8]* %h
  store [20 x i8] %"$h_571", [20 x i8]* %"$f_h_570"
  %"$f_call_572" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$f_fptr_568"(i8* %"$f_envptr_569", [20 x i8]* %"$f_h_570")
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$f_call_572", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$f_9"
  %"$f_10" = alloca %TName_List_ByStr20*
  %"$$f_9_573" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$f_9"
  %"$$f_9_fptr_574" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$f_9_573", 0
  %"$$f_9_envptr_575" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$f_9_573", 1
  %"$res_576" = load %TName_List_ByStr20*, %TName_List_ByStr20** %res
  %"$$f_9_call_577" = call %TName_List_ByStr20* %"$$f_9_fptr_574"(i8* %"$$f_9_envptr_575", %TName_List_ByStr20* %"$res_576")
  store %TName_List_ByStr20* %"$$f_9_call_577", %TName_List_ByStr20** %"$f_10"
  %"$$f_10_578" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$f_10"
  store %TName_List_ByStr20* %"$$f_10_578", %TName_List_ByStr20** %"$retval_164"
  br label %"$matchsucc_531"

"$Nil_579":                                       ; preds = %"$have_gas_529"
  %"$l_580" = bitcast %TName_List_ByStr20* %1 to %CName_Nil_ByStr20*
  %"$gasrem_581" = load i64, i64* @_gasrem
  %"$gascmp_582" = icmp ugt i64 1, %"$gasrem_581"
  br i1 %"$gascmp_582", label %"$out_of_gas_583", label %"$have_gas_584"

"$out_of_gas_583":                                ; preds = %"$Nil_579"
  call void @_out_of_gas()
  br label %"$have_gas_584"

"$have_gas_584":                                  ; preds = %"$out_of_gas_583", %"$Nil_579"
  %"$consume_585" = sub i64 %"$gasrem_581", 1
  store i64 %"$consume_585", i64* @_gasrem
  %"$z_586" = load %TName_List_ByStr20*, %TName_List_ByStr20** %z
  store %TName_List_ByStr20* %"$z_586", %TName_List_ByStr20** %"$retval_164"
  br label %"$matchsucc_531"

"$empty_default_534":                             ; preds = %"$have_gas_529"
  br label %"$matchsucc_531"

"$matchsucc_531":                                 ; preds = %"$have_gas_584", %"$have_gas_565", %"$empty_default_534"
  %"$$retval_164_587" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$retval_164"
  ret %TName_List_ByStr20* %"$$retval_164_587"
}

define internal { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_161"(%"$$fundef_161_env_457"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_161_env_f_501" = getelementptr inbounds %"$$fundef_161_env_457", %"$$fundef_161_env_457"* %0, i32 0, i32 0
  %"$f_envload_502" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_161_env_f_501"
  %f = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_envload_502", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f
  %"$$fundef_161_env_g_503" = getelementptr inbounds %"$$fundef_161_env_457", %"$$fundef_161_env_457"* %0, i32 0, i32 1
  %"$g_envload_504" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_161_env_g_503"
  %g = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_envload_504", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g
  %"$retval_162" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }
  %"$gasrem_505" = load i64, i64* @_gasrem
  %"$gascmp_506" = icmp ugt i64 1, %"$gasrem_505"
  br i1 %"$gascmp_506", label %"$out_of_gas_507", label %"$have_gas_508"

"$out_of_gas_507":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_508"

"$have_gas_508":                                  ; preds = %"$out_of_gas_507", %entry
  %"$consume_509" = sub i64 %"$gasrem_505", 1
  store i64 %"$consume_509", i64* @_gasrem
  %"$$fundef_163_envp_510_load" = load i8*, i8** @_execptr
  %"$$fundef_163_envp_510_salloc" = call i8* @_salloc(i8* %"$$fundef_163_envp_510_load", i64 40)
  %"$$fundef_163_envp_510" = bitcast i8* %"$$fundef_163_envp_510_salloc" to %"$$fundef_163_env_456"*
  %"$$fundef_163_env_voidp_512" = bitcast %"$$fundef_163_env_456"* %"$$fundef_163_envp_510" to i8*
  %"$$fundef_163_cloval_513" = insertvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)* bitcast (%TName_List_ByStr20* (%"$$fundef_163_env_456"*, %TName_List_ByStr20*)* @"$fundef_163" to %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_163_env_voidp_512", 1
  %"$$fundef_163_env_f_514" = getelementptr inbounds %"$$fundef_163_env_456", %"$$fundef_163_env_456"* %"$$fundef_163_envp_510", i32 0, i32 0
  %"$f_515" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_515", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_163_env_f_514"
  %"$$fundef_163_env_g_516" = getelementptr inbounds %"$$fundef_163_env_456", %"$$fundef_163_env_456"* %"$$fundef_163_envp_510", i32 0, i32 1
  %"$g_517" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_517", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_163_env_g_516"
  %"$$fundef_163_env_z_518" = getelementptr inbounds %"$$fundef_163_env_456", %"$$fundef_163_env_456"* %"$$fundef_163_envp_510", i32 0, i32 2
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_163_env_z_518"
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_163_cloval_513", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_162"
  %"$$retval_162_519" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_162"
  ret { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_162_519"
}

define internal { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_159"(%"$$fundef_159_env_458"* %0, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1) {
entry:
  %"$retval_160" = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }
  %"$gasrem_482" = load i64, i64* @_gasrem
  %"$gascmp_483" = icmp ugt i64 1, %"$gasrem_482"
  br i1 %"$gascmp_483", label %"$out_of_gas_484", label %"$have_gas_485"

"$out_of_gas_484":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_485"

"$have_gas_485":                                  ; preds = %"$out_of_gas_484", %entry
  %"$consume_486" = sub i64 %"$gasrem_482", 1
  store i64 %"$consume_486", i64* @_gasrem
  %"$gasrem_487" = load i64, i64* @_gasrem
  %"$gascmp_488" = icmp ugt i64 1, %"$gasrem_487"
  br i1 %"$gascmp_488", label %"$out_of_gas_489", label %"$have_gas_490"

"$out_of_gas_489":                                ; preds = %"$have_gas_485"
  call void @_out_of_gas()
  br label %"$have_gas_490"

"$have_gas_490":                                  ; preds = %"$out_of_gas_489", %"$have_gas_485"
  %"$consume_491" = sub i64 %"$gasrem_487", 1
  store i64 %"$consume_491", i64* @_gasrem
  %"$$fundef_161_envp_492_load" = load i8*, i8** @_execptr
  %"$$fundef_161_envp_492_salloc" = call i8* @_salloc(i8* %"$$fundef_161_envp_492_load", i64 32)
  %"$$fundef_161_envp_492" = bitcast i8* %"$$fundef_161_envp_492_salloc" to %"$$fundef_161_env_457"*
  %"$$fundef_161_env_voidp_494" = bitcast %"$$fundef_161_env_457"* %"$$fundef_161_envp_492" to i8*
  %"$$fundef_161_cloval_495" = insertvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_161_env_457"*, %TName_List_ByStr20*)* @"$fundef_161" to { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_161_env_voidp_494", 1
  %g = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_161_cloval_495", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g
  %"$$fundef_161_env_f_496" = getelementptr inbounds %"$$fundef_161_env_457", %"$$fundef_161_env_457"* %"$$fundef_161_envp_492", i32 0, i32 0
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_161_env_f_496"
  %"$$fundef_161_env_g_497" = getelementptr inbounds %"$$fundef_161_env_457", %"$$fundef_161_env_457"* %"$$fundef_161_envp_492", i32 0, i32 1
  %"$g_498" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_498", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_161_env_g_497"
  %"$g_499" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_499", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_160"
  %"$$retval_160_500" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_160"
  ret { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_160_500"
}

define internal { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_157"(%"$$fundef_157_env_459"* %0) {
entry:
  %"$retval_158" = alloca { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }
  %"$gasrem_473" = load i64, i64* @_gasrem
  %"$gascmp_474" = icmp ugt i64 1, %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %entry
  %"$consume_477" = sub i64 %"$gasrem_473", 1
  store i64 %"$consume_477", i64* @_gasrem
  store { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })* bitcast ({ { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_159_env_458"*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })* @"$fundef_159" to { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*), i8* null }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_158"
  %"$$retval_158_481" = load { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_158"
  ret { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_158_481"
}

define internal { i8*, i8* }* @"$fundef_155"(%"$$fundef_155_env_460"* %0) {
entry:
  %"$retval_156" = alloca { i8*, i8* }*
  %"$gasrem_461" = load i64, i64* @_gasrem
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %entry
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem
  %"$dyndisp_table_469_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_469_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_469_salloc_load", i64 48)
  %"$dyndisp_table_469_salloc" = bitcast i8* %"$dyndisp_table_469_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_469" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_469_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_470" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_469", i32 1
  %"$dyndisp_pcast_471" = bitcast { i8*, i8* }* %"$dyndisp_gep_470" to { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_157_env_459"*)* @"$fundef_157" to { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_471"
  store { i8*, i8* }* %"$dyndisp_table_469", { i8*, i8* }** %"$retval_156"
  %"$$retval_156_472" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_156"
  ret { i8*, i8* }* %"$$retval_156_472"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare [32 x i8]* @_sha256hash(i8*, %_TyDescrTy_Typ*, i8*)

declare i8* @_concat_ByStrX(i8*, i32, i8*, i32, i8*)

define void @_init_libs() {
entry:
  %"$gasrem_2307" = load i64, i64* @_gasrem
  %"$gascmp_2308" = icmp ugt i64 1, %"$gasrem_2307"
  br i1 %"$gascmp_2308", label %"$out_of_gas_2309", label %"$have_gas_2310"

"$out_of_gas_2309":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2310"

"$have_gas_2310":                                 ; preds = %"$out_of_gas_2309", %entry
  %"$consume_2311" = sub i64 %"$gasrem_2307", 1
  store i64 %"$consume_2311", i64* @_gasrem
  %"$dyndisp_table_2315_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_2315_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2315_salloc_load", i64 48)
  %"$dyndisp_table_2315_salloc" = bitcast i8* %"$dyndisp_table_2315_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2315" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2315_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2316" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2315", i32 0
  %"$dyndisp_pcast_2317" = bitcast { i8*, i8* }* %"$dyndisp_gep_2316" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_155_env_460"*)* @"$fundef_155" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_2317"
  store { i8*, i8* }* %"$dyndisp_table_2315", { i8*, i8* }** @list_foldr
  %"$gasrem_2318" = load i64, i64* @_gasrem
  %"$gascmp_2319" = icmp ugt i64 1, %"$gasrem_2318"
  br i1 %"$gascmp_2319", label %"$out_of_gas_2320", label %"$have_gas_2321"

"$out_of_gas_2320":                               ; preds = %"$have_gas_2310"
  call void @_out_of_gas()
  br label %"$have_gas_2321"

"$have_gas_2321":                                 ; preds = %"$out_of_gas_2320", %"$have_gas_2310"
  %"$consume_2322" = sub i64 %"$gasrem_2318", 1
  store i64 %"$consume_2322", i64* @_gasrem
  %"$dyndisp_table_2326_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_2326_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2326_salloc_load", i64 48)
  %"$dyndisp_table_2326_salloc" = bitcast i8* %"$dyndisp_table_2326_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2326" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2326_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2327" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2326", i32 0
  %"$dyndisp_pcast_2328" = bitcast { i8*, i8* }* %"$dyndisp_gep_2327" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_143_env_455"*)* @"$fundef_143" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_2328"
  store { i8*, i8* }* %"$dyndisp_table_2326", { i8*, i8* }** @list_foldk
  %"$gasrem_2329" = load i64, i64* @_gasrem
  %"$gascmp_2330" = icmp ugt i64 1, %"$gasrem_2329"
  br i1 %"$gascmp_2330", label %"$out_of_gas_2331", label %"$have_gas_2332"

"$out_of_gas_2331":                               ; preds = %"$have_gas_2321"
  call void @_out_of_gas()
  br label %"$have_gas_2332"

"$have_gas_2332":                                 ; preds = %"$out_of_gas_2331", %"$have_gas_2321"
  %"$consume_2333" = sub i64 %"$gasrem_2329", 1
  store i64 %"$consume_2333", i64* @_gasrem
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_171_env_449"*, %TName_Bool*)* @"$fundef_171" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb
  %"$gasrem_2337" = load i64, i64* @_gasrem
  %"$gascmp_2338" = icmp ugt i64 1, %"$gasrem_2337"
  br i1 %"$gascmp_2338", label %"$out_of_gas_2339", label %"$have_gas_2340"

"$out_of_gas_2339":                               ; preds = %"$have_gas_2332"
  call void @_out_of_gas()
  br label %"$have_gas_2340"

"$have_gas_2340":                                 ; preds = %"$out_of_gas_2339", %"$have_gas_2332"
  %"$consume_2341" = sub i64 %"$gasrem_2337", 1
  store i64 %"$consume_2341", i64* @_gasrem
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_167_env_447"*, %TName_Bool*)* @"$fundef_167" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb
  %"$gasrem_2345" = load i64, i64* @_gasrem
  %"$gascmp_2346" = icmp ugt i64 1, %"$gasrem_2345"
  br i1 %"$gascmp_2346", label %"$out_of_gas_2347", label %"$have_gas_2348"

"$out_of_gas_2347":                               ; preds = %"$have_gas_2340"
  call void @_out_of_gas()
  br label %"$have_gas_2348"

"$have_gas_2348":                                 ; preds = %"$out_of_gas_2347", %"$have_gas_2340"
  %"$consume_2349" = sub i64 %"$gasrem_2345", 1
  store i64 %"$consume_2349", i64* @_gasrem
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_165_env_445"*, %TName_Bool*)* @"$fundef_165" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb
  %"$gasrem_2353" = load i64, i64* @_gasrem
  %"$gascmp_2354" = icmp ugt i64 1, %"$gasrem_2353"
  br i1 %"$gascmp_2354", label %"$out_of_gas_2355", label %"$have_gas_2356"

"$out_of_gas_2355":                               ; preds = %"$have_gas_2348"
  call void @_out_of_gas()
  br label %"$have_gas_2356"

"$have_gas_2356":                                 ; preds = %"$out_of_gas_2355", %"$have_gas_2348"
  %"$consume_2357" = sub i64 %"$gasrem_2353", 1
  store i64 %"$consume_2357", i64* @_gasrem
  %"$$fundef_197_envp_2358_load" = load i8*, i8** @_execptr
  %"$$fundef_197_envp_2358_salloc" = call i8* @_salloc(i8* %"$$fundef_197_envp_2358_load", i64 8)
  %"$$fundef_197_envp_2358" = bitcast i8* %"$$fundef_197_envp_2358_salloc" to %"$$fundef_197_env_444"*
  %"$$fundef_197_env_voidp_2360" = bitcast %"$$fundef_197_env_444"* %"$$fundef_197_envp_2358" to i8*
  %"$$fundef_197_cloval_2361" = insertvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_197_env_444"*)* @"$fundef_197" to { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_197_env_voidp_2360", 1
  %"$$fundef_197_env_list_foldr_2362" = getelementptr inbounds %"$$fundef_197_env_444", %"$$fundef_197_env_444"* %"$$fundef_197_envp_2358", i32 0, i32 0
  %"$list_foldr_2363" = load { i8*, i8* }*, { i8*, i8* }** @list_foldr
  store { i8*, i8* }* %"$list_foldr_2363", { i8*, i8* }** %"$$fundef_197_env_list_foldr_2362"
  %"$dyndisp_table_2364_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_2364_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2364_salloc_load", i64 48)
  %"$dyndisp_table_2364_salloc" = bitcast i8* %"$dyndisp_table_2364_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2364" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2364_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2365" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2364", i32 0
  %"$dyndisp_pcast_2366" = bitcast { i8*, i8* }* %"$dyndisp_gep_2365" to { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_197_cloval_2361", { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2366"
  store { i8*, i8* }* %"$dyndisp_table_2364", { i8*, i8* }** @ListUtils.list_filter
  %"$gasrem_2367" = load i64, i64* @_gasrem
  %"$gascmp_2368" = icmp ugt i64 1, %"$gasrem_2367"
  br i1 %"$gascmp_2368", label %"$out_of_gas_2369", label %"$have_gas_2370"

"$out_of_gas_2369":                               ; preds = %"$have_gas_2356"
  call void @_out_of_gas()
  br label %"$have_gas_2370"

"$have_gas_2370":                                 ; preds = %"$out_of_gas_2369", %"$have_gas_2356"
  %"$consume_2371" = sub i64 %"$gasrem_2367", 1
  store i64 %"$consume_2371", i64* @_gasrem
  %"$$fundef_187_envp_2372_load" = load i8*, i8** @_execptr
  %"$$fundef_187_envp_2372_salloc" = call i8* @_salloc(i8* %"$$fundef_187_envp_2372_load", i64 8)
  %"$$fundef_187_envp_2372" = bitcast i8* %"$$fundef_187_envp_2372_salloc" to %"$$fundef_187_env_440"*
  %"$$fundef_187_env_voidp_2374" = bitcast %"$$fundef_187_env_440"* %"$$fundef_187_envp_2372" to i8*
  %"$$fundef_187_cloval_2375" = insertvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_187_env_440"*)* @"$fundef_187" to { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_187_env_voidp_2374", 1
  %"$$fundef_187_env_list_foldk_2376" = getelementptr inbounds %"$$fundef_187_env_440", %"$$fundef_187_env_440"* %"$$fundef_187_envp_2372", i32 0, i32 0
  %"$list_foldk_2377" = load { i8*, i8* }*, { i8*, i8* }** @list_foldk
  store { i8*, i8* }* %"$list_foldk_2377", { i8*, i8* }** %"$$fundef_187_env_list_foldk_2376"
  %"$dyndisp_table_2378_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_2378_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2378_salloc_load", i64 48)
  %"$dyndisp_table_2378_salloc" = bitcast i8* %"$dyndisp_table_2378_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2378" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2378_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2379" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2378", i32 0
  %"$dyndisp_pcast_2380" = bitcast { i8*, i8* }* %"$dyndisp_gep_2379" to { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_187_cloval_2375", { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2380"
  store { i8*, i8* }* %"$dyndisp_table_2378", { i8*, i8* }** @ListUtils.list_find
  %"$gasrem_2381" = load i64, i64* @_gasrem
  %"$gascmp_2382" = icmp ugt i64 1, %"$gasrem_2381"
  br i1 %"$gascmp_2382", label %"$out_of_gas_2383", label %"$have_gas_2384"

"$out_of_gas_2383":                               ; preds = %"$have_gas_2370"
  call void @_out_of_gas()
  br label %"$have_gas_2384"

"$have_gas_2384":                                 ; preds = %"$out_of_gas_2383", %"$have_gas_2370"
  %"$consume_2385" = sub i64 %"$gasrem_2381", 1
  store i64 %"$consume_2385", i64* @_gasrem
  %"$$fundef_181_envp_2386_load" = load i8*, i8** @_execptr
  %"$$fundef_181_envp_2386_salloc" = call i8* @_salloc(i8* %"$$fundef_181_envp_2386_load", i64 8)
  %"$$fundef_181_envp_2386" = bitcast i8* %"$$fundef_181_envp_2386_salloc" to %"$$fundef_181_env_435"*
  %"$$fundef_181_env_voidp_2388" = bitcast %"$$fundef_181_env_435"* %"$$fundef_181_envp_2386" to i8*
  %"$$fundef_181_cloval_2389" = insertvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_181_env_435"*)* @"$fundef_181" to { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_181_env_voidp_2388", 1
  %"$$fundef_181_env_ListUtils.list_find_2390" = getelementptr inbounds %"$$fundef_181_env_435", %"$$fundef_181_env_435"* %"$$fundef_181_envp_2386", i32 0, i32 0
  %"$ListUtils.list_find_2391" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_find
  store { i8*, i8* }* %"$ListUtils.list_find_2391", { i8*, i8* }** %"$$fundef_181_env_ListUtils.list_find_2390"
  %"$dyndisp_table_2392_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_2392_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2392_salloc_load", i64 48)
  %"$dyndisp_table_2392_salloc" = bitcast i8* %"$dyndisp_table_2392_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2392" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2392_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2393" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2392", i32 0
  %"$dyndisp_pcast_2394" = bitcast { i8*, i8* }* %"$dyndisp_gep_2393" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_181_cloval_2389", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2394"
  store { i8*, i8* }* %"$dyndisp_table_2392", { i8*, i8* }** @ListUtils.list_exists
  %"$gasrem_2395" = load i64, i64* @_gasrem
  %"$gascmp_2396" = icmp ugt i64 1, %"$gasrem_2395"
  br i1 %"$gascmp_2396", label %"$out_of_gas_2397", label %"$have_gas_2398"

"$out_of_gas_2397":                               ; preds = %"$have_gas_2384"
  call void @_out_of_gas()
  br label %"$have_gas_2398"

"$have_gas_2398":                                 ; preds = %"$out_of_gas_2397", %"$have_gas_2384"
  %"$consume_2399" = sub i64 %"$gasrem_2395", 1
  store i64 %"$consume_2399", i64* @_gasrem
  %"$$fundef_175_envp_2400_load" = load i8*, i8** @_execptr
  %"$$fundef_175_envp_2400_salloc" = call i8* @_salloc(i8* %"$$fundef_175_envp_2400_load", i64 8)
  %"$$fundef_175_envp_2400" = bitcast i8* %"$$fundef_175_envp_2400_salloc" to %"$$fundef_175_env_432"*
  %"$$fundef_175_env_voidp_2402" = bitcast %"$$fundef_175_env_432"* %"$$fundef_175_envp_2400" to i8*
  %"$$fundef_175_cloval_2403" = insertvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_175_env_432"*)* @"$fundef_175" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_175_env_voidp_2402", 1
  %"$$fundef_175_env_ListUtils.list_exists_2404" = getelementptr inbounds %"$$fundef_175_env_432", %"$$fundef_175_env_432"* %"$$fundef_175_envp_2400", i32 0, i32 0
  %"$ListUtils.list_exists_2405" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_exists
  store { i8*, i8* }* %"$ListUtils.list_exists_2405", { i8*, i8* }** %"$$fundef_175_env_ListUtils.list_exists_2404"
  %"$dyndisp_table_2406_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_2406_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2406_salloc_load", i64 48)
  %"$dyndisp_table_2406_salloc" = bitcast i8* %"$dyndisp_table_2406_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2406" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2406_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2407" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2406", i32 0
  %"$dyndisp_pcast_2408" = bitcast { i8*, i8* }* %"$dyndisp_gep_2407" to { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_175_cloval_2403", { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2408"
  store { i8*, i8* }* %"$dyndisp_table_2406", { i8*, i8* }** @ListUtils.list_mem
  %"$gasrem_2409" = load i64, i64* @_gasrem
  %"$gascmp_2410" = icmp ugt i64 1, %"$gasrem_2409"
  br i1 %"$gascmp_2410", label %"$out_of_gas_2411", label %"$have_gas_2412"

"$out_of_gas_2411":                               ; preds = %"$have_gas_2398"
  call void @_out_of_gas()
  br label %"$have_gas_2412"

"$have_gas_2412":                                 ; preds = %"$out_of_gas_2411", %"$have_gas_2398"
  %"$consume_2413" = sub i64 %"$gasrem_2409", 1
  store i64 %"$consume_2413", i64* @_gasrem
  store [20 x i8] zeroinitializer, [20 x i8]* @ud-registry.zeroByStr20
  %"$gasrem_2414" = load i64, i64* @_gasrem
  %"$gascmp_2415" = icmp ugt i64 1, %"$gasrem_2414"
  br i1 %"$gascmp_2415", label %"$out_of_gas_2416", label %"$have_gas_2417"

"$out_of_gas_2416":                               ; preds = %"$have_gas_2412"
  call void @_out_of_gas()
  br label %"$have_gas_2417"

"$have_gas_2417":                                 ; preds = %"$out_of_gas_2416", %"$have_gas_2412"
  %"$consume_2418" = sub i64 %"$gasrem_2414", 1
  store i64 %"$consume_2418", i64* @_gasrem
  %"$adtval_2419_load" = load i8*, i8** @_execptr
  %"$adtval_2419_salloc" = call i8* @_salloc(i8* %"$adtval_2419_load", i64 1)
  %"$adtval_2419" = bitcast i8* %"$adtval_2419_salloc" to %CName_Nil_ByStr20*
  %"$adtgep_2420" = getelementptr inbounds %CName_Nil_ByStr20, %CName_Nil_ByStr20* %"$adtval_2419", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2420"
  %"$adtptr_2421" = bitcast %CName_Nil_ByStr20* %"$adtval_2419" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2421", %TName_List_ByStr20** @ud-registry.nilByStr20
  %"$gasrem_2422" = load i64, i64* @_gasrem
  %"$gascmp_2423" = icmp ugt i64 1, %"$gasrem_2422"
  br i1 %"$gascmp_2423", label %"$out_of_gas_2424", label %"$have_gas_2425"

"$out_of_gas_2424":                               ; preds = %"$have_gas_2417"
  call void @_out_of_gas()
  br label %"$have_gas_2425"

"$have_gas_2425":                                 ; preds = %"$out_of_gas_2424", %"$have_gas_2417"
  %"$consume_2426" = sub i64 %"$gasrem_2422", 1
  store i64 %"$consume_2426", i64* @_gasrem
  %"$adtval_2427_load" = load i8*, i8** @_execptr
  %"$adtval_2427_salloc" = call i8* @_salloc(i8* %"$adtval_2427_load", i64 1)
  %"$adtval_2427" = bitcast i8* %"$adtval_2427_salloc" to %CName_Nil_Message*
  %"$adtgep_2428" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_2427", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2428"
  %"$adtptr_2429" = bitcast %CName_Nil_Message* %"$adtval_2427" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_2429", %TName_List_Message** @ud-registry.nilMessage
  %"$gasrem_2430" = load i64, i64* @_gasrem
  %"$gascmp_2431" = icmp ugt i64 1, %"$gasrem_2430"
  br i1 %"$gascmp_2431", label %"$out_of_gas_2432", label %"$have_gas_2433"

"$out_of_gas_2432":                               ; preds = %"$have_gas_2425"
  call void @_out_of_gas()
  br label %"$have_gas_2433"

"$have_gas_2433":                                 ; preds = %"$out_of_gas_2432", %"$have_gas_2425"
  %"$consume_2434" = sub i64 %"$gasrem_2430", 1
  store i64 %"$consume_2434", i64* @_gasrem
  %"$$fundef_267_envp_2435_load" = load i8*, i8** @_execptr
  %"$$fundef_267_envp_2435_salloc" = call i8* @_salloc(i8* %"$$fundef_267_envp_2435_load", i64 8)
  %"$$fundef_267_envp_2435" = bitcast i8* %"$$fundef_267_envp_2435_salloc" to %"$$fundef_267_env_429"*
  %"$$fundef_267_env_voidp_2437" = bitcast %"$$fundef_267_env_429"* %"$$fundef_267_envp_2435" to i8*
  %"$$fundef_267_cloval_2438" = insertvalue { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_267_env_429"*, i8*)* @"$fundef_267" to %TName_List_Message* (i8*, i8*)*), i8* undef }, i8* %"$$fundef_267_env_voidp_2437", 1
  %"$$fundef_267_env_ud-registry.nilMessage_2439" = getelementptr inbounds %"$$fundef_267_env_429", %"$$fundef_267_env_429"* %"$$fundef_267_envp_2435", i32 0, i32 0
  %"$ud-registry.nilMessage_2440" = load %TName_List_Message*, %TName_List_Message** @ud-registry.nilMessage
  store %TName_List_Message* %"$ud-registry.nilMessage_2440", %TName_List_Message** %"$$fundef_267_env_ud-registry.nilMessage_2439"
  store { %TName_List_Message* (i8*, i8*)*, i8* } %"$$fundef_267_cloval_2438", { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg
  %"$gasrem_2441" = load i64, i64* @_gasrem
  %"$gascmp_2442" = icmp ugt i64 1, %"$gasrem_2441"
  br i1 %"$gascmp_2442", label %"$out_of_gas_2443", label %"$have_gas_2444"

"$out_of_gas_2443":                               ; preds = %"$have_gas_2433"
  call void @_out_of_gas()
  br label %"$have_gas_2444"

"$have_gas_2444":                                 ; preds = %"$out_of_gas_2443", %"$have_gas_2433"
  %"$consume_2445" = sub i64 %"$gasrem_2441", 1
  store i64 %"$consume_2445", i64* @_gasrem
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_263_env_428"*, [20 x i8]*)* @"$fundef_263" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eqByStr20
  %"$gasrem_2449" = load i64, i64* @_gasrem
  %"$gascmp_2450" = icmp ugt i64 1, %"$gasrem_2449"
  br i1 %"$gascmp_2450", label %"$out_of_gas_2451", label %"$have_gas_2452"

"$out_of_gas_2451":                               ; preds = %"$have_gas_2444"
  call void @_out_of_gas()
  br label %"$have_gas_2452"

"$have_gas_2452":                                 ; preds = %"$out_of_gas_2451", %"$have_gas_2444"
  %"$consume_2453" = sub i64 %"$gasrem_2449", 1
  store i64 %"$consume_2453", i64* @_gasrem
  %"$$fundef_259_envp_2454_load" = load i8*, i8** @_execptr
  %"$$fundef_259_envp_2454_salloc" = call i8* @_salloc(i8* %"$$fundef_259_envp_2454_load", i64 24)
  %"$$fundef_259_envp_2454" = bitcast i8* %"$$fundef_259_envp_2454_salloc" to %"$$fundef_259_env_426"*
  %"$$fundef_259_env_voidp_2456" = bitcast %"$$fundef_259_env_426"* %"$$fundef_259_envp_2454" to i8*
  %"$$fundef_259_cloval_2457" = insertvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_259_env_426"*, %TName_List_ByStr20*)* @"$fundef_259" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_259_env_voidp_2456", 1
  %"$$fundef_259_env_ListUtils.list_mem_2458" = getelementptr inbounds %"$$fundef_259_env_426", %"$$fundef_259_env_426"* %"$$fundef_259_envp_2454", i32 0, i32 0
  %"$ListUtils.list_mem_2459" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_mem
  store { i8*, i8* }* %"$ListUtils.list_mem_2459", { i8*, i8* }** %"$$fundef_259_env_ListUtils.list_mem_2458"
  %"$$fundef_259_env_ud-registry.eqByStr20_2460" = getelementptr inbounds %"$$fundef_259_env_426", %"$$fundef_259_env_426"* %"$$fundef_259_envp_2454", i32 0, i32 1
  %"$ud-registry.eqByStr20_2461" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eqByStr20
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_2461", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_259_env_ud-registry.eqByStr20_2460"
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_259_cloval_2457", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains
  %"$gasrem_2462" = load i64, i64* @_gasrem
  %"$gascmp_2463" = icmp ugt i64 1, %"$gasrem_2462"
  br i1 %"$gascmp_2463", label %"$out_of_gas_2464", label %"$have_gas_2465"

"$out_of_gas_2464":                               ; preds = %"$have_gas_2452"
  call void @_out_of_gas()
  br label %"$have_gas_2465"

"$have_gas_2465":                                 ; preds = %"$out_of_gas_2464", %"$have_gas_2452"
  %"$consume_2466" = sub i64 %"$gasrem_2462", 1
  store i64 %"$consume_2466", i64* @_gasrem
  %"$$fundef_255_envp_2467_load" = load i8*, i8** @_execptr
  %"$$fundef_255_envp_2467_salloc" = call i8* @_salloc(i8* %"$$fundef_255_envp_2467_load", i64 32)
  %"$$fundef_255_envp_2467" = bitcast i8* %"$$fundef_255_envp_2467_salloc" to %"$$fundef_255_env_424"*
  %"$$fundef_255_env_voidp_2469" = bitcast %"$$fundef_255_env_424"* %"$$fundef_255_envp_2467" to i8*
  %"$$fundef_255_cloval_2470" = insertvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_255_env_424"*, %TName_List_ByStr20*)* @"$fundef_255" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_255_env_voidp_2469", 1
  %"$$fundef_255_env_BoolUtils.negb_2471" = getelementptr inbounds %"$$fundef_255_env_424", %"$$fundef_255_env_424"* %"$$fundef_255_envp_2467", i32 0, i32 0
  %"$BoolUtils.negb_2472" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_2472", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_255_env_BoolUtils.negb_2471"
  %"$$fundef_255_env_ud-registry.listByStr20Contains_2473" = getelementptr inbounds %"$$fundef_255_env_424", %"$$fundef_255_env_424"* %"$$fundef_255_envp_2467", i32 0, i32 1
  %"$ud-registry.listByStr20Contains_2474" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2474", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_255_env_ud-registry.listByStr20Contains_2473"
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_255_cloval_2470", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes
  %"$gasrem_2475" = load i64, i64* @_gasrem
  %"$gascmp_2476" = icmp ugt i64 1, %"$gasrem_2475"
  br i1 %"$gascmp_2476", label %"$out_of_gas_2477", label %"$have_gas_2478"

"$out_of_gas_2477":                               ; preds = %"$have_gas_2465"
  call void @_out_of_gas()
  br label %"$have_gas_2478"

"$have_gas_2478":                                 ; preds = %"$out_of_gas_2477", %"$have_gas_2465"
  %"$consume_2479" = sub i64 %"$gasrem_2475", 1
  store i64 %"$consume_2479", i64* @_gasrem
  %"$$fundef_249_envp_2480_load" = load i8*, i8** @_execptr
  %"$$fundef_249_envp_2480_salloc" = call i8* @_salloc(i8* %"$$fundef_249_envp_2480_load", i64 24)
  %"$$fundef_249_envp_2480" = bitcast i8* %"$$fundef_249_envp_2480_salloc" to %"$$fundef_249_env_422"*
  %"$$fundef_249_env_voidp_2482" = bitcast %"$$fundef_249_env_422"* %"$$fundef_249_envp_2480" to i8*
  %"$$fundef_249_cloval_2483" = insertvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_249_env_422"*, %TName_List_ByStr20*)* @"$fundef_249" to { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_249_env_voidp_2482", 1
  %"$$fundef_249_env_BoolUtils.negb_2484" = getelementptr inbounds %"$$fundef_249_env_422", %"$$fundef_249_env_422"* %"$$fundef_249_envp_2480", i32 0, i32 0
  %"$BoolUtils.negb_2485" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_2485", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_249_env_BoolUtils.negb_2484"
  %"$$fundef_249_env_ListUtils.list_filter_2486" = getelementptr inbounds %"$$fundef_249_env_422", %"$$fundef_249_env_422"* %"$$fundef_249_envp_2480", i32 0, i32 1
  %"$ListUtils.list_filter_2487" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_filter
  store { i8*, i8* }* %"$ListUtils.list_filter_2487", { i8*, i8* }** %"$$fundef_249_env_ListUtils.list_filter_2486"
  store { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_249_cloval_2483", { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut
  %"$gasrem_2488" = load i64, i64* @_gasrem
  %"$gascmp_2489" = icmp ugt i64 1, %"$gasrem_2488"
  br i1 %"$gascmp_2489", label %"$out_of_gas_2490", label %"$have_gas_2491"

"$out_of_gas_2490":                               ; preds = %"$have_gas_2478"
  call void @_out_of_gas()
  br label %"$have_gas_2491"

"$have_gas_2491":                                 ; preds = %"$out_of_gas_2490", %"$have_gas_2478"
  %"$consume_2492" = sub i64 %"$gasrem_2488", 1
  store i64 %"$consume_2492", i64* @_gasrem
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_245_env_419"*, %TName_Bool*)* @"$fundef_245" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb
  %"$gasrem_2496" = load i64, i64* @_gasrem
  %"$gascmp_2497" = icmp ugt i64 1, %"$gasrem_2496"
  br i1 %"$gascmp_2497", label %"$out_of_gas_2498", label %"$have_gas_2499"

"$out_of_gas_2498":                               ; preds = %"$have_gas_2491"
  call void @_out_of_gas()
  br label %"$have_gas_2499"

"$have_gas_2499":                                 ; preds = %"$out_of_gas_2498", %"$have_gas_2491"
  %"$consume_2500" = sub i64 %"$gasrem_2496", 1
  store i64 %"$consume_2500", i64* @_gasrem
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_241_env_417"*, [20 x i8]*)* @"$fundef_241" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eAdminSet
  %"$gasrem_2504" = load i64, i64* @_gasrem
  %"$gascmp_2505" = icmp ugt i64 1, %"$gasrem_2504"
  br i1 %"$gascmp_2505", label %"$out_of_gas_2506", label %"$have_gas_2507"

"$out_of_gas_2506":                               ; preds = %"$have_gas_2499"
  call void @_out_of_gas()
  br label %"$have_gas_2507"

"$have_gas_2507":                                 ; preds = %"$out_of_gas_2506", %"$have_gas_2499"
  %"$consume_2508" = sub i64 %"$gasrem_2504", 1
  store i64 %"$consume_2508", i64* @_gasrem
  store { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_235_env_415"*, [20 x i8]*)* @"$fundef_235" to { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApprovedFor
  %"$gasrem_2512" = load i64, i64* @_gasrem
  %"$gascmp_2513" = icmp ugt i64 1, %"$gasrem_2512"
  br i1 %"$gascmp_2513", label %"$out_of_gas_2514", label %"$have_gas_2515"

"$out_of_gas_2514":                               ; preds = %"$have_gas_2507"
  call void @_out_of_gas()
  br label %"$have_gas_2515"

"$have_gas_2515":                                 ; preds = %"$out_of_gas_2514", %"$have_gas_2507"
  %"$consume_2516" = sub i64 %"$gasrem_2512", 1
  store i64 %"$consume_2516", i64* @_gasrem
  store { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_233_env_412"*, [20 x i8]*)* @"$fundef_233" to i8* (i8*, [20 x i8]*)*), i8* null }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApproved
  %"$gasrem_2520" = load i64, i64* @_gasrem
  %"$gascmp_2521" = icmp ugt i64 1, %"$gasrem_2520"
  br i1 %"$gascmp_2521", label %"$out_of_gas_2522", label %"$have_gas_2523"

"$out_of_gas_2522":                               ; preds = %"$have_gas_2515"
  call void @_out_of_gas()
  br label %"$have_gas_2523"

"$have_gas_2523":                                 ; preds = %"$out_of_gas_2522", %"$have_gas_2515"
  %"$consume_2524" = sub i64 %"$gasrem_2520", 1
  store i64 %"$consume_2524", i64* @_gasrem
  store { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_231_env_411"*, [20 x i8]*)* @"$fundef_231" to i8* (i8*, [20 x i8]*)*), i8* null }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eNewRegistrar
  %"$gasrem_2528" = load i64, i64* @_gasrem
  %"$gascmp_2529" = icmp ugt i64 1, %"$gasrem_2528"
  br i1 %"$gascmp_2529", label %"$out_of_gas_2530", label %"$have_gas_2531"

"$out_of_gas_2530":                               ; preds = %"$have_gas_2523"
  call void @_out_of_gas()
  br label %"$have_gas_2531"

"$have_gas_2531":                                 ; preds = %"$out_of_gas_2530", %"$have_gas_2523"
  %"$consume_2532" = sub i64 %"$gasrem_2528", 1
  store i64 %"$consume_2532", i64* @_gasrem
  store { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)* bitcast ({ i8* (i8*, %String)*, i8* } (%"$$fundef_227_env_410"*, [32 x i8]*)* @"$fundef_227" to { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain
  %"$gasrem_2536" = load i64, i64* @_gasrem
  %"$gascmp_2537" = icmp ugt i64 1, %"$gasrem_2536"
  br i1 %"$gascmp_2537", label %"$out_of_gas_2538", label %"$have_gas_2539"

"$out_of_gas_2538":                               ; preds = %"$have_gas_2531"
  call void @_out_of_gas()
  br label %"$have_gas_2539"

"$have_gas_2539":                                 ; preds = %"$out_of_gas_2538", %"$have_gas_2531"
  %"$consume_2540" = sub i64 %"$gasrem_2536", 1
  store i64 %"$consume_2540", i64* @_gasrem
  store { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)* bitcast ({ { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_221_env_408"*, [32 x i8]*)* @"$fundef_221" to { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured
  %"$gasrem_2544" = load i64, i64* @_gasrem
  %"$gascmp_2545" = icmp ugt i64 1, %"$gasrem_2544"
  br i1 %"$gascmp_2545", label %"$out_of_gas_2546", label %"$have_gas_2547"

"$out_of_gas_2546":                               ; preds = %"$have_gas_2539"
  call void @_out_of_gas()
  br label %"$have_gas_2547"

"$have_gas_2547":                                 ; preds = %"$out_of_gas_2546", %"$have_gas_2539"
  %"$consume_2548" = sub i64 %"$gasrem_2544", 1
  store i64 %"$consume_2548", i64* @_gasrem
  store { i8* (i8*, %String)*, i8* } { i8* (i8*, %String)* bitcast (i8* (%"$$fundef_219_env_405"*, %String)* @"$fundef_219" to i8* (i8*, %String)*), i8* null }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError
  %"$gasrem_2552" = load i64, i64* @_gasrem
  %"$gascmp_2553" = icmp ugt i64 1, %"$gasrem_2552"
  br i1 %"$gascmp_2553", label %"$out_of_gas_2554", label %"$have_gas_2555"

"$out_of_gas_2554":                               ; preds = %"$have_gas_2547"
  call void @_out_of_gas()
  br label %"$have_gas_2555"

"$have_gas_2555":                                 ; preds = %"$out_of_gas_2554", %"$have_gas_2547"
  %"$consume_2556" = sub i64 %"$gasrem_2552", 1
  store i64 %"$consume_2556", i64* @_gasrem
  %"$$fundef_217_envp_2557_load" = load i8*, i8** @_execptr
  %"$$fundef_217_envp_2557_salloc" = call i8* @_salloc(i8* %"$$fundef_217_envp_2557_load", i64 20)
  %"$$fundef_217_envp_2557" = bitcast i8* %"$$fundef_217_envp_2557_salloc" to %"$$fundef_217_env_404"*
  %"$$fundef_217_env_voidp_2559" = bitcast %"$$fundef_217_env_404"* %"$$fundef_217_envp_2557" to i8*
  %"$$fundef_217_cloval_2560" = insertvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)* bitcast (void (%"$$fundef_217_env_404"*, [20 x i8]*, %TName_Option_ud-registry.Record*)* @"$fundef_217" to void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*), i8* undef }, i8* %"$$fundef_217_env_voidp_2559", 1
  %"$$fundef_217_env_ud-registry.zeroByStr20_2561" = getelementptr inbounds %"$$fundef_217_env_404", %"$$fundef_217_env_404"* %"$$fundef_217_envp_2557", i32 0, i32 0
  %"$ud-registry.zeroByStr20_2562" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20
  store [20 x i8] %"$ud-registry.zeroByStr20_2562", [20 x i8]* %"$$fundef_217_env_ud-registry.zeroByStr20_2561"
  store { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$$fundef_217_cloval_2560", { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner
  %"$gasrem_2563" = load i64, i64* @_gasrem
  %"$gascmp_2564" = icmp ugt i64 1, %"$gasrem_2563"
  br i1 %"$gascmp_2564", label %"$out_of_gas_2565", label %"$have_gas_2566"

"$out_of_gas_2565":                               ; preds = %"$have_gas_2555"
  call void @_out_of_gas()
  br label %"$have_gas_2566"

"$have_gas_2566":                                 ; preds = %"$out_of_gas_2565", %"$have_gas_2555"
  %"$consume_2567" = sub i64 %"$gasrem_2563", 1
  store i64 %"$consume_2567", i64* @_gasrem
  store { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)* bitcast ({ void (i8*, [32 x i8]*, %String)*, i8* } (%"$$fundef_213_env_403"*, [32 x i8]*)* @"$fundef_213" to { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode
  %"$gasrem_2571" = load i64, i64* @_gasrem
  %"$gascmp_2572" = icmp ugt i64 1, %"$gasrem_2571"
  br i1 %"$gascmp_2572", label %"$out_of_gas_2573", label %"$have_gas_2574"

"$out_of_gas_2573":                               ; preds = %"$have_gas_2566"
  call void @_out_of_gas()
  br label %"$have_gas_2574"

"$have_gas_2574":                                 ; preds = %"$out_of_gas_2573", %"$have_gas_2566"
  %"$consume_2575" = sub i64 %"$gasrem_2571", 1
  store i64 %"$consume_2575", i64* @_gasrem
  %"$$fundef_205_envp_2576_load" = load i8*, i8** @_execptr
  %"$$fundef_205_envp_2576_salloc" = call i8* @_salloc(i8* %"$$fundef_205_envp_2576_load", i64 32)
  %"$$fundef_205_envp_2576" = bitcast i8* %"$$fundef_205_envp_2576_salloc" to %"$$fundef_205_env_401"*
  %"$$fundef_205_env_voidp_2578" = bitcast %"$$fundef_205_env_401"* %"$$fundef_205_envp_2576" to i8*
  %"$$fundef_205_cloval_2579" = insertvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_205_env_401"*, [20 x i8]*)* @"$fundef_205" to { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_205_env_voidp_2578", 1
  %"$$fundef_205_env_BoolUtils.orb_2580" = getelementptr inbounds %"$$fundef_205_env_401", %"$$fundef_205_env_401"* %"$$fundef_205_envp_2576", i32 0, i32 0
  %"$BoolUtils.orb_2581" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2581", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_205_env_BoolUtils.orb_2580"
  %"$$fundef_205_env_ud-registry.listByStr20Contains_2582" = getelementptr inbounds %"$$fundef_205_env_401", %"$$fundef_205_env_401"* %"$$fundef_205_envp_2576", i32 0, i32 1
  %"$ud-registry.listByStr20Contains_2583" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2583", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_205_env_ud-registry.listByStr20Contains_2582"
  store { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_205_cloval_2579", { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO
  ret void
}

define void @_init_state() {
entry:
  %"$records_269" = alloca %Map_ByStr32_ud-registry.Record*
  %"$gasrem_2584" = load i64, i64* @_gasrem
  %"$gascmp_2585" = icmp ugt i64 1, %"$gasrem_2584"
  br i1 %"$gascmp_2585", label %"$out_of_gas_2586", label %"$have_gas_2587"

"$out_of_gas_2586":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2587"

"$have_gas_2587":                                 ; preds = %"$out_of_gas_2586", %entry
  %"$consume_2588" = sub i64 %"$gasrem_2584", 1
  store i64 %"$consume_2588", i64* @_gasrem
  %empty = alloca %Map_ByStr32_ud-registry.Record*
  %"$gasrem_2589" = load i64, i64* @_gasrem
  %"$gascmp_2590" = icmp ugt i64 1, %"$gasrem_2589"
  br i1 %"$gascmp_2590", label %"$out_of_gas_2591", label %"$have_gas_2592"

"$out_of_gas_2591":                               ; preds = %"$have_gas_2587"
  call void @_out_of_gas()
  br label %"$have_gas_2592"

"$have_gas_2592":                                 ; preds = %"$out_of_gas_2591", %"$have_gas_2587"
  %"$consume_2593" = sub i64 %"$gasrem_2589", 1
  store i64 %"$consume_2593", i64* @_gasrem
  %"$execptr_load_2594" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_2595" = call i8* @_new_empty_map(i8* %"$execptr_load_2594")
  %"$Emp_2596" = bitcast i8* %"$_new_empty_map_call_2595" to %Map_ByStr32_ud-registry.Record*
  store %Map_ByStr32_ud-registry.Record* %"$Emp_2596", %Map_ByStr32_ud-registry.Record** %empty
  %"$gasrem_2597" = load i64, i64* @_gasrem
  %"$gascmp_2598" = icmp ugt i64 1, %"$gasrem_2597"
  br i1 %"$gascmp_2598", label %"$out_of_gas_2599", label %"$have_gas_2600"

"$out_of_gas_2599":                               ; preds = %"$have_gas_2592"
  call void @_out_of_gas()
  br label %"$have_gas_2600"

"$have_gas_2600":                                 ; preds = %"$out_of_gas_2599", %"$have_gas_2592"
  %"$consume_2601" = sub i64 %"$gasrem_2597", 1
  store i64 %"$consume_2601", i64* @_gasrem
  %rootRecord = alloca %TName_ud-registry.Record*
  %"$gasrem_2602" = load i64, i64* @_gasrem
  %"$gascmp_2603" = icmp ugt i64 1, %"$gasrem_2602"
  br i1 %"$gascmp_2603", label %"$out_of_gas_2604", label %"$have_gas_2605"

"$out_of_gas_2604":                               ; preds = %"$have_gas_2600"
  call void @_out_of_gas()
  br label %"$have_gas_2605"

"$have_gas_2605":                                 ; preds = %"$out_of_gas_2604", %"$have_gas_2600"
  %"$consume_2606" = sub i64 %"$gasrem_2602", 1
  store i64 %"$consume_2606", i64* @_gasrem
  %"$initialOwner_2607" = load [20 x i8], [20 x i8]* @initialOwner
  %"$ud-registry.zeroByStr20_2608" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20
  %"$adtval_2609_load" = load i8*, i8** @_execptr
  %"$adtval_2609_salloc" = call i8* @_salloc(i8* %"$adtval_2609_load", i64 41)
  %"$adtval_2609" = bitcast i8* %"$adtval_2609_salloc" to %CName_ud-registry.Record*
  %"$adtgep_2610" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2609", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2610"
  %"$adtgep_2611" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2609", i32 0, i32 1
  store [20 x i8] %"$initialOwner_2607", [20 x i8]* %"$adtgep_2611"
  %"$adtgep_2612" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2609", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_2608", [20 x i8]* %"$adtgep_2612"
  %"$adtptr_2613" = bitcast %CName_ud-registry.Record* %"$adtval_2609" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_2613", %TName_ud-registry.Record** %rootRecord
  %"$execptr_load_2614" = load i8*, i8** @_execptr
  %"$empty_2615" = load %Map_ByStr32_ud-registry.Record*, %Map_ByStr32_ud-registry.Record** %empty
  %"$$empty_2615_2616" = bitcast %Map_ByStr32_ud-registry.Record* %"$empty_2615" to i8*
  %"$put_rootNode_2617" = alloca [32 x i8]
  %"$rootNode_2618" = load [32 x i8], [32 x i8]* @rootNode
  store [32 x i8] %"$rootNode_2618", [32 x i8]* %"$put_rootNode_2617"
  %"$$put_rootNode_2617_2619" = bitcast [32 x i8]* %"$put_rootNode_2617" to i8*
  %"$rootRecord_2620" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %rootRecord
  %"$$rootRecord_2620_2621" = bitcast %TName_ud-registry.Record* %"$rootRecord_2620" to i8*
  %"$put_call_2622" = call i8* @_put(i8* %"$execptr_load_2614", %_TyDescrTy_Typ* @"$TyDescr_Map_322", i8* %"$$empty_2615_2616", i8* %"$$put_rootNode_2617_2619", i8* %"$$rootRecord_2620_2621")
  %"$_put_2623" = bitcast i8* %"$put_call_2622" to %Map_ByStr32_ud-registry.Record*
  store %Map_ByStr32_ud-registry.Record* %"$_put_2623", %Map_ByStr32_ud-registry.Record** %"$records_269"
  %"$execptr_load_2624" = load i8*, i8** @_execptr
  %"$$records_269_2626" = load %Map_ByStr32_ud-registry.Record*, %Map_ByStr32_ud-registry.Record** %"$records_269"
  %"$update_value_2627" = bitcast %Map_ByStr32_ud-registry.Record* %"$$records_269_2626" to i8*
  call void @_update_field(i8* %"$execptr_load_2624", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_2625", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 0, i8* null, i8* %"$update_value_2627")
  %"$registrar_270" = alloca [20 x i8]
  %"$gasrem_2628" = load i64, i64* @_gasrem
  %"$gascmp_2629" = icmp ugt i64 1, %"$gasrem_2628"
  br i1 %"$gascmp_2629", label %"$out_of_gas_2630", label %"$have_gas_2631"

"$out_of_gas_2630":                               ; preds = %"$have_gas_2605"
  call void @_out_of_gas()
  br label %"$have_gas_2631"

"$have_gas_2631":                                 ; preds = %"$out_of_gas_2630", %"$have_gas_2605"
  %"$consume_2632" = sub i64 %"$gasrem_2628", 1
  store i64 %"$consume_2632", i64* @_gasrem
  %"$ud-registry.zeroByStr20_2633" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20
  store [20 x i8] %"$ud-registry.zeroByStr20_2633", [20 x i8]* %"$registrar_270"
  %"$execptr_load_2634" = load i8*, i8** @_execptr
  %"$$registrar_270_2636" = load [20 x i8], [20 x i8]* %"$registrar_270"
  %"$update_value_2637" = alloca [20 x i8]
  store [20 x i8] %"$$registrar_270_2636", [20 x i8]* %"$update_value_2637"
  %"$update_value_2638" = bitcast [20 x i8]* %"$update_value_2637" to i8*
  call void @_update_field(i8* %"$execptr_load_2634", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_2635", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i32 0, i8* null, i8* %"$update_value_2638")
  %"$approvals_271" = alloca %Map_ByStr32_ByStr20*
  %"$gasrem_2639" = load i64, i64* @_gasrem
  %"$gascmp_2640" = icmp ugt i64 1, %"$gasrem_2639"
  br i1 %"$gascmp_2640", label %"$out_of_gas_2641", label %"$have_gas_2642"

"$out_of_gas_2641":                               ; preds = %"$have_gas_2631"
  call void @_out_of_gas()
  br label %"$have_gas_2642"

"$have_gas_2642":                                 ; preds = %"$out_of_gas_2641", %"$have_gas_2631"
  %"$consume_2643" = sub i64 %"$gasrem_2639", 1
  store i64 %"$consume_2643", i64* @_gasrem
  %"$execptr_load_2644" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_2645" = call i8* @_new_empty_map(i8* %"$execptr_load_2644")
  %"$Emp_2646" = bitcast i8* %"$_new_empty_map_call_2645" to %Map_ByStr32_ByStr20*
  store %Map_ByStr32_ByStr20* %"$Emp_2646", %Map_ByStr32_ByStr20** %"$approvals_271"
  %"$execptr_load_2647" = load i8*, i8** @_execptr
  %"$$approvals_271_2649" = load %Map_ByStr32_ByStr20*, %Map_ByStr32_ByStr20** %"$approvals_271"
  %"$update_value_2650" = bitcast %Map_ByStr32_ByStr20* %"$$approvals_271_2649" to i8*
  call void @_update_field(i8* %"$execptr_load_2647", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_2648", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 0, i8* null, i8* %"$update_value_2650")
  %"$operators_272" = alloca %"Map_ByStr20_List_(ByStr20)"*
  %"$gasrem_2651" = load i64, i64* @_gasrem
  %"$gascmp_2652" = icmp ugt i64 1, %"$gasrem_2651"
  br i1 %"$gascmp_2652", label %"$out_of_gas_2653", label %"$have_gas_2654"

"$out_of_gas_2653":                               ; preds = %"$have_gas_2642"
  call void @_out_of_gas()
  br label %"$have_gas_2654"

"$have_gas_2654":                                 ; preds = %"$out_of_gas_2653", %"$have_gas_2642"
  %"$consume_2655" = sub i64 %"$gasrem_2651", 1
  store i64 %"$consume_2655", i64* @_gasrem
  %"$execptr_load_2656" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_2657" = call i8* @_new_empty_map(i8* %"$execptr_load_2656")
  %"$Emp_2658" = bitcast i8* %"$_new_empty_map_call_2657" to %"Map_ByStr20_List_(ByStr20)"*
  store %"Map_ByStr20_List_(ByStr20)"* %"$Emp_2658", %"Map_ByStr20_List_(ByStr20)"** %"$operators_272"
  %"$execptr_load_2659" = load i8*, i8** @_execptr
  %"$$operators_272_2661" = load %"Map_ByStr20_List_(ByStr20)"*, %"Map_ByStr20_List_(ByStr20)"** %"$operators_272"
  %"$update_value_2662" = bitcast %"Map_ByStr20_List_(ByStr20)"* %"$$operators_272_2661" to i8*
  call void @_update_field(i8* %"$execptr_load_2659", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_2660", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 0, i8* null, i8* %"$update_value_2662")
  %"$admins_273" = alloca %TName_List_ByStr20*
  %"$gasrem_2663" = load i64, i64* @_gasrem
  %"$gascmp_2664" = icmp ugt i64 1, %"$gasrem_2663"
  br i1 %"$gascmp_2664", label %"$out_of_gas_2665", label %"$have_gas_2666"

"$out_of_gas_2665":                               ; preds = %"$have_gas_2654"
  call void @_out_of_gas()
  br label %"$have_gas_2666"

"$have_gas_2666":                                 ; preds = %"$out_of_gas_2665", %"$have_gas_2654"
  %"$consume_2667" = sub i64 %"$gasrem_2663", 1
  store i64 %"$consume_2667", i64* @_gasrem
  %"$initialOwner_2668" = load [20 x i8], [20 x i8]* @initialOwner
  %"$ud-registry.nilByStr20_2669" = load %TName_List_ByStr20*, %TName_List_ByStr20** @ud-registry.nilByStr20
  %"$adtval_2670_load" = load i8*, i8** @_execptr
  %"$adtval_2670_salloc" = call i8* @_salloc(i8* %"$adtval_2670_load", i64 29)
  %"$adtval_2670" = bitcast i8* %"$adtval_2670_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_2671" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2670", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2671"
  %"$adtgep_2672" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2670", i32 0, i32 1
  store [20 x i8] %"$initialOwner_2668", [20 x i8]* %"$adtgep_2672"
  %"$adtgep_2673" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2670", i32 0, i32 2
  store %TName_List_ByStr20* %"$ud-registry.nilByStr20_2669", %TName_List_ByStr20** %"$adtgep_2673"
  %"$adtptr_2674" = bitcast %CName_Cons_ByStr20* %"$adtval_2670" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2674", %TName_List_ByStr20** %"$admins_273"
  %"$execptr_load_2675" = load i8*, i8** @_execptr
  %"$$admins_273_2677" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$admins_273"
  %"$update_value_2678" = bitcast %TName_List_ByStr20* %"$$admins_273_2677" to i8*
  call void @_update_field(i8* %"$execptr_load_2675", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2676", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i8* %"$update_value_2678")
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setAdmin_2679"(%Uint128 %_amount, [20 x i8]* %"$_sender_2680", [20 x i8]* %"$address_2681", %TName_Bool* %isApproved) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2680"
  %address = load [20 x i8], [20 x i8]* %"$address_2681"
  %currentAdmins = alloca %TName_List_ByStr20*
  %"$execptr_load_2682" = load i8*, i8** @_execptr
  %"$currentAdmins_2684" = call i8* @_fetch_field(i8* %"$execptr_load_2682", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2683", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i32 1)
  %"$currentAdmins_2685" = bitcast i8* %"$currentAdmins_2684" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_2685", %TName_List_ByStr20** %currentAdmins
  %"$currentAdmins_2686" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins
  %"$$currentAdmins_2686_2687" = bitcast %TName_List_ByStr20* %"$currentAdmins_2686" to i8*
  %"$_literal_cost_call_2688" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$currentAdmins_2686_2687")
  %"$gasadd_2689" = add i64 %"$_literal_cost_call_2688", 0
  %"$gasrem_2690" = load i64, i64* @_gasrem
  %"$gascmp_2691" = icmp ugt i64 %"$gasadd_2689", %"$gasrem_2690"
  br i1 %"$gascmp_2691", label %"$out_of_gas_2692", label %"$have_gas_2693"

"$out_of_gas_2692":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2693"

"$have_gas_2693":                                 ; preds = %"$out_of_gas_2692", %entry
  %"$consume_2694" = sub i64 %"$gasrem_2690", %"$gasadd_2689"
  store i64 %"$consume_2694", i64* @_gasrem
  %"$gasrem_2695" = load i64, i64* @_gasrem
  %"$gascmp_2696" = icmp ugt i64 1, %"$gasrem_2695"
  br i1 %"$gascmp_2696", label %"$out_of_gas_2697", label %"$have_gas_2698"

"$out_of_gas_2697":                               ; preds = %"$have_gas_2693"
  call void @_out_of_gas()
  br label %"$have_gas_2698"

"$have_gas_2698":                                 ; preds = %"$out_of_gas_2697", %"$have_gas_2693"
  %"$consume_2699" = sub i64 %"$gasrem_2695", 1
  store i64 %"$consume_2699", i64* @_gasrem
  %isSenderAdmin = alloca %TName_Bool*
  %"$gasrem_2700" = load i64, i64* @_gasrem
  %"$gascmp_2701" = icmp ugt i64 1, %"$gasrem_2700"
  br i1 %"$gascmp_2701", label %"$out_of_gas_2702", label %"$have_gas_2703"

"$out_of_gas_2702":                               ; preds = %"$have_gas_2698"
  call void @_out_of_gas()
  br label %"$have_gas_2703"

"$have_gas_2703":                                 ; preds = %"$out_of_gas_2702", %"$have_gas_2698"
  %"$consume_2704" = sub i64 %"$gasrem_2700", 1
  store i64 %"$consume_2704", i64* @_gasrem
  %"$ud-registry.listByStr20Contains_51" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.listByStr20Contains_2705" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains
  %"$ud-registry.listByStr20Contains_fptr_2706" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2705", 0
  %"$ud-registry.listByStr20Contains_envptr_2707" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2705", 1
  %"$currentAdmins_2708" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins
  %"$ud-registry.listByStr20Contains_call_2709" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_2706"(i8* %"$ud-registry.listByStr20Contains_envptr_2707", %TName_List_ByStr20* %"$currentAdmins_2708")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_2709", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_51"
  %"$ud-registry.listByStr20Contains_52" = alloca %TName_Bool*
  %"$$ud-registry.listByStr20Contains_51_2710" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_51"
  %"$$ud-registry.listByStr20Contains_51_fptr_2711" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_51_2710", 0
  %"$$ud-registry.listByStr20Contains_51_envptr_2712" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_51_2710", 1
  %"$$ud-registry.listByStr20Contains_51__sender_2713" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_51__sender_2713"
  %"$$ud-registry.listByStr20Contains_51_call_2714" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_51_fptr_2711"(i8* %"$$ud-registry.listByStr20Contains_51_envptr_2712", [20 x i8]* %"$$ud-registry.listByStr20Contains_51__sender_2713")
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_51_call_2714", %TName_Bool** %"$ud-registry.listByStr20Contains_52"
  %"$$ud-registry.listByStr20Contains_52_2715" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_52"
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_52_2715", %TName_Bool** %isSenderAdmin
  %"$gasrem_2716" = load i64, i64* @_gasrem
  %"$gascmp_2717" = icmp ugt i64 2, %"$gasrem_2716"
  br i1 %"$gascmp_2717", label %"$out_of_gas_2718", label %"$have_gas_2719"

"$out_of_gas_2718":                               ; preds = %"$have_gas_2703"
  call void @_out_of_gas()
  br label %"$have_gas_2719"

"$have_gas_2719":                                 ; preds = %"$out_of_gas_2718", %"$have_gas_2703"
  %"$consume_2720" = sub i64 %"$gasrem_2716", 2
  store i64 %"$consume_2720", i64* @_gasrem
  %"$isSenderAdmin_2722" = load %TName_Bool*, %TName_Bool** %isSenderAdmin
  %"$isSenderAdmin_tag_2723" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_2722", i32 0, i32 0
  %"$isSenderAdmin_tag_2724" = load i8, i8* %"$isSenderAdmin_tag_2723"
  switch i8 %"$isSenderAdmin_tag_2724", label %"$empty_default_2725" [
    i8 0, label %"$True_2726"
    i8 1, label %"$False_2868"
  ]

"$True_2726":                                     ; preds = %"$have_gas_2719"
  %"$isSenderAdmin_2727" = bitcast %TName_Bool* %"$isSenderAdmin_2722" to %CName_True*
  %"$gasrem_2728" = load i64, i64* @_gasrem
  %"$gascmp_2729" = icmp ugt i64 1, %"$gasrem_2728"
  br i1 %"$gascmp_2729", label %"$out_of_gas_2730", label %"$have_gas_2731"

"$out_of_gas_2730":                               ; preds = %"$True_2726"
  call void @_out_of_gas()
  br label %"$have_gas_2731"

"$have_gas_2731":                                 ; preds = %"$out_of_gas_2730", %"$True_2726"
  %"$consume_2732" = sub i64 %"$gasrem_2728", 1
  store i64 %"$consume_2732", i64* @_gasrem
  %needsToChange = alloca %TName_Bool*
  %"$gasrem_2733" = load i64, i64* @_gasrem
  %"$gascmp_2734" = icmp ugt i64 1, %"$gasrem_2733"
  br i1 %"$gascmp_2734", label %"$out_of_gas_2735", label %"$have_gas_2736"

"$out_of_gas_2735":                               ; preds = %"$have_gas_2731"
  call void @_out_of_gas()
  br label %"$have_gas_2736"

"$have_gas_2736":                                 ; preds = %"$out_of_gas_2735", %"$have_gas_2731"
  %"$consume_2737" = sub i64 %"$gasrem_2733", 1
  store i64 %"$consume_2737", i64* @_gasrem
  %b = alloca %TName_Bool*
  %"$gasrem_2738" = load i64, i64* @_gasrem
  %"$gascmp_2739" = icmp ugt i64 1, %"$gasrem_2738"
  br i1 %"$gascmp_2739", label %"$out_of_gas_2740", label %"$have_gas_2741"

"$out_of_gas_2740":                               ; preds = %"$have_gas_2736"
  call void @_out_of_gas()
  br label %"$have_gas_2741"

"$have_gas_2741":                                 ; preds = %"$out_of_gas_2740", %"$have_gas_2736"
  %"$consume_2742" = sub i64 %"$gasrem_2738", 1
  store i64 %"$consume_2742", i64* @_gasrem
  %"$ud-registry.listByStr20Excludes_46" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.listByStr20Excludes_2743" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes
  %"$ud-registry.listByStr20Excludes_fptr_2744" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_2743", 0
  %"$ud-registry.listByStr20Excludes_envptr_2745" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_2743", 1
  %"$currentAdmins_2746" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins
  %"$ud-registry.listByStr20Excludes_call_2747" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_fptr_2744"(i8* %"$ud-registry.listByStr20Excludes_envptr_2745", %TName_List_ByStr20* %"$currentAdmins_2746")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_call_2747", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_46"
  %"$ud-registry.listByStr20Excludes_47" = alloca %TName_Bool*
  %"$$ud-registry.listByStr20Excludes_46_2748" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_46"
  %"$$ud-registry.listByStr20Excludes_46_fptr_2749" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_46_2748", 0
  %"$$ud-registry.listByStr20Excludes_46_envptr_2750" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_46_2748", 1
  %"$$ud-registry.listByStr20Excludes_46_address_2751" = alloca [20 x i8]
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20Excludes_46_address_2751"
  %"$$ud-registry.listByStr20Excludes_46_call_2752" = call %TName_Bool* %"$$ud-registry.listByStr20Excludes_46_fptr_2749"(i8* %"$$ud-registry.listByStr20Excludes_46_envptr_2750", [20 x i8]* %"$$ud-registry.listByStr20Excludes_46_address_2751")
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_46_call_2752", %TName_Bool** %"$ud-registry.listByStr20Excludes_47"
  %"$$ud-registry.listByStr20Excludes_47_2753" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Excludes_47"
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_47_2753", %TName_Bool** %b
  %"$gasrem_2754" = load i64, i64* @_gasrem
  %"$gascmp_2755" = icmp ugt i64 1, %"$gasrem_2754"
  br i1 %"$gascmp_2755", label %"$out_of_gas_2756", label %"$have_gas_2757"

"$out_of_gas_2756":                               ; preds = %"$have_gas_2741"
  call void @_out_of_gas()
  br label %"$have_gas_2757"

"$have_gas_2757":                                 ; preds = %"$out_of_gas_2756", %"$have_gas_2741"
  %"$consume_2758" = sub i64 %"$gasrem_2754", 1
  store i64 %"$consume_2758", i64* @_gasrem
  %"$ud-registry.xandb_48" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$ud-registry.xandb_2759" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb
  %"$ud-registry.xandb_fptr_2760" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2759", 0
  %"$ud-registry.xandb_envptr_2761" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2759", 1
  %"$b_2762" = load %TName_Bool*, %TName_Bool** %b
  %"$ud-registry.xandb_call_2763" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_fptr_2760"(i8* %"$ud-registry.xandb_envptr_2761", %TName_Bool* %"$b_2762")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_call_2763", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_48"
  %"$ud-registry.xandb_49" = alloca %TName_Bool*
  %"$$ud-registry.xandb_48_2764" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_48"
  %"$$ud-registry.xandb_48_fptr_2765" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_48_2764", 0
  %"$$ud-registry.xandb_48_envptr_2766" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_48_2764", 1
  %"$$ud-registry.xandb_48_call_2767" = call %TName_Bool* %"$$ud-registry.xandb_48_fptr_2765"(i8* %"$$ud-registry.xandb_48_envptr_2766", %TName_Bool* %isApproved)
  store %TName_Bool* %"$$ud-registry.xandb_48_call_2767", %TName_Bool** %"$ud-registry.xandb_49"
  %"$$ud-registry.xandb_49_2768" = load %TName_Bool*, %TName_Bool** %"$ud-registry.xandb_49"
  store %TName_Bool* %"$$ud-registry.xandb_49_2768", %TName_Bool** %needsToChange
  %"$gasrem_2769" = load i64, i64* @_gasrem
  %"$gascmp_2770" = icmp ugt i64 2, %"$gasrem_2769"
  br i1 %"$gascmp_2770", label %"$out_of_gas_2771", label %"$have_gas_2772"

"$out_of_gas_2771":                               ; preds = %"$have_gas_2757"
  call void @_out_of_gas()
  br label %"$have_gas_2772"

"$have_gas_2772":                                 ; preds = %"$out_of_gas_2771", %"$have_gas_2757"
  %"$consume_2773" = sub i64 %"$gasrem_2769", 2
  store i64 %"$consume_2773", i64* @_gasrem
  %"$needsToChange_2775" = load %TName_Bool*, %TName_Bool** %needsToChange
  %"$needsToChange_tag_2776" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_2775", i32 0, i32 0
  %"$needsToChange_tag_2777" = load i8, i8* %"$needsToChange_tag_2776"
  switch i8 %"$needsToChange_tag_2777", label %"$default_2778" [
    i8 0, label %"$True_2779"
  ]

"$True_2779":                                     ; preds = %"$have_gas_2772"
  %"$needsToChange_2780" = bitcast %TName_Bool* %"$needsToChange_2775" to %CName_True*
  %"$gasrem_2781" = load i64, i64* @_gasrem
  %"$gascmp_2782" = icmp ugt i64 1, %"$gasrem_2781"
  br i1 %"$gascmp_2782", label %"$out_of_gas_2783", label %"$have_gas_2784"

"$out_of_gas_2783":                               ; preds = %"$True_2779"
  call void @_out_of_gas()
  br label %"$have_gas_2784"

"$have_gas_2784":                                 ; preds = %"$out_of_gas_2783", %"$True_2779"
  %"$consume_2785" = sub i64 %"$gasrem_2781", 1
  store i64 %"$consume_2785", i64* @_gasrem
  %newAdmins = alloca %TName_List_ByStr20*
  %"$gasrem_2786" = load i64, i64* @_gasrem
  %"$gascmp_2787" = icmp ugt i64 2, %"$gasrem_2786"
  br i1 %"$gascmp_2787", label %"$out_of_gas_2788", label %"$have_gas_2789"

"$out_of_gas_2788":                               ; preds = %"$have_gas_2784"
  call void @_out_of_gas()
  br label %"$have_gas_2789"

"$have_gas_2789":                                 ; preds = %"$out_of_gas_2788", %"$have_gas_2784"
  %"$consume_2790" = sub i64 %"$gasrem_2786", 2
  store i64 %"$consume_2790", i64* @_gasrem
  %"$isApproved_tag_2792" = getelementptr inbounds %TName_Bool, %TName_Bool* %isApproved, i32 0, i32 0
  %"$isApproved_tag_2793" = load i8, i8* %"$isApproved_tag_2792"
  switch i8 %"$isApproved_tag_2793", label %"$empty_default_2794" [
    i8 0, label %"$True_2795"
    i8 1, label %"$False_2808"
  ]

"$True_2795":                                     ; preds = %"$have_gas_2789"
  %"$isApproved_2796" = bitcast %TName_Bool* %isApproved to %CName_True*
  %"$gasrem_2797" = load i64, i64* @_gasrem
  %"$gascmp_2798" = icmp ugt i64 1, %"$gasrem_2797"
  br i1 %"$gascmp_2798", label %"$out_of_gas_2799", label %"$have_gas_2800"

"$out_of_gas_2799":                               ; preds = %"$True_2795"
  call void @_out_of_gas()
  br label %"$have_gas_2800"

"$have_gas_2800":                                 ; preds = %"$out_of_gas_2799", %"$True_2795"
  %"$consume_2801" = sub i64 %"$gasrem_2797", 1
  store i64 %"$consume_2801", i64* @_gasrem
  %"$currentAdmins_2802" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins
  %"$adtval_2803_load" = load i8*, i8** @_execptr
  %"$adtval_2803_salloc" = call i8* @_salloc(i8* %"$adtval_2803_load", i64 29)
  %"$adtval_2803" = bitcast i8* %"$adtval_2803_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_2804" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2803", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2804"
  %"$adtgep_2805" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2803", i32 0, i32 1
  store [20 x i8] %address, [20 x i8]* %"$adtgep_2805"
  %"$adtgep_2806" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2803", i32 0, i32 2
  store %TName_List_ByStr20* %"$currentAdmins_2802", %TName_List_ByStr20** %"$adtgep_2806"
  %"$adtptr_2807" = bitcast %CName_Cons_ByStr20* %"$adtval_2803" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2807", %TName_List_ByStr20** %newAdmins
  br label %"$matchsucc_2791"

"$False_2808":                                    ; preds = %"$have_gas_2789"
  %"$isApproved_2809" = bitcast %TName_Bool* %isApproved to %CName_False*
  %"$gasrem_2810" = load i64, i64* @_gasrem
  %"$gascmp_2811" = icmp ugt i64 1, %"$gasrem_2810"
  br i1 %"$gascmp_2811", label %"$out_of_gas_2812", label %"$have_gas_2813"

"$out_of_gas_2812":                               ; preds = %"$False_2808"
  call void @_out_of_gas()
  br label %"$have_gas_2813"

"$have_gas_2813":                                 ; preds = %"$out_of_gas_2812", %"$False_2808"
  %"$consume_2814" = sub i64 %"$gasrem_2810", 1
  store i64 %"$consume_2814", i64* @_gasrem
  %"$ud-registry.listByStr20FilterOut_44" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.listByStr20FilterOut_2815" = load { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut
  %"$ud-registry.listByStr20FilterOut_fptr_2816" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_2815", 0
  %"$ud-registry.listByStr20FilterOut_envptr_2817" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_2815", 1
  %"$currentAdmins_2818" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins
  %"$ud-registry.listByStr20FilterOut_call_2819" = call { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_fptr_2816"(i8* %"$ud-registry.listByStr20FilterOut_envptr_2817", %TName_List_ByStr20* %"$currentAdmins_2818")
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_call_2819", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_44"
  %"$ud-registry.listByStr20FilterOut_45" = alloca %TName_List_ByStr20*
  %"$$ud-registry.listByStr20FilterOut_44_2820" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_44"
  %"$$ud-registry.listByStr20FilterOut_44_fptr_2821" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_44_2820", 0
  %"$$ud-registry.listByStr20FilterOut_44_envptr_2822" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_44_2820", 1
  %"$$ud-registry.listByStr20FilterOut_44_address_2823" = alloca [20 x i8]
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20FilterOut_44_address_2823"
  %"$$ud-registry.listByStr20FilterOut_44_call_2824" = call %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_44_fptr_2821"(i8* %"$$ud-registry.listByStr20FilterOut_44_envptr_2822", [20 x i8]* %"$$ud-registry.listByStr20FilterOut_44_address_2823")
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_44_call_2824", %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_45"
  %"$$ud-registry.listByStr20FilterOut_45_2825" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_45"
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_45_2825", %TName_List_ByStr20** %newAdmins
  br label %"$matchsucc_2791"

"$empty_default_2794":                            ; preds = %"$have_gas_2789"
  br label %"$matchsucc_2791"

"$matchsucc_2791":                                ; preds = %"$have_gas_2813", %"$have_gas_2800", %"$empty_default_2794"
  %"$newAdmins_2826" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newAdmins
  %"$$newAdmins_2826_2827" = bitcast %TName_List_ByStr20* %"$newAdmins_2826" to i8*
  %"$_literal_cost_call_2828" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$newAdmins_2826_2827")
  %"$gasrem_2829" = load i64, i64* @_gasrem
  %"$gascmp_2830" = icmp ugt i64 %"$_literal_cost_call_2828", %"$gasrem_2829"
  br i1 %"$gascmp_2830", label %"$out_of_gas_2831", label %"$have_gas_2832"

"$out_of_gas_2831":                               ; preds = %"$matchsucc_2791"
  call void @_out_of_gas()
  br label %"$have_gas_2832"

"$have_gas_2832":                                 ; preds = %"$out_of_gas_2831", %"$matchsucc_2791"
  %"$consume_2833" = sub i64 %"$gasrem_2829", %"$_literal_cost_call_2828"
  store i64 %"$consume_2833", i64* @_gasrem
  %"$execptr_load_2834" = load i8*, i8** @_execptr
  %"$newAdmins_2836" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newAdmins
  %"$update_value_2837" = bitcast %TName_List_ByStr20* %"$newAdmins_2836" to i8*
  call void @_update_field(i8* %"$execptr_load_2834", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2835", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i8* %"$update_value_2837")
  %"$gasrem_2838" = load i64, i64* @_gasrem
  %"$gascmp_2839" = icmp ugt i64 1, %"$gasrem_2838"
  br i1 %"$gascmp_2839", label %"$out_of_gas_2840", label %"$have_gas_2841"

"$out_of_gas_2840":                               ; preds = %"$have_gas_2832"
  call void @_out_of_gas()
  br label %"$have_gas_2841"

"$have_gas_2841":                                 ; preds = %"$out_of_gas_2840", %"$have_gas_2832"
  %"$consume_2842" = sub i64 %"$gasrem_2838", 1
  store i64 %"$consume_2842", i64* @_gasrem
  %e = alloca i8*
  %"$gasrem_2843" = load i64, i64* @_gasrem
  %"$gascmp_2844" = icmp ugt i64 1, %"$gasrem_2843"
  br i1 %"$gascmp_2844", label %"$out_of_gas_2845", label %"$have_gas_2846"

"$out_of_gas_2845":                               ; preds = %"$have_gas_2841"
  call void @_out_of_gas()
  br label %"$have_gas_2846"

"$have_gas_2846":                                 ; preds = %"$out_of_gas_2845", %"$have_gas_2841"
  %"$consume_2847" = sub i64 %"$gasrem_2843", 1
  store i64 %"$consume_2847", i64* @_gasrem
  %"$ud-registry.eAdminSet_42" = alloca { i8* (i8*, %TName_Bool*)*, i8* }
  %"$ud-registry.eAdminSet_2848" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eAdminSet
  %"$ud-registry.eAdminSet_fptr_2849" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eAdminSet_2848", 0
  %"$ud-registry.eAdminSet_envptr_2850" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eAdminSet_2848", 1
  %"$ud-registry.eAdminSet_address_2851" = alloca [20 x i8]
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eAdminSet_address_2851"
  %"$ud-registry.eAdminSet_call_2852" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.eAdminSet_fptr_2849"(i8* %"$ud-registry.eAdminSet_envptr_2850", [20 x i8]* %"$ud-registry.eAdminSet_address_2851")
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.eAdminSet_call_2852", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eAdminSet_42"
  %"$ud-registry.eAdminSet_43" = alloca i8*
  %"$$ud-registry.eAdminSet_42_2853" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eAdminSet_42"
  %"$$ud-registry.eAdminSet_42_fptr_2854" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eAdminSet_42_2853", 0
  %"$$ud-registry.eAdminSet_42_envptr_2855" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eAdminSet_42_2853", 1
  %"$$ud-registry.eAdminSet_42_call_2856" = call i8* %"$$ud-registry.eAdminSet_42_fptr_2854"(i8* %"$$ud-registry.eAdminSet_42_envptr_2855", %TName_Bool* %isApproved)
  store i8* %"$$ud-registry.eAdminSet_42_call_2856", i8** %"$ud-registry.eAdminSet_43"
  %"$$ud-registry.eAdminSet_43_2857" = load i8*, i8** %"$ud-registry.eAdminSet_43"
  store i8* %"$$ud-registry.eAdminSet_43_2857", i8** %e
  %"$e_2858" = load i8*, i8** %e
  %"$_literal_cost_call_2860" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_2858")
  %"$gasrem_2861" = load i64, i64* @_gasrem
  %"$gascmp_2862" = icmp ugt i64 %"$_literal_cost_call_2860", %"$gasrem_2861"
  br i1 %"$gascmp_2862", label %"$out_of_gas_2863", label %"$have_gas_2864"

"$out_of_gas_2863":                               ; preds = %"$have_gas_2846"
  call void @_out_of_gas()
  br label %"$have_gas_2864"

"$have_gas_2864":                                 ; preds = %"$out_of_gas_2863", %"$have_gas_2846"
  %"$consume_2865" = sub i64 %"$gasrem_2861", %"$_literal_cost_call_2860"
  store i64 %"$consume_2865", i64* @_gasrem
  %"$execptr_load_2866" = load i8*, i8** @_execptr
  %"$e_2867" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_2866", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_2867")
  br label %"$matchsucc_2774"

"$default_2778":                                  ; preds = %"$have_gas_2772"
  br label %"$joinp_1"

"$joinp_1":                                       ; preds = %"$default_2778"
  br label %"$matchsucc_2774"

"$matchsucc_2774":                                ; preds = %"$have_gas_2864", %"$joinp_1"
  br label %"$matchsucc_2721"

"$False_2868":                                    ; preds = %"$have_gas_2719"
  %"$isSenderAdmin_2869" = bitcast %TName_Bool* %"$isSenderAdmin_2722" to %CName_False*
  %"$gasrem_2870" = load i64, i64* @_gasrem
  %"$gascmp_2871" = icmp ugt i64 1, %"$gasrem_2870"
  br i1 %"$gascmp_2871", label %"$out_of_gas_2872", label %"$have_gas_2873"

"$out_of_gas_2872":                               ; preds = %"$False_2868"
  call void @_out_of_gas()
  br label %"$have_gas_2873"

"$have_gas_2873":                                 ; preds = %"$out_of_gas_2872", %"$False_2868"
  %"$consume_2874" = sub i64 %"$gasrem_2870", 1
  store i64 %"$consume_2874", i64* @_gasrem
  %e1 = alloca i8*
  %"$gasrem_2875" = load i64, i64* @_gasrem
  %"$gascmp_2876" = icmp ugt i64 1, %"$gasrem_2875"
  br i1 %"$gascmp_2876", label %"$out_of_gas_2877", label %"$have_gas_2878"

"$out_of_gas_2877":                               ; preds = %"$have_gas_2873"
  call void @_out_of_gas()
  br label %"$have_gas_2878"

"$have_gas_2878":                                 ; preds = %"$out_of_gas_2877", %"$have_gas_2873"
  %"$consume_2879" = sub i64 %"$gasrem_2875", 1
  store i64 %"$consume_2879", i64* @_gasrem
  %m = alloca %String
  %"$gasrem_2880" = load i64, i64* @_gasrem
  %"$gascmp_2881" = icmp ugt i64 1, %"$gasrem_2880"
  br i1 %"$gascmp_2881", label %"$out_of_gas_2882", label %"$have_gas_2883"

"$out_of_gas_2882":                               ; preds = %"$have_gas_2878"
  call void @_out_of_gas()
  br label %"$have_gas_2883"

"$have_gas_2883":                                 ; preds = %"$out_of_gas_2882", %"$have_gas_2878"
  %"$consume_2884" = sub i64 %"$gasrem_2880", 1
  store i64 %"$consume_2884", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$stringlit_2885", i32 0, i32 0), i32 26 }, %String* %m
  %"$gasrem_2886" = load i64, i64* @_gasrem
  %"$gascmp_2887" = icmp ugt i64 1, %"$gasrem_2886"
  br i1 %"$gascmp_2887", label %"$out_of_gas_2888", label %"$have_gas_2889"

"$out_of_gas_2888":                               ; preds = %"$have_gas_2883"
  call void @_out_of_gas()
  br label %"$have_gas_2889"

"$have_gas_2889":                                 ; preds = %"$out_of_gas_2888", %"$have_gas_2883"
  %"$consume_2890" = sub i64 %"$gasrem_2886", 1
  store i64 %"$consume_2890", i64* @_gasrem
  %"$ud-registry.eError_50" = alloca i8*
  %"$ud-registry.eError_2891" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError
  %"$ud-registry.eError_fptr_2892" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2891", 0
  %"$ud-registry.eError_envptr_2893" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2891", 1
  %"$m_2894" = load %String, %String* %m
  %"$ud-registry.eError_call_2895" = call i8* %"$ud-registry.eError_fptr_2892"(i8* %"$ud-registry.eError_envptr_2893", %String %"$m_2894")
  store i8* %"$ud-registry.eError_call_2895", i8** %"$ud-registry.eError_50"
  %"$$ud-registry.eError_50_2896" = load i8*, i8** %"$ud-registry.eError_50"
  store i8* %"$$ud-registry.eError_50_2896", i8** %e1
  %"$e_2897" = load i8*, i8** %e1
  %"$_literal_cost_call_2899" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_2897")
  %"$gasrem_2900" = load i64, i64* @_gasrem
  %"$gascmp_2901" = icmp ugt i64 %"$_literal_cost_call_2899", %"$gasrem_2900"
  br i1 %"$gascmp_2901", label %"$out_of_gas_2902", label %"$have_gas_2903"

"$out_of_gas_2902":                               ; preds = %"$have_gas_2889"
  call void @_out_of_gas()
  br label %"$have_gas_2903"

"$have_gas_2903":                                 ; preds = %"$out_of_gas_2902", %"$have_gas_2889"
  %"$consume_2904" = sub i64 %"$gasrem_2900", %"$_literal_cost_call_2899"
  store i64 %"$consume_2904", i64* @_gasrem
  %"$execptr_load_2905" = load i8*, i8** @_execptr
  %"$e_2906" = load i8*, i8** %e1
  call void @_event(i8* %"$execptr_load_2905", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_2906")
  br label %"$matchsucc_2721"

"$empty_default_2725":                            ; preds = %"$have_gas_2719"
  br label %"$matchsucc_2721"

"$matchsucc_2721":                                ; preds = %"$have_gas_2903", %"$matchsucc_2774", %"$empty_default_2725"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) {
entry:
  %"$_amount_2908" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2909" = bitcast i8* %"$_amount_2908" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2909"
  %"$_sender_2910" = getelementptr i8, i8* %0, i32 16
  %"$_sender_2911" = bitcast i8* %"$_sender_2910" to [20 x i8]*
  %"$address_2912" = getelementptr i8, i8* %0, i32 36
  %"$address_2913" = bitcast i8* %"$address_2912" to [20 x i8]*
  %"$isApproved_2914" = getelementptr i8, i8* %0, i32 56
  %"$isApproved_2915" = bitcast i8* %"$isApproved_2914" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_2915"
  call void @"$setAdmin_2679"(%Uint128 %_amount, [20 x i8]* %"$_sender_2911", [20 x i8]* %"$address_2913", %TName_Bool* %isApproved)
  ret void
}

define internal void @"$approve_2916"(%Uint128 %_amount, [20 x i8]* %"$_sender_2917", [32 x i8]* %"$node_2918", [20 x i8]* %"$address_2919") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2917"
  %node = load [32 x i8], [32 x i8]* %"$node_2918"
  %address = load [20 x i8], [20 x i8]* %"$address_2919"
  %maybeRecord = alloca %TName_Option_ud-registry.Record*
  %"$indices_buf_2920_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_2920_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2920_salloc_load", i64 32)
  %"$indices_buf_2920_salloc" = bitcast i8* %"$indices_buf_2920_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2920" = bitcast [32 x i8]* %"$indices_buf_2920_salloc" to i8*
  %"$indices_gep_2921" = getelementptr i8, i8* %"$indices_buf_2920", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2921" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast
  %"$execptr_load_2922" = load i8*, i8** @_execptr
  %"$maybeRecord_2924" = call i8* @_fetch_field(i8* %"$execptr_load_2922", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_2923", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_2920", i32 1)
  %"$maybeRecord_2925" = bitcast i8* %"$maybeRecord_2924" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_2925", %TName_Option_ud-registry.Record** %maybeRecord
  %"$maybeRecord_2926" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord
  %"$$maybeRecord_2926_2927" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_2926" to i8*
  %"$_literal_cost_call_2928" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_2926_2927")
  %"$gasadd_2929" = add i64 %"$_literal_cost_call_2928", 0
  %"$gasadd_2930" = add i64 %"$gasadd_2929", 1
  %"$gasrem_2931" = load i64, i64* @_gasrem
  %"$gascmp_2932" = icmp ugt i64 %"$gasadd_2930", %"$gasrem_2931"
  br i1 %"$gascmp_2932", label %"$out_of_gas_2933", label %"$have_gas_2934"

"$out_of_gas_2933":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2934"

"$have_gas_2934":                                 ; preds = %"$out_of_gas_2933", %entry
  %"$consume_2935" = sub i64 %"$gasrem_2931", %"$gasadd_2930"
  store i64 %"$consume_2935", i64* @_gasrem
  %"$gasrem_2936" = load i64, i64* @_gasrem
  %"$gascmp_2937" = icmp ugt i64 1, %"$gasrem_2936"
  br i1 %"$gascmp_2937", label %"$out_of_gas_2938", label %"$have_gas_2939"

"$out_of_gas_2938":                               ; preds = %"$have_gas_2934"
  call void @_out_of_gas()
  br label %"$have_gas_2939"

"$have_gas_2939":                                 ; preds = %"$out_of_gas_2938", %"$have_gas_2934"
  %"$consume_2940" = sub i64 %"$gasrem_2936", 1
  store i64 %"$consume_2940", i64* @_gasrem
  %recordOwner = alloca [20 x i8]
  %"$gasrem_2941" = load i64, i64* @_gasrem
  %"$gascmp_2942" = icmp ugt i64 1, %"$gasrem_2941"
  br i1 %"$gascmp_2942", label %"$out_of_gas_2943", label %"$have_gas_2944"

"$out_of_gas_2943":                               ; preds = %"$have_gas_2939"
  call void @_out_of_gas()
  br label %"$have_gas_2944"

"$have_gas_2944":                                 ; preds = %"$out_of_gas_2943", %"$have_gas_2939"
  %"$consume_2945" = sub i64 %"$gasrem_2941", 1
  store i64 %"$consume_2945", i64* @_gasrem
  %"$ud-registry.recordMemberOwner_56" = alloca [20 x i8]
  %"$ud-registry.recordMemberOwner_2946" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner
  %"$ud-registry.recordMemberOwner_fptr_2947" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_2946", 0
  %"$ud-registry.recordMemberOwner_envptr_2948" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_2946", 1
  %"$maybeRecord_2949" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord
  %"$ud-registry.recordMemberOwner_retalloca_2950" = alloca [20 x i8]
  call void %"$ud-registry.recordMemberOwner_fptr_2947"(i8* %"$ud-registry.recordMemberOwner_envptr_2948", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_2950", %TName_Option_ud-registry.Record* %"$maybeRecord_2949")
  %"$ud-registry.recordMemberOwner_ret_2951" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_2950"
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_2951", [20 x i8]* %"$ud-registry.recordMemberOwner_56"
  %"$$ud-registry.recordMemberOwner_56_2952" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_56"
  store [20 x i8] %"$$ud-registry.recordMemberOwner_56_2952", [20 x i8]* %recordOwner
  %"$gasrem_2953" = load i64, i64* @_gasrem
  %"$gascmp_2954" = icmp ugt i64 1, %"$gasrem_2953"
  br i1 %"$gascmp_2954", label %"$out_of_gas_2955", label %"$have_gas_2956"

"$out_of_gas_2955":                               ; preds = %"$have_gas_2944"
  call void @_out_of_gas()
  br label %"$have_gas_2956"

"$have_gas_2956":                                 ; preds = %"$out_of_gas_2955", %"$have_gas_2944"
  %"$consume_2957" = sub i64 %"$gasrem_2953", 1
  store i64 %"$consume_2957", i64* @_gasrem
  %isSenderNodeOwner = alloca %TName_Bool*
  %"$execptr_load_2958" = load i8*, i8** @_execptr
  %"$eq__sender_2959" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_2959"
  %"$$eq__sender_2959_2960" = bitcast [20 x i8]* %"$eq__sender_2959" to i8*
  %"$eq_recordOwner_2961" = alloca [20 x i8]
  %"$recordOwner_2962" = load [20 x i8], [20 x i8]* %recordOwner
  store [20 x i8] %"$recordOwner_2962", [20 x i8]* %"$eq_recordOwner_2961"
  %"$$eq_recordOwner_2961_2963" = bitcast [20 x i8]* %"$eq_recordOwner_2961" to i8*
  %"$eq_call_2964" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2958", i32 20, i8* %"$$eq__sender_2959_2960", i8* %"$$eq_recordOwner_2961_2963")
  store %TName_Bool* %"$eq_call_2964", %TName_Bool** %isSenderNodeOwner
  %"$gasrem_2965" = load i64, i64* @_gasrem
  %"$gascmp_2966" = icmp ugt i64 2, %"$gasrem_2965"
  br i1 %"$gascmp_2966", label %"$out_of_gas_2967", label %"$have_gas_2968"

"$out_of_gas_2967":                               ; preds = %"$have_gas_2956"
  call void @_out_of_gas()
  br label %"$have_gas_2968"

"$have_gas_2968":                                 ; preds = %"$out_of_gas_2967", %"$have_gas_2956"
  %"$consume_2969" = sub i64 %"$gasrem_2965", 2
  store i64 %"$consume_2969", i64* @_gasrem
  %"$isSenderNodeOwner_2971" = load %TName_Bool*, %TName_Bool** %isSenderNodeOwner
  %"$isSenderNodeOwner_tag_2972" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderNodeOwner_2971", i32 0, i32 0
  %"$isSenderNodeOwner_tag_2973" = load i8, i8* %"$isSenderNodeOwner_tag_2972"
  switch i8 %"$isSenderNodeOwner_tag_2973", label %"$empty_default_2974" [
    i8 0, label %"$True_2975"
    i8 1, label %"$False_3107"
  ]

"$True_2975":                                     ; preds = %"$have_gas_2968"
  %"$isSenderNodeOwner_2976" = bitcast %TName_Bool* %"$isSenderNodeOwner_2971" to %CName_True*
  %maybeApproved = alloca %TName_Option_ByStr20*
  %"$indices_buf_2977_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_2977_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2977_salloc_load", i64 32)
  %"$indices_buf_2977_salloc" = bitcast i8* %"$indices_buf_2977_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2977" = bitcast [32 x i8]* %"$indices_buf_2977_salloc" to i8*
  %"$indices_gep_2978" = getelementptr i8, i8* %"$indices_buf_2977", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_2978" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1
  %"$execptr_load_2979" = load i8*, i8** @_execptr
  %"$maybeApproved_2981" = call i8* @_fetch_field(i8* %"$execptr_load_2979", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_2980", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_2977", i32 1)
  %"$maybeApproved_2982" = bitcast i8* %"$maybeApproved_2981" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_2982", %TName_Option_ByStr20** %maybeApproved
  %"$maybeApproved_2983" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved
  %"$$maybeApproved_2983_2984" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2983" to i8*
  %"$_literal_cost_call_2985" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_2983_2984")
  %"$gasadd_2986" = add i64 %"$_literal_cost_call_2985", 0
  %"$gasadd_2987" = add i64 %"$gasadd_2986", 1
  %"$gasrem_2988" = load i64, i64* @_gasrem
  %"$gascmp_2989" = icmp ugt i64 %"$gasadd_2987", %"$gasrem_2988"
  br i1 %"$gascmp_2989", label %"$out_of_gas_2990", label %"$have_gas_2991"

"$out_of_gas_2990":                               ; preds = %"$True_2975"
  call void @_out_of_gas()
  br label %"$have_gas_2991"

"$have_gas_2991":                                 ; preds = %"$out_of_gas_2990", %"$True_2975"
  %"$consume_2992" = sub i64 %"$gasrem_2988", %"$gasadd_2987"
  store i64 %"$consume_2992", i64* @_gasrem
  %"$gasrem_2993" = load i64, i64* @_gasrem
  %"$gascmp_2994" = icmp ugt i64 1, %"$gasrem_2993"
  br i1 %"$gascmp_2994", label %"$out_of_gas_2995", label %"$have_gas_2996"

"$out_of_gas_2995":                               ; preds = %"$have_gas_2991"
  call void @_out_of_gas()
  br label %"$have_gas_2996"

"$have_gas_2996":                                 ; preds = %"$out_of_gas_2995", %"$have_gas_2991"
  %"$consume_2997" = sub i64 %"$gasrem_2993", 1
  store i64 %"$consume_2997", i64* @_gasrem
  %currentlyApproved = alloca [20 x i8]
  %"$gasrem_2998" = load i64, i64* @_gasrem
  %"$gascmp_2999" = icmp ugt i64 2, %"$gasrem_2998"
  br i1 %"$gascmp_2999", label %"$out_of_gas_3000", label %"$have_gas_3001"

"$out_of_gas_3000":                               ; preds = %"$have_gas_2996"
  call void @_out_of_gas()
  br label %"$have_gas_3001"

"$have_gas_3001":                                 ; preds = %"$out_of_gas_3000", %"$have_gas_2996"
  %"$consume_3002" = sub i64 %"$gasrem_2998", 2
  store i64 %"$consume_3002", i64* @_gasrem
  %"$maybeApproved_3004" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved
  %"$maybeApproved_tag_3005" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_3004", i32 0, i32 0
  %"$maybeApproved_tag_3006" = load i8, i8* %"$maybeApproved_tag_3005"
  switch i8 %"$maybeApproved_tag_3006", label %"$empty_default_3007" [
    i8 1, label %"$None_3008"
    i8 0, label %"$Some_3016"
  ]

"$None_3008":                                     ; preds = %"$have_gas_3001"
  %"$maybeApproved_3009" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3004" to %CName_None_ByStr20*
  %"$gasrem_3010" = load i64, i64* @_gasrem
  %"$gascmp_3011" = icmp ugt i64 1, %"$gasrem_3010"
  br i1 %"$gascmp_3011", label %"$out_of_gas_3012", label %"$have_gas_3013"

"$out_of_gas_3012":                               ; preds = %"$None_3008"
  call void @_out_of_gas()
  br label %"$have_gas_3013"

"$have_gas_3013":                                 ; preds = %"$out_of_gas_3012", %"$None_3008"
  %"$consume_3014" = sub i64 %"$gasrem_3010", 1
  store i64 %"$consume_3014", i64* @_gasrem
  %"$ud-registry.zeroByStr20_3015" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20
  store [20 x i8] %"$ud-registry.zeroByStr20_3015", [20 x i8]* %currentlyApproved
  br label %"$matchsucc_3003"

"$Some_3016":                                     ; preds = %"$have_gas_3001"
  %"$maybeApproved_3017" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3004" to %CName_Some_ByStr20*
  %"$approved_gep_3018" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_3017", i32 0, i32 1
  %"$approved_load_3019" = load [20 x i8], [20 x i8]* %"$approved_gep_3018"
  %approved = alloca [20 x i8]
  store [20 x i8] %"$approved_load_3019", [20 x i8]* %approved
  %"$gasrem_3020" = load i64, i64* @_gasrem
  %"$gascmp_3021" = icmp ugt i64 1, %"$gasrem_3020"
  br i1 %"$gascmp_3021", label %"$out_of_gas_3022", label %"$have_gas_3023"

"$out_of_gas_3022":                               ; preds = %"$Some_3016"
  call void @_out_of_gas()
  br label %"$have_gas_3023"

"$have_gas_3023":                                 ; preds = %"$out_of_gas_3022", %"$Some_3016"
  %"$consume_3024" = sub i64 %"$gasrem_3020", 1
  store i64 %"$consume_3024", i64* @_gasrem
  %"$approved_3025" = load [20 x i8], [20 x i8]* %approved
  store [20 x i8] %"$approved_3025", [20 x i8]* %currentlyApproved
  br label %"$matchsucc_3003"

"$empty_default_3007":                            ; preds = %"$have_gas_3001"
  br label %"$matchsucc_3003"

"$matchsucc_3003":                                ; preds = %"$have_gas_3023", %"$have_gas_3013", %"$empty_default_3007"
  %"$gasrem_3026" = load i64, i64* @_gasrem
  %"$gascmp_3027" = icmp ugt i64 1, %"$gasrem_3026"
  br i1 %"$gascmp_3027", label %"$out_of_gas_3028", label %"$have_gas_3029"

"$out_of_gas_3028":                               ; preds = %"$matchsucc_3003"
  call void @_out_of_gas()
  br label %"$have_gas_3029"

"$have_gas_3029":                                 ; preds = %"$out_of_gas_3028", %"$matchsucc_3003"
  %"$consume_3030" = sub i64 %"$gasrem_3026", 1
  store i64 %"$consume_3030", i64* @_gasrem
  %needsToChange = alloca %TName_Bool*
  %"$gasrem_3031" = load i64, i64* @_gasrem
  %"$gascmp_3032" = icmp ugt i64 1, %"$gasrem_3031"
  br i1 %"$gascmp_3032", label %"$out_of_gas_3033", label %"$have_gas_3034"

"$out_of_gas_3033":                               ; preds = %"$have_gas_3029"
  call void @_out_of_gas()
  br label %"$have_gas_3034"

"$have_gas_3034":                                 ; preds = %"$out_of_gas_3033", %"$have_gas_3029"
  %"$consume_3035" = sub i64 %"$gasrem_3031", 1
  store i64 %"$consume_3035", i64* @_gasrem
  %b = alloca %TName_Bool*
  %"$execptr_load_3036" = load i8*, i8** @_execptr
  %"$eq_currentlyApproved_3037" = alloca [20 x i8]
  %"$currentlyApproved_3038" = load [20 x i8], [20 x i8]* %currentlyApproved
  store [20 x i8] %"$currentlyApproved_3038", [20 x i8]* %"$eq_currentlyApproved_3037"
  %"$$eq_currentlyApproved_3037_3039" = bitcast [20 x i8]* %"$eq_currentlyApproved_3037" to i8*
  %"$eq_address_3040" = alloca [20 x i8]
  store [20 x i8] %address, [20 x i8]* %"$eq_address_3040"
  %"$$eq_address_3040_3041" = bitcast [20 x i8]* %"$eq_address_3040" to i8*
  %"$eq_call_3042" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_3036", i32 20, i8* %"$$eq_currentlyApproved_3037_3039", i8* %"$$eq_address_3040_3041")
  store %TName_Bool* %"$eq_call_3042", %TName_Bool** %b
  %"$gasrem_3043" = load i64, i64* @_gasrem
  %"$gascmp_3044" = icmp ugt i64 1, %"$gasrem_3043"
  br i1 %"$gascmp_3044", label %"$out_of_gas_3045", label %"$have_gas_3046"

"$out_of_gas_3045":                               ; preds = %"$have_gas_3034"
  call void @_out_of_gas()
  br label %"$have_gas_3046"

"$have_gas_3046":                                 ; preds = %"$out_of_gas_3045", %"$have_gas_3034"
  %"$consume_3047" = sub i64 %"$gasrem_3043", 1
  store i64 %"$consume_3047", i64* @_gasrem
  %"$BoolUtils.negb_54" = alloca %TName_Bool*
  %"$BoolUtils.negb_3048" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb
  %"$BoolUtils.negb_fptr_3049" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_3048", 0
  %"$BoolUtils.negb_envptr_3050" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_3048", 1
  %"$b_3051" = load %TName_Bool*, %TName_Bool** %b
  %"$BoolUtils.negb_call_3052" = call %TName_Bool* %"$BoolUtils.negb_fptr_3049"(i8* %"$BoolUtils.negb_envptr_3050", %TName_Bool* %"$b_3051")
  store %TName_Bool* %"$BoolUtils.negb_call_3052", %TName_Bool** %"$BoolUtils.negb_54"
  %"$$BoolUtils.negb_54_3053" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_54"
  store %TName_Bool* %"$$BoolUtils.negb_54_3053", %TName_Bool** %needsToChange
  %"$gasrem_3054" = load i64, i64* @_gasrem
  %"$gascmp_3055" = icmp ugt i64 2, %"$gasrem_3054"
  br i1 %"$gascmp_3055", label %"$out_of_gas_3056", label %"$have_gas_3057"

"$out_of_gas_3056":                               ; preds = %"$have_gas_3046"
  call void @_out_of_gas()
  br label %"$have_gas_3057"

"$have_gas_3057":                                 ; preds = %"$out_of_gas_3056", %"$have_gas_3046"
  %"$consume_3058" = sub i64 %"$gasrem_3054", 2
  store i64 %"$consume_3058", i64* @_gasrem
  %"$needsToChange_3060" = load %TName_Bool*, %TName_Bool** %needsToChange
  %"$needsToChange_tag_3061" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_3060", i32 0, i32 0
  %"$needsToChange_tag_3062" = load i8, i8* %"$needsToChange_tag_3061"
  switch i8 %"$needsToChange_tag_3062", label %"$default_3063" [
    i8 0, label %"$True_3064"
  ]

"$True_3064":                                     ; preds = %"$have_gas_3057"
  %"$needsToChange_3065" = bitcast %TName_Bool* %"$needsToChange_3060" to %CName_True*
  %"$_literal_cost_address_3066" = alloca [20 x i8]
  store [20 x i8] %address, [20 x i8]* %"$_literal_cost_address_3066"
  %"$$_literal_cost_address_3066_3067" = bitcast [20 x i8]* %"$_literal_cost_address_3066" to i8*
  %"$_literal_cost_call_3068" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i8* %"$$_literal_cost_address_3066_3067")
  %"$gasadd_3069" = add i64 %"$_literal_cost_call_3068", 1
  %"$gasrem_3070" = load i64, i64* @_gasrem
  %"$gascmp_3071" = icmp ugt i64 %"$gasadd_3069", %"$gasrem_3070"
  br i1 %"$gascmp_3071", label %"$out_of_gas_3072", label %"$have_gas_3073"

"$out_of_gas_3072":                               ; preds = %"$True_3064"
  call void @_out_of_gas()
  br label %"$have_gas_3073"

"$have_gas_3073":                                 ; preds = %"$out_of_gas_3072", %"$True_3064"
  %"$consume_3074" = sub i64 %"$gasrem_3070", %"$gasadd_3069"
  store i64 %"$consume_3074", i64* @_gasrem
  %"$indices_buf_3075_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_3075_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3075_salloc_load", i64 32)
  %"$indices_buf_3075_salloc" = bitcast i8* %"$indices_buf_3075_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3075" = bitcast [32 x i8]* %"$indices_buf_3075_salloc" to i8*
  %"$indices_gep_3076" = getelementptr i8, i8* %"$indices_buf_3075", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3076" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast2
  %"$execptr_load_3077" = load i8*, i8** @_execptr
  %"$update_value_3079" = alloca [20 x i8]
  store [20 x i8] %address, [20 x i8]* %"$update_value_3079"
  %"$update_value_3080" = bitcast [20 x i8]* %"$update_value_3079" to i8*
  call void @_update_field(i8* %"$execptr_load_3077", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3078", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_3075", i8* %"$update_value_3080")
  %"$gasrem_3081" = load i64, i64* @_gasrem
  %"$gascmp_3082" = icmp ugt i64 1, %"$gasrem_3081"
  br i1 %"$gascmp_3082", label %"$out_of_gas_3083", label %"$have_gas_3084"

"$out_of_gas_3083":                               ; preds = %"$have_gas_3073"
  call void @_out_of_gas()
  br label %"$have_gas_3084"

"$have_gas_3084":                                 ; preds = %"$out_of_gas_3083", %"$have_gas_3073"
  %"$consume_3085" = sub i64 %"$gasrem_3081", 1
  store i64 %"$consume_3085", i64* @_gasrem
  %e = alloca i8*
  %"$gasrem_3086" = load i64, i64* @_gasrem
  %"$gascmp_3087" = icmp ugt i64 1, %"$gasrem_3086"
  br i1 %"$gascmp_3087", label %"$out_of_gas_3088", label %"$have_gas_3089"

"$out_of_gas_3088":                               ; preds = %"$have_gas_3084"
  call void @_out_of_gas()
  br label %"$have_gas_3089"

"$have_gas_3089":                                 ; preds = %"$out_of_gas_3088", %"$have_gas_3084"
  %"$consume_3090" = sub i64 %"$gasrem_3086", 1
  store i64 %"$consume_3090", i64* @_gasrem
  %"$ud-registry.eApproved_53" = alloca i8*
  %"$ud-registry.eApproved_3091" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApproved
  %"$ud-registry.eApproved_fptr_3092" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApproved_3091", 0
  %"$ud-registry.eApproved_envptr_3093" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApproved_3091", 1
  %"$ud-registry.eApproved_address_3094" = alloca [20 x i8]
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eApproved_address_3094"
  %"$ud-registry.eApproved_call_3095" = call i8* %"$ud-registry.eApproved_fptr_3092"(i8* %"$ud-registry.eApproved_envptr_3093", [20 x i8]* %"$ud-registry.eApproved_address_3094")
  store i8* %"$ud-registry.eApproved_call_3095", i8** %"$ud-registry.eApproved_53"
  %"$$ud-registry.eApproved_53_3096" = load i8*, i8** %"$ud-registry.eApproved_53"
  store i8* %"$$ud-registry.eApproved_53_3096", i8** %e
  %"$e_3097" = load i8*, i8** %e
  %"$_literal_cost_call_3099" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3097")
  %"$gasrem_3100" = load i64, i64* @_gasrem
  %"$gascmp_3101" = icmp ugt i64 %"$_literal_cost_call_3099", %"$gasrem_3100"
  br i1 %"$gascmp_3101", label %"$out_of_gas_3102", label %"$have_gas_3103"

"$out_of_gas_3102":                               ; preds = %"$have_gas_3089"
  call void @_out_of_gas()
  br label %"$have_gas_3103"

"$have_gas_3103":                                 ; preds = %"$out_of_gas_3102", %"$have_gas_3089"
  %"$consume_3104" = sub i64 %"$gasrem_3100", %"$_literal_cost_call_3099"
  store i64 %"$consume_3104", i64* @_gasrem
  %"$execptr_load_3105" = load i8*, i8** @_execptr
  %"$e_3106" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_3105", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3106")
  br label %"$matchsucc_3059"

"$default_3063":                                  ; preds = %"$have_gas_3057"
  br label %"$joinp_2"

"$joinp_2":                                       ; preds = %"$default_3063"
  br label %"$matchsucc_3059"

"$matchsucc_3059":                                ; preds = %"$have_gas_3103", %"$joinp_2"
  br label %"$matchsucc_2970"

"$False_3107":                                    ; preds = %"$have_gas_2968"
  %"$isSenderNodeOwner_3108" = bitcast %TName_Bool* %"$isSenderNodeOwner_2971" to %CName_False*
  %"$gasrem_3109" = load i64, i64* @_gasrem
  %"$gascmp_3110" = icmp ugt i64 1, %"$gasrem_3109"
  br i1 %"$gascmp_3110", label %"$out_of_gas_3111", label %"$have_gas_3112"

"$out_of_gas_3111":                               ; preds = %"$False_3107"
  call void @_out_of_gas()
  br label %"$have_gas_3112"

"$have_gas_3112":                                 ; preds = %"$out_of_gas_3111", %"$False_3107"
  %"$consume_3113" = sub i64 %"$gasrem_3109", 1
  store i64 %"$consume_3113", i64* @_gasrem
  %e3 = alloca i8*
  %"$gasrem_3114" = load i64, i64* @_gasrem
  %"$gascmp_3115" = icmp ugt i64 1, %"$gasrem_3114"
  br i1 %"$gascmp_3115", label %"$out_of_gas_3116", label %"$have_gas_3117"

"$out_of_gas_3116":                               ; preds = %"$have_gas_3112"
  call void @_out_of_gas()
  br label %"$have_gas_3117"

"$have_gas_3117":                                 ; preds = %"$out_of_gas_3116", %"$have_gas_3112"
  %"$consume_3118" = sub i64 %"$gasrem_3114", 1
  store i64 %"$consume_3118", i64* @_gasrem
  %m = alloca %String
  %"$gasrem_3119" = load i64, i64* @_gasrem
  %"$gascmp_3120" = icmp ugt i64 1, %"$gasrem_3119"
  br i1 %"$gascmp_3120", label %"$out_of_gas_3121", label %"$have_gas_3122"

"$out_of_gas_3121":                               ; preds = %"$have_gas_3117"
  call void @_out_of_gas()
  br label %"$have_gas_3122"

"$have_gas_3122":                                 ; preds = %"$out_of_gas_3121", %"$have_gas_3117"
  %"$consume_3123" = sub i64 %"$gasrem_3119", 1
  store i64 %"$consume_3123", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_3124", i32 0, i32 0), i32 21 }, %String* %m
  %"$gasrem_3125" = load i64, i64* @_gasrem
  %"$gascmp_3126" = icmp ugt i64 1, %"$gasrem_3125"
  br i1 %"$gascmp_3126", label %"$out_of_gas_3127", label %"$have_gas_3128"

"$out_of_gas_3127":                               ; preds = %"$have_gas_3122"
  call void @_out_of_gas()
  br label %"$have_gas_3128"

"$have_gas_3128":                                 ; preds = %"$out_of_gas_3127", %"$have_gas_3122"
  %"$consume_3129" = sub i64 %"$gasrem_3125", 1
  store i64 %"$consume_3129", i64* @_gasrem
  %"$ud-registry.eError_55" = alloca i8*
  %"$ud-registry.eError_3130" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError
  %"$ud-registry.eError_fptr_3131" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3130", 0
  %"$ud-registry.eError_envptr_3132" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3130", 1
  %"$m_3133" = load %String, %String* %m
  %"$ud-registry.eError_call_3134" = call i8* %"$ud-registry.eError_fptr_3131"(i8* %"$ud-registry.eError_envptr_3132", %String %"$m_3133")
  store i8* %"$ud-registry.eError_call_3134", i8** %"$ud-registry.eError_55"
  %"$$ud-registry.eError_55_3135" = load i8*, i8** %"$ud-registry.eError_55"
  store i8* %"$$ud-registry.eError_55_3135", i8** %e3
  %"$e_3136" = load i8*, i8** %e3
  %"$_literal_cost_call_3138" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3136")
  %"$gasrem_3139" = load i64, i64* @_gasrem
  %"$gascmp_3140" = icmp ugt i64 %"$_literal_cost_call_3138", %"$gasrem_3139"
  br i1 %"$gascmp_3140", label %"$out_of_gas_3141", label %"$have_gas_3142"

"$out_of_gas_3141":                               ; preds = %"$have_gas_3128"
  call void @_out_of_gas()
  br label %"$have_gas_3142"

"$have_gas_3142":                                 ; preds = %"$out_of_gas_3141", %"$have_gas_3128"
  %"$consume_3143" = sub i64 %"$gasrem_3139", %"$_literal_cost_call_3138"
  store i64 %"$consume_3143", i64* @_gasrem
  %"$execptr_load_3144" = load i8*, i8** @_execptr
  %"$e_3145" = load i8*, i8** %e3
  call void @_event(i8* %"$execptr_load_3144", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3145")
  br label %"$matchsucc_2970"

"$empty_default_2974":                            ; preds = %"$have_gas_2968"
  br label %"$matchsucc_2970"

"$matchsucc_2970":                                ; preds = %"$have_gas_3142", %"$matchsucc_3059", %"$empty_default_2974"
  ret void
}

define void @approve(i8* %0) {
entry:
  %"$_amount_3147" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3148" = bitcast i8* %"$_amount_3147" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3148"
  %"$_sender_3149" = getelementptr i8, i8* %0, i32 16
  %"$_sender_3150" = bitcast i8* %"$_sender_3149" to [20 x i8]*
  %"$node_3151" = getelementptr i8, i8* %0, i32 36
  %"$node_3152" = bitcast i8* %"$node_3151" to [32 x i8]*
  %"$address_3153" = getelementptr i8, i8* %0, i32 68
  %"$address_3154" = bitcast i8* %"$address_3153" to [20 x i8]*
  call void @"$approve_2916"(%Uint128 %_amount, [20 x i8]* %"$_sender_3150", [32 x i8]* %"$node_3152", [20 x i8]* %"$address_3154")
  ret void
}

define internal void @"$approveFor_3155"(%Uint128 %_amount, [20 x i8]* %"$_sender_3156", [20 x i8]* %"$address_3157", %TName_Bool* %isApproved) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3156"
  %address = load [20 x i8], [20 x i8]* %"$address_3157"
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*
  %"$indices_buf_3158_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_3158_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3158_salloc_load", i64 20)
  %"$indices_buf_3158_salloc" = bitcast i8* %"$indices_buf_3158_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3158" = bitcast [20 x i8]* %"$indices_buf_3158_salloc" to i8*
  %"$indices_gep_3159" = getelementptr i8, i8* %"$indices_buf_3158", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3159" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast
  %"$execptr_load_3160" = load i8*, i8** @_execptr
  %"$maybeOperators_3162" = call i8* @_fetch_field(i8* %"$execptr_load_3160", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3161", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_3158", i32 1)
  %"$maybeOperators_3163" = bitcast i8* %"$maybeOperators_3162" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3163", %"TName_Option_List_(ByStr20)"** %maybeOperators
  %"$maybeOperators_3164" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators
  %"$$maybeOperators_3164_3165" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3164" to i8*
  %"$_literal_cost_call_3166" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_3164_3165")
  %"$gasadd_3167" = add i64 %"$_literal_cost_call_3166", 0
  %"$gasadd_3168" = add i64 %"$gasadd_3167", 1
  %"$gasrem_3169" = load i64, i64* @_gasrem
  %"$gascmp_3170" = icmp ugt i64 %"$gasadd_3168", %"$gasrem_3169"
  br i1 %"$gascmp_3170", label %"$out_of_gas_3171", label %"$have_gas_3172"

"$out_of_gas_3171":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3172"

"$have_gas_3172":                                 ; preds = %"$out_of_gas_3171", %entry
  %"$consume_3173" = sub i64 %"$gasrem_3169", %"$gasadd_3168"
  store i64 %"$consume_3173", i64* @_gasrem
  %"$gasrem_3174" = load i64, i64* @_gasrem
  %"$gascmp_3175" = icmp ugt i64 1, %"$gasrem_3174"
  br i1 %"$gascmp_3175", label %"$out_of_gas_3176", label %"$have_gas_3177"

"$out_of_gas_3176":                               ; preds = %"$have_gas_3172"
  call void @_out_of_gas()
  br label %"$have_gas_3177"

"$have_gas_3177":                                 ; preds = %"$out_of_gas_3176", %"$have_gas_3172"
  %"$consume_3178" = sub i64 %"$gasrem_3174", 1
  store i64 %"$consume_3178", i64* @_gasrem
  %currentOperators = alloca %TName_List_ByStr20*
  %"$gasrem_3179" = load i64, i64* @_gasrem
  %"$gascmp_3180" = icmp ugt i64 2, %"$gasrem_3179"
  br i1 %"$gascmp_3180", label %"$out_of_gas_3181", label %"$have_gas_3182"

"$out_of_gas_3181":                               ; preds = %"$have_gas_3177"
  call void @_out_of_gas()
  br label %"$have_gas_3182"

"$have_gas_3182":                                 ; preds = %"$out_of_gas_3181", %"$have_gas_3177"
  %"$consume_3183" = sub i64 %"$gasrem_3179", 2
  store i64 %"$consume_3183", i64* @_gasrem
  %"$maybeOperators_3185" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators
  %"$maybeOperators_tag_3186" = getelementptr inbounds %"TName_Option_List_(ByStr20)", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3185", i32 0, i32 0
  %"$maybeOperators_tag_3187" = load i8, i8* %"$maybeOperators_tag_3186"
  switch i8 %"$maybeOperators_tag_3187", label %"$empty_default_3188" [
    i8 1, label %"$None_3189"
    i8 0, label %"$Some_3197"
  ]

"$None_3189":                                     ; preds = %"$have_gas_3182"
  %"$maybeOperators_3190" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3185" to %"CName_None_List_(ByStr20)"*
  %"$gasrem_3191" = load i64, i64* @_gasrem
  %"$gascmp_3192" = icmp ugt i64 1, %"$gasrem_3191"
  br i1 %"$gascmp_3192", label %"$out_of_gas_3193", label %"$have_gas_3194"

"$out_of_gas_3193":                               ; preds = %"$None_3189"
  call void @_out_of_gas()
  br label %"$have_gas_3194"

"$have_gas_3194":                                 ; preds = %"$out_of_gas_3193", %"$None_3189"
  %"$consume_3195" = sub i64 %"$gasrem_3191", 1
  store i64 %"$consume_3195", i64* @_gasrem
  %"$ud-registry.nilByStr20_3196" = load %TName_List_ByStr20*, %TName_List_ByStr20** @ud-registry.nilByStr20
  store %TName_List_ByStr20* %"$ud-registry.nilByStr20_3196", %TName_List_ByStr20** %currentOperators
  br label %"$matchsucc_3184"

"$Some_3197":                                     ; preds = %"$have_gas_3182"
  %"$maybeOperators_3198" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3185" to %"CName_Some_List_(ByStr20)"*
  %"$ops_gep_3199" = getelementptr inbounds %"CName_Some_List_(ByStr20)", %"CName_Some_List_(ByStr20)"* %"$maybeOperators_3198", i32 0, i32 1
  %"$ops_load_3200" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ops_gep_3199"
  %ops = alloca %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$ops_load_3200", %TName_List_ByStr20** %ops
  %"$gasrem_3201" = load i64, i64* @_gasrem
  %"$gascmp_3202" = icmp ugt i64 1, %"$gasrem_3201"
  br i1 %"$gascmp_3202", label %"$out_of_gas_3203", label %"$have_gas_3204"

"$out_of_gas_3203":                               ; preds = %"$Some_3197"
  call void @_out_of_gas()
  br label %"$have_gas_3204"

"$have_gas_3204":                                 ; preds = %"$out_of_gas_3203", %"$Some_3197"
  %"$consume_3205" = sub i64 %"$gasrem_3201", 1
  store i64 %"$consume_3205", i64* @_gasrem
  %"$ops_3206" = load %TName_List_ByStr20*, %TName_List_ByStr20** %ops
  store %TName_List_ByStr20* %"$ops_3206", %TName_List_ByStr20** %currentOperators
  br label %"$matchsucc_3184"

"$empty_default_3188":                            ; preds = %"$have_gas_3182"
  br label %"$matchsucc_3184"

"$matchsucc_3184":                                ; preds = %"$have_gas_3204", %"$have_gas_3194", %"$empty_default_3188"
  %"$gasrem_3207" = load i64, i64* @_gasrem
  %"$gascmp_3208" = icmp ugt i64 1, %"$gasrem_3207"
  br i1 %"$gascmp_3208", label %"$out_of_gas_3209", label %"$have_gas_3210"

"$out_of_gas_3209":                               ; preds = %"$matchsucc_3184"
  call void @_out_of_gas()
  br label %"$have_gas_3210"

"$have_gas_3210":                                 ; preds = %"$out_of_gas_3209", %"$matchsucc_3184"
  %"$consume_3211" = sub i64 %"$gasrem_3207", 1
  store i64 %"$consume_3211", i64* @_gasrem
  %needsToChange = alloca %TName_Bool*
  %"$gasrem_3212" = load i64, i64* @_gasrem
  %"$gascmp_3213" = icmp ugt i64 1, %"$gasrem_3212"
  br i1 %"$gascmp_3213", label %"$out_of_gas_3214", label %"$have_gas_3215"

"$out_of_gas_3214":                               ; preds = %"$have_gas_3210"
  call void @_out_of_gas()
  br label %"$have_gas_3215"

"$have_gas_3215":                                 ; preds = %"$out_of_gas_3214", %"$have_gas_3210"
  %"$consume_3216" = sub i64 %"$gasrem_3212", 1
  store i64 %"$consume_3216", i64* @_gasrem
  %b = alloca %TName_Bool*
  %"$gasrem_3217" = load i64, i64* @_gasrem
  %"$gascmp_3218" = icmp ugt i64 1, %"$gasrem_3217"
  br i1 %"$gascmp_3218", label %"$out_of_gas_3219", label %"$have_gas_3220"

"$out_of_gas_3219":                               ; preds = %"$have_gas_3215"
  call void @_out_of_gas()
  br label %"$have_gas_3220"

"$have_gas_3220":                                 ; preds = %"$out_of_gas_3219", %"$have_gas_3215"
  %"$consume_3221" = sub i64 %"$gasrem_3217", 1
  store i64 %"$consume_3221", i64* @_gasrem
  %"$ud-registry.listByStr20Excludes_62" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.listByStr20Excludes_3222" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes
  %"$ud-registry.listByStr20Excludes_fptr_3223" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_3222", 0
  %"$ud-registry.listByStr20Excludes_envptr_3224" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_3222", 1
  %"$currentOperators_3225" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators
  %"$ud-registry.listByStr20Excludes_call_3226" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_fptr_3223"(i8* %"$ud-registry.listByStr20Excludes_envptr_3224", %TName_List_ByStr20* %"$currentOperators_3225")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_call_3226", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_62"
  %"$ud-registry.listByStr20Excludes_63" = alloca %TName_Bool*
  %"$$ud-registry.listByStr20Excludes_62_3227" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_62"
  %"$$ud-registry.listByStr20Excludes_62_fptr_3228" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_62_3227", 0
  %"$$ud-registry.listByStr20Excludes_62_envptr_3229" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_62_3227", 1
  %"$$ud-registry.listByStr20Excludes_62_address_3230" = alloca [20 x i8]
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20Excludes_62_address_3230"
  %"$$ud-registry.listByStr20Excludes_62_call_3231" = call %TName_Bool* %"$$ud-registry.listByStr20Excludes_62_fptr_3228"(i8* %"$$ud-registry.listByStr20Excludes_62_envptr_3229", [20 x i8]* %"$$ud-registry.listByStr20Excludes_62_address_3230")
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_62_call_3231", %TName_Bool** %"$ud-registry.listByStr20Excludes_63"
  %"$$ud-registry.listByStr20Excludes_63_3232" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Excludes_63"
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_63_3232", %TName_Bool** %b
  %"$gasrem_3233" = load i64, i64* @_gasrem
  %"$gascmp_3234" = icmp ugt i64 1, %"$gasrem_3233"
  br i1 %"$gascmp_3234", label %"$out_of_gas_3235", label %"$have_gas_3236"

"$out_of_gas_3235":                               ; preds = %"$have_gas_3220"
  call void @_out_of_gas()
  br label %"$have_gas_3236"

"$have_gas_3236":                                 ; preds = %"$out_of_gas_3235", %"$have_gas_3220"
  %"$consume_3237" = sub i64 %"$gasrem_3233", 1
  store i64 %"$consume_3237", i64* @_gasrem
  %"$ud-registry.xandb_64" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$ud-registry.xandb_3238" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb
  %"$ud-registry.xandb_fptr_3239" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_3238", 0
  %"$ud-registry.xandb_envptr_3240" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_3238", 1
  %"$b_3241" = load %TName_Bool*, %TName_Bool** %b
  %"$ud-registry.xandb_call_3242" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_fptr_3239"(i8* %"$ud-registry.xandb_envptr_3240", %TName_Bool* %"$b_3241")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_call_3242", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_64"
  %"$ud-registry.xandb_65" = alloca %TName_Bool*
  %"$$ud-registry.xandb_64_3243" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_64"
  %"$$ud-registry.xandb_64_fptr_3244" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_64_3243", 0
  %"$$ud-registry.xandb_64_envptr_3245" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_64_3243", 1
  %"$$ud-registry.xandb_64_call_3246" = call %TName_Bool* %"$$ud-registry.xandb_64_fptr_3244"(i8* %"$$ud-registry.xandb_64_envptr_3245", %TName_Bool* %isApproved)
  store %TName_Bool* %"$$ud-registry.xandb_64_call_3246", %TName_Bool** %"$ud-registry.xandb_65"
  %"$$ud-registry.xandb_65_3247" = load %TName_Bool*, %TName_Bool** %"$ud-registry.xandb_65"
  store %TName_Bool* %"$$ud-registry.xandb_65_3247", %TName_Bool** %needsToChange
  %"$gasrem_3248" = load i64, i64* @_gasrem
  %"$gascmp_3249" = icmp ugt i64 2, %"$gasrem_3248"
  br i1 %"$gascmp_3249", label %"$out_of_gas_3250", label %"$have_gas_3251"

"$out_of_gas_3250":                               ; preds = %"$have_gas_3236"
  call void @_out_of_gas()
  br label %"$have_gas_3251"

"$have_gas_3251":                                 ; preds = %"$out_of_gas_3250", %"$have_gas_3236"
  %"$consume_3252" = sub i64 %"$gasrem_3248", 2
  store i64 %"$consume_3252", i64* @_gasrem
  %"$needsToChange_3254" = load %TName_Bool*, %TName_Bool** %needsToChange
  %"$needsToChange_tag_3255" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_3254", i32 0, i32 0
  %"$needsToChange_tag_3256" = load i8, i8* %"$needsToChange_tag_3255"
  switch i8 %"$needsToChange_tag_3256", label %"$default_3257" [
    i8 0, label %"$True_3258"
  ]

"$True_3258":                                     ; preds = %"$have_gas_3251"
  %"$needsToChange_3259" = bitcast %TName_Bool* %"$needsToChange_3254" to %CName_True*
  %"$gasrem_3260" = load i64, i64* @_gasrem
  %"$gascmp_3261" = icmp ugt i64 1, %"$gasrem_3260"
  br i1 %"$gascmp_3261", label %"$out_of_gas_3262", label %"$have_gas_3263"

"$out_of_gas_3262":                               ; preds = %"$True_3258"
  call void @_out_of_gas()
  br label %"$have_gas_3263"

"$have_gas_3263":                                 ; preds = %"$out_of_gas_3262", %"$True_3258"
  %"$consume_3264" = sub i64 %"$gasrem_3260", 1
  store i64 %"$consume_3264", i64* @_gasrem
  %newOperators = alloca %TName_List_ByStr20*
  %"$gasrem_3265" = load i64, i64* @_gasrem
  %"$gascmp_3266" = icmp ugt i64 2, %"$gasrem_3265"
  br i1 %"$gascmp_3266", label %"$out_of_gas_3267", label %"$have_gas_3268"

"$out_of_gas_3267":                               ; preds = %"$have_gas_3263"
  call void @_out_of_gas()
  br label %"$have_gas_3268"

"$have_gas_3268":                                 ; preds = %"$out_of_gas_3267", %"$have_gas_3263"
  %"$consume_3269" = sub i64 %"$gasrem_3265", 2
  store i64 %"$consume_3269", i64* @_gasrem
  %"$isApproved_tag_3271" = getelementptr inbounds %TName_Bool, %TName_Bool* %isApproved, i32 0, i32 0
  %"$isApproved_tag_3272" = load i8, i8* %"$isApproved_tag_3271"
  switch i8 %"$isApproved_tag_3272", label %"$empty_default_3273" [
    i8 0, label %"$True_3274"
    i8 1, label %"$False_3287"
  ]

"$True_3274":                                     ; preds = %"$have_gas_3268"
  %"$isApproved_3275" = bitcast %TName_Bool* %isApproved to %CName_True*
  %"$gasrem_3276" = load i64, i64* @_gasrem
  %"$gascmp_3277" = icmp ugt i64 1, %"$gasrem_3276"
  br i1 %"$gascmp_3277", label %"$out_of_gas_3278", label %"$have_gas_3279"

"$out_of_gas_3278":                               ; preds = %"$True_3274"
  call void @_out_of_gas()
  br label %"$have_gas_3279"

"$have_gas_3279":                                 ; preds = %"$out_of_gas_3278", %"$True_3274"
  %"$consume_3280" = sub i64 %"$gasrem_3276", 1
  store i64 %"$consume_3280", i64* @_gasrem
  %"$currentOperators_3281" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators
  %"$adtval_3282_load" = load i8*, i8** @_execptr
  %"$adtval_3282_salloc" = call i8* @_salloc(i8* %"$adtval_3282_load", i64 29)
  %"$adtval_3282" = bitcast i8* %"$adtval_3282_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_3283" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3282", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3283"
  %"$adtgep_3284" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3282", i32 0, i32 1
  store [20 x i8] %address, [20 x i8]* %"$adtgep_3284"
  %"$adtgep_3285" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3282", i32 0, i32 2
  store %TName_List_ByStr20* %"$currentOperators_3281", %TName_List_ByStr20** %"$adtgep_3285"
  %"$adtptr_3286" = bitcast %CName_Cons_ByStr20* %"$adtval_3282" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_3286", %TName_List_ByStr20** %newOperators
  br label %"$matchsucc_3270"

"$False_3287":                                    ; preds = %"$have_gas_3268"
  %"$isApproved_3288" = bitcast %TName_Bool* %isApproved to %CName_False*
  %"$gasrem_3289" = load i64, i64* @_gasrem
  %"$gascmp_3290" = icmp ugt i64 1, %"$gasrem_3289"
  br i1 %"$gascmp_3290", label %"$out_of_gas_3291", label %"$have_gas_3292"

"$out_of_gas_3291":                               ; preds = %"$False_3287"
  call void @_out_of_gas()
  br label %"$have_gas_3292"

"$have_gas_3292":                                 ; preds = %"$out_of_gas_3291", %"$False_3287"
  %"$consume_3293" = sub i64 %"$gasrem_3289", 1
  store i64 %"$consume_3293", i64* @_gasrem
  %"$ud-registry.listByStr20FilterOut_60" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.listByStr20FilterOut_3294" = load { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut
  %"$ud-registry.listByStr20FilterOut_fptr_3295" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_3294", 0
  %"$ud-registry.listByStr20FilterOut_envptr_3296" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_3294", 1
  %"$currentOperators_3297" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators
  %"$ud-registry.listByStr20FilterOut_call_3298" = call { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_fptr_3295"(i8* %"$ud-registry.listByStr20FilterOut_envptr_3296", %TName_List_ByStr20* %"$currentOperators_3297")
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_call_3298", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_60"
  %"$ud-registry.listByStr20FilterOut_61" = alloca %TName_List_ByStr20*
  %"$$ud-registry.listByStr20FilterOut_60_3299" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_60"
  %"$$ud-registry.listByStr20FilterOut_60_fptr_3300" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_60_3299", 0
  %"$$ud-registry.listByStr20FilterOut_60_envptr_3301" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_60_3299", 1
  %"$$ud-registry.listByStr20FilterOut_60_address_3302" = alloca [20 x i8]
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20FilterOut_60_address_3302"
  %"$$ud-registry.listByStr20FilterOut_60_call_3303" = call %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_60_fptr_3300"(i8* %"$$ud-registry.listByStr20FilterOut_60_envptr_3301", [20 x i8]* %"$$ud-registry.listByStr20FilterOut_60_address_3302")
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_60_call_3303", %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_61"
  %"$$ud-registry.listByStr20FilterOut_61_3304" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_61"
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_61_3304", %TName_List_ByStr20** %newOperators
  br label %"$matchsucc_3270"

"$empty_default_3273":                            ; preds = %"$have_gas_3268"
  br label %"$matchsucc_3270"

"$matchsucc_3270":                                ; preds = %"$have_gas_3292", %"$have_gas_3279", %"$empty_default_3273"
  %"$newOperators_3305" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newOperators
  %"$$newOperators_3305_3306" = bitcast %TName_List_ByStr20* %"$newOperators_3305" to i8*
  %"$_literal_cost_call_3307" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$newOperators_3305_3306")
  %"$gasadd_3308" = add i64 %"$_literal_cost_call_3307", 1
  %"$gasrem_3309" = load i64, i64* @_gasrem
  %"$gascmp_3310" = icmp ugt i64 %"$gasadd_3308", %"$gasrem_3309"
  br i1 %"$gascmp_3310", label %"$out_of_gas_3311", label %"$have_gas_3312"

"$out_of_gas_3311":                               ; preds = %"$matchsucc_3270"
  call void @_out_of_gas()
  br label %"$have_gas_3312"

"$have_gas_3312":                                 ; preds = %"$out_of_gas_3311", %"$matchsucc_3270"
  %"$consume_3313" = sub i64 %"$gasrem_3309", %"$gasadd_3308"
  store i64 %"$consume_3313", i64* @_gasrem
  %"$indices_buf_3314_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_3314_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3314_salloc_load", i64 20)
  %"$indices_buf_3314_salloc" = bitcast i8* %"$indices_buf_3314_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3314" = bitcast [20 x i8]* %"$indices_buf_3314_salloc" to i8*
  %"$indices_gep_3315" = getelementptr i8, i8* %"$indices_buf_3314", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3315" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1
  %"$execptr_load_3316" = load i8*, i8** @_execptr
  %"$newOperators_3318" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newOperators
  %"$update_value_3319" = bitcast %TName_List_ByStr20* %"$newOperators_3318" to i8*
  call void @_update_field(i8* %"$execptr_load_3316", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3317", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_3314", i8* %"$update_value_3319")
  %"$gasrem_3320" = load i64, i64* @_gasrem
  %"$gascmp_3321" = icmp ugt i64 1, %"$gasrem_3320"
  br i1 %"$gascmp_3321", label %"$out_of_gas_3322", label %"$have_gas_3323"

"$out_of_gas_3322":                               ; preds = %"$have_gas_3312"
  call void @_out_of_gas()
  br label %"$have_gas_3323"

"$have_gas_3323":                                 ; preds = %"$out_of_gas_3322", %"$have_gas_3312"
  %"$consume_3324" = sub i64 %"$gasrem_3320", 1
  store i64 %"$consume_3324", i64* @_gasrem
  %e = alloca i8*
  %"$gasrem_3325" = load i64, i64* @_gasrem
  %"$gascmp_3326" = icmp ugt i64 1, %"$gasrem_3325"
  br i1 %"$gascmp_3326", label %"$out_of_gas_3327", label %"$have_gas_3328"

"$out_of_gas_3327":                               ; preds = %"$have_gas_3323"
  call void @_out_of_gas()
  br label %"$have_gas_3328"

"$have_gas_3328":                                 ; preds = %"$out_of_gas_3327", %"$have_gas_3323"
  %"$consume_3329" = sub i64 %"$gasrem_3325", 1
  store i64 %"$consume_3329", i64* @_gasrem
  %"$ud-registry.eApprovedFor_57" = alloca { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.eApprovedFor_3330" = load { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApprovedFor
  %"$ud-registry.eApprovedFor_fptr_3331" = extractvalue { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_3330", 0
  %"$ud-registry.eApprovedFor_envptr_3332" = extractvalue { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_3330", 1
  %"$ud-registry.eApprovedFor__sender_3333" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.eApprovedFor__sender_3333"
  %"$ud-registry.eApprovedFor_call_3334" = call { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_fptr_3331"(i8* %"$ud-registry.eApprovedFor_envptr_3332", [20 x i8]* %"$ud-registry.eApprovedFor__sender_3333")
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_call_3334", { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eApprovedFor_57"
  %"$ud-registry.eApprovedFor_58" = alloca { i8* (i8*, %TName_Bool*)*, i8* }
  %"$$ud-registry.eApprovedFor_57_3335" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eApprovedFor_57"
  %"$$ud-registry.eApprovedFor_57_fptr_3336" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eApprovedFor_57_3335", 0
  %"$$ud-registry.eApprovedFor_57_envptr_3337" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eApprovedFor_57_3335", 1
  %"$$ud-registry.eApprovedFor_57_address_3338" = alloca [20 x i8]
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.eApprovedFor_57_address_3338"
  %"$$ud-registry.eApprovedFor_57_call_3339" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_57_fptr_3336"(i8* %"$$ud-registry.eApprovedFor_57_envptr_3337", [20 x i8]* %"$$ud-registry.eApprovedFor_57_address_3338")
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_57_call_3339", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eApprovedFor_58"
  %"$ud-registry.eApprovedFor_59" = alloca i8*
  %"$$ud-registry.eApprovedFor_58_3340" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eApprovedFor_58"
  %"$$ud-registry.eApprovedFor_58_fptr_3341" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_58_3340", 0
  %"$$ud-registry.eApprovedFor_58_envptr_3342" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_58_3340", 1
  %"$$ud-registry.eApprovedFor_58_call_3343" = call i8* %"$$ud-registry.eApprovedFor_58_fptr_3341"(i8* %"$$ud-registry.eApprovedFor_58_envptr_3342", %TName_Bool* %isApproved)
  store i8* %"$$ud-registry.eApprovedFor_58_call_3343", i8** %"$ud-registry.eApprovedFor_59"
  %"$$ud-registry.eApprovedFor_59_3344" = load i8*, i8** %"$ud-registry.eApprovedFor_59"
  store i8* %"$$ud-registry.eApprovedFor_59_3344", i8** %e
  %"$e_3345" = load i8*, i8** %e
  %"$_literal_cost_call_3347" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3345")
  %"$gasrem_3348" = load i64, i64* @_gasrem
  %"$gascmp_3349" = icmp ugt i64 %"$_literal_cost_call_3347", %"$gasrem_3348"
  br i1 %"$gascmp_3349", label %"$out_of_gas_3350", label %"$have_gas_3351"

"$out_of_gas_3350":                               ; preds = %"$have_gas_3328"
  call void @_out_of_gas()
  br label %"$have_gas_3351"

"$have_gas_3351":                                 ; preds = %"$out_of_gas_3350", %"$have_gas_3328"
  %"$consume_3352" = sub i64 %"$gasrem_3348", %"$_literal_cost_call_3347"
  store i64 %"$consume_3352", i64* @_gasrem
  %"$execptr_load_3353" = load i8*, i8** @_execptr
  %"$e_3354" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_3353", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3354")
  br label %"$matchsucc_3253"

"$default_3257":                                  ; preds = %"$have_gas_3251"
  br label %"$joinp_3"

"$joinp_3":                                       ; preds = %"$default_3257"
  br label %"$matchsucc_3253"

"$matchsucc_3253":                                ; preds = %"$have_gas_3351", %"$joinp_3"
  ret void
}

define void @approveFor(i8* %0) {
entry:
  %"$_amount_3356" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3357" = bitcast i8* %"$_amount_3356" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3357"
  %"$_sender_3358" = getelementptr i8, i8* %0, i32 16
  %"$_sender_3359" = bitcast i8* %"$_sender_3358" to [20 x i8]*
  %"$address_3360" = getelementptr i8, i8* %0, i32 36
  %"$address_3361" = bitcast i8* %"$address_3360" to [20 x i8]*
  %"$isApproved_3362" = getelementptr i8, i8* %0, i32 56
  %"$isApproved_3363" = bitcast i8* %"$isApproved_3362" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_3363"
  call void @"$approveFor_3155"(%Uint128 %_amount, [20 x i8]* %"$_sender_3359", [20 x i8]* %"$address_3361", %TName_Bool* %isApproved)
  ret void
}

define internal void @"$configureNode_3364"(%Uint128 %_amount, [20 x i8]* %"$_sender_3365", [32 x i8]* %"$node_3366", [20 x i8]* %"$owner_3367", [20 x i8]* %"$resolver_3368") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3365"
  %node = load [32 x i8], [32 x i8]* %"$node_3366"
  %owner = load [20 x i8], [20 x i8]* %"$owner_3367"
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_3368"
  %maybeRecord = alloca %TName_Option_ud-registry.Record*
  %"$indices_buf_3369_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_3369_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3369_salloc_load", i64 32)
  %"$indices_buf_3369_salloc" = bitcast i8* %"$indices_buf_3369_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3369" = bitcast [32 x i8]* %"$indices_buf_3369_salloc" to i8*
  %"$indices_gep_3370" = getelementptr i8, i8* %"$indices_buf_3369", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3370" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast
  %"$execptr_load_3371" = load i8*, i8** @_execptr
  %"$maybeRecord_3373" = call i8* @_fetch_field(i8* %"$execptr_load_3371", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3372", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3369", i32 1)
  %"$maybeRecord_3374" = bitcast i8* %"$maybeRecord_3373" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3374", %TName_Option_ud-registry.Record** %maybeRecord
  %"$maybeRecord_3375" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord
  %"$$maybeRecord_3375_3376" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3375" to i8*
  %"$_literal_cost_call_3377" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_3375_3376")
  %"$gasadd_3378" = add i64 %"$_literal_cost_call_3377", 0
  %"$gasadd_3379" = add i64 %"$gasadd_3378", 1
  %"$gasrem_3380" = load i64, i64* @_gasrem
  %"$gascmp_3381" = icmp ugt i64 %"$gasadd_3379", %"$gasrem_3380"
  br i1 %"$gascmp_3381", label %"$out_of_gas_3382", label %"$have_gas_3383"

"$out_of_gas_3382":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3383"

"$have_gas_3383":                                 ; preds = %"$out_of_gas_3382", %entry
  %"$consume_3384" = sub i64 %"$gasrem_3380", %"$gasadd_3379"
  store i64 %"$consume_3384", i64* @_gasrem
  %maybeApproved = alloca %TName_Option_ByStr20*
  %"$indices_buf_3385_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_3385_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3385_salloc_load", i64 32)
  %"$indices_buf_3385_salloc" = bitcast i8* %"$indices_buf_3385_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3385" = bitcast [32 x i8]* %"$indices_buf_3385_salloc" to i8*
  %"$indices_gep_3386" = getelementptr i8, i8* %"$indices_buf_3385", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3386" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1
  %"$execptr_load_3387" = load i8*, i8** @_execptr
  %"$maybeApproved_3389" = call i8* @_fetch_field(i8* %"$execptr_load_3387", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3388", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_3385", i32 1)
  %"$maybeApproved_3390" = bitcast i8* %"$maybeApproved_3389" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3390", %TName_Option_ByStr20** %maybeApproved
  %"$maybeApproved_3391" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved
  %"$$maybeApproved_3391_3392" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3391" to i8*
  %"$_literal_cost_call_3393" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_3391_3392")
  %"$gasadd_3394" = add i64 %"$_literal_cost_call_3393", 0
  %"$gasadd_3395" = add i64 %"$gasadd_3394", 1
  %"$gasrem_3396" = load i64, i64* @_gasrem
  %"$gascmp_3397" = icmp ugt i64 %"$gasadd_3395", %"$gasrem_3396"
  br i1 %"$gascmp_3397", label %"$out_of_gas_3398", label %"$have_gas_3399"

"$out_of_gas_3398":                               ; preds = %"$have_gas_3383"
  call void @_out_of_gas()
  br label %"$have_gas_3399"

"$have_gas_3399":                                 ; preds = %"$out_of_gas_3398", %"$have_gas_3383"
  %"$consume_3400" = sub i64 %"$gasrem_3396", %"$gasadd_3395"
  store i64 %"$consume_3400", i64* @_gasrem
  %"$gasrem_3401" = load i64, i64* @_gasrem
  %"$gascmp_3402" = icmp ugt i64 1, %"$gasrem_3401"
  br i1 %"$gascmp_3402", label %"$out_of_gas_3403", label %"$have_gas_3404"

"$out_of_gas_3403":                               ; preds = %"$have_gas_3399"
  call void @_out_of_gas()
  br label %"$have_gas_3404"

"$have_gas_3404":                                 ; preds = %"$out_of_gas_3403", %"$have_gas_3399"
  %"$consume_3405" = sub i64 %"$gasrem_3401", 1
  store i64 %"$consume_3405", i64* @_gasrem
  %recordOwner = alloca [20 x i8]
  %"$gasrem_3406" = load i64, i64* @_gasrem
  %"$gascmp_3407" = icmp ugt i64 1, %"$gasrem_3406"
  br i1 %"$gascmp_3407", label %"$out_of_gas_3408", label %"$have_gas_3409"

"$out_of_gas_3408":                               ; preds = %"$have_gas_3404"
  call void @_out_of_gas()
  br label %"$have_gas_3409"

"$have_gas_3409":                                 ; preds = %"$out_of_gas_3408", %"$have_gas_3404"
  %"$consume_3410" = sub i64 %"$gasrem_3406", 1
  store i64 %"$consume_3410", i64* @_gasrem
  %"$ud-registry.recordMemberOwner_76" = alloca [20 x i8]
  %"$ud-registry.recordMemberOwner_3411" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner
  %"$ud-registry.recordMemberOwner_fptr_3412" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3411", 0
  %"$ud-registry.recordMemberOwner_envptr_3413" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3411", 1
  %"$maybeRecord_3414" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord
  %"$ud-registry.recordMemberOwner_retalloca_3415" = alloca [20 x i8]
  call void %"$ud-registry.recordMemberOwner_fptr_3412"(i8* %"$ud-registry.recordMemberOwner_envptr_3413", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3415", %TName_Option_ud-registry.Record* %"$maybeRecord_3414")
  %"$ud-registry.recordMemberOwner_ret_3416" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3415"
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3416", [20 x i8]* %"$ud-registry.recordMemberOwner_76"
  %"$$ud-registry.recordMemberOwner_76_3417" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_76"
  store [20 x i8] %"$$ud-registry.recordMemberOwner_76_3417", [20 x i8]* %recordOwner
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*
  %"$indices_buf_3418_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_3418_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3418_salloc_load", i64 20)
  %"$indices_buf_3418_salloc" = bitcast i8* %"$indices_buf_3418_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3418" = bitcast [20 x i8]* %"$indices_buf_3418_salloc" to i8*
  %"$recordOwner_3419" = load [20 x i8], [20 x i8]* %recordOwner
  %"$indices_gep_3420" = getelementptr i8, i8* %"$indices_buf_3418", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3420" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3419", [20 x i8]* %indices_cast2
  %"$execptr_load_3421" = load i8*, i8** @_execptr
  %"$maybeOperators_3423" = call i8* @_fetch_field(i8* %"$execptr_load_3421", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3422", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_3418", i32 1)
  %"$maybeOperators_3424" = bitcast i8* %"$maybeOperators_3423" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3424", %"TName_Option_List_(ByStr20)"** %maybeOperators
  %"$maybeOperators_3425" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators
  %"$$maybeOperators_3425_3426" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3425" to i8*
  %"$_literal_cost_call_3427" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_3425_3426")
  %"$gasadd_3428" = add i64 %"$_literal_cost_call_3427", 0
  %"$gasadd_3429" = add i64 %"$gasadd_3428", 1
  %"$gasrem_3430" = load i64, i64* @_gasrem
  %"$gascmp_3431" = icmp ugt i64 %"$gasadd_3429", %"$gasrem_3430"
  br i1 %"$gascmp_3431", label %"$out_of_gas_3432", label %"$have_gas_3433"

"$out_of_gas_3432":                               ; preds = %"$have_gas_3409"
  call void @_out_of_gas()
  br label %"$have_gas_3433"

"$have_gas_3433":                                 ; preds = %"$out_of_gas_3432", %"$have_gas_3409"
  %"$consume_3434" = sub i64 %"$gasrem_3430", %"$gasadd_3429"
  store i64 %"$consume_3434", i64* @_gasrem
  %"$gasrem_3435" = load i64, i64* @_gasrem
  %"$gascmp_3436" = icmp ugt i64 1, %"$gasrem_3435"
  br i1 %"$gascmp_3436", label %"$out_of_gas_3437", label %"$have_gas_3438"

"$out_of_gas_3437":                               ; preds = %"$have_gas_3433"
  call void @_out_of_gas()
  br label %"$have_gas_3438"

"$have_gas_3438":                                 ; preds = %"$out_of_gas_3437", %"$have_gas_3433"
  %"$consume_3439" = sub i64 %"$gasrem_3435", 1
  store i64 %"$consume_3439", i64* @_gasrem
  %isSenderOAO = alloca %TName_Bool*
  %"$gasrem_3440" = load i64, i64* @_gasrem
  %"$gascmp_3441" = icmp ugt i64 1, %"$gasrem_3440"
  br i1 %"$gascmp_3441", label %"$out_of_gas_3442", label %"$have_gas_3443"

"$out_of_gas_3442":                               ; preds = %"$have_gas_3438"
  call void @_out_of_gas()
  br label %"$have_gas_3443"

"$have_gas_3443":                                 ; preds = %"$out_of_gas_3442", %"$have_gas_3438"
  %"$consume_3444" = sub i64 %"$gasrem_3440", 1
  store i64 %"$consume_3444", i64* @_gasrem
  %"$ud-registry.getIsOAO_72" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.getIsOAO_3445" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO
  %"$ud-registry.getIsOAO_fptr_3446" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3445", 0
  %"$ud-registry.getIsOAO_envptr_3447" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3445", 1
  %"$ud-registry.getIsOAO__sender_3448" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3448"
  %"$ud-registry.getIsOAO_call_3449" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_3446"(i8* %"$ud-registry.getIsOAO_envptr_3447", [20 x i8]* %"$ud-registry.getIsOAO__sender_3448")
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_3449", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_72"
  %"$ud-registry.getIsOAO_73" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }
  %"$$ud-registry.getIsOAO_72_3450" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_72"
  %"$$ud-registry.getIsOAO_72_fptr_3451" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_72_3450", 0
  %"$$ud-registry.getIsOAO_72_envptr_3452" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_72_3450", 1
  %"$$ud-registry.getIsOAO_72_recordOwner_3453" = alloca [20 x i8]
  %"$recordOwner_3454" = load [20 x i8], [20 x i8]* %recordOwner
  store [20 x i8] %"$recordOwner_3454", [20 x i8]* %"$$ud-registry.getIsOAO_72_recordOwner_3453"
  %"$$ud-registry.getIsOAO_72_call_3455" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_72_fptr_3451"(i8* %"$$ud-registry.getIsOAO_72_envptr_3452", [20 x i8]* %"$$ud-registry.getIsOAO_72_recordOwner_3453")
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_72_call_3455", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_73"
  %"$ud-registry.getIsOAO_74" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }
  %"$$ud-registry.getIsOAO_73_3456" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_73"
  %"$$ud-registry.getIsOAO_73_fptr_3457" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_73_3456", 0
  %"$$ud-registry.getIsOAO_73_envptr_3458" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_73_3456", 1
  %"$maybeApproved_3459" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved
  %"$$ud-registry.getIsOAO_73_call_3460" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_73_fptr_3457"(i8* %"$$ud-registry.getIsOAO_73_envptr_3458", %TName_Option_ByStr20* %"$maybeApproved_3459")
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_73_call_3460", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_74"
  %"$ud-registry.getIsOAO_75" = alloca %TName_Bool*
  %"$$ud-registry.getIsOAO_74_3461" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_74"
  %"$$ud-registry.getIsOAO_74_fptr_3462" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_74_3461", 0
  %"$$ud-registry.getIsOAO_74_envptr_3463" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_74_3461", 1
  %"$maybeOperators_3464" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators
  %"$$ud-registry.getIsOAO_74_call_3465" = call %TName_Bool* %"$$ud-registry.getIsOAO_74_fptr_3462"(i8* %"$$ud-registry.getIsOAO_74_envptr_3463", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3464")
  store %TName_Bool* %"$$ud-registry.getIsOAO_74_call_3465", %TName_Bool** %"$ud-registry.getIsOAO_75"
  %"$$ud-registry.getIsOAO_75_3466" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_75"
  store %TName_Bool* %"$$ud-registry.getIsOAO_75_3466", %TName_Bool** %isSenderOAO
  %"$gasrem_3467" = load i64, i64* @_gasrem
  %"$gascmp_3468" = icmp ugt i64 2, %"$gasrem_3467"
  br i1 %"$gascmp_3468", label %"$out_of_gas_3469", label %"$have_gas_3470"

"$out_of_gas_3469":                               ; preds = %"$have_gas_3443"
  call void @_out_of_gas()
  br label %"$have_gas_3470"

"$have_gas_3470":                                 ; preds = %"$out_of_gas_3469", %"$have_gas_3443"
  %"$consume_3471" = sub i64 %"$gasrem_3467", 2
  store i64 %"$consume_3471", i64* @_gasrem
  %"$isSenderOAO_3473" = load %TName_Bool*, %TName_Bool** %isSenderOAO
  %"$isSenderOAO_tag_3474" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3473", i32 0, i32 0
  %"$isSenderOAO_tag_3475" = load i8, i8* %"$isSenderOAO_tag_3474"
  switch i8 %"$isSenderOAO_tag_3475", label %"$empty_default_3476" [
    i8 0, label %"$True_3477"
    i8 1, label %"$False_3619"
  ]

"$True_3477":                                     ; preds = %"$have_gas_3470"
  %"$isSenderOAO_3478" = bitcast %TName_Bool* %"$isSenderOAO_3473" to %CName_True*
  %"$gasrem_3479" = load i64, i64* @_gasrem
  %"$gascmp_3480" = icmp ugt i64 1, %"$gasrem_3479"
  br i1 %"$gascmp_3480", label %"$out_of_gas_3481", label %"$have_gas_3482"

"$out_of_gas_3481":                               ; preds = %"$True_3477"
  call void @_out_of_gas()
  br label %"$have_gas_3482"

"$have_gas_3482":                                 ; preds = %"$out_of_gas_3481", %"$True_3477"
  %"$consume_3483" = sub i64 %"$gasrem_3479", 1
  store i64 %"$consume_3483", i64* @_gasrem
  %newRecord = alloca %TName_ud-registry.Record*
  %"$gasrem_3484" = load i64, i64* @_gasrem
  %"$gascmp_3485" = icmp ugt i64 1, %"$gasrem_3484"
  br i1 %"$gascmp_3485", label %"$out_of_gas_3486", label %"$have_gas_3487"

"$out_of_gas_3486":                               ; preds = %"$have_gas_3482"
  call void @_out_of_gas()
  br label %"$have_gas_3487"

"$have_gas_3487":                                 ; preds = %"$out_of_gas_3486", %"$have_gas_3482"
  %"$consume_3488" = sub i64 %"$gasrem_3484", 1
  store i64 %"$consume_3488", i64* @_gasrem
  %"$adtval_3489_load" = load i8*, i8** @_execptr
  %"$adtval_3489_salloc" = call i8* @_salloc(i8* %"$adtval_3489_load", i64 41)
  %"$adtval_3489" = bitcast i8* %"$adtval_3489_salloc" to %CName_ud-registry.Record*
  %"$adtgep_3490" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3489", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3490"
  %"$adtgep_3491" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3489", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_3491"
  %"$adtgep_3492" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3489", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_3492"
  %"$adtptr_3493" = bitcast %CName_ud-registry.Record* %"$adtval_3489" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_3493", %TName_ud-registry.Record** %newRecord
  %"$newRecord_3494" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord
  %"$$newRecord_3494_3495" = bitcast %TName_ud-registry.Record* %"$newRecord_3494" to i8*
  %"$_literal_cost_call_3496" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_3494_3495")
  %"$gasadd_3497" = add i64 %"$_literal_cost_call_3496", 1
  %"$gasrem_3498" = load i64, i64* @_gasrem
  %"$gascmp_3499" = icmp ugt i64 %"$gasadd_3497", %"$gasrem_3498"
  br i1 %"$gascmp_3499", label %"$out_of_gas_3500", label %"$have_gas_3501"

"$out_of_gas_3500":                               ; preds = %"$have_gas_3487"
  call void @_out_of_gas()
  br label %"$have_gas_3501"

"$have_gas_3501":                                 ; preds = %"$out_of_gas_3500", %"$have_gas_3487"
  %"$consume_3502" = sub i64 %"$gasrem_3498", %"$gasadd_3497"
  store i64 %"$consume_3502", i64* @_gasrem
  %"$indices_buf_3503_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_3503_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3503_salloc_load", i64 32)
  %"$indices_buf_3503_salloc" = bitcast i8* %"$indices_buf_3503_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3503" = bitcast [32 x i8]* %"$indices_buf_3503_salloc" to i8*
  %"$indices_gep_3504" = getelementptr i8, i8* %"$indices_buf_3503", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_3504" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3
  %"$execptr_load_3505" = load i8*, i8** @_execptr
  %"$newRecord_3507" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord
  %"$update_value_3508" = bitcast %TName_ud-registry.Record* %"$newRecord_3507" to i8*
  call void @_update_field(i8* %"$execptr_load_3505", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3506", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3503", i8* %"$update_value_3508")
  %"$gasrem_3509" = load i64, i64* @_gasrem
  %"$gascmp_3510" = icmp ugt i64 1, %"$gasrem_3509"
  br i1 %"$gascmp_3510", label %"$out_of_gas_3511", label %"$have_gas_3512"

"$out_of_gas_3511":                               ; preds = %"$have_gas_3501"
  call void @_out_of_gas()
  br label %"$have_gas_3512"

"$have_gas_3512":                                 ; preds = %"$out_of_gas_3511", %"$have_gas_3501"
  %"$consume_3513" = sub i64 %"$gasrem_3509", 1
  store i64 %"$consume_3513", i64* @_gasrem
  %e = alloca i8*
  %"$gasrem_3514" = load i64, i64* @_gasrem
  %"$gascmp_3515" = icmp ugt i64 1, %"$gasrem_3514"
  br i1 %"$gascmp_3515", label %"$out_of_gas_3516", label %"$have_gas_3517"

"$out_of_gas_3516":                               ; preds = %"$have_gas_3512"
  call void @_out_of_gas()
  br label %"$have_gas_3517"

"$have_gas_3517":                                 ; preds = %"$out_of_gas_3516", %"$have_gas_3512"
  %"$consume_3518" = sub i64 %"$gasrem_3514", 1
  store i64 %"$consume_3518", i64* @_gasrem
  %"$ud-registry.eConfigured_67" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.eConfigured_3519" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured
  %"$ud-registry.eConfigured_fptr_3520" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3519", 0
  %"$ud-registry.eConfigured_envptr_3521" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3519", 1
  %"$ud-registry.eConfigured_node_3522" = alloca [32 x i8]
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_3522"
  %"$ud-registry.eConfigured_call_3523" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_3520"(i8* %"$ud-registry.eConfigured_envptr_3521", [32 x i8]* %"$ud-registry.eConfigured_node_3522")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_3523", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_67"
  %"$ud-registry.eConfigured_68" = alloca { i8* (i8*, [20 x i8]*)*, i8* }
  %"$$ud-registry.eConfigured_67_3524" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_67"
  %"$$ud-registry.eConfigured_67_fptr_3525" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_67_3524", 0
  %"$$ud-registry.eConfigured_67_envptr_3526" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_67_3524", 1
  %"$$ud-registry.eConfigured_67_owner_3527" = alloca [20 x i8]
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_67_owner_3527"
  %"$$ud-registry.eConfigured_67_call_3528" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_67_fptr_3525"(i8* %"$$ud-registry.eConfigured_67_envptr_3526", [20 x i8]* %"$$ud-registry.eConfigured_67_owner_3527")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_67_call_3528", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_68"
  %"$ud-registry.eConfigured_69" = alloca i8*
  %"$$ud-registry.eConfigured_68_3529" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_68"
  %"$$ud-registry.eConfigured_68_fptr_3530" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_68_3529", 0
  %"$$ud-registry.eConfigured_68_envptr_3531" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_68_3529", 1
  %"$$ud-registry.eConfigured_68_resolver_3532" = alloca [20 x i8]
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_68_resolver_3532"
  %"$$ud-registry.eConfigured_68_call_3533" = call i8* %"$$ud-registry.eConfigured_68_fptr_3530"(i8* %"$$ud-registry.eConfigured_68_envptr_3531", [20 x i8]* %"$$ud-registry.eConfigured_68_resolver_3532")
  store i8* %"$$ud-registry.eConfigured_68_call_3533", i8** %"$ud-registry.eConfigured_69"
  %"$$ud-registry.eConfigured_69_3534" = load i8*, i8** %"$ud-registry.eConfigured_69"
  store i8* %"$$ud-registry.eConfigured_69_3534", i8** %e
  %"$e_3535" = load i8*, i8** %e
  %"$_literal_cost_call_3537" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3535")
  %"$gasrem_3538" = load i64, i64* @_gasrem
  %"$gascmp_3539" = icmp ugt i64 %"$_literal_cost_call_3537", %"$gasrem_3538"
  br i1 %"$gascmp_3539", label %"$out_of_gas_3540", label %"$have_gas_3541"

"$out_of_gas_3540":                               ; preds = %"$have_gas_3517"
  call void @_out_of_gas()
  br label %"$have_gas_3541"

"$have_gas_3541":                                 ; preds = %"$out_of_gas_3540", %"$have_gas_3517"
  %"$consume_3542" = sub i64 %"$gasrem_3538", %"$_literal_cost_call_3537"
  store i64 %"$consume_3542", i64* @_gasrem
  %"$execptr_load_3543" = load i8*, i8** @_execptr
  %"$e_3544" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_3543", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3544")
  %"$gasrem_3545" = load i64, i64* @_gasrem
  %"$gascmp_3546" = icmp ugt i64 1, %"$gasrem_3545"
  br i1 %"$gascmp_3546", label %"$out_of_gas_3547", label %"$have_gas_3548"

"$out_of_gas_3547":                               ; preds = %"$have_gas_3541"
  call void @_out_of_gas()
  br label %"$have_gas_3548"

"$have_gas_3548":                                 ; preds = %"$out_of_gas_3547", %"$have_gas_3541"
  %"$consume_3549" = sub i64 %"$gasrem_3545", 1
  store i64 %"$consume_3549", i64* @_gasrem
  %msgs = alloca %TName_List_Message*
  %"$gasrem_3550" = load i64, i64* @_gasrem
  %"$gascmp_3551" = icmp ugt i64 1, %"$gasrem_3550"
  br i1 %"$gascmp_3551", label %"$out_of_gas_3552", label %"$have_gas_3553"

"$out_of_gas_3552":                               ; preds = %"$have_gas_3548"
  call void @_out_of_gas()
  br label %"$have_gas_3553"

"$have_gas_3553":                                 ; preds = %"$out_of_gas_3552", %"$have_gas_3548"
  %"$consume_3554" = sub i64 %"$gasrem_3550", 1
  store i64 %"$consume_3554", i64* @_gasrem
  %m = alloca i8*
  %"$gasrem_3555" = load i64, i64* @_gasrem
  %"$gascmp_3556" = icmp ugt i64 1, %"$gasrem_3555"
  br i1 %"$gascmp_3556", label %"$out_of_gas_3557", label %"$have_gas_3558"

"$out_of_gas_3557":                               ; preds = %"$have_gas_3553"
  call void @_out_of_gas()
  br label %"$have_gas_3558"

"$have_gas_3558":                                 ; preds = %"$out_of_gas_3557", %"$have_gas_3553"
  %"$consume_3559" = sub i64 %"$gasrem_3555", 1
  store i64 %"$consume_3559", i64* @_gasrem
  %"$msgobj_3560_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_3560_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3560_salloc_load", i64 225)
  %"$msgobj_3560_salloc" = bitcast i8* %"$msgobj_3560_salloc_salloc" to [225 x i8]*
  %"$msgobj_3560" = bitcast [225 x i8]* %"$msgobj_3560_salloc" to i8*
  store i8 5, i8* %"$msgobj_3560"
  %"$msgobj_fname_3562" = getelementptr i8, i8* %"$msgobj_3560", i32 1
  %"$msgobj_fname_3563" = bitcast i8* %"$msgobj_fname_3562" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3561", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3563"
  %"$msgobj_td_3564" = getelementptr i8, i8* %"$msgobj_3560", i32 17
  %"$msgobj_td_3565" = bitcast i8* %"$msgobj_td_3564" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_3565"
  %"$msgobj_v_3567" = getelementptr i8, i8* %"$msgobj_3560", i32 25
  %"$msgobj_v_3568" = bitcast i8* %"$msgobj_v_3567" to %String*
  store %String { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$stringlit_3566", i32 0, i32 0), i32 18 }, %String* %"$msgobj_v_3568"
  %"$msgobj_fname_3570" = getelementptr i8, i8* %"$msgobj_3560", i32 41
  %"$msgobj_fname_3571" = bitcast i8* %"$msgobj_fname_3570" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3569", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3571"
  %"$msgobj_td_3572" = getelementptr i8, i8* %"$msgobj_3560", i32 57
  %"$msgobj_td_3573" = bitcast i8* %"$msgobj_td_3572" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_3573"
  %"$msgobj_v_3574" = getelementptr i8, i8* %"$msgobj_3560", i32 65
  %"$msgobj_v_3575" = bitcast i8* %"$msgobj_v_3574" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3575"
  %"$msgobj_fname_3577" = getelementptr i8, i8* %"$msgobj_3560", i32 97
  %"$msgobj_fname_3578" = bitcast i8* %"$msgobj_fname_3577" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3576", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3578"
  %"$msgobj_td_3579" = getelementptr i8, i8* %"$msgobj_3560", i32 113
  %"$msgobj_td_3580" = bitcast i8* %"$msgobj_td_3579" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_3580"
  %"$msgobj_v_3581" = getelementptr i8, i8* %"$msgobj_3560", i32 121
  %"$msgobj_v_3582" = bitcast i8* %"$msgobj_v_3581" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_3582"
  %"$msgobj_fname_3584" = getelementptr i8, i8* %"$msgobj_3560", i32 141
  %"$msgobj_fname_3585" = bitcast i8* %"$msgobj_fname_3584" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3583", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3585"
  %"$msgobj_td_3586" = getelementptr i8, i8* %"$msgobj_3560", i32 157
  %"$msgobj_td_3587" = bitcast i8* %"$msgobj_td_3586" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_3587"
  %"$msgobj_v_3588" = getelementptr i8, i8* %"$msgobj_3560", i32 165
  %"$msgobj_v_3589" = bitcast i8* %"$msgobj_v_3588" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3589"
  %"$msgobj_fname_3591" = getelementptr i8, i8* %"$msgobj_3560", i32 181
  %"$msgobj_fname_3592" = bitcast i8* %"$msgobj_fname_3591" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3590", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3592"
  %"$msgobj_td_3593" = getelementptr i8, i8* %"$msgobj_3560", i32 197
  %"$msgobj_td_3594" = bitcast i8* %"$msgobj_td_3593" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_3594"
  %"$msgobj_v_3595" = getelementptr i8, i8* %"$msgobj_3560", i32 205
  %"$msgobj_v_3596" = bitcast i8* %"$msgobj_v_3595" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3596"
  store i8* %"$msgobj_3560", i8** %m
  %"$gasrem_3598" = load i64, i64* @_gasrem
  %"$gascmp_3599" = icmp ugt i64 1, %"$gasrem_3598"
  br i1 %"$gascmp_3599", label %"$out_of_gas_3600", label %"$have_gas_3601"

"$out_of_gas_3600":                               ; preds = %"$have_gas_3558"
  call void @_out_of_gas()
  br label %"$have_gas_3601"

"$have_gas_3601":                                 ; preds = %"$out_of_gas_3600", %"$have_gas_3558"
  %"$consume_3602" = sub i64 %"$gasrem_3598", 1
  store i64 %"$consume_3602", i64* @_gasrem
  %"$ud-registry.oneMsg_66" = alloca %TName_List_Message*
  %"$ud-registry.oneMsg_3603" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg
  %"$ud-registry.oneMsg_fptr_3604" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3603", 0
  %"$ud-registry.oneMsg_envptr_3605" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3603", 1
  %"$m_3606" = load i8*, i8** %m
  %"$ud-registry.oneMsg_call_3607" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3604"(i8* %"$ud-registry.oneMsg_envptr_3605", i8* %"$m_3606")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3607", %TName_List_Message** %"$ud-registry.oneMsg_66"
  %"$$ud-registry.oneMsg_66_3608" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_66"
  store %TName_List_Message* %"$$ud-registry.oneMsg_66_3608", %TName_List_Message** %msgs
  %"$msgs_3609" = load %TName_List_Message*, %TName_List_Message** %msgs
  %"$$msgs_3609_3610" = bitcast %TName_List_Message* %"$msgs_3609" to i8*
  %"$_literal_cost_call_3611" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_3609_3610")
  %"$gasrem_3612" = load i64, i64* @_gasrem
  %"$gascmp_3613" = icmp ugt i64 %"$_literal_cost_call_3611", %"$gasrem_3612"
  br i1 %"$gascmp_3613", label %"$out_of_gas_3614", label %"$have_gas_3615"

"$out_of_gas_3614":                               ; preds = %"$have_gas_3601"
  call void @_out_of_gas()
  br label %"$have_gas_3615"

"$have_gas_3615":                                 ; preds = %"$out_of_gas_3614", %"$have_gas_3601"
  %"$consume_3616" = sub i64 %"$gasrem_3612", %"$_literal_cost_call_3611"
  store i64 %"$consume_3616", i64* @_gasrem
  %"$execptr_load_3617" = load i8*, i8** @_execptr
  %"$msgs_3618" = load %TName_List_Message*, %TName_List_Message** %msgs
  call void @_send(i8* %"$execptr_load_3617", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_3618")
  br label %"$matchsucc_3472"

"$False_3619":                                    ; preds = %"$have_gas_3470"
  %"$isSenderOAO_3620" = bitcast %TName_Bool* %"$isSenderOAO_3473" to %CName_False*
  %"$gasrem_3621" = load i64, i64* @_gasrem
  %"$gascmp_3622" = icmp ugt i64 1, %"$gasrem_3621"
  br i1 %"$gascmp_3622", label %"$out_of_gas_3623", label %"$have_gas_3624"

"$out_of_gas_3623":                               ; preds = %"$False_3619"
  call void @_out_of_gas()
  br label %"$have_gas_3624"

"$have_gas_3624":                                 ; preds = %"$out_of_gas_3623", %"$False_3619"
  %"$consume_3625" = sub i64 %"$gasrem_3621", 1
  store i64 %"$consume_3625", i64* @_gasrem
  %e4 = alloca i8*
  %"$gasrem_3626" = load i64, i64* @_gasrem
  %"$gascmp_3627" = icmp ugt i64 1, %"$gasrem_3626"
  br i1 %"$gascmp_3627", label %"$out_of_gas_3628", label %"$have_gas_3629"

"$out_of_gas_3628":                               ; preds = %"$have_gas_3624"
  call void @_out_of_gas()
  br label %"$have_gas_3629"

"$have_gas_3629":                                 ; preds = %"$out_of_gas_3628", %"$have_gas_3624"
  %"$consume_3630" = sub i64 %"$gasrem_3626", 1
  store i64 %"$consume_3630", i64* @_gasrem
  %m5 = alloca %String
  %"$gasrem_3631" = load i64, i64* @_gasrem
  %"$gascmp_3632" = icmp ugt i64 1, %"$gasrem_3631"
  br i1 %"$gascmp_3632", label %"$out_of_gas_3633", label %"$have_gas_3634"

"$out_of_gas_3633":                               ; preds = %"$have_gas_3629"
  call void @_out_of_gas()
  br label %"$have_gas_3634"

"$have_gas_3634":                                 ; preds = %"$out_of_gas_3633", %"$have_gas_3629"
  %"$consume_3635" = sub i64 %"$gasrem_3631", 1
  store i64 %"$consume_3635", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_3636", i32 0, i32 0), i32 43 }, %String* %m5
  %"$gasrem_3637" = load i64, i64* @_gasrem
  %"$gascmp_3638" = icmp ugt i64 1, %"$gasrem_3637"
  br i1 %"$gascmp_3638", label %"$out_of_gas_3639", label %"$have_gas_3640"

"$out_of_gas_3639":                               ; preds = %"$have_gas_3634"
  call void @_out_of_gas()
  br label %"$have_gas_3640"

"$have_gas_3640":                                 ; preds = %"$out_of_gas_3639", %"$have_gas_3634"
  %"$consume_3641" = sub i64 %"$gasrem_3637", 1
  store i64 %"$consume_3641", i64* @_gasrem
  %"$ud-registry.eError_71" = alloca i8*
  %"$ud-registry.eError_3642" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError
  %"$ud-registry.eError_fptr_3643" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3642", 0
  %"$ud-registry.eError_envptr_3644" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3642", 1
  %"$m_3645" = load %String, %String* %m5
  %"$ud-registry.eError_call_3646" = call i8* %"$ud-registry.eError_fptr_3643"(i8* %"$ud-registry.eError_envptr_3644", %String %"$m_3645")
  store i8* %"$ud-registry.eError_call_3646", i8** %"$ud-registry.eError_71"
  %"$$ud-registry.eError_71_3647" = load i8*, i8** %"$ud-registry.eError_71"
  store i8* %"$$ud-registry.eError_71_3647", i8** %e4
  %"$e_3648" = load i8*, i8** %e4
  %"$_literal_cost_call_3650" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3648")
  %"$gasrem_3651" = load i64, i64* @_gasrem
  %"$gascmp_3652" = icmp ugt i64 %"$_literal_cost_call_3650", %"$gasrem_3651"
  br i1 %"$gascmp_3652", label %"$out_of_gas_3653", label %"$have_gas_3654"

"$out_of_gas_3653":                               ; preds = %"$have_gas_3640"
  call void @_out_of_gas()
  br label %"$have_gas_3654"

"$have_gas_3654":                                 ; preds = %"$out_of_gas_3653", %"$have_gas_3640"
  %"$consume_3655" = sub i64 %"$gasrem_3651", %"$_literal_cost_call_3650"
  store i64 %"$consume_3655", i64* @_gasrem
  %"$execptr_load_3656" = load i8*, i8** @_execptr
  %"$e_3657" = load i8*, i8** %e4
  call void @_event(i8* %"$execptr_load_3656", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3657")
  %"$gasrem_3658" = load i64, i64* @_gasrem
  %"$gascmp_3659" = icmp ugt i64 1, %"$gasrem_3658"
  br i1 %"$gascmp_3659", label %"$out_of_gas_3660", label %"$have_gas_3661"

"$out_of_gas_3660":                               ; preds = %"$have_gas_3654"
  call void @_out_of_gas()
  br label %"$have_gas_3661"

"$have_gas_3661":                                 ; preds = %"$out_of_gas_3660", %"$have_gas_3654"
  %"$consume_3662" = sub i64 %"$gasrem_3658", 1
  store i64 %"$consume_3662", i64* @_gasrem
  %msgs6 = alloca %TName_List_Message*
  %"$gasrem_3663" = load i64, i64* @_gasrem
  %"$gascmp_3664" = icmp ugt i64 1, %"$gasrem_3663"
  br i1 %"$gascmp_3664", label %"$out_of_gas_3665", label %"$have_gas_3666"

"$out_of_gas_3665":                               ; preds = %"$have_gas_3661"
  call void @_out_of_gas()
  br label %"$have_gas_3666"

"$have_gas_3666":                                 ; preds = %"$out_of_gas_3665", %"$have_gas_3661"
  %"$consume_3667" = sub i64 %"$gasrem_3663", 1
  store i64 %"$consume_3667", i64* @_gasrem
  %m7 = alloca i8*
  %"$gasrem_3668" = load i64, i64* @_gasrem
  %"$gascmp_3669" = icmp ugt i64 1, %"$gasrem_3668"
  br i1 %"$gascmp_3669", label %"$out_of_gas_3670", label %"$have_gas_3671"

"$out_of_gas_3670":                               ; preds = %"$have_gas_3666"
  call void @_out_of_gas()
  br label %"$have_gas_3671"

"$have_gas_3671":                                 ; preds = %"$out_of_gas_3670", %"$have_gas_3666"
  %"$consume_3672" = sub i64 %"$gasrem_3668", 1
  store i64 %"$consume_3672", i64* @_gasrem
  %"$msgobj_3673_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_3673_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3673_salloc_load", i64 225)
  %"$msgobj_3673_salloc" = bitcast i8* %"$msgobj_3673_salloc_salloc" to [225 x i8]*
  %"$msgobj_3673" = bitcast [225 x i8]* %"$msgobj_3673_salloc" to i8*
  store i8 5, i8* %"$msgobj_3673"
  %"$msgobj_fname_3675" = getelementptr i8, i8* %"$msgobj_3673", i32 1
  %"$msgobj_fname_3676" = bitcast i8* %"$msgobj_fname_3675" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3674", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3676"
  %"$msgobj_td_3677" = getelementptr i8, i8* %"$msgobj_3673", i32 17
  %"$msgobj_td_3678" = bitcast i8* %"$msgobj_td_3677" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_3678"
  %"$msgobj_v_3680" = getelementptr i8, i8* %"$msgobj_3673", i32 25
  %"$msgobj_v_3681" = bitcast i8* %"$msgobj_v_3680" to %String*
  store %String { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$stringlit_3679", i32 0, i32 0), i32 18 }, %String* %"$msgobj_v_3681"
  %"$msgobj_fname_3683" = getelementptr i8, i8* %"$msgobj_3673", i32 41
  %"$msgobj_fname_3684" = bitcast i8* %"$msgobj_fname_3683" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3682", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3684"
  %"$msgobj_td_3685" = getelementptr i8, i8* %"$msgobj_3673", i32 57
  %"$msgobj_td_3686" = bitcast i8* %"$msgobj_td_3685" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_3686"
  %"$msgobj_v_3687" = getelementptr i8, i8* %"$msgobj_3673", i32 65
  %"$msgobj_v_3688" = bitcast i8* %"$msgobj_v_3687" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3688"
  %"$msgobj_fname_3690" = getelementptr i8, i8* %"$msgobj_3673", i32 97
  %"$msgobj_fname_3691" = bitcast i8* %"$msgobj_fname_3690" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3689", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3691"
  %"$msgobj_td_3692" = getelementptr i8, i8* %"$msgobj_3673", i32 113
  %"$msgobj_td_3693" = bitcast i8* %"$msgobj_td_3692" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_3693"
  %"$recordOwner_3694" = load [20 x i8], [20 x i8]* %recordOwner
  %"$msgobj_v_3695" = getelementptr i8, i8* %"$msgobj_3673", i32 121
  %"$msgobj_v_3696" = bitcast i8* %"$msgobj_v_3695" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3694", [20 x i8]* %"$msgobj_v_3696"
  %"$msgobj_fname_3698" = getelementptr i8, i8* %"$msgobj_3673", i32 141
  %"$msgobj_fname_3699" = bitcast i8* %"$msgobj_fname_3698" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3697", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3699"
  %"$msgobj_td_3700" = getelementptr i8, i8* %"$msgobj_3673", i32 157
  %"$msgobj_td_3701" = bitcast i8* %"$msgobj_td_3700" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_3701"
  %"$msgobj_v_3702" = getelementptr i8, i8* %"$msgobj_3673", i32 165
  %"$msgobj_v_3703" = bitcast i8* %"$msgobj_v_3702" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3703"
  %"$msgobj_fname_3705" = getelementptr i8, i8* %"$msgobj_3673", i32 181
  %"$msgobj_fname_3706" = bitcast i8* %"$msgobj_fname_3705" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3704", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3706"
  %"$msgobj_td_3707" = getelementptr i8, i8* %"$msgobj_3673", i32 197
  %"$msgobj_td_3708" = bitcast i8* %"$msgobj_td_3707" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_3708"
  %"$msgobj_v_3709" = getelementptr i8, i8* %"$msgobj_3673", i32 205
  %"$msgobj_v_3710" = bitcast i8* %"$msgobj_v_3709" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3710"
  store i8* %"$msgobj_3673", i8** %m7
  %"$gasrem_3712" = load i64, i64* @_gasrem
  %"$gascmp_3713" = icmp ugt i64 1, %"$gasrem_3712"
  br i1 %"$gascmp_3713", label %"$out_of_gas_3714", label %"$have_gas_3715"

"$out_of_gas_3714":                               ; preds = %"$have_gas_3671"
  call void @_out_of_gas()
  br label %"$have_gas_3715"

"$have_gas_3715":                                 ; preds = %"$out_of_gas_3714", %"$have_gas_3671"
  %"$consume_3716" = sub i64 %"$gasrem_3712", 1
  store i64 %"$consume_3716", i64* @_gasrem
  %"$ud-registry.oneMsg_70" = alloca %TName_List_Message*
  %"$ud-registry.oneMsg_3717" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg
  %"$ud-registry.oneMsg_fptr_3718" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3717", 0
  %"$ud-registry.oneMsg_envptr_3719" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3717", 1
  %"$m_3720" = load i8*, i8** %m7
  %"$ud-registry.oneMsg_call_3721" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3718"(i8* %"$ud-registry.oneMsg_envptr_3719", i8* %"$m_3720")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3721", %TName_List_Message** %"$ud-registry.oneMsg_70"
  %"$$ud-registry.oneMsg_70_3722" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_70"
  store %TName_List_Message* %"$$ud-registry.oneMsg_70_3722", %TName_List_Message** %msgs6
  %"$msgs_3723" = load %TName_List_Message*, %TName_List_Message** %msgs6
  %"$$msgs_3723_3724" = bitcast %TName_List_Message* %"$msgs_3723" to i8*
  %"$_literal_cost_call_3725" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_3723_3724")
  %"$gasrem_3726" = load i64, i64* @_gasrem
  %"$gascmp_3727" = icmp ugt i64 %"$_literal_cost_call_3725", %"$gasrem_3726"
  br i1 %"$gascmp_3727", label %"$out_of_gas_3728", label %"$have_gas_3729"

"$out_of_gas_3728":                               ; preds = %"$have_gas_3715"
  call void @_out_of_gas()
  br label %"$have_gas_3729"

"$have_gas_3729":                                 ; preds = %"$out_of_gas_3728", %"$have_gas_3715"
  %"$consume_3730" = sub i64 %"$gasrem_3726", %"$_literal_cost_call_3725"
  store i64 %"$consume_3730", i64* @_gasrem
  %"$execptr_load_3731" = load i8*, i8** @_execptr
  %"$msgs_3732" = load %TName_List_Message*, %TName_List_Message** %msgs6
  call void @_send(i8* %"$execptr_load_3731", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_3732")
  br label %"$matchsucc_3472"

"$empty_default_3476":                            ; preds = %"$have_gas_3470"
  br label %"$matchsucc_3472"

"$matchsucc_3472":                                ; preds = %"$have_gas_3729", %"$have_gas_3615", %"$empty_default_3476"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @configureNode(i8* %0) {
entry:
  %"$_amount_3734" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3735" = bitcast i8* %"$_amount_3734" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3735"
  %"$_sender_3736" = getelementptr i8, i8* %0, i32 16
  %"$_sender_3737" = bitcast i8* %"$_sender_3736" to [20 x i8]*
  %"$node_3738" = getelementptr i8, i8* %0, i32 36
  %"$node_3739" = bitcast i8* %"$node_3738" to [32 x i8]*
  %"$owner_3740" = getelementptr i8, i8* %0, i32 68
  %"$owner_3741" = bitcast i8* %"$owner_3740" to [20 x i8]*
  %"$resolver_3742" = getelementptr i8, i8* %0, i32 88
  %"$resolver_3743" = bitcast i8* %"$resolver_3742" to [20 x i8]*
  call void @"$configureNode_3364"(%Uint128 %_amount, [20 x i8]* %"$_sender_3737", [32 x i8]* %"$node_3739", [20 x i8]* %"$owner_3741", [20 x i8]* %"$resolver_3743")
  ret void
}

define internal void @"$configureResolver_3744"(%Uint128 %_amount, [20 x i8]* %"$_sender_3745", [32 x i8]* %"$node_3746", [20 x i8]* %"$resolver_3747") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3745"
  %node = load [32 x i8], [32 x i8]* %"$node_3746"
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_3747"
  %maybeRecord = alloca %TName_Option_ud-registry.Record*
  %"$indices_buf_3748_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_3748_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3748_salloc_load", i64 32)
  %"$indices_buf_3748_salloc" = bitcast i8* %"$indices_buf_3748_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3748" = bitcast [32 x i8]* %"$indices_buf_3748_salloc" to i8*
  %"$indices_gep_3749" = getelementptr i8, i8* %"$indices_buf_3748", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3749" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast
  %"$execptr_load_3750" = load i8*, i8** @_execptr
  %"$maybeRecord_3752" = call i8* @_fetch_field(i8* %"$execptr_load_3750", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3751", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3748", i32 1)
  %"$maybeRecord_3753" = bitcast i8* %"$maybeRecord_3752" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3753", %TName_Option_ud-registry.Record** %maybeRecord
  %"$maybeRecord_3754" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord
  %"$$maybeRecord_3754_3755" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3754" to i8*
  %"$_literal_cost_call_3756" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_3754_3755")
  %"$gasadd_3757" = add i64 %"$_literal_cost_call_3756", 0
  %"$gasadd_3758" = add i64 %"$gasadd_3757", 1
  %"$gasrem_3759" = load i64, i64* @_gasrem
  %"$gascmp_3760" = icmp ugt i64 %"$gasadd_3758", %"$gasrem_3759"
  br i1 %"$gascmp_3760", label %"$out_of_gas_3761", label %"$have_gas_3762"

"$out_of_gas_3761":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3762"

"$have_gas_3762":                                 ; preds = %"$out_of_gas_3761", %entry
  %"$consume_3763" = sub i64 %"$gasrem_3759", %"$gasadd_3758"
  store i64 %"$consume_3763", i64* @_gasrem
  %maybeApproved = alloca %TName_Option_ByStr20*
  %"$indices_buf_3764_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_3764_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3764_salloc_load", i64 32)
  %"$indices_buf_3764_salloc" = bitcast i8* %"$indices_buf_3764_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3764" = bitcast [32 x i8]* %"$indices_buf_3764_salloc" to i8*
  %"$indices_gep_3765" = getelementptr i8, i8* %"$indices_buf_3764", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3765" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1
  %"$execptr_load_3766" = load i8*, i8** @_execptr
  %"$maybeApproved_3768" = call i8* @_fetch_field(i8* %"$execptr_load_3766", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3767", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_3764", i32 1)
  %"$maybeApproved_3769" = bitcast i8* %"$maybeApproved_3768" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3769", %TName_Option_ByStr20** %maybeApproved
  %"$maybeApproved_3770" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved
  %"$$maybeApproved_3770_3771" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3770" to i8*
  %"$_literal_cost_call_3772" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_3770_3771")
  %"$gasadd_3773" = add i64 %"$_literal_cost_call_3772", 0
  %"$gasadd_3774" = add i64 %"$gasadd_3773", 1
  %"$gasrem_3775" = load i64, i64* @_gasrem
  %"$gascmp_3776" = icmp ugt i64 %"$gasadd_3774", %"$gasrem_3775"
  br i1 %"$gascmp_3776", label %"$out_of_gas_3777", label %"$have_gas_3778"

"$out_of_gas_3777":                               ; preds = %"$have_gas_3762"
  call void @_out_of_gas()
  br label %"$have_gas_3778"

"$have_gas_3778":                                 ; preds = %"$out_of_gas_3777", %"$have_gas_3762"
  %"$consume_3779" = sub i64 %"$gasrem_3775", %"$gasadd_3774"
  store i64 %"$consume_3779", i64* @_gasrem
  %"$gasrem_3780" = load i64, i64* @_gasrem
  %"$gascmp_3781" = icmp ugt i64 1, %"$gasrem_3780"
  br i1 %"$gascmp_3781", label %"$out_of_gas_3782", label %"$have_gas_3783"

"$out_of_gas_3782":                               ; preds = %"$have_gas_3778"
  call void @_out_of_gas()
  br label %"$have_gas_3783"

"$have_gas_3783":                                 ; preds = %"$out_of_gas_3782", %"$have_gas_3778"
  %"$consume_3784" = sub i64 %"$gasrem_3780", 1
  store i64 %"$consume_3784", i64* @_gasrem
  %recordOwner = alloca [20 x i8]
  %"$gasrem_3785" = load i64, i64* @_gasrem
  %"$gascmp_3786" = icmp ugt i64 1, %"$gasrem_3785"
  br i1 %"$gascmp_3786", label %"$out_of_gas_3787", label %"$have_gas_3788"

"$out_of_gas_3787":                               ; preds = %"$have_gas_3783"
  call void @_out_of_gas()
  br label %"$have_gas_3788"

"$have_gas_3788":                                 ; preds = %"$out_of_gas_3787", %"$have_gas_3783"
  %"$consume_3789" = sub i64 %"$gasrem_3785", 1
  store i64 %"$consume_3789", i64* @_gasrem
  %"$ud-registry.recordMemberOwner_85" = alloca [20 x i8]
  %"$ud-registry.recordMemberOwner_3790" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner
  %"$ud-registry.recordMemberOwner_fptr_3791" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3790", 0
  %"$ud-registry.recordMemberOwner_envptr_3792" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3790", 1
  %"$maybeRecord_3793" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord
  %"$ud-registry.recordMemberOwner_retalloca_3794" = alloca [20 x i8]
  call void %"$ud-registry.recordMemberOwner_fptr_3791"(i8* %"$ud-registry.recordMemberOwner_envptr_3792", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3794", %TName_Option_ud-registry.Record* %"$maybeRecord_3793")
  %"$ud-registry.recordMemberOwner_ret_3795" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3794"
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3795", [20 x i8]* %"$ud-registry.recordMemberOwner_85"
  %"$$ud-registry.recordMemberOwner_85_3796" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_85"
  store [20 x i8] %"$$ud-registry.recordMemberOwner_85_3796", [20 x i8]* %recordOwner
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*
  %"$indices_buf_3797_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_3797_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3797_salloc_load", i64 20)
  %"$indices_buf_3797_salloc" = bitcast i8* %"$indices_buf_3797_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3797" = bitcast [20 x i8]* %"$indices_buf_3797_salloc" to i8*
  %"$recordOwner_3798" = load [20 x i8], [20 x i8]* %recordOwner
  %"$indices_gep_3799" = getelementptr i8, i8* %"$indices_buf_3797", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3799" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3798", [20 x i8]* %indices_cast2
  %"$execptr_load_3800" = load i8*, i8** @_execptr
  %"$maybeOperators_3802" = call i8* @_fetch_field(i8* %"$execptr_load_3800", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3801", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_3797", i32 1)
  %"$maybeOperators_3803" = bitcast i8* %"$maybeOperators_3802" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3803", %"TName_Option_List_(ByStr20)"** %maybeOperators
  %"$maybeOperators_3804" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators
  %"$$maybeOperators_3804_3805" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3804" to i8*
  %"$_literal_cost_call_3806" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_3804_3805")
  %"$gasadd_3807" = add i64 %"$_literal_cost_call_3806", 0
  %"$gasadd_3808" = add i64 %"$gasadd_3807", 1
  %"$gasrem_3809" = load i64, i64* @_gasrem
  %"$gascmp_3810" = icmp ugt i64 %"$gasadd_3808", %"$gasrem_3809"
  br i1 %"$gascmp_3810", label %"$out_of_gas_3811", label %"$have_gas_3812"

"$out_of_gas_3811":                               ; preds = %"$have_gas_3788"
  call void @_out_of_gas()
  br label %"$have_gas_3812"

"$have_gas_3812":                                 ; preds = %"$out_of_gas_3811", %"$have_gas_3788"
  %"$consume_3813" = sub i64 %"$gasrem_3809", %"$gasadd_3808"
  store i64 %"$consume_3813", i64* @_gasrem
  %"$gasrem_3814" = load i64, i64* @_gasrem
  %"$gascmp_3815" = icmp ugt i64 1, %"$gasrem_3814"
  br i1 %"$gascmp_3815", label %"$out_of_gas_3816", label %"$have_gas_3817"

"$out_of_gas_3816":                               ; preds = %"$have_gas_3812"
  call void @_out_of_gas()
  br label %"$have_gas_3817"

"$have_gas_3817":                                 ; preds = %"$out_of_gas_3816", %"$have_gas_3812"
  %"$consume_3818" = sub i64 %"$gasrem_3814", 1
  store i64 %"$consume_3818", i64* @_gasrem
  %isSenderOAO = alloca %TName_Bool*
  %"$gasrem_3819" = load i64, i64* @_gasrem
  %"$gascmp_3820" = icmp ugt i64 1, %"$gasrem_3819"
  br i1 %"$gascmp_3820", label %"$out_of_gas_3821", label %"$have_gas_3822"

"$out_of_gas_3821":                               ; preds = %"$have_gas_3817"
  call void @_out_of_gas()
  br label %"$have_gas_3822"

"$have_gas_3822":                                 ; preds = %"$out_of_gas_3821", %"$have_gas_3817"
  %"$consume_3823" = sub i64 %"$gasrem_3819", 1
  store i64 %"$consume_3823", i64* @_gasrem
  %"$ud-registry.getIsOAO_81" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.getIsOAO_3824" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO
  %"$ud-registry.getIsOAO_fptr_3825" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3824", 0
  %"$ud-registry.getIsOAO_envptr_3826" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3824", 1
  %"$ud-registry.getIsOAO__sender_3827" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3827"
  %"$ud-registry.getIsOAO_call_3828" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_3825"(i8* %"$ud-registry.getIsOAO_envptr_3826", [20 x i8]* %"$ud-registry.getIsOAO__sender_3827")
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_3828", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_81"
  %"$ud-registry.getIsOAO_82" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }
  %"$$ud-registry.getIsOAO_81_3829" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_81"
  %"$$ud-registry.getIsOAO_81_fptr_3830" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_81_3829", 0
  %"$$ud-registry.getIsOAO_81_envptr_3831" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_81_3829", 1
  %"$$ud-registry.getIsOAO_81_recordOwner_3832" = alloca [20 x i8]
  %"$recordOwner_3833" = load [20 x i8], [20 x i8]* %recordOwner
  store [20 x i8] %"$recordOwner_3833", [20 x i8]* %"$$ud-registry.getIsOAO_81_recordOwner_3832"
  %"$$ud-registry.getIsOAO_81_call_3834" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_81_fptr_3830"(i8* %"$$ud-registry.getIsOAO_81_envptr_3831", [20 x i8]* %"$$ud-registry.getIsOAO_81_recordOwner_3832")
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_81_call_3834", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_82"
  %"$ud-registry.getIsOAO_83" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }
  %"$$ud-registry.getIsOAO_82_3835" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_82"
  %"$$ud-registry.getIsOAO_82_fptr_3836" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_82_3835", 0
  %"$$ud-registry.getIsOAO_82_envptr_3837" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_82_3835", 1
  %"$maybeApproved_3838" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved
  %"$$ud-registry.getIsOAO_82_call_3839" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_82_fptr_3836"(i8* %"$$ud-registry.getIsOAO_82_envptr_3837", %TName_Option_ByStr20* %"$maybeApproved_3838")
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_82_call_3839", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_83"
  %"$ud-registry.getIsOAO_84" = alloca %TName_Bool*
  %"$$ud-registry.getIsOAO_83_3840" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_83"
  %"$$ud-registry.getIsOAO_83_fptr_3841" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_83_3840", 0
  %"$$ud-registry.getIsOAO_83_envptr_3842" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_83_3840", 1
  %"$maybeOperators_3843" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators
  %"$$ud-registry.getIsOAO_83_call_3844" = call %TName_Bool* %"$$ud-registry.getIsOAO_83_fptr_3841"(i8* %"$$ud-registry.getIsOAO_83_envptr_3842", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3843")
  store %TName_Bool* %"$$ud-registry.getIsOAO_83_call_3844", %TName_Bool** %"$ud-registry.getIsOAO_84"
  %"$$ud-registry.getIsOAO_84_3845" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_84"
  store %TName_Bool* %"$$ud-registry.getIsOAO_84_3845", %TName_Bool** %isSenderOAO
  %"$gasrem_3846" = load i64, i64* @_gasrem
  %"$gascmp_3847" = icmp ugt i64 2, %"$gasrem_3846"
  br i1 %"$gascmp_3847", label %"$out_of_gas_3848", label %"$have_gas_3849"

"$out_of_gas_3848":                               ; preds = %"$have_gas_3822"
  call void @_out_of_gas()
  br label %"$have_gas_3849"

"$have_gas_3849":                                 ; preds = %"$out_of_gas_3848", %"$have_gas_3822"
  %"$consume_3850" = sub i64 %"$gasrem_3846", 2
  store i64 %"$consume_3850", i64* @_gasrem
  %"$isSenderOAO_3852" = load %TName_Bool*, %TName_Bool** %isSenderOAO
  %"$isSenderOAO_tag_3853" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3852", i32 0, i32 0
  %"$isSenderOAO_tag_3854" = load i8, i8* %"$isSenderOAO_tag_3853"
  switch i8 %"$isSenderOAO_tag_3854", label %"$empty_default_3855" [
    i8 0, label %"$True_3856"
    i8 1, label %"$False_3926"
  ]

"$True_3856":                                     ; preds = %"$have_gas_3849"
  %"$isSenderOAO_3857" = bitcast %TName_Bool* %"$isSenderOAO_3852" to %CName_True*
  %"$gasrem_3858" = load i64, i64* @_gasrem
  %"$gascmp_3859" = icmp ugt i64 1, %"$gasrem_3858"
  br i1 %"$gascmp_3859", label %"$out_of_gas_3860", label %"$have_gas_3861"

"$out_of_gas_3860":                               ; preds = %"$True_3856"
  call void @_out_of_gas()
  br label %"$have_gas_3861"

"$have_gas_3861":                                 ; preds = %"$out_of_gas_3860", %"$True_3856"
  %"$consume_3862" = sub i64 %"$gasrem_3858", 1
  store i64 %"$consume_3862", i64* @_gasrem
  %newRecord = alloca %TName_ud-registry.Record*
  %"$gasrem_3863" = load i64, i64* @_gasrem
  %"$gascmp_3864" = icmp ugt i64 1, %"$gasrem_3863"
  br i1 %"$gascmp_3864", label %"$out_of_gas_3865", label %"$have_gas_3866"

"$out_of_gas_3865":                               ; preds = %"$have_gas_3861"
  call void @_out_of_gas()
  br label %"$have_gas_3866"

"$have_gas_3866":                                 ; preds = %"$out_of_gas_3865", %"$have_gas_3861"
  %"$consume_3867" = sub i64 %"$gasrem_3863", 1
  store i64 %"$consume_3867", i64* @_gasrem
  %"$recordOwner_3868" = load [20 x i8], [20 x i8]* %recordOwner
  %"$adtval_3869_load" = load i8*, i8** @_execptr
  %"$adtval_3869_salloc" = call i8* @_salloc(i8* %"$adtval_3869_load", i64 41)
  %"$adtval_3869" = bitcast i8* %"$adtval_3869_salloc" to %CName_ud-registry.Record*
  %"$adtgep_3870" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3869", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3870"
  %"$adtgep_3871" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3869", i32 0, i32 1
  store [20 x i8] %"$recordOwner_3868", [20 x i8]* %"$adtgep_3871"
  %"$adtgep_3872" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3869", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_3872"
  %"$adtptr_3873" = bitcast %CName_ud-registry.Record* %"$adtval_3869" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_3873", %TName_ud-registry.Record** %newRecord
  %"$newRecord_3874" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord
  %"$$newRecord_3874_3875" = bitcast %TName_ud-registry.Record* %"$newRecord_3874" to i8*
  %"$_literal_cost_call_3876" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_3874_3875")
  %"$gasadd_3877" = add i64 %"$_literal_cost_call_3876", 1
  %"$gasrem_3878" = load i64, i64* @_gasrem
  %"$gascmp_3879" = icmp ugt i64 %"$gasadd_3877", %"$gasrem_3878"
  br i1 %"$gascmp_3879", label %"$out_of_gas_3880", label %"$have_gas_3881"

"$out_of_gas_3880":                               ; preds = %"$have_gas_3866"
  call void @_out_of_gas()
  br label %"$have_gas_3881"

"$have_gas_3881":                                 ; preds = %"$out_of_gas_3880", %"$have_gas_3866"
  %"$consume_3882" = sub i64 %"$gasrem_3878", %"$gasadd_3877"
  store i64 %"$consume_3882", i64* @_gasrem
  %"$indices_buf_3883_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_3883_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3883_salloc_load", i64 32)
  %"$indices_buf_3883_salloc" = bitcast i8* %"$indices_buf_3883_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3883" = bitcast [32 x i8]* %"$indices_buf_3883_salloc" to i8*
  %"$indices_gep_3884" = getelementptr i8, i8* %"$indices_buf_3883", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_3884" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3
  %"$execptr_load_3885" = load i8*, i8** @_execptr
  %"$newRecord_3887" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord
  %"$update_value_3888" = bitcast %TName_ud-registry.Record* %"$newRecord_3887" to i8*
  call void @_update_field(i8* %"$execptr_load_3885", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3886", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3883", i8* %"$update_value_3888")
  %"$gasrem_3889" = load i64, i64* @_gasrem
  %"$gascmp_3890" = icmp ugt i64 1, %"$gasrem_3889"
  br i1 %"$gascmp_3890", label %"$out_of_gas_3891", label %"$have_gas_3892"

"$out_of_gas_3891":                               ; preds = %"$have_gas_3881"
  call void @_out_of_gas()
  br label %"$have_gas_3892"

"$have_gas_3892":                                 ; preds = %"$out_of_gas_3891", %"$have_gas_3881"
  %"$consume_3893" = sub i64 %"$gasrem_3889", 1
  store i64 %"$consume_3893", i64* @_gasrem
  %e = alloca i8*
  %"$gasrem_3894" = load i64, i64* @_gasrem
  %"$gascmp_3895" = icmp ugt i64 1, %"$gasrem_3894"
  br i1 %"$gascmp_3895", label %"$out_of_gas_3896", label %"$have_gas_3897"

"$out_of_gas_3896":                               ; preds = %"$have_gas_3892"
  call void @_out_of_gas()
  br label %"$have_gas_3897"

"$have_gas_3897":                                 ; preds = %"$out_of_gas_3896", %"$have_gas_3892"
  %"$consume_3898" = sub i64 %"$gasrem_3894", 1
  store i64 %"$consume_3898", i64* @_gasrem
  %"$ud-registry.eConfigured_77" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.eConfigured_3899" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured
  %"$ud-registry.eConfigured_fptr_3900" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3899", 0
  %"$ud-registry.eConfigured_envptr_3901" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3899", 1
  %"$ud-registry.eConfigured_node_3902" = alloca [32 x i8]
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_3902"
  %"$ud-registry.eConfigured_call_3903" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_3900"(i8* %"$ud-registry.eConfigured_envptr_3901", [32 x i8]* %"$ud-registry.eConfigured_node_3902")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_3903", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_77"
  %"$ud-registry.eConfigured_78" = alloca { i8* (i8*, [20 x i8]*)*, i8* }
  %"$$ud-registry.eConfigured_77_3904" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_77"
  %"$$ud-registry.eConfigured_77_fptr_3905" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_77_3904", 0
  %"$$ud-registry.eConfigured_77_envptr_3906" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_77_3904", 1
  %"$$ud-registry.eConfigured_77_recordOwner_3907" = alloca [20 x i8]
  %"$recordOwner_3908" = load [20 x i8], [20 x i8]* %recordOwner
  store [20 x i8] %"$recordOwner_3908", [20 x i8]* %"$$ud-registry.eConfigured_77_recordOwner_3907"
  %"$$ud-registry.eConfigured_77_call_3909" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_77_fptr_3905"(i8* %"$$ud-registry.eConfigured_77_envptr_3906", [20 x i8]* %"$$ud-registry.eConfigured_77_recordOwner_3907")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_77_call_3909", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_78"
  %"$ud-registry.eConfigured_79" = alloca i8*
  %"$$ud-registry.eConfigured_78_3910" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_78"
  %"$$ud-registry.eConfigured_78_fptr_3911" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_78_3910", 0
  %"$$ud-registry.eConfigured_78_envptr_3912" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_78_3910", 1
  %"$$ud-registry.eConfigured_78_resolver_3913" = alloca [20 x i8]
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_78_resolver_3913"
  %"$$ud-registry.eConfigured_78_call_3914" = call i8* %"$$ud-registry.eConfigured_78_fptr_3911"(i8* %"$$ud-registry.eConfigured_78_envptr_3912", [20 x i8]* %"$$ud-registry.eConfigured_78_resolver_3913")
  store i8* %"$$ud-registry.eConfigured_78_call_3914", i8** %"$ud-registry.eConfigured_79"
  %"$$ud-registry.eConfigured_79_3915" = load i8*, i8** %"$ud-registry.eConfigured_79"
  store i8* %"$$ud-registry.eConfigured_79_3915", i8** %e
  %"$e_3916" = load i8*, i8** %e
  %"$_literal_cost_call_3918" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3916")
  %"$gasrem_3919" = load i64, i64* @_gasrem
  %"$gascmp_3920" = icmp ugt i64 %"$_literal_cost_call_3918", %"$gasrem_3919"
  br i1 %"$gascmp_3920", label %"$out_of_gas_3921", label %"$have_gas_3922"

"$out_of_gas_3921":                               ; preds = %"$have_gas_3897"
  call void @_out_of_gas()
  br label %"$have_gas_3922"

"$have_gas_3922":                                 ; preds = %"$out_of_gas_3921", %"$have_gas_3897"
  %"$consume_3923" = sub i64 %"$gasrem_3919", %"$_literal_cost_call_3918"
  store i64 %"$consume_3923", i64* @_gasrem
  %"$execptr_load_3924" = load i8*, i8** @_execptr
  %"$e_3925" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_3924", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3925")
  br label %"$matchsucc_3851"

"$False_3926":                                    ; preds = %"$have_gas_3849"
  %"$isSenderOAO_3927" = bitcast %TName_Bool* %"$isSenderOAO_3852" to %CName_False*
  %"$gasrem_3928" = load i64, i64* @_gasrem
  %"$gascmp_3929" = icmp ugt i64 1, %"$gasrem_3928"
  br i1 %"$gascmp_3929", label %"$out_of_gas_3930", label %"$have_gas_3931"

"$out_of_gas_3930":                               ; preds = %"$False_3926"
  call void @_out_of_gas()
  br label %"$have_gas_3931"

"$have_gas_3931":                                 ; preds = %"$out_of_gas_3930", %"$False_3926"
  %"$consume_3932" = sub i64 %"$gasrem_3928", 1
  store i64 %"$consume_3932", i64* @_gasrem
  %e4 = alloca i8*
  %"$gasrem_3933" = load i64, i64* @_gasrem
  %"$gascmp_3934" = icmp ugt i64 1, %"$gasrem_3933"
  br i1 %"$gascmp_3934", label %"$out_of_gas_3935", label %"$have_gas_3936"

"$out_of_gas_3935":                               ; preds = %"$have_gas_3931"
  call void @_out_of_gas()
  br label %"$have_gas_3936"

"$have_gas_3936":                                 ; preds = %"$out_of_gas_3935", %"$have_gas_3931"
  %"$consume_3937" = sub i64 %"$gasrem_3933", 1
  store i64 %"$consume_3937", i64* @_gasrem
  %m = alloca %String
  %"$gasrem_3938" = load i64, i64* @_gasrem
  %"$gascmp_3939" = icmp ugt i64 1, %"$gasrem_3938"
  br i1 %"$gascmp_3939", label %"$out_of_gas_3940", label %"$have_gas_3941"

"$out_of_gas_3940":                               ; preds = %"$have_gas_3936"
  call void @_out_of_gas()
  br label %"$have_gas_3941"

"$have_gas_3941":                                 ; preds = %"$out_of_gas_3940", %"$have_gas_3936"
  %"$consume_3942" = sub i64 %"$gasrem_3938", 1
  store i64 %"$consume_3942", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_3943", i32 0, i32 0), i32 43 }, %String* %m
  %"$gasrem_3944" = load i64, i64* @_gasrem
  %"$gascmp_3945" = icmp ugt i64 1, %"$gasrem_3944"
  br i1 %"$gascmp_3945", label %"$out_of_gas_3946", label %"$have_gas_3947"

"$out_of_gas_3946":                               ; preds = %"$have_gas_3941"
  call void @_out_of_gas()
  br label %"$have_gas_3947"

"$have_gas_3947":                                 ; preds = %"$out_of_gas_3946", %"$have_gas_3941"
  %"$consume_3948" = sub i64 %"$gasrem_3944", 1
  store i64 %"$consume_3948", i64* @_gasrem
  %"$ud-registry.eError_80" = alloca i8*
  %"$ud-registry.eError_3949" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError
  %"$ud-registry.eError_fptr_3950" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3949", 0
  %"$ud-registry.eError_envptr_3951" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3949", 1
  %"$m_3952" = load %String, %String* %m
  %"$ud-registry.eError_call_3953" = call i8* %"$ud-registry.eError_fptr_3950"(i8* %"$ud-registry.eError_envptr_3951", %String %"$m_3952")
  store i8* %"$ud-registry.eError_call_3953", i8** %"$ud-registry.eError_80"
  %"$$ud-registry.eError_80_3954" = load i8*, i8** %"$ud-registry.eError_80"
  store i8* %"$$ud-registry.eError_80_3954", i8** %e4
  %"$e_3955" = load i8*, i8** %e4
  %"$_literal_cost_call_3957" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3955")
  %"$gasrem_3958" = load i64, i64* @_gasrem
  %"$gascmp_3959" = icmp ugt i64 %"$_literal_cost_call_3957", %"$gasrem_3958"
  br i1 %"$gascmp_3959", label %"$out_of_gas_3960", label %"$have_gas_3961"

"$out_of_gas_3960":                               ; preds = %"$have_gas_3947"
  call void @_out_of_gas()
  br label %"$have_gas_3961"

"$have_gas_3961":                                 ; preds = %"$out_of_gas_3960", %"$have_gas_3947"
  %"$consume_3962" = sub i64 %"$gasrem_3958", %"$_literal_cost_call_3957"
  store i64 %"$consume_3962", i64* @_gasrem
  %"$execptr_load_3963" = load i8*, i8** @_execptr
  %"$e_3964" = load i8*, i8** %e4
  call void @_event(i8* %"$execptr_load_3963", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3964")
  br label %"$matchsucc_3851"

"$empty_default_3855":                            ; preds = %"$have_gas_3849"
  br label %"$matchsucc_3851"

"$matchsucc_3851":                                ; preds = %"$have_gas_3961", %"$have_gas_3922", %"$empty_default_3855"
  ret void
}

define void @configureResolver(i8* %0) {
entry:
  %"$_amount_3966" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3967" = bitcast i8* %"$_amount_3966" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3967"
  %"$_sender_3968" = getelementptr i8, i8* %0, i32 16
  %"$_sender_3969" = bitcast i8* %"$_sender_3968" to [20 x i8]*
  %"$node_3970" = getelementptr i8, i8* %0, i32 36
  %"$node_3971" = bitcast i8* %"$node_3970" to [32 x i8]*
  %"$resolver_3972" = getelementptr i8, i8* %0, i32 68
  %"$resolver_3973" = bitcast i8* %"$resolver_3972" to [20 x i8]*
  call void @"$configureResolver_3744"(%Uint128 %_amount, [20 x i8]* %"$_sender_3969", [32 x i8]* %"$node_3971", [20 x i8]* %"$resolver_3973")
  ret void
}

define internal void @"$transfer_3974"(%Uint128 %_amount, [20 x i8]* %"$_sender_3975", [32 x i8]* %"$node_3976", [20 x i8]* %"$owner_3977") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3975"
  %node = load [32 x i8], [32 x i8]* %"$node_3976"
  %owner = load [20 x i8], [20 x i8]* %"$owner_3977"
  %maybeRecord = alloca %TName_Option_ud-registry.Record*
  %"$indices_buf_3978_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_3978_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3978_salloc_load", i64 32)
  %"$indices_buf_3978_salloc" = bitcast i8* %"$indices_buf_3978_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3978" = bitcast [32 x i8]* %"$indices_buf_3978_salloc" to i8*
  %"$indices_gep_3979" = getelementptr i8, i8* %"$indices_buf_3978", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3979" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast
  %"$execptr_load_3980" = load i8*, i8** @_execptr
  %"$maybeRecord_3982" = call i8* @_fetch_field(i8* %"$execptr_load_3980", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3981", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3978", i32 1)
  %"$maybeRecord_3983" = bitcast i8* %"$maybeRecord_3982" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3983", %TName_Option_ud-registry.Record** %maybeRecord
  %"$maybeRecord_3984" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord
  %"$$maybeRecord_3984_3985" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3984" to i8*
  %"$_literal_cost_call_3986" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_3984_3985")
  %"$gasadd_3987" = add i64 %"$_literal_cost_call_3986", 0
  %"$gasadd_3988" = add i64 %"$gasadd_3987", 1
  %"$gasrem_3989" = load i64, i64* @_gasrem
  %"$gascmp_3990" = icmp ugt i64 %"$gasadd_3988", %"$gasrem_3989"
  br i1 %"$gascmp_3990", label %"$out_of_gas_3991", label %"$have_gas_3992"

"$out_of_gas_3991":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3992"

"$have_gas_3992":                                 ; preds = %"$out_of_gas_3991", %entry
  %"$consume_3993" = sub i64 %"$gasrem_3989", %"$gasadd_3988"
  store i64 %"$consume_3993", i64* @_gasrem
  %maybeApproved = alloca %TName_Option_ByStr20*
  %"$indices_buf_3994_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_3994_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3994_salloc_load", i64 32)
  %"$indices_buf_3994_salloc" = bitcast i8* %"$indices_buf_3994_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3994" = bitcast [32 x i8]* %"$indices_buf_3994_salloc" to i8*
  %"$indices_gep_3995" = getelementptr i8, i8* %"$indices_buf_3994", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3995" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1
  %"$execptr_load_3996" = load i8*, i8** @_execptr
  %"$maybeApproved_3998" = call i8* @_fetch_field(i8* %"$execptr_load_3996", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3997", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_3994", i32 1)
  %"$maybeApproved_3999" = bitcast i8* %"$maybeApproved_3998" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3999", %TName_Option_ByStr20** %maybeApproved
  %"$maybeApproved_4000" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved
  %"$$maybeApproved_4000_4001" = bitcast %TName_Option_ByStr20* %"$maybeApproved_4000" to i8*
  %"$_literal_cost_call_4002" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_4000_4001")
  %"$gasadd_4003" = add i64 %"$_literal_cost_call_4002", 0
  %"$gasadd_4004" = add i64 %"$gasadd_4003", 1
  %"$gasrem_4005" = load i64, i64* @_gasrem
  %"$gascmp_4006" = icmp ugt i64 %"$gasadd_4004", %"$gasrem_4005"
  br i1 %"$gascmp_4006", label %"$out_of_gas_4007", label %"$have_gas_4008"

"$out_of_gas_4007":                               ; preds = %"$have_gas_3992"
  call void @_out_of_gas()
  br label %"$have_gas_4008"

"$have_gas_4008":                                 ; preds = %"$out_of_gas_4007", %"$have_gas_3992"
  %"$consume_4009" = sub i64 %"$gasrem_4005", %"$gasadd_4004"
  store i64 %"$consume_4009", i64* @_gasrem
  %"$gasrem_4010" = load i64, i64* @_gasrem
  %"$gascmp_4011" = icmp ugt i64 1, %"$gasrem_4010"
  br i1 %"$gascmp_4011", label %"$out_of_gas_4012", label %"$have_gas_4013"

"$out_of_gas_4012":                               ; preds = %"$have_gas_4008"
  call void @_out_of_gas()
  br label %"$have_gas_4013"

"$have_gas_4013":                                 ; preds = %"$out_of_gas_4012", %"$have_gas_4008"
  %"$consume_4014" = sub i64 %"$gasrem_4010", 1
  store i64 %"$consume_4014", i64* @_gasrem
  %recordOwner = alloca [20 x i8]
  %"$gasrem_4015" = load i64, i64* @_gasrem
  %"$gascmp_4016" = icmp ugt i64 1, %"$gasrem_4015"
  br i1 %"$gascmp_4016", label %"$out_of_gas_4017", label %"$have_gas_4018"

"$out_of_gas_4017":                               ; preds = %"$have_gas_4013"
  call void @_out_of_gas()
  br label %"$have_gas_4018"

"$have_gas_4018":                                 ; preds = %"$out_of_gas_4017", %"$have_gas_4013"
  %"$consume_4019" = sub i64 %"$gasrem_4015", 1
  store i64 %"$consume_4019", i64* @_gasrem
  %"$ud-registry.recordMemberOwner_96" = alloca [20 x i8]
  %"$ud-registry.recordMemberOwner_4020" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner
  %"$ud-registry.recordMemberOwner_fptr_4021" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4020", 0
  %"$ud-registry.recordMemberOwner_envptr_4022" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4020", 1
  %"$maybeRecord_4023" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord
  %"$ud-registry.recordMemberOwner_retalloca_4024" = alloca [20 x i8]
  call void %"$ud-registry.recordMemberOwner_fptr_4021"(i8* %"$ud-registry.recordMemberOwner_envptr_4022", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4024", %TName_Option_ud-registry.Record* %"$maybeRecord_4023")
  %"$ud-registry.recordMemberOwner_ret_4025" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4024"
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_4025", [20 x i8]* %"$ud-registry.recordMemberOwner_96"
  %"$$ud-registry.recordMemberOwner_96_4026" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_96"
  store [20 x i8] %"$$ud-registry.recordMemberOwner_96_4026", [20 x i8]* %recordOwner
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*
  %"$indices_buf_4027_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_4027_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4027_salloc_load", i64 20)
  %"$indices_buf_4027_salloc" = bitcast i8* %"$indices_buf_4027_salloc_salloc" to [20 x i8]*
  %"$indices_buf_4027" = bitcast [20 x i8]* %"$indices_buf_4027_salloc" to i8*
  %"$recordOwner_4028" = load [20 x i8], [20 x i8]* %recordOwner
  %"$indices_gep_4029" = getelementptr i8, i8* %"$indices_buf_4027", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4029" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4028", [20 x i8]* %indices_cast2
  %"$execptr_load_4030" = load i8*, i8** @_execptr
  %"$maybeOperators_4032" = call i8* @_fetch_field(i8* %"$execptr_load_4030", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_4031", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_4027", i32 1)
  %"$maybeOperators_4033" = bitcast i8* %"$maybeOperators_4032" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4033", %"TName_Option_List_(ByStr20)"** %maybeOperators
  %"$maybeOperators_4034" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators
  %"$$maybeOperators_4034_4035" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4034" to i8*
  %"$_literal_cost_call_4036" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_4034_4035")
  %"$gasadd_4037" = add i64 %"$_literal_cost_call_4036", 0
  %"$gasadd_4038" = add i64 %"$gasadd_4037", 1
  %"$gasrem_4039" = load i64, i64* @_gasrem
  %"$gascmp_4040" = icmp ugt i64 %"$gasadd_4038", %"$gasrem_4039"
  br i1 %"$gascmp_4040", label %"$out_of_gas_4041", label %"$have_gas_4042"

"$out_of_gas_4041":                               ; preds = %"$have_gas_4018"
  call void @_out_of_gas()
  br label %"$have_gas_4042"

"$have_gas_4042":                                 ; preds = %"$out_of_gas_4041", %"$have_gas_4018"
  %"$consume_4043" = sub i64 %"$gasrem_4039", %"$gasadd_4038"
  store i64 %"$consume_4043", i64* @_gasrem
  %"$gasrem_4044" = load i64, i64* @_gasrem
  %"$gascmp_4045" = icmp ugt i64 1, %"$gasrem_4044"
  br i1 %"$gascmp_4045", label %"$out_of_gas_4046", label %"$have_gas_4047"

"$out_of_gas_4046":                               ; preds = %"$have_gas_4042"
  call void @_out_of_gas()
  br label %"$have_gas_4047"

"$have_gas_4047":                                 ; preds = %"$out_of_gas_4046", %"$have_gas_4042"
  %"$consume_4048" = sub i64 %"$gasrem_4044", 1
  store i64 %"$consume_4048", i64* @_gasrem
  %isSenderOAO = alloca %TName_Bool*
  %"$gasrem_4049" = load i64, i64* @_gasrem
  %"$gascmp_4050" = icmp ugt i64 1, %"$gasrem_4049"
  br i1 %"$gascmp_4050", label %"$out_of_gas_4051", label %"$have_gas_4052"

"$out_of_gas_4051":                               ; preds = %"$have_gas_4047"
  call void @_out_of_gas()
  br label %"$have_gas_4052"

"$have_gas_4052":                                 ; preds = %"$out_of_gas_4051", %"$have_gas_4047"
  %"$consume_4053" = sub i64 %"$gasrem_4049", 1
  store i64 %"$consume_4053", i64* @_gasrem
  %"$ud-registry.getIsOAO_92" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.getIsOAO_4054" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO
  %"$ud-registry.getIsOAO_fptr_4055" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4054", 0
  %"$ud-registry.getIsOAO_envptr_4056" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4054", 1
  %"$ud-registry.getIsOAO__sender_4057" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_4057"
  %"$ud-registry.getIsOAO_call_4058" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_4055"(i8* %"$ud-registry.getIsOAO_envptr_4056", [20 x i8]* %"$ud-registry.getIsOAO__sender_4057")
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_4058", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_92"
  %"$ud-registry.getIsOAO_93" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }
  %"$$ud-registry.getIsOAO_92_4059" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_92"
  %"$$ud-registry.getIsOAO_92_fptr_4060" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_92_4059", 0
  %"$$ud-registry.getIsOAO_92_envptr_4061" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_92_4059", 1
  %"$$ud-registry.getIsOAO_92_recordOwner_4062" = alloca [20 x i8]
  %"$recordOwner_4063" = load [20 x i8], [20 x i8]* %recordOwner
  store [20 x i8] %"$recordOwner_4063", [20 x i8]* %"$$ud-registry.getIsOAO_92_recordOwner_4062"
  %"$$ud-registry.getIsOAO_92_call_4064" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_92_fptr_4060"(i8* %"$$ud-registry.getIsOAO_92_envptr_4061", [20 x i8]* %"$$ud-registry.getIsOAO_92_recordOwner_4062")
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_92_call_4064", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_93"
  %"$ud-registry.getIsOAO_94" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }
  %"$$ud-registry.getIsOAO_93_4065" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_93"
  %"$$ud-registry.getIsOAO_93_fptr_4066" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_93_4065", 0
  %"$$ud-registry.getIsOAO_93_envptr_4067" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_93_4065", 1
  %"$maybeApproved_4068" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved
  %"$$ud-registry.getIsOAO_93_call_4069" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_93_fptr_4066"(i8* %"$$ud-registry.getIsOAO_93_envptr_4067", %TName_Option_ByStr20* %"$maybeApproved_4068")
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_93_call_4069", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_94"
  %"$ud-registry.getIsOAO_95" = alloca %TName_Bool*
  %"$$ud-registry.getIsOAO_94_4070" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_94"
  %"$$ud-registry.getIsOAO_94_fptr_4071" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_94_4070", 0
  %"$$ud-registry.getIsOAO_94_envptr_4072" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_94_4070", 1
  %"$maybeOperators_4073" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators
  %"$$ud-registry.getIsOAO_94_call_4074" = call %TName_Bool* %"$$ud-registry.getIsOAO_94_fptr_4071"(i8* %"$$ud-registry.getIsOAO_94_envptr_4072", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4073")
  store %TName_Bool* %"$$ud-registry.getIsOAO_94_call_4074", %TName_Bool** %"$ud-registry.getIsOAO_95"
  %"$$ud-registry.getIsOAO_95_4075" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_95"
  store %TName_Bool* %"$$ud-registry.getIsOAO_95_4075", %TName_Bool** %isSenderOAO
  %"$gasrem_4076" = load i64, i64* @_gasrem
  %"$gascmp_4077" = icmp ugt i64 2, %"$gasrem_4076"
  br i1 %"$gascmp_4077", label %"$out_of_gas_4078", label %"$have_gas_4079"

"$out_of_gas_4078":                               ; preds = %"$have_gas_4052"
  call void @_out_of_gas()
  br label %"$have_gas_4079"

"$have_gas_4079":                                 ; preds = %"$out_of_gas_4078", %"$have_gas_4052"
  %"$consume_4080" = sub i64 %"$gasrem_4076", 2
  store i64 %"$consume_4080", i64* @_gasrem
  %"$isSenderOAO_4082" = load %TName_Bool*, %TName_Bool** %isSenderOAO
  %"$isSenderOAO_tag_4083" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_4082", i32 0, i32 0
  %"$isSenderOAO_tag_4084" = load i8, i8* %"$isSenderOAO_tag_4083"
  switch i8 %"$isSenderOAO_tag_4084", label %"$empty_default_4085" [
    i8 0, label %"$True_4086"
    i8 1, label %"$False_4239"
  ]

"$True_4086":                                     ; preds = %"$have_gas_4079"
  %"$isSenderOAO_4087" = bitcast %TName_Bool* %"$isSenderOAO_4082" to %CName_True*
  %"$gasrem_4088" = load i64, i64* @_gasrem
  %"$gascmp_4089" = icmp ugt i64 1, %"$gasrem_4088"
  br i1 %"$gascmp_4089", label %"$out_of_gas_4090", label %"$have_gas_4091"

"$out_of_gas_4090":                               ; preds = %"$True_4086"
  call void @_out_of_gas()
  br label %"$have_gas_4091"

"$have_gas_4091":                                 ; preds = %"$out_of_gas_4090", %"$True_4086"
  %"$consume_4092" = sub i64 %"$gasrem_4088", 1
  store i64 %"$consume_4092", i64* @_gasrem
  %"$indices_buf_4093_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_4093_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4093_salloc_load", i64 32)
  %"$indices_buf_4093_salloc" = bitcast i8* %"$indices_buf_4093_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4093" = bitcast [32 x i8]* %"$indices_buf_4093_salloc" to i8*
  %"$indices_gep_4094" = getelementptr i8, i8* %"$indices_buf_4093", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_4094" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3
  %"$execptr_load_4095" = load i8*, i8** @_execptr
  call void @_update_field(i8* %"$execptr_load_4095", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4096", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_4093", i8* null)
  %"$gasrem_4097" = load i64, i64* @_gasrem
  %"$gascmp_4098" = icmp ugt i64 1, %"$gasrem_4097"
  br i1 %"$gascmp_4098", label %"$out_of_gas_4099", label %"$have_gas_4100"

"$out_of_gas_4099":                               ; preds = %"$have_gas_4091"
  call void @_out_of_gas()
  br label %"$have_gas_4100"

"$have_gas_4100":                                 ; preds = %"$out_of_gas_4099", %"$have_gas_4091"
  %"$consume_4101" = sub i64 %"$gasrem_4097", 1
  store i64 %"$consume_4101", i64* @_gasrem
  %newRecord = alloca %TName_ud-registry.Record*
  %"$gasrem_4102" = load i64, i64* @_gasrem
  %"$gascmp_4103" = icmp ugt i64 1, %"$gasrem_4102"
  br i1 %"$gascmp_4103", label %"$out_of_gas_4104", label %"$have_gas_4105"

"$out_of_gas_4104":                               ; preds = %"$have_gas_4100"
  call void @_out_of_gas()
  br label %"$have_gas_4105"

"$have_gas_4105":                                 ; preds = %"$out_of_gas_4104", %"$have_gas_4100"
  %"$consume_4106" = sub i64 %"$gasrem_4102", 1
  store i64 %"$consume_4106", i64* @_gasrem
  %"$ud-registry.zeroByStr20_4107" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20
  %"$adtval_4108_load" = load i8*, i8** @_execptr
  %"$adtval_4108_salloc" = call i8* @_salloc(i8* %"$adtval_4108_load", i64 41)
  %"$adtval_4108" = bitcast i8* %"$adtval_4108_salloc" to %CName_ud-registry.Record*
  %"$adtgep_4109" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4108", i32 0, i32 0
  store i8 0, i8* %"$adtgep_4109"
  %"$adtgep_4110" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4108", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_4110"
  %"$adtgep_4111" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4108", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_4107", [20 x i8]* %"$adtgep_4111"
  %"$adtptr_4112" = bitcast %CName_ud-registry.Record* %"$adtval_4108" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_4112", %TName_ud-registry.Record** %newRecord
  %"$newRecord_4113" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord
  %"$$newRecord_4113_4114" = bitcast %TName_ud-registry.Record* %"$newRecord_4113" to i8*
  %"$_literal_cost_call_4115" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_4113_4114")
  %"$gasadd_4116" = add i64 %"$_literal_cost_call_4115", 1
  %"$gasrem_4117" = load i64, i64* @_gasrem
  %"$gascmp_4118" = icmp ugt i64 %"$gasadd_4116", %"$gasrem_4117"
  br i1 %"$gascmp_4118", label %"$out_of_gas_4119", label %"$have_gas_4120"

"$out_of_gas_4119":                               ; preds = %"$have_gas_4105"
  call void @_out_of_gas()
  br label %"$have_gas_4120"

"$have_gas_4120":                                 ; preds = %"$out_of_gas_4119", %"$have_gas_4105"
  %"$consume_4121" = sub i64 %"$gasrem_4117", %"$gasadd_4116"
  store i64 %"$consume_4121", i64* @_gasrem
  %"$indices_buf_4122_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_4122_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4122_salloc_load", i64 32)
  %"$indices_buf_4122_salloc" = bitcast i8* %"$indices_buf_4122_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4122" = bitcast [32 x i8]* %"$indices_buf_4122_salloc" to i8*
  %"$indices_gep_4123" = getelementptr i8, i8* %"$indices_buf_4122", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4123" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast4
  %"$execptr_load_4124" = load i8*, i8** @_execptr
  %"$newRecord_4126" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord
  %"$update_value_4127" = bitcast %TName_ud-registry.Record* %"$newRecord_4126" to i8*
  call void @_update_field(i8* %"$execptr_load_4124", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4125", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4122", i8* %"$update_value_4127")
  %"$gasrem_4128" = load i64, i64* @_gasrem
  %"$gascmp_4129" = icmp ugt i64 1, %"$gasrem_4128"
  br i1 %"$gascmp_4129", label %"$out_of_gas_4130", label %"$have_gas_4131"

"$out_of_gas_4130":                               ; preds = %"$have_gas_4120"
  call void @_out_of_gas()
  br label %"$have_gas_4131"

"$have_gas_4131":                                 ; preds = %"$out_of_gas_4130", %"$have_gas_4120"
  %"$consume_4132" = sub i64 %"$gasrem_4128", 1
  store i64 %"$consume_4132", i64* @_gasrem
  %e = alloca i8*
  %"$gasrem_4133" = load i64, i64* @_gasrem
  %"$gascmp_4134" = icmp ugt i64 1, %"$gasrem_4133"
  br i1 %"$gascmp_4134", label %"$out_of_gas_4135", label %"$have_gas_4136"

"$out_of_gas_4135":                               ; preds = %"$have_gas_4131"
  call void @_out_of_gas()
  br label %"$have_gas_4136"

"$have_gas_4136":                                 ; preds = %"$out_of_gas_4135", %"$have_gas_4131"
  %"$consume_4137" = sub i64 %"$gasrem_4133", 1
  store i64 %"$consume_4137", i64* @_gasrem
  %"$ud-registry.eConfigured_87" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.eConfigured_4138" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured
  %"$ud-registry.eConfigured_fptr_4139" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4138", 0
  %"$ud-registry.eConfigured_envptr_4140" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4138", 1
  %"$ud-registry.eConfigured_node_4141" = alloca [32 x i8]
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_4141"
  %"$ud-registry.eConfigured_call_4142" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_4139"(i8* %"$ud-registry.eConfigured_envptr_4140", [32 x i8]* %"$ud-registry.eConfigured_node_4141")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_4142", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_87"
  %"$ud-registry.eConfigured_88" = alloca { i8* (i8*, [20 x i8]*)*, i8* }
  %"$$ud-registry.eConfigured_87_4143" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_87"
  %"$$ud-registry.eConfigured_87_fptr_4144" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_87_4143", 0
  %"$$ud-registry.eConfigured_87_envptr_4145" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_87_4143", 1
  %"$$ud-registry.eConfigured_87_owner_4146" = alloca [20 x i8]
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_87_owner_4146"
  %"$$ud-registry.eConfigured_87_call_4147" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_87_fptr_4144"(i8* %"$$ud-registry.eConfigured_87_envptr_4145", [20 x i8]* %"$$ud-registry.eConfigured_87_owner_4146")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_87_call_4147", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_88"
  %"$ud-registry.eConfigured_89" = alloca i8*
  %"$$ud-registry.eConfigured_88_4148" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_88"
  %"$$ud-registry.eConfigured_88_fptr_4149" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_88_4148", 0
  %"$$ud-registry.eConfigured_88_envptr_4150" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_88_4148", 1
  %"$$ud-registry.eConfigured_88_ud-registry.zeroByStr20_4151" = alloca [20 x i8]
  %"$ud-registry.zeroByStr20_4152" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20
  store [20 x i8] %"$ud-registry.zeroByStr20_4152", [20 x i8]* %"$$ud-registry.eConfigured_88_ud-registry.zeroByStr20_4151"
  %"$$ud-registry.eConfigured_88_call_4153" = call i8* %"$$ud-registry.eConfigured_88_fptr_4149"(i8* %"$$ud-registry.eConfigured_88_envptr_4150", [20 x i8]* %"$$ud-registry.eConfigured_88_ud-registry.zeroByStr20_4151")
  store i8* %"$$ud-registry.eConfigured_88_call_4153", i8** %"$ud-registry.eConfigured_89"
  %"$$ud-registry.eConfigured_89_4154" = load i8*, i8** %"$ud-registry.eConfigured_89"
  store i8* %"$$ud-registry.eConfigured_89_4154", i8** %e
  %"$e_4155" = load i8*, i8** %e
  %"$_literal_cost_call_4157" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4155")
  %"$gasrem_4158" = load i64, i64* @_gasrem
  %"$gascmp_4159" = icmp ugt i64 %"$_literal_cost_call_4157", %"$gasrem_4158"
  br i1 %"$gascmp_4159", label %"$out_of_gas_4160", label %"$have_gas_4161"

"$out_of_gas_4160":                               ; preds = %"$have_gas_4136"
  call void @_out_of_gas()
  br label %"$have_gas_4161"

"$have_gas_4161":                                 ; preds = %"$out_of_gas_4160", %"$have_gas_4136"
  %"$consume_4162" = sub i64 %"$gasrem_4158", %"$_literal_cost_call_4157"
  store i64 %"$consume_4162", i64* @_gasrem
  %"$execptr_load_4163" = load i8*, i8** @_execptr
  %"$e_4164" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_4163", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4164")
  %"$gasrem_4165" = load i64, i64* @_gasrem
  %"$gascmp_4166" = icmp ugt i64 1, %"$gasrem_4165"
  br i1 %"$gascmp_4166", label %"$out_of_gas_4167", label %"$have_gas_4168"

"$out_of_gas_4167":                               ; preds = %"$have_gas_4161"
  call void @_out_of_gas()
  br label %"$have_gas_4168"

"$have_gas_4168":                                 ; preds = %"$out_of_gas_4167", %"$have_gas_4161"
  %"$consume_4169" = sub i64 %"$gasrem_4165", 1
  store i64 %"$consume_4169", i64* @_gasrem
  %msgs = alloca %TName_List_Message*
  %"$gasrem_4170" = load i64, i64* @_gasrem
  %"$gascmp_4171" = icmp ugt i64 1, %"$gasrem_4170"
  br i1 %"$gascmp_4171", label %"$out_of_gas_4172", label %"$have_gas_4173"

"$out_of_gas_4172":                               ; preds = %"$have_gas_4168"
  call void @_out_of_gas()
  br label %"$have_gas_4173"

"$have_gas_4173":                                 ; preds = %"$out_of_gas_4172", %"$have_gas_4168"
  %"$consume_4174" = sub i64 %"$gasrem_4170", 1
  store i64 %"$consume_4174", i64* @_gasrem
  %m = alloca i8*
  %"$gasrem_4175" = load i64, i64* @_gasrem
  %"$gascmp_4176" = icmp ugt i64 1, %"$gasrem_4175"
  br i1 %"$gascmp_4176", label %"$out_of_gas_4177", label %"$have_gas_4178"

"$out_of_gas_4177":                               ; preds = %"$have_gas_4173"
  call void @_out_of_gas()
  br label %"$have_gas_4178"

"$have_gas_4178":                                 ; preds = %"$out_of_gas_4177", %"$have_gas_4173"
  %"$consume_4179" = sub i64 %"$gasrem_4175", 1
  store i64 %"$consume_4179", i64* @_gasrem
  %"$msgobj_4180_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_4180_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4180_salloc_load", i64 225)
  %"$msgobj_4180_salloc" = bitcast i8* %"$msgobj_4180_salloc_salloc" to [225 x i8]*
  %"$msgobj_4180" = bitcast [225 x i8]* %"$msgobj_4180_salloc" to i8*
  store i8 5, i8* %"$msgobj_4180"
  %"$msgobj_fname_4182" = getelementptr i8, i8* %"$msgobj_4180", i32 1
  %"$msgobj_fname_4183" = bitcast i8* %"$msgobj_fname_4182" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4181", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4183"
  %"$msgobj_td_4184" = getelementptr i8, i8* %"$msgobj_4180", i32 17
  %"$msgobj_td_4185" = bitcast i8* %"$msgobj_td_4184" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4185"
  %"$msgobj_v_4187" = getelementptr i8, i8* %"$msgobj_4180", i32 25
  %"$msgobj_v_4188" = bitcast i8* %"$msgobj_v_4187" to %String*
  store %String { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$stringlit_4186", i32 0, i32 0), i32 17 }, %String* %"$msgobj_v_4188"
  %"$msgobj_fname_4190" = getelementptr i8, i8* %"$msgobj_4180", i32 41
  %"$msgobj_fname_4191" = bitcast i8* %"$msgobj_fname_4190" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4189", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4191"
  %"$msgobj_td_4192" = getelementptr i8, i8* %"$msgobj_4180", i32 57
  %"$msgobj_td_4193" = bitcast i8* %"$msgobj_td_4192" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_4193"
  %"$msgobj_v_4194" = getelementptr i8, i8* %"$msgobj_4180", i32 65
  %"$msgobj_v_4195" = bitcast i8* %"$msgobj_v_4194" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_4195"
  %"$msgobj_fname_4197" = getelementptr i8, i8* %"$msgobj_4180", i32 97
  %"$msgobj_fname_4198" = bitcast i8* %"$msgobj_fname_4197" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4196", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4198"
  %"$msgobj_td_4199" = getelementptr i8, i8* %"$msgobj_4180", i32 113
  %"$msgobj_td_4200" = bitcast i8* %"$msgobj_td_4199" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4200"
  %"$msgobj_v_4201" = getelementptr i8, i8* %"$msgobj_4180", i32 121
  %"$msgobj_v_4202" = bitcast i8* %"$msgobj_v_4201" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4202"
  %"$msgobj_fname_4204" = getelementptr i8, i8* %"$msgobj_4180", i32 141
  %"$msgobj_fname_4205" = bitcast i8* %"$msgobj_fname_4204" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4203", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4205"
  %"$msgobj_td_4206" = getelementptr i8, i8* %"$msgobj_4180", i32 157
  %"$msgobj_td_4207" = bitcast i8* %"$msgobj_td_4206" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_4207"
  %"$msgobj_v_4208" = getelementptr i8, i8* %"$msgobj_4180", i32 165
  %"$msgobj_v_4209" = bitcast i8* %"$msgobj_v_4208" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4209"
  %"$msgobj_fname_4211" = getelementptr i8, i8* %"$msgobj_4180", i32 181
  %"$msgobj_fname_4212" = bitcast i8* %"$msgobj_fname_4211" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4210", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4212"
  %"$msgobj_td_4213" = getelementptr i8, i8* %"$msgobj_4180", i32 197
  %"$msgobj_td_4214" = bitcast i8* %"$msgobj_td_4213" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4214"
  %"$msgobj_v_4215" = getelementptr i8, i8* %"$msgobj_4180", i32 205
  %"$msgobj_v_4216" = bitcast i8* %"$msgobj_v_4215" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4216"
  store i8* %"$msgobj_4180", i8** %m
  %"$gasrem_4218" = load i64, i64* @_gasrem
  %"$gascmp_4219" = icmp ugt i64 1, %"$gasrem_4218"
  br i1 %"$gascmp_4219", label %"$out_of_gas_4220", label %"$have_gas_4221"

"$out_of_gas_4220":                               ; preds = %"$have_gas_4178"
  call void @_out_of_gas()
  br label %"$have_gas_4221"

"$have_gas_4221":                                 ; preds = %"$out_of_gas_4220", %"$have_gas_4178"
  %"$consume_4222" = sub i64 %"$gasrem_4218", 1
  store i64 %"$consume_4222", i64* @_gasrem
  %"$ud-registry.oneMsg_86" = alloca %TName_List_Message*
  %"$ud-registry.oneMsg_4223" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg
  %"$ud-registry.oneMsg_fptr_4224" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4223", 0
  %"$ud-registry.oneMsg_envptr_4225" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4223", 1
  %"$m_4226" = load i8*, i8** %m
  %"$ud-registry.oneMsg_call_4227" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4224"(i8* %"$ud-registry.oneMsg_envptr_4225", i8* %"$m_4226")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4227", %TName_List_Message** %"$ud-registry.oneMsg_86"
  %"$$ud-registry.oneMsg_86_4228" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_86"
  store %TName_List_Message* %"$$ud-registry.oneMsg_86_4228", %TName_List_Message** %msgs
  %"$msgs_4229" = load %TName_List_Message*, %TName_List_Message** %msgs
  %"$$msgs_4229_4230" = bitcast %TName_List_Message* %"$msgs_4229" to i8*
  %"$_literal_cost_call_4231" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_4229_4230")
  %"$gasrem_4232" = load i64, i64* @_gasrem
  %"$gascmp_4233" = icmp ugt i64 %"$_literal_cost_call_4231", %"$gasrem_4232"
  br i1 %"$gascmp_4233", label %"$out_of_gas_4234", label %"$have_gas_4235"

"$out_of_gas_4234":                               ; preds = %"$have_gas_4221"
  call void @_out_of_gas()
  br label %"$have_gas_4235"

"$have_gas_4235":                                 ; preds = %"$out_of_gas_4234", %"$have_gas_4221"
  %"$consume_4236" = sub i64 %"$gasrem_4232", %"$_literal_cost_call_4231"
  store i64 %"$consume_4236", i64* @_gasrem
  %"$execptr_load_4237" = load i8*, i8** @_execptr
  %"$msgs_4238" = load %TName_List_Message*, %TName_List_Message** %msgs
  call void @_send(i8* %"$execptr_load_4237", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_4238")
  br label %"$matchsucc_4081"

"$False_4239":                                    ; preds = %"$have_gas_4079"
  %"$isSenderOAO_4240" = bitcast %TName_Bool* %"$isSenderOAO_4082" to %CName_False*
  %"$gasrem_4241" = load i64, i64* @_gasrem
  %"$gascmp_4242" = icmp ugt i64 1, %"$gasrem_4241"
  br i1 %"$gascmp_4242", label %"$out_of_gas_4243", label %"$have_gas_4244"

"$out_of_gas_4243":                               ; preds = %"$False_4239"
  call void @_out_of_gas()
  br label %"$have_gas_4244"

"$have_gas_4244":                                 ; preds = %"$out_of_gas_4243", %"$False_4239"
  %"$consume_4245" = sub i64 %"$gasrem_4241", 1
  store i64 %"$consume_4245", i64* @_gasrem
  %e5 = alloca i8*
  %"$gasrem_4246" = load i64, i64* @_gasrem
  %"$gascmp_4247" = icmp ugt i64 1, %"$gasrem_4246"
  br i1 %"$gascmp_4247", label %"$out_of_gas_4248", label %"$have_gas_4249"

"$out_of_gas_4248":                               ; preds = %"$have_gas_4244"
  call void @_out_of_gas()
  br label %"$have_gas_4249"

"$have_gas_4249":                                 ; preds = %"$out_of_gas_4248", %"$have_gas_4244"
  %"$consume_4250" = sub i64 %"$gasrem_4246", 1
  store i64 %"$consume_4250", i64* @_gasrem
  %m6 = alloca %String
  %"$gasrem_4251" = load i64, i64* @_gasrem
  %"$gascmp_4252" = icmp ugt i64 1, %"$gasrem_4251"
  br i1 %"$gascmp_4252", label %"$out_of_gas_4253", label %"$have_gas_4254"

"$out_of_gas_4253":                               ; preds = %"$have_gas_4249"
  call void @_out_of_gas()
  br label %"$have_gas_4254"

"$have_gas_4254":                                 ; preds = %"$out_of_gas_4253", %"$have_gas_4249"
  %"$consume_4255" = sub i64 %"$gasrem_4251", 1
  store i64 %"$consume_4255", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_4256", i32 0, i32 0), i32 43 }, %String* %m6
  %"$gasrem_4257" = load i64, i64* @_gasrem
  %"$gascmp_4258" = icmp ugt i64 1, %"$gasrem_4257"
  br i1 %"$gascmp_4258", label %"$out_of_gas_4259", label %"$have_gas_4260"

"$out_of_gas_4259":                               ; preds = %"$have_gas_4254"
  call void @_out_of_gas()
  br label %"$have_gas_4260"

"$have_gas_4260":                                 ; preds = %"$out_of_gas_4259", %"$have_gas_4254"
  %"$consume_4261" = sub i64 %"$gasrem_4257", 1
  store i64 %"$consume_4261", i64* @_gasrem
  %"$ud-registry.eError_91" = alloca i8*
  %"$ud-registry.eError_4262" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError
  %"$ud-registry.eError_fptr_4263" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4262", 0
  %"$ud-registry.eError_envptr_4264" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4262", 1
  %"$m_4265" = load %String, %String* %m6
  %"$ud-registry.eError_call_4266" = call i8* %"$ud-registry.eError_fptr_4263"(i8* %"$ud-registry.eError_envptr_4264", %String %"$m_4265")
  store i8* %"$ud-registry.eError_call_4266", i8** %"$ud-registry.eError_91"
  %"$$ud-registry.eError_91_4267" = load i8*, i8** %"$ud-registry.eError_91"
  store i8* %"$$ud-registry.eError_91_4267", i8** %e5
  %"$e_4268" = load i8*, i8** %e5
  %"$_literal_cost_call_4270" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4268")
  %"$gasrem_4271" = load i64, i64* @_gasrem
  %"$gascmp_4272" = icmp ugt i64 %"$_literal_cost_call_4270", %"$gasrem_4271"
  br i1 %"$gascmp_4272", label %"$out_of_gas_4273", label %"$have_gas_4274"

"$out_of_gas_4273":                               ; preds = %"$have_gas_4260"
  call void @_out_of_gas()
  br label %"$have_gas_4274"

"$have_gas_4274":                                 ; preds = %"$out_of_gas_4273", %"$have_gas_4260"
  %"$consume_4275" = sub i64 %"$gasrem_4271", %"$_literal_cost_call_4270"
  store i64 %"$consume_4275", i64* @_gasrem
  %"$execptr_load_4276" = load i8*, i8** @_execptr
  %"$e_4277" = load i8*, i8** %e5
  call void @_event(i8* %"$execptr_load_4276", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4277")
  %"$gasrem_4278" = load i64, i64* @_gasrem
  %"$gascmp_4279" = icmp ugt i64 1, %"$gasrem_4278"
  br i1 %"$gascmp_4279", label %"$out_of_gas_4280", label %"$have_gas_4281"

"$out_of_gas_4280":                               ; preds = %"$have_gas_4274"
  call void @_out_of_gas()
  br label %"$have_gas_4281"

"$have_gas_4281":                                 ; preds = %"$out_of_gas_4280", %"$have_gas_4274"
  %"$consume_4282" = sub i64 %"$gasrem_4278", 1
  store i64 %"$consume_4282", i64* @_gasrem
  %msgs7 = alloca %TName_List_Message*
  %"$gasrem_4283" = load i64, i64* @_gasrem
  %"$gascmp_4284" = icmp ugt i64 1, %"$gasrem_4283"
  br i1 %"$gascmp_4284", label %"$out_of_gas_4285", label %"$have_gas_4286"

"$out_of_gas_4285":                               ; preds = %"$have_gas_4281"
  call void @_out_of_gas()
  br label %"$have_gas_4286"

"$have_gas_4286":                                 ; preds = %"$out_of_gas_4285", %"$have_gas_4281"
  %"$consume_4287" = sub i64 %"$gasrem_4283", 1
  store i64 %"$consume_4287", i64* @_gasrem
  %m8 = alloca i8*
  %"$gasrem_4288" = load i64, i64* @_gasrem
  %"$gascmp_4289" = icmp ugt i64 1, %"$gasrem_4288"
  br i1 %"$gascmp_4289", label %"$out_of_gas_4290", label %"$have_gas_4291"

"$out_of_gas_4290":                               ; preds = %"$have_gas_4286"
  call void @_out_of_gas()
  br label %"$have_gas_4291"

"$have_gas_4291":                                 ; preds = %"$out_of_gas_4290", %"$have_gas_4286"
  %"$consume_4292" = sub i64 %"$gasrem_4288", 1
  store i64 %"$consume_4292", i64* @_gasrem
  %"$msgobj_4293_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_4293_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4293_salloc_load", i64 225)
  %"$msgobj_4293_salloc" = bitcast i8* %"$msgobj_4293_salloc_salloc" to [225 x i8]*
  %"$msgobj_4293" = bitcast [225 x i8]* %"$msgobj_4293_salloc" to i8*
  store i8 5, i8* %"$msgobj_4293"
  %"$msgobj_fname_4295" = getelementptr i8, i8* %"$msgobj_4293", i32 1
  %"$msgobj_fname_4296" = bitcast i8* %"$msgobj_fname_4295" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4294", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4296"
  %"$msgobj_td_4297" = getelementptr i8, i8* %"$msgobj_4293", i32 17
  %"$msgobj_td_4298" = bitcast i8* %"$msgobj_td_4297" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4298"
  %"$msgobj_v_4300" = getelementptr i8, i8* %"$msgobj_4293", i32 25
  %"$msgobj_v_4301" = bitcast i8* %"$msgobj_v_4300" to %String*
  store %String { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$stringlit_4299", i32 0, i32 0), i32 17 }, %String* %"$msgobj_v_4301"
  %"$msgobj_fname_4303" = getelementptr i8, i8* %"$msgobj_4293", i32 41
  %"$msgobj_fname_4304" = bitcast i8* %"$msgobj_fname_4303" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4302", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4304"
  %"$msgobj_td_4305" = getelementptr i8, i8* %"$msgobj_4293", i32 57
  %"$msgobj_td_4306" = bitcast i8* %"$msgobj_td_4305" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_4306"
  %"$msgobj_v_4307" = getelementptr i8, i8* %"$msgobj_4293", i32 65
  %"$msgobj_v_4308" = bitcast i8* %"$msgobj_v_4307" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_4308"
  %"$msgobj_fname_4310" = getelementptr i8, i8* %"$msgobj_4293", i32 97
  %"$msgobj_fname_4311" = bitcast i8* %"$msgobj_fname_4310" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4309", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4311"
  %"$msgobj_td_4312" = getelementptr i8, i8* %"$msgobj_4293", i32 113
  %"$msgobj_td_4313" = bitcast i8* %"$msgobj_td_4312" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4313"
  %"$msgobj_v_4314" = getelementptr i8, i8* %"$msgobj_4293", i32 121
  %"$msgobj_v_4315" = bitcast i8* %"$msgobj_v_4314" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4315"
  %"$msgobj_fname_4317" = getelementptr i8, i8* %"$msgobj_4293", i32 141
  %"$msgobj_fname_4318" = bitcast i8* %"$msgobj_fname_4317" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4316", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4318"
  %"$msgobj_td_4319" = getelementptr i8, i8* %"$msgobj_4293", i32 157
  %"$msgobj_td_4320" = bitcast i8* %"$msgobj_td_4319" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_4320"
  %"$msgobj_v_4321" = getelementptr i8, i8* %"$msgobj_4293", i32 165
  %"$msgobj_v_4322" = bitcast i8* %"$msgobj_v_4321" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4322"
  %"$msgobj_fname_4324" = getelementptr i8, i8* %"$msgobj_4293", i32 181
  %"$msgobj_fname_4325" = bitcast i8* %"$msgobj_fname_4324" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4323", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4325"
  %"$msgobj_td_4326" = getelementptr i8, i8* %"$msgobj_4293", i32 197
  %"$msgobj_td_4327" = bitcast i8* %"$msgobj_td_4326" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4327"
  %"$msgobj_v_4328" = getelementptr i8, i8* %"$msgobj_4293", i32 205
  %"$msgobj_v_4329" = bitcast i8* %"$msgobj_v_4328" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4329"
  store i8* %"$msgobj_4293", i8** %m8
  %"$gasrem_4331" = load i64, i64* @_gasrem
  %"$gascmp_4332" = icmp ugt i64 1, %"$gasrem_4331"
  br i1 %"$gascmp_4332", label %"$out_of_gas_4333", label %"$have_gas_4334"

"$out_of_gas_4333":                               ; preds = %"$have_gas_4291"
  call void @_out_of_gas()
  br label %"$have_gas_4334"

"$have_gas_4334":                                 ; preds = %"$out_of_gas_4333", %"$have_gas_4291"
  %"$consume_4335" = sub i64 %"$gasrem_4331", 1
  store i64 %"$consume_4335", i64* @_gasrem
  %"$ud-registry.oneMsg_90" = alloca %TName_List_Message*
  %"$ud-registry.oneMsg_4336" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg
  %"$ud-registry.oneMsg_fptr_4337" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4336", 0
  %"$ud-registry.oneMsg_envptr_4338" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4336", 1
  %"$m_4339" = load i8*, i8** %m8
  %"$ud-registry.oneMsg_call_4340" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4337"(i8* %"$ud-registry.oneMsg_envptr_4338", i8* %"$m_4339")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4340", %TName_List_Message** %"$ud-registry.oneMsg_90"
  %"$$ud-registry.oneMsg_90_4341" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_90"
  store %TName_List_Message* %"$$ud-registry.oneMsg_90_4341", %TName_List_Message** %msgs7
  %"$msgs_4342" = load %TName_List_Message*, %TName_List_Message** %msgs7
  %"$$msgs_4342_4343" = bitcast %TName_List_Message* %"$msgs_4342" to i8*
  %"$_literal_cost_call_4344" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_4342_4343")
  %"$gasrem_4345" = load i64, i64* @_gasrem
  %"$gascmp_4346" = icmp ugt i64 %"$_literal_cost_call_4344", %"$gasrem_4345"
  br i1 %"$gascmp_4346", label %"$out_of_gas_4347", label %"$have_gas_4348"

"$out_of_gas_4347":                               ; preds = %"$have_gas_4334"
  call void @_out_of_gas()
  br label %"$have_gas_4348"

"$have_gas_4348":                                 ; preds = %"$out_of_gas_4347", %"$have_gas_4334"
  %"$consume_4349" = sub i64 %"$gasrem_4345", %"$_literal_cost_call_4344"
  store i64 %"$consume_4349", i64* @_gasrem
  %"$execptr_load_4350" = load i8*, i8** @_execptr
  %"$msgs_4351" = load %TName_List_Message*, %TName_List_Message** %msgs7
  call void @_send(i8* %"$execptr_load_4350", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_4351")
  br label %"$matchsucc_4081"

"$empty_default_4085":                            ; preds = %"$have_gas_4079"
  br label %"$matchsucc_4081"

"$matchsucc_4081":                                ; preds = %"$have_gas_4348", %"$have_gas_4235", %"$empty_default_4085"
  ret void
}

define void @transfer(i8* %0) {
entry:
  %"$_amount_4353" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4354" = bitcast i8* %"$_amount_4353" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4354"
  %"$_sender_4355" = getelementptr i8, i8* %0, i32 16
  %"$_sender_4356" = bitcast i8* %"$_sender_4355" to [20 x i8]*
  %"$node_4357" = getelementptr i8, i8* %0, i32 36
  %"$node_4358" = bitcast i8* %"$node_4357" to [32 x i8]*
  %"$owner_4359" = getelementptr i8, i8* %0, i32 68
  %"$owner_4360" = bitcast i8* %"$owner_4359" to [20 x i8]*
  call void @"$transfer_3974"(%Uint128 %_amount, [20 x i8]* %"$_sender_4356", [32 x i8]* %"$node_4358", [20 x i8]* %"$owner_4360")
  ret void
}

define internal void @"$assign_4361"(%Uint128 %_amount, [20 x i8]* %"$_sender_4362", [32 x i8]* %"$parent_4363", %String %label, [20 x i8]* %"$owner_4364") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4362"
  %parent = load [32 x i8], [32 x i8]* %"$parent_4363"
  %owner = load [20 x i8], [20 x i8]* %"$owner_4364"
  %maybeRecord = alloca %TName_Option_ud-registry.Record*
  %"$indices_buf_4365_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_4365_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4365_salloc_load", i64 32)
  %"$indices_buf_4365_salloc" = bitcast i8* %"$indices_buf_4365_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4365" = bitcast [32 x i8]* %"$indices_buf_4365_salloc" to i8*
  %"$indices_gep_4366" = getelementptr i8, i8* %"$indices_buf_4365", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4366" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %indices_cast
  %"$execptr_load_4367" = load i8*, i8** @_execptr
  %"$maybeRecord_4369" = call i8* @_fetch_field(i8* %"$execptr_load_4367", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4368", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4365", i32 1)
  %"$maybeRecord_4370" = bitcast i8* %"$maybeRecord_4369" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4370", %TName_Option_ud-registry.Record** %maybeRecord
  %"$maybeRecord_4371" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord
  %"$$maybeRecord_4371_4372" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4371" to i8*
  %"$_literal_cost_call_4373" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_4371_4372")
  %"$gasadd_4374" = add i64 %"$_literal_cost_call_4373", 0
  %"$gasadd_4375" = add i64 %"$gasadd_4374", 1
  %"$gasrem_4376" = load i64, i64* @_gasrem
  %"$gascmp_4377" = icmp ugt i64 %"$gasadd_4375", %"$gasrem_4376"
  br i1 %"$gascmp_4377", label %"$out_of_gas_4378", label %"$have_gas_4379"

"$out_of_gas_4378":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4379"

"$have_gas_4379":                                 ; preds = %"$out_of_gas_4378", %entry
  %"$consume_4380" = sub i64 %"$gasrem_4376", %"$gasadd_4375"
  store i64 %"$consume_4380", i64* @_gasrem
  %maybeApproved = alloca %TName_Option_ByStr20*
  %"$indices_buf_4381_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_4381_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4381_salloc_load", i64 32)
  %"$indices_buf_4381_salloc" = bitcast i8* %"$indices_buf_4381_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4381" = bitcast [32 x i8]* %"$indices_buf_4381_salloc" to i8*
  %"$indices_gep_4382" = getelementptr i8, i8* %"$indices_buf_4381", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4382" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %indices_cast1
  %"$execptr_load_4383" = load i8*, i8** @_execptr
  %"$maybeApproved_4385" = call i8* @_fetch_field(i8* %"$execptr_load_4383", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4384", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_4381", i32 1)
  %"$maybeApproved_4386" = bitcast i8* %"$maybeApproved_4385" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_4386", %TName_Option_ByStr20** %maybeApproved
  %"$maybeApproved_4387" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved
  %"$$maybeApproved_4387_4388" = bitcast %TName_Option_ByStr20* %"$maybeApproved_4387" to i8*
  %"$_literal_cost_call_4389" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_4387_4388")
  %"$gasadd_4390" = add i64 %"$_literal_cost_call_4389", 0
  %"$gasadd_4391" = add i64 %"$gasadd_4390", 1
  %"$gasrem_4392" = load i64, i64* @_gasrem
  %"$gascmp_4393" = icmp ugt i64 %"$gasadd_4391", %"$gasrem_4392"
  br i1 %"$gascmp_4393", label %"$out_of_gas_4394", label %"$have_gas_4395"

"$out_of_gas_4394":                               ; preds = %"$have_gas_4379"
  call void @_out_of_gas()
  br label %"$have_gas_4395"

"$have_gas_4395":                                 ; preds = %"$out_of_gas_4394", %"$have_gas_4379"
  %"$consume_4396" = sub i64 %"$gasrem_4392", %"$gasadd_4391"
  store i64 %"$consume_4396", i64* @_gasrem
  %"$gasrem_4397" = load i64, i64* @_gasrem
  %"$gascmp_4398" = icmp ugt i64 1, %"$gasrem_4397"
  br i1 %"$gascmp_4398", label %"$out_of_gas_4399", label %"$have_gas_4400"

"$out_of_gas_4399":                               ; preds = %"$have_gas_4395"
  call void @_out_of_gas()
  br label %"$have_gas_4400"

"$have_gas_4400":                                 ; preds = %"$out_of_gas_4399", %"$have_gas_4395"
  %"$consume_4401" = sub i64 %"$gasrem_4397", 1
  store i64 %"$consume_4401", i64* @_gasrem
  %recordOwner = alloca [20 x i8]
  %"$gasrem_4402" = load i64, i64* @_gasrem
  %"$gascmp_4403" = icmp ugt i64 1, %"$gasrem_4402"
  br i1 %"$gascmp_4403", label %"$out_of_gas_4404", label %"$have_gas_4405"

"$out_of_gas_4404":                               ; preds = %"$have_gas_4400"
  call void @_out_of_gas()
  br label %"$have_gas_4405"

"$have_gas_4405":                                 ; preds = %"$out_of_gas_4404", %"$have_gas_4400"
  %"$consume_4406" = sub i64 %"$gasrem_4402", 1
  store i64 %"$consume_4406", i64* @_gasrem
  %"$ud-registry.recordMemberOwner_111" = alloca [20 x i8]
  %"$ud-registry.recordMemberOwner_4407" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner
  %"$ud-registry.recordMemberOwner_fptr_4408" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4407", 0
  %"$ud-registry.recordMemberOwner_envptr_4409" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4407", 1
  %"$maybeRecord_4410" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord
  %"$ud-registry.recordMemberOwner_retalloca_4411" = alloca [20 x i8]
  call void %"$ud-registry.recordMemberOwner_fptr_4408"(i8* %"$ud-registry.recordMemberOwner_envptr_4409", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4411", %TName_Option_ud-registry.Record* %"$maybeRecord_4410")
  %"$ud-registry.recordMemberOwner_ret_4412" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4411"
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_4412", [20 x i8]* %"$ud-registry.recordMemberOwner_111"
  %"$$ud-registry.recordMemberOwner_111_4413" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_111"
  store [20 x i8] %"$$ud-registry.recordMemberOwner_111_4413", [20 x i8]* %recordOwner
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*
  %"$indices_buf_4414_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_4414_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4414_salloc_load", i64 20)
  %"$indices_buf_4414_salloc" = bitcast i8* %"$indices_buf_4414_salloc_salloc" to [20 x i8]*
  %"$indices_buf_4414" = bitcast [20 x i8]* %"$indices_buf_4414_salloc" to i8*
  %"$recordOwner_4415" = load [20 x i8], [20 x i8]* %recordOwner
  %"$indices_gep_4416" = getelementptr i8, i8* %"$indices_buf_4414", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4416" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4415", [20 x i8]* %indices_cast2
  %"$execptr_load_4417" = load i8*, i8** @_execptr
  %"$maybeOperators_4419" = call i8* @_fetch_field(i8* %"$execptr_load_4417", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_4418", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_4414", i32 1)
  %"$maybeOperators_4420" = bitcast i8* %"$maybeOperators_4419" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4420", %"TName_Option_List_(ByStr20)"** %maybeOperators
  %"$maybeOperators_4421" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators
  %"$$maybeOperators_4421_4422" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4421" to i8*
  %"$_literal_cost_call_4423" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_4421_4422")
  %"$gasadd_4424" = add i64 %"$_literal_cost_call_4423", 0
  %"$gasadd_4425" = add i64 %"$gasadd_4424", 1
  %"$gasrem_4426" = load i64, i64* @_gasrem
  %"$gascmp_4427" = icmp ugt i64 %"$gasadd_4425", %"$gasrem_4426"
  br i1 %"$gascmp_4427", label %"$out_of_gas_4428", label %"$have_gas_4429"

"$out_of_gas_4428":                               ; preds = %"$have_gas_4405"
  call void @_out_of_gas()
  br label %"$have_gas_4429"

"$have_gas_4429":                                 ; preds = %"$out_of_gas_4428", %"$have_gas_4405"
  %"$consume_4430" = sub i64 %"$gasrem_4426", %"$gasadd_4425"
  store i64 %"$consume_4430", i64* @_gasrem
  %"$gasrem_4431" = load i64, i64* @_gasrem
  %"$gascmp_4432" = icmp ugt i64 1, %"$gasrem_4431"
  br i1 %"$gascmp_4432", label %"$out_of_gas_4433", label %"$have_gas_4434"

"$out_of_gas_4433":                               ; preds = %"$have_gas_4429"
  call void @_out_of_gas()
  br label %"$have_gas_4434"

"$have_gas_4434":                                 ; preds = %"$out_of_gas_4433", %"$have_gas_4429"
  %"$consume_4435" = sub i64 %"$gasrem_4431", 1
  store i64 %"$consume_4435", i64* @_gasrem
  %isSenderOAO = alloca %TName_Bool*
  %"$gasrem_4436" = load i64, i64* @_gasrem
  %"$gascmp_4437" = icmp ugt i64 1, %"$gasrem_4436"
  br i1 %"$gascmp_4437", label %"$out_of_gas_4438", label %"$have_gas_4439"

"$out_of_gas_4438":                               ; preds = %"$have_gas_4434"
  call void @_out_of_gas()
  br label %"$have_gas_4439"

"$have_gas_4439":                                 ; preds = %"$out_of_gas_4438", %"$have_gas_4434"
  %"$consume_4440" = sub i64 %"$gasrem_4436", 1
  store i64 %"$consume_4440", i64* @_gasrem
  %"$ud-registry.getIsOAO_107" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.getIsOAO_4441" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO
  %"$ud-registry.getIsOAO_fptr_4442" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4441", 0
  %"$ud-registry.getIsOAO_envptr_4443" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4441", 1
  %"$ud-registry.getIsOAO__sender_4444" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_4444"
  %"$ud-registry.getIsOAO_call_4445" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_4442"(i8* %"$ud-registry.getIsOAO_envptr_4443", [20 x i8]* %"$ud-registry.getIsOAO__sender_4444")
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_4445", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_107"
  %"$ud-registry.getIsOAO_108" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }
  %"$$ud-registry.getIsOAO_107_4446" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_107"
  %"$$ud-registry.getIsOAO_107_fptr_4447" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_107_4446", 0
  %"$$ud-registry.getIsOAO_107_envptr_4448" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_107_4446", 1
  %"$$ud-registry.getIsOAO_107_recordOwner_4449" = alloca [20 x i8]
  %"$recordOwner_4450" = load [20 x i8], [20 x i8]* %recordOwner
  store [20 x i8] %"$recordOwner_4450", [20 x i8]* %"$$ud-registry.getIsOAO_107_recordOwner_4449"
  %"$$ud-registry.getIsOAO_107_call_4451" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_107_fptr_4447"(i8* %"$$ud-registry.getIsOAO_107_envptr_4448", [20 x i8]* %"$$ud-registry.getIsOAO_107_recordOwner_4449")
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_107_call_4451", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_108"
  %"$ud-registry.getIsOAO_109" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }
  %"$$ud-registry.getIsOAO_108_4452" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_108"
  %"$$ud-registry.getIsOAO_108_fptr_4453" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_108_4452", 0
  %"$$ud-registry.getIsOAO_108_envptr_4454" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_108_4452", 1
  %"$maybeApproved_4455" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved
  %"$$ud-registry.getIsOAO_108_call_4456" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_108_fptr_4453"(i8* %"$$ud-registry.getIsOAO_108_envptr_4454", %TName_Option_ByStr20* %"$maybeApproved_4455")
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_108_call_4456", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_109"
  %"$ud-registry.getIsOAO_110" = alloca %TName_Bool*
  %"$$ud-registry.getIsOAO_109_4457" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_109"
  %"$$ud-registry.getIsOAO_109_fptr_4458" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_109_4457", 0
  %"$$ud-registry.getIsOAO_109_envptr_4459" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_109_4457", 1
  %"$maybeOperators_4460" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators
  %"$$ud-registry.getIsOAO_109_call_4461" = call %TName_Bool* %"$$ud-registry.getIsOAO_109_fptr_4458"(i8* %"$$ud-registry.getIsOAO_109_envptr_4459", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4460")
  store %TName_Bool* %"$$ud-registry.getIsOAO_109_call_4461", %TName_Bool** %"$ud-registry.getIsOAO_110"
  %"$$ud-registry.getIsOAO_110_4462" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_110"
  store %TName_Bool* %"$$ud-registry.getIsOAO_110_4462", %TName_Bool** %isSenderOAO
  %"$gasrem_4463" = load i64, i64* @_gasrem
  %"$gascmp_4464" = icmp ugt i64 2, %"$gasrem_4463"
  br i1 %"$gascmp_4464", label %"$out_of_gas_4465", label %"$have_gas_4466"

"$out_of_gas_4465":                               ; preds = %"$have_gas_4439"
  call void @_out_of_gas()
  br label %"$have_gas_4466"

"$have_gas_4466":                                 ; preds = %"$out_of_gas_4465", %"$have_gas_4439"
  %"$consume_4467" = sub i64 %"$gasrem_4463", 2
  store i64 %"$consume_4467", i64* @_gasrem
  %"$isSenderOAO_4469" = load %TName_Bool*, %TName_Bool** %isSenderOAO
  %"$isSenderOAO_tag_4470" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_4469", i32 0, i32 0
  %"$isSenderOAO_tag_4471" = load i8, i8* %"$isSenderOAO_tag_4470"
  switch i8 %"$isSenderOAO_tag_4471", label %"$empty_default_4472" [
    i8 0, label %"$True_4473"
    i8 1, label %"$False_4716"
  ]

"$True_4473":                                     ; preds = %"$have_gas_4466"
  %"$isSenderOAO_4474" = bitcast %TName_Bool* %"$isSenderOAO_4469" to %CName_True*
  %"$gasrem_4475" = load i64, i64* @_gasrem
  %"$gascmp_4476" = icmp ugt i64 1, %"$gasrem_4475"
  br i1 %"$gascmp_4476", label %"$out_of_gas_4477", label %"$have_gas_4478"

"$out_of_gas_4477":                               ; preds = %"$True_4473"
  call void @_out_of_gas()
  br label %"$have_gas_4478"

"$have_gas_4478":                                 ; preds = %"$out_of_gas_4477", %"$True_4473"
  %"$consume_4479" = sub i64 %"$gasrem_4475", 1
  store i64 %"$consume_4479", i64* @_gasrem
  %node = alloca [32 x i8]
  %"$gasrem_4480" = load i64, i64* @_gasrem
  %"$gascmp_4481" = icmp ugt i64 1, %"$gasrem_4480"
  br i1 %"$gascmp_4481", label %"$out_of_gas_4482", label %"$have_gas_4483"

"$out_of_gas_4482":                               ; preds = %"$have_gas_4478"
  call void @_out_of_gas()
  br label %"$have_gas_4483"

"$have_gas_4483":                                 ; preds = %"$out_of_gas_4482", %"$have_gas_4478"
  %"$consume_4484" = sub i64 %"$gasrem_4480", 1
  store i64 %"$consume_4484", i64* @_gasrem
  %"$ud-registry.parentLabelToNode_103" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }
  %"$ud-registry.parentLabelToNode_4485" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode
  %"$ud-registry.parentLabelToNode_fptr_4486" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4485", 0
  %"$ud-registry.parentLabelToNode_envptr_4487" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4485", 1
  %"$ud-registry.parentLabelToNode_parent_4488" = alloca [32 x i8]
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4488"
  %"$ud-registry.parentLabelToNode_call_4489" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_4486"(i8* %"$ud-registry.parentLabelToNode_envptr_4487", [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4488")
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_4489", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_103"
  %"$ud-registry.parentLabelToNode_104" = alloca [32 x i8]
  %"$$ud-registry.parentLabelToNode_103_4490" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_103"
  %"$$ud-registry.parentLabelToNode_103_fptr_4491" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_103_4490", 0
  %"$$ud-registry.parentLabelToNode_103_envptr_4492" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_103_4490", 1
  %"$$ud-registry.parentLabelToNode_103_retalloca_4493" = alloca [32 x i8]
  call void %"$$ud-registry.parentLabelToNode_103_fptr_4491"(i8* %"$$ud-registry.parentLabelToNode_103_envptr_4492", [32 x i8]* %"$$ud-registry.parentLabelToNode_103_retalloca_4493", %String %label)
  %"$$ud-registry.parentLabelToNode_103_ret_4494" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_103_retalloca_4493"
  store [32 x i8] %"$$ud-registry.parentLabelToNode_103_ret_4494", [32 x i8]* %"$ud-registry.parentLabelToNode_104"
  %"$$ud-registry.parentLabelToNode_104_4495" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_104"
  store [32 x i8] %"$$ud-registry.parentLabelToNode_104_4495", [32 x i8]* %node
  %recordExists = alloca %TName_Bool*
  %"$indices_buf_4496_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_4496_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4496_salloc_load", i64 32)
  %"$indices_buf_4496_salloc" = bitcast i8* %"$indices_buf_4496_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4496" = bitcast [32 x i8]* %"$indices_buf_4496_salloc" to i8*
  %"$node_4497" = load [32 x i8], [32 x i8]* %node
  %"$indices_gep_4498" = getelementptr i8, i8* %"$indices_buf_4496", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_4498" to [32 x i8]*
  store [32 x i8] %"$node_4497", [32 x i8]* %indices_cast3
  %"$execptr_load_4499" = load i8*, i8** @_execptr
  %"$recordExists_4501" = call i8* @_fetch_field(i8* %"$execptr_load_4499", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4500", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4496", i32 0)
  %"$recordExists_4502" = bitcast i8* %"$recordExists_4501" to %TName_Bool*
  store %TName_Bool* %"$recordExists_4502", %TName_Bool** %recordExists
  %"$recordExists_4503" = load %TName_Bool*, %TName_Bool** %recordExists
  %"$$recordExists_4503_4504" = bitcast %TName_Bool* %"$recordExists_4503" to i8*
  %"$_literal_cost_call_4505" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", i8* %"$$recordExists_4503_4504")
  %"$gasadd_4506" = add i64 %"$_literal_cost_call_4505", 0
  %"$gasadd_4507" = add i64 %"$gasadd_4506", 1
  %"$gasrem_4508" = load i64, i64* @_gasrem
  %"$gascmp_4509" = icmp ugt i64 %"$gasadd_4507", %"$gasrem_4508"
  br i1 %"$gascmp_4509", label %"$out_of_gas_4510", label %"$have_gas_4511"

"$out_of_gas_4510":                               ; preds = %"$have_gas_4483"
  call void @_out_of_gas()
  br label %"$have_gas_4511"

"$have_gas_4511":                                 ; preds = %"$out_of_gas_4510", %"$have_gas_4483"
  %"$consume_4512" = sub i64 %"$gasrem_4508", %"$gasadd_4507"
  store i64 %"$consume_4512", i64* @_gasrem
  %"$gasrem_4513" = load i64, i64* @_gasrem
  %"$gascmp_4514" = icmp ugt i64 2, %"$gasrem_4513"
  br i1 %"$gascmp_4514", label %"$out_of_gas_4515", label %"$have_gas_4516"

"$out_of_gas_4515":                               ; preds = %"$have_gas_4511"
  call void @_out_of_gas()
  br label %"$have_gas_4516"

"$have_gas_4516":                                 ; preds = %"$out_of_gas_4515", %"$have_gas_4511"
  %"$consume_4517" = sub i64 %"$gasrem_4513", 2
  store i64 %"$consume_4517", i64* @_gasrem
  %"$recordExists_4519" = load %TName_Bool*, %TName_Bool** %recordExists
  %"$recordExists_tag_4520" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$recordExists_4519", i32 0, i32 0
  %"$recordExists_tag_4521" = load i8, i8* %"$recordExists_tag_4520"
  switch i8 %"$recordExists_tag_4521", label %"$default_4522" [
    i8 1, label %"$False_4523"
  ]

"$False_4523":                                    ; preds = %"$have_gas_4516"
  %"$recordExists_4524" = bitcast %TName_Bool* %"$recordExists_4519" to %CName_False*
  %"$gasrem_4525" = load i64, i64* @_gasrem
  %"$gascmp_4526" = icmp ugt i64 1, %"$gasrem_4525"
  br i1 %"$gascmp_4526", label %"$out_of_gas_4527", label %"$have_gas_4528"

"$out_of_gas_4527":                               ; preds = %"$False_4523"
  call void @_out_of_gas()
  br label %"$have_gas_4528"

"$have_gas_4528":                                 ; preds = %"$out_of_gas_4527", %"$False_4523"
  %"$consume_4529" = sub i64 %"$gasrem_4525", 1
  store i64 %"$consume_4529", i64* @_gasrem
  %e = alloca i8*
  %"$gasrem_4530" = load i64, i64* @_gasrem
  %"$gascmp_4531" = icmp ugt i64 1, %"$gasrem_4530"
  br i1 %"$gascmp_4531", label %"$out_of_gas_4532", label %"$have_gas_4533"

"$out_of_gas_4532":                               ; preds = %"$have_gas_4528"
  call void @_out_of_gas()
  br label %"$have_gas_4533"

"$have_gas_4533":                                 ; preds = %"$out_of_gas_4532", %"$have_gas_4528"
  %"$consume_4534" = sub i64 %"$gasrem_4530", 1
  store i64 %"$consume_4534", i64* @_gasrem
  %"$ud-registry.eNewDomain_101" = alloca { i8* (i8*, %String)*, i8* }
  %"$ud-registry.eNewDomain_4535" = load { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain
  %"$ud-registry.eNewDomain_fptr_4536" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_4535", 0
  %"$ud-registry.eNewDomain_envptr_4537" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_4535", 1
  %"$ud-registry.eNewDomain_parent_4538" = alloca [32 x i8]
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.eNewDomain_parent_4538"
  %"$ud-registry.eNewDomain_call_4539" = call { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_fptr_4536"(i8* %"$ud-registry.eNewDomain_envptr_4537", [32 x i8]* %"$ud-registry.eNewDomain_parent_4538")
  store { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_call_4539", { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_101"
  %"$ud-registry.eNewDomain_102" = alloca i8*
  %"$$ud-registry.eNewDomain_101_4540" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_101"
  %"$$ud-registry.eNewDomain_101_fptr_4541" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_101_4540", 0
  %"$$ud-registry.eNewDomain_101_envptr_4542" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_101_4540", 1
  %"$$ud-registry.eNewDomain_101_call_4543" = call i8* %"$$ud-registry.eNewDomain_101_fptr_4541"(i8* %"$$ud-registry.eNewDomain_101_envptr_4542", %String %label)
  store i8* %"$$ud-registry.eNewDomain_101_call_4543", i8** %"$ud-registry.eNewDomain_102"
  %"$$ud-registry.eNewDomain_102_4544" = load i8*, i8** %"$ud-registry.eNewDomain_102"
  store i8* %"$$ud-registry.eNewDomain_102_4544", i8** %e
  %"$e_4545" = load i8*, i8** %e
  %"$_literal_cost_call_4547" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4545")
  %"$gasrem_4548" = load i64, i64* @_gasrem
  %"$gascmp_4549" = icmp ugt i64 %"$_literal_cost_call_4547", %"$gasrem_4548"
  br i1 %"$gascmp_4549", label %"$out_of_gas_4550", label %"$have_gas_4551"

"$out_of_gas_4550":                               ; preds = %"$have_gas_4533"
  call void @_out_of_gas()
  br label %"$have_gas_4551"

"$have_gas_4551":                                 ; preds = %"$out_of_gas_4550", %"$have_gas_4533"
  %"$consume_4552" = sub i64 %"$gasrem_4548", %"$_literal_cost_call_4547"
  store i64 %"$consume_4552", i64* @_gasrem
  %"$execptr_load_4553" = load i8*, i8** @_execptr
  %"$e_4554" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_4553", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4554")
  br label %"$matchsucc_4518"

"$default_4522":                                  ; preds = %"$have_gas_4516"
  br label %"$joinp_4"

"$joinp_4":                                       ; preds = %"$default_4522"
  br label %"$matchsucc_4518"

"$matchsucc_4518":                                ; preds = %"$have_gas_4551", %"$joinp_4"
  %"$gasrem_4555" = load i64, i64* @_gasrem
  %"$gascmp_4556" = icmp ugt i64 1, %"$gasrem_4555"
  br i1 %"$gascmp_4556", label %"$out_of_gas_4557", label %"$have_gas_4558"

"$out_of_gas_4557":                               ; preds = %"$matchsucc_4518"
  call void @_out_of_gas()
  br label %"$have_gas_4558"

"$have_gas_4558":                                 ; preds = %"$out_of_gas_4557", %"$matchsucc_4518"
  %"$consume_4559" = sub i64 %"$gasrem_4555", 1
  store i64 %"$consume_4559", i64* @_gasrem
  %"$indices_buf_4560_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_4560_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4560_salloc_load", i64 32)
  %"$indices_buf_4560_salloc" = bitcast i8* %"$indices_buf_4560_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4560" = bitcast [32 x i8]* %"$indices_buf_4560_salloc" to i8*
  %"$node_4561" = load [32 x i8], [32 x i8]* %node
  %"$indices_gep_4562" = getelementptr i8, i8* %"$indices_buf_4560", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4562" to [32 x i8]*
  store [32 x i8] %"$node_4561", [32 x i8]* %indices_cast4
  %"$execptr_load_4563" = load i8*, i8** @_execptr
  call void @_update_field(i8* %"$execptr_load_4563", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4564", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_4560", i8* null)
  %"$gasrem_4565" = load i64, i64* @_gasrem
  %"$gascmp_4566" = icmp ugt i64 1, %"$gasrem_4565"
  br i1 %"$gascmp_4566", label %"$out_of_gas_4567", label %"$have_gas_4568"

"$out_of_gas_4567":                               ; preds = %"$have_gas_4558"
  call void @_out_of_gas()
  br label %"$have_gas_4568"

"$have_gas_4568":                                 ; preds = %"$out_of_gas_4567", %"$have_gas_4558"
  %"$consume_4569" = sub i64 %"$gasrem_4565", 1
  store i64 %"$consume_4569", i64* @_gasrem
  %newRecord = alloca %TName_ud-registry.Record*
  %"$gasrem_4570" = load i64, i64* @_gasrem
  %"$gascmp_4571" = icmp ugt i64 1, %"$gasrem_4570"
  br i1 %"$gascmp_4571", label %"$out_of_gas_4572", label %"$have_gas_4573"

"$out_of_gas_4572":                               ; preds = %"$have_gas_4568"
  call void @_out_of_gas()
  br label %"$have_gas_4573"

"$have_gas_4573":                                 ; preds = %"$out_of_gas_4572", %"$have_gas_4568"
  %"$consume_4574" = sub i64 %"$gasrem_4570", 1
  store i64 %"$consume_4574", i64* @_gasrem
  %"$ud-registry.zeroByStr20_4575" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20
  %"$adtval_4576_load" = load i8*, i8** @_execptr
  %"$adtval_4576_salloc" = call i8* @_salloc(i8* %"$adtval_4576_load", i64 41)
  %"$adtval_4576" = bitcast i8* %"$adtval_4576_salloc" to %CName_ud-registry.Record*
  %"$adtgep_4577" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4576", i32 0, i32 0
  store i8 0, i8* %"$adtgep_4577"
  %"$adtgep_4578" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4576", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_4578"
  %"$adtgep_4579" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4576", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_4575", [20 x i8]* %"$adtgep_4579"
  %"$adtptr_4580" = bitcast %CName_ud-registry.Record* %"$adtval_4576" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_4580", %TName_ud-registry.Record** %newRecord
  %"$newRecord_4581" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord
  %"$$newRecord_4581_4582" = bitcast %TName_ud-registry.Record* %"$newRecord_4581" to i8*
  %"$_literal_cost_call_4583" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_4581_4582")
  %"$gasadd_4584" = add i64 %"$_literal_cost_call_4583", 1
  %"$gasrem_4585" = load i64, i64* @_gasrem
  %"$gascmp_4586" = icmp ugt i64 %"$gasadd_4584", %"$gasrem_4585"
  br i1 %"$gascmp_4586", label %"$out_of_gas_4587", label %"$have_gas_4588"

"$out_of_gas_4587":                               ; preds = %"$have_gas_4573"
  call void @_out_of_gas()
  br label %"$have_gas_4588"

"$have_gas_4588":                                 ; preds = %"$out_of_gas_4587", %"$have_gas_4573"
  %"$consume_4589" = sub i64 %"$gasrem_4585", %"$gasadd_4584"
  store i64 %"$consume_4589", i64* @_gasrem
  %"$indices_buf_4590_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_4590_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4590_salloc_load", i64 32)
  %"$indices_buf_4590_salloc" = bitcast i8* %"$indices_buf_4590_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4590" = bitcast [32 x i8]* %"$indices_buf_4590_salloc" to i8*
  %"$node_4591" = load [32 x i8], [32 x i8]* %node
  %"$indices_gep_4592" = getelementptr i8, i8* %"$indices_buf_4590", i32 0
  %indices_cast5 = bitcast i8* %"$indices_gep_4592" to [32 x i8]*
  store [32 x i8] %"$node_4591", [32 x i8]* %indices_cast5
  %"$execptr_load_4593" = load i8*, i8** @_execptr
  %"$newRecord_4595" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord
  %"$update_value_4596" = bitcast %TName_ud-registry.Record* %"$newRecord_4595" to i8*
  call void @_update_field(i8* %"$execptr_load_4593", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4594", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4590", i8* %"$update_value_4596")
  %"$gasrem_4597" = load i64, i64* @_gasrem
  %"$gascmp_4598" = icmp ugt i64 1, %"$gasrem_4597"
  br i1 %"$gascmp_4598", label %"$out_of_gas_4599", label %"$have_gas_4600"

"$out_of_gas_4599":                               ; preds = %"$have_gas_4588"
  call void @_out_of_gas()
  br label %"$have_gas_4600"

"$have_gas_4600":                                 ; preds = %"$out_of_gas_4599", %"$have_gas_4588"
  %"$consume_4601" = sub i64 %"$gasrem_4597", 1
  store i64 %"$consume_4601", i64* @_gasrem
  %e6 = alloca i8*
  %"$gasrem_4602" = load i64, i64* @_gasrem
  %"$gascmp_4603" = icmp ugt i64 1, %"$gasrem_4602"
  br i1 %"$gascmp_4603", label %"$out_of_gas_4604", label %"$have_gas_4605"

"$out_of_gas_4604":                               ; preds = %"$have_gas_4600"
  call void @_out_of_gas()
  br label %"$have_gas_4605"

"$have_gas_4605":                                 ; preds = %"$out_of_gas_4604", %"$have_gas_4600"
  %"$consume_4606" = sub i64 %"$gasrem_4602", 1
  store i64 %"$consume_4606", i64* @_gasrem
  %"$ud-registry.eConfigured_98" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.eConfigured_4607" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured
  %"$ud-registry.eConfigured_fptr_4608" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4607", 0
  %"$ud-registry.eConfigured_envptr_4609" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4607", 1
  %"$ud-registry.eConfigured_node_4610" = alloca [32 x i8]
  %"$node_4611" = load [32 x i8], [32 x i8]* %node
  store [32 x i8] %"$node_4611", [32 x i8]* %"$ud-registry.eConfigured_node_4610"
  %"$ud-registry.eConfigured_call_4612" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_4608"(i8* %"$ud-registry.eConfigured_envptr_4609", [32 x i8]* %"$ud-registry.eConfigured_node_4610")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_4612", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_98"
  %"$ud-registry.eConfigured_99" = alloca { i8* (i8*, [20 x i8]*)*, i8* }
  %"$$ud-registry.eConfigured_98_4613" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_98"
  %"$$ud-registry.eConfigured_98_fptr_4614" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_98_4613", 0
  %"$$ud-registry.eConfigured_98_envptr_4615" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_98_4613", 1
  %"$$ud-registry.eConfigured_98_owner_4616" = alloca [20 x i8]
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_98_owner_4616"
  %"$$ud-registry.eConfigured_98_call_4617" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_98_fptr_4614"(i8* %"$$ud-registry.eConfigured_98_envptr_4615", [20 x i8]* %"$$ud-registry.eConfigured_98_owner_4616")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_98_call_4617", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_99"
  %"$ud-registry.eConfigured_100" = alloca i8*
  %"$$ud-registry.eConfigured_99_4618" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_99"
  %"$$ud-registry.eConfigured_99_fptr_4619" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_99_4618", 0
  %"$$ud-registry.eConfigured_99_envptr_4620" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_99_4618", 1
  %"$$ud-registry.eConfigured_99_ud-registry.zeroByStr20_4621" = alloca [20 x i8]
  %"$ud-registry.zeroByStr20_4622" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20
  store [20 x i8] %"$ud-registry.zeroByStr20_4622", [20 x i8]* %"$$ud-registry.eConfigured_99_ud-registry.zeroByStr20_4621"
  %"$$ud-registry.eConfigured_99_call_4623" = call i8* %"$$ud-registry.eConfigured_99_fptr_4619"(i8* %"$$ud-registry.eConfigured_99_envptr_4620", [20 x i8]* %"$$ud-registry.eConfigured_99_ud-registry.zeroByStr20_4621")
  store i8* %"$$ud-registry.eConfigured_99_call_4623", i8** %"$ud-registry.eConfigured_100"
  %"$$ud-registry.eConfigured_100_4624" = load i8*, i8** %"$ud-registry.eConfigured_100"
  store i8* %"$$ud-registry.eConfigured_100_4624", i8** %e6
  %"$e_4625" = load i8*, i8** %e6
  %"$_literal_cost_call_4627" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4625")
  %"$gasrem_4628" = load i64, i64* @_gasrem
  %"$gascmp_4629" = icmp ugt i64 %"$_literal_cost_call_4627", %"$gasrem_4628"
  br i1 %"$gascmp_4629", label %"$out_of_gas_4630", label %"$have_gas_4631"

"$out_of_gas_4630":                               ; preds = %"$have_gas_4605"
  call void @_out_of_gas()
  br label %"$have_gas_4631"

"$have_gas_4631":                                 ; preds = %"$out_of_gas_4630", %"$have_gas_4605"
  %"$consume_4632" = sub i64 %"$gasrem_4628", %"$_literal_cost_call_4627"
  store i64 %"$consume_4632", i64* @_gasrem
  %"$execptr_load_4633" = load i8*, i8** @_execptr
  %"$e_4634" = load i8*, i8** %e6
  call void @_event(i8* %"$execptr_load_4633", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4634")
  %"$gasrem_4635" = load i64, i64* @_gasrem
  %"$gascmp_4636" = icmp ugt i64 1, %"$gasrem_4635"
  br i1 %"$gascmp_4636", label %"$out_of_gas_4637", label %"$have_gas_4638"

"$out_of_gas_4637":                               ; preds = %"$have_gas_4631"
  call void @_out_of_gas()
  br label %"$have_gas_4638"

"$have_gas_4638":                                 ; preds = %"$out_of_gas_4637", %"$have_gas_4631"
  %"$consume_4639" = sub i64 %"$gasrem_4635", 1
  store i64 %"$consume_4639", i64* @_gasrem
  %msgs = alloca %TName_List_Message*
  %"$gasrem_4640" = load i64, i64* @_gasrem
  %"$gascmp_4641" = icmp ugt i64 1, %"$gasrem_4640"
  br i1 %"$gascmp_4641", label %"$out_of_gas_4642", label %"$have_gas_4643"

"$out_of_gas_4642":                               ; preds = %"$have_gas_4638"
  call void @_out_of_gas()
  br label %"$have_gas_4643"

"$have_gas_4643":                                 ; preds = %"$out_of_gas_4642", %"$have_gas_4638"
  %"$consume_4644" = sub i64 %"$gasrem_4640", 1
  store i64 %"$consume_4644", i64* @_gasrem
  %m = alloca i8*
  %"$gasrem_4645" = load i64, i64* @_gasrem
  %"$gascmp_4646" = icmp ugt i64 1, %"$gasrem_4645"
  br i1 %"$gascmp_4646", label %"$out_of_gas_4647", label %"$have_gas_4648"

"$out_of_gas_4647":                               ; preds = %"$have_gas_4643"
  call void @_out_of_gas()
  br label %"$have_gas_4648"

"$have_gas_4648":                                 ; preds = %"$out_of_gas_4647", %"$have_gas_4643"
  %"$consume_4649" = sub i64 %"$gasrem_4645", 1
  store i64 %"$consume_4649", i64* @_gasrem
  %"$msgobj_4650_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_4650_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4650_salloc_load", i64 265)
  %"$msgobj_4650_salloc" = bitcast i8* %"$msgobj_4650_salloc_salloc" to [265 x i8]*
  %"$msgobj_4650" = bitcast [265 x i8]* %"$msgobj_4650_salloc" to i8*
  store i8 6, i8* %"$msgobj_4650"
  %"$msgobj_fname_4652" = getelementptr i8, i8* %"$msgobj_4650", i32 1
  %"$msgobj_fname_4653" = bitcast i8* %"$msgobj_fname_4652" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4651", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4653"
  %"$msgobj_td_4654" = getelementptr i8, i8* %"$msgobj_4650", i32 17
  %"$msgobj_td_4655" = bitcast i8* %"$msgobj_td_4654" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4655"
  %"$msgobj_v_4657" = getelementptr i8, i8* %"$msgobj_4650", i32 25
  %"$msgobj_v_4658" = bitcast i8* %"$msgobj_v_4657" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_4656", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_4658"
  %"$msgobj_fname_4660" = getelementptr i8, i8* %"$msgobj_4650", i32 41
  %"$msgobj_fname_4661" = bitcast i8* %"$msgobj_fname_4660" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_4659", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_4661"
  %"$msgobj_td_4662" = getelementptr i8, i8* %"$msgobj_4650", i32 57
  %"$msgobj_td_4663" = bitcast i8* %"$msgobj_td_4662" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_4663"
  %"$msgobj_v_4664" = getelementptr i8, i8* %"$msgobj_4650", i32 65
  %"$msgobj_v_4665" = bitcast i8* %"$msgobj_v_4664" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_4665"
  %"$msgobj_fname_4667" = getelementptr i8, i8* %"$msgobj_4650", i32 97
  %"$msgobj_fname_4668" = bitcast i8* %"$msgobj_fname_4667" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4666", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4668"
  %"$msgobj_td_4669" = getelementptr i8, i8* %"$msgobj_4650", i32 113
  %"$msgobj_td_4670" = bitcast i8* %"$msgobj_td_4669" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4670"
  %"$msgobj_v_4671" = getelementptr i8, i8* %"$msgobj_4650", i32 121
  %"$msgobj_v_4672" = bitcast i8* %"$msgobj_v_4671" to %String*
  store %String %label, %String* %"$msgobj_v_4672"
  %"$msgobj_fname_4674" = getelementptr i8, i8* %"$msgobj_4650", i32 137
  %"$msgobj_fname_4675" = bitcast i8* %"$msgobj_fname_4674" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4673", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4675"
  %"$msgobj_td_4676" = getelementptr i8, i8* %"$msgobj_4650", i32 153
  %"$msgobj_td_4677" = bitcast i8* %"$msgobj_td_4676" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4677"
  %"$msgobj_v_4678" = getelementptr i8, i8* %"$msgobj_4650", i32 161
  %"$msgobj_v_4679" = bitcast i8* %"$msgobj_v_4678" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4679"
  %"$msgobj_fname_4681" = getelementptr i8, i8* %"$msgobj_4650", i32 181
  %"$msgobj_fname_4682" = bitcast i8* %"$msgobj_fname_4681" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4680", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4682"
  %"$msgobj_td_4683" = getelementptr i8, i8* %"$msgobj_4650", i32 197
  %"$msgobj_td_4684" = bitcast i8* %"$msgobj_td_4683" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_4684"
  %"$msgobj_v_4685" = getelementptr i8, i8* %"$msgobj_4650", i32 205
  %"$msgobj_v_4686" = bitcast i8* %"$msgobj_v_4685" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4686"
  %"$msgobj_fname_4688" = getelementptr i8, i8* %"$msgobj_4650", i32 221
  %"$msgobj_fname_4689" = bitcast i8* %"$msgobj_fname_4688" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4687", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4689"
  %"$msgobj_td_4690" = getelementptr i8, i8* %"$msgobj_4650", i32 237
  %"$msgobj_td_4691" = bitcast i8* %"$msgobj_td_4690" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4691"
  %"$msgobj_v_4692" = getelementptr i8, i8* %"$msgobj_4650", i32 245
  %"$msgobj_v_4693" = bitcast i8* %"$msgobj_v_4692" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4693"
  store i8* %"$msgobj_4650", i8** %m
  %"$gasrem_4695" = load i64, i64* @_gasrem
  %"$gascmp_4696" = icmp ugt i64 1, %"$gasrem_4695"
  br i1 %"$gascmp_4696", label %"$out_of_gas_4697", label %"$have_gas_4698"

"$out_of_gas_4697":                               ; preds = %"$have_gas_4648"
  call void @_out_of_gas()
  br label %"$have_gas_4698"

"$have_gas_4698":                                 ; preds = %"$out_of_gas_4697", %"$have_gas_4648"
  %"$consume_4699" = sub i64 %"$gasrem_4695", 1
  store i64 %"$consume_4699", i64* @_gasrem
  %"$ud-registry.oneMsg_97" = alloca %TName_List_Message*
  %"$ud-registry.oneMsg_4700" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg
  %"$ud-registry.oneMsg_fptr_4701" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4700", 0
  %"$ud-registry.oneMsg_envptr_4702" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4700", 1
  %"$m_4703" = load i8*, i8** %m
  %"$ud-registry.oneMsg_call_4704" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4701"(i8* %"$ud-registry.oneMsg_envptr_4702", i8* %"$m_4703")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4704", %TName_List_Message** %"$ud-registry.oneMsg_97"
  %"$$ud-registry.oneMsg_97_4705" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_97"
  store %TName_List_Message* %"$$ud-registry.oneMsg_97_4705", %TName_List_Message** %msgs
  %"$msgs_4706" = load %TName_List_Message*, %TName_List_Message** %msgs
  %"$$msgs_4706_4707" = bitcast %TName_List_Message* %"$msgs_4706" to i8*
  %"$_literal_cost_call_4708" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_4706_4707")
  %"$gasrem_4709" = load i64, i64* @_gasrem
  %"$gascmp_4710" = icmp ugt i64 %"$_literal_cost_call_4708", %"$gasrem_4709"
  br i1 %"$gascmp_4710", label %"$out_of_gas_4711", label %"$have_gas_4712"

"$out_of_gas_4711":                               ; preds = %"$have_gas_4698"
  call void @_out_of_gas()
  br label %"$have_gas_4712"

"$have_gas_4712":                                 ; preds = %"$out_of_gas_4711", %"$have_gas_4698"
  %"$consume_4713" = sub i64 %"$gasrem_4709", %"$_literal_cost_call_4708"
  store i64 %"$consume_4713", i64* @_gasrem
  %"$execptr_load_4714" = load i8*, i8** @_execptr
  %"$msgs_4715" = load %TName_List_Message*, %TName_List_Message** %msgs
  call void @_send(i8* %"$execptr_load_4714", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_4715")
  br label %"$matchsucc_4468"

"$False_4716":                                    ; preds = %"$have_gas_4466"
  %"$isSenderOAO_4717" = bitcast %TName_Bool* %"$isSenderOAO_4469" to %CName_False*
  %"$gasrem_4718" = load i64, i64* @_gasrem
  %"$gascmp_4719" = icmp ugt i64 1, %"$gasrem_4718"
  br i1 %"$gascmp_4719", label %"$out_of_gas_4720", label %"$have_gas_4721"

"$out_of_gas_4720":                               ; preds = %"$False_4716"
  call void @_out_of_gas()
  br label %"$have_gas_4721"

"$have_gas_4721":                                 ; preds = %"$out_of_gas_4720", %"$False_4716"
  %"$consume_4722" = sub i64 %"$gasrem_4718", 1
  store i64 %"$consume_4722", i64* @_gasrem
  %e7 = alloca i8*
  %"$gasrem_4723" = load i64, i64* @_gasrem
  %"$gascmp_4724" = icmp ugt i64 1, %"$gasrem_4723"
  br i1 %"$gascmp_4724", label %"$out_of_gas_4725", label %"$have_gas_4726"

"$out_of_gas_4725":                               ; preds = %"$have_gas_4721"
  call void @_out_of_gas()
  br label %"$have_gas_4726"

"$have_gas_4726":                                 ; preds = %"$out_of_gas_4725", %"$have_gas_4721"
  %"$consume_4727" = sub i64 %"$gasrem_4723", 1
  store i64 %"$consume_4727", i64* @_gasrem
  %m8 = alloca %String
  %"$gasrem_4728" = load i64, i64* @_gasrem
  %"$gascmp_4729" = icmp ugt i64 1, %"$gasrem_4728"
  br i1 %"$gascmp_4729", label %"$out_of_gas_4730", label %"$have_gas_4731"

"$out_of_gas_4730":                               ; preds = %"$have_gas_4726"
  call void @_out_of_gas()
  br label %"$have_gas_4731"

"$have_gas_4731":                                 ; preds = %"$out_of_gas_4730", %"$have_gas_4726"
  %"$consume_4732" = sub i64 %"$gasrem_4728", 1
  store i64 %"$consume_4732", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"$stringlit_4733", i32 0, i32 0), i32 45 }, %String* %m8
  %"$gasrem_4734" = load i64, i64* @_gasrem
  %"$gascmp_4735" = icmp ugt i64 1, %"$gasrem_4734"
  br i1 %"$gascmp_4735", label %"$out_of_gas_4736", label %"$have_gas_4737"

"$out_of_gas_4736":                               ; preds = %"$have_gas_4731"
  call void @_out_of_gas()
  br label %"$have_gas_4737"

"$have_gas_4737":                                 ; preds = %"$out_of_gas_4736", %"$have_gas_4731"
  %"$consume_4738" = sub i64 %"$gasrem_4734", 1
  store i64 %"$consume_4738", i64* @_gasrem
  %"$ud-registry.eError_106" = alloca i8*
  %"$ud-registry.eError_4739" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError
  %"$ud-registry.eError_fptr_4740" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4739", 0
  %"$ud-registry.eError_envptr_4741" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4739", 1
  %"$m_4742" = load %String, %String* %m8
  %"$ud-registry.eError_call_4743" = call i8* %"$ud-registry.eError_fptr_4740"(i8* %"$ud-registry.eError_envptr_4741", %String %"$m_4742")
  store i8* %"$ud-registry.eError_call_4743", i8** %"$ud-registry.eError_106"
  %"$$ud-registry.eError_106_4744" = load i8*, i8** %"$ud-registry.eError_106"
  store i8* %"$$ud-registry.eError_106_4744", i8** %e7
  %"$e_4745" = load i8*, i8** %e7
  %"$_literal_cost_call_4747" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4745")
  %"$gasrem_4748" = load i64, i64* @_gasrem
  %"$gascmp_4749" = icmp ugt i64 %"$_literal_cost_call_4747", %"$gasrem_4748"
  br i1 %"$gascmp_4749", label %"$out_of_gas_4750", label %"$have_gas_4751"

"$out_of_gas_4750":                               ; preds = %"$have_gas_4737"
  call void @_out_of_gas()
  br label %"$have_gas_4751"

"$have_gas_4751":                                 ; preds = %"$out_of_gas_4750", %"$have_gas_4737"
  %"$consume_4752" = sub i64 %"$gasrem_4748", %"$_literal_cost_call_4747"
  store i64 %"$consume_4752", i64* @_gasrem
  %"$execptr_load_4753" = load i8*, i8** @_execptr
  %"$e_4754" = load i8*, i8** %e7
  call void @_event(i8* %"$execptr_load_4753", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4754")
  %"$gasrem_4755" = load i64, i64* @_gasrem
  %"$gascmp_4756" = icmp ugt i64 1, %"$gasrem_4755"
  br i1 %"$gascmp_4756", label %"$out_of_gas_4757", label %"$have_gas_4758"

"$out_of_gas_4757":                               ; preds = %"$have_gas_4751"
  call void @_out_of_gas()
  br label %"$have_gas_4758"

"$have_gas_4758":                                 ; preds = %"$out_of_gas_4757", %"$have_gas_4751"
  %"$consume_4759" = sub i64 %"$gasrem_4755", 1
  store i64 %"$consume_4759", i64* @_gasrem
  %msgs9 = alloca %TName_List_Message*
  %"$gasrem_4760" = load i64, i64* @_gasrem
  %"$gascmp_4761" = icmp ugt i64 1, %"$gasrem_4760"
  br i1 %"$gascmp_4761", label %"$out_of_gas_4762", label %"$have_gas_4763"

"$out_of_gas_4762":                               ; preds = %"$have_gas_4758"
  call void @_out_of_gas()
  br label %"$have_gas_4763"

"$have_gas_4763":                                 ; preds = %"$out_of_gas_4762", %"$have_gas_4758"
  %"$consume_4764" = sub i64 %"$gasrem_4760", 1
  store i64 %"$consume_4764", i64* @_gasrem
  %m10 = alloca i8*
  %"$gasrem_4765" = load i64, i64* @_gasrem
  %"$gascmp_4766" = icmp ugt i64 1, %"$gasrem_4765"
  br i1 %"$gascmp_4766", label %"$out_of_gas_4767", label %"$have_gas_4768"

"$out_of_gas_4767":                               ; preds = %"$have_gas_4763"
  call void @_out_of_gas()
  br label %"$have_gas_4768"

"$have_gas_4768":                                 ; preds = %"$out_of_gas_4767", %"$have_gas_4763"
  %"$consume_4769" = sub i64 %"$gasrem_4765", 1
  store i64 %"$consume_4769", i64* @_gasrem
  %"$msgobj_4770_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_4770_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4770_salloc_load", i64 265)
  %"$msgobj_4770_salloc" = bitcast i8* %"$msgobj_4770_salloc_salloc" to [265 x i8]*
  %"$msgobj_4770" = bitcast [265 x i8]* %"$msgobj_4770_salloc" to i8*
  store i8 6, i8* %"$msgobj_4770"
  %"$msgobj_fname_4772" = getelementptr i8, i8* %"$msgobj_4770", i32 1
  %"$msgobj_fname_4773" = bitcast i8* %"$msgobj_fname_4772" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4771", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4773"
  %"$msgobj_td_4774" = getelementptr i8, i8* %"$msgobj_4770", i32 17
  %"$msgobj_td_4775" = bitcast i8* %"$msgobj_td_4774" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4775"
  %"$msgobj_v_4777" = getelementptr i8, i8* %"$msgobj_4770", i32 25
  %"$msgobj_v_4778" = bitcast i8* %"$msgobj_v_4777" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_4776", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_4778"
  %"$msgobj_fname_4780" = getelementptr i8, i8* %"$msgobj_4770", i32 41
  %"$msgobj_fname_4781" = bitcast i8* %"$msgobj_fname_4780" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_4779", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_4781"
  %"$msgobj_td_4782" = getelementptr i8, i8* %"$msgobj_4770", i32 57
  %"$msgobj_td_4783" = bitcast i8* %"$msgobj_td_4782" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_4783"
  %"$msgobj_v_4784" = getelementptr i8, i8* %"$msgobj_4770", i32 65
  %"$msgobj_v_4785" = bitcast i8* %"$msgobj_v_4784" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_4785"
  %"$msgobj_fname_4787" = getelementptr i8, i8* %"$msgobj_4770", i32 97
  %"$msgobj_fname_4788" = bitcast i8* %"$msgobj_fname_4787" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4786", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4788"
  %"$msgobj_td_4789" = getelementptr i8, i8* %"$msgobj_4770", i32 113
  %"$msgobj_td_4790" = bitcast i8* %"$msgobj_td_4789" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4790"
  %"$msgobj_v_4791" = getelementptr i8, i8* %"$msgobj_4770", i32 121
  %"$msgobj_v_4792" = bitcast i8* %"$msgobj_v_4791" to %String*
  store %String %label, %String* %"$msgobj_v_4792"
  %"$msgobj_fname_4794" = getelementptr i8, i8* %"$msgobj_4770", i32 137
  %"$msgobj_fname_4795" = bitcast i8* %"$msgobj_fname_4794" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4793", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4795"
  %"$msgobj_td_4796" = getelementptr i8, i8* %"$msgobj_4770", i32 153
  %"$msgobj_td_4797" = bitcast i8* %"$msgobj_td_4796" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4797"
  %"$recordOwner_4798" = load [20 x i8], [20 x i8]* %recordOwner
  %"$msgobj_v_4799" = getelementptr i8, i8* %"$msgobj_4770", i32 161
  %"$msgobj_v_4800" = bitcast i8* %"$msgobj_v_4799" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4798", [20 x i8]* %"$msgobj_v_4800"
  %"$msgobj_fname_4802" = getelementptr i8, i8* %"$msgobj_4770", i32 181
  %"$msgobj_fname_4803" = bitcast i8* %"$msgobj_fname_4802" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4801", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4803"
  %"$msgobj_td_4804" = getelementptr i8, i8* %"$msgobj_4770", i32 197
  %"$msgobj_td_4805" = bitcast i8* %"$msgobj_td_4804" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_4805"
  %"$msgobj_v_4806" = getelementptr i8, i8* %"$msgobj_4770", i32 205
  %"$msgobj_v_4807" = bitcast i8* %"$msgobj_v_4806" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4807"
  %"$msgobj_fname_4809" = getelementptr i8, i8* %"$msgobj_4770", i32 221
  %"$msgobj_fname_4810" = bitcast i8* %"$msgobj_fname_4809" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4808", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4810"
  %"$msgobj_td_4811" = getelementptr i8, i8* %"$msgobj_4770", i32 237
  %"$msgobj_td_4812" = bitcast i8* %"$msgobj_td_4811" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4812"
  %"$msgobj_v_4813" = getelementptr i8, i8* %"$msgobj_4770", i32 245
  %"$msgobj_v_4814" = bitcast i8* %"$msgobj_v_4813" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4814"
  store i8* %"$msgobj_4770", i8** %m10
  %"$gasrem_4816" = load i64, i64* @_gasrem
  %"$gascmp_4817" = icmp ugt i64 1, %"$gasrem_4816"
  br i1 %"$gascmp_4817", label %"$out_of_gas_4818", label %"$have_gas_4819"

"$out_of_gas_4818":                               ; preds = %"$have_gas_4768"
  call void @_out_of_gas()
  br label %"$have_gas_4819"

"$have_gas_4819":                                 ; preds = %"$out_of_gas_4818", %"$have_gas_4768"
  %"$consume_4820" = sub i64 %"$gasrem_4816", 1
  store i64 %"$consume_4820", i64* @_gasrem
  %"$ud-registry.oneMsg_105" = alloca %TName_List_Message*
  %"$ud-registry.oneMsg_4821" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg
  %"$ud-registry.oneMsg_fptr_4822" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4821", 0
  %"$ud-registry.oneMsg_envptr_4823" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4821", 1
  %"$m_4824" = load i8*, i8** %m10
  %"$ud-registry.oneMsg_call_4825" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4822"(i8* %"$ud-registry.oneMsg_envptr_4823", i8* %"$m_4824")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4825", %TName_List_Message** %"$ud-registry.oneMsg_105"
  %"$$ud-registry.oneMsg_105_4826" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_105"
  store %TName_List_Message* %"$$ud-registry.oneMsg_105_4826", %TName_List_Message** %msgs9
  %"$msgs_4827" = load %TName_List_Message*, %TName_List_Message** %msgs9
  %"$$msgs_4827_4828" = bitcast %TName_List_Message* %"$msgs_4827" to i8*
  %"$_literal_cost_call_4829" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_4827_4828")
  %"$gasrem_4830" = load i64, i64* @_gasrem
  %"$gascmp_4831" = icmp ugt i64 %"$_literal_cost_call_4829", %"$gasrem_4830"
  br i1 %"$gascmp_4831", label %"$out_of_gas_4832", label %"$have_gas_4833"

"$out_of_gas_4832":                               ; preds = %"$have_gas_4819"
  call void @_out_of_gas()
  br label %"$have_gas_4833"

"$have_gas_4833":                                 ; preds = %"$out_of_gas_4832", %"$have_gas_4819"
  %"$consume_4834" = sub i64 %"$gasrem_4830", %"$_literal_cost_call_4829"
  store i64 %"$consume_4834", i64* @_gasrem
  %"$execptr_load_4835" = load i8*, i8** @_execptr
  %"$msgs_4836" = load %TName_List_Message*, %TName_List_Message** %msgs9
  call void @_send(i8* %"$execptr_load_4835", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_4836")
  br label %"$matchsucc_4468"

"$empty_default_4472":                            ; preds = %"$have_gas_4466"
  br label %"$matchsucc_4468"

"$matchsucc_4468":                                ; preds = %"$have_gas_4833", %"$have_gas_4712", %"$empty_default_4472"
  ret void
}

define void @assign(i8* %0) {
entry:
  %"$_amount_4838" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4839" = bitcast i8* %"$_amount_4838" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4839"
  %"$_sender_4840" = getelementptr i8, i8* %0, i32 16
  %"$_sender_4841" = bitcast i8* %"$_sender_4840" to [20 x i8]*
  %"$parent_4842" = getelementptr i8, i8* %0, i32 36
  %"$parent_4843" = bitcast i8* %"$parent_4842" to [32 x i8]*
  %"$label_4844" = getelementptr i8, i8* %0, i32 68
  %"$label_4845" = bitcast i8* %"$label_4844" to %String*
  %label = load %String, %String* %"$label_4845"
  %"$owner_4846" = getelementptr i8, i8* %0, i32 84
  %"$owner_4847" = bitcast i8* %"$owner_4846" to [20 x i8]*
  call void @"$assign_4361"(%Uint128 %_amount, [20 x i8]* %"$_sender_4841", [32 x i8]* %"$parent_4843", %String %label, [20 x i8]* %"$owner_4847")
  ret void
}

define internal void @"$bestow_4848"(%Uint128 %_amount, [20 x i8]* %"$_sender_4849", %String %label, [20 x i8]* %"$owner_4850", [20 x i8]* %"$resolver_4851") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4849"
  %owner = load [20 x i8], [20 x i8]* %"$owner_4850"
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_4851"
  %currentAdmins = alloca %TName_List_ByStr20*
  %"$execptr_load_4852" = load i8*, i8** @_execptr
  %"$currentAdmins_4854" = call i8* @_fetch_field(i8* %"$execptr_load_4852", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_4853", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i32 1)
  %"$currentAdmins_4855" = bitcast i8* %"$currentAdmins_4854" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_4855", %TName_List_ByStr20** %currentAdmins
  %"$currentAdmins_4856" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins
  %"$$currentAdmins_4856_4857" = bitcast %TName_List_ByStr20* %"$currentAdmins_4856" to i8*
  %"$_literal_cost_call_4858" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$currentAdmins_4856_4857")
  %"$gasadd_4859" = add i64 %"$_literal_cost_call_4858", 0
  %"$gasrem_4860" = load i64, i64* @_gasrem
  %"$gascmp_4861" = icmp ugt i64 %"$gasadd_4859", %"$gasrem_4860"
  br i1 %"$gascmp_4861", label %"$out_of_gas_4862", label %"$have_gas_4863"

"$out_of_gas_4862":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4863"

"$have_gas_4863":                                 ; preds = %"$out_of_gas_4862", %entry
  %"$consume_4864" = sub i64 %"$gasrem_4860", %"$gasadd_4859"
  store i64 %"$consume_4864", i64* @_gasrem
  %"$gasrem_4865" = load i64, i64* @_gasrem
  %"$gascmp_4866" = icmp ugt i64 1, %"$gasrem_4865"
  br i1 %"$gascmp_4866", label %"$out_of_gas_4867", label %"$have_gas_4868"

"$out_of_gas_4867":                               ; preds = %"$have_gas_4863"
  call void @_out_of_gas()
  br label %"$have_gas_4868"

"$have_gas_4868":                                 ; preds = %"$out_of_gas_4867", %"$have_gas_4863"
  %"$consume_4869" = sub i64 %"$gasrem_4865", 1
  store i64 %"$consume_4869", i64* @_gasrem
  %node = alloca [32 x i8]
  %"$gasrem_4870" = load i64, i64* @_gasrem
  %"$gascmp_4871" = icmp ugt i64 1, %"$gasrem_4870"
  br i1 %"$gascmp_4871", label %"$out_of_gas_4872", label %"$have_gas_4873"

"$out_of_gas_4872":                               ; preds = %"$have_gas_4868"
  call void @_out_of_gas()
  br label %"$have_gas_4873"

"$have_gas_4873":                                 ; preds = %"$out_of_gas_4872", %"$have_gas_4868"
  %"$consume_4874" = sub i64 %"$gasrem_4870", 1
  store i64 %"$consume_4874", i64* @_gasrem
  %"$ud-registry.parentLabelToNode_129" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }
  %"$ud-registry.parentLabelToNode_4875" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode
  %"$ud-registry.parentLabelToNode_fptr_4876" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4875", 0
  %"$ud-registry.parentLabelToNode_envptr_4877" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4875", 1
  %"$ud-registry.parentLabelToNode_rootNode_4878" = alloca [32 x i8]
  %"$rootNode_4879" = load [32 x i8], [32 x i8]* @rootNode
  store [32 x i8] %"$rootNode_4879", [32 x i8]* %"$ud-registry.parentLabelToNode_rootNode_4878"
  %"$ud-registry.parentLabelToNode_call_4880" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_4876"(i8* %"$ud-registry.parentLabelToNode_envptr_4877", [32 x i8]* %"$ud-registry.parentLabelToNode_rootNode_4878")
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_4880", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_129"
  %"$ud-registry.parentLabelToNode_130" = alloca [32 x i8]
  %"$$ud-registry.parentLabelToNode_129_4881" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_129"
  %"$$ud-registry.parentLabelToNode_129_fptr_4882" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_129_4881", 0
  %"$$ud-registry.parentLabelToNode_129_envptr_4883" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_129_4881", 1
  %"$$ud-registry.parentLabelToNode_129_retalloca_4884" = alloca [32 x i8]
  call void %"$$ud-registry.parentLabelToNode_129_fptr_4882"(i8* %"$$ud-registry.parentLabelToNode_129_envptr_4883", [32 x i8]* %"$$ud-registry.parentLabelToNode_129_retalloca_4884", %String %label)
  %"$$ud-registry.parentLabelToNode_129_ret_4885" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_129_retalloca_4884"
  store [32 x i8] %"$$ud-registry.parentLabelToNode_129_ret_4885", [32 x i8]* %"$ud-registry.parentLabelToNode_130"
  %"$$ud-registry.parentLabelToNode_130_4886" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_130"
  store [32 x i8] %"$$ud-registry.parentLabelToNode_130_4886", [32 x i8]* %node
  %recordExists = alloca %TName_Bool*
  %"$indices_buf_4887_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_4887_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4887_salloc_load", i64 32)
  %"$indices_buf_4887_salloc" = bitcast i8* %"$indices_buf_4887_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4887" = bitcast [32 x i8]* %"$indices_buf_4887_salloc" to i8*
  %"$node_4888" = load [32 x i8], [32 x i8]* %node
  %"$indices_gep_4889" = getelementptr i8, i8* %"$indices_buf_4887", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4889" to [32 x i8]*
  store [32 x i8] %"$node_4888", [32 x i8]* %indices_cast
  %"$execptr_load_4890" = load i8*, i8** @_execptr
  %"$recordExists_4892" = call i8* @_fetch_field(i8* %"$execptr_load_4890", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4891", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4887", i32 0)
  %"$recordExists_4893" = bitcast i8* %"$recordExists_4892" to %TName_Bool*
  store %TName_Bool* %"$recordExists_4893", %TName_Bool** %recordExists
  %"$recordExists_4894" = load %TName_Bool*, %TName_Bool** %recordExists
  %"$$recordExists_4894_4895" = bitcast %TName_Bool* %"$recordExists_4894" to i8*
  %"$_literal_cost_call_4896" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", i8* %"$$recordExists_4894_4895")
  %"$gasadd_4897" = add i64 %"$_literal_cost_call_4896", 0
  %"$gasadd_4898" = add i64 %"$gasadd_4897", 1
  %"$gasrem_4899" = load i64, i64* @_gasrem
  %"$gascmp_4900" = icmp ugt i64 %"$gasadd_4898", %"$gasrem_4899"
  br i1 %"$gascmp_4900", label %"$out_of_gas_4901", label %"$have_gas_4902"

"$out_of_gas_4901":                               ; preds = %"$have_gas_4873"
  call void @_out_of_gas()
  br label %"$have_gas_4902"

"$have_gas_4902":                                 ; preds = %"$out_of_gas_4901", %"$have_gas_4873"
  %"$consume_4903" = sub i64 %"$gasrem_4899", %"$gasadd_4898"
  store i64 %"$consume_4903", i64* @_gasrem
  %maybeRecord = alloca %TName_Option_ud-registry.Record*
  %"$indices_buf_4904_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_4904_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4904_salloc_load", i64 32)
  %"$indices_buf_4904_salloc" = bitcast i8* %"$indices_buf_4904_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4904" = bitcast [32 x i8]* %"$indices_buf_4904_salloc" to i8*
  %"$node_4905" = load [32 x i8], [32 x i8]* %node
  %"$indices_gep_4906" = getelementptr i8, i8* %"$indices_buf_4904", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4906" to [32 x i8]*
  store [32 x i8] %"$node_4905", [32 x i8]* %indices_cast1
  %"$execptr_load_4907" = load i8*, i8** @_execptr
  %"$maybeRecord_4909" = call i8* @_fetch_field(i8* %"$execptr_load_4907", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4908", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4904", i32 1)
  %"$maybeRecord_4910" = bitcast i8* %"$maybeRecord_4909" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4910", %TName_Option_ud-registry.Record** %maybeRecord
  %"$maybeRecord_4911" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord
  %"$$maybeRecord_4911_4912" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4911" to i8*
  %"$_literal_cost_call_4913" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_4911_4912")
  %"$gasadd_4914" = add i64 %"$_literal_cost_call_4913", 0
  %"$gasadd_4915" = add i64 %"$gasadd_4914", 1
  %"$gasrem_4916" = load i64, i64* @_gasrem
  %"$gascmp_4917" = icmp ugt i64 %"$gasadd_4915", %"$gasrem_4916"
  br i1 %"$gascmp_4917", label %"$out_of_gas_4918", label %"$have_gas_4919"

"$out_of_gas_4918":                               ; preds = %"$have_gas_4902"
  call void @_out_of_gas()
  br label %"$have_gas_4919"

"$have_gas_4919":                                 ; preds = %"$out_of_gas_4918", %"$have_gas_4902"
  %"$consume_4920" = sub i64 %"$gasrem_4916", %"$gasadd_4915"
  store i64 %"$consume_4920", i64* @_gasrem
  %currentRegistrar = alloca [20 x i8]
  %"$execptr_load_4921" = load i8*, i8** @_execptr
  %"$currentRegistrar_4923" = call i8* @_fetch_field(i8* %"$execptr_load_4921", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_4922", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i32 0, i8* null, i32 1)
  %"$currentRegistrar_4924" = bitcast i8* %"$currentRegistrar_4923" to [20 x i8]*
  %"$currentRegistrar_4925" = load [20 x i8], [20 x i8]* %"$currentRegistrar_4924"
  store [20 x i8] %"$currentRegistrar_4925", [20 x i8]* %currentRegistrar
  %"$_literal_cost_currentRegistrar_4926" = alloca [20 x i8]
  %"$currentRegistrar_4927" = load [20 x i8], [20 x i8]* %currentRegistrar
  store [20 x i8] %"$currentRegistrar_4927", [20 x i8]* %"$_literal_cost_currentRegistrar_4926"
  %"$$_literal_cost_currentRegistrar_4926_4928" = bitcast [20 x i8]* %"$_literal_cost_currentRegistrar_4926" to i8*
  %"$_literal_cost_call_4929" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i8* %"$$_literal_cost_currentRegistrar_4926_4928")
  %"$gasadd_4930" = add i64 %"$_literal_cost_call_4929", 0
  %"$gasrem_4931" = load i64, i64* @_gasrem
  %"$gascmp_4932" = icmp ugt i64 %"$gasadd_4930", %"$gasrem_4931"
  br i1 %"$gascmp_4932", label %"$out_of_gas_4933", label %"$have_gas_4934"

"$out_of_gas_4933":                               ; preds = %"$have_gas_4919"
  call void @_out_of_gas()
  br label %"$have_gas_4934"

"$have_gas_4934":                                 ; preds = %"$out_of_gas_4933", %"$have_gas_4919"
  %"$consume_4935" = sub i64 %"$gasrem_4931", %"$gasadd_4930"
  store i64 %"$consume_4935", i64* @_gasrem
  %"$gasrem_4936" = load i64, i64* @_gasrem
  %"$gascmp_4937" = icmp ugt i64 1, %"$gasrem_4936"
  br i1 %"$gascmp_4937", label %"$out_of_gas_4938", label %"$have_gas_4939"

"$out_of_gas_4938":                               ; preds = %"$have_gas_4934"
  call void @_out_of_gas()
  br label %"$have_gas_4939"

"$have_gas_4939":                                 ; preds = %"$out_of_gas_4938", %"$have_gas_4934"
  %"$consume_4940" = sub i64 %"$gasrem_4936", 1
  store i64 %"$consume_4940", i64* @_gasrem
  %isOk = alloca %TName_Bool*
  %"$gasrem_4941" = load i64, i64* @_gasrem
  %"$gascmp_4942" = icmp ugt i64 1, %"$gasrem_4941"
  br i1 %"$gascmp_4942", label %"$out_of_gas_4943", label %"$have_gas_4944"

"$out_of_gas_4943":                               ; preds = %"$have_gas_4939"
  call void @_out_of_gas()
  br label %"$have_gas_4944"

"$have_gas_4944":                                 ; preds = %"$out_of_gas_4943", %"$have_gas_4939"
  %"$consume_4945" = sub i64 %"$gasrem_4941", 1
  store i64 %"$consume_4945", i64* @_gasrem
  %isSenderAdmin = alloca %TName_Bool*
  %"$gasrem_4946" = load i64, i64* @_gasrem
  %"$gascmp_4947" = icmp ugt i64 1, %"$gasrem_4946"
  br i1 %"$gascmp_4947", label %"$out_of_gas_4948", label %"$have_gas_4949"

"$out_of_gas_4948":                               ; preds = %"$have_gas_4944"
  call void @_out_of_gas()
  br label %"$have_gas_4949"

"$have_gas_4949":                                 ; preds = %"$out_of_gas_4948", %"$have_gas_4944"
  %"$consume_4950" = sub i64 %"$gasrem_4946", 1
  store i64 %"$consume_4950", i64* @_gasrem
  %"$ud-registry.listByStr20Contains_118" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.listByStr20Contains_4951" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains
  %"$ud-registry.listByStr20Contains_fptr_4952" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_4951", 0
  %"$ud-registry.listByStr20Contains_envptr_4953" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_4951", 1
  %"$currentAdmins_4954" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins
  %"$ud-registry.listByStr20Contains_call_4955" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_4952"(i8* %"$ud-registry.listByStr20Contains_envptr_4953", %TName_List_ByStr20* %"$currentAdmins_4954")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_4955", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_118"
  %"$ud-registry.listByStr20Contains_119" = alloca %TName_Bool*
  %"$$ud-registry.listByStr20Contains_118_4956" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_118"
  %"$$ud-registry.listByStr20Contains_118_fptr_4957" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_118_4956", 0
  %"$$ud-registry.listByStr20Contains_118_envptr_4958" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_118_4956", 1
  %"$$ud-registry.listByStr20Contains_118__sender_4959" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_118__sender_4959"
  %"$$ud-registry.listByStr20Contains_118_call_4960" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_118_fptr_4957"(i8* %"$$ud-registry.listByStr20Contains_118_envptr_4958", [20 x i8]* %"$$ud-registry.listByStr20Contains_118__sender_4959")
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_118_call_4960", %TName_Bool** %"$ud-registry.listByStr20Contains_119"
  %"$$ud-registry.listByStr20Contains_119_4961" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_119"
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_119_4961", %TName_Bool** %isSenderAdmin
  %"$gasrem_4962" = load i64, i64* @_gasrem
  %"$gascmp_4963" = icmp ugt i64 1, %"$gasrem_4962"
  br i1 %"$gascmp_4963", label %"$out_of_gas_4964", label %"$have_gas_4965"

"$out_of_gas_4964":                               ; preds = %"$have_gas_4949"
  call void @_out_of_gas()
  br label %"$have_gas_4965"

"$have_gas_4965":                                 ; preds = %"$out_of_gas_4964", %"$have_gas_4949"
  %"$consume_4966" = sub i64 %"$gasrem_4962", 1
  store i64 %"$consume_4966", i64* @_gasrem
  %isSenderRegistrar = alloca %TName_Bool*
  %"$execptr_load_4967" = load i8*, i8** @_execptr
  %"$eq_currentRegistrar_4968" = alloca [20 x i8]
  %"$currentRegistrar_4969" = load [20 x i8], [20 x i8]* %currentRegistrar
  store [20 x i8] %"$currentRegistrar_4969", [20 x i8]* %"$eq_currentRegistrar_4968"
  %"$$eq_currentRegistrar_4968_4970" = bitcast [20 x i8]* %"$eq_currentRegistrar_4968" to i8*
  %"$eq__sender_4971" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_4971"
  %"$$eq__sender_4971_4972" = bitcast [20 x i8]* %"$eq__sender_4971" to i8*
  %"$eq_call_4973" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_4967", i32 20, i8* %"$$eq_currentRegistrar_4968_4970", i8* %"$$eq__sender_4971_4972")
  store %TName_Bool* %"$eq_call_4973", %TName_Bool** %isSenderRegistrar
  %"$gasrem_4974" = load i64, i64* @_gasrem
  %"$gascmp_4975" = icmp ugt i64 1, %"$gasrem_4974"
  br i1 %"$gascmp_4975", label %"$out_of_gas_4976", label %"$have_gas_4977"

"$out_of_gas_4976":                               ; preds = %"$have_gas_4965"
  call void @_out_of_gas()
  br label %"$have_gas_4977"

"$have_gas_4977":                                 ; preds = %"$out_of_gas_4976", %"$have_gas_4965"
  %"$consume_4978" = sub i64 %"$gasrem_4974", 1
  store i64 %"$consume_4978", i64* @_gasrem
  %isOkSender = alloca %TName_Bool*
  %"$gasrem_4979" = load i64, i64* @_gasrem
  %"$gascmp_4980" = icmp ugt i64 1, %"$gasrem_4979"
  br i1 %"$gascmp_4980", label %"$out_of_gas_4981", label %"$have_gas_4982"

"$out_of_gas_4981":                               ; preds = %"$have_gas_4977"
  call void @_out_of_gas()
  br label %"$have_gas_4982"

"$have_gas_4982":                                 ; preds = %"$out_of_gas_4981", %"$have_gas_4977"
  %"$consume_4983" = sub i64 %"$gasrem_4979", 1
  store i64 %"$consume_4983", i64* @_gasrem
  %"$BoolUtils.orb_120" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.orb_4984" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb
  %"$BoolUtils.orb_fptr_4985" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_4984", 0
  %"$BoolUtils.orb_envptr_4986" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_4984", 1
  %"$isSenderRegistrar_4987" = load %TName_Bool*, %TName_Bool** %isSenderRegistrar
  %"$BoolUtils.orb_call_4988" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_4985"(i8* %"$BoolUtils.orb_envptr_4986", %TName_Bool* %"$isSenderRegistrar_4987")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_4988", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_120"
  %"$BoolUtils.orb_121" = alloca %TName_Bool*
  %"$$BoolUtils.orb_120_4989" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_120"
  %"$$BoolUtils.orb_120_fptr_4990" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_120_4989", 0
  %"$$BoolUtils.orb_120_envptr_4991" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_120_4989", 1
  %"$isSenderAdmin_4992" = load %TName_Bool*, %TName_Bool** %isSenderAdmin
  %"$$BoolUtils.orb_120_call_4993" = call %TName_Bool* %"$$BoolUtils.orb_120_fptr_4990"(i8* %"$$BoolUtils.orb_120_envptr_4991", %TName_Bool* %"$isSenderAdmin_4992")
  store %TName_Bool* %"$$BoolUtils.orb_120_call_4993", %TName_Bool** %"$BoolUtils.orb_121"
  %"$$BoolUtils.orb_121_4994" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_121"
  store %TName_Bool* %"$$BoolUtils.orb_121_4994", %TName_Bool** %isOkSender
  %"$gasrem_4995" = load i64, i64* @_gasrem
  %"$gascmp_4996" = icmp ugt i64 1, %"$gasrem_4995"
  br i1 %"$gascmp_4996", label %"$out_of_gas_4997", label %"$have_gas_4998"

"$out_of_gas_4997":                               ; preds = %"$have_gas_4982"
  call void @_out_of_gas()
  br label %"$have_gas_4998"

"$have_gas_4998":                                 ; preds = %"$out_of_gas_4997", %"$have_gas_4982"
  %"$consume_4999" = sub i64 %"$gasrem_4995", 1
  store i64 %"$consume_4999", i64* @_gasrem
  %recordOwner = alloca [20 x i8]
  %"$gasrem_5000" = load i64, i64* @_gasrem
  %"$gascmp_5001" = icmp ugt i64 1, %"$gasrem_5000"
  br i1 %"$gascmp_5001", label %"$out_of_gas_5002", label %"$have_gas_5003"

"$out_of_gas_5002":                               ; preds = %"$have_gas_4998"
  call void @_out_of_gas()
  br label %"$have_gas_5003"

"$have_gas_5003":                                 ; preds = %"$out_of_gas_5002", %"$have_gas_4998"
  %"$consume_5004" = sub i64 %"$gasrem_5000", 1
  store i64 %"$consume_5004", i64* @_gasrem
  %"$ud-registry.recordMemberOwner_122" = alloca [20 x i8]
  %"$ud-registry.recordMemberOwner_5005" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner
  %"$ud-registry.recordMemberOwner_fptr_5006" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5005", 0
  %"$ud-registry.recordMemberOwner_envptr_5007" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5005", 1
  %"$maybeRecord_5008" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord
  %"$ud-registry.recordMemberOwner_retalloca_5009" = alloca [20 x i8]
  call void %"$ud-registry.recordMemberOwner_fptr_5006"(i8* %"$ud-registry.recordMemberOwner_envptr_5007", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5009", %TName_Option_ud-registry.Record* %"$maybeRecord_5008")
  %"$ud-registry.recordMemberOwner_ret_5010" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5009"
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_5010", [20 x i8]* %"$ud-registry.recordMemberOwner_122"
  %"$$ud-registry.recordMemberOwner_122_5011" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_122"
  store [20 x i8] %"$$ud-registry.recordMemberOwner_122_5011", [20 x i8]* %recordOwner
  %"$gasrem_5012" = load i64, i64* @_gasrem
  %"$gascmp_5013" = icmp ugt i64 1, %"$gasrem_5012"
  br i1 %"$gascmp_5013", label %"$out_of_gas_5014", label %"$have_gas_5015"

"$out_of_gas_5014":                               ; preds = %"$have_gas_5003"
  call void @_out_of_gas()
  br label %"$have_gas_5015"

"$have_gas_5015":                                 ; preds = %"$out_of_gas_5014", %"$have_gas_5003"
  %"$consume_5016" = sub i64 %"$gasrem_5012", 1
  store i64 %"$consume_5016", i64* @_gasrem
  %recordIsUnowned = alloca %TName_Bool*
  %"$execptr_load_5017" = load i8*, i8** @_execptr
  %"$eq_recordOwner_5018" = alloca [20 x i8]
  %"$recordOwner_5019" = load [20 x i8], [20 x i8]* %recordOwner
  store [20 x i8] %"$recordOwner_5019", [20 x i8]* %"$eq_recordOwner_5018"
  %"$$eq_recordOwner_5018_5020" = bitcast [20 x i8]* %"$eq_recordOwner_5018" to i8*
  %"$eq_ud-registry.zeroByStr20_5021" = alloca [20 x i8]
  %"$ud-registry.zeroByStr20_5022" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20
  store [20 x i8] %"$ud-registry.zeroByStr20_5022", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5021"
  %"$$eq_ud-registry.zeroByStr20_5021_5023" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5021" to i8*
  %"$eq_call_5024" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5017", i32 20, i8* %"$$eq_recordOwner_5018_5020", i8* %"$$eq_ud-registry.zeroByStr20_5021_5023")
  store %TName_Bool* %"$eq_call_5024", %TName_Bool** %recordIsUnowned
  %"$gasrem_5025" = load i64, i64* @_gasrem
  %"$gascmp_5026" = icmp ugt i64 1, %"$gasrem_5025"
  br i1 %"$gascmp_5026", label %"$out_of_gas_5027", label %"$have_gas_5028"

"$out_of_gas_5027":                               ; preds = %"$have_gas_5015"
  call void @_out_of_gas()
  br label %"$have_gas_5028"

"$have_gas_5028":                                 ; preds = %"$out_of_gas_5027", %"$have_gas_5015"
  %"$consume_5029" = sub i64 %"$gasrem_5025", 1
  store i64 %"$consume_5029", i64* @_gasrem
  %recordIsOwnedByRegistrar = alloca %TName_Bool*
  %"$execptr_load_5030" = load i8*, i8** @_execptr
  %"$eq_recordOwner_5031" = alloca [20 x i8]
  %"$recordOwner_5032" = load [20 x i8], [20 x i8]* %recordOwner
  store [20 x i8] %"$recordOwner_5032", [20 x i8]* %"$eq_recordOwner_5031"
  %"$$eq_recordOwner_5031_5033" = bitcast [20 x i8]* %"$eq_recordOwner_5031" to i8*
  %"$eq_currentRegistrar_5034" = alloca [20 x i8]
  %"$currentRegistrar_5035" = load [20 x i8], [20 x i8]* %currentRegistrar
  store [20 x i8] %"$currentRegistrar_5035", [20 x i8]* %"$eq_currentRegistrar_5034"
  %"$$eq_currentRegistrar_5034_5036" = bitcast [20 x i8]* %"$eq_currentRegistrar_5034" to i8*
  %"$eq_call_5037" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5030", i32 20, i8* %"$$eq_recordOwner_5031_5033", i8* %"$$eq_currentRegistrar_5034_5036")
  store %TName_Bool* %"$eq_call_5037", %TName_Bool** %recordIsOwnedByRegistrar
  %"$gasrem_5038" = load i64, i64* @_gasrem
  %"$gascmp_5039" = icmp ugt i64 1, %"$gasrem_5038"
  br i1 %"$gascmp_5039", label %"$out_of_gas_5040", label %"$have_gas_5041"

"$out_of_gas_5040":                               ; preds = %"$have_gas_5028"
  call void @_out_of_gas()
  br label %"$have_gas_5041"

"$have_gas_5041":                                 ; preds = %"$out_of_gas_5040", %"$have_gas_5028"
  %"$consume_5042" = sub i64 %"$gasrem_5038", 1
  store i64 %"$consume_5042", i64* @_gasrem
  %isRegistrarSenderAndOwned = alloca %TName_Bool*
  %"$gasrem_5043" = load i64, i64* @_gasrem
  %"$gascmp_5044" = icmp ugt i64 1, %"$gasrem_5043"
  br i1 %"$gascmp_5044", label %"$out_of_gas_5045", label %"$have_gas_5046"

"$out_of_gas_5045":                               ; preds = %"$have_gas_5041"
  call void @_out_of_gas()
  br label %"$have_gas_5046"

"$have_gas_5046":                                 ; preds = %"$out_of_gas_5045", %"$have_gas_5041"
  %"$consume_5047" = sub i64 %"$gasrem_5043", 1
  store i64 %"$consume_5047", i64* @_gasrem
  %"$BoolUtils.andb_123" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.andb_5048" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb
  %"$BoolUtils.andb_fptr_5049" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5048", 0
  %"$BoolUtils.andb_envptr_5050" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5048", 1
  %"$recordIsOwnedByRegistrar_5051" = load %TName_Bool*, %TName_Bool** %recordIsOwnedByRegistrar
  %"$BoolUtils.andb_call_5052" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5049"(i8* %"$BoolUtils.andb_envptr_5050", %TName_Bool* %"$recordIsOwnedByRegistrar_5051")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5052", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_123"
  %"$BoolUtils.andb_124" = alloca %TName_Bool*
  %"$$BoolUtils.andb_123_5053" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_123"
  %"$$BoolUtils.andb_123_fptr_5054" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_123_5053", 0
  %"$$BoolUtils.andb_123_envptr_5055" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_123_5053", 1
  %"$isSenderRegistrar_5056" = load %TName_Bool*, %TName_Bool** %isSenderRegistrar
  %"$$BoolUtils.andb_123_call_5057" = call %TName_Bool* %"$$BoolUtils.andb_123_fptr_5054"(i8* %"$$BoolUtils.andb_123_envptr_5055", %TName_Bool* %"$isSenderRegistrar_5056")
  store %TName_Bool* %"$$BoolUtils.andb_123_call_5057", %TName_Bool** %"$BoolUtils.andb_124"
  %"$$BoolUtils.andb_124_5058" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_124"
  store %TName_Bool* %"$$BoolUtils.andb_124_5058", %TName_Bool** %isRegistrarSenderAndOwned
  %"$gasrem_5059" = load i64, i64* @_gasrem
  %"$gascmp_5060" = icmp ugt i64 1, %"$gasrem_5059"
  br i1 %"$gascmp_5060", label %"$out_of_gas_5061", label %"$have_gas_5062"

"$out_of_gas_5061":                               ; preds = %"$have_gas_5046"
  call void @_out_of_gas()
  br label %"$have_gas_5062"

"$have_gas_5062":                                 ; preds = %"$out_of_gas_5061", %"$have_gas_5046"
  %"$consume_5063" = sub i64 %"$gasrem_5059", 1
  store i64 %"$consume_5063", i64* @_gasrem
  %isOkRecordOwner = alloca %TName_Bool*
  %"$gasrem_5064" = load i64, i64* @_gasrem
  %"$gascmp_5065" = icmp ugt i64 1, %"$gasrem_5064"
  br i1 %"$gascmp_5065", label %"$out_of_gas_5066", label %"$have_gas_5067"

"$out_of_gas_5066":                               ; preds = %"$have_gas_5062"
  call void @_out_of_gas()
  br label %"$have_gas_5067"

"$have_gas_5067":                                 ; preds = %"$out_of_gas_5066", %"$have_gas_5062"
  %"$consume_5068" = sub i64 %"$gasrem_5064", 1
  store i64 %"$consume_5068", i64* @_gasrem
  %"$BoolUtils.orb_125" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.orb_5069" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb
  %"$BoolUtils.orb_fptr_5070" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5069", 0
  %"$BoolUtils.orb_envptr_5071" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5069", 1
  %"$recordIsUnowned_5072" = load %TName_Bool*, %TName_Bool** %recordIsUnowned
  %"$BoolUtils.orb_call_5073" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_5070"(i8* %"$BoolUtils.orb_envptr_5071", %TName_Bool* %"$recordIsUnowned_5072")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_5073", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_125"
  %"$BoolUtils.orb_126" = alloca %TName_Bool*
  %"$$BoolUtils.orb_125_5074" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_125"
  %"$$BoolUtils.orb_125_fptr_5075" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_125_5074", 0
  %"$$BoolUtils.orb_125_envptr_5076" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_125_5074", 1
  %"$isRegistrarSenderAndOwned_5077" = load %TName_Bool*, %TName_Bool** %isRegistrarSenderAndOwned
  %"$$BoolUtils.orb_125_call_5078" = call %TName_Bool* %"$$BoolUtils.orb_125_fptr_5075"(i8* %"$$BoolUtils.orb_125_envptr_5076", %TName_Bool* %"$isRegistrarSenderAndOwned_5077")
  store %TName_Bool* %"$$BoolUtils.orb_125_call_5078", %TName_Bool** %"$BoolUtils.orb_126"
  %"$$BoolUtils.orb_126_5079" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_126"
  store %TName_Bool* %"$$BoolUtils.orb_126_5079", %TName_Bool** %isOkRecordOwner
  %"$gasrem_5080" = load i64, i64* @_gasrem
  %"$gascmp_5081" = icmp ugt i64 1, %"$gasrem_5080"
  br i1 %"$gascmp_5081", label %"$out_of_gas_5082", label %"$have_gas_5083"

"$out_of_gas_5082":                               ; preds = %"$have_gas_5067"
  call void @_out_of_gas()
  br label %"$have_gas_5083"

"$have_gas_5083":                                 ; preds = %"$out_of_gas_5082", %"$have_gas_5067"
  %"$consume_5084" = sub i64 %"$gasrem_5080", 1
  store i64 %"$consume_5084", i64* @_gasrem
  %"$BoolUtils.andb_127" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.andb_5085" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb
  %"$BoolUtils.andb_fptr_5086" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5085", 0
  %"$BoolUtils.andb_envptr_5087" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5085", 1
  %"$isOkSender_5088" = load %TName_Bool*, %TName_Bool** %isOkSender
  %"$BoolUtils.andb_call_5089" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5086"(i8* %"$BoolUtils.andb_envptr_5087", %TName_Bool* %"$isOkSender_5088")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5089", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127"
  %"$BoolUtils.andb_128" = alloca %TName_Bool*
  %"$$BoolUtils.andb_127_5090" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127"
  %"$$BoolUtils.andb_127_fptr_5091" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_5090", 0
  %"$$BoolUtils.andb_127_envptr_5092" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_5090", 1
  %"$isOkRecordOwner_5093" = load %TName_Bool*, %TName_Bool** %isOkRecordOwner
  %"$$BoolUtils.andb_127_call_5094" = call %TName_Bool* %"$$BoolUtils.andb_127_fptr_5091"(i8* %"$$BoolUtils.andb_127_envptr_5092", %TName_Bool* %"$isOkRecordOwner_5093")
  store %TName_Bool* %"$$BoolUtils.andb_127_call_5094", %TName_Bool** %"$BoolUtils.andb_128"
  %"$$BoolUtils.andb_128_5095" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_128"
  store %TName_Bool* %"$$BoolUtils.andb_128_5095", %TName_Bool** %isOk
  %"$gasrem_5096" = load i64, i64* @_gasrem
  %"$gascmp_5097" = icmp ugt i64 2, %"$gasrem_5096"
  br i1 %"$gascmp_5097", label %"$out_of_gas_5098", label %"$have_gas_5099"

"$out_of_gas_5098":                               ; preds = %"$have_gas_5083"
  call void @_out_of_gas()
  br label %"$have_gas_5099"

"$have_gas_5099":                                 ; preds = %"$out_of_gas_5098", %"$have_gas_5083"
  %"$consume_5100" = sub i64 %"$gasrem_5096", 2
  store i64 %"$consume_5100", i64* @_gasrem
  %"$isOk_5102" = load %TName_Bool*, %TName_Bool** %isOk
  %"$isOk_tag_5103" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5102", i32 0, i32 0
  %"$isOk_tag_5104" = load i8, i8* %"$isOk_tag_5103"
  switch i8 %"$isOk_tag_5104", label %"$empty_default_5105" [
    i8 0, label %"$True_5106"
    i8 1, label %"$False_5219"
  ]

"$True_5106":                                     ; preds = %"$have_gas_5099"
  %"$isOk_5107" = bitcast %TName_Bool* %"$isOk_5102" to %CName_True*
  %"$gasrem_5108" = load i64, i64* @_gasrem
  %"$gascmp_5109" = icmp ugt i64 2, %"$gasrem_5108"
  br i1 %"$gascmp_5109", label %"$out_of_gas_5110", label %"$have_gas_5111"

"$out_of_gas_5110":                               ; preds = %"$True_5106"
  call void @_out_of_gas()
  br label %"$have_gas_5111"

"$have_gas_5111":                                 ; preds = %"$out_of_gas_5110", %"$True_5106"
  %"$consume_5112" = sub i64 %"$gasrem_5108", 2
  store i64 %"$consume_5112", i64* @_gasrem
  %"$recordExists_5114" = load %TName_Bool*, %TName_Bool** %recordExists
  %"$recordExists_tag_5115" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$recordExists_5114", i32 0, i32 0
  %"$recordExists_tag_5116" = load i8, i8* %"$recordExists_tag_5115"
  switch i8 %"$recordExists_tag_5116", label %"$default_5117" [
    i8 1, label %"$False_5118"
  ]

"$False_5118":                                    ; preds = %"$have_gas_5111"
  %"$recordExists_5119" = bitcast %TName_Bool* %"$recordExists_5114" to %CName_False*
  %"$gasrem_5120" = load i64, i64* @_gasrem
  %"$gascmp_5121" = icmp ugt i64 1, %"$gasrem_5120"
  br i1 %"$gascmp_5121", label %"$out_of_gas_5122", label %"$have_gas_5123"

"$out_of_gas_5122":                               ; preds = %"$False_5118"
  call void @_out_of_gas()
  br label %"$have_gas_5123"

"$have_gas_5123":                                 ; preds = %"$out_of_gas_5122", %"$False_5118"
  %"$consume_5124" = sub i64 %"$gasrem_5120", 1
  store i64 %"$consume_5124", i64* @_gasrem
  %e = alloca i8*
  %"$gasrem_5125" = load i64, i64* @_gasrem
  %"$gascmp_5126" = icmp ugt i64 1, %"$gasrem_5125"
  br i1 %"$gascmp_5126", label %"$out_of_gas_5127", label %"$have_gas_5128"

"$out_of_gas_5127":                               ; preds = %"$have_gas_5123"
  call void @_out_of_gas()
  br label %"$have_gas_5128"

"$have_gas_5128":                                 ; preds = %"$out_of_gas_5127", %"$have_gas_5123"
  %"$consume_5129" = sub i64 %"$gasrem_5125", 1
  store i64 %"$consume_5129", i64* @_gasrem
  %"$ud-registry.eNewDomain_115" = alloca { i8* (i8*, %String)*, i8* }
  %"$ud-registry.eNewDomain_5130" = load { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain
  %"$ud-registry.eNewDomain_fptr_5131" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_5130", 0
  %"$ud-registry.eNewDomain_envptr_5132" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_5130", 1
  %"$ud-registry.eNewDomain_rootNode_5133" = alloca [32 x i8]
  %"$rootNode_5134" = load [32 x i8], [32 x i8]* @rootNode
  store [32 x i8] %"$rootNode_5134", [32 x i8]* %"$ud-registry.eNewDomain_rootNode_5133"
  %"$ud-registry.eNewDomain_call_5135" = call { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_fptr_5131"(i8* %"$ud-registry.eNewDomain_envptr_5132", [32 x i8]* %"$ud-registry.eNewDomain_rootNode_5133")
  store { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_call_5135", { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_115"
  %"$ud-registry.eNewDomain_116" = alloca i8*
  %"$$ud-registry.eNewDomain_115_5136" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_115"
  %"$$ud-registry.eNewDomain_115_fptr_5137" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_115_5136", 0
  %"$$ud-registry.eNewDomain_115_envptr_5138" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_115_5136", 1
  %"$$ud-registry.eNewDomain_115_call_5139" = call i8* %"$$ud-registry.eNewDomain_115_fptr_5137"(i8* %"$$ud-registry.eNewDomain_115_envptr_5138", %String %label)
  store i8* %"$$ud-registry.eNewDomain_115_call_5139", i8** %"$ud-registry.eNewDomain_116"
  %"$$ud-registry.eNewDomain_116_5140" = load i8*, i8** %"$ud-registry.eNewDomain_116"
  store i8* %"$$ud-registry.eNewDomain_116_5140", i8** %e
  %"$e_5141" = load i8*, i8** %e
  %"$_literal_cost_call_5143" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5141")
  %"$gasrem_5144" = load i64, i64* @_gasrem
  %"$gascmp_5145" = icmp ugt i64 %"$_literal_cost_call_5143", %"$gasrem_5144"
  br i1 %"$gascmp_5145", label %"$out_of_gas_5146", label %"$have_gas_5147"

"$out_of_gas_5146":                               ; preds = %"$have_gas_5128"
  call void @_out_of_gas()
  br label %"$have_gas_5147"

"$have_gas_5147":                                 ; preds = %"$out_of_gas_5146", %"$have_gas_5128"
  %"$consume_5148" = sub i64 %"$gasrem_5144", %"$_literal_cost_call_5143"
  store i64 %"$consume_5148", i64* @_gasrem
  %"$execptr_load_5149" = load i8*, i8** @_execptr
  %"$e_5150" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_5149", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5150")
  br label %"$matchsucc_5113"

"$default_5117":                                  ; preds = %"$have_gas_5111"
  br label %"$joinp_5"

"$joinp_5":                                       ; preds = %"$default_5117"
  br label %"$matchsucc_5113"

"$matchsucc_5113":                                ; preds = %"$have_gas_5147", %"$joinp_5"
  %"$gasrem_5151" = load i64, i64* @_gasrem
  %"$gascmp_5152" = icmp ugt i64 1, %"$gasrem_5151"
  br i1 %"$gascmp_5152", label %"$out_of_gas_5153", label %"$have_gas_5154"

"$out_of_gas_5153":                               ; preds = %"$matchsucc_5113"
  call void @_out_of_gas()
  br label %"$have_gas_5154"

"$have_gas_5154":                                 ; preds = %"$out_of_gas_5153", %"$matchsucc_5113"
  %"$consume_5155" = sub i64 %"$gasrem_5151", 1
  store i64 %"$consume_5155", i64* @_gasrem
  %newRecord = alloca %TName_ud-registry.Record*
  %"$gasrem_5156" = load i64, i64* @_gasrem
  %"$gascmp_5157" = icmp ugt i64 1, %"$gasrem_5156"
  br i1 %"$gascmp_5157", label %"$out_of_gas_5158", label %"$have_gas_5159"

"$out_of_gas_5158":                               ; preds = %"$have_gas_5154"
  call void @_out_of_gas()
  br label %"$have_gas_5159"

"$have_gas_5159":                                 ; preds = %"$out_of_gas_5158", %"$have_gas_5154"
  %"$consume_5160" = sub i64 %"$gasrem_5156", 1
  store i64 %"$consume_5160", i64* @_gasrem
  %"$adtval_5161_load" = load i8*, i8** @_execptr
  %"$adtval_5161_salloc" = call i8* @_salloc(i8* %"$adtval_5161_load", i64 41)
  %"$adtval_5161" = bitcast i8* %"$adtval_5161_salloc" to %CName_ud-registry.Record*
  %"$adtgep_5162" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5161", i32 0, i32 0
  store i8 0, i8* %"$adtgep_5162"
  %"$adtgep_5163" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5161", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_5163"
  %"$adtgep_5164" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5161", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_5164"
  %"$adtptr_5165" = bitcast %CName_ud-registry.Record* %"$adtval_5161" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_5165", %TName_ud-registry.Record** %newRecord
  %"$newRecord_5166" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord
  %"$$newRecord_5166_5167" = bitcast %TName_ud-registry.Record* %"$newRecord_5166" to i8*
  %"$_literal_cost_call_5168" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_5166_5167")
  %"$gasadd_5169" = add i64 %"$_literal_cost_call_5168", 1
  %"$gasrem_5170" = load i64, i64* @_gasrem
  %"$gascmp_5171" = icmp ugt i64 %"$gasadd_5169", %"$gasrem_5170"
  br i1 %"$gascmp_5171", label %"$out_of_gas_5172", label %"$have_gas_5173"

"$out_of_gas_5172":                               ; preds = %"$have_gas_5159"
  call void @_out_of_gas()
  br label %"$have_gas_5173"

"$have_gas_5173":                                 ; preds = %"$out_of_gas_5172", %"$have_gas_5159"
  %"$consume_5174" = sub i64 %"$gasrem_5170", %"$gasadd_5169"
  store i64 %"$consume_5174", i64* @_gasrem
  %"$indices_buf_5175_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_5175_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5175_salloc_load", i64 32)
  %"$indices_buf_5175_salloc" = bitcast i8* %"$indices_buf_5175_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5175" = bitcast [32 x i8]* %"$indices_buf_5175_salloc" to i8*
  %"$node_5176" = load [32 x i8], [32 x i8]* %node
  %"$indices_gep_5177" = getelementptr i8, i8* %"$indices_buf_5175", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_5177" to [32 x i8]*
  store [32 x i8] %"$node_5176", [32 x i8]* %indices_cast2
  %"$execptr_load_5178" = load i8*, i8** @_execptr
  %"$newRecord_5180" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord
  %"$update_value_5181" = bitcast %TName_ud-registry.Record* %"$newRecord_5180" to i8*
  call void @_update_field(i8* %"$execptr_load_5178", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5179", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_5175", i8* %"$update_value_5181")
  %"$gasrem_5182" = load i64, i64* @_gasrem
  %"$gascmp_5183" = icmp ugt i64 1, %"$gasrem_5182"
  br i1 %"$gascmp_5183", label %"$out_of_gas_5184", label %"$have_gas_5185"

"$out_of_gas_5184":                               ; preds = %"$have_gas_5173"
  call void @_out_of_gas()
  br label %"$have_gas_5185"

"$have_gas_5185":                                 ; preds = %"$out_of_gas_5184", %"$have_gas_5173"
  %"$consume_5186" = sub i64 %"$gasrem_5182", 1
  store i64 %"$consume_5186", i64* @_gasrem
  %e3 = alloca i8*
  %"$gasrem_5187" = load i64, i64* @_gasrem
  %"$gascmp_5188" = icmp ugt i64 1, %"$gasrem_5187"
  br i1 %"$gascmp_5188", label %"$out_of_gas_5189", label %"$have_gas_5190"

"$out_of_gas_5189":                               ; preds = %"$have_gas_5185"
  call void @_out_of_gas()
  br label %"$have_gas_5190"

"$have_gas_5190":                                 ; preds = %"$out_of_gas_5189", %"$have_gas_5185"
  %"$consume_5191" = sub i64 %"$gasrem_5187", 1
  store i64 %"$consume_5191", i64* @_gasrem
  %"$ud-registry.eConfigured_112" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.eConfigured_5192" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured
  %"$ud-registry.eConfigured_fptr_5193" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5192", 0
  %"$ud-registry.eConfigured_envptr_5194" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5192", 1
  %"$ud-registry.eConfigured_node_5195" = alloca [32 x i8]
  %"$node_5196" = load [32 x i8], [32 x i8]* %node
  store [32 x i8] %"$node_5196", [32 x i8]* %"$ud-registry.eConfigured_node_5195"
  %"$ud-registry.eConfigured_call_5197" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_5193"(i8* %"$ud-registry.eConfigured_envptr_5194", [32 x i8]* %"$ud-registry.eConfigured_node_5195")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_5197", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_112"
  %"$ud-registry.eConfigured_113" = alloca { i8* (i8*, [20 x i8]*)*, i8* }
  %"$$ud-registry.eConfigured_112_5198" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_112"
  %"$$ud-registry.eConfigured_112_fptr_5199" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_112_5198", 0
  %"$$ud-registry.eConfigured_112_envptr_5200" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_112_5198", 1
  %"$$ud-registry.eConfigured_112_owner_5201" = alloca [20 x i8]
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_112_owner_5201"
  %"$$ud-registry.eConfigured_112_call_5202" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_112_fptr_5199"(i8* %"$$ud-registry.eConfigured_112_envptr_5200", [20 x i8]* %"$$ud-registry.eConfigured_112_owner_5201")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_112_call_5202", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_113"
  %"$ud-registry.eConfigured_114" = alloca i8*
  %"$$ud-registry.eConfigured_113_5203" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_113"
  %"$$ud-registry.eConfigured_113_fptr_5204" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_113_5203", 0
  %"$$ud-registry.eConfigured_113_envptr_5205" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_113_5203", 1
  %"$$ud-registry.eConfigured_113_resolver_5206" = alloca [20 x i8]
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_113_resolver_5206"
  %"$$ud-registry.eConfigured_113_call_5207" = call i8* %"$$ud-registry.eConfigured_113_fptr_5204"(i8* %"$$ud-registry.eConfigured_113_envptr_5205", [20 x i8]* %"$$ud-registry.eConfigured_113_resolver_5206")
  store i8* %"$$ud-registry.eConfigured_113_call_5207", i8** %"$ud-registry.eConfigured_114"
  %"$$ud-registry.eConfigured_114_5208" = load i8*, i8** %"$ud-registry.eConfigured_114"
  store i8* %"$$ud-registry.eConfigured_114_5208", i8** %e3
  %"$e_5209" = load i8*, i8** %e3
  %"$_literal_cost_call_5211" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5209")
  %"$gasrem_5212" = load i64, i64* @_gasrem
  %"$gascmp_5213" = icmp ugt i64 %"$_literal_cost_call_5211", %"$gasrem_5212"
  br i1 %"$gascmp_5213", label %"$out_of_gas_5214", label %"$have_gas_5215"

"$out_of_gas_5214":                               ; preds = %"$have_gas_5190"
  call void @_out_of_gas()
  br label %"$have_gas_5215"

"$have_gas_5215":                                 ; preds = %"$out_of_gas_5214", %"$have_gas_5190"
  %"$consume_5216" = sub i64 %"$gasrem_5212", %"$_literal_cost_call_5211"
  store i64 %"$consume_5216", i64* @_gasrem
  %"$execptr_load_5217" = load i8*, i8** @_execptr
  %"$e_5218" = load i8*, i8** %e3
  call void @_event(i8* %"$execptr_load_5217", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5218")
  br label %"$matchsucc_5101"

"$False_5219":                                    ; preds = %"$have_gas_5099"
  %"$isOk_5220" = bitcast %TName_Bool* %"$isOk_5102" to %CName_False*
  %"$gasrem_5221" = load i64, i64* @_gasrem
  %"$gascmp_5222" = icmp ugt i64 1, %"$gasrem_5221"
  br i1 %"$gascmp_5222", label %"$out_of_gas_5223", label %"$have_gas_5224"

"$out_of_gas_5223":                               ; preds = %"$False_5219"
  call void @_out_of_gas()
  br label %"$have_gas_5224"

"$have_gas_5224":                                 ; preds = %"$out_of_gas_5223", %"$False_5219"
  %"$consume_5225" = sub i64 %"$gasrem_5221", 1
  store i64 %"$consume_5225", i64* @_gasrem
  %e4 = alloca i8*
  %"$gasrem_5226" = load i64, i64* @_gasrem
  %"$gascmp_5227" = icmp ugt i64 1, %"$gasrem_5226"
  br i1 %"$gascmp_5227", label %"$out_of_gas_5228", label %"$have_gas_5229"

"$out_of_gas_5228":                               ; preds = %"$have_gas_5224"
  call void @_out_of_gas()
  br label %"$have_gas_5229"

"$have_gas_5229":                                 ; preds = %"$out_of_gas_5228", %"$have_gas_5224"
  %"$consume_5230" = sub i64 %"$gasrem_5226", 1
  store i64 %"$consume_5230", i64* @_gasrem
  %m = alloca %String
  %"$gasrem_5231" = load i64, i64* @_gasrem
  %"$gascmp_5232" = icmp ugt i64 1, %"$gasrem_5231"
  br i1 %"$gascmp_5232", label %"$out_of_gas_5233", label %"$have_gas_5234"

"$out_of_gas_5233":                               ; preds = %"$have_gas_5229"
  call void @_out_of_gas()
  br label %"$have_gas_5234"

"$have_gas_5234":                                 ; preds = %"$out_of_gas_5233", %"$have_gas_5229"
  %"$consume_5235" = sub i64 %"$gasrem_5231", 1
  store i64 %"$consume_5235", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_5236", i32 0, i32 0), i32 12 }, %String* %m
  %"$gasrem_5237" = load i64, i64* @_gasrem
  %"$gascmp_5238" = icmp ugt i64 1, %"$gasrem_5237"
  br i1 %"$gascmp_5238", label %"$out_of_gas_5239", label %"$have_gas_5240"

"$out_of_gas_5239":                               ; preds = %"$have_gas_5234"
  call void @_out_of_gas()
  br label %"$have_gas_5240"

"$have_gas_5240":                                 ; preds = %"$out_of_gas_5239", %"$have_gas_5234"
  %"$consume_5241" = sub i64 %"$gasrem_5237", 1
  store i64 %"$consume_5241", i64* @_gasrem
  %"$ud-registry.eError_117" = alloca i8*
  %"$ud-registry.eError_5242" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError
  %"$ud-registry.eError_fptr_5243" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_5242", 0
  %"$ud-registry.eError_envptr_5244" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_5242", 1
  %"$m_5245" = load %String, %String* %m
  %"$ud-registry.eError_call_5246" = call i8* %"$ud-registry.eError_fptr_5243"(i8* %"$ud-registry.eError_envptr_5244", %String %"$m_5245")
  store i8* %"$ud-registry.eError_call_5246", i8** %"$ud-registry.eError_117"
  %"$$ud-registry.eError_117_5247" = load i8*, i8** %"$ud-registry.eError_117"
  store i8* %"$$ud-registry.eError_117_5247", i8** %e4
  %"$e_5248" = load i8*, i8** %e4
  %"$_literal_cost_call_5250" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5248")
  %"$gasrem_5251" = load i64, i64* @_gasrem
  %"$gascmp_5252" = icmp ugt i64 %"$_literal_cost_call_5250", %"$gasrem_5251"
  br i1 %"$gascmp_5252", label %"$out_of_gas_5253", label %"$have_gas_5254"

"$out_of_gas_5253":                               ; preds = %"$have_gas_5240"
  call void @_out_of_gas()
  br label %"$have_gas_5254"

"$have_gas_5254":                                 ; preds = %"$out_of_gas_5253", %"$have_gas_5240"
  %"$consume_5255" = sub i64 %"$gasrem_5251", %"$_literal_cost_call_5250"
  store i64 %"$consume_5255", i64* @_gasrem
  %"$execptr_load_5256" = load i8*, i8** @_execptr
  %"$e_5257" = load i8*, i8** %e4
  call void @_event(i8* %"$execptr_load_5256", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5257")
  br label %"$matchsucc_5101"

"$empty_default_5105":                            ; preds = %"$have_gas_5099"
  br label %"$matchsucc_5101"

"$matchsucc_5101":                                ; preds = %"$have_gas_5254", %"$have_gas_5215", %"$empty_default_5105"
  ret void
}

define void @bestow(i8* %0) {
entry:
  %"$_amount_5259" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5260" = bitcast i8* %"$_amount_5259" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5260"
  %"$_sender_5261" = getelementptr i8, i8* %0, i32 16
  %"$_sender_5262" = bitcast i8* %"$_sender_5261" to [20 x i8]*
  %"$label_5263" = getelementptr i8, i8* %0, i32 36
  %"$label_5264" = bitcast i8* %"$label_5263" to %String*
  %label = load %String, %String* %"$label_5264"
  %"$owner_5265" = getelementptr i8, i8* %0, i32 52
  %"$owner_5266" = bitcast i8* %"$owner_5265" to [20 x i8]*
  %"$resolver_5267" = getelementptr i8, i8* %0, i32 72
  %"$resolver_5268" = bitcast i8* %"$resolver_5267" to [20 x i8]*
  call void @"$bestow_4848"(%Uint128 %_amount, [20 x i8]* %"$_sender_5262", %String %label, [20 x i8]* %"$owner_5266", [20 x i8]* %"$resolver_5268")
  ret void
}

define internal void @"$setRegistrar_5269"(%Uint128 %_amount, [20 x i8]* %"$_sender_5270", [20 x i8]* %"$address_5271") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5270"
  %address = load [20 x i8], [20 x i8]* %"$address_5271"
  %currentAdmins = alloca %TName_List_ByStr20*
  %"$execptr_load_5272" = load i8*, i8** @_execptr
  %"$currentAdmins_5274" = call i8* @_fetch_field(i8* %"$execptr_load_5272", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_5273", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i32 1)
  %"$currentAdmins_5275" = bitcast i8* %"$currentAdmins_5274" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_5275", %TName_List_ByStr20** %currentAdmins
  %"$currentAdmins_5276" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins
  %"$$currentAdmins_5276_5277" = bitcast %TName_List_ByStr20* %"$currentAdmins_5276" to i8*
  %"$_literal_cost_call_5278" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$currentAdmins_5276_5277")
  %"$gasadd_5279" = add i64 %"$_literal_cost_call_5278", 0
  %"$gasrem_5280" = load i64, i64* @_gasrem
  %"$gascmp_5281" = icmp ugt i64 %"$gasadd_5279", %"$gasrem_5280"
  br i1 %"$gascmp_5281", label %"$out_of_gas_5282", label %"$have_gas_5283"

"$out_of_gas_5282":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5283"

"$have_gas_5283":                                 ; preds = %"$out_of_gas_5282", %entry
  %"$consume_5284" = sub i64 %"$gasrem_5280", %"$gasadd_5279"
  store i64 %"$consume_5284", i64* @_gasrem
  %"$gasrem_5285" = load i64, i64* @_gasrem
  %"$gascmp_5286" = icmp ugt i64 1, %"$gasrem_5285"
  br i1 %"$gascmp_5286", label %"$out_of_gas_5287", label %"$have_gas_5288"

"$out_of_gas_5287":                               ; preds = %"$have_gas_5283"
  call void @_out_of_gas()
  br label %"$have_gas_5288"

"$have_gas_5288":                                 ; preds = %"$out_of_gas_5287", %"$have_gas_5283"
  %"$consume_5289" = sub i64 %"$gasrem_5285", 1
  store i64 %"$consume_5289", i64* @_gasrem
  %isOk = alloca %TName_Bool*
  %"$gasrem_5290" = load i64, i64* @_gasrem
  %"$gascmp_5291" = icmp ugt i64 1, %"$gasrem_5290"
  br i1 %"$gascmp_5291", label %"$out_of_gas_5292", label %"$have_gas_5293"

"$out_of_gas_5292":                               ; preds = %"$have_gas_5288"
  call void @_out_of_gas()
  br label %"$have_gas_5293"

"$have_gas_5293":                                 ; preds = %"$out_of_gas_5292", %"$have_gas_5288"
  %"$consume_5294" = sub i64 %"$gasrem_5290", 1
  store i64 %"$consume_5294", i64* @_gasrem
  %"$ud-registry.listByStr20Contains_132" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.listByStr20Contains_5295" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains
  %"$ud-registry.listByStr20Contains_fptr_5296" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5295", 0
  %"$ud-registry.listByStr20Contains_envptr_5297" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5295", 1
  %"$currentAdmins_5298" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins
  %"$ud-registry.listByStr20Contains_call_5299" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_5296"(i8* %"$ud-registry.listByStr20Contains_envptr_5297", %TName_List_ByStr20* %"$currentAdmins_5298")
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_5299", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_132"
  %"$ud-registry.listByStr20Contains_133" = alloca %TName_Bool*
  %"$$ud-registry.listByStr20Contains_132_5300" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_132"
  %"$$ud-registry.listByStr20Contains_132_fptr_5301" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_132_5300", 0
  %"$$ud-registry.listByStr20Contains_132_envptr_5302" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_132_5300", 1
  %"$$ud-registry.listByStr20Contains_132__sender_5303" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_132__sender_5303"
  %"$$ud-registry.listByStr20Contains_132_call_5304" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_132_fptr_5301"(i8* %"$$ud-registry.listByStr20Contains_132_envptr_5302", [20 x i8]* %"$$ud-registry.listByStr20Contains_132__sender_5303")
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_132_call_5304", %TName_Bool** %"$ud-registry.listByStr20Contains_133"
  %"$$ud-registry.listByStr20Contains_133_5305" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_133"
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_133_5305", %TName_Bool** %isOk
  %"$gasrem_5306" = load i64, i64* @_gasrem
  %"$gascmp_5307" = icmp ugt i64 2, %"$gasrem_5306"
  br i1 %"$gascmp_5307", label %"$out_of_gas_5308", label %"$have_gas_5309"

"$out_of_gas_5308":                               ; preds = %"$have_gas_5293"
  call void @_out_of_gas()
  br label %"$have_gas_5309"

"$have_gas_5309":                                 ; preds = %"$out_of_gas_5308", %"$have_gas_5293"
  %"$consume_5310" = sub i64 %"$gasrem_5306", 2
  store i64 %"$consume_5310", i64* @_gasrem
  %"$isOk_5312" = load %TName_Bool*, %TName_Bool** %isOk
  %"$isOk_tag_5313" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5312", i32 0, i32 0
  %"$isOk_tag_5314" = load i8, i8* %"$isOk_tag_5313"
  switch i8 %"$isOk_tag_5314", label %"$default_5315" [
    i8 0, label %"$True_5316"
  ]

"$True_5316":                                     ; preds = %"$have_gas_5309"
  %"$isOk_5317" = bitcast %TName_Bool* %"$isOk_5312" to %CName_True*
  %"$gasrem_5318" = load i64, i64* @_gasrem
  %"$gascmp_5319" = icmp ugt i64 1, %"$gasrem_5318"
  br i1 %"$gascmp_5319", label %"$out_of_gas_5320", label %"$have_gas_5321"

"$out_of_gas_5320":                               ; preds = %"$True_5316"
  call void @_out_of_gas()
  br label %"$have_gas_5321"

"$have_gas_5321":                                 ; preds = %"$out_of_gas_5320", %"$True_5316"
  %"$consume_5322" = sub i64 %"$gasrem_5318", 1
  store i64 %"$consume_5322", i64* @_gasrem
  %e = alloca i8*
  %"$gasrem_5323" = load i64, i64* @_gasrem
  %"$gascmp_5324" = icmp ugt i64 1, %"$gasrem_5323"
  br i1 %"$gascmp_5324", label %"$out_of_gas_5325", label %"$have_gas_5326"

"$out_of_gas_5325":                               ; preds = %"$have_gas_5321"
  call void @_out_of_gas()
  br label %"$have_gas_5326"

"$have_gas_5326":                                 ; preds = %"$out_of_gas_5325", %"$have_gas_5321"
  %"$consume_5327" = sub i64 %"$gasrem_5323", 1
  store i64 %"$consume_5327", i64* @_gasrem
  %"$ud-registry.eNewRegistrar_131" = alloca i8*
  %"$ud-registry.eNewRegistrar_5328" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eNewRegistrar
  %"$ud-registry.eNewRegistrar_fptr_5329" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eNewRegistrar_5328", 0
  %"$ud-registry.eNewRegistrar_envptr_5330" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eNewRegistrar_5328", 1
  %"$ud-registry.eNewRegistrar_address_5331" = alloca [20 x i8]
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eNewRegistrar_address_5331"
  %"$ud-registry.eNewRegistrar_call_5332" = call i8* %"$ud-registry.eNewRegistrar_fptr_5329"(i8* %"$ud-registry.eNewRegistrar_envptr_5330", [20 x i8]* %"$ud-registry.eNewRegistrar_address_5331")
  store i8* %"$ud-registry.eNewRegistrar_call_5332", i8** %"$ud-registry.eNewRegistrar_131"
  %"$$ud-registry.eNewRegistrar_131_5333" = load i8*, i8** %"$ud-registry.eNewRegistrar_131"
  store i8* %"$$ud-registry.eNewRegistrar_131_5333", i8** %e
  %"$e_5334" = load i8*, i8** %e
  %"$_literal_cost_call_5336" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5334")
  %"$gasrem_5337" = load i64, i64* @_gasrem
  %"$gascmp_5338" = icmp ugt i64 %"$_literal_cost_call_5336", %"$gasrem_5337"
  br i1 %"$gascmp_5338", label %"$out_of_gas_5339", label %"$have_gas_5340"

"$out_of_gas_5339":                               ; preds = %"$have_gas_5326"
  call void @_out_of_gas()
  br label %"$have_gas_5340"

"$have_gas_5340":                                 ; preds = %"$out_of_gas_5339", %"$have_gas_5326"
  %"$consume_5341" = sub i64 %"$gasrem_5337", %"$_literal_cost_call_5336"
  store i64 %"$consume_5341", i64* @_gasrem
  %"$execptr_load_5342" = load i8*, i8** @_execptr
  %"$e_5343" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_5342", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5343")
  %"$_literal_cost_address_5344" = alloca [20 x i8]
  store [20 x i8] %address, [20 x i8]* %"$_literal_cost_address_5344"
  %"$$_literal_cost_address_5344_5345" = bitcast [20 x i8]* %"$_literal_cost_address_5344" to i8*
  %"$_literal_cost_call_5346" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i8* %"$$_literal_cost_address_5344_5345")
  %"$gasrem_5347" = load i64, i64* @_gasrem
  %"$gascmp_5348" = icmp ugt i64 %"$_literal_cost_call_5346", %"$gasrem_5347"
  br i1 %"$gascmp_5348", label %"$out_of_gas_5349", label %"$have_gas_5350"

"$out_of_gas_5349":                               ; preds = %"$have_gas_5340"
  call void @_out_of_gas()
  br label %"$have_gas_5350"

"$have_gas_5350":                                 ; preds = %"$out_of_gas_5349", %"$have_gas_5340"
  %"$consume_5351" = sub i64 %"$gasrem_5347", %"$_literal_cost_call_5346"
  store i64 %"$consume_5351", i64* @_gasrem
  %"$execptr_load_5352" = load i8*, i8** @_execptr
  %"$update_value_5354" = alloca [20 x i8]
  store [20 x i8] %address, [20 x i8]* %"$update_value_5354"
  %"$update_value_5355" = bitcast [20 x i8]* %"$update_value_5354" to i8*
  call void @_update_field(i8* %"$execptr_load_5352", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_5353", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i32 0, i8* null, i8* %"$update_value_5355")
  br label %"$matchsucc_5311"

"$default_5315":                                  ; preds = %"$have_gas_5309"
  br label %"$joinp_6"

"$joinp_6":                                       ; preds = %"$default_5315"
  br label %"$matchsucc_5311"

"$matchsucc_5311":                                ; preds = %"$have_gas_5350", %"$joinp_6"
  ret void
}

define void @setRegistrar(i8* %0) {
entry:
  %"$_amount_5357" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5358" = bitcast i8* %"$_amount_5357" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5358"
  %"$_sender_5359" = getelementptr i8, i8* %0, i32 16
  %"$_sender_5360" = bitcast i8* %"$_sender_5359" to [20 x i8]*
  %"$address_5361" = getelementptr i8, i8* %0, i32 36
  %"$address_5362" = bitcast i8* %"$address_5361" to [20 x i8]*
  call void @"$setRegistrar_5269"(%Uint128 %_amount, [20 x i8]* %"$_sender_5360", [20 x i8]* %"$address_5362")
  ret void
}

define internal void @"$register_5363"(%Uint128 %_amount, [20 x i8]* %"$_sender_5364", [32 x i8]* %"$parent_5365", %String %label) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5364"
  %parent = load [32 x i8], [32 x i8]* %"$parent_5365"
  %"$gasrem_5366" = load i64, i64* @_gasrem
  %"$gascmp_5367" = icmp ugt i64 1, %"$gasrem_5366"
  br i1 %"$gascmp_5367", label %"$out_of_gas_5368", label %"$have_gas_5369"

"$out_of_gas_5368":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5369"

"$have_gas_5369":                                 ; preds = %"$out_of_gas_5368", %entry
  %"$consume_5370" = sub i64 %"$gasrem_5366", 1
  store i64 %"$consume_5370", i64* @_gasrem
  %node = alloca [32 x i8]
  %"$gasrem_5371" = load i64, i64* @_gasrem
  %"$gascmp_5372" = icmp ugt i64 1, %"$gasrem_5371"
  br i1 %"$gascmp_5372", label %"$out_of_gas_5373", label %"$have_gas_5374"

"$out_of_gas_5373":                               ; preds = %"$have_gas_5369"
  call void @_out_of_gas()
  br label %"$have_gas_5374"

"$have_gas_5374":                                 ; preds = %"$out_of_gas_5373", %"$have_gas_5369"
  %"$consume_5375" = sub i64 %"$gasrem_5371", 1
  store i64 %"$consume_5375", i64* @_gasrem
  %"$ud-registry.parentLabelToNode_138" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }
  %"$ud-registry.parentLabelToNode_5376" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode
  %"$ud-registry.parentLabelToNode_fptr_5377" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_5376", 0
  %"$ud-registry.parentLabelToNode_envptr_5378" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_5376", 1
  %"$ud-registry.parentLabelToNode_parent_5379" = alloca [32 x i8]
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.parentLabelToNode_parent_5379"
  %"$ud-registry.parentLabelToNode_call_5380" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_5377"(i8* %"$ud-registry.parentLabelToNode_envptr_5378", [32 x i8]* %"$ud-registry.parentLabelToNode_parent_5379")
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_5380", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_138"
  %"$ud-registry.parentLabelToNode_139" = alloca [32 x i8]
  %"$$ud-registry.parentLabelToNode_138_5381" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_138"
  %"$$ud-registry.parentLabelToNode_138_fptr_5382" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_138_5381", 0
  %"$$ud-registry.parentLabelToNode_138_envptr_5383" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_138_5381", 1
  %"$$ud-registry.parentLabelToNode_138_retalloca_5384" = alloca [32 x i8]
  call void %"$$ud-registry.parentLabelToNode_138_fptr_5382"(i8* %"$$ud-registry.parentLabelToNode_138_envptr_5383", [32 x i8]* %"$$ud-registry.parentLabelToNode_138_retalloca_5384", %String %label)
  %"$$ud-registry.parentLabelToNode_138_ret_5385" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_138_retalloca_5384"
  store [32 x i8] %"$$ud-registry.parentLabelToNode_138_ret_5385", [32 x i8]* %"$ud-registry.parentLabelToNode_139"
  %"$$ud-registry.parentLabelToNode_139_5386" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_139"
  store [32 x i8] %"$$ud-registry.parentLabelToNode_139_5386", [32 x i8]* %node
  %maybeRecord = alloca %TName_Option_ud-registry.Record*
  %"$indices_buf_5387_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_5387_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5387_salloc_load", i64 32)
  %"$indices_buf_5387_salloc" = bitcast i8* %"$indices_buf_5387_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5387" = bitcast [32 x i8]* %"$indices_buf_5387_salloc" to i8*
  %"$node_5388" = load [32 x i8], [32 x i8]* %node
  %"$indices_gep_5389" = getelementptr i8, i8* %"$indices_buf_5387", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_5389" to [32 x i8]*
  store [32 x i8] %"$node_5388", [32 x i8]* %indices_cast
  %"$execptr_load_5390" = load i8*, i8** @_execptr
  %"$maybeRecord_5392" = call i8* @_fetch_field(i8* %"$execptr_load_5390", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5391", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_5387", i32 1)
  %"$maybeRecord_5393" = bitcast i8* %"$maybeRecord_5392" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_5393", %TName_Option_ud-registry.Record** %maybeRecord
  %"$maybeRecord_5394" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord
  %"$$maybeRecord_5394_5395" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5394" to i8*
  %"$_literal_cost_call_5396" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_5394_5395")
  %"$gasadd_5397" = add i64 %"$_literal_cost_call_5396", 0
  %"$gasadd_5398" = add i64 %"$gasadd_5397", 1
  %"$gasrem_5399" = load i64, i64* @_gasrem
  %"$gascmp_5400" = icmp ugt i64 %"$gasadd_5398", %"$gasrem_5399"
  br i1 %"$gascmp_5400", label %"$out_of_gas_5401", label %"$have_gas_5402"

"$out_of_gas_5401":                               ; preds = %"$have_gas_5374"
  call void @_out_of_gas()
  br label %"$have_gas_5402"

"$have_gas_5402":                                 ; preds = %"$out_of_gas_5401", %"$have_gas_5374"
  %"$consume_5403" = sub i64 %"$gasrem_5399", %"$gasadd_5398"
  store i64 %"$consume_5403", i64* @_gasrem
  %maybeApproved = alloca %TName_Option_ByStr20*
  %"$indices_buf_5404_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_5404_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5404_salloc_load", i64 32)
  %"$indices_buf_5404_salloc" = bitcast i8* %"$indices_buf_5404_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5404" = bitcast [32 x i8]* %"$indices_buf_5404_salloc" to i8*
  %"$node_5405" = load [32 x i8], [32 x i8]* %node
  %"$indices_gep_5406" = getelementptr i8, i8* %"$indices_buf_5404", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_5406" to [32 x i8]*
  store [32 x i8] %"$node_5405", [32 x i8]* %indices_cast1
  %"$execptr_load_5407" = load i8*, i8** @_execptr
  %"$maybeApproved_5409" = call i8* @_fetch_field(i8* %"$execptr_load_5407", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_5408", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_5404", i32 1)
  %"$maybeApproved_5410" = bitcast i8* %"$maybeApproved_5409" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_5410", %TName_Option_ByStr20** %maybeApproved
  %"$maybeApproved_5411" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved
  %"$$maybeApproved_5411_5412" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5411" to i8*
  %"$_literal_cost_call_5413" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_5411_5412")
  %"$gasadd_5414" = add i64 %"$_literal_cost_call_5413", 0
  %"$gasadd_5415" = add i64 %"$gasadd_5414", 1
  %"$gasrem_5416" = load i64, i64* @_gasrem
  %"$gascmp_5417" = icmp ugt i64 %"$gasadd_5415", %"$gasrem_5416"
  br i1 %"$gascmp_5417", label %"$out_of_gas_5418", label %"$have_gas_5419"

"$out_of_gas_5418":                               ; preds = %"$have_gas_5402"
  call void @_out_of_gas()
  br label %"$have_gas_5419"

"$have_gas_5419":                                 ; preds = %"$out_of_gas_5418", %"$have_gas_5402"
  %"$consume_5420" = sub i64 %"$gasrem_5416", %"$gasadd_5415"
  store i64 %"$consume_5420", i64* @_gasrem
  %"$gasrem_5421" = load i64, i64* @_gasrem
  %"$gascmp_5422" = icmp ugt i64 1, %"$gasrem_5421"
  br i1 %"$gascmp_5422", label %"$out_of_gas_5423", label %"$have_gas_5424"

"$out_of_gas_5423":                               ; preds = %"$have_gas_5419"
  call void @_out_of_gas()
  br label %"$have_gas_5424"

"$have_gas_5424":                                 ; preds = %"$out_of_gas_5423", %"$have_gas_5419"
  %"$consume_5425" = sub i64 %"$gasrem_5421", 1
  store i64 %"$consume_5425", i64* @_gasrem
  %recordOwner = alloca [20 x i8]
  %"$gasrem_5426" = load i64, i64* @_gasrem
  %"$gascmp_5427" = icmp ugt i64 1, %"$gasrem_5426"
  br i1 %"$gascmp_5427", label %"$out_of_gas_5428", label %"$have_gas_5429"

"$out_of_gas_5428":                               ; preds = %"$have_gas_5424"
  call void @_out_of_gas()
  br label %"$have_gas_5429"

"$have_gas_5429":                                 ; preds = %"$out_of_gas_5428", %"$have_gas_5424"
  %"$consume_5430" = sub i64 %"$gasrem_5426", 1
  store i64 %"$consume_5430", i64* @_gasrem
  %"$ud-registry.recordMemberOwner_137" = alloca [20 x i8]
  %"$ud-registry.recordMemberOwner_5431" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner
  %"$ud-registry.recordMemberOwner_fptr_5432" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5431", 0
  %"$ud-registry.recordMemberOwner_envptr_5433" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5431", 1
  %"$maybeRecord_5434" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord
  %"$ud-registry.recordMemberOwner_retalloca_5435" = alloca [20 x i8]
  call void %"$ud-registry.recordMemberOwner_fptr_5432"(i8* %"$ud-registry.recordMemberOwner_envptr_5433", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5435", %TName_Option_ud-registry.Record* %"$maybeRecord_5434")
  %"$ud-registry.recordMemberOwner_ret_5436" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5435"
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_5436", [20 x i8]* %"$ud-registry.recordMemberOwner_137"
  %"$$ud-registry.recordMemberOwner_137_5437" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_137"
  store [20 x i8] %"$$ud-registry.recordMemberOwner_137_5437", [20 x i8]* %recordOwner
  %"$gasrem_5438" = load i64, i64* @_gasrem
  %"$gascmp_5439" = icmp ugt i64 1, %"$gasrem_5438"
  br i1 %"$gascmp_5439", label %"$out_of_gas_5440", label %"$have_gas_5441"

"$out_of_gas_5440":                               ; preds = %"$have_gas_5429"
  call void @_out_of_gas()
  br label %"$have_gas_5441"

"$have_gas_5441":                                 ; preds = %"$out_of_gas_5440", %"$have_gas_5429"
  %"$consume_5442" = sub i64 %"$gasrem_5438", 1
  store i64 %"$consume_5442", i64* @_gasrem
  %approved = alloca [20 x i8]
  %"$gasrem_5443" = load i64, i64* @_gasrem
  %"$gascmp_5444" = icmp ugt i64 2, %"$gasrem_5443"
  br i1 %"$gascmp_5444", label %"$out_of_gas_5445", label %"$have_gas_5446"

"$out_of_gas_5445":                               ; preds = %"$have_gas_5441"
  call void @_out_of_gas()
  br label %"$have_gas_5446"

"$have_gas_5446":                                 ; preds = %"$out_of_gas_5445", %"$have_gas_5441"
  %"$consume_5447" = sub i64 %"$gasrem_5443", 2
  store i64 %"$consume_5447", i64* @_gasrem
  %"$maybeApproved_5449" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved
  %"$maybeApproved_tag_5450" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_5449", i32 0, i32 0
  %"$maybeApproved_tag_5451" = load i8, i8* %"$maybeApproved_tag_5450"
  switch i8 %"$maybeApproved_tag_5451", label %"$empty_default_5452" [
    i8 1, label %"$None_5453"
    i8 0, label %"$Some_5461"
  ]

"$None_5453":                                     ; preds = %"$have_gas_5446"
  %"$maybeApproved_5454" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5449" to %CName_None_ByStr20*
  %"$gasrem_5455" = load i64, i64* @_gasrem
  %"$gascmp_5456" = icmp ugt i64 1, %"$gasrem_5455"
  br i1 %"$gascmp_5456", label %"$out_of_gas_5457", label %"$have_gas_5458"

"$out_of_gas_5457":                               ; preds = %"$None_5453"
  call void @_out_of_gas()
  br label %"$have_gas_5458"

"$have_gas_5458":                                 ; preds = %"$out_of_gas_5457", %"$None_5453"
  %"$consume_5459" = sub i64 %"$gasrem_5455", 1
  store i64 %"$consume_5459", i64* @_gasrem
  %"$ud-registry.zeroByStr20_5460" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20
  store [20 x i8] %"$ud-registry.zeroByStr20_5460", [20 x i8]* %approved
  br label %"$matchsucc_5448"

"$Some_5461":                                     ; preds = %"$have_gas_5446"
  %"$maybeApproved_5462" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5449" to %CName_Some_ByStr20*
  %"$approved_gep_5463" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_5462", i32 0, i32 1
  %"$approved_load_5464" = load [20 x i8], [20 x i8]* %"$approved_gep_5463"
  %approved2 = alloca [20 x i8]
  store [20 x i8] %"$approved_load_5464", [20 x i8]* %approved2
  %"$gasrem_5465" = load i64, i64* @_gasrem
  %"$gascmp_5466" = icmp ugt i64 1, %"$gasrem_5465"
  br i1 %"$gascmp_5466", label %"$out_of_gas_5467", label %"$have_gas_5468"

"$out_of_gas_5467":                               ; preds = %"$Some_5461"
  call void @_out_of_gas()
  br label %"$have_gas_5468"

"$have_gas_5468":                                 ; preds = %"$out_of_gas_5467", %"$Some_5461"
  %"$consume_5469" = sub i64 %"$gasrem_5465", 1
  store i64 %"$consume_5469", i64* @_gasrem
  %"$approved_5470" = load [20 x i8], [20 x i8]* %approved2
  store [20 x i8] %"$approved_5470", [20 x i8]* %approved2
  br label %"$matchsucc_5448"

"$empty_default_5452":                            ; preds = %"$have_gas_5446"
  br label %"$matchsucc_5448"

"$matchsucc_5448":                                ; preds = %"$have_gas_5468", %"$have_gas_5458", %"$empty_default_5452"
  %currentRegistrar = alloca [20 x i8]
  %"$execptr_load_5471" = load i8*, i8** @_execptr
  %"$currentRegistrar_5473" = call i8* @_fetch_field(i8* %"$execptr_load_5471", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_5472", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i32 0, i8* null, i32 1)
  %"$currentRegistrar_5474" = bitcast i8* %"$currentRegistrar_5473" to [20 x i8]*
  %"$currentRegistrar_5475" = load [20 x i8], [20 x i8]* %"$currentRegistrar_5474"
  store [20 x i8] %"$currentRegistrar_5475", [20 x i8]* %currentRegistrar
  %"$_literal_cost_currentRegistrar_5476" = alloca [20 x i8]
  %"$currentRegistrar_5477" = load [20 x i8], [20 x i8]* %currentRegistrar
  store [20 x i8] %"$currentRegistrar_5477", [20 x i8]* %"$_literal_cost_currentRegistrar_5476"
  %"$$_literal_cost_currentRegistrar_5476_5478" = bitcast [20 x i8]* %"$_literal_cost_currentRegistrar_5476" to i8*
  %"$_literal_cost_call_5479" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i8* %"$$_literal_cost_currentRegistrar_5476_5478")
  %"$gasadd_5480" = add i64 %"$_literal_cost_call_5479", 0
  %"$gasrem_5481" = load i64, i64* @_gasrem
  %"$gascmp_5482" = icmp ugt i64 %"$gasadd_5480", %"$gasrem_5481"
  br i1 %"$gascmp_5482", label %"$out_of_gas_5483", label %"$have_gas_5484"

"$out_of_gas_5483":                               ; preds = %"$matchsucc_5448"
  call void @_out_of_gas()
  br label %"$have_gas_5484"

"$have_gas_5484":                                 ; preds = %"$out_of_gas_5483", %"$matchsucc_5448"
  %"$consume_5485" = sub i64 %"$gasrem_5481", %"$gasadd_5480"
  store i64 %"$consume_5485", i64* @_gasrem
  %"$gasrem_5486" = load i64, i64* @_gasrem
  %"$gascmp_5487" = icmp ugt i64 1, %"$gasrem_5486"
  br i1 %"$gascmp_5487", label %"$out_of_gas_5488", label %"$have_gas_5489"

"$out_of_gas_5488":                               ; preds = %"$have_gas_5484"
  call void @_out_of_gas()
  br label %"$have_gas_5489"

"$have_gas_5489":                                 ; preds = %"$out_of_gas_5488", %"$have_gas_5484"
  %"$consume_5490" = sub i64 %"$gasrem_5486", 1
  store i64 %"$consume_5490", i64* @_gasrem
  %isOk = alloca %TName_Bool*
  %"$gasrem_5491" = load i64, i64* @_gasrem
  %"$gascmp_5492" = icmp ugt i64 1, %"$gasrem_5491"
  br i1 %"$gascmp_5492", label %"$out_of_gas_5493", label %"$have_gas_5494"

"$out_of_gas_5493":                               ; preds = %"$have_gas_5489"
  call void @_out_of_gas()
  br label %"$have_gas_5494"

"$have_gas_5494":                                 ; preds = %"$out_of_gas_5493", %"$have_gas_5489"
  %"$consume_5495" = sub i64 %"$gasrem_5491", 1
  store i64 %"$consume_5495", i64* @_gasrem
  %isRecordUnowned = alloca %TName_Bool*
  %"$execptr_load_5496" = load i8*, i8** @_execptr
  %"$eq_recordOwner_5497" = alloca [20 x i8]
  %"$recordOwner_5498" = load [20 x i8], [20 x i8]* %recordOwner
  store [20 x i8] %"$recordOwner_5498", [20 x i8]* %"$eq_recordOwner_5497"
  %"$$eq_recordOwner_5497_5499" = bitcast [20 x i8]* %"$eq_recordOwner_5497" to i8*
  %"$eq_ud-registry.zeroByStr20_5500" = alloca [20 x i8]
  %"$ud-registry.zeroByStr20_5501" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20
  store [20 x i8] %"$ud-registry.zeroByStr20_5501", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5500"
  %"$$eq_ud-registry.zeroByStr20_5500_5502" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5500" to i8*
  %"$eq_call_5503" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5496", i32 20, i8* %"$$eq_recordOwner_5497_5499", i8* %"$$eq_ud-registry.zeroByStr20_5500_5502")
  store %TName_Bool* %"$eq_call_5503", %TName_Bool** %isRecordUnowned
  %"$gasrem_5504" = load i64, i64* @_gasrem
  %"$gascmp_5505" = icmp ugt i64 1, %"$gasrem_5504"
  br i1 %"$gascmp_5505", label %"$out_of_gas_5506", label %"$have_gas_5507"

"$out_of_gas_5506":                               ; preds = %"$have_gas_5494"
  call void @_out_of_gas()
  br label %"$have_gas_5507"

"$have_gas_5507":                                 ; preds = %"$out_of_gas_5506", %"$have_gas_5494"
  %"$consume_5508" = sub i64 %"$gasrem_5504", 1
  store i64 %"$consume_5508", i64* @_gasrem
  %isUnapproved = alloca %TName_Bool*
  %"$execptr_load_5509" = load i8*, i8** @_execptr
  %"$eq_approved_5510" = alloca [20 x i8]
  %"$approved_5511" = load [20 x i8], [20 x i8]* %approved
  store [20 x i8] %"$approved_5511", [20 x i8]* %"$eq_approved_5510"
  %"$$eq_approved_5510_5512" = bitcast [20 x i8]* %"$eq_approved_5510" to i8*
  %"$eq_ud-registry.zeroByStr20_5513" = alloca [20 x i8]
  %"$ud-registry.zeroByStr20_5514" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20
  store [20 x i8] %"$ud-registry.zeroByStr20_5514", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5513"
  %"$$eq_ud-registry.zeroByStr20_5513_5515" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5513" to i8*
  %"$eq_call_5516" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5509", i32 20, i8* %"$$eq_approved_5510_5512", i8* %"$$eq_ud-registry.zeroByStr20_5513_5515")
  store %TName_Bool* %"$eq_call_5516", %TName_Bool** %isUnapproved
  %"$gasrem_5517" = load i64, i64* @_gasrem
  %"$gascmp_5518" = icmp ugt i64 1, %"$gasrem_5517"
  br i1 %"$gascmp_5518", label %"$out_of_gas_5519", label %"$have_gas_5520"

"$out_of_gas_5519":                               ; preds = %"$have_gas_5507"
  call void @_out_of_gas()
  br label %"$have_gas_5520"

"$have_gas_5520":                                 ; preds = %"$out_of_gas_5519", %"$have_gas_5507"
  %"$consume_5521" = sub i64 %"$gasrem_5517", 1
  store i64 %"$consume_5521", i64* @_gasrem
  %"$BoolUtils.andb_135" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.andb_5522" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb
  %"$BoolUtils.andb_fptr_5523" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5522", 0
  %"$BoolUtils.andb_envptr_5524" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5522", 1
  %"$isRecordUnowned_5525" = load %TName_Bool*, %TName_Bool** %isRecordUnowned
  %"$BoolUtils.andb_call_5526" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5523"(i8* %"$BoolUtils.andb_envptr_5524", %TName_Bool* %"$isRecordUnowned_5525")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5526", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135"
  %"$BoolUtils.andb_136" = alloca %TName_Bool*
  %"$$BoolUtils.andb_135_5527" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135"
  %"$$BoolUtils.andb_135_fptr_5528" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_5527", 0
  %"$$BoolUtils.andb_135_envptr_5529" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_5527", 1
  %"$isUnapproved_5530" = load %TName_Bool*, %TName_Bool** %isUnapproved
  %"$$BoolUtils.andb_135_call_5531" = call %TName_Bool* %"$$BoolUtils.andb_135_fptr_5528"(i8* %"$$BoolUtils.andb_135_envptr_5529", %TName_Bool* %"$isUnapproved_5530")
  store %TName_Bool* %"$$BoolUtils.andb_135_call_5531", %TName_Bool** %"$BoolUtils.andb_136"
  %"$$BoolUtils.andb_136_5532" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_136"
  store %TName_Bool* %"$$BoolUtils.andb_136_5532", %TName_Bool** %isOk
  %"$gasrem_5533" = load i64, i64* @_gasrem
  %"$gascmp_5534" = icmp ugt i64 2, %"$gasrem_5533"
  br i1 %"$gascmp_5534", label %"$out_of_gas_5535", label %"$have_gas_5536"

"$out_of_gas_5535":                               ; preds = %"$have_gas_5520"
  call void @_out_of_gas()
  br label %"$have_gas_5536"

"$have_gas_5536":                                 ; preds = %"$out_of_gas_5535", %"$have_gas_5520"
  %"$consume_5537" = sub i64 %"$gasrem_5533", 2
  store i64 %"$consume_5537", i64* @_gasrem
  %"$isOk_5539" = load %TName_Bool*, %TName_Bool** %isOk
  %"$isOk_tag_5540" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5539", i32 0, i32 0
  %"$isOk_tag_5541" = load i8, i8* %"$isOk_tag_5540"
  switch i8 %"$isOk_tag_5541", label %"$empty_default_5542" [
    i8 0, label %"$True_5543"
    i8 1, label %"$False_5641"
  ]

"$True_5543":                                     ; preds = %"$have_gas_5536"
  %"$isOk_5544" = bitcast %TName_Bool* %"$isOk_5539" to %CName_True*
  %"$gasrem_5545" = load i64, i64* @_gasrem
  %"$gascmp_5546" = icmp ugt i64 1, %"$gasrem_5545"
  br i1 %"$gascmp_5546", label %"$out_of_gas_5547", label %"$have_gas_5548"

"$out_of_gas_5547":                               ; preds = %"$True_5543"
  call void @_out_of_gas()
  br label %"$have_gas_5548"

"$have_gas_5548":                                 ; preds = %"$out_of_gas_5547", %"$True_5543"
  %"$consume_5549" = sub i64 %"$gasrem_5545", 1
  store i64 %"$consume_5549", i64* @_gasrem
  %"$execptr_load_5550" = load i8*, i8** @_execptr
  call void @_accept(i8* %"$execptr_load_5550")
  %"$gasrem_5551" = load i64, i64* @_gasrem
  %"$gascmp_5552" = icmp ugt i64 1, %"$gasrem_5551"
  br i1 %"$gascmp_5552", label %"$out_of_gas_5553", label %"$have_gas_5554"

"$out_of_gas_5553":                               ; preds = %"$have_gas_5548"
  call void @_out_of_gas()
  br label %"$have_gas_5554"

"$have_gas_5554":                                 ; preds = %"$out_of_gas_5553", %"$have_gas_5548"
  %"$consume_5555" = sub i64 %"$gasrem_5551", 1
  store i64 %"$consume_5555", i64* @_gasrem
  %msgs = alloca %TName_List_Message*
  %"$gasrem_5556" = load i64, i64* @_gasrem
  %"$gascmp_5557" = icmp ugt i64 1, %"$gasrem_5556"
  br i1 %"$gascmp_5557", label %"$out_of_gas_5558", label %"$have_gas_5559"

"$out_of_gas_5558":                               ; preds = %"$have_gas_5554"
  call void @_out_of_gas()
  br label %"$have_gas_5559"

"$have_gas_5559":                                 ; preds = %"$out_of_gas_5558", %"$have_gas_5554"
  %"$consume_5560" = sub i64 %"$gasrem_5556", 1
  store i64 %"$consume_5560", i64* @_gasrem
  %m = alloca i8*
  %"$gasrem_5561" = load i64, i64* @_gasrem
  %"$gascmp_5562" = icmp ugt i64 1, %"$gasrem_5561"
  br i1 %"$gascmp_5562", label %"$out_of_gas_5563", label %"$have_gas_5564"

"$out_of_gas_5563":                               ; preds = %"$have_gas_5559"
  call void @_out_of_gas()
  br label %"$have_gas_5564"

"$have_gas_5564":                                 ; preds = %"$out_of_gas_5563", %"$have_gas_5559"
  %"$consume_5565" = sub i64 %"$gasrem_5561", 1
  store i64 %"$consume_5565", i64* @_gasrem
  %"$msgobj_5566_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_5566_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_5566_salloc_load", i64 321)
  %"$msgobj_5566_salloc" = bitcast i8* %"$msgobj_5566_salloc_salloc" to [321 x i8]*
  %"$msgobj_5566" = bitcast [321 x i8]* %"$msgobj_5566_salloc" to i8*
  store i8 7, i8* %"$msgobj_5566"
  %"$msgobj_fname_5568" = getelementptr i8, i8* %"$msgobj_5566", i32 1
  %"$msgobj_fname_5569" = bitcast i8* %"$msgobj_fname_5568" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_5567", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_5569"
  %"$msgobj_td_5570" = getelementptr i8, i8* %"$msgobj_5566", i32 17
  %"$msgobj_td_5571" = bitcast i8* %"$msgobj_td_5570" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_5571"
  %"$msgobj_v_5573" = getelementptr i8, i8* %"$msgobj_5566", i32 25
  %"$msgobj_v_5574" = bitcast i8* %"$msgobj_v_5573" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_5572", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_5574"
  %"$msgobj_fname_5576" = getelementptr i8, i8* %"$msgobj_5566", i32 41
  %"$msgobj_fname_5577" = bitcast i8* %"$msgobj_fname_5576" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_5575", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_5577"
  %"$msgobj_td_5578" = getelementptr i8, i8* %"$msgobj_5566", i32 57
  %"$msgobj_td_5579" = bitcast i8* %"$msgobj_td_5578" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_5579"
  %"$msgobj_v_5580" = getelementptr i8, i8* %"$msgobj_5566", i32 65
  %"$msgobj_v_5581" = bitcast i8* %"$msgobj_v_5580" to %Uint128*
  store %Uint128 %_amount, %Uint128* %"$msgobj_v_5581"
  %"$msgobj_fname_5583" = getelementptr i8, i8* %"$msgobj_5566", i32 81
  %"$msgobj_fname_5584" = bitcast i8* %"$msgobj_fname_5583" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_5582", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_5584"
  %"$msgobj_td_5585" = getelementptr i8, i8* %"$msgobj_5566", i32 97
  %"$msgobj_td_5586" = bitcast i8* %"$msgobj_td_5585" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_5586"
  %"$currentRegistrar_5587" = load [20 x i8], [20 x i8]* %currentRegistrar
  %"$msgobj_v_5588" = getelementptr i8, i8* %"$msgobj_5566", i32 105
  %"$msgobj_v_5589" = bitcast i8* %"$msgobj_v_5588" to [20 x i8]*
  store [20 x i8] %"$currentRegistrar_5587", [20 x i8]* %"$msgobj_v_5589"
  %"$msgobj_fname_5591" = getelementptr i8, i8* %"$msgobj_5566", i32 125
  %"$msgobj_fname_5592" = bitcast i8* %"$msgobj_fname_5591" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_5590", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_5592"
  %"$msgobj_td_5593" = getelementptr i8, i8* %"$msgobj_5566", i32 141
  %"$msgobj_td_5594" = bitcast i8* %"$msgobj_td_5593" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_5594"
  %"$msgobj_v_5595" = getelementptr i8, i8* %"$msgobj_5566", i32 149
  %"$msgobj_v_5596" = bitcast i8* %"$msgobj_v_5595" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_5596"
  %"$msgobj_fname_5598" = getelementptr i8, i8* %"$msgobj_5566", i32 169
  %"$msgobj_fname_5599" = bitcast i8* %"$msgobj_fname_5598" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_5597", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_5599"
  %"$msgobj_td_5600" = getelementptr i8, i8* %"$msgobj_5566", i32 185
  %"$msgobj_td_5601" = bitcast i8* %"$msgobj_td_5600" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_5601"
  %"$node_5602" = load [32 x i8], [32 x i8]* %node
  %"$msgobj_v_5603" = getelementptr i8, i8* %"$msgobj_5566", i32 193
  %"$msgobj_v_5604" = bitcast i8* %"$msgobj_v_5603" to [32 x i8]*
  store [32 x i8] %"$node_5602", [32 x i8]* %"$msgobj_v_5604"
  %"$msgobj_fname_5606" = getelementptr i8, i8* %"$msgobj_5566", i32 225
  %"$msgobj_fname_5607" = bitcast i8* %"$msgobj_fname_5606" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_5605", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_5607"
  %"$msgobj_td_5608" = getelementptr i8, i8* %"$msgobj_5566", i32 241
  %"$msgobj_td_5609" = bitcast i8* %"$msgobj_td_5608" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_5609"
  %"$msgobj_v_5610" = getelementptr i8, i8* %"$msgobj_5566", i32 249
  %"$msgobj_v_5611" = bitcast i8* %"$msgobj_v_5610" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_5611"
  %"$msgobj_fname_5613" = getelementptr i8, i8* %"$msgobj_5566", i32 281
  %"$msgobj_fname_5614" = bitcast i8* %"$msgobj_fname_5613" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_5612", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_5614"
  %"$msgobj_td_5615" = getelementptr i8, i8* %"$msgobj_5566", i32 297
  %"$msgobj_td_5616" = bitcast i8* %"$msgobj_td_5615" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_5616"
  %"$msgobj_v_5617" = getelementptr i8, i8* %"$msgobj_5566", i32 305
  %"$msgobj_v_5618" = bitcast i8* %"$msgobj_v_5617" to %String*
  store %String %label, %String* %"$msgobj_v_5618"
  store i8* %"$msgobj_5566", i8** %m
  %"$gasrem_5620" = load i64, i64* @_gasrem
  %"$gascmp_5621" = icmp ugt i64 1, %"$gasrem_5620"
  br i1 %"$gascmp_5621", label %"$out_of_gas_5622", label %"$have_gas_5623"

"$out_of_gas_5622":                               ; preds = %"$have_gas_5564"
  call void @_out_of_gas()
  br label %"$have_gas_5623"

"$have_gas_5623":                                 ; preds = %"$out_of_gas_5622", %"$have_gas_5564"
  %"$consume_5624" = sub i64 %"$gasrem_5620", 1
  store i64 %"$consume_5624", i64* @_gasrem
  %"$ud-registry.oneMsg_134" = alloca %TName_List_Message*
  %"$ud-registry.oneMsg_5625" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg
  %"$ud-registry.oneMsg_fptr_5626" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_5625", 0
  %"$ud-registry.oneMsg_envptr_5627" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_5625", 1
  %"$m_5628" = load i8*, i8** %m
  %"$ud-registry.oneMsg_call_5629" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_5626"(i8* %"$ud-registry.oneMsg_envptr_5627", i8* %"$m_5628")
  store %TName_List_Message* %"$ud-registry.oneMsg_call_5629", %TName_List_Message** %"$ud-registry.oneMsg_134"
  %"$$ud-registry.oneMsg_134_5630" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_134"
  store %TName_List_Message* %"$$ud-registry.oneMsg_134_5630", %TName_List_Message** %msgs
  %"$msgs_5631" = load %TName_List_Message*, %TName_List_Message** %msgs
  %"$$msgs_5631_5632" = bitcast %TName_List_Message* %"$msgs_5631" to i8*
  %"$_literal_cost_call_5633" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_5631_5632")
  %"$gasrem_5634" = load i64, i64* @_gasrem
  %"$gascmp_5635" = icmp ugt i64 %"$_literal_cost_call_5633", %"$gasrem_5634"
  br i1 %"$gascmp_5635", label %"$out_of_gas_5636", label %"$have_gas_5637"

"$out_of_gas_5636":                               ; preds = %"$have_gas_5623"
  call void @_out_of_gas()
  br label %"$have_gas_5637"

"$have_gas_5637":                                 ; preds = %"$out_of_gas_5636", %"$have_gas_5623"
  %"$consume_5638" = sub i64 %"$gasrem_5634", %"$_literal_cost_call_5633"
  store i64 %"$consume_5638", i64* @_gasrem
  %"$execptr_load_5639" = load i8*, i8** @_execptr
  %"$msgs_5640" = load %TName_List_Message*, %TName_List_Message** %msgs
  call void @_send(i8* %"$execptr_load_5639", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_5640")
  br label %"$matchsucc_5538"

"$False_5641":                                    ; preds = %"$have_gas_5536"
  %"$isOk_5642" = bitcast %TName_Bool* %"$isOk_5539" to %CName_False*
  br label %"$matchsucc_5538"

"$empty_default_5542":                            ; preds = %"$have_gas_5536"
  br label %"$matchsucc_5538"

"$matchsucc_5538":                                ; preds = %"$False_5641", %"$have_gas_5637", %"$empty_default_5542"
  ret void
}

declare void @_accept(i8*)

define void @register(i8* %0) {
entry:
  %"$_amount_5644" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5645" = bitcast i8* %"$_amount_5644" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5645"
  %"$_sender_5646" = getelementptr i8, i8* %0, i32 16
  %"$_sender_5647" = bitcast i8* %"$_sender_5646" to [20 x i8]*
  %"$parent_5648" = getelementptr i8, i8* %0, i32 36
  %"$parent_5649" = bitcast i8* %"$parent_5648" to [32 x i8]*
  %"$label_5650" = getelementptr i8, i8* %0, i32 68
  %"$label_5651" = bitcast i8* %"$label_5650" to %String*
  %label = load %String, %String* %"$label_5651"
  call void @"$register_5363"(%Uint128 %_amount, [20 x i8]* %"$_sender_5647", [32 x i8]* %"$parent_5649", %String %label)
  ret void
}

define internal void @"$onResolverConfigured_5652"(%Uint128 %_amount, [20 x i8]* %"$_sender_5653", [32 x i8]* %"$node_5654") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5653"
  %node = load [32 x i8], [32 x i8]* %"$node_5654"
  %maybeRecord = alloca %TName_Option_ud-registry.Record*
  %"$indices_buf_5655_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_5655_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5655_salloc_load", i64 32)
  %"$indices_buf_5655_salloc" = bitcast i8* %"$indices_buf_5655_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5655" = bitcast [32 x i8]* %"$indices_buf_5655_salloc" to i8*
  %"$indices_gep_5656" = getelementptr i8, i8* %"$indices_buf_5655", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_5656" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast
  %"$execptr_load_5657" = load i8*, i8** @_execptr
  %"$maybeRecord_5659" = call i8* @_fetch_field(i8* %"$execptr_load_5657", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5658", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_5655", i32 1)
  %"$maybeRecord_5660" = bitcast i8* %"$maybeRecord_5659" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_5660", %TName_Option_ud-registry.Record** %maybeRecord
  %"$maybeRecord_5661" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord
  %"$$maybeRecord_5661_5662" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5661" to i8*
  %"$_literal_cost_call_5663" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_5661_5662")
  %"$gasadd_5664" = add i64 %"$_literal_cost_call_5663", 0
  %"$gasadd_5665" = add i64 %"$gasadd_5664", 1
  %"$gasrem_5666" = load i64, i64* @_gasrem
  %"$gascmp_5667" = icmp ugt i64 %"$gasadd_5665", %"$gasrem_5666"
  br i1 %"$gascmp_5667", label %"$out_of_gas_5668", label %"$have_gas_5669"

"$out_of_gas_5668":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5669"

"$have_gas_5669":                                 ; preds = %"$out_of_gas_5668", %entry
  %"$consume_5670" = sub i64 %"$gasrem_5666", %"$gasadd_5665"
  store i64 %"$consume_5670", i64* @_gasrem
  %"$gasrem_5671" = load i64, i64* @_gasrem
  %"$gascmp_5672" = icmp ugt i64 2, %"$gasrem_5671"
  br i1 %"$gascmp_5672", label %"$out_of_gas_5673", label %"$have_gas_5674"

"$out_of_gas_5673":                               ; preds = %"$have_gas_5669"
  call void @_out_of_gas()
  br label %"$have_gas_5674"

"$have_gas_5674":                                 ; preds = %"$out_of_gas_5673", %"$have_gas_5669"
  %"$consume_5675" = sub i64 %"$gasrem_5671", 2
  store i64 %"$consume_5675", i64* @_gasrem
  %"$maybeRecord_5677" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord
  %"$maybeRecord_tag_5678" = getelementptr inbounds %TName_Option_ud-registry.Record, %TName_Option_ud-registry.Record* %"$maybeRecord_5677", i32 0, i32 0
  %"$maybeRecord_tag_5679" = load i8, i8* %"$maybeRecord_tag_5678"
  switch i8 %"$maybeRecord_tag_5679", label %"$empty_default_5680" [
    i8 1, label %"$None_5681"
    i8 0, label %"$Some_5683"
  ]

"$None_5681":                                     ; preds = %"$have_gas_5674"
  %"$maybeRecord_5682" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5677" to %CName_None_ud-registry.Record*
  br label %"$matchsucc_5676"

"$Some_5683":                                     ; preds = %"$have_gas_5674"
  %"$maybeRecord_5684" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5677" to %CName_Some_ud-registry.Record*
  %"$record_gep_5685" = getelementptr inbounds %CName_Some_ud-registry.Record, %CName_Some_ud-registry.Record* %"$maybeRecord_5684", i32 0, i32 1
  %"$record_load_5686" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %"$record_gep_5685"
  %record = alloca %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$record_load_5686", %TName_ud-registry.Record** %record
  %"$gasrem_5687" = load i64, i64* @_gasrem
  %"$gascmp_5688" = icmp ugt i64 1, %"$gasrem_5687"
  br i1 %"$gascmp_5688", label %"$out_of_gas_5689", label %"$have_gas_5690"

"$out_of_gas_5689":                               ; preds = %"$Some_5683"
  call void @_out_of_gas()
  br label %"$have_gas_5690"

"$have_gas_5690":                                 ; preds = %"$out_of_gas_5689", %"$Some_5683"
  %"$consume_5691" = sub i64 %"$gasrem_5687", 1
  store i64 %"$consume_5691", i64* @_gasrem
  %"$record_5693" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %record
  %"$record_tag_5694" = getelementptr inbounds %TName_ud-registry.Record, %TName_ud-registry.Record* %"$record_5693", i32 0, i32 0
  %"$record_tag_5695" = load i8, i8* %"$record_tag_5694"
  switch i8 %"$record_tag_5695", label %"$empty_default_5696" [
    i8 0, label %"$ud-registry.Record_5697"
  ]

"$ud-registry.Record_5697":                       ; preds = %"$have_gas_5690"
  %"$record_5698" = bitcast %TName_ud-registry.Record* %"$record_5693" to %CName_ud-registry.Record*
  %"$owner_gep_5699" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_5698", i32 0, i32 1
  %"$owner_load_5700" = load [20 x i8], [20 x i8]* %"$owner_gep_5699"
  %owner = alloca [20 x i8]
  store [20 x i8] %"$owner_load_5700", [20 x i8]* %owner
  %"$resolver_gep_5701" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_5698", i32 0, i32 2
  %"$resolver_load_5702" = load [20 x i8], [20 x i8]* %"$resolver_gep_5701"
  %resolver = alloca [20 x i8]
  store [20 x i8] %"$resolver_load_5702", [20 x i8]* %resolver
  %"$gasrem_5703" = load i64, i64* @_gasrem
  %"$gascmp_5704" = icmp ugt i64 1, %"$gasrem_5703"
  br i1 %"$gascmp_5704", label %"$out_of_gas_5705", label %"$have_gas_5706"

"$out_of_gas_5705":                               ; preds = %"$ud-registry.Record_5697"
  call void @_out_of_gas()
  br label %"$have_gas_5706"

"$have_gas_5706":                                 ; preds = %"$out_of_gas_5705", %"$ud-registry.Record_5697"
  %"$consume_5707" = sub i64 %"$gasrem_5703", 1
  store i64 %"$consume_5707", i64* @_gasrem
  %isOk = alloca %TName_Bool*
  %"$execptr_load_5708" = load i8*, i8** @_execptr
  %"$eq_resolver_5709" = alloca [20 x i8]
  %"$resolver_5710" = load [20 x i8], [20 x i8]* %resolver
  store [20 x i8] %"$resolver_5710", [20 x i8]* %"$eq_resolver_5709"
  %"$$eq_resolver_5709_5711" = bitcast [20 x i8]* %"$eq_resolver_5709" to i8*
  %"$eq__sender_5712" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_5712"
  %"$$eq__sender_5712_5713" = bitcast [20 x i8]* %"$eq__sender_5712" to i8*
  %"$eq_call_5714" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5708", i32 20, i8* %"$$eq_resolver_5709_5711", i8* %"$$eq__sender_5712_5713")
  store %TName_Bool* %"$eq_call_5714", %TName_Bool** %isOk
  %"$gasrem_5715" = load i64, i64* @_gasrem
  %"$gascmp_5716" = icmp ugt i64 2, %"$gasrem_5715"
  br i1 %"$gascmp_5716", label %"$out_of_gas_5717", label %"$have_gas_5718"

"$out_of_gas_5717":                               ; preds = %"$have_gas_5706"
  call void @_out_of_gas()
  br label %"$have_gas_5718"

"$have_gas_5718":                                 ; preds = %"$out_of_gas_5717", %"$have_gas_5706"
  %"$consume_5719" = sub i64 %"$gasrem_5715", 2
  store i64 %"$consume_5719", i64* @_gasrem
  %"$isOk_5721" = load %TName_Bool*, %TName_Bool** %isOk
  %"$isOk_tag_5722" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5721", i32 0, i32 0
  %"$isOk_tag_5723" = load i8, i8* %"$isOk_tag_5722"
  switch i8 %"$isOk_tag_5723", label %"$empty_default_5724" [
    i8 0, label %"$True_5725"
    i8 1, label %"$False_5765"
  ]

"$True_5725":                                     ; preds = %"$have_gas_5718"
  %"$isOk_5726" = bitcast %TName_Bool* %"$isOk_5721" to %CName_True*
  %"$gasrem_5727" = load i64, i64* @_gasrem
  %"$gascmp_5728" = icmp ugt i64 1, %"$gasrem_5727"
  br i1 %"$gascmp_5728", label %"$out_of_gas_5729", label %"$have_gas_5730"

"$out_of_gas_5729":                               ; preds = %"$True_5725"
  call void @_out_of_gas()
  br label %"$have_gas_5730"

"$have_gas_5730":                                 ; preds = %"$out_of_gas_5729", %"$True_5725"
  %"$consume_5731" = sub i64 %"$gasrem_5727", 1
  store i64 %"$consume_5731", i64* @_gasrem
  %e = alloca i8*
  %"$gasrem_5732" = load i64, i64* @_gasrem
  %"$gascmp_5733" = icmp ugt i64 1, %"$gasrem_5732"
  br i1 %"$gascmp_5733", label %"$out_of_gas_5734", label %"$have_gas_5735"

"$out_of_gas_5734":                               ; preds = %"$have_gas_5730"
  call void @_out_of_gas()
  br label %"$have_gas_5735"

"$have_gas_5735":                                 ; preds = %"$out_of_gas_5734", %"$have_gas_5730"
  %"$consume_5736" = sub i64 %"$gasrem_5732", 1
  store i64 %"$consume_5736", i64* @_gasrem
  %"$ud-registry.eConfigured_140" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }
  %"$ud-registry.eConfigured_5737" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured
  %"$ud-registry.eConfigured_fptr_5738" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5737", 0
  %"$ud-registry.eConfigured_envptr_5739" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5737", 1
  %"$ud-registry.eConfigured_node_5740" = alloca [32 x i8]
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_5740"
  %"$ud-registry.eConfigured_call_5741" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_5738"(i8* %"$ud-registry.eConfigured_envptr_5739", [32 x i8]* %"$ud-registry.eConfigured_node_5740")
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_5741", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_140"
  %"$ud-registry.eConfigured_141" = alloca { i8* (i8*, [20 x i8]*)*, i8* }
  %"$$ud-registry.eConfigured_140_5742" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_140"
  %"$$ud-registry.eConfigured_140_fptr_5743" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_140_5742", 0
  %"$$ud-registry.eConfigured_140_envptr_5744" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_140_5742", 1
  %"$$ud-registry.eConfigured_140_owner_5745" = alloca [20 x i8]
  %"$owner_5746" = load [20 x i8], [20 x i8]* %owner
  store [20 x i8] %"$owner_5746", [20 x i8]* %"$$ud-registry.eConfigured_140_owner_5745"
  %"$$ud-registry.eConfigured_140_call_5747" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_140_fptr_5743"(i8* %"$$ud-registry.eConfigured_140_envptr_5744", [20 x i8]* %"$$ud-registry.eConfigured_140_owner_5745")
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_140_call_5747", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_141"
  %"$ud-registry.eConfigured_142" = alloca i8*
  %"$$ud-registry.eConfigured_141_5748" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_141"
  %"$$ud-registry.eConfigured_141_fptr_5749" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_141_5748", 0
  %"$$ud-registry.eConfigured_141_envptr_5750" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_141_5748", 1
  %"$$ud-registry.eConfigured_141_resolver_5751" = alloca [20 x i8]
  %"$resolver_5752" = load [20 x i8], [20 x i8]* %resolver
  store [20 x i8] %"$resolver_5752", [20 x i8]* %"$$ud-registry.eConfigured_141_resolver_5751"
  %"$$ud-registry.eConfigured_141_call_5753" = call i8* %"$$ud-registry.eConfigured_141_fptr_5749"(i8* %"$$ud-registry.eConfigured_141_envptr_5750", [20 x i8]* %"$$ud-registry.eConfigured_141_resolver_5751")
  store i8* %"$$ud-registry.eConfigured_141_call_5753", i8** %"$ud-registry.eConfigured_142"
  %"$$ud-registry.eConfigured_142_5754" = load i8*, i8** %"$ud-registry.eConfigured_142"
  store i8* %"$$ud-registry.eConfigured_142_5754", i8** %e
  %"$e_5755" = load i8*, i8** %e
  %"$_literal_cost_call_5757" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5755")
  %"$gasrem_5758" = load i64, i64* @_gasrem
  %"$gascmp_5759" = icmp ugt i64 %"$_literal_cost_call_5757", %"$gasrem_5758"
  br i1 %"$gascmp_5759", label %"$out_of_gas_5760", label %"$have_gas_5761"

"$out_of_gas_5760":                               ; preds = %"$have_gas_5735"
  call void @_out_of_gas()
  br label %"$have_gas_5761"

"$have_gas_5761":                                 ; preds = %"$out_of_gas_5760", %"$have_gas_5735"
  %"$consume_5762" = sub i64 %"$gasrem_5758", %"$_literal_cost_call_5757"
  store i64 %"$consume_5762", i64* @_gasrem
  %"$execptr_load_5763" = load i8*, i8** @_execptr
  %"$e_5764" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_5763", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5764")
  br label %"$matchsucc_5720"

"$False_5765":                                    ; preds = %"$have_gas_5718"
  %"$isOk_5766" = bitcast %TName_Bool* %"$isOk_5721" to %CName_False*
  br label %"$matchsucc_5720"

"$empty_default_5724":                            ; preds = %"$have_gas_5718"
  br label %"$matchsucc_5720"

"$matchsucc_5720":                                ; preds = %"$False_5765", %"$have_gas_5761", %"$empty_default_5724"
  br label %"$matchsucc_5692"

"$empty_default_5696":                            ; preds = %"$have_gas_5690"
  br label %"$matchsucc_5692"

"$matchsucc_5692":                                ; preds = %"$matchsucc_5720", %"$empty_default_5696"
  br label %"$matchsucc_5676"

"$empty_default_5680":                            ; preds = %"$have_gas_5674"
  br label %"$matchsucc_5676"

"$matchsucc_5676":                                ; preds = %"$matchsucc_5692", %"$None_5681", %"$empty_default_5680"
  ret void
}

define void @onResolverConfigured(i8* %0) {
entry:
  %"$_amount_5768" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5769" = bitcast i8* %"$_amount_5768" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5769"
  %"$_sender_5770" = getelementptr i8, i8* %0, i32 16
  %"$_sender_5771" = bitcast i8* %"$_sender_5770" to [20 x i8]*
  %"$node_5772" = getelementptr i8, i8* %0, i32 36
  %"$node_5773" = bitcast i8* %"$node_5772" to [32 x i8]*
  call void @"$onResolverConfigured_5652"(%Uint128 %_amount, [20 x i8]* %"$_sender_5771", [32 x i8]* %"$node_5773")
  ret void
}
