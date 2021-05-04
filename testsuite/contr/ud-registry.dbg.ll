

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
@"$admins_2839" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_2889" = unnamed_addr constant [26 x i8] c"Sender not root node owner"
@"$records_2927" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_2984" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$approvals_3082" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$stringlit_3128" = unnamed_addr constant [21 x i8] c"Sender not node owner"
@"$operators_3165" = unnamed_addr constant [10 x i8] c"operators\00"
@"$operators_3321" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3376" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3392" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3426" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3510" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_3565" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3570" = unnamed_addr constant [18 x i8] c"onConfigureSuccess"
@"$stringlit_3573" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3580" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3587" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3594" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_3640" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$stringlit_3678" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3683" = unnamed_addr constant [18 x i8] c"onConfigureFailure"
@"$stringlit_3686" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3693" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3701" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3708" = unnamed_addr constant [10 x i8] c"_recipient"
@"$records_3755" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3771" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3805" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3890" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_3947" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$records_3985" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4001" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_4035" = unnamed_addr constant [10 x i8] c"operators\00"
@"$approvals_4100" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$records_4129" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4185" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4190" = unnamed_addr constant [17 x i8] c"onTransferSuccess"
@"$stringlit_4193" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_4200" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4207" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4214" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_4260" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$stringlit_4298" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4303" = unnamed_addr constant [17 x i8] c"onTransferFailure"
@"$stringlit_4306" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_4313" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4320" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4327" = unnamed_addr constant [10 x i8] c"_recipient"
@"$records_4372" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4388" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_4422" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_4504" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4568" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$records_4598" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4655" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4660" = unnamed_addr constant [15 x i8] c"onAssignSuccess"
@"$stringlit_4663" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_4670" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_4677" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4684" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4691" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_4737" = unnamed_addr constant [45 x i8] c"Sender not parent owner, approved or operator"
@"$stringlit_4775" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4780" = unnamed_addr constant [15 x i8] c"onAssignFailure"
@"$stringlit_4783" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_4790" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_4797" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4805" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4812" = unnamed_addr constant [10 x i8] c"_recipient"
@"$admins_4857" = unnamed_addr constant [7 x i8] c"admins\00"
@"$records_4895" = unnamed_addr constant [8 x i8] c"records\00"
@"$records_4912" = unnamed_addr constant [8 x i8] c"records\00"
@"$registrar_4926" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$records_5183" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_5240" = unnamed_addr constant [12 x i8] c"Sender admin"
@"$admins_5277" = unnamed_addr constant [7 x i8] c"admins\00"
@"$registrar_5357" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$records_5395" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_5412" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$registrar_5476" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$stringlit_5571" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_5576" = unnamed_addr constant [8 x i8] c"register"
@"$stringlit_5579" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_5586" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_5594" = unnamed_addr constant [6 x i8] c"origin"
@"$stringlit_5601" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_5609" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_5616" = unnamed_addr constant [5 x i8] c"label"
@"$records_5662" = unnamed_addr constant [8 x i8] c"records\00"
@_tydescr_table = constant [28 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %_TyDescrTy_Typ* @"$TyDescr_Event_298", %_TyDescrTy_Typ* @"$TyDescr_Int64_280", %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ* @"$TyDescr_Uint256_290", %_TyDescrTy_Typ* @"$TyDescr_Uint32_278", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_304", %_TyDescrTy_Typ* @"$TyDescr_Uint64_282", %_TyDescrTy_Typ* @"$TyDescr_Bnum_294", %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ* @"$TyDescr_Map_322", %_TyDescrTy_Typ* @"$TyDescr_Exception_300", %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ* @"$TyDescr_Int256_288", %_TyDescrTy_Typ* @"$TyDescr_Int128_284", %_TyDescrTy_Typ* @"$TyDescr_Map_320", %_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", %_TyDescrTy_Typ* @"$TyDescr_Bystr_302", %_TyDescrTy_Typ* @"$TyDescr_Message_296", %_TyDescrTy_Typ* @"$TyDescr_Map_321", %_TyDescrTy_Typ* @"$TyDescr_Int32_276"]
@_tydescr_table_length = constant i32 28

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
  %"$Emp_2600" = bitcast i8* %"$_new_empty_map_call_2599" to %Map_ByStr32_ud-registry.Record*
  store %Map_ByStr32_ud-registry.Record* %"$Emp_2600", %Map_ByStr32_ud-registry.Record** %empty, align 8, !dbg !270
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
  %"$_put_2627" = bitcast i8* %"$put_call_2626" to %Map_ByStr32_ud-registry.Record*
  store %Map_ByStr32_ud-registry.Record* %"$_put_2627", %Map_ByStr32_ud-registry.Record** %"$records_269", align 8, !dbg !272
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
  %"$Emp_2650" = bitcast i8* %"$_new_empty_map_call_2649" to %Map_ByStr32_ByStr20*
  store %Map_ByStr32_ByStr20* %"$Emp_2650", %Map_ByStr32_ByStr20** %"$approvals_271", align 8, !dbg !274
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
  %"$Emp_2662" = bitcast i8* %"$_new_empty_map_call_2661" to %"Map_ByStr20_List_(ByStr20)"*
  store %"Map_ByStr20_List_(ByStr20)"* %"$Emp_2662", %"Map_ByStr20_List_(ByStr20)"** %"$operators_272", align 8, !dbg !275
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

define internal void @"$setAdmin_2683"(%Uint128 %_amount, [20 x i8]* %"$_sender_2684", [20 x i8]* %"$address_2685", %TName_Bool* %isApproved) !dbg !277 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2684", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_2685", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_2686" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_2688" = call i8* @_fetch_field(i8* %"$execptr_load_2686", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2687", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i32 1), !dbg !278
  %"$currentAdmins_2689" = bitcast i8* %"$currentAdmins_2688" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_2689", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_2690" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_2690_2691" = bitcast %TName_List_ByStr20* %"$currentAdmins_2690" to i8*
  %"$_literal_cost_call_2692" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$currentAdmins_2690_2691")
  %"$gasadd_2693" = add i64 %"$_literal_cost_call_2692", 0
  %"$gasrem_2694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2695" = icmp ugt i64 %"$gasadd_2693", %"$gasrem_2694"
  br i1 %"$gascmp_2695", label %"$out_of_gas_2696", label %"$have_gas_2697"

"$out_of_gas_2696":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2697"

"$have_gas_2697":                                 ; preds = %"$out_of_gas_2696", %entry
  %"$consume_2698" = sub i64 %"$gasrem_2694", %"$gasadd_2693"
  store i64 %"$consume_2698", i64* @_gasrem, align 8
  %"$gasrem_2699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2700" = icmp ugt i64 1, %"$gasrem_2699"
  br i1 %"$gascmp_2700", label %"$out_of_gas_2701", label %"$have_gas_2702"

"$out_of_gas_2701":                               ; preds = %"$have_gas_2697"
  call void @_out_of_gas()
  br label %"$have_gas_2702"

"$have_gas_2702":                                 ; preds = %"$out_of_gas_2701", %"$have_gas_2697"
  %"$consume_2703" = sub i64 %"$gasrem_2699", 1
  store i64 %"$consume_2703", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_2704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2705" = icmp ugt i64 1, %"$gasrem_2704"
  br i1 %"$gascmp_2705", label %"$out_of_gas_2706", label %"$have_gas_2707"

"$out_of_gas_2706":                               ; preds = %"$have_gas_2702"
  call void @_out_of_gas()
  br label %"$have_gas_2707"

"$have_gas_2707":                                 ; preds = %"$out_of_gas_2706", %"$have_gas_2702"
  %"$consume_2708" = sub i64 %"$gasrem_2704", 1
  store i64 %"$consume_2708", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_51" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_2709" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_2710" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2709", 0
  %"$ud-registry.listByStr20Contains_envptr_2711" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2709", 1
  %"$currentAdmins_2712" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_2713" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_2710"(i8* %"$ud-registry.listByStr20Contains_envptr_2711", %TName_List_ByStr20* %"$currentAdmins_2712"), !dbg !279
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_2713", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_51", align 8, !dbg !279
  %"$ud-registry.listByStr20Contains_52" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_51_2714" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_51", align 8
  %"$$ud-registry.listByStr20Contains_51_fptr_2715" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_51_2714", 0
  %"$$ud-registry.listByStr20Contains_51_envptr_2716" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_51_2714", 1
  %"$$ud-registry.listByStr20Contains_51__sender_2717" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_51__sender_2717", align 1
  %"$$ud-registry.listByStr20Contains_51_call_2718" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_51_fptr_2715"(i8* %"$$ud-registry.listByStr20Contains_51_envptr_2716", [20 x i8]* %"$$ud-registry.listByStr20Contains_51__sender_2717"), !dbg !279
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_51_call_2718", %TName_Bool** %"$ud-registry.listByStr20Contains_52", align 8, !dbg !279
  %"$$ud-registry.listByStr20Contains_52_2719" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_52", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_52_2719", %TName_Bool** %isSenderAdmin, align 8, !dbg !279
  %"$gasrem_2720" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2721" = icmp ugt i64 2, %"$gasrem_2720"
  br i1 %"$gascmp_2721", label %"$out_of_gas_2722", label %"$have_gas_2723"

"$out_of_gas_2722":                               ; preds = %"$have_gas_2707"
  call void @_out_of_gas()
  br label %"$have_gas_2723"

"$have_gas_2723":                                 ; preds = %"$out_of_gas_2722", %"$have_gas_2707"
  %"$consume_2724" = sub i64 %"$gasrem_2720", 2
  store i64 %"$consume_2724", i64* @_gasrem, align 8
  %"$isSenderAdmin_2726" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_2727" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_2726", i32 0, i32 0
  %"$isSenderAdmin_tag_2728" = load i8, i8* %"$isSenderAdmin_tag_2727", align 1
  switch i8 %"$isSenderAdmin_tag_2728", label %"$empty_default_2729" [
    i8 0, label %"$True_2730"
    i8 1, label %"$False_2872"
  ], !dbg !280

"$True_2730":                                     ; preds = %"$have_gas_2723"
  %"$isSenderAdmin_2731" = bitcast %TName_Bool* %"$isSenderAdmin_2726" to %CName_True*
  %"$gasrem_2732" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2733" = icmp ugt i64 1, %"$gasrem_2732"
  br i1 %"$gascmp_2733", label %"$out_of_gas_2734", label %"$have_gas_2735"

"$out_of_gas_2734":                               ; preds = %"$True_2730"
  call void @_out_of_gas()
  br label %"$have_gas_2735"

"$have_gas_2735":                                 ; preds = %"$out_of_gas_2734", %"$True_2730"
  %"$consume_2736" = sub i64 %"$gasrem_2732", 1
  store i64 %"$consume_2736", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_2737" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2738" = icmp ugt i64 1, %"$gasrem_2737"
  br i1 %"$gascmp_2738", label %"$out_of_gas_2739", label %"$have_gas_2740"

"$out_of_gas_2739":                               ; preds = %"$have_gas_2735"
  call void @_out_of_gas()
  br label %"$have_gas_2740"

"$have_gas_2740":                                 ; preds = %"$out_of_gas_2739", %"$have_gas_2735"
  %"$consume_2741" = sub i64 %"$gasrem_2737", 1
  store i64 %"$consume_2741", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_2742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2743" = icmp ugt i64 1, %"$gasrem_2742"
  br i1 %"$gascmp_2743", label %"$out_of_gas_2744", label %"$have_gas_2745"

"$out_of_gas_2744":                               ; preds = %"$have_gas_2740"
  call void @_out_of_gas()
  br label %"$have_gas_2745"

"$have_gas_2745":                                 ; preds = %"$out_of_gas_2744", %"$have_gas_2740"
  %"$consume_2746" = sub i64 %"$gasrem_2742", 1
  store i64 %"$consume_2746", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Excludes_46" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Excludes_2747" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes, align 8
  %"$ud-registry.listByStr20Excludes_fptr_2748" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_2747", 0
  %"$ud-registry.listByStr20Excludes_envptr_2749" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_2747", 1
  %"$currentAdmins_2750" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Excludes_call_2751" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_fptr_2748"(i8* %"$ud-registry.listByStr20Excludes_envptr_2749", %TName_List_ByStr20* %"$currentAdmins_2750"), !dbg !281
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_call_2751", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_46", align 8, !dbg !281
  %"$ud-registry.listByStr20Excludes_47" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Excludes_46_2752" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_46", align 8
  %"$$ud-registry.listByStr20Excludes_46_fptr_2753" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_46_2752", 0
  %"$$ud-registry.listByStr20Excludes_46_envptr_2754" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_46_2752", 1
  %"$$ud-registry.listByStr20Excludes_46_address_2755" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20Excludes_46_address_2755", align 1
  %"$$ud-registry.listByStr20Excludes_46_call_2756" = call %TName_Bool* %"$$ud-registry.listByStr20Excludes_46_fptr_2753"(i8* %"$$ud-registry.listByStr20Excludes_46_envptr_2754", [20 x i8]* %"$$ud-registry.listByStr20Excludes_46_address_2755"), !dbg !281
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_46_call_2756", %TName_Bool** %"$ud-registry.listByStr20Excludes_47", align 8, !dbg !281
  %"$$ud-registry.listByStr20Excludes_47_2757" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Excludes_47", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_47_2757", %TName_Bool** %b, align 8, !dbg !281
  %"$gasrem_2758" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2759" = icmp ugt i64 1, %"$gasrem_2758"
  br i1 %"$gascmp_2759", label %"$out_of_gas_2760", label %"$have_gas_2761"

"$out_of_gas_2760":                               ; preds = %"$have_gas_2745"
  call void @_out_of_gas()
  br label %"$have_gas_2761"

"$have_gas_2761":                                 ; preds = %"$out_of_gas_2760", %"$have_gas_2745"
  %"$consume_2762" = sub i64 %"$gasrem_2758", 1
  store i64 %"$consume_2762", i64* @_gasrem, align 8
  %"$ud-registry.xandb_48" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.xandb_2763" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8
  %"$ud-registry.xandb_fptr_2764" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2763", 0
  %"$ud-registry.xandb_envptr_2765" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2763", 1
  %"$b_2766" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$ud-registry.xandb_call_2767" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_fptr_2764"(i8* %"$ud-registry.xandb_envptr_2765", %TName_Bool* %"$b_2766"), !dbg !284
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_call_2767", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_48", align 8, !dbg !284
  %"$ud-registry.xandb_49" = alloca %TName_Bool*, align 8
  %"$$ud-registry.xandb_48_2768" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_48", align 8
  %"$$ud-registry.xandb_48_fptr_2769" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_48_2768", 0
  %"$$ud-registry.xandb_48_envptr_2770" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_48_2768", 1
  %"$$ud-registry.xandb_48_call_2771" = call %TName_Bool* %"$$ud-registry.xandb_48_fptr_2769"(i8* %"$$ud-registry.xandb_48_envptr_2770", %TName_Bool* %isApproved), !dbg !284
  store %TName_Bool* %"$$ud-registry.xandb_48_call_2771", %TName_Bool** %"$ud-registry.xandb_49", align 8, !dbg !284
  %"$$ud-registry.xandb_49_2772" = load %TName_Bool*, %TName_Bool** %"$ud-registry.xandb_49", align 8
  store %TName_Bool* %"$$ud-registry.xandb_49_2772", %TName_Bool** %needsToChange, align 8, !dbg !284
  %"$gasrem_2773" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2774" = icmp ugt i64 2, %"$gasrem_2773"
  br i1 %"$gascmp_2774", label %"$out_of_gas_2775", label %"$have_gas_2776"

"$out_of_gas_2775":                               ; preds = %"$have_gas_2761"
  call void @_out_of_gas()
  br label %"$have_gas_2776"

"$have_gas_2776":                                 ; preds = %"$out_of_gas_2775", %"$have_gas_2761"
  %"$consume_2777" = sub i64 %"$gasrem_2773", 2
  store i64 %"$consume_2777", i64* @_gasrem, align 8
  %"$needsToChange_2779" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_2780" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_2779", i32 0, i32 0
  %"$needsToChange_tag_2781" = load i8, i8* %"$needsToChange_tag_2780", align 1
  switch i8 %"$needsToChange_tag_2781", label %"$default_2782" [
    i8 0, label %"$True_2783"
  ], !dbg !285

"$True_2783":                                     ; preds = %"$have_gas_2776"
  %"$needsToChange_2784" = bitcast %TName_Bool* %"$needsToChange_2779" to %CName_True*
  %"$gasrem_2785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2786" = icmp ugt i64 1, %"$gasrem_2785"
  br i1 %"$gascmp_2786", label %"$out_of_gas_2787", label %"$have_gas_2788"

"$out_of_gas_2787":                               ; preds = %"$True_2783"
  call void @_out_of_gas()
  br label %"$have_gas_2788"

"$have_gas_2788":                                 ; preds = %"$out_of_gas_2787", %"$True_2783"
  %"$consume_2789" = sub i64 %"$gasrem_2785", 1
  store i64 %"$consume_2789", i64* @_gasrem, align 8
  %newAdmins = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_2790" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2791" = icmp ugt i64 2, %"$gasrem_2790"
  br i1 %"$gascmp_2791", label %"$out_of_gas_2792", label %"$have_gas_2793"

"$out_of_gas_2792":                               ; preds = %"$have_gas_2788"
  call void @_out_of_gas()
  br label %"$have_gas_2793"

"$have_gas_2793":                                 ; preds = %"$out_of_gas_2792", %"$have_gas_2788"
  %"$consume_2794" = sub i64 %"$gasrem_2790", 2
  store i64 %"$consume_2794", i64* @_gasrem, align 8
  %"$isApproved_tag_2796" = getelementptr inbounds %TName_Bool, %TName_Bool* %isApproved, i32 0, i32 0
  %"$isApproved_tag_2797" = load i8, i8* %"$isApproved_tag_2796", align 1
  switch i8 %"$isApproved_tag_2797", label %"$empty_default_2798" [
    i8 0, label %"$True_2799"
    i8 1, label %"$False_2812"
  ], !dbg !286

"$True_2799":                                     ; preds = %"$have_gas_2793"
  %"$isApproved_2800" = bitcast %TName_Bool* %isApproved to %CName_True*
  %"$gasrem_2801" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2802" = icmp ugt i64 1, %"$gasrem_2801"
  br i1 %"$gascmp_2802", label %"$out_of_gas_2803", label %"$have_gas_2804"

"$out_of_gas_2803":                               ; preds = %"$True_2799"
  call void @_out_of_gas()
  br label %"$have_gas_2804"

"$have_gas_2804":                                 ; preds = %"$out_of_gas_2803", %"$True_2799"
  %"$consume_2805" = sub i64 %"$gasrem_2801", 1
  store i64 %"$consume_2805", i64* @_gasrem, align 8
  %"$currentAdmins_2806" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$adtval_2807_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2807_salloc" = call i8* @_salloc(i8* %"$adtval_2807_load", i64 29)
  %"$adtval_2807" = bitcast i8* %"$adtval_2807_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_2808" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2807", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2808", align 1
  %"$adtgep_2809" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2807", i32 0, i32 1
  store [20 x i8] %address, [20 x i8]* %"$adtgep_2809", align 1
  %"$adtgep_2810" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2807", i32 0, i32 2
  store %TName_List_ByStr20* %"$currentAdmins_2806", %TName_List_ByStr20** %"$adtgep_2810", align 8
  %"$adtptr_2811" = bitcast %CName_Cons_ByStr20* %"$adtval_2807" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2811", %TName_List_ByStr20** %newAdmins, align 8, !dbg !289
  br label %"$matchsucc_2795"

"$False_2812":                                    ; preds = %"$have_gas_2793"
  %"$isApproved_2813" = bitcast %TName_Bool* %isApproved to %CName_False*
  %"$gasrem_2814" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2815" = icmp ugt i64 1, %"$gasrem_2814"
  br i1 %"$gascmp_2815", label %"$out_of_gas_2816", label %"$have_gas_2817"

"$out_of_gas_2816":                               ; preds = %"$False_2812"
  call void @_out_of_gas()
  br label %"$have_gas_2817"

"$have_gas_2817":                                 ; preds = %"$out_of_gas_2816", %"$False_2812"
  %"$consume_2818" = sub i64 %"$gasrem_2814", 1
  store i64 %"$consume_2818", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20FilterOut_44" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20FilterOut_2819" = load { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8
  %"$ud-registry.listByStr20FilterOut_fptr_2820" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_2819", 0
  %"$ud-registry.listByStr20FilterOut_envptr_2821" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_2819", 1
  %"$currentAdmins_2822" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20FilterOut_call_2823" = call { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_fptr_2820"(i8* %"$ud-registry.listByStr20FilterOut_envptr_2821", %TName_List_ByStr20* %"$currentAdmins_2822"), !dbg !292
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_call_2823", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_44", align 8, !dbg !292
  %"$ud-registry.listByStr20FilterOut_45" = alloca %TName_List_ByStr20*, align 8
  %"$$ud-registry.listByStr20FilterOut_44_2824" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_44", align 8
  %"$$ud-registry.listByStr20FilterOut_44_fptr_2825" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_44_2824", 0
  %"$$ud-registry.listByStr20FilterOut_44_envptr_2826" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_44_2824", 1
  %"$$ud-registry.listByStr20FilterOut_44_address_2827" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20FilterOut_44_address_2827", align 1
  %"$$ud-registry.listByStr20FilterOut_44_call_2828" = call %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_44_fptr_2825"(i8* %"$$ud-registry.listByStr20FilterOut_44_envptr_2826", [20 x i8]* %"$$ud-registry.listByStr20FilterOut_44_address_2827"), !dbg !292
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_44_call_2828", %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_45", align 8, !dbg !292
  %"$$ud-registry.listByStr20FilterOut_45_2829" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_45", align 8
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_45_2829", %TName_List_ByStr20** %newAdmins, align 8, !dbg !292
  br label %"$matchsucc_2795"

"$empty_default_2798":                            ; preds = %"$have_gas_2793"
  br label %"$matchsucc_2795"

"$matchsucc_2795":                                ; preds = %"$have_gas_2817", %"$have_gas_2804", %"$empty_default_2798"
  %"$newAdmins_2830" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newAdmins, align 8
  %"$$newAdmins_2830_2831" = bitcast %TName_List_ByStr20* %"$newAdmins_2830" to i8*
  %"$_literal_cost_call_2832" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$newAdmins_2830_2831")
  %"$gasrem_2833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2834" = icmp ugt i64 %"$_literal_cost_call_2832", %"$gasrem_2833"
  br i1 %"$gascmp_2834", label %"$out_of_gas_2835", label %"$have_gas_2836"

"$out_of_gas_2835":                               ; preds = %"$matchsucc_2795"
  call void @_out_of_gas()
  br label %"$have_gas_2836"

"$have_gas_2836":                                 ; preds = %"$out_of_gas_2835", %"$matchsucc_2795"
  %"$consume_2837" = sub i64 %"$gasrem_2833", %"$_literal_cost_call_2832"
  store i64 %"$consume_2837", i64* @_gasrem, align 8
  %"$execptr_load_2838" = load i8*, i8** @_execptr, align 8
  %"$newAdmins_2840" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newAdmins, align 8
  %"$update_value_2841" = bitcast %TName_List_ByStr20* %"$newAdmins_2840" to i8*
  call void @_update_field(i8* %"$execptr_load_2838", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2839", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i8* %"$update_value_2841"), !dbg !294
  %"$gasrem_2842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2843" = icmp ugt i64 1, %"$gasrem_2842"
  br i1 %"$gascmp_2843", label %"$out_of_gas_2844", label %"$have_gas_2845"

"$out_of_gas_2844":                               ; preds = %"$have_gas_2836"
  call void @_out_of_gas()
  br label %"$have_gas_2845"

"$have_gas_2845":                                 ; preds = %"$out_of_gas_2844", %"$have_gas_2836"
  %"$consume_2846" = sub i64 %"$gasrem_2842", 1
  store i64 %"$consume_2846", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_2847" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2848" = icmp ugt i64 1, %"$gasrem_2847"
  br i1 %"$gascmp_2848", label %"$out_of_gas_2849", label %"$have_gas_2850"

"$out_of_gas_2849":                               ; preds = %"$have_gas_2845"
  call void @_out_of_gas()
  br label %"$have_gas_2850"

"$have_gas_2850":                                 ; preds = %"$out_of_gas_2849", %"$have_gas_2845"
  %"$consume_2851" = sub i64 %"$gasrem_2847", 1
  store i64 %"$consume_2851", i64* @_gasrem, align 8
  %"$ud-registry.eAdminSet_42" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.eAdminSet_2852" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eAdminSet, align 8
  %"$ud-registry.eAdminSet_fptr_2853" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eAdminSet_2852", 0
  %"$ud-registry.eAdminSet_envptr_2854" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eAdminSet_2852", 1
  %"$ud-registry.eAdminSet_address_2855" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eAdminSet_address_2855", align 1
  %"$ud-registry.eAdminSet_call_2856" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.eAdminSet_fptr_2853"(i8* %"$ud-registry.eAdminSet_envptr_2854", [20 x i8]* %"$ud-registry.eAdminSet_address_2855"), !dbg !295
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.eAdminSet_call_2856", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eAdminSet_42", align 8, !dbg !295
  %"$ud-registry.eAdminSet_43" = alloca i8*, align 8
  %"$$ud-registry.eAdminSet_42_2857" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eAdminSet_42", align 8
  %"$$ud-registry.eAdminSet_42_fptr_2858" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eAdminSet_42_2857", 0
  %"$$ud-registry.eAdminSet_42_envptr_2859" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eAdminSet_42_2857", 1
  %"$$ud-registry.eAdminSet_42_call_2860" = call i8* %"$$ud-registry.eAdminSet_42_fptr_2858"(i8* %"$$ud-registry.eAdminSet_42_envptr_2859", %TName_Bool* %isApproved), !dbg !295
  store i8* %"$$ud-registry.eAdminSet_42_call_2860", i8** %"$ud-registry.eAdminSet_43", align 8, !dbg !295
  %"$$ud-registry.eAdminSet_43_2861" = load i8*, i8** %"$ud-registry.eAdminSet_43", align 8
  store i8* %"$$ud-registry.eAdminSet_43_2861", i8** %e, align 8, !dbg !295
  %"$e_2862" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_2864" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_2862")
  %"$gasrem_2865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2866" = icmp ugt i64 %"$_literal_cost_call_2864", %"$gasrem_2865"
  br i1 %"$gascmp_2866", label %"$out_of_gas_2867", label %"$have_gas_2868"

"$out_of_gas_2867":                               ; preds = %"$have_gas_2850"
  call void @_out_of_gas()
  br label %"$have_gas_2868"

"$have_gas_2868":                                 ; preds = %"$out_of_gas_2867", %"$have_gas_2850"
  %"$consume_2869" = sub i64 %"$gasrem_2865", %"$_literal_cost_call_2864"
  store i64 %"$consume_2869", i64* @_gasrem, align 8
  %"$execptr_load_2870" = load i8*, i8** @_execptr, align 8
  %"$e_2871" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_2870", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_2871"), !dbg !296
  br label %"$matchsucc_2778"

"$default_2782":                                  ; preds = %"$have_gas_2776"
  br label %"$joinp_1"

"$joinp_1":                                       ; preds = %"$default_2782"
  br label %"$matchsucc_2778"

"$matchsucc_2778":                                ; preds = %"$have_gas_2868", %"$joinp_1"
  br label %"$matchsucc_2725"

"$False_2872":                                    ; preds = %"$have_gas_2723"
  %"$isSenderAdmin_2873" = bitcast %TName_Bool* %"$isSenderAdmin_2726" to %CName_False*
  %"$gasrem_2874" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2875" = icmp ugt i64 1, %"$gasrem_2874"
  br i1 %"$gascmp_2875", label %"$out_of_gas_2876", label %"$have_gas_2877"

"$out_of_gas_2876":                               ; preds = %"$False_2872"
  call void @_out_of_gas()
  br label %"$have_gas_2877"

"$have_gas_2877":                                 ; preds = %"$out_of_gas_2876", %"$False_2872"
  %"$consume_2878" = sub i64 %"$gasrem_2874", 1
  store i64 %"$consume_2878", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_2879" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2880" = icmp ugt i64 1, %"$gasrem_2879"
  br i1 %"$gascmp_2880", label %"$out_of_gas_2881", label %"$have_gas_2882"

"$out_of_gas_2881":                               ; preds = %"$have_gas_2877"
  call void @_out_of_gas()
  br label %"$have_gas_2882"

"$have_gas_2882":                                 ; preds = %"$out_of_gas_2881", %"$have_gas_2877"
  %"$consume_2883" = sub i64 %"$gasrem_2879", 1
  store i64 %"$consume_2883", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_2884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2885" = icmp ugt i64 1, %"$gasrem_2884"
  br i1 %"$gascmp_2885", label %"$out_of_gas_2886", label %"$have_gas_2887"

"$out_of_gas_2886":                               ; preds = %"$have_gas_2882"
  call void @_out_of_gas()
  br label %"$have_gas_2887"

"$have_gas_2887":                                 ; preds = %"$out_of_gas_2886", %"$have_gas_2882"
  %"$consume_2888" = sub i64 %"$gasrem_2884", 1
  store i64 %"$consume_2888", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$stringlit_2889", i32 0, i32 0), i32 26 }, %String* %m, align 8, !dbg !297
  %"$gasrem_2890" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2891" = icmp ugt i64 1, %"$gasrem_2890"
  br i1 %"$gascmp_2891", label %"$out_of_gas_2892", label %"$have_gas_2893"

"$out_of_gas_2892":                               ; preds = %"$have_gas_2887"
  call void @_out_of_gas()
  br label %"$have_gas_2893"

"$have_gas_2893":                                 ; preds = %"$out_of_gas_2892", %"$have_gas_2887"
  %"$consume_2894" = sub i64 %"$gasrem_2890", 1
  store i64 %"$consume_2894", i64* @_gasrem, align 8
  %"$ud-registry.eError_50" = alloca i8*, align 8
  %"$ud-registry.eError_2895" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_2896" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2895", 0
  %"$ud-registry.eError_envptr_2897" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2895", 1
  %"$m_2898" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_2899" = call i8* %"$ud-registry.eError_fptr_2896"(i8* %"$ud-registry.eError_envptr_2897", %String %"$m_2898"), !dbg !299
  store i8* %"$ud-registry.eError_call_2899", i8** %"$ud-registry.eError_50", align 8, !dbg !299
  %"$$ud-registry.eError_50_2900" = load i8*, i8** %"$ud-registry.eError_50", align 8
  store i8* %"$$ud-registry.eError_50_2900", i8** %e1, align 8, !dbg !299
  %"$e_2901" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_2903" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_2901")
  %"$gasrem_2904" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2905" = icmp ugt i64 %"$_literal_cost_call_2903", %"$gasrem_2904"
  br i1 %"$gascmp_2905", label %"$out_of_gas_2906", label %"$have_gas_2907"

"$out_of_gas_2906":                               ; preds = %"$have_gas_2893"
  call void @_out_of_gas()
  br label %"$have_gas_2907"

"$have_gas_2907":                                 ; preds = %"$out_of_gas_2906", %"$have_gas_2893"
  %"$consume_2908" = sub i64 %"$gasrem_2904", %"$_literal_cost_call_2903"
  store i64 %"$consume_2908", i64* @_gasrem, align 8
  %"$execptr_load_2909" = load i8*, i8** @_execptr, align 8
  %"$e_2910" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_2909", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_2910"), !dbg !300
  br label %"$matchsucc_2725"

"$empty_default_2729":                            ; preds = %"$have_gas_2723"
  br label %"$matchsucc_2725"

"$matchsucc_2725":                                ; preds = %"$have_gas_2907", %"$matchsucc_2778", %"$empty_default_2729"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) !dbg !301 {
entry:
  %"$_amount_2912" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2913" = bitcast i8* %"$_amount_2912" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2913", align 8
  %"$_sender_2914" = getelementptr i8, i8* %0, i32 16
  %"$_sender_2915" = bitcast i8* %"$_sender_2914" to [20 x i8]*
  %"$address_2916" = getelementptr i8, i8* %0, i32 36
  %"$address_2917" = bitcast i8* %"$address_2916" to [20 x i8]*
  %"$isApproved_2918" = getelementptr i8, i8* %0, i32 56
  %"$isApproved_2919" = bitcast i8* %"$isApproved_2918" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_2919", align 8
  call void @"$setAdmin_2683"(%Uint128 %_amount, [20 x i8]* %"$_sender_2915", [20 x i8]* %"$address_2917", %TName_Bool* %isApproved), !dbg !302
  ret void
}

define internal void @"$approve_2920"(%Uint128 %_amount, [20 x i8]* %"$_sender_2921", [32 x i8]* %"$node_2922", [20 x i8]* %"$address_2923") !dbg !303 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2921", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_2922", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_2923", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_2924_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2924_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2924_salloc_load", i64 32)
  %"$indices_buf_2924_salloc" = bitcast i8* %"$indices_buf_2924_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2924" = bitcast [32 x i8]* %"$indices_buf_2924_salloc" to i8*
  %"$indices_gep_2925" = getelementptr i8, i8* %"$indices_buf_2924", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2925" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_2926" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_2928" = call i8* @_fetch_field(i8* %"$execptr_load_2926", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_2927", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_2924", i32 1), !dbg !304
  %"$maybeRecord_2929" = bitcast i8* %"$maybeRecord_2928" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_2929", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_2930" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_2930_2931" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_2930" to i8*
  %"$_literal_cost_call_2932" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_2930_2931")
  %"$gasadd_2933" = add i64 %"$_literal_cost_call_2932", 0
  %"$gasadd_2934" = add i64 %"$gasadd_2933", 1
  %"$gasrem_2935" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2936" = icmp ugt i64 %"$gasadd_2934", %"$gasrem_2935"
  br i1 %"$gascmp_2936", label %"$out_of_gas_2937", label %"$have_gas_2938"

"$out_of_gas_2937":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2938"

"$have_gas_2938":                                 ; preds = %"$out_of_gas_2937", %entry
  %"$consume_2939" = sub i64 %"$gasrem_2935", %"$gasadd_2934"
  store i64 %"$consume_2939", i64* @_gasrem, align 8
  %"$gasrem_2940" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2941" = icmp ugt i64 1, %"$gasrem_2940"
  br i1 %"$gascmp_2941", label %"$out_of_gas_2942", label %"$have_gas_2943"

"$out_of_gas_2942":                               ; preds = %"$have_gas_2938"
  call void @_out_of_gas()
  br label %"$have_gas_2943"

"$have_gas_2943":                                 ; preds = %"$out_of_gas_2942", %"$have_gas_2938"
  %"$consume_2944" = sub i64 %"$gasrem_2940", 1
  store i64 %"$consume_2944", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_2945" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2946" = icmp ugt i64 1, %"$gasrem_2945"
  br i1 %"$gascmp_2946", label %"$out_of_gas_2947", label %"$have_gas_2948"

"$out_of_gas_2947":                               ; preds = %"$have_gas_2943"
  call void @_out_of_gas()
  br label %"$have_gas_2948"

"$have_gas_2948":                                 ; preds = %"$out_of_gas_2947", %"$have_gas_2943"
  %"$consume_2949" = sub i64 %"$gasrem_2945", 1
  store i64 %"$consume_2949", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_56" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_2950" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_2951" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_2950", 0
  %"$ud-registry.recordMemberOwner_envptr_2952" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_2950", 1
  %"$maybeRecord_2953" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_2954" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_2951"(i8* %"$ud-registry.recordMemberOwner_envptr_2952", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_2954", %TName_Option_ud-registry.Record* %"$maybeRecord_2953"), !dbg !305
  %"$ud-registry.recordMemberOwner_ret_2955" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_2954", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_2955", [20 x i8]* %"$ud-registry.recordMemberOwner_56", align 1, !dbg !305
  %"$$ud-registry.recordMemberOwner_56_2956" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_56", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_56_2956", [20 x i8]* %recordOwner, align 1, !dbg !305
  %"$gasrem_2957" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2958" = icmp ugt i64 1, %"$gasrem_2957"
  br i1 %"$gascmp_2958", label %"$out_of_gas_2959", label %"$have_gas_2960"

"$out_of_gas_2959":                               ; preds = %"$have_gas_2948"
  call void @_out_of_gas()
  br label %"$have_gas_2960"

"$have_gas_2960":                                 ; preds = %"$out_of_gas_2959", %"$have_gas_2948"
  %"$consume_2961" = sub i64 %"$gasrem_2957", 1
  store i64 %"$consume_2961", i64* @_gasrem, align 8
  %isSenderNodeOwner = alloca %TName_Bool*, align 8
  %"$execptr_load_2962" = load i8*, i8** @_execptr, align 8
  %"$eq__sender_2963" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_2963", align 1
  %"$$eq__sender_2963_2964" = bitcast [20 x i8]* %"$eq__sender_2963" to i8*
  %"$eq_recordOwner_2965" = alloca [20 x i8], align 1
  %"$recordOwner_2966" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_2966", [20 x i8]* %"$eq_recordOwner_2965", align 1
  %"$$eq_recordOwner_2965_2967" = bitcast [20 x i8]* %"$eq_recordOwner_2965" to i8*
  %"$eq_call_2968" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2962", i32 20, i8* %"$$eq__sender_2963_2964", i8* %"$$eq_recordOwner_2965_2967")
  store %TName_Bool* %"$eq_call_2968", %TName_Bool** %isSenderNodeOwner, align 8, !dbg !306
  %"$gasrem_2969" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2970" = icmp ugt i64 2, %"$gasrem_2969"
  br i1 %"$gascmp_2970", label %"$out_of_gas_2971", label %"$have_gas_2972"

"$out_of_gas_2971":                               ; preds = %"$have_gas_2960"
  call void @_out_of_gas()
  br label %"$have_gas_2972"

"$have_gas_2972":                                 ; preds = %"$out_of_gas_2971", %"$have_gas_2960"
  %"$consume_2973" = sub i64 %"$gasrem_2969", 2
  store i64 %"$consume_2973", i64* @_gasrem, align 8
  %"$isSenderNodeOwner_2975" = load %TName_Bool*, %TName_Bool** %isSenderNodeOwner, align 8
  %"$isSenderNodeOwner_tag_2976" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderNodeOwner_2975", i32 0, i32 0
  %"$isSenderNodeOwner_tag_2977" = load i8, i8* %"$isSenderNodeOwner_tag_2976", align 1
  switch i8 %"$isSenderNodeOwner_tag_2977", label %"$empty_default_2978" [
    i8 0, label %"$True_2979"
    i8 1, label %"$False_3111"
  ], !dbg !307

"$True_2979":                                     ; preds = %"$have_gas_2972"
  %"$isSenderNodeOwner_2980" = bitcast %TName_Bool* %"$isSenderNodeOwner_2975" to %CName_True*
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_2981_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2981_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2981_salloc_load", i64 32)
  %"$indices_buf_2981_salloc" = bitcast i8* %"$indices_buf_2981_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2981" = bitcast [32 x i8]* %"$indices_buf_2981_salloc" to i8*
  %"$indices_gep_2982" = getelementptr i8, i8* %"$indices_buf_2981", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_2982" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_2983" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_2985" = call i8* @_fetch_field(i8* %"$execptr_load_2983", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_2984", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_2981", i32 1), !dbg !308
  %"$maybeApproved_2986" = bitcast i8* %"$maybeApproved_2985" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_2986", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_2987" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_2987_2988" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2987" to i8*
  %"$_literal_cost_call_2989" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_2987_2988")
  %"$gasadd_2990" = add i64 %"$_literal_cost_call_2989", 0
  %"$gasadd_2991" = add i64 %"$gasadd_2990", 1
  %"$gasrem_2992" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2993" = icmp ugt i64 %"$gasadd_2991", %"$gasrem_2992"
  br i1 %"$gascmp_2993", label %"$out_of_gas_2994", label %"$have_gas_2995"

"$out_of_gas_2994":                               ; preds = %"$True_2979"
  call void @_out_of_gas()
  br label %"$have_gas_2995"

"$have_gas_2995":                                 ; preds = %"$out_of_gas_2994", %"$True_2979"
  %"$consume_2996" = sub i64 %"$gasrem_2992", %"$gasadd_2991"
  store i64 %"$consume_2996", i64* @_gasrem, align 8
  %"$gasrem_2997" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2998" = icmp ugt i64 1, %"$gasrem_2997"
  br i1 %"$gascmp_2998", label %"$out_of_gas_2999", label %"$have_gas_3000"

"$out_of_gas_2999":                               ; preds = %"$have_gas_2995"
  call void @_out_of_gas()
  br label %"$have_gas_3000"

"$have_gas_3000":                                 ; preds = %"$out_of_gas_2999", %"$have_gas_2995"
  %"$consume_3001" = sub i64 %"$gasrem_2997", 1
  store i64 %"$consume_3001", i64* @_gasrem, align 8
  %currentlyApproved = alloca [20 x i8], align 1
  %"$gasrem_3002" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3003" = icmp ugt i64 2, %"$gasrem_3002"
  br i1 %"$gascmp_3003", label %"$out_of_gas_3004", label %"$have_gas_3005"

"$out_of_gas_3004":                               ; preds = %"$have_gas_3000"
  call void @_out_of_gas()
  br label %"$have_gas_3005"

"$have_gas_3005":                                 ; preds = %"$out_of_gas_3004", %"$have_gas_3000"
  %"$consume_3006" = sub i64 %"$gasrem_3002", 2
  store i64 %"$consume_3006", i64* @_gasrem, align 8
  %"$maybeApproved_3008" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_3009" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_3008", i32 0, i32 0
  %"$maybeApproved_tag_3010" = load i8, i8* %"$maybeApproved_tag_3009", align 1
  switch i8 %"$maybeApproved_tag_3010", label %"$empty_default_3011" [
    i8 1, label %"$None_3012"
    i8 0, label %"$Some_3020"
  ], !dbg !311

"$None_3012":                                     ; preds = %"$have_gas_3005"
  %"$maybeApproved_3013" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3008" to %CName_None_ByStr20*
  %"$gasrem_3014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3015" = icmp ugt i64 1, %"$gasrem_3014"
  br i1 %"$gascmp_3015", label %"$out_of_gas_3016", label %"$have_gas_3017"

"$out_of_gas_3016":                               ; preds = %"$None_3012"
  call void @_out_of_gas()
  br label %"$have_gas_3017"

"$have_gas_3017":                                 ; preds = %"$out_of_gas_3016", %"$None_3012"
  %"$consume_3018" = sub i64 %"$gasrem_3014", 1
  store i64 %"$consume_3018", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_3019" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_3019", [20 x i8]* %currentlyApproved, align 1, !dbg !312
  br label %"$matchsucc_3007"

"$Some_3020":                                     ; preds = %"$have_gas_3005"
  %"$maybeApproved_3021" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3008" to %CName_Some_ByStr20*
  %"$approved_gep_3022" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_3021", i32 0, i32 1
  %"$approved_load_3023" = load [20 x i8], [20 x i8]* %"$approved_gep_3022", align 1
  %approved = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_3023", [20 x i8]* %approved, align 1
  %"$gasrem_3024" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3025" = icmp ugt i64 1, %"$gasrem_3024"
  br i1 %"$gascmp_3025", label %"$out_of_gas_3026", label %"$have_gas_3027"

"$out_of_gas_3026":                               ; preds = %"$Some_3020"
  call void @_out_of_gas()
  br label %"$have_gas_3027"

"$have_gas_3027":                                 ; preds = %"$out_of_gas_3026", %"$Some_3020"
  %"$consume_3028" = sub i64 %"$gasrem_3024", 1
  store i64 %"$consume_3028", i64* @_gasrem, align 8
  %"$approved_3029" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_3029", [20 x i8]* %currentlyApproved, align 1, !dbg !315
  br label %"$matchsucc_3007"

"$empty_default_3011":                            ; preds = %"$have_gas_3005"
  br label %"$matchsucc_3007"

"$matchsucc_3007":                                ; preds = %"$have_gas_3027", %"$have_gas_3017", %"$empty_default_3011"
  %"$gasrem_3030" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3031" = icmp ugt i64 1, %"$gasrem_3030"
  br i1 %"$gascmp_3031", label %"$out_of_gas_3032", label %"$have_gas_3033"

"$out_of_gas_3032":                               ; preds = %"$matchsucc_3007"
  call void @_out_of_gas()
  br label %"$have_gas_3033"

"$have_gas_3033":                                 ; preds = %"$out_of_gas_3032", %"$matchsucc_3007"
  %"$consume_3034" = sub i64 %"$gasrem_3030", 1
  store i64 %"$consume_3034", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_3035" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3036" = icmp ugt i64 1, %"$gasrem_3035"
  br i1 %"$gascmp_3036", label %"$out_of_gas_3037", label %"$have_gas_3038"

"$out_of_gas_3037":                               ; preds = %"$have_gas_3033"
  call void @_out_of_gas()
  br label %"$have_gas_3038"

"$have_gas_3038":                                 ; preds = %"$out_of_gas_3037", %"$have_gas_3033"
  %"$consume_3039" = sub i64 %"$gasrem_3035", 1
  store i64 %"$consume_3039", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$execptr_load_3040" = load i8*, i8** @_execptr, align 8
  %"$eq_currentlyApproved_3041" = alloca [20 x i8], align 1
  %"$currentlyApproved_3042" = load [20 x i8], [20 x i8]* %currentlyApproved, align 1
  store [20 x i8] %"$currentlyApproved_3042", [20 x i8]* %"$eq_currentlyApproved_3041", align 1
  %"$$eq_currentlyApproved_3041_3043" = bitcast [20 x i8]* %"$eq_currentlyApproved_3041" to i8*
  %"$eq_address_3044" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$eq_address_3044", align 1
  %"$$eq_address_3044_3045" = bitcast [20 x i8]* %"$eq_address_3044" to i8*
  %"$eq_call_3046" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_3040", i32 20, i8* %"$$eq_currentlyApproved_3041_3043", i8* %"$$eq_address_3044_3045")
  store %TName_Bool* %"$eq_call_3046", %TName_Bool** %b, align 8, !dbg !317
  %"$gasrem_3047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3048" = icmp ugt i64 1, %"$gasrem_3047"
  br i1 %"$gascmp_3048", label %"$out_of_gas_3049", label %"$have_gas_3050"

"$out_of_gas_3049":                               ; preds = %"$have_gas_3038"
  call void @_out_of_gas()
  br label %"$have_gas_3050"

"$have_gas_3050":                                 ; preds = %"$out_of_gas_3049", %"$have_gas_3038"
  %"$consume_3051" = sub i64 %"$gasrem_3047", 1
  store i64 %"$consume_3051", i64* @_gasrem, align 8
  %"$BoolUtils.negb_54" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_3052" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_3053" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_3052", 0
  %"$BoolUtils.negb_envptr_3054" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_3052", 1
  %"$b_3055" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$BoolUtils.negb_call_3056" = call %TName_Bool* %"$BoolUtils.negb_fptr_3053"(i8* %"$BoolUtils.negb_envptr_3054", %TName_Bool* %"$b_3055"), !dbg !318
  store %TName_Bool* %"$BoolUtils.negb_call_3056", %TName_Bool** %"$BoolUtils.negb_54", align 8, !dbg !318
  %"$$BoolUtils.negb_54_3057" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_54", align 8
  store %TName_Bool* %"$$BoolUtils.negb_54_3057", %TName_Bool** %needsToChange, align 8, !dbg !318
  %"$gasrem_3058" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3059" = icmp ugt i64 2, %"$gasrem_3058"
  br i1 %"$gascmp_3059", label %"$out_of_gas_3060", label %"$have_gas_3061"

"$out_of_gas_3060":                               ; preds = %"$have_gas_3050"
  call void @_out_of_gas()
  br label %"$have_gas_3061"

"$have_gas_3061":                                 ; preds = %"$out_of_gas_3060", %"$have_gas_3050"
  %"$consume_3062" = sub i64 %"$gasrem_3058", 2
  store i64 %"$consume_3062", i64* @_gasrem, align 8
  %"$needsToChange_3064" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_3065" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_3064", i32 0, i32 0
  %"$needsToChange_tag_3066" = load i8, i8* %"$needsToChange_tag_3065", align 1
  switch i8 %"$needsToChange_tag_3066", label %"$default_3067" [
    i8 0, label %"$True_3068"
  ], !dbg !319

"$True_3068":                                     ; preds = %"$have_gas_3061"
  %"$needsToChange_3069" = bitcast %TName_Bool* %"$needsToChange_3064" to %CName_True*
  %"$_literal_cost_address_3070" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$_literal_cost_address_3070", align 1
  %"$$_literal_cost_address_3070_3071" = bitcast [20 x i8]* %"$_literal_cost_address_3070" to i8*
  %"$_literal_cost_call_3072" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i8* %"$$_literal_cost_address_3070_3071")
  %"$gasadd_3073" = add i64 %"$_literal_cost_call_3072", 1
  %"$gasrem_3074" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3075" = icmp ugt i64 %"$gasadd_3073", %"$gasrem_3074"
  br i1 %"$gascmp_3075", label %"$out_of_gas_3076", label %"$have_gas_3077"

"$out_of_gas_3076":                               ; preds = %"$True_3068"
  call void @_out_of_gas()
  br label %"$have_gas_3077"

"$have_gas_3077":                                 ; preds = %"$out_of_gas_3076", %"$True_3068"
  %"$consume_3078" = sub i64 %"$gasrem_3074", %"$gasadd_3073"
  store i64 %"$consume_3078", i64* @_gasrem, align 8
  %"$indices_buf_3079_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3079_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3079_salloc_load", i64 32)
  %"$indices_buf_3079_salloc" = bitcast i8* %"$indices_buf_3079_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3079" = bitcast [32 x i8]* %"$indices_buf_3079_salloc" to i8*
  %"$indices_gep_3080" = getelementptr i8, i8* %"$indices_buf_3079", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3080" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast2, align 1
  %"$execptr_load_3081" = load i8*, i8** @_execptr, align 8
  %"$update_value_3083" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$update_value_3083", align 1
  %"$update_value_3084" = bitcast [20 x i8]* %"$update_value_3083" to i8*
  call void @_update_field(i8* %"$execptr_load_3081", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3082", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_3079", i8* %"$update_value_3084"), !dbg !320
  %"$gasrem_3085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3086" = icmp ugt i64 1, %"$gasrem_3085"
  br i1 %"$gascmp_3086", label %"$out_of_gas_3087", label %"$have_gas_3088"

"$out_of_gas_3087":                               ; preds = %"$have_gas_3077"
  call void @_out_of_gas()
  br label %"$have_gas_3088"

"$have_gas_3088":                                 ; preds = %"$out_of_gas_3087", %"$have_gas_3077"
  %"$consume_3089" = sub i64 %"$gasrem_3085", 1
  store i64 %"$consume_3089", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3090" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3091" = icmp ugt i64 1, %"$gasrem_3090"
  br i1 %"$gascmp_3091", label %"$out_of_gas_3092", label %"$have_gas_3093"

"$out_of_gas_3092":                               ; preds = %"$have_gas_3088"
  call void @_out_of_gas()
  br label %"$have_gas_3093"

"$have_gas_3093":                                 ; preds = %"$out_of_gas_3092", %"$have_gas_3088"
  %"$consume_3094" = sub i64 %"$gasrem_3090", 1
  store i64 %"$consume_3094", i64* @_gasrem, align 8
  %"$ud-registry.eApproved_53" = alloca i8*, align 8
  %"$ud-registry.eApproved_3095" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApproved, align 8
  %"$ud-registry.eApproved_fptr_3096" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApproved_3095", 0
  %"$ud-registry.eApproved_envptr_3097" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApproved_3095", 1
  %"$ud-registry.eApproved_address_3098" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eApproved_address_3098", align 1
  %"$ud-registry.eApproved_call_3099" = call i8* %"$ud-registry.eApproved_fptr_3096"(i8* %"$ud-registry.eApproved_envptr_3097", [20 x i8]* %"$ud-registry.eApproved_address_3098"), !dbg !323
  store i8* %"$ud-registry.eApproved_call_3099", i8** %"$ud-registry.eApproved_53", align 8, !dbg !323
  %"$$ud-registry.eApproved_53_3100" = load i8*, i8** %"$ud-registry.eApproved_53", align 8
  store i8* %"$$ud-registry.eApproved_53_3100", i8** %e, align 8, !dbg !323
  %"$e_3101" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3103" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3101")
  %"$gasrem_3104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3105" = icmp ugt i64 %"$_literal_cost_call_3103", %"$gasrem_3104"
  br i1 %"$gascmp_3105", label %"$out_of_gas_3106", label %"$have_gas_3107"

"$out_of_gas_3106":                               ; preds = %"$have_gas_3093"
  call void @_out_of_gas()
  br label %"$have_gas_3107"

"$have_gas_3107":                                 ; preds = %"$out_of_gas_3106", %"$have_gas_3093"
  %"$consume_3108" = sub i64 %"$gasrem_3104", %"$_literal_cost_call_3103"
  store i64 %"$consume_3108", i64* @_gasrem, align 8
  %"$execptr_load_3109" = load i8*, i8** @_execptr, align 8
  %"$e_3110" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3109", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3110"), !dbg !324
  br label %"$matchsucc_3063"

"$default_3067":                                  ; preds = %"$have_gas_3061"
  br label %"$joinp_2"

"$joinp_2":                                       ; preds = %"$default_3067"
  br label %"$matchsucc_3063"

"$matchsucc_3063":                                ; preds = %"$have_gas_3107", %"$joinp_2"
  br label %"$matchsucc_2974"

"$False_3111":                                    ; preds = %"$have_gas_2972"
  %"$isSenderNodeOwner_3112" = bitcast %TName_Bool* %"$isSenderNodeOwner_2975" to %CName_False*
  %"$gasrem_3113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3114" = icmp ugt i64 1, %"$gasrem_3113"
  br i1 %"$gascmp_3114", label %"$out_of_gas_3115", label %"$have_gas_3116"

"$out_of_gas_3115":                               ; preds = %"$False_3111"
  call void @_out_of_gas()
  br label %"$have_gas_3116"

"$have_gas_3116":                                 ; preds = %"$out_of_gas_3115", %"$False_3111"
  %"$consume_3117" = sub i64 %"$gasrem_3113", 1
  store i64 %"$consume_3117", i64* @_gasrem, align 8
  %e3 = alloca i8*, align 8
  %"$gasrem_3118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3119" = icmp ugt i64 1, %"$gasrem_3118"
  br i1 %"$gascmp_3119", label %"$out_of_gas_3120", label %"$have_gas_3121"

"$out_of_gas_3120":                               ; preds = %"$have_gas_3116"
  call void @_out_of_gas()
  br label %"$have_gas_3121"

"$have_gas_3121":                                 ; preds = %"$out_of_gas_3120", %"$have_gas_3116"
  %"$consume_3122" = sub i64 %"$gasrem_3118", 1
  store i64 %"$consume_3122", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_3123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3124" = icmp ugt i64 1, %"$gasrem_3123"
  br i1 %"$gascmp_3124", label %"$out_of_gas_3125", label %"$have_gas_3126"

"$out_of_gas_3125":                               ; preds = %"$have_gas_3121"
  call void @_out_of_gas()
  br label %"$have_gas_3126"

"$have_gas_3126":                                 ; preds = %"$out_of_gas_3125", %"$have_gas_3121"
  %"$consume_3127" = sub i64 %"$gasrem_3123", 1
  store i64 %"$consume_3127", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_3128", i32 0, i32 0), i32 21 }, %String* %m, align 8, !dbg !325
  %"$gasrem_3129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3130" = icmp ugt i64 1, %"$gasrem_3129"
  br i1 %"$gascmp_3130", label %"$out_of_gas_3131", label %"$have_gas_3132"

"$out_of_gas_3131":                               ; preds = %"$have_gas_3126"
  call void @_out_of_gas()
  br label %"$have_gas_3132"

"$have_gas_3132":                                 ; preds = %"$out_of_gas_3131", %"$have_gas_3126"
  %"$consume_3133" = sub i64 %"$gasrem_3129", 1
  store i64 %"$consume_3133", i64* @_gasrem, align 8
  %"$ud-registry.eError_55" = alloca i8*, align 8
  %"$ud-registry.eError_3134" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3135" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3134", 0
  %"$ud-registry.eError_envptr_3136" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3134", 1
  %"$m_3137" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_3138" = call i8* %"$ud-registry.eError_fptr_3135"(i8* %"$ud-registry.eError_envptr_3136", %String %"$m_3137"), !dbg !327
  store i8* %"$ud-registry.eError_call_3138", i8** %"$ud-registry.eError_55", align 8, !dbg !327
  %"$$ud-registry.eError_55_3139" = load i8*, i8** %"$ud-registry.eError_55", align 8
  store i8* %"$$ud-registry.eError_55_3139", i8** %e3, align 8, !dbg !327
  %"$e_3140" = load i8*, i8** %e3, align 8
  %"$_literal_cost_call_3142" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3140")
  %"$gasrem_3143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3144" = icmp ugt i64 %"$_literal_cost_call_3142", %"$gasrem_3143"
  br i1 %"$gascmp_3144", label %"$out_of_gas_3145", label %"$have_gas_3146"

"$out_of_gas_3145":                               ; preds = %"$have_gas_3132"
  call void @_out_of_gas()
  br label %"$have_gas_3146"

"$have_gas_3146":                                 ; preds = %"$out_of_gas_3145", %"$have_gas_3132"
  %"$consume_3147" = sub i64 %"$gasrem_3143", %"$_literal_cost_call_3142"
  store i64 %"$consume_3147", i64* @_gasrem, align 8
  %"$execptr_load_3148" = load i8*, i8** @_execptr, align 8
  %"$e_3149" = load i8*, i8** %e3, align 8
  call void @_event(i8* %"$execptr_load_3148", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3149"), !dbg !328
  br label %"$matchsucc_2974"

"$empty_default_2978":                            ; preds = %"$have_gas_2972"
  br label %"$matchsucc_2974"

"$matchsucc_2974":                                ; preds = %"$have_gas_3146", %"$matchsucc_3063", %"$empty_default_2978"
  ret void
}

define void @approve(i8* %0) !dbg !329 {
entry:
  %"$_amount_3151" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3152" = bitcast i8* %"$_amount_3151" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3152", align 8
  %"$_sender_3153" = getelementptr i8, i8* %0, i32 16
  %"$_sender_3154" = bitcast i8* %"$_sender_3153" to [20 x i8]*
  %"$node_3155" = getelementptr i8, i8* %0, i32 36
  %"$node_3156" = bitcast i8* %"$node_3155" to [32 x i8]*
  %"$address_3157" = getelementptr i8, i8* %0, i32 68
  %"$address_3158" = bitcast i8* %"$address_3157" to [20 x i8]*
  call void @"$approve_2920"(%Uint128 %_amount, [20 x i8]* %"$_sender_3154", [32 x i8]* %"$node_3156", [20 x i8]* %"$address_3158"), !dbg !330
  ret void
}

define internal void @"$approveFor_3159"(%Uint128 %_amount, [20 x i8]* %"$_sender_3160", [20 x i8]* %"$address_3161", %TName_Bool* %isApproved) !dbg !331 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3160", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_3161", align 1
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3162_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3162_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3162_salloc_load", i64 20)
  %"$indices_buf_3162_salloc" = bitcast i8* %"$indices_buf_3162_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3162" = bitcast [20 x i8]* %"$indices_buf_3162_salloc" to i8*
  %"$indices_gep_3163" = getelementptr i8, i8* %"$indices_buf_3162", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3163" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_3164" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_3166" = call i8* @_fetch_field(i8* %"$execptr_load_3164", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3165", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_3162", i32 1), !dbg !332
  %"$maybeOperators_3167" = bitcast i8* %"$maybeOperators_3166" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3167", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3168" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3168_3169" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3168" to i8*
  %"$_literal_cost_call_3170" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_3168_3169")
  %"$gasadd_3171" = add i64 %"$_literal_cost_call_3170", 0
  %"$gasadd_3172" = add i64 %"$gasadd_3171", 1
  %"$gasrem_3173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3174" = icmp ugt i64 %"$gasadd_3172", %"$gasrem_3173"
  br i1 %"$gascmp_3174", label %"$out_of_gas_3175", label %"$have_gas_3176"

"$out_of_gas_3175":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3176"

"$have_gas_3176":                                 ; preds = %"$out_of_gas_3175", %entry
  %"$consume_3177" = sub i64 %"$gasrem_3173", %"$gasadd_3172"
  store i64 %"$consume_3177", i64* @_gasrem, align 8
  %"$gasrem_3178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3179" = icmp ugt i64 1, %"$gasrem_3178"
  br i1 %"$gascmp_3179", label %"$out_of_gas_3180", label %"$have_gas_3181"

"$out_of_gas_3180":                               ; preds = %"$have_gas_3176"
  call void @_out_of_gas()
  br label %"$have_gas_3181"

"$have_gas_3181":                                 ; preds = %"$out_of_gas_3180", %"$have_gas_3176"
  %"$consume_3182" = sub i64 %"$gasrem_3178", 1
  store i64 %"$consume_3182", i64* @_gasrem, align 8
  %currentOperators = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_3183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3184" = icmp ugt i64 2, %"$gasrem_3183"
  br i1 %"$gascmp_3184", label %"$out_of_gas_3185", label %"$have_gas_3186"

"$out_of_gas_3185":                               ; preds = %"$have_gas_3181"
  call void @_out_of_gas()
  br label %"$have_gas_3186"

"$have_gas_3186":                                 ; preds = %"$out_of_gas_3185", %"$have_gas_3181"
  %"$consume_3187" = sub i64 %"$gasrem_3183", 2
  store i64 %"$consume_3187", i64* @_gasrem, align 8
  %"$maybeOperators_3189" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_tag_3190" = getelementptr inbounds %"TName_Option_List_(ByStr20)", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3189", i32 0, i32 0
  %"$maybeOperators_tag_3191" = load i8, i8* %"$maybeOperators_tag_3190", align 1
  switch i8 %"$maybeOperators_tag_3191", label %"$empty_default_3192" [
    i8 1, label %"$None_3193"
    i8 0, label %"$Some_3201"
  ], !dbg !333

"$None_3193":                                     ; preds = %"$have_gas_3186"
  %"$maybeOperators_3194" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3189" to %"CName_None_List_(ByStr20)"*
  %"$gasrem_3195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3196" = icmp ugt i64 1, %"$gasrem_3195"
  br i1 %"$gascmp_3196", label %"$out_of_gas_3197", label %"$have_gas_3198"

"$out_of_gas_3197":                               ; preds = %"$None_3193"
  call void @_out_of_gas()
  br label %"$have_gas_3198"

"$have_gas_3198":                                 ; preds = %"$out_of_gas_3197", %"$None_3193"
  %"$consume_3199" = sub i64 %"$gasrem_3195", 1
  store i64 %"$consume_3199", i64* @_gasrem, align 8
  %"$ud-registry.nilByStr20_3200" = load %TName_List_ByStr20*, %TName_List_ByStr20** @ud-registry.nilByStr20, align 8
  store %TName_List_ByStr20* %"$ud-registry.nilByStr20_3200", %TName_List_ByStr20** %currentOperators, align 8, !dbg !334
  br label %"$matchsucc_3188"

"$Some_3201":                                     ; preds = %"$have_gas_3186"
  %"$maybeOperators_3202" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3189" to %"CName_Some_List_(ByStr20)"*
  %"$ops_gep_3203" = getelementptr inbounds %"CName_Some_List_(ByStr20)", %"CName_Some_List_(ByStr20)"* %"$maybeOperators_3202", i32 0, i32 1
  %"$ops_load_3204" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ops_gep_3203", align 8
  %ops = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$ops_load_3204", %TName_List_ByStr20** %ops, align 8
  %"$gasrem_3205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3206" = icmp ugt i64 1, %"$gasrem_3205"
  br i1 %"$gascmp_3206", label %"$out_of_gas_3207", label %"$have_gas_3208"

"$out_of_gas_3207":                               ; preds = %"$Some_3201"
  call void @_out_of_gas()
  br label %"$have_gas_3208"

"$have_gas_3208":                                 ; preds = %"$out_of_gas_3207", %"$Some_3201"
  %"$consume_3209" = sub i64 %"$gasrem_3205", 1
  store i64 %"$consume_3209", i64* @_gasrem, align 8
  %"$ops_3210" = load %TName_List_ByStr20*, %TName_List_ByStr20** %ops, align 8
  store %TName_List_ByStr20* %"$ops_3210", %TName_List_ByStr20** %currentOperators, align 8, !dbg !337
  br label %"$matchsucc_3188"

"$empty_default_3192":                            ; preds = %"$have_gas_3186"
  br label %"$matchsucc_3188"

"$matchsucc_3188":                                ; preds = %"$have_gas_3208", %"$have_gas_3198", %"$empty_default_3192"
  %"$gasrem_3211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3212" = icmp ugt i64 1, %"$gasrem_3211"
  br i1 %"$gascmp_3212", label %"$out_of_gas_3213", label %"$have_gas_3214"

"$out_of_gas_3213":                               ; preds = %"$matchsucc_3188"
  call void @_out_of_gas()
  br label %"$have_gas_3214"

"$have_gas_3214":                                 ; preds = %"$out_of_gas_3213", %"$matchsucc_3188"
  %"$consume_3215" = sub i64 %"$gasrem_3211", 1
  store i64 %"$consume_3215", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_3216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3217" = icmp ugt i64 1, %"$gasrem_3216"
  br i1 %"$gascmp_3217", label %"$out_of_gas_3218", label %"$have_gas_3219"

"$out_of_gas_3218":                               ; preds = %"$have_gas_3214"
  call void @_out_of_gas()
  br label %"$have_gas_3219"

"$have_gas_3219":                                 ; preds = %"$out_of_gas_3218", %"$have_gas_3214"
  %"$consume_3220" = sub i64 %"$gasrem_3216", 1
  store i64 %"$consume_3220", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_3221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3222" = icmp ugt i64 1, %"$gasrem_3221"
  br i1 %"$gascmp_3222", label %"$out_of_gas_3223", label %"$have_gas_3224"

"$out_of_gas_3223":                               ; preds = %"$have_gas_3219"
  call void @_out_of_gas()
  br label %"$have_gas_3224"

"$have_gas_3224":                                 ; preds = %"$out_of_gas_3223", %"$have_gas_3219"
  %"$consume_3225" = sub i64 %"$gasrem_3221", 1
  store i64 %"$consume_3225", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Excludes_62" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Excludes_3226" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes, align 8
  %"$ud-registry.listByStr20Excludes_fptr_3227" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_3226", 0
  %"$ud-registry.listByStr20Excludes_envptr_3228" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_3226", 1
  %"$currentOperators_3229" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$ud-registry.listByStr20Excludes_call_3230" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_fptr_3227"(i8* %"$ud-registry.listByStr20Excludes_envptr_3228", %TName_List_ByStr20* %"$currentOperators_3229"), !dbg !339
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_call_3230", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_62", align 8, !dbg !339
  %"$ud-registry.listByStr20Excludes_63" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Excludes_62_3231" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_62", align 8
  %"$$ud-registry.listByStr20Excludes_62_fptr_3232" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_62_3231", 0
  %"$$ud-registry.listByStr20Excludes_62_envptr_3233" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_62_3231", 1
  %"$$ud-registry.listByStr20Excludes_62_address_3234" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20Excludes_62_address_3234", align 1
  %"$$ud-registry.listByStr20Excludes_62_call_3235" = call %TName_Bool* %"$$ud-registry.listByStr20Excludes_62_fptr_3232"(i8* %"$$ud-registry.listByStr20Excludes_62_envptr_3233", [20 x i8]* %"$$ud-registry.listByStr20Excludes_62_address_3234"), !dbg !339
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_62_call_3235", %TName_Bool** %"$ud-registry.listByStr20Excludes_63", align 8, !dbg !339
  %"$$ud-registry.listByStr20Excludes_63_3236" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Excludes_63", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_63_3236", %TName_Bool** %b, align 8, !dbg !339
  %"$gasrem_3237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3238" = icmp ugt i64 1, %"$gasrem_3237"
  br i1 %"$gascmp_3238", label %"$out_of_gas_3239", label %"$have_gas_3240"

"$out_of_gas_3239":                               ; preds = %"$have_gas_3224"
  call void @_out_of_gas()
  br label %"$have_gas_3240"

"$have_gas_3240":                                 ; preds = %"$out_of_gas_3239", %"$have_gas_3224"
  %"$consume_3241" = sub i64 %"$gasrem_3237", 1
  store i64 %"$consume_3241", i64* @_gasrem, align 8
  %"$ud-registry.xandb_64" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.xandb_3242" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8
  %"$ud-registry.xandb_fptr_3243" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_3242", 0
  %"$ud-registry.xandb_envptr_3244" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_3242", 1
  %"$b_3245" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$ud-registry.xandb_call_3246" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_fptr_3243"(i8* %"$ud-registry.xandb_envptr_3244", %TName_Bool* %"$b_3245"), !dbg !340
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_call_3246", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_64", align 8, !dbg !340
  %"$ud-registry.xandb_65" = alloca %TName_Bool*, align 8
  %"$$ud-registry.xandb_64_3247" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_64", align 8
  %"$$ud-registry.xandb_64_fptr_3248" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_64_3247", 0
  %"$$ud-registry.xandb_64_envptr_3249" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_64_3247", 1
  %"$$ud-registry.xandb_64_call_3250" = call %TName_Bool* %"$$ud-registry.xandb_64_fptr_3248"(i8* %"$$ud-registry.xandb_64_envptr_3249", %TName_Bool* %isApproved), !dbg !340
  store %TName_Bool* %"$$ud-registry.xandb_64_call_3250", %TName_Bool** %"$ud-registry.xandb_65", align 8, !dbg !340
  %"$$ud-registry.xandb_65_3251" = load %TName_Bool*, %TName_Bool** %"$ud-registry.xandb_65", align 8
  store %TName_Bool* %"$$ud-registry.xandb_65_3251", %TName_Bool** %needsToChange, align 8, !dbg !340
  %"$gasrem_3252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3253" = icmp ugt i64 2, %"$gasrem_3252"
  br i1 %"$gascmp_3253", label %"$out_of_gas_3254", label %"$have_gas_3255"

"$out_of_gas_3254":                               ; preds = %"$have_gas_3240"
  call void @_out_of_gas()
  br label %"$have_gas_3255"

"$have_gas_3255":                                 ; preds = %"$out_of_gas_3254", %"$have_gas_3240"
  %"$consume_3256" = sub i64 %"$gasrem_3252", 2
  store i64 %"$consume_3256", i64* @_gasrem, align 8
  %"$needsToChange_3258" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_3259" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_3258", i32 0, i32 0
  %"$needsToChange_tag_3260" = load i8, i8* %"$needsToChange_tag_3259", align 1
  switch i8 %"$needsToChange_tag_3260", label %"$default_3261" [
    i8 0, label %"$True_3262"
  ], !dbg !341

"$True_3262":                                     ; preds = %"$have_gas_3255"
  %"$needsToChange_3263" = bitcast %TName_Bool* %"$needsToChange_3258" to %CName_True*
  %"$gasrem_3264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3265" = icmp ugt i64 1, %"$gasrem_3264"
  br i1 %"$gascmp_3265", label %"$out_of_gas_3266", label %"$have_gas_3267"

"$out_of_gas_3266":                               ; preds = %"$True_3262"
  call void @_out_of_gas()
  br label %"$have_gas_3267"

"$have_gas_3267":                                 ; preds = %"$out_of_gas_3266", %"$True_3262"
  %"$consume_3268" = sub i64 %"$gasrem_3264", 1
  store i64 %"$consume_3268", i64* @_gasrem, align 8
  %newOperators = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_3269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3270" = icmp ugt i64 2, %"$gasrem_3269"
  br i1 %"$gascmp_3270", label %"$out_of_gas_3271", label %"$have_gas_3272"

"$out_of_gas_3271":                               ; preds = %"$have_gas_3267"
  call void @_out_of_gas()
  br label %"$have_gas_3272"

"$have_gas_3272":                                 ; preds = %"$out_of_gas_3271", %"$have_gas_3267"
  %"$consume_3273" = sub i64 %"$gasrem_3269", 2
  store i64 %"$consume_3273", i64* @_gasrem, align 8
  %"$isApproved_tag_3275" = getelementptr inbounds %TName_Bool, %TName_Bool* %isApproved, i32 0, i32 0
  %"$isApproved_tag_3276" = load i8, i8* %"$isApproved_tag_3275", align 1
  switch i8 %"$isApproved_tag_3276", label %"$empty_default_3277" [
    i8 0, label %"$True_3278"
    i8 1, label %"$False_3291"
  ], !dbg !342

"$True_3278":                                     ; preds = %"$have_gas_3272"
  %"$isApproved_3279" = bitcast %TName_Bool* %isApproved to %CName_True*
  %"$gasrem_3280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3281" = icmp ugt i64 1, %"$gasrem_3280"
  br i1 %"$gascmp_3281", label %"$out_of_gas_3282", label %"$have_gas_3283"

"$out_of_gas_3282":                               ; preds = %"$True_3278"
  call void @_out_of_gas()
  br label %"$have_gas_3283"

"$have_gas_3283":                                 ; preds = %"$out_of_gas_3282", %"$True_3278"
  %"$consume_3284" = sub i64 %"$gasrem_3280", 1
  store i64 %"$consume_3284", i64* @_gasrem, align 8
  %"$currentOperators_3285" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$adtval_3286_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3286_salloc" = call i8* @_salloc(i8* %"$adtval_3286_load", i64 29)
  %"$adtval_3286" = bitcast i8* %"$adtval_3286_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_3287" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3286", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3287", align 1
  %"$adtgep_3288" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3286", i32 0, i32 1
  store [20 x i8] %address, [20 x i8]* %"$adtgep_3288", align 1
  %"$adtgep_3289" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3286", i32 0, i32 2
  store %TName_List_ByStr20* %"$currentOperators_3285", %TName_List_ByStr20** %"$adtgep_3289", align 8
  %"$adtptr_3290" = bitcast %CName_Cons_ByStr20* %"$adtval_3286" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_3290", %TName_List_ByStr20** %newOperators, align 8, !dbg !345
  br label %"$matchsucc_3274"

"$False_3291":                                    ; preds = %"$have_gas_3272"
  %"$isApproved_3292" = bitcast %TName_Bool* %isApproved to %CName_False*
  %"$gasrem_3293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3294" = icmp ugt i64 1, %"$gasrem_3293"
  br i1 %"$gascmp_3294", label %"$out_of_gas_3295", label %"$have_gas_3296"

"$out_of_gas_3295":                               ; preds = %"$False_3291"
  call void @_out_of_gas()
  br label %"$have_gas_3296"

"$have_gas_3296":                                 ; preds = %"$out_of_gas_3295", %"$False_3291"
  %"$consume_3297" = sub i64 %"$gasrem_3293", 1
  store i64 %"$consume_3297", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20FilterOut_60" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20FilterOut_3298" = load { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8
  %"$ud-registry.listByStr20FilterOut_fptr_3299" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_3298", 0
  %"$ud-registry.listByStr20FilterOut_envptr_3300" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_3298", 1
  %"$currentOperators_3301" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$ud-registry.listByStr20FilterOut_call_3302" = call { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_fptr_3299"(i8* %"$ud-registry.listByStr20FilterOut_envptr_3300", %TName_List_ByStr20* %"$currentOperators_3301"), !dbg !348
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_call_3302", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_60", align 8, !dbg !348
  %"$ud-registry.listByStr20FilterOut_61" = alloca %TName_List_ByStr20*, align 8
  %"$$ud-registry.listByStr20FilterOut_60_3303" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_60", align 8
  %"$$ud-registry.listByStr20FilterOut_60_fptr_3304" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_60_3303", 0
  %"$$ud-registry.listByStr20FilterOut_60_envptr_3305" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_60_3303", 1
  %"$$ud-registry.listByStr20FilterOut_60_address_3306" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20FilterOut_60_address_3306", align 1
  %"$$ud-registry.listByStr20FilterOut_60_call_3307" = call %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_60_fptr_3304"(i8* %"$$ud-registry.listByStr20FilterOut_60_envptr_3305", [20 x i8]* %"$$ud-registry.listByStr20FilterOut_60_address_3306"), !dbg !348
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_60_call_3307", %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_61", align 8, !dbg !348
  %"$$ud-registry.listByStr20FilterOut_61_3308" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_61", align 8
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_61_3308", %TName_List_ByStr20** %newOperators, align 8, !dbg !348
  br label %"$matchsucc_3274"

"$empty_default_3277":                            ; preds = %"$have_gas_3272"
  br label %"$matchsucc_3274"

"$matchsucc_3274":                                ; preds = %"$have_gas_3296", %"$have_gas_3283", %"$empty_default_3277"
  %"$newOperators_3309" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newOperators, align 8
  %"$$newOperators_3309_3310" = bitcast %TName_List_ByStr20* %"$newOperators_3309" to i8*
  %"$_literal_cost_call_3311" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$newOperators_3309_3310")
  %"$gasadd_3312" = add i64 %"$_literal_cost_call_3311", 1
  %"$gasrem_3313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3314" = icmp ugt i64 %"$gasadd_3312", %"$gasrem_3313"
  br i1 %"$gascmp_3314", label %"$out_of_gas_3315", label %"$have_gas_3316"

"$out_of_gas_3315":                               ; preds = %"$matchsucc_3274"
  call void @_out_of_gas()
  br label %"$have_gas_3316"

"$have_gas_3316":                                 ; preds = %"$out_of_gas_3315", %"$matchsucc_3274"
  %"$consume_3317" = sub i64 %"$gasrem_3313", %"$gasadd_3312"
  store i64 %"$consume_3317", i64* @_gasrem, align 8
  %"$indices_buf_3318_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3318_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3318_salloc_load", i64 20)
  %"$indices_buf_3318_salloc" = bitcast i8* %"$indices_buf_3318_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3318" = bitcast [20 x i8]* %"$indices_buf_3318_salloc" to i8*
  %"$indices_gep_3319" = getelementptr i8, i8* %"$indices_buf_3318", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3319" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_3320" = load i8*, i8** @_execptr, align 8
  %"$newOperators_3322" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newOperators, align 8
  %"$update_value_3323" = bitcast %TName_List_ByStr20* %"$newOperators_3322" to i8*
  call void @_update_field(i8* %"$execptr_load_3320", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3321", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_3318", i8* %"$update_value_3323"), !dbg !350
  %"$gasrem_3324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3325" = icmp ugt i64 1, %"$gasrem_3324"
  br i1 %"$gascmp_3325", label %"$out_of_gas_3326", label %"$have_gas_3327"

"$out_of_gas_3326":                               ; preds = %"$have_gas_3316"
  call void @_out_of_gas()
  br label %"$have_gas_3327"

"$have_gas_3327":                                 ; preds = %"$out_of_gas_3326", %"$have_gas_3316"
  %"$consume_3328" = sub i64 %"$gasrem_3324", 1
  store i64 %"$consume_3328", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3330" = icmp ugt i64 1, %"$gasrem_3329"
  br i1 %"$gascmp_3330", label %"$out_of_gas_3331", label %"$have_gas_3332"

"$out_of_gas_3331":                               ; preds = %"$have_gas_3327"
  call void @_out_of_gas()
  br label %"$have_gas_3332"

"$have_gas_3332":                                 ; preds = %"$out_of_gas_3331", %"$have_gas_3327"
  %"$consume_3333" = sub i64 %"$gasrem_3329", 1
  store i64 %"$consume_3333", i64* @_gasrem, align 8
  %"$ud-registry.eApprovedFor_57" = alloca { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eApprovedFor_3334" = load { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApprovedFor, align 8
  %"$ud-registry.eApprovedFor_fptr_3335" = extractvalue { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_3334", 0
  %"$ud-registry.eApprovedFor_envptr_3336" = extractvalue { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_3334", 1
  %"$ud-registry.eApprovedFor__sender_3337" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.eApprovedFor__sender_3337", align 1
  %"$ud-registry.eApprovedFor_call_3338" = call { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_fptr_3335"(i8* %"$ud-registry.eApprovedFor_envptr_3336", [20 x i8]* %"$ud-registry.eApprovedFor__sender_3337"), !dbg !351
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_call_3338", { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eApprovedFor_57", align 8, !dbg !351
  %"$ud-registry.eApprovedFor_58" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$ud-registry.eApprovedFor_57_3339" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eApprovedFor_57", align 8
  %"$$ud-registry.eApprovedFor_57_fptr_3340" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eApprovedFor_57_3339", 0
  %"$$ud-registry.eApprovedFor_57_envptr_3341" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eApprovedFor_57_3339", 1
  %"$$ud-registry.eApprovedFor_57_address_3342" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.eApprovedFor_57_address_3342", align 1
  %"$$ud-registry.eApprovedFor_57_call_3343" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_57_fptr_3340"(i8* %"$$ud-registry.eApprovedFor_57_envptr_3341", [20 x i8]* %"$$ud-registry.eApprovedFor_57_address_3342"), !dbg !351
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_57_call_3343", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eApprovedFor_58", align 8, !dbg !351
  %"$ud-registry.eApprovedFor_59" = alloca i8*, align 8
  %"$$ud-registry.eApprovedFor_58_3344" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eApprovedFor_58", align 8
  %"$$ud-registry.eApprovedFor_58_fptr_3345" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_58_3344", 0
  %"$$ud-registry.eApprovedFor_58_envptr_3346" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_58_3344", 1
  %"$$ud-registry.eApprovedFor_58_call_3347" = call i8* %"$$ud-registry.eApprovedFor_58_fptr_3345"(i8* %"$$ud-registry.eApprovedFor_58_envptr_3346", %TName_Bool* %isApproved), !dbg !351
  store i8* %"$$ud-registry.eApprovedFor_58_call_3347", i8** %"$ud-registry.eApprovedFor_59", align 8, !dbg !351
  %"$$ud-registry.eApprovedFor_59_3348" = load i8*, i8** %"$ud-registry.eApprovedFor_59", align 8
  store i8* %"$$ud-registry.eApprovedFor_59_3348", i8** %e, align 8, !dbg !351
  %"$e_3349" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3351" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3349")
  %"$gasrem_3352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3353" = icmp ugt i64 %"$_literal_cost_call_3351", %"$gasrem_3352"
  br i1 %"$gascmp_3353", label %"$out_of_gas_3354", label %"$have_gas_3355"

"$out_of_gas_3354":                               ; preds = %"$have_gas_3332"
  call void @_out_of_gas()
  br label %"$have_gas_3355"

"$have_gas_3355":                                 ; preds = %"$out_of_gas_3354", %"$have_gas_3332"
  %"$consume_3356" = sub i64 %"$gasrem_3352", %"$_literal_cost_call_3351"
  store i64 %"$consume_3356", i64* @_gasrem, align 8
  %"$execptr_load_3357" = load i8*, i8** @_execptr, align 8
  %"$e_3358" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3357", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3358"), !dbg !352
  br label %"$matchsucc_3257"

"$default_3261":                                  ; preds = %"$have_gas_3255"
  br label %"$joinp_3"

"$joinp_3":                                       ; preds = %"$default_3261"
  br label %"$matchsucc_3257"

"$matchsucc_3257":                                ; preds = %"$have_gas_3355", %"$joinp_3"
  ret void
}

define void @approveFor(i8* %0) !dbg !353 {
entry:
  %"$_amount_3360" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3361" = bitcast i8* %"$_amount_3360" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3361", align 8
  %"$_sender_3362" = getelementptr i8, i8* %0, i32 16
  %"$_sender_3363" = bitcast i8* %"$_sender_3362" to [20 x i8]*
  %"$address_3364" = getelementptr i8, i8* %0, i32 36
  %"$address_3365" = bitcast i8* %"$address_3364" to [20 x i8]*
  %"$isApproved_3366" = getelementptr i8, i8* %0, i32 56
  %"$isApproved_3367" = bitcast i8* %"$isApproved_3366" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_3367", align 8
  call void @"$approveFor_3159"(%Uint128 %_amount, [20 x i8]* %"$_sender_3363", [20 x i8]* %"$address_3365", %TName_Bool* %isApproved), !dbg !354
  ret void
}

define internal void @"$configureNode_3368"(%Uint128 %_amount, [20 x i8]* %"$_sender_3369", [32 x i8]* %"$node_3370", [20 x i8]* %"$owner_3371", [20 x i8]* %"$resolver_3372") !dbg !355 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3369", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_3370", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_3371", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_3372", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3373_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3373_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3373_salloc_load", i64 32)
  %"$indices_buf_3373_salloc" = bitcast i8* %"$indices_buf_3373_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3373" = bitcast [32 x i8]* %"$indices_buf_3373_salloc" to i8*
  %"$indices_gep_3374" = getelementptr i8, i8* %"$indices_buf_3373", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3374" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3375" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_3377" = call i8* @_fetch_field(i8* %"$execptr_load_3375", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3376", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3373", i32 1), !dbg !356
  %"$maybeRecord_3378" = bitcast i8* %"$maybeRecord_3377" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3378", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3379" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3379_3380" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3379" to i8*
  %"$_literal_cost_call_3381" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_3379_3380")
  %"$gasadd_3382" = add i64 %"$_literal_cost_call_3381", 0
  %"$gasadd_3383" = add i64 %"$gasadd_3382", 1
  %"$gasrem_3384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3385" = icmp ugt i64 %"$gasadd_3383", %"$gasrem_3384"
  br i1 %"$gascmp_3385", label %"$out_of_gas_3386", label %"$have_gas_3387"

"$out_of_gas_3386":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3387"

"$have_gas_3387":                                 ; preds = %"$out_of_gas_3386", %entry
  %"$consume_3388" = sub i64 %"$gasrem_3384", %"$gasadd_3383"
  store i64 %"$consume_3388", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3389_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3389_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3389_salloc_load", i64 32)
  %"$indices_buf_3389_salloc" = bitcast i8* %"$indices_buf_3389_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3389" = bitcast [32 x i8]* %"$indices_buf_3389_salloc" to i8*
  %"$indices_gep_3390" = getelementptr i8, i8* %"$indices_buf_3389", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3390" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_3391" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_3393" = call i8* @_fetch_field(i8* %"$execptr_load_3391", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3392", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_3389", i32 1), !dbg !357
  %"$maybeApproved_3394" = bitcast i8* %"$maybeApproved_3393" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3394", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3395" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3395_3396" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3395" to i8*
  %"$_literal_cost_call_3397" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_3395_3396")
  %"$gasadd_3398" = add i64 %"$_literal_cost_call_3397", 0
  %"$gasadd_3399" = add i64 %"$gasadd_3398", 1
  %"$gasrem_3400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3401" = icmp ugt i64 %"$gasadd_3399", %"$gasrem_3400"
  br i1 %"$gascmp_3401", label %"$out_of_gas_3402", label %"$have_gas_3403"

"$out_of_gas_3402":                               ; preds = %"$have_gas_3387"
  call void @_out_of_gas()
  br label %"$have_gas_3403"

"$have_gas_3403":                                 ; preds = %"$out_of_gas_3402", %"$have_gas_3387"
  %"$consume_3404" = sub i64 %"$gasrem_3400", %"$gasadd_3399"
  store i64 %"$consume_3404", i64* @_gasrem, align 8
  %"$gasrem_3405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3406" = icmp ugt i64 1, %"$gasrem_3405"
  br i1 %"$gascmp_3406", label %"$out_of_gas_3407", label %"$have_gas_3408"

"$out_of_gas_3407":                               ; preds = %"$have_gas_3403"
  call void @_out_of_gas()
  br label %"$have_gas_3408"

"$have_gas_3408":                                 ; preds = %"$out_of_gas_3407", %"$have_gas_3403"
  %"$consume_3409" = sub i64 %"$gasrem_3405", 1
  store i64 %"$consume_3409", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3411" = icmp ugt i64 1, %"$gasrem_3410"
  br i1 %"$gascmp_3411", label %"$out_of_gas_3412", label %"$have_gas_3413"

"$out_of_gas_3412":                               ; preds = %"$have_gas_3408"
  call void @_out_of_gas()
  br label %"$have_gas_3413"

"$have_gas_3413":                                 ; preds = %"$out_of_gas_3412", %"$have_gas_3408"
  %"$consume_3414" = sub i64 %"$gasrem_3410", 1
  store i64 %"$consume_3414", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_76" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3415" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3416" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3415", 0
  %"$ud-registry.recordMemberOwner_envptr_3417" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3415", 1
  %"$maybeRecord_3418" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3419" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3416"(i8* %"$ud-registry.recordMemberOwner_envptr_3417", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3419", %TName_Option_ud-registry.Record* %"$maybeRecord_3418"), !dbg !358
  %"$ud-registry.recordMemberOwner_ret_3420" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3419", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3420", [20 x i8]* %"$ud-registry.recordMemberOwner_76", align 1, !dbg !358
  %"$$ud-registry.recordMemberOwner_76_3421" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_76", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_76_3421", [20 x i8]* %recordOwner, align 1, !dbg !358
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3422_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3422_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3422_salloc_load", i64 20)
  %"$indices_buf_3422_salloc" = bitcast i8* %"$indices_buf_3422_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3422" = bitcast [20 x i8]* %"$indices_buf_3422_salloc" to i8*
  %"$recordOwner_3423" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_3424" = getelementptr i8, i8* %"$indices_buf_3422", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3424" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3423", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_3425" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_3427" = call i8* @_fetch_field(i8* %"$execptr_load_3425", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3426", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_3422", i32 1), !dbg !359
  %"$maybeOperators_3428" = bitcast i8* %"$maybeOperators_3427" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3428", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3429" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3429_3430" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3429" to i8*
  %"$_literal_cost_call_3431" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_3429_3430")
  %"$gasadd_3432" = add i64 %"$_literal_cost_call_3431", 0
  %"$gasadd_3433" = add i64 %"$gasadd_3432", 1
  %"$gasrem_3434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3435" = icmp ugt i64 %"$gasadd_3433", %"$gasrem_3434"
  br i1 %"$gascmp_3435", label %"$out_of_gas_3436", label %"$have_gas_3437"

"$out_of_gas_3436":                               ; preds = %"$have_gas_3413"
  call void @_out_of_gas()
  br label %"$have_gas_3437"

"$have_gas_3437":                                 ; preds = %"$out_of_gas_3436", %"$have_gas_3413"
  %"$consume_3438" = sub i64 %"$gasrem_3434", %"$gasadd_3433"
  store i64 %"$consume_3438", i64* @_gasrem, align 8
  %"$gasrem_3439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3440" = icmp ugt i64 1, %"$gasrem_3439"
  br i1 %"$gascmp_3440", label %"$out_of_gas_3441", label %"$have_gas_3442"

"$out_of_gas_3441":                               ; preds = %"$have_gas_3437"
  call void @_out_of_gas()
  br label %"$have_gas_3442"

"$have_gas_3442":                                 ; preds = %"$out_of_gas_3441", %"$have_gas_3437"
  %"$consume_3443" = sub i64 %"$gasrem_3439", 1
  store i64 %"$consume_3443", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_3444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3445" = icmp ugt i64 1, %"$gasrem_3444"
  br i1 %"$gascmp_3445", label %"$out_of_gas_3446", label %"$have_gas_3447"

"$out_of_gas_3446":                               ; preds = %"$have_gas_3442"
  call void @_out_of_gas()
  br label %"$have_gas_3447"

"$have_gas_3447":                                 ; preds = %"$out_of_gas_3446", %"$have_gas_3442"
  %"$consume_3448" = sub i64 %"$gasrem_3444", 1
  store i64 %"$consume_3448", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_72" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_3449" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_3450" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3449", 0
  %"$ud-registry.getIsOAO_envptr_3451" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3449", 1
  %"$ud-registry.getIsOAO__sender_3452" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3452", align 1
  %"$ud-registry.getIsOAO_call_3453" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_3450"(i8* %"$ud-registry.getIsOAO_envptr_3451", [20 x i8]* %"$ud-registry.getIsOAO__sender_3452"), !dbg !360
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_3453", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_72", align 8, !dbg !360
  %"$ud-registry.getIsOAO_73" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_72_3454" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_72", align 8
  %"$$ud-registry.getIsOAO_72_fptr_3455" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_72_3454", 0
  %"$$ud-registry.getIsOAO_72_envptr_3456" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_72_3454", 1
  %"$$ud-registry.getIsOAO_72_recordOwner_3457" = alloca [20 x i8], align 1
  %"$recordOwner_3458" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3458", [20 x i8]* %"$$ud-registry.getIsOAO_72_recordOwner_3457", align 1
  %"$$ud-registry.getIsOAO_72_call_3459" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_72_fptr_3455"(i8* %"$$ud-registry.getIsOAO_72_envptr_3456", [20 x i8]* %"$$ud-registry.getIsOAO_72_recordOwner_3457"), !dbg !360
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_72_call_3459", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_73", align 8, !dbg !360
  %"$ud-registry.getIsOAO_74" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_73_3460" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_73", align 8
  %"$$ud-registry.getIsOAO_73_fptr_3461" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_73_3460", 0
  %"$$ud-registry.getIsOAO_73_envptr_3462" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_73_3460", 1
  %"$maybeApproved_3463" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_73_call_3464" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_73_fptr_3461"(i8* %"$$ud-registry.getIsOAO_73_envptr_3462", %TName_Option_ByStr20* %"$maybeApproved_3463"), !dbg !360
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_73_call_3464", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_74", align 8, !dbg !360
  %"$ud-registry.getIsOAO_75" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_74_3465" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_74", align 8
  %"$$ud-registry.getIsOAO_74_fptr_3466" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_74_3465", 0
  %"$$ud-registry.getIsOAO_74_envptr_3467" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_74_3465", 1
  %"$maybeOperators_3468" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_74_call_3469" = call %TName_Bool* %"$$ud-registry.getIsOAO_74_fptr_3466"(i8* %"$$ud-registry.getIsOAO_74_envptr_3467", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3468"), !dbg !360
  store %TName_Bool* %"$$ud-registry.getIsOAO_74_call_3469", %TName_Bool** %"$ud-registry.getIsOAO_75", align 8, !dbg !360
  %"$$ud-registry.getIsOAO_75_3470" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_75", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_75_3470", %TName_Bool** %isSenderOAO, align 8, !dbg !360
  %"$gasrem_3471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3472" = icmp ugt i64 2, %"$gasrem_3471"
  br i1 %"$gascmp_3472", label %"$out_of_gas_3473", label %"$have_gas_3474"

"$out_of_gas_3473":                               ; preds = %"$have_gas_3447"
  call void @_out_of_gas()
  br label %"$have_gas_3474"

"$have_gas_3474":                                 ; preds = %"$out_of_gas_3473", %"$have_gas_3447"
  %"$consume_3475" = sub i64 %"$gasrem_3471", 2
  store i64 %"$consume_3475", i64* @_gasrem, align 8
  %"$isSenderOAO_3477" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_3478" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3477", i32 0, i32 0
  %"$isSenderOAO_tag_3479" = load i8, i8* %"$isSenderOAO_tag_3478", align 1
  switch i8 %"$isSenderOAO_tag_3479", label %"$empty_default_3480" [
    i8 0, label %"$True_3481"
    i8 1, label %"$False_3623"
  ], !dbg !361

"$True_3481":                                     ; preds = %"$have_gas_3474"
  %"$isSenderOAO_3482" = bitcast %TName_Bool* %"$isSenderOAO_3477" to %CName_True*
  %"$gasrem_3483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3484" = icmp ugt i64 1, %"$gasrem_3483"
  br i1 %"$gascmp_3484", label %"$out_of_gas_3485", label %"$have_gas_3486"

"$out_of_gas_3485":                               ; preds = %"$True_3481"
  call void @_out_of_gas()
  br label %"$have_gas_3486"

"$have_gas_3486":                                 ; preds = %"$out_of_gas_3485", %"$True_3481"
  %"$consume_3487" = sub i64 %"$gasrem_3483", 1
  store i64 %"$consume_3487", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_3488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3489" = icmp ugt i64 1, %"$gasrem_3488"
  br i1 %"$gascmp_3489", label %"$out_of_gas_3490", label %"$have_gas_3491"

"$out_of_gas_3490":                               ; preds = %"$have_gas_3486"
  call void @_out_of_gas()
  br label %"$have_gas_3491"

"$have_gas_3491":                                 ; preds = %"$out_of_gas_3490", %"$have_gas_3486"
  %"$consume_3492" = sub i64 %"$gasrem_3488", 1
  store i64 %"$consume_3492", i64* @_gasrem, align 8
  %"$adtval_3493_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3493_salloc" = call i8* @_salloc(i8* %"$adtval_3493_load", i64 41)
  %"$adtval_3493" = bitcast i8* %"$adtval_3493_salloc" to %CName_ud-registry.Record*
  %"$adtgep_3494" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3493", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3494", align 1
  %"$adtgep_3495" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3493", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_3495", align 1
  %"$adtgep_3496" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3493", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_3496", align 1
  %"$adtptr_3497" = bitcast %CName_ud-registry.Record* %"$adtval_3493" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_3497", %TName_ud-registry.Record** %newRecord, align 8, !dbg !362
  %"$newRecord_3498" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_3498_3499" = bitcast %TName_ud-registry.Record* %"$newRecord_3498" to i8*
  %"$_literal_cost_call_3500" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_3498_3499")
  %"$gasadd_3501" = add i64 %"$_literal_cost_call_3500", 1
  %"$gasrem_3502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3503" = icmp ugt i64 %"$gasadd_3501", %"$gasrem_3502"
  br i1 %"$gascmp_3503", label %"$out_of_gas_3504", label %"$have_gas_3505"

"$out_of_gas_3504":                               ; preds = %"$have_gas_3491"
  call void @_out_of_gas()
  br label %"$have_gas_3505"

"$have_gas_3505":                                 ; preds = %"$out_of_gas_3504", %"$have_gas_3491"
  %"$consume_3506" = sub i64 %"$gasrem_3502", %"$gasadd_3501"
  store i64 %"$consume_3506", i64* @_gasrem, align 8
  %"$indices_buf_3507_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3507_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3507_salloc_load", i64 32)
  %"$indices_buf_3507_salloc" = bitcast i8* %"$indices_buf_3507_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3507" = bitcast [32 x i8]* %"$indices_buf_3507_salloc" to i8*
  %"$indices_gep_3508" = getelementptr i8, i8* %"$indices_buf_3507", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_3508" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_3509" = load i8*, i8** @_execptr, align 8
  %"$newRecord_3511" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_3512" = bitcast %TName_ud-registry.Record* %"$newRecord_3511" to i8*
  call void @_update_field(i8* %"$execptr_load_3509", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3510", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3507", i8* %"$update_value_3512"), !dbg !365
  %"$gasrem_3513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3514" = icmp ugt i64 1, %"$gasrem_3513"
  br i1 %"$gascmp_3514", label %"$out_of_gas_3515", label %"$have_gas_3516"

"$out_of_gas_3515":                               ; preds = %"$have_gas_3505"
  call void @_out_of_gas()
  br label %"$have_gas_3516"

"$have_gas_3516":                                 ; preds = %"$out_of_gas_3515", %"$have_gas_3505"
  %"$consume_3517" = sub i64 %"$gasrem_3513", 1
  store i64 %"$consume_3517", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3519" = icmp ugt i64 1, %"$gasrem_3518"
  br i1 %"$gascmp_3519", label %"$out_of_gas_3520", label %"$have_gas_3521"

"$out_of_gas_3520":                               ; preds = %"$have_gas_3516"
  call void @_out_of_gas()
  br label %"$have_gas_3521"

"$have_gas_3521":                                 ; preds = %"$out_of_gas_3520", %"$have_gas_3516"
  %"$consume_3522" = sub i64 %"$gasrem_3518", 1
  store i64 %"$consume_3522", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_67" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_3523" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_3524" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3523", 0
  %"$ud-registry.eConfigured_envptr_3525" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3523", 1
  %"$ud-registry.eConfigured_node_3526" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_3526", align 1
  %"$ud-registry.eConfigured_call_3527" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_3524"(i8* %"$ud-registry.eConfigured_envptr_3525", [32 x i8]* %"$ud-registry.eConfigured_node_3526"), !dbg !366
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_3527", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_67", align 8, !dbg !366
  %"$ud-registry.eConfigured_68" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_67_3528" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_67", align 8
  %"$$ud-registry.eConfigured_67_fptr_3529" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_67_3528", 0
  %"$$ud-registry.eConfigured_67_envptr_3530" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_67_3528", 1
  %"$$ud-registry.eConfigured_67_owner_3531" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_67_owner_3531", align 1
  %"$$ud-registry.eConfigured_67_call_3532" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_67_fptr_3529"(i8* %"$$ud-registry.eConfigured_67_envptr_3530", [20 x i8]* %"$$ud-registry.eConfigured_67_owner_3531"), !dbg !366
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_67_call_3532", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_68", align 8, !dbg !366
  %"$ud-registry.eConfigured_69" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_68_3533" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_68", align 8
  %"$$ud-registry.eConfigured_68_fptr_3534" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_68_3533", 0
  %"$$ud-registry.eConfigured_68_envptr_3535" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_68_3533", 1
  %"$$ud-registry.eConfigured_68_resolver_3536" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_68_resolver_3536", align 1
  %"$$ud-registry.eConfigured_68_call_3537" = call i8* %"$$ud-registry.eConfigured_68_fptr_3534"(i8* %"$$ud-registry.eConfigured_68_envptr_3535", [20 x i8]* %"$$ud-registry.eConfigured_68_resolver_3536"), !dbg !366
  store i8* %"$$ud-registry.eConfigured_68_call_3537", i8** %"$ud-registry.eConfigured_69", align 8, !dbg !366
  %"$$ud-registry.eConfigured_69_3538" = load i8*, i8** %"$ud-registry.eConfigured_69", align 8
  store i8* %"$$ud-registry.eConfigured_69_3538", i8** %e, align 8, !dbg !366
  %"$e_3539" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3541" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3539")
  %"$gasrem_3542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3543" = icmp ugt i64 %"$_literal_cost_call_3541", %"$gasrem_3542"
  br i1 %"$gascmp_3543", label %"$out_of_gas_3544", label %"$have_gas_3545"

"$out_of_gas_3544":                               ; preds = %"$have_gas_3521"
  call void @_out_of_gas()
  br label %"$have_gas_3545"

"$have_gas_3545":                                 ; preds = %"$out_of_gas_3544", %"$have_gas_3521"
  %"$consume_3546" = sub i64 %"$gasrem_3542", %"$_literal_cost_call_3541"
  store i64 %"$consume_3546", i64* @_gasrem, align 8
  %"$execptr_load_3547" = load i8*, i8** @_execptr, align 8
  %"$e_3548" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3547", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3548"), !dbg !367
  %"$gasrem_3549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3550" = icmp ugt i64 1, %"$gasrem_3549"
  br i1 %"$gascmp_3550", label %"$out_of_gas_3551", label %"$have_gas_3552"

"$out_of_gas_3551":                               ; preds = %"$have_gas_3545"
  call void @_out_of_gas()
  br label %"$have_gas_3552"

"$have_gas_3552":                                 ; preds = %"$out_of_gas_3551", %"$have_gas_3545"
  %"$consume_3553" = sub i64 %"$gasrem_3549", 1
  store i64 %"$consume_3553", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_3554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3555" = icmp ugt i64 1, %"$gasrem_3554"
  br i1 %"$gascmp_3555", label %"$out_of_gas_3556", label %"$have_gas_3557"

"$out_of_gas_3556":                               ; preds = %"$have_gas_3552"
  call void @_out_of_gas()
  br label %"$have_gas_3557"

"$have_gas_3557":                                 ; preds = %"$out_of_gas_3556", %"$have_gas_3552"
  %"$consume_3558" = sub i64 %"$gasrem_3554", 1
  store i64 %"$consume_3558", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_3559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3560" = icmp ugt i64 1, %"$gasrem_3559"
  br i1 %"$gascmp_3560", label %"$out_of_gas_3561", label %"$have_gas_3562"

"$out_of_gas_3561":                               ; preds = %"$have_gas_3557"
  call void @_out_of_gas()
  br label %"$have_gas_3562"

"$have_gas_3562":                                 ; preds = %"$out_of_gas_3561", %"$have_gas_3557"
  %"$consume_3563" = sub i64 %"$gasrem_3559", 1
  store i64 %"$consume_3563", i64* @_gasrem, align 8
  %"$msgobj_3564_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_3564_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3564_salloc_load", i64 225)
  %"$msgobj_3564_salloc" = bitcast i8* %"$msgobj_3564_salloc_salloc" to [225 x i8]*
  %"$msgobj_3564" = bitcast [225 x i8]* %"$msgobj_3564_salloc" to i8*
  store i8 5, i8* %"$msgobj_3564", align 1
  %"$msgobj_fname_3566" = getelementptr i8, i8* %"$msgobj_3564", i32 1
  %"$msgobj_fname_3567" = bitcast i8* %"$msgobj_fname_3566" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3565", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3567", align 8
  %"$msgobj_td_3568" = getelementptr i8, i8* %"$msgobj_3564", i32 17
  %"$msgobj_td_3569" = bitcast i8* %"$msgobj_td_3568" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_3569", align 8
  %"$msgobj_v_3571" = getelementptr i8, i8* %"$msgobj_3564", i32 25
  %"$msgobj_v_3572" = bitcast i8* %"$msgobj_v_3571" to %String*
  store %String { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$stringlit_3570", i32 0, i32 0), i32 18 }, %String* %"$msgobj_v_3572", align 8
  %"$msgobj_fname_3574" = getelementptr i8, i8* %"$msgobj_3564", i32 41
  %"$msgobj_fname_3575" = bitcast i8* %"$msgobj_fname_3574" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3573", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3575", align 8
  %"$msgobj_td_3576" = getelementptr i8, i8* %"$msgobj_3564", i32 57
  %"$msgobj_td_3577" = bitcast i8* %"$msgobj_td_3576" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_3577", align 8
  %"$msgobj_v_3578" = getelementptr i8, i8* %"$msgobj_3564", i32 65
  %"$msgobj_v_3579" = bitcast i8* %"$msgobj_v_3578" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3579", align 1
  %"$msgobj_fname_3581" = getelementptr i8, i8* %"$msgobj_3564", i32 97
  %"$msgobj_fname_3582" = bitcast i8* %"$msgobj_fname_3581" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3580", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3582", align 8
  %"$msgobj_td_3583" = getelementptr i8, i8* %"$msgobj_3564", i32 113
  %"$msgobj_td_3584" = bitcast i8* %"$msgobj_td_3583" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_3584", align 8
  %"$msgobj_v_3585" = getelementptr i8, i8* %"$msgobj_3564", i32 121
  %"$msgobj_v_3586" = bitcast i8* %"$msgobj_v_3585" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_3586", align 1
  %"$msgobj_fname_3588" = getelementptr i8, i8* %"$msgobj_3564", i32 141
  %"$msgobj_fname_3589" = bitcast i8* %"$msgobj_fname_3588" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3587", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3589", align 8
  %"$msgobj_td_3590" = getelementptr i8, i8* %"$msgobj_3564", i32 157
  %"$msgobj_td_3591" = bitcast i8* %"$msgobj_td_3590" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_3591", align 8
  %"$msgobj_v_3592" = getelementptr i8, i8* %"$msgobj_3564", i32 165
  %"$msgobj_v_3593" = bitcast i8* %"$msgobj_v_3592" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3593", align 8
  %"$msgobj_fname_3595" = getelementptr i8, i8* %"$msgobj_3564", i32 181
  %"$msgobj_fname_3596" = bitcast i8* %"$msgobj_fname_3595" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3594", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3596", align 8
  %"$msgobj_td_3597" = getelementptr i8, i8* %"$msgobj_3564", i32 197
  %"$msgobj_td_3598" = bitcast i8* %"$msgobj_td_3597" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_3598", align 8
  %"$msgobj_v_3599" = getelementptr i8, i8* %"$msgobj_3564", i32 205
  %"$msgobj_v_3600" = bitcast i8* %"$msgobj_v_3599" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3600", align 1
  store i8* %"$msgobj_3564", i8** %m, align 8, !dbg !368
  %"$gasrem_3602" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3603" = icmp ugt i64 1, %"$gasrem_3602"
  br i1 %"$gascmp_3603", label %"$out_of_gas_3604", label %"$have_gas_3605"

"$out_of_gas_3604":                               ; preds = %"$have_gas_3562"
  call void @_out_of_gas()
  br label %"$have_gas_3605"

"$have_gas_3605":                                 ; preds = %"$out_of_gas_3604", %"$have_gas_3562"
  %"$consume_3606" = sub i64 %"$gasrem_3602", 1
  store i64 %"$consume_3606", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_66" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_3607" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_3608" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3607", 0
  %"$ud-registry.oneMsg_envptr_3609" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3607", 1
  %"$m_3610" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_3611" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3608"(i8* %"$ud-registry.oneMsg_envptr_3609", i8* %"$m_3610"), !dbg !369
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3611", %TName_List_Message** %"$ud-registry.oneMsg_66", align 8, !dbg !369
  %"$$ud-registry.oneMsg_66_3612" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_66", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_66_3612", %TName_List_Message** %msgs, align 8, !dbg !369
  %"$msgs_3613" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_3613_3614" = bitcast %TName_List_Message* %"$msgs_3613" to i8*
  %"$_literal_cost_call_3615" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_3613_3614")
  %"$gasrem_3616" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3617" = icmp ugt i64 %"$_literal_cost_call_3615", %"$gasrem_3616"
  br i1 %"$gascmp_3617", label %"$out_of_gas_3618", label %"$have_gas_3619"

"$out_of_gas_3618":                               ; preds = %"$have_gas_3605"
  call void @_out_of_gas()
  br label %"$have_gas_3619"

"$have_gas_3619":                                 ; preds = %"$out_of_gas_3618", %"$have_gas_3605"
  %"$consume_3620" = sub i64 %"$gasrem_3616", %"$_literal_cost_call_3615"
  store i64 %"$consume_3620", i64* @_gasrem, align 8
  %"$execptr_load_3621" = load i8*, i8** @_execptr, align 8
  %"$msgs_3622" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_3621", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_3622"), !dbg !370
  br label %"$matchsucc_3476"

"$False_3623":                                    ; preds = %"$have_gas_3474"
  %"$isSenderOAO_3624" = bitcast %TName_Bool* %"$isSenderOAO_3477" to %CName_False*
  %"$gasrem_3625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3626" = icmp ugt i64 1, %"$gasrem_3625"
  br i1 %"$gascmp_3626", label %"$out_of_gas_3627", label %"$have_gas_3628"

"$out_of_gas_3627":                               ; preds = %"$False_3623"
  call void @_out_of_gas()
  br label %"$have_gas_3628"

"$have_gas_3628":                                 ; preds = %"$out_of_gas_3627", %"$False_3623"
  %"$consume_3629" = sub i64 %"$gasrem_3625", 1
  store i64 %"$consume_3629", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_3630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3631" = icmp ugt i64 1, %"$gasrem_3630"
  br i1 %"$gascmp_3631", label %"$out_of_gas_3632", label %"$have_gas_3633"

"$out_of_gas_3632":                               ; preds = %"$have_gas_3628"
  call void @_out_of_gas()
  br label %"$have_gas_3633"

"$have_gas_3633":                                 ; preds = %"$out_of_gas_3632", %"$have_gas_3628"
  %"$consume_3634" = sub i64 %"$gasrem_3630", 1
  store i64 %"$consume_3634", i64* @_gasrem, align 8
  %m5 = alloca %String, align 8
  %"$gasrem_3635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3636" = icmp ugt i64 1, %"$gasrem_3635"
  br i1 %"$gascmp_3636", label %"$out_of_gas_3637", label %"$have_gas_3638"

"$out_of_gas_3637":                               ; preds = %"$have_gas_3633"
  call void @_out_of_gas()
  br label %"$have_gas_3638"

"$have_gas_3638":                                 ; preds = %"$out_of_gas_3637", %"$have_gas_3633"
  %"$consume_3639" = sub i64 %"$gasrem_3635", 1
  store i64 %"$consume_3639", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_3640", i32 0, i32 0), i32 43 }, %String* %m5, align 8, !dbg !371
  %"$gasrem_3641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3642" = icmp ugt i64 1, %"$gasrem_3641"
  br i1 %"$gascmp_3642", label %"$out_of_gas_3643", label %"$have_gas_3644"

"$out_of_gas_3643":                               ; preds = %"$have_gas_3638"
  call void @_out_of_gas()
  br label %"$have_gas_3644"

"$have_gas_3644":                                 ; preds = %"$out_of_gas_3643", %"$have_gas_3638"
  %"$consume_3645" = sub i64 %"$gasrem_3641", 1
  store i64 %"$consume_3645", i64* @_gasrem, align 8
  %"$ud-registry.eError_71" = alloca i8*, align 8
  %"$ud-registry.eError_3646" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3647" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3646", 0
  %"$ud-registry.eError_envptr_3648" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3646", 1
  %"$m_3649" = load %String, %String* %m5, align 8
  %"$ud-registry.eError_call_3650" = call i8* %"$ud-registry.eError_fptr_3647"(i8* %"$ud-registry.eError_envptr_3648", %String %"$m_3649"), !dbg !373
  store i8* %"$ud-registry.eError_call_3650", i8** %"$ud-registry.eError_71", align 8, !dbg !373
  %"$$ud-registry.eError_71_3651" = load i8*, i8** %"$ud-registry.eError_71", align 8
  store i8* %"$$ud-registry.eError_71_3651", i8** %e4, align 8, !dbg !373
  %"$e_3652" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_3654" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3652")
  %"$gasrem_3655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3656" = icmp ugt i64 %"$_literal_cost_call_3654", %"$gasrem_3655"
  br i1 %"$gascmp_3656", label %"$out_of_gas_3657", label %"$have_gas_3658"

"$out_of_gas_3657":                               ; preds = %"$have_gas_3644"
  call void @_out_of_gas()
  br label %"$have_gas_3658"

"$have_gas_3658":                                 ; preds = %"$out_of_gas_3657", %"$have_gas_3644"
  %"$consume_3659" = sub i64 %"$gasrem_3655", %"$_literal_cost_call_3654"
  store i64 %"$consume_3659", i64* @_gasrem, align 8
  %"$execptr_load_3660" = load i8*, i8** @_execptr, align 8
  %"$e_3661" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_3660", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3661"), !dbg !374
  %"$gasrem_3662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3663" = icmp ugt i64 1, %"$gasrem_3662"
  br i1 %"$gascmp_3663", label %"$out_of_gas_3664", label %"$have_gas_3665"

"$out_of_gas_3664":                               ; preds = %"$have_gas_3658"
  call void @_out_of_gas()
  br label %"$have_gas_3665"

"$have_gas_3665":                                 ; preds = %"$out_of_gas_3664", %"$have_gas_3658"
  %"$consume_3666" = sub i64 %"$gasrem_3662", 1
  store i64 %"$consume_3666", i64* @_gasrem, align 8
  %msgs6 = alloca %TName_List_Message*, align 8
  %"$gasrem_3667" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3668" = icmp ugt i64 1, %"$gasrem_3667"
  br i1 %"$gascmp_3668", label %"$out_of_gas_3669", label %"$have_gas_3670"

"$out_of_gas_3669":                               ; preds = %"$have_gas_3665"
  call void @_out_of_gas()
  br label %"$have_gas_3670"

"$have_gas_3670":                                 ; preds = %"$out_of_gas_3669", %"$have_gas_3665"
  %"$consume_3671" = sub i64 %"$gasrem_3667", 1
  store i64 %"$consume_3671", i64* @_gasrem, align 8
  %m7 = alloca i8*, align 8
  %"$gasrem_3672" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3673" = icmp ugt i64 1, %"$gasrem_3672"
  br i1 %"$gascmp_3673", label %"$out_of_gas_3674", label %"$have_gas_3675"

"$out_of_gas_3674":                               ; preds = %"$have_gas_3670"
  call void @_out_of_gas()
  br label %"$have_gas_3675"

"$have_gas_3675":                                 ; preds = %"$out_of_gas_3674", %"$have_gas_3670"
  %"$consume_3676" = sub i64 %"$gasrem_3672", 1
  store i64 %"$consume_3676", i64* @_gasrem, align 8
  %"$msgobj_3677_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_3677_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3677_salloc_load", i64 225)
  %"$msgobj_3677_salloc" = bitcast i8* %"$msgobj_3677_salloc_salloc" to [225 x i8]*
  %"$msgobj_3677" = bitcast [225 x i8]* %"$msgobj_3677_salloc" to i8*
  store i8 5, i8* %"$msgobj_3677", align 1
  %"$msgobj_fname_3679" = getelementptr i8, i8* %"$msgobj_3677", i32 1
  %"$msgobj_fname_3680" = bitcast i8* %"$msgobj_fname_3679" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3678", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3680", align 8
  %"$msgobj_td_3681" = getelementptr i8, i8* %"$msgobj_3677", i32 17
  %"$msgobj_td_3682" = bitcast i8* %"$msgobj_td_3681" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_3682", align 8
  %"$msgobj_v_3684" = getelementptr i8, i8* %"$msgobj_3677", i32 25
  %"$msgobj_v_3685" = bitcast i8* %"$msgobj_v_3684" to %String*
  store %String { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$stringlit_3683", i32 0, i32 0), i32 18 }, %String* %"$msgobj_v_3685", align 8
  %"$msgobj_fname_3687" = getelementptr i8, i8* %"$msgobj_3677", i32 41
  %"$msgobj_fname_3688" = bitcast i8* %"$msgobj_fname_3687" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3686", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3688", align 8
  %"$msgobj_td_3689" = getelementptr i8, i8* %"$msgobj_3677", i32 57
  %"$msgobj_td_3690" = bitcast i8* %"$msgobj_td_3689" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_3690", align 8
  %"$msgobj_v_3691" = getelementptr i8, i8* %"$msgobj_3677", i32 65
  %"$msgobj_v_3692" = bitcast i8* %"$msgobj_v_3691" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3692", align 1
  %"$msgobj_fname_3694" = getelementptr i8, i8* %"$msgobj_3677", i32 97
  %"$msgobj_fname_3695" = bitcast i8* %"$msgobj_fname_3694" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3693", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3695", align 8
  %"$msgobj_td_3696" = getelementptr i8, i8* %"$msgobj_3677", i32 113
  %"$msgobj_td_3697" = bitcast i8* %"$msgobj_td_3696" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_3697", align 8
  %"$recordOwner_3698" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$msgobj_v_3699" = getelementptr i8, i8* %"$msgobj_3677", i32 121
  %"$msgobj_v_3700" = bitcast i8* %"$msgobj_v_3699" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3698", [20 x i8]* %"$msgobj_v_3700", align 1
  %"$msgobj_fname_3702" = getelementptr i8, i8* %"$msgobj_3677", i32 141
  %"$msgobj_fname_3703" = bitcast i8* %"$msgobj_fname_3702" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3701", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3703", align 8
  %"$msgobj_td_3704" = getelementptr i8, i8* %"$msgobj_3677", i32 157
  %"$msgobj_td_3705" = bitcast i8* %"$msgobj_td_3704" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_3705", align 8
  %"$msgobj_v_3706" = getelementptr i8, i8* %"$msgobj_3677", i32 165
  %"$msgobj_v_3707" = bitcast i8* %"$msgobj_v_3706" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3707", align 8
  %"$msgobj_fname_3709" = getelementptr i8, i8* %"$msgobj_3677", i32 181
  %"$msgobj_fname_3710" = bitcast i8* %"$msgobj_fname_3709" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3708", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3710", align 8
  %"$msgobj_td_3711" = getelementptr i8, i8* %"$msgobj_3677", i32 197
  %"$msgobj_td_3712" = bitcast i8* %"$msgobj_td_3711" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_3712", align 8
  %"$msgobj_v_3713" = getelementptr i8, i8* %"$msgobj_3677", i32 205
  %"$msgobj_v_3714" = bitcast i8* %"$msgobj_v_3713" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3714", align 1
  store i8* %"$msgobj_3677", i8** %m7, align 8, !dbg !375
  %"$gasrem_3716" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3717" = icmp ugt i64 1, %"$gasrem_3716"
  br i1 %"$gascmp_3717", label %"$out_of_gas_3718", label %"$have_gas_3719"

"$out_of_gas_3718":                               ; preds = %"$have_gas_3675"
  call void @_out_of_gas()
  br label %"$have_gas_3719"

"$have_gas_3719":                                 ; preds = %"$out_of_gas_3718", %"$have_gas_3675"
  %"$consume_3720" = sub i64 %"$gasrem_3716", 1
  store i64 %"$consume_3720", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_70" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_3721" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_3722" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3721", 0
  %"$ud-registry.oneMsg_envptr_3723" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3721", 1
  %"$m_3724" = load i8*, i8** %m7, align 8
  %"$ud-registry.oneMsg_call_3725" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3722"(i8* %"$ud-registry.oneMsg_envptr_3723", i8* %"$m_3724"), !dbg !376
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3725", %TName_List_Message** %"$ud-registry.oneMsg_70", align 8, !dbg !376
  %"$$ud-registry.oneMsg_70_3726" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_70", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_70_3726", %TName_List_Message** %msgs6, align 8, !dbg !376
  %"$msgs_3727" = load %TName_List_Message*, %TName_List_Message** %msgs6, align 8
  %"$$msgs_3727_3728" = bitcast %TName_List_Message* %"$msgs_3727" to i8*
  %"$_literal_cost_call_3729" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_3727_3728")
  %"$gasrem_3730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3731" = icmp ugt i64 %"$_literal_cost_call_3729", %"$gasrem_3730"
  br i1 %"$gascmp_3731", label %"$out_of_gas_3732", label %"$have_gas_3733"

"$out_of_gas_3732":                               ; preds = %"$have_gas_3719"
  call void @_out_of_gas()
  br label %"$have_gas_3733"

"$have_gas_3733":                                 ; preds = %"$out_of_gas_3732", %"$have_gas_3719"
  %"$consume_3734" = sub i64 %"$gasrem_3730", %"$_literal_cost_call_3729"
  store i64 %"$consume_3734", i64* @_gasrem, align 8
  %"$execptr_load_3735" = load i8*, i8** @_execptr, align 8
  %"$msgs_3736" = load %TName_List_Message*, %TName_List_Message** %msgs6, align 8
  call void @_send(i8* %"$execptr_load_3735", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_3736"), !dbg !377
  br label %"$matchsucc_3476"

"$empty_default_3480":                            ; preds = %"$have_gas_3474"
  br label %"$matchsucc_3476"

"$matchsucc_3476":                                ; preds = %"$have_gas_3733", %"$have_gas_3619", %"$empty_default_3480"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @configureNode(i8* %0) !dbg !378 {
entry:
  %"$_amount_3738" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3739" = bitcast i8* %"$_amount_3738" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3739", align 8
  %"$_sender_3740" = getelementptr i8, i8* %0, i32 16
  %"$_sender_3741" = bitcast i8* %"$_sender_3740" to [20 x i8]*
  %"$node_3742" = getelementptr i8, i8* %0, i32 36
  %"$node_3743" = bitcast i8* %"$node_3742" to [32 x i8]*
  %"$owner_3744" = getelementptr i8, i8* %0, i32 68
  %"$owner_3745" = bitcast i8* %"$owner_3744" to [20 x i8]*
  %"$resolver_3746" = getelementptr i8, i8* %0, i32 88
  %"$resolver_3747" = bitcast i8* %"$resolver_3746" to [20 x i8]*
  call void @"$configureNode_3368"(%Uint128 %_amount, [20 x i8]* %"$_sender_3741", [32 x i8]* %"$node_3743", [20 x i8]* %"$owner_3745", [20 x i8]* %"$resolver_3747"), !dbg !379
  ret void
}

define internal void @"$configureResolver_3748"(%Uint128 %_amount, [20 x i8]* %"$_sender_3749", [32 x i8]* %"$node_3750", [20 x i8]* %"$resolver_3751") !dbg !380 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3749", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_3750", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_3751", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3752_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3752_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3752_salloc_load", i64 32)
  %"$indices_buf_3752_salloc" = bitcast i8* %"$indices_buf_3752_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3752" = bitcast [32 x i8]* %"$indices_buf_3752_salloc" to i8*
  %"$indices_gep_3753" = getelementptr i8, i8* %"$indices_buf_3752", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3753" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3754" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_3756" = call i8* @_fetch_field(i8* %"$execptr_load_3754", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3755", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3752", i32 1), !dbg !381
  %"$maybeRecord_3757" = bitcast i8* %"$maybeRecord_3756" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3757", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3758" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3758_3759" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3758" to i8*
  %"$_literal_cost_call_3760" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_3758_3759")
  %"$gasadd_3761" = add i64 %"$_literal_cost_call_3760", 0
  %"$gasadd_3762" = add i64 %"$gasadd_3761", 1
  %"$gasrem_3763" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3764" = icmp ugt i64 %"$gasadd_3762", %"$gasrem_3763"
  br i1 %"$gascmp_3764", label %"$out_of_gas_3765", label %"$have_gas_3766"

"$out_of_gas_3765":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3766"

"$have_gas_3766":                                 ; preds = %"$out_of_gas_3765", %entry
  %"$consume_3767" = sub i64 %"$gasrem_3763", %"$gasadd_3762"
  store i64 %"$consume_3767", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3768_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3768_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3768_salloc_load", i64 32)
  %"$indices_buf_3768_salloc" = bitcast i8* %"$indices_buf_3768_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3768" = bitcast [32 x i8]* %"$indices_buf_3768_salloc" to i8*
  %"$indices_gep_3769" = getelementptr i8, i8* %"$indices_buf_3768", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3769" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_3770" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_3772" = call i8* @_fetch_field(i8* %"$execptr_load_3770", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3771", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_3768", i32 1), !dbg !382
  %"$maybeApproved_3773" = bitcast i8* %"$maybeApproved_3772" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3773", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3774" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3774_3775" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3774" to i8*
  %"$_literal_cost_call_3776" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_3774_3775")
  %"$gasadd_3777" = add i64 %"$_literal_cost_call_3776", 0
  %"$gasadd_3778" = add i64 %"$gasadd_3777", 1
  %"$gasrem_3779" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3780" = icmp ugt i64 %"$gasadd_3778", %"$gasrem_3779"
  br i1 %"$gascmp_3780", label %"$out_of_gas_3781", label %"$have_gas_3782"

"$out_of_gas_3781":                               ; preds = %"$have_gas_3766"
  call void @_out_of_gas()
  br label %"$have_gas_3782"

"$have_gas_3782":                                 ; preds = %"$out_of_gas_3781", %"$have_gas_3766"
  %"$consume_3783" = sub i64 %"$gasrem_3779", %"$gasadd_3778"
  store i64 %"$consume_3783", i64* @_gasrem, align 8
  %"$gasrem_3784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3785" = icmp ugt i64 1, %"$gasrem_3784"
  br i1 %"$gascmp_3785", label %"$out_of_gas_3786", label %"$have_gas_3787"

"$out_of_gas_3786":                               ; preds = %"$have_gas_3782"
  call void @_out_of_gas()
  br label %"$have_gas_3787"

"$have_gas_3787":                                 ; preds = %"$out_of_gas_3786", %"$have_gas_3782"
  %"$consume_3788" = sub i64 %"$gasrem_3784", 1
  store i64 %"$consume_3788", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3789" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3790" = icmp ugt i64 1, %"$gasrem_3789"
  br i1 %"$gascmp_3790", label %"$out_of_gas_3791", label %"$have_gas_3792"

"$out_of_gas_3791":                               ; preds = %"$have_gas_3787"
  call void @_out_of_gas()
  br label %"$have_gas_3792"

"$have_gas_3792":                                 ; preds = %"$out_of_gas_3791", %"$have_gas_3787"
  %"$consume_3793" = sub i64 %"$gasrem_3789", 1
  store i64 %"$consume_3793", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_85" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3794" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3795" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3794", 0
  %"$ud-registry.recordMemberOwner_envptr_3796" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3794", 1
  %"$maybeRecord_3797" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3798" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3795"(i8* %"$ud-registry.recordMemberOwner_envptr_3796", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3798", %TName_Option_ud-registry.Record* %"$maybeRecord_3797"), !dbg !383
  %"$ud-registry.recordMemberOwner_ret_3799" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3798", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3799", [20 x i8]* %"$ud-registry.recordMemberOwner_85", align 1, !dbg !383
  %"$$ud-registry.recordMemberOwner_85_3800" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_85", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_85_3800", [20 x i8]* %recordOwner, align 1, !dbg !383
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3801_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3801_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3801_salloc_load", i64 20)
  %"$indices_buf_3801_salloc" = bitcast i8* %"$indices_buf_3801_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3801" = bitcast [20 x i8]* %"$indices_buf_3801_salloc" to i8*
  %"$recordOwner_3802" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_3803" = getelementptr i8, i8* %"$indices_buf_3801", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3803" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3802", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_3804" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_3806" = call i8* @_fetch_field(i8* %"$execptr_load_3804", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3805", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_3801", i32 1), !dbg !384
  %"$maybeOperators_3807" = bitcast i8* %"$maybeOperators_3806" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3807", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3808" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3808_3809" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3808" to i8*
  %"$_literal_cost_call_3810" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_3808_3809")
  %"$gasadd_3811" = add i64 %"$_literal_cost_call_3810", 0
  %"$gasadd_3812" = add i64 %"$gasadd_3811", 1
  %"$gasrem_3813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3814" = icmp ugt i64 %"$gasadd_3812", %"$gasrem_3813"
  br i1 %"$gascmp_3814", label %"$out_of_gas_3815", label %"$have_gas_3816"

"$out_of_gas_3815":                               ; preds = %"$have_gas_3792"
  call void @_out_of_gas()
  br label %"$have_gas_3816"

"$have_gas_3816":                                 ; preds = %"$out_of_gas_3815", %"$have_gas_3792"
  %"$consume_3817" = sub i64 %"$gasrem_3813", %"$gasadd_3812"
  store i64 %"$consume_3817", i64* @_gasrem, align 8
  %"$gasrem_3818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3819" = icmp ugt i64 1, %"$gasrem_3818"
  br i1 %"$gascmp_3819", label %"$out_of_gas_3820", label %"$have_gas_3821"

"$out_of_gas_3820":                               ; preds = %"$have_gas_3816"
  call void @_out_of_gas()
  br label %"$have_gas_3821"

"$have_gas_3821":                                 ; preds = %"$out_of_gas_3820", %"$have_gas_3816"
  %"$consume_3822" = sub i64 %"$gasrem_3818", 1
  store i64 %"$consume_3822", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_3823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3824" = icmp ugt i64 1, %"$gasrem_3823"
  br i1 %"$gascmp_3824", label %"$out_of_gas_3825", label %"$have_gas_3826"

"$out_of_gas_3825":                               ; preds = %"$have_gas_3821"
  call void @_out_of_gas()
  br label %"$have_gas_3826"

"$have_gas_3826":                                 ; preds = %"$out_of_gas_3825", %"$have_gas_3821"
  %"$consume_3827" = sub i64 %"$gasrem_3823", 1
  store i64 %"$consume_3827", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_81" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_3828" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_3829" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3828", 0
  %"$ud-registry.getIsOAO_envptr_3830" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3828", 1
  %"$ud-registry.getIsOAO__sender_3831" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3831", align 1
  %"$ud-registry.getIsOAO_call_3832" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_3829"(i8* %"$ud-registry.getIsOAO_envptr_3830", [20 x i8]* %"$ud-registry.getIsOAO__sender_3831"), !dbg !385
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_3832", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_81", align 8, !dbg !385
  %"$ud-registry.getIsOAO_82" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_81_3833" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_81", align 8
  %"$$ud-registry.getIsOAO_81_fptr_3834" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_81_3833", 0
  %"$$ud-registry.getIsOAO_81_envptr_3835" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_81_3833", 1
  %"$$ud-registry.getIsOAO_81_recordOwner_3836" = alloca [20 x i8], align 1
  %"$recordOwner_3837" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3837", [20 x i8]* %"$$ud-registry.getIsOAO_81_recordOwner_3836", align 1
  %"$$ud-registry.getIsOAO_81_call_3838" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_81_fptr_3834"(i8* %"$$ud-registry.getIsOAO_81_envptr_3835", [20 x i8]* %"$$ud-registry.getIsOAO_81_recordOwner_3836"), !dbg !385
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_81_call_3838", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_82", align 8, !dbg !385
  %"$ud-registry.getIsOAO_83" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_82_3839" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_82", align 8
  %"$$ud-registry.getIsOAO_82_fptr_3840" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_82_3839", 0
  %"$$ud-registry.getIsOAO_82_envptr_3841" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_82_3839", 1
  %"$maybeApproved_3842" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_82_call_3843" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_82_fptr_3840"(i8* %"$$ud-registry.getIsOAO_82_envptr_3841", %TName_Option_ByStr20* %"$maybeApproved_3842"), !dbg !385
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_82_call_3843", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_83", align 8, !dbg !385
  %"$ud-registry.getIsOAO_84" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_83_3844" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_83", align 8
  %"$$ud-registry.getIsOAO_83_fptr_3845" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_83_3844", 0
  %"$$ud-registry.getIsOAO_83_envptr_3846" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_83_3844", 1
  %"$maybeOperators_3847" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_83_call_3848" = call %TName_Bool* %"$$ud-registry.getIsOAO_83_fptr_3845"(i8* %"$$ud-registry.getIsOAO_83_envptr_3846", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3847"), !dbg !385
  store %TName_Bool* %"$$ud-registry.getIsOAO_83_call_3848", %TName_Bool** %"$ud-registry.getIsOAO_84", align 8, !dbg !385
  %"$$ud-registry.getIsOAO_84_3849" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_84", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_84_3849", %TName_Bool** %isSenderOAO, align 8, !dbg !385
  %"$gasrem_3850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3851" = icmp ugt i64 2, %"$gasrem_3850"
  br i1 %"$gascmp_3851", label %"$out_of_gas_3852", label %"$have_gas_3853"

"$out_of_gas_3852":                               ; preds = %"$have_gas_3826"
  call void @_out_of_gas()
  br label %"$have_gas_3853"

"$have_gas_3853":                                 ; preds = %"$out_of_gas_3852", %"$have_gas_3826"
  %"$consume_3854" = sub i64 %"$gasrem_3850", 2
  store i64 %"$consume_3854", i64* @_gasrem, align 8
  %"$isSenderOAO_3856" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_3857" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3856", i32 0, i32 0
  %"$isSenderOAO_tag_3858" = load i8, i8* %"$isSenderOAO_tag_3857", align 1
  switch i8 %"$isSenderOAO_tag_3858", label %"$empty_default_3859" [
    i8 0, label %"$True_3860"
    i8 1, label %"$False_3930"
  ], !dbg !386

"$True_3860":                                     ; preds = %"$have_gas_3853"
  %"$isSenderOAO_3861" = bitcast %TName_Bool* %"$isSenderOAO_3856" to %CName_True*
  %"$gasrem_3862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3863" = icmp ugt i64 1, %"$gasrem_3862"
  br i1 %"$gascmp_3863", label %"$out_of_gas_3864", label %"$have_gas_3865"

"$out_of_gas_3864":                               ; preds = %"$True_3860"
  call void @_out_of_gas()
  br label %"$have_gas_3865"

"$have_gas_3865":                                 ; preds = %"$out_of_gas_3864", %"$True_3860"
  %"$consume_3866" = sub i64 %"$gasrem_3862", 1
  store i64 %"$consume_3866", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_3867" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3868" = icmp ugt i64 1, %"$gasrem_3867"
  br i1 %"$gascmp_3868", label %"$out_of_gas_3869", label %"$have_gas_3870"

"$out_of_gas_3869":                               ; preds = %"$have_gas_3865"
  call void @_out_of_gas()
  br label %"$have_gas_3870"

"$have_gas_3870":                                 ; preds = %"$out_of_gas_3869", %"$have_gas_3865"
  %"$consume_3871" = sub i64 %"$gasrem_3867", 1
  store i64 %"$consume_3871", i64* @_gasrem, align 8
  %"$recordOwner_3872" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$adtval_3873_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3873_salloc" = call i8* @_salloc(i8* %"$adtval_3873_load", i64 41)
  %"$adtval_3873" = bitcast i8* %"$adtval_3873_salloc" to %CName_ud-registry.Record*
  %"$adtgep_3874" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3873", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3874", align 1
  %"$adtgep_3875" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3873", i32 0, i32 1
  store [20 x i8] %"$recordOwner_3872", [20 x i8]* %"$adtgep_3875", align 1
  %"$adtgep_3876" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3873", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_3876", align 1
  %"$adtptr_3877" = bitcast %CName_ud-registry.Record* %"$adtval_3873" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_3877", %TName_ud-registry.Record** %newRecord, align 8, !dbg !387
  %"$newRecord_3878" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_3878_3879" = bitcast %TName_ud-registry.Record* %"$newRecord_3878" to i8*
  %"$_literal_cost_call_3880" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_3878_3879")
  %"$gasadd_3881" = add i64 %"$_literal_cost_call_3880", 1
  %"$gasrem_3882" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3883" = icmp ugt i64 %"$gasadd_3881", %"$gasrem_3882"
  br i1 %"$gascmp_3883", label %"$out_of_gas_3884", label %"$have_gas_3885"

"$out_of_gas_3884":                               ; preds = %"$have_gas_3870"
  call void @_out_of_gas()
  br label %"$have_gas_3885"

"$have_gas_3885":                                 ; preds = %"$out_of_gas_3884", %"$have_gas_3870"
  %"$consume_3886" = sub i64 %"$gasrem_3882", %"$gasadd_3881"
  store i64 %"$consume_3886", i64* @_gasrem, align 8
  %"$indices_buf_3887_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3887_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3887_salloc_load", i64 32)
  %"$indices_buf_3887_salloc" = bitcast i8* %"$indices_buf_3887_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3887" = bitcast [32 x i8]* %"$indices_buf_3887_salloc" to i8*
  %"$indices_gep_3888" = getelementptr i8, i8* %"$indices_buf_3887", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_3888" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_3889" = load i8*, i8** @_execptr, align 8
  %"$newRecord_3891" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_3892" = bitcast %TName_ud-registry.Record* %"$newRecord_3891" to i8*
  call void @_update_field(i8* %"$execptr_load_3889", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3890", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3887", i8* %"$update_value_3892"), !dbg !390
  %"$gasrem_3893" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3894" = icmp ugt i64 1, %"$gasrem_3893"
  br i1 %"$gascmp_3894", label %"$out_of_gas_3895", label %"$have_gas_3896"

"$out_of_gas_3895":                               ; preds = %"$have_gas_3885"
  call void @_out_of_gas()
  br label %"$have_gas_3896"

"$have_gas_3896":                                 ; preds = %"$out_of_gas_3895", %"$have_gas_3885"
  %"$consume_3897" = sub i64 %"$gasrem_3893", 1
  store i64 %"$consume_3897", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3898" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3899" = icmp ugt i64 1, %"$gasrem_3898"
  br i1 %"$gascmp_3899", label %"$out_of_gas_3900", label %"$have_gas_3901"

"$out_of_gas_3900":                               ; preds = %"$have_gas_3896"
  call void @_out_of_gas()
  br label %"$have_gas_3901"

"$have_gas_3901":                                 ; preds = %"$out_of_gas_3900", %"$have_gas_3896"
  %"$consume_3902" = sub i64 %"$gasrem_3898", 1
  store i64 %"$consume_3902", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_77" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_3903" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_3904" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3903", 0
  %"$ud-registry.eConfigured_envptr_3905" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3903", 1
  %"$ud-registry.eConfigured_node_3906" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_3906", align 1
  %"$ud-registry.eConfigured_call_3907" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_3904"(i8* %"$ud-registry.eConfigured_envptr_3905", [32 x i8]* %"$ud-registry.eConfigured_node_3906"), !dbg !391
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_3907", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_77", align 8, !dbg !391
  %"$ud-registry.eConfigured_78" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_77_3908" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_77", align 8
  %"$$ud-registry.eConfigured_77_fptr_3909" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_77_3908", 0
  %"$$ud-registry.eConfigured_77_envptr_3910" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_77_3908", 1
  %"$$ud-registry.eConfigured_77_recordOwner_3911" = alloca [20 x i8], align 1
  %"$recordOwner_3912" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3912", [20 x i8]* %"$$ud-registry.eConfigured_77_recordOwner_3911", align 1
  %"$$ud-registry.eConfigured_77_call_3913" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_77_fptr_3909"(i8* %"$$ud-registry.eConfigured_77_envptr_3910", [20 x i8]* %"$$ud-registry.eConfigured_77_recordOwner_3911"), !dbg !391
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_77_call_3913", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_78", align 8, !dbg !391
  %"$ud-registry.eConfigured_79" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_78_3914" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_78", align 8
  %"$$ud-registry.eConfigured_78_fptr_3915" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_78_3914", 0
  %"$$ud-registry.eConfigured_78_envptr_3916" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_78_3914", 1
  %"$$ud-registry.eConfigured_78_resolver_3917" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_78_resolver_3917", align 1
  %"$$ud-registry.eConfigured_78_call_3918" = call i8* %"$$ud-registry.eConfigured_78_fptr_3915"(i8* %"$$ud-registry.eConfigured_78_envptr_3916", [20 x i8]* %"$$ud-registry.eConfigured_78_resolver_3917"), !dbg !391
  store i8* %"$$ud-registry.eConfigured_78_call_3918", i8** %"$ud-registry.eConfigured_79", align 8, !dbg !391
  %"$$ud-registry.eConfigured_79_3919" = load i8*, i8** %"$ud-registry.eConfigured_79", align 8
  store i8* %"$$ud-registry.eConfigured_79_3919", i8** %e, align 8, !dbg !391
  %"$e_3920" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3922" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3920")
  %"$gasrem_3923" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3924" = icmp ugt i64 %"$_literal_cost_call_3922", %"$gasrem_3923"
  br i1 %"$gascmp_3924", label %"$out_of_gas_3925", label %"$have_gas_3926"

"$out_of_gas_3925":                               ; preds = %"$have_gas_3901"
  call void @_out_of_gas()
  br label %"$have_gas_3926"

"$have_gas_3926":                                 ; preds = %"$out_of_gas_3925", %"$have_gas_3901"
  %"$consume_3927" = sub i64 %"$gasrem_3923", %"$_literal_cost_call_3922"
  store i64 %"$consume_3927", i64* @_gasrem, align 8
  %"$execptr_load_3928" = load i8*, i8** @_execptr, align 8
  %"$e_3929" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3928", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3929"), !dbg !392
  br label %"$matchsucc_3855"

"$False_3930":                                    ; preds = %"$have_gas_3853"
  %"$isSenderOAO_3931" = bitcast %TName_Bool* %"$isSenderOAO_3856" to %CName_False*
  %"$gasrem_3932" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3933" = icmp ugt i64 1, %"$gasrem_3932"
  br i1 %"$gascmp_3933", label %"$out_of_gas_3934", label %"$have_gas_3935"

"$out_of_gas_3934":                               ; preds = %"$False_3930"
  call void @_out_of_gas()
  br label %"$have_gas_3935"

"$have_gas_3935":                                 ; preds = %"$out_of_gas_3934", %"$False_3930"
  %"$consume_3936" = sub i64 %"$gasrem_3932", 1
  store i64 %"$consume_3936", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_3937" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3938" = icmp ugt i64 1, %"$gasrem_3937"
  br i1 %"$gascmp_3938", label %"$out_of_gas_3939", label %"$have_gas_3940"

"$out_of_gas_3939":                               ; preds = %"$have_gas_3935"
  call void @_out_of_gas()
  br label %"$have_gas_3940"

"$have_gas_3940":                                 ; preds = %"$out_of_gas_3939", %"$have_gas_3935"
  %"$consume_3941" = sub i64 %"$gasrem_3937", 1
  store i64 %"$consume_3941", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_3942" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3943" = icmp ugt i64 1, %"$gasrem_3942"
  br i1 %"$gascmp_3943", label %"$out_of_gas_3944", label %"$have_gas_3945"

"$out_of_gas_3944":                               ; preds = %"$have_gas_3940"
  call void @_out_of_gas()
  br label %"$have_gas_3945"

"$have_gas_3945":                                 ; preds = %"$out_of_gas_3944", %"$have_gas_3940"
  %"$consume_3946" = sub i64 %"$gasrem_3942", 1
  store i64 %"$consume_3946", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_3947", i32 0, i32 0), i32 43 }, %String* %m, align 8, !dbg !393
  %"$gasrem_3948" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3949" = icmp ugt i64 1, %"$gasrem_3948"
  br i1 %"$gascmp_3949", label %"$out_of_gas_3950", label %"$have_gas_3951"

"$out_of_gas_3950":                               ; preds = %"$have_gas_3945"
  call void @_out_of_gas()
  br label %"$have_gas_3951"

"$have_gas_3951":                                 ; preds = %"$out_of_gas_3950", %"$have_gas_3945"
  %"$consume_3952" = sub i64 %"$gasrem_3948", 1
  store i64 %"$consume_3952", i64* @_gasrem, align 8
  %"$ud-registry.eError_80" = alloca i8*, align 8
  %"$ud-registry.eError_3953" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3954" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3953", 0
  %"$ud-registry.eError_envptr_3955" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3953", 1
  %"$m_3956" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_3957" = call i8* %"$ud-registry.eError_fptr_3954"(i8* %"$ud-registry.eError_envptr_3955", %String %"$m_3956"), !dbg !395
  store i8* %"$ud-registry.eError_call_3957", i8** %"$ud-registry.eError_80", align 8, !dbg !395
  %"$$ud-registry.eError_80_3958" = load i8*, i8** %"$ud-registry.eError_80", align 8
  store i8* %"$$ud-registry.eError_80_3958", i8** %e4, align 8, !dbg !395
  %"$e_3959" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_3961" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3959")
  %"$gasrem_3962" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3963" = icmp ugt i64 %"$_literal_cost_call_3961", %"$gasrem_3962"
  br i1 %"$gascmp_3963", label %"$out_of_gas_3964", label %"$have_gas_3965"

"$out_of_gas_3964":                               ; preds = %"$have_gas_3951"
  call void @_out_of_gas()
  br label %"$have_gas_3965"

"$have_gas_3965":                                 ; preds = %"$out_of_gas_3964", %"$have_gas_3951"
  %"$consume_3966" = sub i64 %"$gasrem_3962", %"$_literal_cost_call_3961"
  store i64 %"$consume_3966", i64* @_gasrem, align 8
  %"$execptr_load_3967" = load i8*, i8** @_execptr, align 8
  %"$e_3968" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_3967", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3968"), !dbg !396
  br label %"$matchsucc_3855"

"$empty_default_3859":                            ; preds = %"$have_gas_3853"
  br label %"$matchsucc_3855"

"$matchsucc_3855":                                ; preds = %"$have_gas_3965", %"$have_gas_3926", %"$empty_default_3859"
  ret void
}

define void @configureResolver(i8* %0) !dbg !397 {
entry:
  %"$_amount_3970" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3971" = bitcast i8* %"$_amount_3970" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3971", align 8
  %"$_sender_3972" = getelementptr i8, i8* %0, i32 16
  %"$_sender_3973" = bitcast i8* %"$_sender_3972" to [20 x i8]*
  %"$node_3974" = getelementptr i8, i8* %0, i32 36
  %"$node_3975" = bitcast i8* %"$node_3974" to [32 x i8]*
  %"$resolver_3976" = getelementptr i8, i8* %0, i32 68
  %"$resolver_3977" = bitcast i8* %"$resolver_3976" to [20 x i8]*
  call void @"$configureResolver_3748"(%Uint128 %_amount, [20 x i8]* %"$_sender_3973", [32 x i8]* %"$node_3975", [20 x i8]* %"$resolver_3977"), !dbg !398
  ret void
}

define internal void @"$transfer_3978"(%Uint128 %_amount, [20 x i8]* %"$_sender_3979", [32 x i8]* %"$node_3980", [20 x i8]* %"$owner_3981") !dbg !399 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3979", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_3980", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_3981", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3982_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3982_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3982_salloc_load", i64 32)
  %"$indices_buf_3982_salloc" = bitcast i8* %"$indices_buf_3982_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3982" = bitcast [32 x i8]* %"$indices_buf_3982_salloc" to i8*
  %"$indices_gep_3983" = getelementptr i8, i8* %"$indices_buf_3982", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3983" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3984" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_3986" = call i8* @_fetch_field(i8* %"$execptr_load_3984", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3985", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3982", i32 1), !dbg !400
  %"$maybeRecord_3987" = bitcast i8* %"$maybeRecord_3986" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3987", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3988" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3988_3989" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3988" to i8*
  %"$_literal_cost_call_3990" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_3988_3989")
  %"$gasadd_3991" = add i64 %"$_literal_cost_call_3990", 0
  %"$gasadd_3992" = add i64 %"$gasadd_3991", 1
  %"$gasrem_3993" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3994" = icmp ugt i64 %"$gasadd_3992", %"$gasrem_3993"
  br i1 %"$gascmp_3994", label %"$out_of_gas_3995", label %"$have_gas_3996"

"$out_of_gas_3995":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3996"

"$have_gas_3996":                                 ; preds = %"$out_of_gas_3995", %entry
  %"$consume_3997" = sub i64 %"$gasrem_3993", %"$gasadd_3992"
  store i64 %"$consume_3997", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3998_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3998_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3998_salloc_load", i64 32)
  %"$indices_buf_3998_salloc" = bitcast i8* %"$indices_buf_3998_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3998" = bitcast [32 x i8]* %"$indices_buf_3998_salloc" to i8*
  %"$indices_gep_3999" = getelementptr i8, i8* %"$indices_buf_3998", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3999" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4000" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_4002" = call i8* @_fetch_field(i8* %"$execptr_load_4000", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4001", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_3998", i32 1), !dbg !401
  %"$maybeApproved_4003" = bitcast i8* %"$maybeApproved_4002" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_4003", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_4004" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_4004_4005" = bitcast %TName_Option_ByStr20* %"$maybeApproved_4004" to i8*
  %"$_literal_cost_call_4006" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_4004_4005")
  %"$gasadd_4007" = add i64 %"$_literal_cost_call_4006", 0
  %"$gasadd_4008" = add i64 %"$gasadd_4007", 1
  %"$gasrem_4009" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4010" = icmp ugt i64 %"$gasadd_4008", %"$gasrem_4009"
  br i1 %"$gascmp_4010", label %"$out_of_gas_4011", label %"$have_gas_4012"

"$out_of_gas_4011":                               ; preds = %"$have_gas_3996"
  call void @_out_of_gas()
  br label %"$have_gas_4012"

"$have_gas_4012":                                 ; preds = %"$out_of_gas_4011", %"$have_gas_3996"
  %"$consume_4013" = sub i64 %"$gasrem_4009", %"$gasadd_4008"
  store i64 %"$consume_4013", i64* @_gasrem, align 8
  %"$gasrem_4014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4015" = icmp ugt i64 1, %"$gasrem_4014"
  br i1 %"$gascmp_4015", label %"$out_of_gas_4016", label %"$have_gas_4017"

"$out_of_gas_4016":                               ; preds = %"$have_gas_4012"
  call void @_out_of_gas()
  br label %"$have_gas_4017"

"$have_gas_4017":                                 ; preds = %"$out_of_gas_4016", %"$have_gas_4012"
  %"$consume_4018" = sub i64 %"$gasrem_4014", 1
  store i64 %"$consume_4018", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_4019" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4020" = icmp ugt i64 1, %"$gasrem_4019"
  br i1 %"$gascmp_4020", label %"$out_of_gas_4021", label %"$have_gas_4022"

"$out_of_gas_4021":                               ; preds = %"$have_gas_4017"
  call void @_out_of_gas()
  br label %"$have_gas_4022"

"$have_gas_4022":                                 ; preds = %"$out_of_gas_4021", %"$have_gas_4017"
  %"$consume_4023" = sub i64 %"$gasrem_4019", 1
  store i64 %"$consume_4023", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_96" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_4024" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_4025" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4024", 0
  %"$ud-registry.recordMemberOwner_envptr_4026" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4024", 1
  %"$maybeRecord_4027" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_4028" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_4025"(i8* %"$ud-registry.recordMemberOwner_envptr_4026", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4028", %TName_Option_ud-registry.Record* %"$maybeRecord_4027"), !dbg !402
  %"$ud-registry.recordMemberOwner_ret_4029" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4028", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_4029", [20 x i8]* %"$ud-registry.recordMemberOwner_96", align 1, !dbg !402
  %"$$ud-registry.recordMemberOwner_96_4030" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_96", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_96_4030", [20 x i8]* %recordOwner, align 1, !dbg !402
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_4031_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4031_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4031_salloc_load", i64 20)
  %"$indices_buf_4031_salloc" = bitcast i8* %"$indices_buf_4031_salloc_salloc" to [20 x i8]*
  %"$indices_buf_4031" = bitcast [20 x i8]* %"$indices_buf_4031_salloc" to i8*
  %"$recordOwner_4032" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_4033" = getelementptr i8, i8* %"$indices_buf_4031", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4033" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4032", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_4034" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_4036" = call i8* @_fetch_field(i8* %"$execptr_load_4034", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_4035", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_4031", i32 1), !dbg !403
  %"$maybeOperators_4037" = bitcast i8* %"$maybeOperators_4036" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4037", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_4038" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_4038_4039" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4038" to i8*
  %"$_literal_cost_call_4040" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_4038_4039")
  %"$gasadd_4041" = add i64 %"$_literal_cost_call_4040", 0
  %"$gasadd_4042" = add i64 %"$gasadd_4041", 1
  %"$gasrem_4043" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4044" = icmp ugt i64 %"$gasadd_4042", %"$gasrem_4043"
  br i1 %"$gascmp_4044", label %"$out_of_gas_4045", label %"$have_gas_4046"

"$out_of_gas_4045":                               ; preds = %"$have_gas_4022"
  call void @_out_of_gas()
  br label %"$have_gas_4046"

"$have_gas_4046":                                 ; preds = %"$out_of_gas_4045", %"$have_gas_4022"
  %"$consume_4047" = sub i64 %"$gasrem_4043", %"$gasadd_4042"
  store i64 %"$consume_4047", i64* @_gasrem, align 8
  %"$gasrem_4048" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4049" = icmp ugt i64 1, %"$gasrem_4048"
  br i1 %"$gascmp_4049", label %"$out_of_gas_4050", label %"$have_gas_4051"

"$out_of_gas_4050":                               ; preds = %"$have_gas_4046"
  call void @_out_of_gas()
  br label %"$have_gas_4051"

"$have_gas_4051":                                 ; preds = %"$out_of_gas_4050", %"$have_gas_4046"
  %"$consume_4052" = sub i64 %"$gasrem_4048", 1
  store i64 %"$consume_4052", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_4053" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4054" = icmp ugt i64 1, %"$gasrem_4053"
  br i1 %"$gascmp_4054", label %"$out_of_gas_4055", label %"$have_gas_4056"

"$out_of_gas_4055":                               ; preds = %"$have_gas_4051"
  call void @_out_of_gas()
  br label %"$have_gas_4056"

"$have_gas_4056":                                 ; preds = %"$out_of_gas_4055", %"$have_gas_4051"
  %"$consume_4057" = sub i64 %"$gasrem_4053", 1
  store i64 %"$consume_4057", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_92" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_4058" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_4059" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4058", 0
  %"$ud-registry.getIsOAO_envptr_4060" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4058", 1
  %"$ud-registry.getIsOAO__sender_4061" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_4061", align 1
  %"$ud-registry.getIsOAO_call_4062" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_4059"(i8* %"$ud-registry.getIsOAO_envptr_4060", [20 x i8]* %"$ud-registry.getIsOAO__sender_4061"), !dbg !404
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_4062", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_92", align 8, !dbg !404
  %"$ud-registry.getIsOAO_93" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_92_4063" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_92", align 8
  %"$$ud-registry.getIsOAO_92_fptr_4064" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_92_4063", 0
  %"$$ud-registry.getIsOAO_92_envptr_4065" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_92_4063", 1
  %"$$ud-registry.getIsOAO_92_recordOwner_4066" = alloca [20 x i8], align 1
  %"$recordOwner_4067" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_4067", [20 x i8]* %"$$ud-registry.getIsOAO_92_recordOwner_4066", align 1
  %"$$ud-registry.getIsOAO_92_call_4068" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_92_fptr_4064"(i8* %"$$ud-registry.getIsOAO_92_envptr_4065", [20 x i8]* %"$$ud-registry.getIsOAO_92_recordOwner_4066"), !dbg !404
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_92_call_4068", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_93", align 8, !dbg !404
  %"$ud-registry.getIsOAO_94" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_93_4069" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_93", align 8
  %"$$ud-registry.getIsOAO_93_fptr_4070" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_93_4069", 0
  %"$$ud-registry.getIsOAO_93_envptr_4071" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_93_4069", 1
  %"$maybeApproved_4072" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_93_call_4073" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_93_fptr_4070"(i8* %"$$ud-registry.getIsOAO_93_envptr_4071", %TName_Option_ByStr20* %"$maybeApproved_4072"), !dbg !404
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_93_call_4073", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_94", align 8, !dbg !404
  %"$ud-registry.getIsOAO_95" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_94_4074" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_94", align 8
  %"$$ud-registry.getIsOAO_94_fptr_4075" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_94_4074", 0
  %"$$ud-registry.getIsOAO_94_envptr_4076" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_94_4074", 1
  %"$maybeOperators_4077" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_94_call_4078" = call %TName_Bool* %"$$ud-registry.getIsOAO_94_fptr_4075"(i8* %"$$ud-registry.getIsOAO_94_envptr_4076", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4077"), !dbg !404
  store %TName_Bool* %"$$ud-registry.getIsOAO_94_call_4078", %TName_Bool** %"$ud-registry.getIsOAO_95", align 8, !dbg !404
  %"$$ud-registry.getIsOAO_95_4079" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_95", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_95_4079", %TName_Bool** %isSenderOAO, align 8, !dbg !404
  %"$gasrem_4080" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4081" = icmp ugt i64 2, %"$gasrem_4080"
  br i1 %"$gascmp_4081", label %"$out_of_gas_4082", label %"$have_gas_4083"

"$out_of_gas_4082":                               ; preds = %"$have_gas_4056"
  call void @_out_of_gas()
  br label %"$have_gas_4083"

"$have_gas_4083":                                 ; preds = %"$out_of_gas_4082", %"$have_gas_4056"
  %"$consume_4084" = sub i64 %"$gasrem_4080", 2
  store i64 %"$consume_4084", i64* @_gasrem, align 8
  %"$isSenderOAO_4086" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_4087" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_4086", i32 0, i32 0
  %"$isSenderOAO_tag_4088" = load i8, i8* %"$isSenderOAO_tag_4087", align 1
  switch i8 %"$isSenderOAO_tag_4088", label %"$empty_default_4089" [
    i8 0, label %"$True_4090"
    i8 1, label %"$False_4243"
  ], !dbg !405

"$True_4090":                                     ; preds = %"$have_gas_4083"
  %"$isSenderOAO_4091" = bitcast %TName_Bool* %"$isSenderOAO_4086" to %CName_True*
  %"$gasrem_4092" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4093" = icmp ugt i64 1, %"$gasrem_4092"
  br i1 %"$gascmp_4093", label %"$out_of_gas_4094", label %"$have_gas_4095"

"$out_of_gas_4094":                               ; preds = %"$True_4090"
  call void @_out_of_gas()
  br label %"$have_gas_4095"

"$have_gas_4095":                                 ; preds = %"$out_of_gas_4094", %"$True_4090"
  %"$consume_4096" = sub i64 %"$gasrem_4092", 1
  store i64 %"$consume_4096", i64* @_gasrem, align 8
  %"$indices_buf_4097_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4097_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4097_salloc_load", i64 32)
  %"$indices_buf_4097_salloc" = bitcast i8* %"$indices_buf_4097_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4097" = bitcast [32 x i8]* %"$indices_buf_4097_salloc" to i8*
  %"$indices_gep_4098" = getelementptr i8, i8* %"$indices_buf_4097", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_4098" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_4099" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4099", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4100", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_4097", i8* null), !dbg !406
  %"$gasrem_4101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4102" = icmp ugt i64 1, %"$gasrem_4101"
  br i1 %"$gascmp_4102", label %"$out_of_gas_4103", label %"$have_gas_4104"

"$out_of_gas_4103":                               ; preds = %"$have_gas_4095"
  call void @_out_of_gas()
  br label %"$have_gas_4104"

"$have_gas_4104":                                 ; preds = %"$out_of_gas_4103", %"$have_gas_4095"
  %"$consume_4105" = sub i64 %"$gasrem_4101", 1
  store i64 %"$consume_4105", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_4106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4107" = icmp ugt i64 1, %"$gasrem_4106"
  br i1 %"$gascmp_4107", label %"$out_of_gas_4108", label %"$have_gas_4109"

"$out_of_gas_4108":                               ; preds = %"$have_gas_4104"
  call void @_out_of_gas()
  br label %"$have_gas_4109"

"$have_gas_4109":                                 ; preds = %"$out_of_gas_4108", %"$have_gas_4104"
  %"$consume_4110" = sub i64 %"$gasrem_4106", 1
  store i64 %"$consume_4110", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_4111" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_4112_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4112_salloc" = call i8* @_salloc(i8* %"$adtval_4112_load", i64 41)
  %"$adtval_4112" = bitcast i8* %"$adtval_4112_salloc" to %CName_ud-registry.Record*
  %"$adtgep_4113" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4112", i32 0, i32 0
  store i8 0, i8* %"$adtgep_4113", align 1
  %"$adtgep_4114" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4112", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_4114", align 1
  %"$adtgep_4115" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4112", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_4111", [20 x i8]* %"$adtgep_4115", align 1
  %"$adtptr_4116" = bitcast %CName_ud-registry.Record* %"$adtval_4112" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_4116", %TName_ud-registry.Record** %newRecord, align 8, !dbg !409
  %"$newRecord_4117" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_4117_4118" = bitcast %TName_ud-registry.Record* %"$newRecord_4117" to i8*
  %"$_literal_cost_call_4119" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_4117_4118")
  %"$gasadd_4120" = add i64 %"$_literal_cost_call_4119", 1
  %"$gasrem_4121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4122" = icmp ugt i64 %"$gasadd_4120", %"$gasrem_4121"
  br i1 %"$gascmp_4122", label %"$out_of_gas_4123", label %"$have_gas_4124"

"$out_of_gas_4123":                               ; preds = %"$have_gas_4109"
  call void @_out_of_gas()
  br label %"$have_gas_4124"

"$have_gas_4124":                                 ; preds = %"$out_of_gas_4123", %"$have_gas_4109"
  %"$consume_4125" = sub i64 %"$gasrem_4121", %"$gasadd_4120"
  store i64 %"$consume_4125", i64* @_gasrem, align 8
  %"$indices_buf_4126_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4126_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4126_salloc_load", i64 32)
  %"$indices_buf_4126_salloc" = bitcast i8* %"$indices_buf_4126_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4126" = bitcast [32 x i8]* %"$indices_buf_4126_salloc" to i8*
  %"$indices_gep_4127" = getelementptr i8, i8* %"$indices_buf_4126", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4127" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast4, align 1
  %"$execptr_load_4128" = load i8*, i8** @_execptr, align 8
  %"$newRecord_4130" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_4131" = bitcast %TName_ud-registry.Record* %"$newRecord_4130" to i8*
  call void @_update_field(i8* %"$execptr_load_4128", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4129", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4126", i8* %"$update_value_4131"), !dbg !410
  %"$gasrem_4132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4133" = icmp ugt i64 1, %"$gasrem_4132"
  br i1 %"$gascmp_4133", label %"$out_of_gas_4134", label %"$have_gas_4135"

"$out_of_gas_4134":                               ; preds = %"$have_gas_4124"
  call void @_out_of_gas()
  br label %"$have_gas_4135"

"$have_gas_4135":                                 ; preds = %"$out_of_gas_4134", %"$have_gas_4124"
  %"$consume_4136" = sub i64 %"$gasrem_4132", 1
  store i64 %"$consume_4136", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_4137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4138" = icmp ugt i64 1, %"$gasrem_4137"
  br i1 %"$gascmp_4138", label %"$out_of_gas_4139", label %"$have_gas_4140"

"$out_of_gas_4139":                               ; preds = %"$have_gas_4135"
  call void @_out_of_gas()
  br label %"$have_gas_4140"

"$have_gas_4140":                                 ; preds = %"$out_of_gas_4139", %"$have_gas_4135"
  %"$consume_4141" = sub i64 %"$gasrem_4137", 1
  store i64 %"$consume_4141", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_87" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_4142" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_4143" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4142", 0
  %"$ud-registry.eConfigured_envptr_4144" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4142", 1
  %"$ud-registry.eConfigured_node_4145" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_4145", align 1
  %"$ud-registry.eConfigured_call_4146" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_4143"(i8* %"$ud-registry.eConfigured_envptr_4144", [32 x i8]* %"$ud-registry.eConfigured_node_4145"), !dbg !411
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_4146", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_87", align 8, !dbg !411
  %"$ud-registry.eConfigured_88" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_87_4147" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_87", align 8
  %"$$ud-registry.eConfigured_87_fptr_4148" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_87_4147", 0
  %"$$ud-registry.eConfigured_87_envptr_4149" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_87_4147", 1
  %"$$ud-registry.eConfigured_87_owner_4150" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_87_owner_4150", align 1
  %"$$ud-registry.eConfigured_87_call_4151" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_87_fptr_4148"(i8* %"$$ud-registry.eConfigured_87_envptr_4149", [20 x i8]* %"$$ud-registry.eConfigured_87_owner_4150"), !dbg !411
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_87_call_4151", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_88", align 8, !dbg !411
  %"$ud-registry.eConfigured_89" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_88_4152" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_88", align 8
  %"$$ud-registry.eConfigured_88_fptr_4153" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_88_4152", 0
  %"$$ud-registry.eConfigured_88_envptr_4154" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_88_4152", 1
  %"$$ud-registry.eConfigured_88_ud-registry.zeroByStr20_4155" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_4156" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_4156", [20 x i8]* %"$$ud-registry.eConfigured_88_ud-registry.zeroByStr20_4155", align 1
  %"$$ud-registry.eConfigured_88_call_4157" = call i8* %"$$ud-registry.eConfigured_88_fptr_4153"(i8* %"$$ud-registry.eConfigured_88_envptr_4154", [20 x i8]* %"$$ud-registry.eConfigured_88_ud-registry.zeroByStr20_4155"), !dbg !411
  store i8* %"$$ud-registry.eConfigured_88_call_4157", i8** %"$ud-registry.eConfigured_89", align 8, !dbg !411
  %"$$ud-registry.eConfigured_89_4158" = load i8*, i8** %"$ud-registry.eConfigured_89", align 8
  store i8* %"$$ud-registry.eConfigured_89_4158", i8** %e, align 8, !dbg !411
  %"$e_4159" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_4161" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4159")
  %"$gasrem_4162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4163" = icmp ugt i64 %"$_literal_cost_call_4161", %"$gasrem_4162"
  br i1 %"$gascmp_4163", label %"$out_of_gas_4164", label %"$have_gas_4165"

"$out_of_gas_4164":                               ; preds = %"$have_gas_4140"
  call void @_out_of_gas()
  br label %"$have_gas_4165"

"$have_gas_4165":                                 ; preds = %"$out_of_gas_4164", %"$have_gas_4140"
  %"$consume_4166" = sub i64 %"$gasrem_4162", %"$_literal_cost_call_4161"
  store i64 %"$consume_4166", i64* @_gasrem, align 8
  %"$execptr_load_4167" = load i8*, i8** @_execptr, align 8
  %"$e_4168" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_4167", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4168"), !dbg !412
  %"$gasrem_4169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4170" = icmp ugt i64 1, %"$gasrem_4169"
  br i1 %"$gascmp_4170", label %"$out_of_gas_4171", label %"$have_gas_4172"

"$out_of_gas_4171":                               ; preds = %"$have_gas_4165"
  call void @_out_of_gas()
  br label %"$have_gas_4172"

"$have_gas_4172":                                 ; preds = %"$out_of_gas_4171", %"$have_gas_4165"
  %"$consume_4173" = sub i64 %"$gasrem_4169", 1
  store i64 %"$consume_4173", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_4174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4175" = icmp ugt i64 1, %"$gasrem_4174"
  br i1 %"$gascmp_4175", label %"$out_of_gas_4176", label %"$have_gas_4177"

"$out_of_gas_4176":                               ; preds = %"$have_gas_4172"
  call void @_out_of_gas()
  br label %"$have_gas_4177"

"$have_gas_4177":                                 ; preds = %"$out_of_gas_4176", %"$have_gas_4172"
  %"$consume_4178" = sub i64 %"$gasrem_4174", 1
  store i64 %"$consume_4178", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_4179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4180" = icmp ugt i64 1, %"$gasrem_4179"
  br i1 %"$gascmp_4180", label %"$out_of_gas_4181", label %"$have_gas_4182"

"$out_of_gas_4181":                               ; preds = %"$have_gas_4177"
  call void @_out_of_gas()
  br label %"$have_gas_4182"

"$have_gas_4182":                                 ; preds = %"$out_of_gas_4181", %"$have_gas_4177"
  %"$consume_4183" = sub i64 %"$gasrem_4179", 1
  store i64 %"$consume_4183", i64* @_gasrem, align 8
  %"$msgobj_4184_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4184_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4184_salloc_load", i64 225)
  %"$msgobj_4184_salloc" = bitcast i8* %"$msgobj_4184_salloc_salloc" to [225 x i8]*
  %"$msgobj_4184" = bitcast [225 x i8]* %"$msgobj_4184_salloc" to i8*
  store i8 5, i8* %"$msgobj_4184", align 1
  %"$msgobj_fname_4186" = getelementptr i8, i8* %"$msgobj_4184", i32 1
  %"$msgobj_fname_4187" = bitcast i8* %"$msgobj_fname_4186" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4185", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4187", align 8
  %"$msgobj_td_4188" = getelementptr i8, i8* %"$msgobj_4184", i32 17
  %"$msgobj_td_4189" = bitcast i8* %"$msgobj_td_4188" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4189", align 8
  %"$msgobj_v_4191" = getelementptr i8, i8* %"$msgobj_4184", i32 25
  %"$msgobj_v_4192" = bitcast i8* %"$msgobj_v_4191" to %String*
  store %String { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$stringlit_4190", i32 0, i32 0), i32 17 }, %String* %"$msgobj_v_4192", align 8
  %"$msgobj_fname_4194" = getelementptr i8, i8* %"$msgobj_4184", i32 41
  %"$msgobj_fname_4195" = bitcast i8* %"$msgobj_fname_4194" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4193", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4195", align 8
  %"$msgobj_td_4196" = getelementptr i8, i8* %"$msgobj_4184", i32 57
  %"$msgobj_td_4197" = bitcast i8* %"$msgobj_td_4196" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_4197", align 8
  %"$msgobj_v_4198" = getelementptr i8, i8* %"$msgobj_4184", i32 65
  %"$msgobj_v_4199" = bitcast i8* %"$msgobj_v_4198" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_4199", align 1
  %"$msgobj_fname_4201" = getelementptr i8, i8* %"$msgobj_4184", i32 97
  %"$msgobj_fname_4202" = bitcast i8* %"$msgobj_fname_4201" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4200", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4202", align 8
  %"$msgobj_td_4203" = getelementptr i8, i8* %"$msgobj_4184", i32 113
  %"$msgobj_td_4204" = bitcast i8* %"$msgobj_td_4203" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4204", align 8
  %"$msgobj_v_4205" = getelementptr i8, i8* %"$msgobj_4184", i32 121
  %"$msgobj_v_4206" = bitcast i8* %"$msgobj_v_4205" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4206", align 1
  %"$msgobj_fname_4208" = getelementptr i8, i8* %"$msgobj_4184", i32 141
  %"$msgobj_fname_4209" = bitcast i8* %"$msgobj_fname_4208" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4207", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4209", align 8
  %"$msgobj_td_4210" = getelementptr i8, i8* %"$msgobj_4184", i32 157
  %"$msgobj_td_4211" = bitcast i8* %"$msgobj_td_4210" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_4211", align 8
  %"$msgobj_v_4212" = getelementptr i8, i8* %"$msgobj_4184", i32 165
  %"$msgobj_v_4213" = bitcast i8* %"$msgobj_v_4212" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4213", align 8
  %"$msgobj_fname_4215" = getelementptr i8, i8* %"$msgobj_4184", i32 181
  %"$msgobj_fname_4216" = bitcast i8* %"$msgobj_fname_4215" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4214", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4216", align 8
  %"$msgobj_td_4217" = getelementptr i8, i8* %"$msgobj_4184", i32 197
  %"$msgobj_td_4218" = bitcast i8* %"$msgobj_td_4217" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_4218", align 8
  %"$msgobj_v_4219" = getelementptr i8, i8* %"$msgobj_4184", i32 205
  %"$msgobj_v_4220" = bitcast i8* %"$msgobj_v_4219" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4220", align 1
  store i8* %"$msgobj_4184", i8** %m, align 8, !dbg !413
  %"$gasrem_4222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4223" = icmp ugt i64 1, %"$gasrem_4222"
  br i1 %"$gascmp_4223", label %"$out_of_gas_4224", label %"$have_gas_4225"

"$out_of_gas_4224":                               ; preds = %"$have_gas_4182"
  call void @_out_of_gas()
  br label %"$have_gas_4225"

"$have_gas_4225":                                 ; preds = %"$out_of_gas_4224", %"$have_gas_4182"
  %"$consume_4226" = sub i64 %"$gasrem_4222", 1
  store i64 %"$consume_4226", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_86" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4227" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4228" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4227", 0
  %"$ud-registry.oneMsg_envptr_4229" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4227", 1
  %"$m_4230" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_4231" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4228"(i8* %"$ud-registry.oneMsg_envptr_4229", i8* %"$m_4230"), !dbg !414
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4231", %TName_List_Message** %"$ud-registry.oneMsg_86", align 8, !dbg !414
  %"$$ud-registry.oneMsg_86_4232" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_86", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_86_4232", %TName_List_Message** %msgs, align 8, !dbg !414
  %"$msgs_4233" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_4233_4234" = bitcast %TName_List_Message* %"$msgs_4233" to i8*
  %"$_literal_cost_call_4235" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_4233_4234")
  %"$gasrem_4236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4237" = icmp ugt i64 %"$_literal_cost_call_4235", %"$gasrem_4236"
  br i1 %"$gascmp_4237", label %"$out_of_gas_4238", label %"$have_gas_4239"

"$out_of_gas_4238":                               ; preds = %"$have_gas_4225"
  call void @_out_of_gas()
  br label %"$have_gas_4239"

"$have_gas_4239":                                 ; preds = %"$out_of_gas_4238", %"$have_gas_4225"
  %"$consume_4240" = sub i64 %"$gasrem_4236", %"$_literal_cost_call_4235"
  store i64 %"$consume_4240", i64* @_gasrem, align 8
  %"$execptr_load_4241" = load i8*, i8** @_execptr, align 8
  %"$msgs_4242" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_4241", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_4242"), !dbg !415
  br label %"$matchsucc_4085"

"$False_4243":                                    ; preds = %"$have_gas_4083"
  %"$isSenderOAO_4244" = bitcast %TName_Bool* %"$isSenderOAO_4086" to %CName_False*
  %"$gasrem_4245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4246" = icmp ugt i64 1, %"$gasrem_4245"
  br i1 %"$gascmp_4246", label %"$out_of_gas_4247", label %"$have_gas_4248"

"$out_of_gas_4247":                               ; preds = %"$False_4243"
  call void @_out_of_gas()
  br label %"$have_gas_4248"

"$have_gas_4248":                                 ; preds = %"$out_of_gas_4247", %"$False_4243"
  %"$consume_4249" = sub i64 %"$gasrem_4245", 1
  store i64 %"$consume_4249", i64* @_gasrem, align 8
  %e5 = alloca i8*, align 8
  %"$gasrem_4250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4251" = icmp ugt i64 1, %"$gasrem_4250"
  br i1 %"$gascmp_4251", label %"$out_of_gas_4252", label %"$have_gas_4253"

"$out_of_gas_4252":                               ; preds = %"$have_gas_4248"
  call void @_out_of_gas()
  br label %"$have_gas_4253"

"$have_gas_4253":                                 ; preds = %"$out_of_gas_4252", %"$have_gas_4248"
  %"$consume_4254" = sub i64 %"$gasrem_4250", 1
  store i64 %"$consume_4254", i64* @_gasrem, align 8
  %m6 = alloca %String, align 8
  %"$gasrem_4255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4256" = icmp ugt i64 1, %"$gasrem_4255"
  br i1 %"$gascmp_4256", label %"$out_of_gas_4257", label %"$have_gas_4258"

"$out_of_gas_4257":                               ; preds = %"$have_gas_4253"
  call void @_out_of_gas()
  br label %"$have_gas_4258"

"$have_gas_4258":                                 ; preds = %"$out_of_gas_4257", %"$have_gas_4253"
  %"$consume_4259" = sub i64 %"$gasrem_4255", 1
  store i64 %"$consume_4259", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_4260", i32 0, i32 0), i32 43 }, %String* %m6, align 8, !dbg !416
  %"$gasrem_4261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4262" = icmp ugt i64 1, %"$gasrem_4261"
  br i1 %"$gascmp_4262", label %"$out_of_gas_4263", label %"$have_gas_4264"

"$out_of_gas_4263":                               ; preds = %"$have_gas_4258"
  call void @_out_of_gas()
  br label %"$have_gas_4264"

"$have_gas_4264":                                 ; preds = %"$out_of_gas_4263", %"$have_gas_4258"
  %"$consume_4265" = sub i64 %"$gasrem_4261", 1
  store i64 %"$consume_4265", i64* @_gasrem, align 8
  %"$ud-registry.eError_91" = alloca i8*, align 8
  %"$ud-registry.eError_4266" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_4267" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4266", 0
  %"$ud-registry.eError_envptr_4268" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4266", 1
  %"$m_4269" = load %String, %String* %m6, align 8
  %"$ud-registry.eError_call_4270" = call i8* %"$ud-registry.eError_fptr_4267"(i8* %"$ud-registry.eError_envptr_4268", %String %"$m_4269"), !dbg !418
  store i8* %"$ud-registry.eError_call_4270", i8** %"$ud-registry.eError_91", align 8, !dbg !418
  %"$$ud-registry.eError_91_4271" = load i8*, i8** %"$ud-registry.eError_91", align 8
  store i8* %"$$ud-registry.eError_91_4271", i8** %e5, align 8, !dbg !418
  %"$e_4272" = load i8*, i8** %e5, align 8
  %"$_literal_cost_call_4274" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4272")
  %"$gasrem_4275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4276" = icmp ugt i64 %"$_literal_cost_call_4274", %"$gasrem_4275"
  br i1 %"$gascmp_4276", label %"$out_of_gas_4277", label %"$have_gas_4278"

"$out_of_gas_4277":                               ; preds = %"$have_gas_4264"
  call void @_out_of_gas()
  br label %"$have_gas_4278"

"$have_gas_4278":                                 ; preds = %"$out_of_gas_4277", %"$have_gas_4264"
  %"$consume_4279" = sub i64 %"$gasrem_4275", %"$_literal_cost_call_4274"
  store i64 %"$consume_4279", i64* @_gasrem, align 8
  %"$execptr_load_4280" = load i8*, i8** @_execptr, align 8
  %"$e_4281" = load i8*, i8** %e5, align 8
  call void @_event(i8* %"$execptr_load_4280", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4281"), !dbg !419
  %"$gasrem_4282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4283" = icmp ugt i64 1, %"$gasrem_4282"
  br i1 %"$gascmp_4283", label %"$out_of_gas_4284", label %"$have_gas_4285"

"$out_of_gas_4284":                               ; preds = %"$have_gas_4278"
  call void @_out_of_gas()
  br label %"$have_gas_4285"

"$have_gas_4285":                                 ; preds = %"$out_of_gas_4284", %"$have_gas_4278"
  %"$consume_4286" = sub i64 %"$gasrem_4282", 1
  store i64 %"$consume_4286", i64* @_gasrem, align 8
  %msgs7 = alloca %TName_List_Message*, align 8
  %"$gasrem_4287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4288" = icmp ugt i64 1, %"$gasrem_4287"
  br i1 %"$gascmp_4288", label %"$out_of_gas_4289", label %"$have_gas_4290"

"$out_of_gas_4289":                               ; preds = %"$have_gas_4285"
  call void @_out_of_gas()
  br label %"$have_gas_4290"

"$have_gas_4290":                                 ; preds = %"$out_of_gas_4289", %"$have_gas_4285"
  %"$consume_4291" = sub i64 %"$gasrem_4287", 1
  store i64 %"$consume_4291", i64* @_gasrem, align 8
  %m8 = alloca i8*, align 8
  %"$gasrem_4292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4293" = icmp ugt i64 1, %"$gasrem_4292"
  br i1 %"$gascmp_4293", label %"$out_of_gas_4294", label %"$have_gas_4295"

"$out_of_gas_4294":                               ; preds = %"$have_gas_4290"
  call void @_out_of_gas()
  br label %"$have_gas_4295"

"$have_gas_4295":                                 ; preds = %"$out_of_gas_4294", %"$have_gas_4290"
  %"$consume_4296" = sub i64 %"$gasrem_4292", 1
  store i64 %"$consume_4296", i64* @_gasrem, align 8
  %"$msgobj_4297_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4297_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4297_salloc_load", i64 225)
  %"$msgobj_4297_salloc" = bitcast i8* %"$msgobj_4297_salloc_salloc" to [225 x i8]*
  %"$msgobj_4297" = bitcast [225 x i8]* %"$msgobj_4297_salloc" to i8*
  store i8 5, i8* %"$msgobj_4297", align 1
  %"$msgobj_fname_4299" = getelementptr i8, i8* %"$msgobj_4297", i32 1
  %"$msgobj_fname_4300" = bitcast i8* %"$msgobj_fname_4299" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4298", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4300", align 8
  %"$msgobj_td_4301" = getelementptr i8, i8* %"$msgobj_4297", i32 17
  %"$msgobj_td_4302" = bitcast i8* %"$msgobj_td_4301" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4302", align 8
  %"$msgobj_v_4304" = getelementptr i8, i8* %"$msgobj_4297", i32 25
  %"$msgobj_v_4305" = bitcast i8* %"$msgobj_v_4304" to %String*
  store %String { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$stringlit_4303", i32 0, i32 0), i32 17 }, %String* %"$msgobj_v_4305", align 8
  %"$msgobj_fname_4307" = getelementptr i8, i8* %"$msgobj_4297", i32 41
  %"$msgobj_fname_4308" = bitcast i8* %"$msgobj_fname_4307" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4306", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4308", align 8
  %"$msgobj_td_4309" = getelementptr i8, i8* %"$msgobj_4297", i32 57
  %"$msgobj_td_4310" = bitcast i8* %"$msgobj_td_4309" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_4310", align 8
  %"$msgobj_v_4311" = getelementptr i8, i8* %"$msgobj_4297", i32 65
  %"$msgobj_v_4312" = bitcast i8* %"$msgobj_v_4311" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_4312", align 1
  %"$msgobj_fname_4314" = getelementptr i8, i8* %"$msgobj_4297", i32 97
  %"$msgobj_fname_4315" = bitcast i8* %"$msgobj_fname_4314" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4313", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4315", align 8
  %"$msgobj_td_4316" = getelementptr i8, i8* %"$msgobj_4297", i32 113
  %"$msgobj_td_4317" = bitcast i8* %"$msgobj_td_4316" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4317", align 8
  %"$msgobj_v_4318" = getelementptr i8, i8* %"$msgobj_4297", i32 121
  %"$msgobj_v_4319" = bitcast i8* %"$msgobj_v_4318" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4319", align 1
  %"$msgobj_fname_4321" = getelementptr i8, i8* %"$msgobj_4297", i32 141
  %"$msgobj_fname_4322" = bitcast i8* %"$msgobj_fname_4321" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4320", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4322", align 8
  %"$msgobj_td_4323" = getelementptr i8, i8* %"$msgobj_4297", i32 157
  %"$msgobj_td_4324" = bitcast i8* %"$msgobj_td_4323" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_4324", align 8
  %"$msgobj_v_4325" = getelementptr i8, i8* %"$msgobj_4297", i32 165
  %"$msgobj_v_4326" = bitcast i8* %"$msgobj_v_4325" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4326", align 8
  %"$msgobj_fname_4328" = getelementptr i8, i8* %"$msgobj_4297", i32 181
  %"$msgobj_fname_4329" = bitcast i8* %"$msgobj_fname_4328" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4327", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4329", align 8
  %"$msgobj_td_4330" = getelementptr i8, i8* %"$msgobj_4297", i32 197
  %"$msgobj_td_4331" = bitcast i8* %"$msgobj_td_4330" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_4331", align 8
  %"$msgobj_v_4332" = getelementptr i8, i8* %"$msgobj_4297", i32 205
  %"$msgobj_v_4333" = bitcast i8* %"$msgobj_v_4332" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4333", align 1
  store i8* %"$msgobj_4297", i8** %m8, align 8, !dbg !420
  %"$gasrem_4335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4336" = icmp ugt i64 1, %"$gasrem_4335"
  br i1 %"$gascmp_4336", label %"$out_of_gas_4337", label %"$have_gas_4338"

"$out_of_gas_4337":                               ; preds = %"$have_gas_4295"
  call void @_out_of_gas()
  br label %"$have_gas_4338"

"$have_gas_4338":                                 ; preds = %"$out_of_gas_4337", %"$have_gas_4295"
  %"$consume_4339" = sub i64 %"$gasrem_4335", 1
  store i64 %"$consume_4339", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_90" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4340" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4341" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4340", 0
  %"$ud-registry.oneMsg_envptr_4342" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4340", 1
  %"$m_4343" = load i8*, i8** %m8, align 8
  %"$ud-registry.oneMsg_call_4344" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4341"(i8* %"$ud-registry.oneMsg_envptr_4342", i8* %"$m_4343"), !dbg !421
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4344", %TName_List_Message** %"$ud-registry.oneMsg_90", align 8, !dbg !421
  %"$$ud-registry.oneMsg_90_4345" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_90", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_90_4345", %TName_List_Message** %msgs7, align 8, !dbg !421
  %"$msgs_4346" = load %TName_List_Message*, %TName_List_Message** %msgs7, align 8
  %"$$msgs_4346_4347" = bitcast %TName_List_Message* %"$msgs_4346" to i8*
  %"$_literal_cost_call_4348" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_4346_4347")
  %"$gasrem_4349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4350" = icmp ugt i64 %"$_literal_cost_call_4348", %"$gasrem_4349"
  br i1 %"$gascmp_4350", label %"$out_of_gas_4351", label %"$have_gas_4352"

"$out_of_gas_4351":                               ; preds = %"$have_gas_4338"
  call void @_out_of_gas()
  br label %"$have_gas_4352"

"$have_gas_4352":                                 ; preds = %"$out_of_gas_4351", %"$have_gas_4338"
  %"$consume_4353" = sub i64 %"$gasrem_4349", %"$_literal_cost_call_4348"
  store i64 %"$consume_4353", i64* @_gasrem, align 8
  %"$execptr_load_4354" = load i8*, i8** @_execptr, align 8
  %"$msgs_4355" = load %TName_List_Message*, %TName_List_Message** %msgs7, align 8
  call void @_send(i8* %"$execptr_load_4354", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_4355"), !dbg !422
  br label %"$matchsucc_4085"

"$empty_default_4089":                            ; preds = %"$have_gas_4083"
  br label %"$matchsucc_4085"

"$matchsucc_4085":                                ; preds = %"$have_gas_4352", %"$have_gas_4239", %"$empty_default_4089"
  ret void
}

define void @transfer(i8* %0) !dbg !423 {
entry:
  %"$_amount_4357" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4358" = bitcast i8* %"$_amount_4357" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4358", align 8
  %"$_sender_4359" = getelementptr i8, i8* %0, i32 16
  %"$_sender_4360" = bitcast i8* %"$_sender_4359" to [20 x i8]*
  %"$node_4361" = getelementptr i8, i8* %0, i32 36
  %"$node_4362" = bitcast i8* %"$node_4361" to [32 x i8]*
  %"$owner_4363" = getelementptr i8, i8* %0, i32 68
  %"$owner_4364" = bitcast i8* %"$owner_4363" to [20 x i8]*
  call void @"$transfer_3978"(%Uint128 %_amount, [20 x i8]* %"$_sender_4360", [32 x i8]* %"$node_4362", [20 x i8]* %"$owner_4364"), !dbg !424
  ret void
}

define internal void @"$assign_4365"(%Uint128 %_amount, [20 x i8]* %"$_sender_4366", [32 x i8]* %"$parent_4367", %String %label, [20 x i8]* %"$owner_4368") !dbg !425 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4366", align 1
  %parent = load [32 x i8], [32 x i8]* %"$parent_4367", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_4368", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_4369_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4369_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4369_salloc_load", i64 32)
  %"$indices_buf_4369_salloc" = bitcast i8* %"$indices_buf_4369_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4369" = bitcast [32 x i8]* %"$indices_buf_4369_salloc" to i8*
  %"$indices_gep_4370" = getelementptr i8, i8* %"$indices_buf_4369", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4370" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4371" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_4373" = call i8* @_fetch_field(i8* %"$execptr_load_4371", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4372", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4369", i32 1), !dbg !426
  %"$maybeRecord_4374" = bitcast i8* %"$maybeRecord_4373" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4374", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_4375" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_4375_4376" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4375" to i8*
  %"$_literal_cost_call_4377" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_4375_4376")
  %"$gasadd_4378" = add i64 %"$_literal_cost_call_4377", 0
  %"$gasadd_4379" = add i64 %"$gasadd_4378", 1
  %"$gasrem_4380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4381" = icmp ugt i64 %"$gasadd_4379", %"$gasrem_4380"
  br i1 %"$gascmp_4381", label %"$out_of_gas_4382", label %"$have_gas_4383"

"$out_of_gas_4382":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4383"

"$have_gas_4383":                                 ; preds = %"$out_of_gas_4382", %entry
  %"$consume_4384" = sub i64 %"$gasrem_4380", %"$gasadd_4379"
  store i64 %"$consume_4384", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_4385_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4385_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4385_salloc_load", i64 32)
  %"$indices_buf_4385_salloc" = bitcast i8* %"$indices_buf_4385_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4385" = bitcast [32 x i8]* %"$indices_buf_4385_salloc" to i8*
  %"$indices_gep_4386" = getelementptr i8, i8* %"$indices_buf_4385", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4386" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4387" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_4389" = call i8* @_fetch_field(i8* %"$execptr_load_4387", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4388", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_4385", i32 1), !dbg !427
  %"$maybeApproved_4390" = bitcast i8* %"$maybeApproved_4389" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_4390", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_4391" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_4391_4392" = bitcast %TName_Option_ByStr20* %"$maybeApproved_4391" to i8*
  %"$_literal_cost_call_4393" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_4391_4392")
  %"$gasadd_4394" = add i64 %"$_literal_cost_call_4393", 0
  %"$gasadd_4395" = add i64 %"$gasadd_4394", 1
  %"$gasrem_4396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4397" = icmp ugt i64 %"$gasadd_4395", %"$gasrem_4396"
  br i1 %"$gascmp_4397", label %"$out_of_gas_4398", label %"$have_gas_4399"

"$out_of_gas_4398":                               ; preds = %"$have_gas_4383"
  call void @_out_of_gas()
  br label %"$have_gas_4399"

"$have_gas_4399":                                 ; preds = %"$out_of_gas_4398", %"$have_gas_4383"
  %"$consume_4400" = sub i64 %"$gasrem_4396", %"$gasadd_4395"
  store i64 %"$consume_4400", i64* @_gasrem, align 8
  %"$gasrem_4401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4402" = icmp ugt i64 1, %"$gasrem_4401"
  br i1 %"$gascmp_4402", label %"$out_of_gas_4403", label %"$have_gas_4404"

"$out_of_gas_4403":                               ; preds = %"$have_gas_4399"
  call void @_out_of_gas()
  br label %"$have_gas_4404"

"$have_gas_4404":                                 ; preds = %"$out_of_gas_4403", %"$have_gas_4399"
  %"$consume_4405" = sub i64 %"$gasrem_4401", 1
  store i64 %"$consume_4405", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_4406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4407" = icmp ugt i64 1, %"$gasrem_4406"
  br i1 %"$gascmp_4407", label %"$out_of_gas_4408", label %"$have_gas_4409"

"$out_of_gas_4408":                               ; preds = %"$have_gas_4404"
  call void @_out_of_gas()
  br label %"$have_gas_4409"

"$have_gas_4409":                                 ; preds = %"$out_of_gas_4408", %"$have_gas_4404"
  %"$consume_4410" = sub i64 %"$gasrem_4406", 1
  store i64 %"$consume_4410", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_111" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_4411" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_4412" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4411", 0
  %"$ud-registry.recordMemberOwner_envptr_4413" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4411", 1
  %"$maybeRecord_4414" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_4415" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_4412"(i8* %"$ud-registry.recordMemberOwner_envptr_4413", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4415", %TName_Option_ud-registry.Record* %"$maybeRecord_4414"), !dbg !428
  %"$ud-registry.recordMemberOwner_ret_4416" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4415", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_4416", [20 x i8]* %"$ud-registry.recordMemberOwner_111", align 1, !dbg !428
  %"$$ud-registry.recordMemberOwner_111_4417" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_111", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_111_4417", [20 x i8]* %recordOwner, align 1, !dbg !428
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_4418_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4418_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4418_salloc_load", i64 20)
  %"$indices_buf_4418_salloc" = bitcast i8* %"$indices_buf_4418_salloc_salloc" to [20 x i8]*
  %"$indices_buf_4418" = bitcast [20 x i8]* %"$indices_buf_4418_salloc" to i8*
  %"$recordOwner_4419" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_4420" = getelementptr i8, i8* %"$indices_buf_4418", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4420" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4419", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_4421" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_4423" = call i8* @_fetch_field(i8* %"$execptr_load_4421", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_4422", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_4418", i32 1), !dbg !429
  %"$maybeOperators_4424" = bitcast i8* %"$maybeOperators_4423" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4424", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_4425" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_4425_4426" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4425" to i8*
  %"$_literal_cost_call_4427" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_4425_4426")
  %"$gasadd_4428" = add i64 %"$_literal_cost_call_4427", 0
  %"$gasadd_4429" = add i64 %"$gasadd_4428", 1
  %"$gasrem_4430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4431" = icmp ugt i64 %"$gasadd_4429", %"$gasrem_4430"
  br i1 %"$gascmp_4431", label %"$out_of_gas_4432", label %"$have_gas_4433"

"$out_of_gas_4432":                               ; preds = %"$have_gas_4409"
  call void @_out_of_gas()
  br label %"$have_gas_4433"

"$have_gas_4433":                                 ; preds = %"$out_of_gas_4432", %"$have_gas_4409"
  %"$consume_4434" = sub i64 %"$gasrem_4430", %"$gasadd_4429"
  store i64 %"$consume_4434", i64* @_gasrem, align 8
  %"$gasrem_4435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4436" = icmp ugt i64 1, %"$gasrem_4435"
  br i1 %"$gascmp_4436", label %"$out_of_gas_4437", label %"$have_gas_4438"

"$out_of_gas_4437":                               ; preds = %"$have_gas_4433"
  call void @_out_of_gas()
  br label %"$have_gas_4438"

"$have_gas_4438":                                 ; preds = %"$out_of_gas_4437", %"$have_gas_4433"
  %"$consume_4439" = sub i64 %"$gasrem_4435", 1
  store i64 %"$consume_4439", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_4440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4441" = icmp ugt i64 1, %"$gasrem_4440"
  br i1 %"$gascmp_4441", label %"$out_of_gas_4442", label %"$have_gas_4443"

"$out_of_gas_4442":                               ; preds = %"$have_gas_4438"
  call void @_out_of_gas()
  br label %"$have_gas_4443"

"$have_gas_4443":                                 ; preds = %"$out_of_gas_4442", %"$have_gas_4438"
  %"$consume_4444" = sub i64 %"$gasrem_4440", 1
  store i64 %"$consume_4444", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_107" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_4445" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_4446" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4445", 0
  %"$ud-registry.getIsOAO_envptr_4447" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4445", 1
  %"$ud-registry.getIsOAO__sender_4448" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_4448", align 1
  %"$ud-registry.getIsOAO_call_4449" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_4446"(i8* %"$ud-registry.getIsOAO_envptr_4447", [20 x i8]* %"$ud-registry.getIsOAO__sender_4448"), !dbg !430
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_4449", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_107", align 8, !dbg !430
  %"$ud-registry.getIsOAO_108" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_107_4450" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_107", align 8
  %"$$ud-registry.getIsOAO_107_fptr_4451" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_107_4450", 0
  %"$$ud-registry.getIsOAO_107_envptr_4452" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_107_4450", 1
  %"$$ud-registry.getIsOAO_107_recordOwner_4453" = alloca [20 x i8], align 1
  %"$recordOwner_4454" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_4454", [20 x i8]* %"$$ud-registry.getIsOAO_107_recordOwner_4453", align 1
  %"$$ud-registry.getIsOAO_107_call_4455" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_107_fptr_4451"(i8* %"$$ud-registry.getIsOAO_107_envptr_4452", [20 x i8]* %"$$ud-registry.getIsOAO_107_recordOwner_4453"), !dbg !430
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_107_call_4455", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_108", align 8, !dbg !430
  %"$ud-registry.getIsOAO_109" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_108_4456" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_108", align 8
  %"$$ud-registry.getIsOAO_108_fptr_4457" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_108_4456", 0
  %"$$ud-registry.getIsOAO_108_envptr_4458" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_108_4456", 1
  %"$maybeApproved_4459" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_108_call_4460" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_108_fptr_4457"(i8* %"$$ud-registry.getIsOAO_108_envptr_4458", %TName_Option_ByStr20* %"$maybeApproved_4459"), !dbg !430
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_108_call_4460", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_109", align 8, !dbg !430
  %"$ud-registry.getIsOAO_110" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_109_4461" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_109", align 8
  %"$$ud-registry.getIsOAO_109_fptr_4462" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_109_4461", 0
  %"$$ud-registry.getIsOAO_109_envptr_4463" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_109_4461", 1
  %"$maybeOperators_4464" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_109_call_4465" = call %TName_Bool* %"$$ud-registry.getIsOAO_109_fptr_4462"(i8* %"$$ud-registry.getIsOAO_109_envptr_4463", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4464"), !dbg !430
  store %TName_Bool* %"$$ud-registry.getIsOAO_109_call_4465", %TName_Bool** %"$ud-registry.getIsOAO_110", align 8, !dbg !430
  %"$$ud-registry.getIsOAO_110_4466" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_110", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_110_4466", %TName_Bool** %isSenderOAO, align 8, !dbg !430
  %"$gasrem_4467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4468" = icmp ugt i64 2, %"$gasrem_4467"
  br i1 %"$gascmp_4468", label %"$out_of_gas_4469", label %"$have_gas_4470"

"$out_of_gas_4469":                               ; preds = %"$have_gas_4443"
  call void @_out_of_gas()
  br label %"$have_gas_4470"

"$have_gas_4470":                                 ; preds = %"$out_of_gas_4469", %"$have_gas_4443"
  %"$consume_4471" = sub i64 %"$gasrem_4467", 2
  store i64 %"$consume_4471", i64* @_gasrem, align 8
  %"$isSenderOAO_4473" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_4474" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_4473", i32 0, i32 0
  %"$isSenderOAO_tag_4475" = load i8, i8* %"$isSenderOAO_tag_4474", align 1
  switch i8 %"$isSenderOAO_tag_4475", label %"$empty_default_4476" [
    i8 0, label %"$True_4477"
    i8 1, label %"$False_4720"
  ], !dbg !431

"$True_4477":                                     ; preds = %"$have_gas_4470"
  %"$isSenderOAO_4478" = bitcast %TName_Bool* %"$isSenderOAO_4473" to %CName_True*
  %"$gasrem_4479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4480" = icmp ugt i64 1, %"$gasrem_4479"
  br i1 %"$gascmp_4480", label %"$out_of_gas_4481", label %"$have_gas_4482"

"$out_of_gas_4481":                               ; preds = %"$True_4477"
  call void @_out_of_gas()
  br label %"$have_gas_4482"

"$have_gas_4482":                                 ; preds = %"$out_of_gas_4481", %"$True_4477"
  %"$consume_4483" = sub i64 %"$gasrem_4479", 1
  store i64 %"$consume_4483", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_4484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4485" = icmp ugt i64 1, %"$gasrem_4484"
  br i1 %"$gascmp_4485", label %"$out_of_gas_4486", label %"$have_gas_4487"

"$out_of_gas_4486":                               ; preds = %"$have_gas_4482"
  call void @_out_of_gas()
  br label %"$have_gas_4487"

"$have_gas_4487":                                 ; preds = %"$out_of_gas_4486", %"$have_gas_4482"
  %"$consume_4488" = sub i64 %"$gasrem_4484", 1
  store i64 %"$consume_4488", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_103" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_4489" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_4490" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4489", 0
  %"$ud-registry.parentLabelToNode_envptr_4491" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4489", 1
  %"$ud-registry.parentLabelToNode_parent_4492" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4492", align 1
  %"$ud-registry.parentLabelToNode_call_4493" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_4490"(i8* %"$ud-registry.parentLabelToNode_envptr_4491", [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4492"), !dbg !432
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_4493", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_103", align 8, !dbg !432
  %"$ud-registry.parentLabelToNode_104" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_103_4494" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_103", align 8
  %"$$ud-registry.parentLabelToNode_103_fptr_4495" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_103_4494", 0
  %"$$ud-registry.parentLabelToNode_103_envptr_4496" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_103_4494", 1
  %"$$ud-registry.parentLabelToNode_103_retalloca_4497" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_103_fptr_4495"(i8* %"$$ud-registry.parentLabelToNode_103_envptr_4496", [32 x i8]* %"$$ud-registry.parentLabelToNode_103_retalloca_4497", %String %label), !dbg !432
  %"$$ud-registry.parentLabelToNode_103_ret_4498" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_103_retalloca_4497", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_103_ret_4498", [32 x i8]* %"$ud-registry.parentLabelToNode_104", align 1, !dbg !432
  %"$$ud-registry.parentLabelToNode_104_4499" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_104", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_104_4499", [32 x i8]* %node, align 1, !dbg !432
  %recordExists = alloca %TName_Bool*, align 8
  %"$indices_buf_4500_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4500_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4500_salloc_load", i64 32)
  %"$indices_buf_4500_salloc" = bitcast i8* %"$indices_buf_4500_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4500" = bitcast [32 x i8]* %"$indices_buf_4500_salloc" to i8*
  %"$node_4501" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4502" = getelementptr i8, i8* %"$indices_buf_4500", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_4502" to [32 x i8]*
  store [32 x i8] %"$node_4501", [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_4503" = load i8*, i8** @_execptr, align 8
  %"$recordExists_4505" = call i8* @_fetch_field(i8* %"$execptr_load_4503", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4504", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4500", i32 0), !dbg !435
  %"$recordExists_4506" = bitcast i8* %"$recordExists_4505" to %TName_Bool*
  store %TName_Bool* %"$recordExists_4506", %TName_Bool** %recordExists, align 8
  %"$recordExists_4507" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$$recordExists_4507_4508" = bitcast %TName_Bool* %"$recordExists_4507" to i8*
  %"$_literal_cost_call_4509" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", i8* %"$$recordExists_4507_4508")
  %"$gasadd_4510" = add i64 %"$_literal_cost_call_4509", 0
  %"$gasadd_4511" = add i64 %"$gasadd_4510", 1
  %"$gasrem_4512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4513" = icmp ugt i64 %"$gasadd_4511", %"$gasrem_4512"
  br i1 %"$gascmp_4513", label %"$out_of_gas_4514", label %"$have_gas_4515"

"$out_of_gas_4514":                               ; preds = %"$have_gas_4487"
  call void @_out_of_gas()
  br label %"$have_gas_4515"

"$have_gas_4515":                                 ; preds = %"$out_of_gas_4514", %"$have_gas_4487"
  %"$consume_4516" = sub i64 %"$gasrem_4512", %"$gasadd_4511"
  store i64 %"$consume_4516", i64* @_gasrem, align 8
  %"$gasrem_4517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4518" = icmp ugt i64 2, %"$gasrem_4517"
  br i1 %"$gascmp_4518", label %"$out_of_gas_4519", label %"$have_gas_4520"

"$out_of_gas_4519":                               ; preds = %"$have_gas_4515"
  call void @_out_of_gas()
  br label %"$have_gas_4520"

"$have_gas_4520":                                 ; preds = %"$out_of_gas_4519", %"$have_gas_4515"
  %"$consume_4521" = sub i64 %"$gasrem_4517", 2
  store i64 %"$consume_4521", i64* @_gasrem, align 8
  %"$recordExists_4523" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$recordExists_tag_4524" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$recordExists_4523", i32 0, i32 0
  %"$recordExists_tag_4525" = load i8, i8* %"$recordExists_tag_4524", align 1
  switch i8 %"$recordExists_tag_4525", label %"$default_4526" [
    i8 1, label %"$False_4527"
  ], !dbg !436

"$False_4527":                                    ; preds = %"$have_gas_4520"
  %"$recordExists_4528" = bitcast %TName_Bool* %"$recordExists_4523" to %CName_False*
  %"$gasrem_4529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4530" = icmp ugt i64 1, %"$gasrem_4529"
  br i1 %"$gascmp_4530", label %"$out_of_gas_4531", label %"$have_gas_4532"

"$out_of_gas_4531":                               ; preds = %"$False_4527"
  call void @_out_of_gas()
  br label %"$have_gas_4532"

"$have_gas_4532":                                 ; preds = %"$out_of_gas_4531", %"$False_4527"
  %"$consume_4533" = sub i64 %"$gasrem_4529", 1
  store i64 %"$consume_4533", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_4534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4535" = icmp ugt i64 1, %"$gasrem_4534"
  br i1 %"$gascmp_4535", label %"$out_of_gas_4536", label %"$have_gas_4537"

"$out_of_gas_4536":                               ; preds = %"$have_gas_4532"
  call void @_out_of_gas()
  br label %"$have_gas_4537"

"$have_gas_4537":                                 ; preds = %"$out_of_gas_4536", %"$have_gas_4532"
  %"$consume_4538" = sub i64 %"$gasrem_4534", 1
  store i64 %"$consume_4538", i64* @_gasrem, align 8
  %"$ud-registry.eNewDomain_101" = alloca { i8* (i8*, %String)*, i8* }, align 8
  %"$ud-registry.eNewDomain_4539" = load { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain, align 8
  %"$ud-registry.eNewDomain_fptr_4540" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_4539", 0
  %"$ud-registry.eNewDomain_envptr_4541" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_4539", 1
  %"$ud-registry.eNewDomain_parent_4542" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.eNewDomain_parent_4542", align 1
  %"$ud-registry.eNewDomain_call_4543" = call { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_fptr_4540"(i8* %"$ud-registry.eNewDomain_envptr_4541", [32 x i8]* %"$ud-registry.eNewDomain_parent_4542"), !dbg !437
  store { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_call_4543", { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_101", align 8, !dbg !437
  %"$ud-registry.eNewDomain_102" = alloca i8*, align 8
  %"$$ud-registry.eNewDomain_101_4544" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_101", align 8
  %"$$ud-registry.eNewDomain_101_fptr_4545" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_101_4544", 0
  %"$$ud-registry.eNewDomain_101_envptr_4546" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_101_4544", 1
  %"$$ud-registry.eNewDomain_101_call_4547" = call i8* %"$$ud-registry.eNewDomain_101_fptr_4545"(i8* %"$$ud-registry.eNewDomain_101_envptr_4546", %String %label), !dbg !437
  store i8* %"$$ud-registry.eNewDomain_101_call_4547", i8** %"$ud-registry.eNewDomain_102", align 8, !dbg !437
  %"$$ud-registry.eNewDomain_102_4548" = load i8*, i8** %"$ud-registry.eNewDomain_102", align 8
  store i8* %"$$ud-registry.eNewDomain_102_4548", i8** %e, align 8, !dbg !437
  %"$e_4549" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_4551" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4549")
  %"$gasrem_4552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4553" = icmp ugt i64 %"$_literal_cost_call_4551", %"$gasrem_4552"
  br i1 %"$gascmp_4553", label %"$out_of_gas_4554", label %"$have_gas_4555"

"$out_of_gas_4554":                               ; preds = %"$have_gas_4537"
  call void @_out_of_gas()
  br label %"$have_gas_4555"

"$have_gas_4555":                                 ; preds = %"$out_of_gas_4554", %"$have_gas_4537"
  %"$consume_4556" = sub i64 %"$gasrem_4552", %"$_literal_cost_call_4551"
  store i64 %"$consume_4556", i64* @_gasrem, align 8
  %"$execptr_load_4557" = load i8*, i8** @_execptr, align 8
  %"$e_4558" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_4557", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4558"), !dbg !440
  br label %"$matchsucc_4522"

"$default_4526":                                  ; preds = %"$have_gas_4520"
  br label %"$joinp_4"

"$joinp_4":                                       ; preds = %"$default_4526"
  br label %"$matchsucc_4522"

"$matchsucc_4522":                                ; preds = %"$have_gas_4555", %"$joinp_4"
  %"$gasrem_4559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4560" = icmp ugt i64 1, %"$gasrem_4559"
  br i1 %"$gascmp_4560", label %"$out_of_gas_4561", label %"$have_gas_4562"

"$out_of_gas_4561":                               ; preds = %"$matchsucc_4522"
  call void @_out_of_gas()
  br label %"$have_gas_4562"

"$have_gas_4562":                                 ; preds = %"$out_of_gas_4561", %"$matchsucc_4522"
  %"$consume_4563" = sub i64 %"$gasrem_4559", 1
  store i64 %"$consume_4563", i64* @_gasrem, align 8
  %"$indices_buf_4564_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4564_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4564_salloc_load", i64 32)
  %"$indices_buf_4564_salloc" = bitcast i8* %"$indices_buf_4564_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4564" = bitcast [32 x i8]* %"$indices_buf_4564_salloc" to i8*
  %"$node_4565" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4566" = getelementptr i8, i8* %"$indices_buf_4564", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4566" to [32 x i8]*
  store [32 x i8] %"$node_4565", [32 x i8]* %indices_cast4, align 1
  %"$execptr_load_4567" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4567", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4568", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_4564", i8* null), !dbg !441
  %"$gasrem_4569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4570" = icmp ugt i64 1, %"$gasrem_4569"
  br i1 %"$gascmp_4570", label %"$out_of_gas_4571", label %"$have_gas_4572"

"$out_of_gas_4571":                               ; preds = %"$have_gas_4562"
  call void @_out_of_gas()
  br label %"$have_gas_4572"

"$have_gas_4572":                                 ; preds = %"$out_of_gas_4571", %"$have_gas_4562"
  %"$consume_4573" = sub i64 %"$gasrem_4569", 1
  store i64 %"$consume_4573", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_4574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4575" = icmp ugt i64 1, %"$gasrem_4574"
  br i1 %"$gascmp_4575", label %"$out_of_gas_4576", label %"$have_gas_4577"

"$out_of_gas_4576":                               ; preds = %"$have_gas_4572"
  call void @_out_of_gas()
  br label %"$have_gas_4577"

"$have_gas_4577":                                 ; preds = %"$out_of_gas_4576", %"$have_gas_4572"
  %"$consume_4578" = sub i64 %"$gasrem_4574", 1
  store i64 %"$consume_4578", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_4579" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_4580_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4580_salloc" = call i8* @_salloc(i8* %"$adtval_4580_load", i64 41)
  %"$adtval_4580" = bitcast i8* %"$adtval_4580_salloc" to %CName_ud-registry.Record*
  %"$adtgep_4581" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4580", i32 0, i32 0
  store i8 0, i8* %"$adtgep_4581", align 1
  %"$adtgep_4582" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4580", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_4582", align 1
  %"$adtgep_4583" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4580", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_4579", [20 x i8]* %"$adtgep_4583", align 1
  %"$adtptr_4584" = bitcast %CName_ud-registry.Record* %"$adtval_4580" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_4584", %TName_ud-registry.Record** %newRecord, align 8, !dbg !442
  %"$newRecord_4585" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_4585_4586" = bitcast %TName_ud-registry.Record* %"$newRecord_4585" to i8*
  %"$_literal_cost_call_4587" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_4585_4586")
  %"$gasadd_4588" = add i64 %"$_literal_cost_call_4587", 1
  %"$gasrem_4589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4590" = icmp ugt i64 %"$gasadd_4588", %"$gasrem_4589"
  br i1 %"$gascmp_4590", label %"$out_of_gas_4591", label %"$have_gas_4592"

"$out_of_gas_4591":                               ; preds = %"$have_gas_4577"
  call void @_out_of_gas()
  br label %"$have_gas_4592"

"$have_gas_4592":                                 ; preds = %"$out_of_gas_4591", %"$have_gas_4577"
  %"$consume_4593" = sub i64 %"$gasrem_4589", %"$gasadd_4588"
  store i64 %"$consume_4593", i64* @_gasrem, align 8
  %"$indices_buf_4594_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4594_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4594_salloc_load", i64 32)
  %"$indices_buf_4594_salloc" = bitcast i8* %"$indices_buf_4594_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4594" = bitcast [32 x i8]* %"$indices_buf_4594_salloc" to i8*
  %"$node_4595" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4596" = getelementptr i8, i8* %"$indices_buf_4594", i32 0
  %indices_cast5 = bitcast i8* %"$indices_gep_4596" to [32 x i8]*
  store [32 x i8] %"$node_4595", [32 x i8]* %indices_cast5, align 1
  %"$execptr_load_4597" = load i8*, i8** @_execptr, align 8
  %"$newRecord_4599" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_4600" = bitcast %TName_ud-registry.Record* %"$newRecord_4599" to i8*
  call void @_update_field(i8* %"$execptr_load_4597", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4598", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4594", i8* %"$update_value_4600"), !dbg !443
  %"$gasrem_4601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4602" = icmp ugt i64 1, %"$gasrem_4601"
  br i1 %"$gascmp_4602", label %"$out_of_gas_4603", label %"$have_gas_4604"

"$out_of_gas_4603":                               ; preds = %"$have_gas_4592"
  call void @_out_of_gas()
  br label %"$have_gas_4604"

"$have_gas_4604":                                 ; preds = %"$out_of_gas_4603", %"$have_gas_4592"
  %"$consume_4605" = sub i64 %"$gasrem_4601", 1
  store i64 %"$consume_4605", i64* @_gasrem, align 8
  %e6 = alloca i8*, align 8
  %"$gasrem_4606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4607" = icmp ugt i64 1, %"$gasrem_4606"
  br i1 %"$gascmp_4607", label %"$out_of_gas_4608", label %"$have_gas_4609"

"$out_of_gas_4608":                               ; preds = %"$have_gas_4604"
  call void @_out_of_gas()
  br label %"$have_gas_4609"

"$have_gas_4609":                                 ; preds = %"$out_of_gas_4608", %"$have_gas_4604"
  %"$consume_4610" = sub i64 %"$gasrem_4606", 1
  store i64 %"$consume_4610", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_98" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_4611" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_4612" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4611", 0
  %"$ud-registry.eConfigured_envptr_4613" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4611", 1
  %"$ud-registry.eConfigured_node_4614" = alloca [32 x i8], align 1
  %"$node_4615" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_4615", [32 x i8]* %"$ud-registry.eConfigured_node_4614", align 1
  %"$ud-registry.eConfigured_call_4616" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_4612"(i8* %"$ud-registry.eConfigured_envptr_4613", [32 x i8]* %"$ud-registry.eConfigured_node_4614"), !dbg !444
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_4616", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_98", align 8, !dbg !444
  %"$ud-registry.eConfigured_99" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_98_4617" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_98", align 8
  %"$$ud-registry.eConfigured_98_fptr_4618" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_98_4617", 0
  %"$$ud-registry.eConfigured_98_envptr_4619" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_98_4617", 1
  %"$$ud-registry.eConfigured_98_owner_4620" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_98_owner_4620", align 1
  %"$$ud-registry.eConfigured_98_call_4621" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_98_fptr_4618"(i8* %"$$ud-registry.eConfigured_98_envptr_4619", [20 x i8]* %"$$ud-registry.eConfigured_98_owner_4620"), !dbg !444
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_98_call_4621", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_99", align 8, !dbg !444
  %"$ud-registry.eConfigured_100" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_99_4622" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_99", align 8
  %"$$ud-registry.eConfigured_99_fptr_4623" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_99_4622", 0
  %"$$ud-registry.eConfigured_99_envptr_4624" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_99_4622", 1
  %"$$ud-registry.eConfigured_99_ud-registry.zeroByStr20_4625" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_4626" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_4626", [20 x i8]* %"$$ud-registry.eConfigured_99_ud-registry.zeroByStr20_4625", align 1
  %"$$ud-registry.eConfigured_99_call_4627" = call i8* %"$$ud-registry.eConfigured_99_fptr_4623"(i8* %"$$ud-registry.eConfigured_99_envptr_4624", [20 x i8]* %"$$ud-registry.eConfigured_99_ud-registry.zeroByStr20_4625"), !dbg !444
  store i8* %"$$ud-registry.eConfigured_99_call_4627", i8** %"$ud-registry.eConfigured_100", align 8, !dbg !444
  %"$$ud-registry.eConfigured_100_4628" = load i8*, i8** %"$ud-registry.eConfigured_100", align 8
  store i8* %"$$ud-registry.eConfigured_100_4628", i8** %e6, align 8, !dbg !444
  %"$e_4629" = load i8*, i8** %e6, align 8
  %"$_literal_cost_call_4631" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4629")
  %"$gasrem_4632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4633" = icmp ugt i64 %"$_literal_cost_call_4631", %"$gasrem_4632"
  br i1 %"$gascmp_4633", label %"$out_of_gas_4634", label %"$have_gas_4635"

"$out_of_gas_4634":                               ; preds = %"$have_gas_4609"
  call void @_out_of_gas()
  br label %"$have_gas_4635"

"$have_gas_4635":                                 ; preds = %"$out_of_gas_4634", %"$have_gas_4609"
  %"$consume_4636" = sub i64 %"$gasrem_4632", %"$_literal_cost_call_4631"
  store i64 %"$consume_4636", i64* @_gasrem, align 8
  %"$execptr_load_4637" = load i8*, i8** @_execptr, align 8
  %"$e_4638" = load i8*, i8** %e6, align 8
  call void @_event(i8* %"$execptr_load_4637", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4638"), !dbg !445
  %"$gasrem_4639" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4640" = icmp ugt i64 1, %"$gasrem_4639"
  br i1 %"$gascmp_4640", label %"$out_of_gas_4641", label %"$have_gas_4642"

"$out_of_gas_4641":                               ; preds = %"$have_gas_4635"
  call void @_out_of_gas()
  br label %"$have_gas_4642"

"$have_gas_4642":                                 ; preds = %"$out_of_gas_4641", %"$have_gas_4635"
  %"$consume_4643" = sub i64 %"$gasrem_4639", 1
  store i64 %"$consume_4643", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_4644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4645" = icmp ugt i64 1, %"$gasrem_4644"
  br i1 %"$gascmp_4645", label %"$out_of_gas_4646", label %"$have_gas_4647"

"$out_of_gas_4646":                               ; preds = %"$have_gas_4642"
  call void @_out_of_gas()
  br label %"$have_gas_4647"

"$have_gas_4647":                                 ; preds = %"$out_of_gas_4646", %"$have_gas_4642"
  %"$consume_4648" = sub i64 %"$gasrem_4644", 1
  store i64 %"$consume_4648", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_4649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4650" = icmp ugt i64 1, %"$gasrem_4649"
  br i1 %"$gascmp_4650", label %"$out_of_gas_4651", label %"$have_gas_4652"

"$out_of_gas_4651":                               ; preds = %"$have_gas_4647"
  call void @_out_of_gas()
  br label %"$have_gas_4652"

"$have_gas_4652":                                 ; preds = %"$out_of_gas_4651", %"$have_gas_4647"
  %"$consume_4653" = sub i64 %"$gasrem_4649", 1
  store i64 %"$consume_4653", i64* @_gasrem, align 8
  %"$msgobj_4654_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4654_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4654_salloc_load", i64 265)
  %"$msgobj_4654_salloc" = bitcast i8* %"$msgobj_4654_salloc_salloc" to [265 x i8]*
  %"$msgobj_4654" = bitcast [265 x i8]* %"$msgobj_4654_salloc" to i8*
  store i8 6, i8* %"$msgobj_4654", align 1
  %"$msgobj_fname_4656" = getelementptr i8, i8* %"$msgobj_4654", i32 1
  %"$msgobj_fname_4657" = bitcast i8* %"$msgobj_fname_4656" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4655", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4657", align 8
  %"$msgobj_td_4658" = getelementptr i8, i8* %"$msgobj_4654", i32 17
  %"$msgobj_td_4659" = bitcast i8* %"$msgobj_td_4658" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4659", align 8
  %"$msgobj_v_4661" = getelementptr i8, i8* %"$msgobj_4654", i32 25
  %"$msgobj_v_4662" = bitcast i8* %"$msgobj_v_4661" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_4660", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_4662", align 8
  %"$msgobj_fname_4664" = getelementptr i8, i8* %"$msgobj_4654", i32 41
  %"$msgobj_fname_4665" = bitcast i8* %"$msgobj_fname_4664" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_4663", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_4665", align 8
  %"$msgobj_td_4666" = getelementptr i8, i8* %"$msgobj_4654", i32 57
  %"$msgobj_td_4667" = bitcast i8* %"$msgobj_td_4666" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_4667", align 8
  %"$msgobj_v_4668" = getelementptr i8, i8* %"$msgobj_4654", i32 65
  %"$msgobj_v_4669" = bitcast i8* %"$msgobj_v_4668" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_4669", align 1
  %"$msgobj_fname_4671" = getelementptr i8, i8* %"$msgobj_4654", i32 97
  %"$msgobj_fname_4672" = bitcast i8* %"$msgobj_fname_4671" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4670", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4672", align 8
  %"$msgobj_td_4673" = getelementptr i8, i8* %"$msgobj_4654", i32 113
  %"$msgobj_td_4674" = bitcast i8* %"$msgobj_td_4673" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4674", align 8
  %"$msgobj_v_4675" = getelementptr i8, i8* %"$msgobj_4654", i32 121
  %"$msgobj_v_4676" = bitcast i8* %"$msgobj_v_4675" to %String*
  store %String %label, %String* %"$msgobj_v_4676", align 8
  %"$msgobj_fname_4678" = getelementptr i8, i8* %"$msgobj_4654", i32 137
  %"$msgobj_fname_4679" = bitcast i8* %"$msgobj_fname_4678" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4677", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4679", align 8
  %"$msgobj_td_4680" = getelementptr i8, i8* %"$msgobj_4654", i32 153
  %"$msgobj_td_4681" = bitcast i8* %"$msgobj_td_4680" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4681", align 8
  %"$msgobj_v_4682" = getelementptr i8, i8* %"$msgobj_4654", i32 161
  %"$msgobj_v_4683" = bitcast i8* %"$msgobj_v_4682" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4683", align 1
  %"$msgobj_fname_4685" = getelementptr i8, i8* %"$msgobj_4654", i32 181
  %"$msgobj_fname_4686" = bitcast i8* %"$msgobj_fname_4685" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4684", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4686", align 8
  %"$msgobj_td_4687" = getelementptr i8, i8* %"$msgobj_4654", i32 197
  %"$msgobj_td_4688" = bitcast i8* %"$msgobj_td_4687" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_4688", align 8
  %"$msgobj_v_4689" = getelementptr i8, i8* %"$msgobj_4654", i32 205
  %"$msgobj_v_4690" = bitcast i8* %"$msgobj_v_4689" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4690", align 8
  %"$msgobj_fname_4692" = getelementptr i8, i8* %"$msgobj_4654", i32 221
  %"$msgobj_fname_4693" = bitcast i8* %"$msgobj_fname_4692" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4691", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4693", align 8
  %"$msgobj_td_4694" = getelementptr i8, i8* %"$msgobj_4654", i32 237
  %"$msgobj_td_4695" = bitcast i8* %"$msgobj_td_4694" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_4695", align 8
  %"$msgobj_v_4696" = getelementptr i8, i8* %"$msgobj_4654", i32 245
  %"$msgobj_v_4697" = bitcast i8* %"$msgobj_v_4696" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4697", align 1
  store i8* %"$msgobj_4654", i8** %m, align 8, !dbg !446
  %"$gasrem_4699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4700" = icmp ugt i64 1, %"$gasrem_4699"
  br i1 %"$gascmp_4700", label %"$out_of_gas_4701", label %"$have_gas_4702"

"$out_of_gas_4701":                               ; preds = %"$have_gas_4652"
  call void @_out_of_gas()
  br label %"$have_gas_4702"

"$have_gas_4702":                                 ; preds = %"$out_of_gas_4701", %"$have_gas_4652"
  %"$consume_4703" = sub i64 %"$gasrem_4699", 1
  store i64 %"$consume_4703", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_97" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4704" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4705" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4704", 0
  %"$ud-registry.oneMsg_envptr_4706" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4704", 1
  %"$m_4707" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_4708" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4705"(i8* %"$ud-registry.oneMsg_envptr_4706", i8* %"$m_4707"), !dbg !447
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4708", %TName_List_Message** %"$ud-registry.oneMsg_97", align 8, !dbg !447
  %"$$ud-registry.oneMsg_97_4709" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_97", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_97_4709", %TName_List_Message** %msgs, align 8, !dbg !447
  %"$msgs_4710" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_4710_4711" = bitcast %TName_List_Message* %"$msgs_4710" to i8*
  %"$_literal_cost_call_4712" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_4710_4711")
  %"$gasrem_4713" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4714" = icmp ugt i64 %"$_literal_cost_call_4712", %"$gasrem_4713"
  br i1 %"$gascmp_4714", label %"$out_of_gas_4715", label %"$have_gas_4716"

"$out_of_gas_4715":                               ; preds = %"$have_gas_4702"
  call void @_out_of_gas()
  br label %"$have_gas_4716"

"$have_gas_4716":                                 ; preds = %"$out_of_gas_4715", %"$have_gas_4702"
  %"$consume_4717" = sub i64 %"$gasrem_4713", %"$_literal_cost_call_4712"
  store i64 %"$consume_4717", i64* @_gasrem, align 8
  %"$execptr_load_4718" = load i8*, i8** @_execptr, align 8
  %"$msgs_4719" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_4718", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_4719"), !dbg !448
  br label %"$matchsucc_4472"

"$False_4720":                                    ; preds = %"$have_gas_4470"
  %"$isSenderOAO_4721" = bitcast %TName_Bool* %"$isSenderOAO_4473" to %CName_False*
  %"$gasrem_4722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4723" = icmp ugt i64 1, %"$gasrem_4722"
  br i1 %"$gascmp_4723", label %"$out_of_gas_4724", label %"$have_gas_4725"

"$out_of_gas_4724":                               ; preds = %"$False_4720"
  call void @_out_of_gas()
  br label %"$have_gas_4725"

"$have_gas_4725":                                 ; preds = %"$out_of_gas_4724", %"$False_4720"
  %"$consume_4726" = sub i64 %"$gasrem_4722", 1
  store i64 %"$consume_4726", i64* @_gasrem, align 8
  %e7 = alloca i8*, align 8
  %"$gasrem_4727" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4728" = icmp ugt i64 1, %"$gasrem_4727"
  br i1 %"$gascmp_4728", label %"$out_of_gas_4729", label %"$have_gas_4730"

"$out_of_gas_4729":                               ; preds = %"$have_gas_4725"
  call void @_out_of_gas()
  br label %"$have_gas_4730"

"$have_gas_4730":                                 ; preds = %"$out_of_gas_4729", %"$have_gas_4725"
  %"$consume_4731" = sub i64 %"$gasrem_4727", 1
  store i64 %"$consume_4731", i64* @_gasrem, align 8
  %m8 = alloca %String, align 8
  %"$gasrem_4732" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4733" = icmp ugt i64 1, %"$gasrem_4732"
  br i1 %"$gascmp_4733", label %"$out_of_gas_4734", label %"$have_gas_4735"

"$out_of_gas_4734":                               ; preds = %"$have_gas_4730"
  call void @_out_of_gas()
  br label %"$have_gas_4735"

"$have_gas_4735":                                 ; preds = %"$out_of_gas_4734", %"$have_gas_4730"
  %"$consume_4736" = sub i64 %"$gasrem_4732", 1
  store i64 %"$consume_4736", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"$stringlit_4737", i32 0, i32 0), i32 45 }, %String* %m8, align 8, !dbg !449
  %"$gasrem_4738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4739" = icmp ugt i64 1, %"$gasrem_4738"
  br i1 %"$gascmp_4739", label %"$out_of_gas_4740", label %"$have_gas_4741"

"$out_of_gas_4740":                               ; preds = %"$have_gas_4735"
  call void @_out_of_gas()
  br label %"$have_gas_4741"

"$have_gas_4741":                                 ; preds = %"$out_of_gas_4740", %"$have_gas_4735"
  %"$consume_4742" = sub i64 %"$gasrem_4738", 1
  store i64 %"$consume_4742", i64* @_gasrem, align 8
  %"$ud-registry.eError_106" = alloca i8*, align 8
  %"$ud-registry.eError_4743" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_4744" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4743", 0
  %"$ud-registry.eError_envptr_4745" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4743", 1
  %"$m_4746" = load %String, %String* %m8, align 8
  %"$ud-registry.eError_call_4747" = call i8* %"$ud-registry.eError_fptr_4744"(i8* %"$ud-registry.eError_envptr_4745", %String %"$m_4746"), !dbg !451
  store i8* %"$ud-registry.eError_call_4747", i8** %"$ud-registry.eError_106", align 8, !dbg !451
  %"$$ud-registry.eError_106_4748" = load i8*, i8** %"$ud-registry.eError_106", align 8
  store i8* %"$$ud-registry.eError_106_4748", i8** %e7, align 8, !dbg !451
  %"$e_4749" = load i8*, i8** %e7, align 8
  %"$_literal_cost_call_4751" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4749")
  %"$gasrem_4752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4753" = icmp ugt i64 %"$_literal_cost_call_4751", %"$gasrem_4752"
  br i1 %"$gascmp_4753", label %"$out_of_gas_4754", label %"$have_gas_4755"

"$out_of_gas_4754":                               ; preds = %"$have_gas_4741"
  call void @_out_of_gas()
  br label %"$have_gas_4755"

"$have_gas_4755":                                 ; preds = %"$out_of_gas_4754", %"$have_gas_4741"
  %"$consume_4756" = sub i64 %"$gasrem_4752", %"$_literal_cost_call_4751"
  store i64 %"$consume_4756", i64* @_gasrem, align 8
  %"$execptr_load_4757" = load i8*, i8** @_execptr, align 8
  %"$e_4758" = load i8*, i8** %e7, align 8
  call void @_event(i8* %"$execptr_load_4757", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4758"), !dbg !452
  %"$gasrem_4759" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4760" = icmp ugt i64 1, %"$gasrem_4759"
  br i1 %"$gascmp_4760", label %"$out_of_gas_4761", label %"$have_gas_4762"

"$out_of_gas_4761":                               ; preds = %"$have_gas_4755"
  call void @_out_of_gas()
  br label %"$have_gas_4762"

"$have_gas_4762":                                 ; preds = %"$out_of_gas_4761", %"$have_gas_4755"
  %"$consume_4763" = sub i64 %"$gasrem_4759", 1
  store i64 %"$consume_4763", i64* @_gasrem, align 8
  %msgs9 = alloca %TName_List_Message*, align 8
  %"$gasrem_4764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4765" = icmp ugt i64 1, %"$gasrem_4764"
  br i1 %"$gascmp_4765", label %"$out_of_gas_4766", label %"$have_gas_4767"

"$out_of_gas_4766":                               ; preds = %"$have_gas_4762"
  call void @_out_of_gas()
  br label %"$have_gas_4767"

"$have_gas_4767":                                 ; preds = %"$out_of_gas_4766", %"$have_gas_4762"
  %"$consume_4768" = sub i64 %"$gasrem_4764", 1
  store i64 %"$consume_4768", i64* @_gasrem, align 8
  %m10 = alloca i8*, align 8
  %"$gasrem_4769" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4770" = icmp ugt i64 1, %"$gasrem_4769"
  br i1 %"$gascmp_4770", label %"$out_of_gas_4771", label %"$have_gas_4772"

"$out_of_gas_4771":                               ; preds = %"$have_gas_4767"
  call void @_out_of_gas()
  br label %"$have_gas_4772"

"$have_gas_4772":                                 ; preds = %"$out_of_gas_4771", %"$have_gas_4767"
  %"$consume_4773" = sub i64 %"$gasrem_4769", 1
  store i64 %"$consume_4773", i64* @_gasrem, align 8
  %"$msgobj_4774_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4774_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4774_salloc_load", i64 265)
  %"$msgobj_4774_salloc" = bitcast i8* %"$msgobj_4774_salloc_salloc" to [265 x i8]*
  %"$msgobj_4774" = bitcast [265 x i8]* %"$msgobj_4774_salloc" to i8*
  store i8 6, i8* %"$msgobj_4774", align 1
  %"$msgobj_fname_4776" = getelementptr i8, i8* %"$msgobj_4774", i32 1
  %"$msgobj_fname_4777" = bitcast i8* %"$msgobj_fname_4776" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4775", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4777", align 8
  %"$msgobj_td_4778" = getelementptr i8, i8* %"$msgobj_4774", i32 17
  %"$msgobj_td_4779" = bitcast i8* %"$msgobj_td_4778" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4779", align 8
  %"$msgobj_v_4781" = getelementptr i8, i8* %"$msgobj_4774", i32 25
  %"$msgobj_v_4782" = bitcast i8* %"$msgobj_v_4781" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_4780", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_4782", align 8
  %"$msgobj_fname_4784" = getelementptr i8, i8* %"$msgobj_4774", i32 41
  %"$msgobj_fname_4785" = bitcast i8* %"$msgobj_fname_4784" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_4783", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_4785", align 8
  %"$msgobj_td_4786" = getelementptr i8, i8* %"$msgobj_4774", i32 57
  %"$msgobj_td_4787" = bitcast i8* %"$msgobj_td_4786" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_4787", align 8
  %"$msgobj_v_4788" = getelementptr i8, i8* %"$msgobj_4774", i32 65
  %"$msgobj_v_4789" = bitcast i8* %"$msgobj_v_4788" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_4789", align 1
  %"$msgobj_fname_4791" = getelementptr i8, i8* %"$msgobj_4774", i32 97
  %"$msgobj_fname_4792" = bitcast i8* %"$msgobj_fname_4791" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4790", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4792", align 8
  %"$msgobj_td_4793" = getelementptr i8, i8* %"$msgobj_4774", i32 113
  %"$msgobj_td_4794" = bitcast i8* %"$msgobj_td_4793" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4794", align 8
  %"$msgobj_v_4795" = getelementptr i8, i8* %"$msgobj_4774", i32 121
  %"$msgobj_v_4796" = bitcast i8* %"$msgobj_v_4795" to %String*
  store %String %label, %String* %"$msgobj_v_4796", align 8
  %"$msgobj_fname_4798" = getelementptr i8, i8* %"$msgobj_4774", i32 137
  %"$msgobj_fname_4799" = bitcast i8* %"$msgobj_fname_4798" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4797", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4799", align 8
  %"$msgobj_td_4800" = getelementptr i8, i8* %"$msgobj_4774", i32 153
  %"$msgobj_td_4801" = bitcast i8* %"$msgobj_td_4800" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4801", align 8
  %"$recordOwner_4802" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$msgobj_v_4803" = getelementptr i8, i8* %"$msgobj_4774", i32 161
  %"$msgobj_v_4804" = bitcast i8* %"$msgobj_v_4803" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4802", [20 x i8]* %"$msgobj_v_4804", align 1
  %"$msgobj_fname_4806" = getelementptr i8, i8* %"$msgobj_4774", i32 181
  %"$msgobj_fname_4807" = bitcast i8* %"$msgobj_fname_4806" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4805", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4807", align 8
  %"$msgobj_td_4808" = getelementptr i8, i8* %"$msgobj_4774", i32 197
  %"$msgobj_td_4809" = bitcast i8* %"$msgobj_td_4808" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_4809", align 8
  %"$msgobj_v_4810" = getelementptr i8, i8* %"$msgobj_4774", i32 205
  %"$msgobj_v_4811" = bitcast i8* %"$msgobj_v_4810" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4811", align 8
  %"$msgobj_fname_4813" = getelementptr i8, i8* %"$msgobj_4774", i32 221
  %"$msgobj_fname_4814" = bitcast i8* %"$msgobj_fname_4813" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4812", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4814", align 8
  %"$msgobj_td_4815" = getelementptr i8, i8* %"$msgobj_4774", i32 237
  %"$msgobj_td_4816" = bitcast i8* %"$msgobj_td_4815" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_4816", align 8
  %"$msgobj_v_4817" = getelementptr i8, i8* %"$msgobj_4774", i32 245
  %"$msgobj_v_4818" = bitcast i8* %"$msgobj_v_4817" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4818", align 1
  store i8* %"$msgobj_4774", i8** %m10, align 8, !dbg !453
  %"$gasrem_4820" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4821" = icmp ugt i64 1, %"$gasrem_4820"
  br i1 %"$gascmp_4821", label %"$out_of_gas_4822", label %"$have_gas_4823"

"$out_of_gas_4822":                               ; preds = %"$have_gas_4772"
  call void @_out_of_gas()
  br label %"$have_gas_4823"

"$have_gas_4823":                                 ; preds = %"$out_of_gas_4822", %"$have_gas_4772"
  %"$consume_4824" = sub i64 %"$gasrem_4820", 1
  store i64 %"$consume_4824", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_105" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4825" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4826" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4825", 0
  %"$ud-registry.oneMsg_envptr_4827" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4825", 1
  %"$m_4828" = load i8*, i8** %m10, align 8
  %"$ud-registry.oneMsg_call_4829" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4826"(i8* %"$ud-registry.oneMsg_envptr_4827", i8* %"$m_4828"), !dbg !454
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4829", %TName_List_Message** %"$ud-registry.oneMsg_105", align 8, !dbg !454
  %"$$ud-registry.oneMsg_105_4830" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_105", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_105_4830", %TName_List_Message** %msgs9, align 8, !dbg !454
  %"$msgs_4831" = load %TName_List_Message*, %TName_List_Message** %msgs9, align 8
  %"$$msgs_4831_4832" = bitcast %TName_List_Message* %"$msgs_4831" to i8*
  %"$_literal_cost_call_4833" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_4831_4832")
  %"$gasrem_4834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4835" = icmp ugt i64 %"$_literal_cost_call_4833", %"$gasrem_4834"
  br i1 %"$gascmp_4835", label %"$out_of_gas_4836", label %"$have_gas_4837"

"$out_of_gas_4836":                               ; preds = %"$have_gas_4823"
  call void @_out_of_gas()
  br label %"$have_gas_4837"

"$have_gas_4837":                                 ; preds = %"$out_of_gas_4836", %"$have_gas_4823"
  %"$consume_4838" = sub i64 %"$gasrem_4834", %"$_literal_cost_call_4833"
  store i64 %"$consume_4838", i64* @_gasrem, align 8
  %"$execptr_load_4839" = load i8*, i8** @_execptr, align 8
  %"$msgs_4840" = load %TName_List_Message*, %TName_List_Message** %msgs9, align 8
  call void @_send(i8* %"$execptr_load_4839", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_4840"), !dbg !455
  br label %"$matchsucc_4472"

"$empty_default_4476":                            ; preds = %"$have_gas_4470"
  br label %"$matchsucc_4472"

"$matchsucc_4472":                                ; preds = %"$have_gas_4837", %"$have_gas_4716", %"$empty_default_4476"
  ret void
}

define void @assign(i8* %0) !dbg !456 {
entry:
  %"$_amount_4842" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4843" = bitcast i8* %"$_amount_4842" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4843", align 8
  %"$_sender_4844" = getelementptr i8, i8* %0, i32 16
  %"$_sender_4845" = bitcast i8* %"$_sender_4844" to [20 x i8]*
  %"$parent_4846" = getelementptr i8, i8* %0, i32 36
  %"$parent_4847" = bitcast i8* %"$parent_4846" to [32 x i8]*
  %"$label_4848" = getelementptr i8, i8* %0, i32 68
  %"$label_4849" = bitcast i8* %"$label_4848" to %String*
  %label = load %String, %String* %"$label_4849", align 8
  %"$owner_4850" = getelementptr i8, i8* %0, i32 84
  %"$owner_4851" = bitcast i8* %"$owner_4850" to [20 x i8]*
  call void @"$assign_4365"(%Uint128 %_amount, [20 x i8]* %"$_sender_4845", [32 x i8]* %"$parent_4847", %String %label, [20 x i8]* %"$owner_4851"), !dbg !457
  ret void
}

define internal void @"$bestow_4852"(%Uint128 %_amount, [20 x i8]* %"$_sender_4853", %String %label, [20 x i8]* %"$owner_4854", [20 x i8]* %"$resolver_4855") !dbg !458 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4853", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_4854", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_4855", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_4856" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_4858" = call i8* @_fetch_field(i8* %"$execptr_load_4856", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_4857", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i32 1), !dbg !459
  %"$currentAdmins_4859" = bitcast i8* %"$currentAdmins_4858" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_4859", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_4860" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_4860_4861" = bitcast %TName_List_ByStr20* %"$currentAdmins_4860" to i8*
  %"$_literal_cost_call_4862" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$currentAdmins_4860_4861")
  %"$gasadd_4863" = add i64 %"$_literal_cost_call_4862", 0
  %"$gasrem_4864" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4865" = icmp ugt i64 %"$gasadd_4863", %"$gasrem_4864"
  br i1 %"$gascmp_4865", label %"$out_of_gas_4866", label %"$have_gas_4867"

"$out_of_gas_4866":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4867"

"$have_gas_4867":                                 ; preds = %"$out_of_gas_4866", %entry
  %"$consume_4868" = sub i64 %"$gasrem_4864", %"$gasadd_4863"
  store i64 %"$consume_4868", i64* @_gasrem, align 8
  %"$gasrem_4869" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4870" = icmp ugt i64 1, %"$gasrem_4869"
  br i1 %"$gascmp_4870", label %"$out_of_gas_4871", label %"$have_gas_4872"

"$out_of_gas_4871":                               ; preds = %"$have_gas_4867"
  call void @_out_of_gas()
  br label %"$have_gas_4872"

"$have_gas_4872":                                 ; preds = %"$out_of_gas_4871", %"$have_gas_4867"
  %"$consume_4873" = sub i64 %"$gasrem_4869", 1
  store i64 %"$consume_4873", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_4874" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4875" = icmp ugt i64 1, %"$gasrem_4874"
  br i1 %"$gascmp_4875", label %"$out_of_gas_4876", label %"$have_gas_4877"

"$out_of_gas_4876":                               ; preds = %"$have_gas_4872"
  call void @_out_of_gas()
  br label %"$have_gas_4877"

"$have_gas_4877":                                 ; preds = %"$out_of_gas_4876", %"$have_gas_4872"
  %"$consume_4878" = sub i64 %"$gasrem_4874", 1
  store i64 %"$consume_4878", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_129" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_4879" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_4880" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4879", 0
  %"$ud-registry.parentLabelToNode_envptr_4881" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4879", 1
  %"$ud-registry.parentLabelToNode_rootNode_4882" = alloca [32 x i8], align 1
  %"$rootNode_4883" = load [32 x i8], [32 x i8]* @rootNode, align 1
  store [32 x i8] %"$rootNode_4883", [32 x i8]* %"$ud-registry.parentLabelToNode_rootNode_4882", align 1
  %"$ud-registry.parentLabelToNode_call_4884" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_4880"(i8* %"$ud-registry.parentLabelToNode_envptr_4881", [32 x i8]* %"$ud-registry.parentLabelToNode_rootNode_4882"), !dbg !460
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_4884", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_129", align 8, !dbg !460
  %"$ud-registry.parentLabelToNode_130" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_129_4885" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_129", align 8
  %"$$ud-registry.parentLabelToNode_129_fptr_4886" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_129_4885", 0
  %"$$ud-registry.parentLabelToNode_129_envptr_4887" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_129_4885", 1
  %"$$ud-registry.parentLabelToNode_129_retalloca_4888" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_129_fptr_4886"(i8* %"$$ud-registry.parentLabelToNode_129_envptr_4887", [32 x i8]* %"$$ud-registry.parentLabelToNode_129_retalloca_4888", %String %label), !dbg !460
  %"$$ud-registry.parentLabelToNode_129_ret_4889" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_129_retalloca_4888", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_129_ret_4889", [32 x i8]* %"$ud-registry.parentLabelToNode_130", align 1, !dbg !460
  %"$$ud-registry.parentLabelToNode_130_4890" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_130", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_130_4890", [32 x i8]* %node, align 1, !dbg !460
  %recordExists = alloca %TName_Bool*, align 8
  %"$indices_buf_4891_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4891_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4891_salloc_load", i64 32)
  %"$indices_buf_4891_salloc" = bitcast i8* %"$indices_buf_4891_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4891" = bitcast [32 x i8]* %"$indices_buf_4891_salloc" to i8*
  %"$node_4892" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4893" = getelementptr i8, i8* %"$indices_buf_4891", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4893" to [32 x i8]*
  store [32 x i8] %"$node_4892", [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4894" = load i8*, i8** @_execptr, align 8
  %"$recordExists_4896" = call i8* @_fetch_field(i8* %"$execptr_load_4894", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4895", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4891", i32 0), !dbg !461
  %"$recordExists_4897" = bitcast i8* %"$recordExists_4896" to %TName_Bool*
  store %TName_Bool* %"$recordExists_4897", %TName_Bool** %recordExists, align 8
  %"$recordExists_4898" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$$recordExists_4898_4899" = bitcast %TName_Bool* %"$recordExists_4898" to i8*
  %"$_literal_cost_call_4900" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", i8* %"$$recordExists_4898_4899")
  %"$gasadd_4901" = add i64 %"$_literal_cost_call_4900", 0
  %"$gasadd_4902" = add i64 %"$gasadd_4901", 1
  %"$gasrem_4903" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4904" = icmp ugt i64 %"$gasadd_4902", %"$gasrem_4903"
  br i1 %"$gascmp_4904", label %"$out_of_gas_4905", label %"$have_gas_4906"

"$out_of_gas_4905":                               ; preds = %"$have_gas_4877"
  call void @_out_of_gas()
  br label %"$have_gas_4906"

"$have_gas_4906":                                 ; preds = %"$out_of_gas_4905", %"$have_gas_4877"
  %"$consume_4907" = sub i64 %"$gasrem_4903", %"$gasadd_4902"
  store i64 %"$consume_4907", i64* @_gasrem, align 8
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_4908_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4908_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4908_salloc_load", i64 32)
  %"$indices_buf_4908_salloc" = bitcast i8* %"$indices_buf_4908_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4908" = bitcast [32 x i8]* %"$indices_buf_4908_salloc" to i8*
  %"$node_4909" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4910" = getelementptr i8, i8* %"$indices_buf_4908", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4910" to [32 x i8]*
  store [32 x i8] %"$node_4909", [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4911" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_4913" = call i8* @_fetch_field(i8* %"$execptr_load_4911", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4912", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4908", i32 1), !dbg !462
  %"$maybeRecord_4914" = bitcast i8* %"$maybeRecord_4913" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4914", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_4915" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_4915_4916" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4915" to i8*
  %"$_literal_cost_call_4917" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_4915_4916")
  %"$gasadd_4918" = add i64 %"$_literal_cost_call_4917", 0
  %"$gasadd_4919" = add i64 %"$gasadd_4918", 1
  %"$gasrem_4920" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4921" = icmp ugt i64 %"$gasadd_4919", %"$gasrem_4920"
  br i1 %"$gascmp_4921", label %"$out_of_gas_4922", label %"$have_gas_4923"

"$out_of_gas_4922":                               ; preds = %"$have_gas_4906"
  call void @_out_of_gas()
  br label %"$have_gas_4923"

"$have_gas_4923":                                 ; preds = %"$out_of_gas_4922", %"$have_gas_4906"
  %"$consume_4924" = sub i64 %"$gasrem_4920", %"$gasadd_4919"
  store i64 %"$consume_4924", i64* @_gasrem, align 8
  %currentRegistrar = alloca [20 x i8], align 1
  %"$execptr_load_4925" = load i8*, i8** @_execptr, align 8
  %"$currentRegistrar_4927" = call i8* @_fetch_field(i8* %"$execptr_load_4925", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_4926", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i32 0, i8* null, i32 1), !dbg !463
  %"$currentRegistrar_4928" = bitcast i8* %"$currentRegistrar_4927" to [20 x i8]*
  %"$currentRegistrar_4929" = load [20 x i8], [20 x i8]* %"$currentRegistrar_4928", align 1
  store [20 x i8] %"$currentRegistrar_4929", [20 x i8]* %currentRegistrar, align 1
  %"$_literal_cost_currentRegistrar_4930" = alloca [20 x i8], align 1
  %"$currentRegistrar_4931" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_4931", [20 x i8]* %"$_literal_cost_currentRegistrar_4930", align 1
  %"$$_literal_cost_currentRegistrar_4930_4932" = bitcast [20 x i8]* %"$_literal_cost_currentRegistrar_4930" to i8*
  %"$_literal_cost_call_4933" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i8* %"$$_literal_cost_currentRegistrar_4930_4932")
  %"$gasadd_4934" = add i64 %"$_literal_cost_call_4933", 0
  %"$gasrem_4935" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4936" = icmp ugt i64 %"$gasadd_4934", %"$gasrem_4935"
  br i1 %"$gascmp_4936", label %"$out_of_gas_4937", label %"$have_gas_4938"

"$out_of_gas_4937":                               ; preds = %"$have_gas_4923"
  call void @_out_of_gas()
  br label %"$have_gas_4938"

"$have_gas_4938":                                 ; preds = %"$out_of_gas_4937", %"$have_gas_4923"
  %"$consume_4939" = sub i64 %"$gasrem_4935", %"$gasadd_4934"
  store i64 %"$consume_4939", i64* @_gasrem, align 8
  %"$gasrem_4940" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4941" = icmp ugt i64 1, %"$gasrem_4940"
  br i1 %"$gascmp_4941", label %"$out_of_gas_4942", label %"$have_gas_4943"

"$out_of_gas_4942":                               ; preds = %"$have_gas_4938"
  call void @_out_of_gas()
  br label %"$have_gas_4943"

"$have_gas_4943":                                 ; preds = %"$out_of_gas_4942", %"$have_gas_4938"
  %"$consume_4944" = sub i64 %"$gasrem_4940", 1
  store i64 %"$consume_4944", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_4945" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4946" = icmp ugt i64 1, %"$gasrem_4945"
  br i1 %"$gascmp_4946", label %"$out_of_gas_4947", label %"$have_gas_4948"

"$out_of_gas_4947":                               ; preds = %"$have_gas_4943"
  call void @_out_of_gas()
  br label %"$have_gas_4948"

"$have_gas_4948":                                 ; preds = %"$out_of_gas_4947", %"$have_gas_4943"
  %"$consume_4949" = sub i64 %"$gasrem_4945", 1
  store i64 %"$consume_4949", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_4950" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4951" = icmp ugt i64 1, %"$gasrem_4950"
  br i1 %"$gascmp_4951", label %"$out_of_gas_4952", label %"$have_gas_4953"

"$out_of_gas_4952":                               ; preds = %"$have_gas_4948"
  call void @_out_of_gas()
  br label %"$have_gas_4953"

"$have_gas_4953":                                 ; preds = %"$out_of_gas_4952", %"$have_gas_4948"
  %"$consume_4954" = sub i64 %"$gasrem_4950", 1
  store i64 %"$consume_4954", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_118" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_4955" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_4956" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_4955", 0
  %"$ud-registry.listByStr20Contains_envptr_4957" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_4955", 1
  %"$currentAdmins_4958" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_4959" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_4956"(i8* %"$ud-registry.listByStr20Contains_envptr_4957", %TName_List_ByStr20* %"$currentAdmins_4958"), !dbg !464
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_4959", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_118", align 8, !dbg !464
  %"$ud-registry.listByStr20Contains_119" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_118_4960" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_118", align 8
  %"$$ud-registry.listByStr20Contains_118_fptr_4961" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_118_4960", 0
  %"$$ud-registry.listByStr20Contains_118_envptr_4962" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_118_4960", 1
  %"$$ud-registry.listByStr20Contains_118__sender_4963" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_118__sender_4963", align 1
  %"$$ud-registry.listByStr20Contains_118_call_4964" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_118_fptr_4961"(i8* %"$$ud-registry.listByStr20Contains_118_envptr_4962", [20 x i8]* %"$$ud-registry.listByStr20Contains_118__sender_4963"), !dbg !464
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_118_call_4964", %TName_Bool** %"$ud-registry.listByStr20Contains_119", align 8, !dbg !464
  %"$$ud-registry.listByStr20Contains_119_4965" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_119", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_119_4965", %TName_Bool** %isSenderAdmin, align 8, !dbg !464
  %"$gasrem_4966" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4967" = icmp ugt i64 1, %"$gasrem_4966"
  br i1 %"$gascmp_4967", label %"$out_of_gas_4968", label %"$have_gas_4969"

"$out_of_gas_4968":                               ; preds = %"$have_gas_4953"
  call void @_out_of_gas()
  br label %"$have_gas_4969"

"$have_gas_4969":                                 ; preds = %"$out_of_gas_4968", %"$have_gas_4953"
  %"$consume_4970" = sub i64 %"$gasrem_4966", 1
  store i64 %"$consume_4970", i64* @_gasrem, align 8
  %isSenderRegistrar = alloca %TName_Bool*, align 8
  %"$execptr_load_4971" = load i8*, i8** @_execptr, align 8
  %"$eq_currentRegistrar_4972" = alloca [20 x i8], align 1
  %"$currentRegistrar_4973" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_4973", [20 x i8]* %"$eq_currentRegistrar_4972", align 1
  %"$$eq_currentRegistrar_4972_4974" = bitcast [20 x i8]* %"$eq_currentRegistrar_4972" to i8*
  %"$eq__sender_4975" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_4975", align 1
  %"$$eq__sender_4975_4976" = bitcast [20 x i8]* %"$eq__sender_4975" to i8*
  %"$eq_call_4977" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_4971", i32 20, i8* %"$$eq_currentRegistrar_4972_4974", i8* %"$$eq__sender_4975_4976")
  store %TName_Bool* %"$eq_call_4977", %TName_Bool** %isSenderRegistrar, align 8, !dbg !465
  %"$gasrem_4978" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4979" = icmp ugt i64 1, %"$gasrem_4978"
  br i1 %"$gascmp_4979", label %"$out_of_gas_4980", label %"$have_gas_4981"

"$out_of_gas_4980":                               ; preds = %"$have_gas_4969"
  call void @_out_of_gas()
  br label %"$have_gas_4981"

"$have_gas_4981":                                 ; preds = %"$out_of_gas_4980", %"$have_gas_4969"
  %"$consume_4982" = sub i64 %"$gasrem_4978", 1
  store i64 %"$consume_4982", i64* @_gasrem, align 8
  %isOkSender = alloca %TName_Bool*, align 8
  %"$gasrem_4983" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4984" = icmp ugt i64 1, %"$gasrem_4983"
  br i1 %"$gascmp_4984", label %"$out_of_gas_4985", label %"$have_gas_4986"

"$out_of_gas_4985":                               ; preds = %"$have_gas_4981"
  call void @_out_of_gas()
  br label %"$have_gas_4986"

"$have_gas_4986":                                 ; preds = %"$out_of_gas_4985", %"$have_gas_4981"
  %"$consume_4987" = sub i64 %"$gasrem_4983", 1
  store i64 %"$consume_4987", i64* @_gasrem, align 8
  %"$BoolUtils.orb_120" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_4988" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_4989" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_4988", 0
  %"$BoolUtils.orb_envptr_4990" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_4988", 1
  %"$isSenderRegistrar_4991" = load %TName_Bool*, %TName_Bool** %isSenderRegistrar, align 8
  %"$BoolUtils.orb_call_4992" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_4989"(i8* %"$BoolUtils.orb_envptr_4990", %TName_Bool* %"$isSenderRegistrar_4991"), !dbg !466
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_4992", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_120", align 8, !dbg !466
  %"$BoolUtils.orb_121" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_120_4993" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_120", align 8
  %"$$BoolUtils.orb_120_fptr_4994" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_120_4993", 0
  %"$$BoolUtils.orb_120_envptr_4995" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_120_4993", 1
  %"$isSenderAdmin_4996" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$$BoolUtils.orb_120_call_4997" = call %TName_Bool* %"$$BoolUtils.orb_120_fptr_4994"(i8* %"$$BoolUtils.orb_120_envptr_4995", %TName_Bool* %"$isSenderAdmin_4996"), !dbg !466
  store %TName_Bool* %"$$BoolUtils.orb_120_call_4997", %TName_Bool** %"$BoolUtils.orb_121", align 8, !dbg !466
  %"$$BoolUtils.orb_121_4998" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_121", align 8
  store %TName_Bool* %"$$BoolUtils.orb_121_4998", %TName_Bool** %isOkSender, align 8, !dbg !466
  %"$gasrem_4999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5000" = icmp ugt i64 1, %"$gasrem_4999"
  br i1 %"$gascmp_5000", label %"$out_of_gas_5001", label %"$have_gas_5002"

"$out_of_gas_5001":                               ; preds = %"$have_gas_4986"
  call void @_out_of_gas()
  br label %"$have_gas_5002"

"$have_gas_5002":                                 ; preds = %"$out_of_gas_5001", %"$have_gas_4986"
  %"$consume_5003" = sub i64 %"$gasrem_4999", 1
  store i64 %"$consume_5003", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_5004" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5005" = icmp ugt i64 1, %"$gasrem_5004"
  br i1 %"$gascmp_5005", label %"$out_of_gas_5006", label %"$have_gas_5007"

"$out_of_gas_5006":                               ; preds = %"$have_gas_5002"
  call void @_out_of_gas()
  br label %"$have_gas_5007"

"$have_gas_5007":                                 ; preds = %"$out_of_gas_5006", %"$have_gas_5002"
  %"$consume_5008" = sub i64 %"$gasrem_5004", 1
  store i64 %"$consume_5008", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_122" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_5009" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_5010" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5009", 0
  %"$ud-registry.recordMemberOwner_envptr_5011" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5009", 1
  %"$maybeRecord_5012" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_5013" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_5010"(i8* %"$ud-registry.recordMemberOwner_envptr_5011", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5013", %TName_Option_ud-registry.Record* %"$maybeRecord_5012"), !dbg !467
  %"$ud-registry.recordMemberOwner_ret_5014" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5013", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_5014", [20 x i8]* %"$ud-registry.recordMemberOwner_122", align 1, !dbg !467
  %"$$ud-registry.recordMemberOwner_122_5015" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_122", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_122_5015", [20 x i8]* %recordOwner, align 1, !dbg !467
  %"$gasrem_5016" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5017" = icmp ugt i64 1, %"$gasrem_5016"
  br i1 %"$gascmp_5017", label %"$out_of_gas_5018", label %"$have_gas_5019"

"$out_of_gas_5018":                               ; preds = %"$have_gas_5007"
  call void @_out_of_gas()
  br label %"$have_gas_5019"

"$have_gas_5019":                                 ; preds = %"$out_of_gas_5018", %"$have_gas_5007"
  %"$consume_5020" = sub i64 %"$gasrem_5016", 1
  store i64 %"$consume_5020", i64* @_gasrem, align 8
  %recordIsUnowned = alloca %TName_Bool*, align 8
  %"$execptr_load_5021" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5022" = alloca [20 x i8], align 1
  %"$recordOwner_5023" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5023", [20 x i8]* %"$eq_recordOwner_5022", align 1
  %"$$eq_recordOwner_5022_5024" = bitcast [20 x i8]* %"$eq_recordOwner_5022" to i8*
  %"$eq_ud-registry.zeroByStr20_5025" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5026" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5026", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5025", align 1
  %"$$eq_ud-registry.zeroByStr20_5025_5027" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5025" to i8*
  %"$eq_call_5028" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5021", i32 20, i8* %"$$eq_recordOwner_5022_5024", i8* %"$$eq_ud-registry.zeroByStr20_5025_5027")
  store %TName_Bool* %"$eq_call_5028", %TName_Bool** %recordIsUnowned, align 8, !dbg !468
  %"$gasrem_5029" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5030" = icmp ugt i64 1, %"$gasrem_5029"
  br i1 %"$gascmp_5030", label %"$out_of_gas_5031", label %"$have_gas_5032"

"$out_of_gas_5031":                               ; preds = %"$have_gas_5019"
  call void @_out_of_gas()
  br label %"$have_gas_5032"

"$have_gas_5032":                                 ; preds = %"$out_of_gas_5031", %"$have_gas_5019"
  %"$consume_5033" = sub i64 %"$gasrem_5029", 1
  store i64 %"$consume_5033", i64* @_gasrem, align 8
  %recordIsOwnedByRegistrar = alloca %TName_Bool*, align 8
  %"$execptr_load_5034" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5035" = alloca [20 x i8], align 1
  %"$recordOwner_5036" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5036", [20 x i8]* %"$eq_recordOwner_5035", align 1
  %"$$eq_recordOwner_5035_5037" = bitcast [20 x i8]* %"$eq_recordOwner_5035" to i8*
  %"$eq_currentRegistrar_5038" = alloca [20 x i8], align 1
  %"$currentRegistrar_5039" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5039", [20 x i8]* %"$eq_currentRegistrar_5038", align 1
  %"$$eq_currentRegistrar_5038_5040" = bitcast [20 x i8]* %"$eq_currentRegistrar_5038" to i8*
  %"$eq_call_5041" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5034", i32 20, i8* %"$$eq_recordOwner_5035_5037", i8* %"$$eq_currentRegistrar_5038_5040")
  store %TName_Bool* %"$eq_call_5041", %TName_Bool** %recordIsOwnedByRegistrar, align 8, !dbg !469
  %"$gasrem_5042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5043" = icmp ugt i64 1, %"$gasrem_5042"
  br i1 %"$gascmp_5043", label %"$out_of_gas_5044", label %"$have_gas_5045"

"$out_of_gas_5044":                               ; preds = %"$have_gas_5032"
  call void @_out_of_gas()
  br label %"$have_gas_5045"

"$have_gas_5045":                                 ; preds = %"$out_of_gas_5044", %"$have_gas_5032"
  %"$consume_5046" = sub i64 %"$gasrem_5042", 1
  store i64 %"$consume_5046", i64* @_gasrem, align 8
  %isRegistrarSenderAndOwned = alloca %TName_Bool*, align 8
  %"$gasrem_5047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5048" = icmp ugt i64 1, %"$gasrem_5047"
  br i1 %"$gascmp_5048", label %"$out_of_gas_5049", label %"$have_gas_5050"

"$out_of_gas_5049":                               ; preds = %"$have_gas_5045"
  call void @_out_of_gas()
  br label %"$have_gas_5050"

"$have_gas_5050":                                 ; preds = %"$out_of_gas_5049", %"$have_gas_5045"
  %"$consume_5051" = sub i64 %"$gasrem_5047", 1
  store i64 %"$consume_5051", i64* @_gasrem, align 8
  %"$BoolUtils.andb_123" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5052" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5053" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5052", 0
  %"$BoolUtils.andb_envptr_5054" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5052", 1
  %"$recordIsOwnedByRegistrar_5055" = load %TName_Bool*, %TName_Bool** %recordIsOwnedByRegistrar, align 8
  %"$BoolUtils.andb_call_5056" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5053"(i8* %"$BoolUtils.andb_envptr_5054", %TName_Bool* %"$recordIsOwnedByRegistrar_5055"), !dbg !470
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5056", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_123", align 8, !dbg !470
  %"$BoolUtils.andb_124" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_123_5057" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_123", align 8
  %"$$BoolUtils.andb_123_fptr_5058" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_123_5057", 0
  %"$$BoolUtils.andb_123_envptr_5059" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_123_5057", 1
  %"$isSenderRegistrar_5060" = load %TName_Bool*, %TName_Bool** %isSenderRegistrar, align 8
  %"$$BoolUtils.andb_123_call_5061" = call %TName_Bool* %"$$BoolUtils.andb_123_fptr_5058"(i8* %"$$BoolUtils.andb_123_envptr_5059", %TName_Bool* %"$isSenderRegistrar_5060"), !dbg !470
  store %TName_Bool* %"$$BoolUtils.andb_123_call_5061", %TName_Bool** %"$BoolUtils.andb_124", align 8, !dbg !470
  %"$$BoolUtils.andb_124_5062" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_124", align 8
  store %TName_Bool* %"$$BoolUtils.andb_124_5062", %TName_Bool** %isRegistrarSenderAndOwned, align 8, !dbg !470
  %"$gasrem_5063" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5064" = icmp ugt i64 1, %"$gasrem_5063"
  br i1 %"$gascmp_5064", label %"$out_of_gas_5065", label %"$have_gas_5066"

"$out_of_gas_5065":                               ; preds = %"$have_gas_5050"
  call void @_out_of_gas()
  br label %"$have_gas_5066"

"$have_gas_5066":                                 ; preds = %"$out_of_gas_5065", %"$have_gas_5050"
  %"$consume_5067" = sub i64 %"$gasrem_5063", 1
  store i64 %"$consume_5067", i64* @_gasrem, align 8
  %isOkRecordOwner = alloca %TName_Bool*, align 8
  %"$gasrem_5068" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5069" = icmp ugt i64 1, %"$gasrem_5068"
  br i1 %"$gascmp_5069", label %"$out_of_gas_5070", label %"$have_gas_5071"

"$out_of_gas_5070":                               ; preds = %"$have_gas_5066"
  call void @_out_of_gas()
  br label %"$have_gas_5071"

"$have_gas_5071":                                 ; preds = %"$out_of_gas_5070", %"$have_gas_5066"
  %"$consume_5072" = sub i64 %"$gasrem_5068", 1
  store i64 %"$consume_5072", i64* @_gasrem, align 8
  %"$BoolUtils.orb_125" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_5073" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_5074" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5073", 0
  %"$BoolUtils.orb_envptr_5075" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5073", 1
  %"$recordIsUnowned_5076" = load %TName_Bool*, %TName_Bool** %recordIsUnowned, align 8
  %"$BoolUtils.orb_call_5077" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_5074"(i8* %"$BoolUtils.orb_envptr_5075", %TName_Bool* %"$recordIsUnowned_5076"), !dbg !471
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_5077", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_125", align 8, !dbg !471
  %"$BoolUtils.orb_126" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_125_5078" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_125", align 8
  %"$$BoolUtils.orb_125_fptr_5079" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_125_5078", 0
  %"$$BoolUtils.orb_125_envptr_5080" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_125_5078", 1
  %"$isRegistrarSenderAndOwned_5081" = load %TName_Bool*, %TName_Bool** %isRegistrarSenderAndOwned, align 8
  %"$$BoolUtils.orb_125_call_5082" = call %TName_Bool* %"$$BoolUtils.orb_125_fptr_5079"(i8* %"$$BoolUtils.orb_125_envptr_5080", %TName_Bool* %"$isRegistrarSenderAndOwned_5081"), !dbg !471
  store %TName_Bool* %"$$BoolUtils.orb_125_call_5082", %TName_Bool** %"$BoolUtils.orb_126", align 8, !dbg !471
  %"$$BoolUtils.orb_126_5083" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_126", align 8
  store %TName_Bool* %"$$BoolUtils.orb_126_5083", %TName_Bool** %isOkRecordOwner, align 8, !dbg !471
  %"$gasrem_5084" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5085" = icmp ugt i64 1, %"$gasrem_5084"
  br i1 %"$gascmp_5085", label %"$out_of_gas_5086", label %"$have_gas_5087"

"$out_of_gas_5086":                               ; preds = %"$have_gas_5071"
  call void @_out_of_gas()
  br label %"$have_gas_5087"

"$have_gas_5087":                                 ; preds = %"$out_of_gas_5086", %"$have_gas_5071"
  %"$consume_5088" = sub i64 %"$gasrem_5084", 1
  store i64 %"$consume_5088", i64* @_gasrem, align 8
  %"$BoolUtils.andb_127" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5089" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5090" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5089", 0
  %"$BoolUtils.andb_envptr_5091" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5089", 1
  %"$isOkSender_5092" = load %TName_Bool*, %TName_Bool** %isOkSender, align 8
  %"$BoolUtils.andb_call_5093" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5090"(i8* %"$BoolUtils.andb_envptr_5091", %TName_Bool* %"$isOkSender_5092"), !dbg !472
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5093", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127", align 8, !dbg !472
  %"$BoolUtils.andb_128" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_127_5094" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127", align 8
  %"$$BoolUtils.andb_127_fptr_5095" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_5094", 0
  %"$$BoolUtils.andb_127_envptr_5096" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_5094", 1
  %"$isOkRecordOwner_5097" = load %TName_Bool*, %TName_Bool** %isOkRecordOwner, align 8
  %"$$BoolUtils.andb_127_call_5098" = call %TName_Bool* %"$$BoolUtils.andb_127_fptr_5095"(i8* %"$$BoolUtils.andb_127_envptr_5096", %TName_Bool* %"$isOkRecordOwner_5097"), !dbg !472
  store %TName_Bool* %"$$BoolUtils.andb_127_call_5098", %TName_Bool** %"$BoolUtils.andb_128", align 8, !dbg !472
  %"$$BoolUtils.andb_128_5099" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_128", align 8
  store %TName_Bool* %"$$BoolUtils.andb_128_5099", %TName_Bool** %isOk, align 8, !dbg !472
  %"$gasrem_5100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5101" = icmp ugt i64 2, %"$gasrem_5100"
  br i1 %"$gascmp_5101", label %"$out_of_gas_5102", label %"$have_gas_5103"

"$out_of_gas_5102":                               ; preds = %"$have_gas_5087"
  call void @_out_of_gas()
  br label %"$have_gas_5103"

"$have_gas_5103":                                 ; preds = %"$out_of_gas_5102", %"$have_gas_5087"
  %"$consume_5104" = sub i64 %"$gasrem_5100", 2
  store i64 %"$consume_5104", i64* @_gasrem, align 8
  %"$isOk_5106" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5107" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5106", i32 0, i32 0
  %"$isOk_tag_5108" = load i8, i8* %"$isOk_tag_5107", align 1
  switch i8 %"$isOk_tag_5108", label %"$empty_default_5109" [
    i8 0, label %"$True_5110"
    i8 1, label %"$False_5223"
  ], !dbg !473

"$True_5110":                                     ; preds = %"$have_gas_5103"
  %"$isOk_5111" = bitcast %TName_Bool* %"$isOk_5106" to %CName_True*
  %"$gasrem_5112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5113" = icmp ugt i64 2, %"$gasrem_5112"
  br i1 %"$gascmp_5113", label %"$out_of_gas_5114", label %"$have_gas_5115"

"$out_of_gas_5114":                               ; preds = %"$True_5110"
  call void @_out_of_gas()
  br label %"$have_gas_5115"

"$have_gas_5115":                                 ; preds = %"$out_of_gas_5114", %"$True_5110"
  %"$consume_5116" = sub i64 %"$gasrem_5112", 2
  store i64 %"$consume_5116", i64* @_gasrem, align 8
  %"$recordExists_5118" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$recordExists_tag_5119" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$recordExists_5118", i32 0, i32 0
  %"$recordExists_tag_5120" = load i8, i8* %"$recordExists_tag_5119", align 1
  switch i8 %"$recordExists_tag_5120", label %"$default_5121" [
    i8 1, label %"$False_5122"
  ], !dbg !474

"$False_5122":                                    ; preds = %"$have_gas_5115"
  %"$recordExists_5123" = bitcast %TName_Bool* %"$recordExists_5118" to %CName_False*
  %"$gasrem_5124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5125" = icmp ugt i64 1, %"$gasrem_5124"
  br i1 %"$gascmp_5125", label %"$out_of_gas_5126", label %"$have_gas_5127"

"$out_of_gas_5126":                               ; preds = %"$False_5122"
  call void @_out_of_gas()
  br label %"$have_gas_5127"

"$have_gas_5127":                                 ; preds = %"$out_of_gas_5126", %"$False_5122"
  %"$consume_5128" = sub i64 %"$gasrem_5124", 1
  store i64 %"$consume_5128", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5130" = icmp ugt i64 1, %"$gasrem_5129"
  br i1 %"$gascmp_5130", label %"$out_of_gas_5131", label %"$have_gas_5132"

"$out_of_gas_5131":                               ; preds = %"$have_gas_5127"
  call void @_out_of_gas()
  br label %"$have_gas_5132"

"$have_gas_5132":                                 ; preds = %"$out_of_gas_5131", %"$have_gas_5127"
  %"$consume_5133" = sub i64 %"$gasrem_5129", 1
  store i64 %"$consume_5133", i64* @_gasrem, align 8
  %"$ud-registry.eNewDomain_115" = alloca { i8* (i8*, %String)*, i8* }, align 8
  %"$ud-registry.eNewDomain_5134" = load { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain, align 8
  %"$ud-registry.eNewDomain_fptr_5135" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_5134", 0
  %"$ud-registry.eNewDomain_envptr_5136" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_5134", 1
  %"$ud-registry.eNewDomain_rootNode_5137" = alloca [32 x i8], align 1
  %"$rootNode_5138" = load [32 x i8], [32 x i8]* @rootNode, align 1
  store [32 x i8] %"$rootNode_5138", [32 x i8]* %"$ud-registry.eNewDomain_rootNode_5137", align 1
  %"$ud-registry.eNewDomain_call_5139" = call { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_fptr_5135"(i8* %"$ud-registry.eNewDomain_envptr_5136", [32 x i8]* %"$ud-registry.eNewDomain_rootNode_5137"), !dbg !477
  store { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_call_5139", { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_115", align 8, !dbg !477
  %"$ud-registry.eNewDomain_116" = alloca i8*, align 8
  %"$$ud-registry.eNewDomain_115_5140" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_115", align 8
  %"$$ud-registry.eNewDomain_115_fptr_5141" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_115_5140", 0
  %"$$ud-registry.eNewDomain_115_envptr_5142" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_115_5140", 1
  %"$$ud-registry.eNewDomain_115_call_5143" = call i8* %"$$ud-registry.eNewDomain_115_fptr_5141"(i8* %"$$ud-registry.eNewDomain_115_envptr_5142", %String %label), !dbg !477
  store i8* %"$$ud-registry.eNewDomain_115_call_5143", i8** %"$ud-registry.eNewDomain_116", align 8, !dbg !477
  %"$$ud-registry.eNewDomain_116_5144" = load i8*, i8** %"$ud-registry.eNewDomain_116", align 8
  store i8* %"$$ud-registry.eNewDomain_116_5144", i8** %e, align 8, !dbg !477
  %"$e_5145" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5147" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5145")
  %"$gasrem_5148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5149" = icmp ugt i64 %"$_literal_cost_call_5147", %"$gasrem_5148"
  br i1 %"$gascmp_5149", label %"$out_of_gas_5150", label %"$have_gas_5151"

"$out_of_gas_5150":                               ; preds = %"$have_gas_5132"
  call void @_out_of_gas()
  br label %"$have_gas_5151"

"$have_gas_5151":                                 ; preds = %"$out_of_gas_5150", %"$have_gas_5132"
  %"$consume_5152" = sub i64 %"$gasrem_5148", %"$_literal_cost_call_5147"
  store i64 %"$consume_5152", i64* @_gasrem, align 8
  %"$execptr_load_5153" = load i8*, i8** @_execptr, align 8
  %"$e_5154" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5153", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5154"), !dbg !480
  br label %"$matchsucc_5117"

"$default_5121":                                  ; preds = %"$have_gas_5115"
  br label %"$joinp_5"

"$joinp_5":                                       ; preds = %"$default_5121"
  br label %"$matchsucc_5117"

"$matchsucc_5117":                                ; preds = %"$have_gas_5151", %"$joinp_5"
  %"$gasrem_5155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5156" = icmp ugt i64 1, %"$gasrem_5155"
  br i1 %"$gascmp_5156", label %"$out_of_gas_5157", label %"$have_gas_5158"

"$out_of_gas_5157":                               ; preds = %"$matchsucc_5117"
  call void @_out_of_gas()
  br label %"$have_gas_5158"

"$have_gas_5158":                                 ; preds = %"$out_of_gas_5157", %"$matchsucc_5117"
  %"$consume_5159" = sub i64 %"$gasrem_5155", 1
  store i64 %"$consume_5159", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_5160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5161" = icmp ugt i64 1, %"$gasrem_5160"
  br i1 %"$gascmp_5161", label %"$out_of_gas_5162", label %"$have_gas_5163"

"$out_of_gas_5162":                               ; preds = %"$have_gas_5158"
  call void @_out_of_gas()
  br label %"$have_gas_5163"

"$have_gas_5163":                                 ; preds = %"$out_of_gas_5162", %"$have_gas_5158"
  %"$consume_5164" = sub i64 %"$gasrem_5160", 1
  store i64 %"$consume_5164", i64* @_gasrem, align 8
  %"$adtval_5165_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_5165_salloc" = call i8* @_salloc(i8* %"$adtval_5165_load", i64 41)
  %"$adtval_5165" = bitcast i8* %"$adtval_5165_salloc" to %CName_ud-registry.Record*
  %"$adtgep_5166" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5165", i32 0, i32 0
  store i8 0, i8* %"$adtgep_5166", align 1
  %"$adtgep_5167" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5165", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_5167", align 1
  %"$adtgep_5168" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5165", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_5168", align 1
  %"$adtptr_5169" = bitcast %CName_ud-registry.Record* %"$adtval_5165" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_5169", %TName_ud-registry.Record** %newRecord, align 8, !dbg !481
  %"$newRecord_5170" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_5170_5171" = bitcast %TName_ud-registry.Record* %"$newRecord_5170" to i8*
  %"$_literal_cost_call_5172" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_5170_5171")
  %"$gasadd_5173" = add i64 %"$_literal_cost_call_5172", 1
  %"$gasrem_5174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5175" = icmp ugt i64 %"$gasadd_5173", %"$gasrem_5174"
  br i1 %"$gascmp_5175", label %"$out_of_gas_5176", label %"$have_gas_5177"

"$out_of_gas_5176":                               ; preds = %"$have_gas_5163"
  call void @_out_of_gas()
  br label %"$have_gas_5177"

"$have_gas_5177":                                 ; preds = %"$out_of_gas_5176", %"$have_gas_5163"
  %"$consume_5178" = sub i64 %"$gasrem_5174", %"$gasadd_5173"
  store i64 %"$consume_5178", i64* @_gasrem, align 8
  %"$indices_buf_5179_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5179_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5179_salloc_load", i64 32)
  %"$indices_buf_5179_salloc" = bitcast i8* %"$indices_buf_5179_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5179" = bitcast [32 x i8]* %"$indices_buf_5179_salloc" to i8*
  %"$node_5180" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5181" = getelementptr i8, i8* %"$indices_buf_5179", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_5181" to [32 x i8]*
  store [32 x i8] %"$node_5180", [32 x i8]* %indices_cast2, align 1
  %"$execptr_load_5182" = load i8*, i8** @_execptr, align 8
  %"$newRecord_5184" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_5185" = bitcast %TName_ud-registry.Record* %"$newRecord_5184" to i8*
  call void @_update_field(i8* %"$execptr_load_5182", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5183", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_5179", i8* %"$update_value_5185"), !dbg !482
  %"$gasrem_5186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5187" = icmp ugt i64 1, %"$gasrem_5186"
  br i1 %"$gascmp_5187", label %"$out_of_gas_5188", label %"$have_gas_5189"

"$out_of_gas_5188":                               ; preds = %"$have_gas_5177"
  call void @_out_of_gas()
  br label %"$have_gas_5189"

"$have_gas_5189":                                 ; preds = %"$out_of_gas_5188", %"$have_gas_5177"
  %"$consume_5190" = sub i64 %"$gasrem_5186", 1
  store i64 %"$consume_5190", i64* @_gasrem, align 8
  %e3 = alloca i8*, align 8
  %"$gasrem_5191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5192" = icmp ugt i64 1, %"$gasrem_5191"
  br i1 %"$gascmp_5192", label %"$out_of_gas_5193", label %"$have_gas_5194"

"$out_of_gas_5193":                               ; preds = %"$have_gas_5189"
  call void @_out_of_gas()
  br label %"$have_gas_5194"

"$have_gas_5194":                                 ; preds = %"$out_of_gas_5193", %"$have_gas_5189"
  %"$consume_5195" = sub i64 %"$gasrem_5191", 1
  store i64 %"$consume_5195", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_112" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_5196" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_5197" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5196", 0
  %"$ud-registry.eConfigured_envptr_5198" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5196", 1
  %"$ud-registry.eConfigured_node_5199" = alloca [32 x i8], align 1
  %"$node_5200" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_5200", [32 x i8]* %"$ud-registry.eConfigured_node_5199", align 1
  %"$ud-registry.eConfigured_call_5201" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_5197"(i8* %"$ud-registry.eConfigured_envptr_5198", [32 x i8]* %"$ud-registry.eConfigured_node_5199"), !dbg !483
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_5201", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_112", align 8, !dbg !483
  %"$ud-registry.eConfigured_113" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_112_5202" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_112", align 8
  %"$$ud-registry.eConfigured_112_fptr_5203" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_112_5202", 0
  %"$$ud-registry.eConfigured_112_envptr_5204" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_112_5202", 1
  %"$$ud-registry.eConfigured_112_owner_5205" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_112_owner_5205", align 1
  %"$$ud-registry.eConfigured_112_call_5206" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_112_fptr_5203"(i8* %"$$ud-registry.eConfigured_112_envptr_5204", [20 x i8]* %"$$ud-registry.eConfigured_112_owner_5205"), !dbg !483
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_112_call_5206", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_113", align 8, !dbg !483
  %"$ud-registry.eConfigured_114" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_113_5207" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_113", align 8
  %"$$ud-registry.eConfigured_113_fptr_5208" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_113_5207", 0
  %"$$ud-registry.eConfigured_113_envptr_5209" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_113_5207", 1
  %"$$ud-registry.eConfigured_113_resolver_5210" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_113_resolver_5210", align 1
  %"$$ud-registry.eConfigured_113_call_5211" = call i8* %"$$ud-registry.eConfigured_113_fptr_5208"(i8* %"$$ud-registry.eConfigured_113_envptr_5209", [20 x i8]* %"$$ud-registry.eConfigured_113_resolver_5210"), !dbg !483
  store i8* %"$$ud-registry.eConfigured_113_call_5211", i8** %"$ud-registry.eConfigured_114", align 8, !dbg !483
  %"$$ud-registry.eConfigured_114_5212" = load i8*, i8** %"$ud-registry.eConfigured_114", align 8
  store i8* %"$$ud-registry.eConfigured_114_5212", i8** %e3, align 8, !dbg !483
  %"$e_5213" = load i8*, i8** %e3, align 8
  %"$_literal_cost_call_5215" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5213")
  %"$gasrem_5216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5217" = icmp ugt i64 %"$_literal_cost_call_5215", %"$gasrem_5216"
  br i1 %"$gascmp_5217", label %"$out_of_gas_5218", label %"$have_gas_5219"

"$out_of_gas_5218":                               ; preds = %"$have_gas_5194"
  call void @_out_of_gas()
  br label %"$have_gas_5219"

"$have_gas_5219":                                 ; preds = %"$out_of_gas_5218", %"$have_gas_5194"
  %"$consume_5220" = sub i64 %"$gasrem_5216", %"$_literal_cost_call_5215"
  store i64 %"$consume_5220", i64* @_gasrem, align 8
  %"$execptr_load_5221" = load i8*, i8** @_execptr, align 8
  %"$e_5222" = load i8*, i8** %e3, align 8
  call void @_event(i8* %"$execptr_load_5221", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5222"), !dbg !484
  br label %"$matchsucc_5105"

"$False_5223":                                    ; preds = %"$have_gas_5103"
  %"$isOk_5224" = bitcast %TName_Bool* %"$isOk_5106" to %CName_False*
  %"$gasrem_5225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5226" = icmp ugt i64 1, %"$gasrem_5225"
  br i1 %"$gascmp_5226", label %"$out_of_gas_5227", label %"$have_gas_5228"

"$out_of_gas_5227":                               ; preds = %"$False_5223"
  call void @_out_of_gas()
  br label %"$have_gas_5228"

"$have_gas_5228":                                 ; preds = %"$out_of_gas_5227", %"$False_5223"
  %"$consume_5229" = sub i64 %"$gasrem_5225", 1
  store i64 %"$consume_5229", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_5230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5231" = icmp ugt i64 1, %"$gasrem_5230"
  br i1 %"$gascmp_5231", label %"$out_of_gas_5232", label %"$have_gas_5233"

"$out_of_gas_5232":                               ; preds = %"$have_gas_5228"
  call void @_out_of_gas()
  br label %"$have_gas_5233"

"$have_gas_5233":                                 ; preds = %"$out_of_gas_5232", %"$have_gas_5228"
  %"$consume_5234" = sub i64 %"$gasrem_5230", 1
  store i64 %"$consume_5234", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_5235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5236" = icmp ugt i64 1, %"$gasrem_5235"
  br i1 %"$gascmp_5236", label %"$out_of_gas_5237", label %"$have_gas_5238"

"$out_of_gas_5237":                               ; preds = %"$have_gas_5233"
  call void @_out_of_gas()
  br label %"$have_gas_5238"

"$have_gas_5238":                                 ; preds = %"$out_of_gas_5237", %"$have_gas_5233"
  %"$consume_5239" = sub i64 %"$gasrem_5235", 1
  store i64 %"$consume_5239", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_5240", i32 0, i32 0), i32 12 }, %String* %m, align 8, !dbg !485
  %"$gasrem_5241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5242" = icmp ugt i64 1, %"$gasrem_5241"
  br i1 %"$gascmp_5242", label %"$out_of_gas_5243", label %"$have_gas_5244"

"$out_of_gas_5243":                               ; preds = %"$have_gas_5238"
  call void @_out_of_gas()
  br label %"$have_gas_5244"

"$have_gas_5244":                                 ; preds = %"$out_of_gas_5243", %"$have_gas_5238"
  %"$consume_5245" = sub i64 %"$gasrem_5241", 1
  store i64 %"$consume_5245", i64* @_gasrem, align 8
  %"$ud-registry.eError_117" = alloca i8*, align 8
  %"$ud-registry.eError_5246" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_5247" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_5246", 0
  %"$ud-registry.eError_envptr_5248" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_5246", 1
  %"$m_5249" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_5250" = call i8* %"$ud-registry.eError_fptr_5247"(i8* %"$ud-registry.eError_envptr_5248", %String %"$m_5249"), !dbg !487
  store i8* %"$ud-registry.eError_call_5250", i8** %"$ud-registry.eError_117", align 8, !dbg !487
  %"$$ud-registry.eError_117_5251" = load i8*, i8** %"$ud-registry.eError_117", align 8
  store i8* %"$$ud-registry.eError_117_5251", i8** %e4, align 8, !dbg !487
  %"$e_5252" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_5254" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5252")
  %"$gasrem_5255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5256" = icmp ugt i64 %"$_literal_cost_call_5254", %"$gasrem_5255"
  br i1 %"$gascmp_5256", label %"$out_of_gas_5257", label %"$have_gas_5258"

"$out_of_gas_5257":                               ; preds = %"$have_gas_5244"
  call void @_out_of_gas()
  br label %"$have_gas_5258"

"$have_gas_5258":                                 ; preds = %"$out_of_gas_5257", %"$have_gas_5244"
  %"$consume_5259" = sub i64 %"$gasrem_5255", %"$_literal_cost_call_5254"
  store i64 %"$consume_5259", i64* @_gasrem, align 8
  %"$execptr_load_5260" = load i8*, i8** @_execptr, align 8
  %"$e_5261" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_5260", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5261"), !dbg !488
  br label %"$matchsucc_5105"

"$empty_default_5109":                            ; preds = %"$have_gas_5103"
  br label %"$matchsucc_5105"

"$matchsucc_5105":                                ; preds = %"$have_gas_5258", %"$have_gas_5219", %"$empty_default_5109"
  ret void
}

define void @bestow(i8* %0) !dbg !489 {
entry:
  %"$_amount_5263" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5264" = bitcast i8* %"$_amount_5263" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5264", align 8
  %"$_sender_5265" = getelementptr i8, i8* %0, i32 16
  %"$_sender_5266" = bitcast i8* %"$_sender_5265" to [20 x i8]*
  %"$label_5267" = getelementptr i8, i8* %0, i32 36
  %"$label_5268" = bitcast i8* %"$label_5267" to %String*
  %label = load %String, %String* %"$label_5268", align 8
  %"$owner_5269" = getelementptr i8, i8* %0, i32 52
  %"$owner_5270" = bitcast i8* %"$owner_5269" to [20 x i8]*
  %"$resolver_5271" = getelementptr i8, i8* %0, i32 72
  %"$resolver_5272" = bitcast i8* %"$resolver_5271" to [20 x i8]*
  call void @"$bestow_4852"(%Uint128 %_amount, [20 x i8]* %"$_sender_5266", %String %label, [20 x i8]* %"$owner_5270", [20 x i8]* %"$resolver_5272"), !dbg !490
  ret void
}

define internal void @"$setRegistrar_5273"(%Uint128 %_amount, [20 x i8]* %"$_sender_5274", [20 x i8]* %"$address_5275") !dbg !491 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5274", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_5275", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_5276" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_5278" = call i8* @_fetch_field(i8* %"$execptr_load_5276", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_5277", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i32 1), !dbg !492
  %"$currentAdmins_5279" = bitcast i8* %"$currentAdmins_5278" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_5279", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_5280" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_5280_5281" = bitcast %TName_List_ByStr20* %"$currentAdmins_5280" to i8*
  %"$_literal_cost_call_5282" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$currentAdmins_5280_5281")
  %"$gasadd_5283" = add i64 %"$_literal_cost_call_5282", 0
  %"$gasrem_5284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5285" = icmp ugt i64 %"$gasadd_5283", %"$gasrem_5284"
  br i1 %"$gascmp_5285", label %"$out_of_gas_5286", label %"$have_gas_5287"

"$out_of_gas_5286":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5287"

"$have_gas_5287":                                 ; preds = %"$out_of_gas_5286", %entry
  %"$consume_5288" = sub i64 %"$gasrem_5284", %"$gasadd_5283"
  store i64 %"$consume_5288", i64* @_gasrem, align 8
  %"$gasrem_5289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5290" = icmp ugt i64 1, %"$gasrem_5289"
  br i1 %"$gascmp_5290", label %"$out_of_gas_5291", label %"$have_gas_5292"

"$out_of_gas_5291":                               ; preds = %"$have_gas_5287"
  call void @_out_of_gas()
  br label %"$have_gas_5292"

"$have_gas_5292":                                 ; preds = %"$out_of_gas_5291", %"$have_gas_5287"
  %"$consume_5293" = sub i64 %"$gasrem_5289", 1
  store i64 %"$consume_5293", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_5294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5295" = icmp ugt i64 1, %"$gasrem_5294"
  br i1 %"$gascmp_5295", label %"$out_of_gas_5296", label %"$have_gas_5297"

"$out_of_gas_5296":                               ; preds = %"$have_gas_5292"
  call void @_out_of_gas()
  br label %"$have_gas_5297"

"$have_gas_5297":                                 ; preds = %"$out_of_gas_5296", %"$have_gas_5292"
  %"$consume_5298" = sub i64 %"$gasrem_5294", 1
  store i64 %"$consume_5298", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_132" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_5299" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_5300" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5299", 0
  %"$ud-registry.listByStr20Contains_envptr_5301" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5299", 1
  %"$currentAdmins_5302" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_5303" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_5300"(i8* %"$ud-registry.listByStr20Contains_envptr_5301", %TName_List_ByStr20* %"$currentAdmins_5302"), !dbg !493
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_5303", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_132", align 8, !dbg !493
  %"$ud-registry.listByStr20Contains_133" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_132_5304" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_132", align 8
  %"$$ud-registry.listByStr20Contains_132_fptr_5305" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_132_5304", 0
  %"$$ud-registry.listByStr20Contains_132_envptr_5306" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_132_5304", 1
  %"$$ud-registry.listByStr20Contains_132__sender_5307" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_132__sender_5307", align 1
  %"$$ud-registry.listByStr20Contains_132_call_5308" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_132_fptr_5305"(i8* %"$$ud-registry.listByStr20Contains_132_envptr_5306", [20 x i8]* %"$$ud-registry.listByStr20Contains_132__sender_5307"), !dbg !493
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_132_call_5308", %TName_Bool** %"$ud-registry.listByStr20Contains_133", align 8, !dbg !493
  %"$$ud-registry.listByStr20Contains_133_5309" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_133", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_133_5309", %TName_Bool** %isOk, align 8, !dbg !493
  %"$gasrem_5310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5311" = icmp ugt i64 2, %"$gasrem_5310"
  br i1 %"$gascmp_5311", label %"$out_of_gas_5312", label %"$have_gas_5313"

"$out_of_gas_5312":                               ; preds = %"$have_gas_5297"
  call void @_out_of_gas()
  br label %"$have_gas_5313"

"$have_gas_5313":                                 ; preds = %"$out_of_gas_5312", %"$have_gas_5297"
  %"$consume_5314" = sub i64 %"$gasrem_5310", 2
  store i64 %"$consume_5314", i64* @_gasrem, align 8
  %"$isOk_5316" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5317" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5316", i32 0, i32 0
  %"$isOk_tag_5318" = load i8, i8* %"$isOk_tag_5317", align 1
  switch i8 %"$isOk_tag_5318", label %"$default_5319" [
    i8 0, label %"$True_5320"
  ], !dbg !494

"$True_5320":                                     ; preds = %"$have_gas_5313"
  %"$isOk_5321" = bitcast %TName_Bool* %"$isOk_5316" to %CName_True*
  %"$gasrem_5322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5323" = icmp ugt i64 1, %"$gasrem_5322"
  br i1 %"$gascmp_5323", label %"$out_of_gas_5324", label %"$have_gas_5325"

"$out_of_gas_5324":                               ; preds = %"$True_5320"
  call void @_out_of_gas()
  br label %"$have_gas_5325"

"$have_gas_5325":                                 ; preds = %"$out_of_gas_5324", %"$True_5320"
  %"$consume_5326" = sub i64 %"$gasrem_5322", 1
  store i64 %"$consume_5326", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5328" = icmp ugt i64 1, %"$gasrem_5327"
  br i1 %"$gascmp_5328", label %"$out_of_gas_5329", label %"$have_gas_5330"

"$out_of_gas_5329":                               ; preds = %"$have_gas_5325"
  call void @_out_of_gas()
  br label %"$have_gas_5330"

"$have_gas_5330":                                 ; preds = %"$out_of_gas_5329", %"$have_gas_5325"
  %"$consume_5331" = sub i64 %"$gasrem_5327", 1
  store i64 %"$consume_5331", i64* @_gasrem, align 8
  %"$ud-registry.eNewRegistrar_131" = alloca i8*, align 8
  %"$ud-registry.eNewRegistrar_5332" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eNewRegistrar, align 8
  %"$ud-registry.eNewRegistrar_fptr_5333" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eNewRegistrar_5332", 0
  %"$ud-registry.eNewRegistrar_envptr_5334" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eNewRegistrar_5332", 1
  %"$ud-registry.eNewRegistrar_address_5335" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eNewRegistrar_address_5335", align 1
  %"$ud-registry.eNewRegistrar_call_5336" = call i8* %"$ud-registry.eNewRegistrar_fptr_5333"(i8* %"$ud-registry.eNewRegistrar_envptr_5334", [20 x i8]* %"$ud-registry.eNewRegistrar_address_5335"), !dbg !495
  store i8* %"$ud-registry.eNewRegistrar_call_5336", i8** %"$ud-registry.eNewRegistrar_131", align 8, !dbg !495
  %"$$ud-registry.eNewRegistrar_131_5337" = load i8*, i8** %"$ud-registry.eNewRegistrar_131", align 8
  store i8* %"$$ud-registry.eNewRegistrar_131_5337", i8** %e, align 8, !dbg !495
  %"$e_5338" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5340" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5338")
  %"$gasrem_5341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5342" = icmp ugt i64 %"$_literal_cost_call_5340", %"$gasrem_5341"
  br i1 %"$gascmp_5342", label %"$out_of_gas_5343", label %"$have_gas_5344"

"$out_of_gas_5343":                               ; preds = %"$have_gas_5330"
  call void @_out_of_gas()
  br label %"$have_gas_5344"

"$have_gas_5344":                                 ; preds = %"$out_of_gas_5343", %"$have_gas_5330"
  %"$consume_5345" = sub i64 %"$gasrem_5341", %"$_literal_cost_call_5340"
  store i64 %"$consume_5345", i64* @_gasrem, align 8
  %"$execptr_load_5346" = load i8*, i8** @_execptr, align 8
  %"$e_5347" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5346", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5347"), !dbg !498
  %"$_literal_cost_address_5348" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$_literal_cost_address_5348", align 1
  %"$$_literal_cost_address_5348_5349" = bitcast [20 x i8]* %"$_literal_cost_address_5348" to i8*
  %"$_literal_cost_call_5350" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i8* %"$$_literal_cost_address_5348_5349")
  %"$gasrem_5351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5352" = icmp ugt i64 %"$_literal_cost_call_5350", %"$gasrem_5351"
  br i1 %"$gascmp_5352", label %"$out_of_gas_5353", label %"$have_gas_5354"

"$out_of_gas_5353":                               ; preds = %"$have_gas_5344"
  call void @_out_of_gas()
  br label %"$have_gas_5354"

"$have_gas_5354":                                 ; preds = %"$out_of_gas_5353", %"$have_gas_5344"
  %"$consume_5355" = sub i64 %"$gasrem_5351", %"$_literal_cost_call_5350"
  store i64 %"$consume_5355", i64* @_gasrem, align 8
  %"$execptr_load_5356" = load i8*, i8** @_execptr, align 8
  %"$update_value_5358" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$update_value_5358", align 1
  %"$update_value_5359" = bitcast [20 x i8]* %"$update_value_5358" to i8*
  call void @_update_field(i8* %"$execptr_load_5356", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_5357", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i32 0, i8* null, i8* %"$update_value_5359"), !dbg !499
  br label %"$matchsucc_5315"

"$default_5319":                                  ; preds = %"$have_gas_5313"
  br label %"$joinp_6"

"$joinp_6":                                       ; preds = %"$default_5319"
  br label %"$matchsucc_5315"

"$matchsucc_5315":                                ; preds = %"$have_gas_5354", %"$joinp_6"
  ret void
}

define void @setRegistrar(i8* %0) !dbg !500 {
entry:
  %"$_amount_5361" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5362" = bitcast i8* %"$_amount_5361" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5362", align 8
  %"$_sender_5363" = getelementptr i8, i8* %0, i32 16
  %"$_sender_5364" = bitcast i8* %"$_sender_5363" to [20 x i8]*
  %"$address_5365" = getelementptr i8, i8* %0, i32 36
  %"$address_5366" = bitcast i8* %"$address_5365" to [20 x i8]*
  call void @"$setRegistrar_5273"(%Uint128 %_amount, [20 x i8]* %"$_sender_5364", [20 x i8]* %"$address_5366"), !dbg !501
  ret void
}

define internal void @"$register_5367"(%Uint128 %_amount, [20 x i8]* %"$_sender_5368", [32 x i8]* %"$parent_5369", %String %label) !dbg !502 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5368", align 1
  %parent = load [32 x i8], [32 x i8]* %"$parent_5369", align 1
  %"$gasrem_5370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5371" = icmp ugt i64 1, %"$gasrem_5370"
  br i1 %"$gascmp_5371", label %"$out_of_gas_5372", label %"$have_gas_5373"

"$out_of_gas_5372":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5373"

"$have_gas_5373":                                 ; preds = %"$out_of_gas_5372", %entry
  %"$consume_5374" = sub i64 %"$gasrem_5370", 1
  store i64 %"$consume_5374", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_5375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5376" = icmp ugt i64 1, %"$gasrem_5375"
  br i1 %"$gascmp_5376", label %"$out_of_gas_5377", label %"$have_gas_5378"

"$out_of_gas_5377":                               ; preds = %"$have_gas_5373"
  call void @_out_of_gas()
  br label %"$have_gas_5378"

"$have_gas_5378":                                 ; preds = %"$out_of_gas_5377", %"$have_gas_5373"
  %"$consume_5379" = sub i64 %"$gasrem_5375", 1
  store i64 %"$consume_5379", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_138" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_5380" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_5381" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_5380", 0
  %"$ud-registry.parentLabelToNode_envptr_5382" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_5380", 1
  %"$ud-registry.parentLabelToNode_parent_5383" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.parentLabelToNode_parent_5383", align 1
  %"$ud-registry.parentLabelToNode_call_5384" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_5381"(i8* %"$ud-registry.parentLabelToNode_envptr_5382", [32 x i8]* %"$ud-registry.parentLabelToNode_parent_5383"), !dbg !503
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_5384", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_138", align 8, !dbg !503
  %"$ud-registry.parentLabelToNode_139" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_138_5385" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_138", align 8
  %"$$ud-registry.parentLabelToNode_138_fptr_5386" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_138_5385", 0
  %"$$ud-registry.parentLabelToNode_138_envptr_5387" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_138_5385", 1
  %"$$ud-registry.parentLabelToNode_138_retalloca_5388" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_138_fptr_5386"(i8* %"$$ud-registry.parentLabelToNode_138_envptr_5387", [32 x i8]* %"$$ud-registry.parentLabelToNode_138_retalloca_5388", %String %label), !dbg !503
  %"$$ud-registry.parentLabelToNode_138_ret_5389" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_138_retalloca_5388", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_138_ret_5389", [32 x i8]* %"$ud-registry.parentLabelToNode_139", align 1, !dbg !503
  %"$$ud-registry.parentLabelToNode_139_5390" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_139", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_139_5390", [32 x i8]* %node, align 1, !dbg !503
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_5391_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5391_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5391_salloc_load", i64 32)
  %"$indices_buf_5391_salloc" = bitcast i8* %"$indices_buf_5391_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5391" = bitcast [32 x i8]* %"$indices_buf_5391_salloc" to i8*
  %"$node_5392" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5393" = getelementptr i8, i8* %"$indices_buf_5391", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_5393" to [32 x i8]*
  store [32 x i8] %"$node_5392", [32 x i8]* %indices_cast, align 1
  %"$execptr_load_5394" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_5396" = call i8* @_fetch_field(i8* %"$execptr_load_5394", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5395", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_5391", i32 1), !dbg !504
  %"$maybeRecord_5397" = bitcast i8* %"$maybeRecord_5396" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_5397", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_5398" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_5398_5399" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5398" to i8*
  %"$_literal_cost_call_5400" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_5398_5399")
  %"$gasadd_5401" = add i64 %"$_literal_cost_call_5400", 0
  %"$gasadd_5402" = add i64 %"$gasadd_5401", 1
  %"$gasrem_5403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5404" = icmp ugt i64 %"$gasadd_5402", %"$gasrem_5403"
  br i1 %"$gascmp_5404", label %"$out_of_gas_5405", label %"$have_gas_5406"

"$out_of_gas_5405":                               ; preds = %"$have_gas_5378"
  call void @_out_of_gas()
  br label %"$have_gas_5406"

"$have_gas_5406":                                 ; preds = %"$out_of_gas_5405", %"$have_gas_5378"
  %"$consume_5407" = sub i64 %"$gasrem_5403", %"$gasadd_5402"
  store i64 %"$consume_5407", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_5408_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5408_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5408_salloc_load", i64 32)
  %"$indices_buf_5408_salloc" = bitcast i8* %"$indices_buf_5408_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5408" = bitcast [32 x i8]* %"$indices_buf_5408_salloc" to i8*
  %"$node_5409" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5410" = getelementptr i8, i8* %"$indices_buf_5408", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_5410" to [32 x i8]*
  store [32 x i8] %"$node_5409", [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_5411" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_5413" = call i8* @_fetch_field(i8* %"$execptr_load_5411", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_5412", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_5408", i32 1), !dbg !505
  %"$maybeApproved_5414" = bitcast i8* %"$maybeApproved_5413" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_5414", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_5415" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_5415_5416" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5415" to i8*
  %"$_literal_cost_call_5417" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_5415_5416")
  %"$gasadd_5418" = add i64 %"$_literal_cost_call_5417", 0
  %"$gasadd_5419" = add i64 %"$gasadd_5418", 1
  %"$gasrem_5420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5421" = icmp ugt i64 %"$gasadd_5419", %"$gasrem_5420"
  br i1 %"$gascmp_5421", label %"$out_of_gas_5422", label %"$have_gas_5423"

"$out_of_gas_5422":                               ; preds = %"$have_gas_5406"
  call void @_out_of_gas()
  br label %"$have_gas_5423"

"$have_gas_5423":                                 ; preds = %"$out_of_gas_5422", %"$have_gas_5406"
  %"$consume_5424" = sub i64 %"$gasrem_5420", %"$gasadd_5419"
  store i64 %"$consume_5424", i64* @_gasrem, align 8
  %"$gasrem_5425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5426" = icmp ugt i64 1, %"$gasrem_5425"
  br i1 %"$gascmp_5426", label %"$out_of_gas_5427", label %"$have_gas_5428"

"$out_of_gas_5427":                               ; preds = %"$have_gas_5423"
  call void @_out_of_gas()
  br label %"$have_gas_5428"

"$have_gas_5428":                                 ; preds = %"$out_of_gas_5427", %"$have_gas_5423"
  %"$consume_5429" = sub i64 %"$gasrem_5425", 1
  store i64 %"$consume_5429", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_5430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5431" = icmp ugt i64 1, %"$gasrem_5430"
  br i1 %"$gascmp_5431", label %"$out_of_gas_5432", label %"$have_gas_5433"

"$out_of_gas_5432":                               ; preds = %"$have_gas_5428"
  call void @_out_of_gas()
  br label %"$have_gas_5433"

"$have_gas_5433":                                 ; preds = %"$out_of_gas_5432", %"$have_gas_5428"
  %"$consume_5434" = sub i64 %"$gasrem_5430", 1
  store i64 %"$consume_5434", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_137" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_5435" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_5436" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5435", 0
  %"$ud-registry.recordMemberOwner_envptr_5437" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5435", 1
  %"$maybeRecord_5438" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_5439" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_5436"(i8* %"$ud-registry.recordMemberOwner_envptr_5437", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5439", %TName_Option_ud-registry.Record* %"$maybeRecord_5438"), !dbg !506
  %"$ud-registry.recordMemberOwner_ret_5440" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5439", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_5440", [20 x i8]* %"$ud-registry.recordMemberOwner_137", align 1, !dbg !506
  %"$$ud-registry.recordMemberOwner_137_5441" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_137", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_137_5441", [20 x i8]* %recordOwner, align 1, !dbg !506
  %"$gasrem_5442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5443" = icmp ugt i64 1, %"$gasrem_5442"
  br i1 %"$gascmp_5443", label %"$out_of_gas_5444", label %"$have_gas_5445"

"$out_of_gas_5444":                               ; preds = %"$have_gas_5433"
  call void @_out_of_gas()
  br label %"$have_gas_5445"

"$have_gas_5445":                                 ; preds = %"$out_of_gas_5444", %"$have_gas_5433"
  %"$consume_5446" = sub i64 %"$gasrem_5442", 1
  store i64 %"$consume_5446", i64* @_gasrem, align 8
  %approved = alloca [20 x i8], align 1
  %"$gasrem_5447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5448" = icmp ugt i64 2, %"$gasrem_5447"
  br i1 %"$gascmp_5448", label %"$out_of_gas_5449", label %"$have_gas_5450"

"$out_of_gas_5449":                               ; preds = %"$have_gas_5445"
  call void @_out_of_gas()
  br label %"$have_gas_5450"

"$have_gas_5450":                                 ; preds = %"$out_of_gas_5449", %"$have_gas_5445"
  %"$consume_5451" = sub i64 %"$gasrem_5447", 2
  store i64 %"$consume_5451", i64* @_gasrem, align 8
  %"$maybeApproved_5453" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_5454" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_5453", i32 0, i32 0
  %"$maybeApproved_tag_5455" = load i8, i8* %"$maybeApproved_tag_5454", align 1
  switch i8 %"$maybeApproved_tag_5455", label %"$empty_default_5456" [
    i8 1, label %"$None_5457"
    i8 0, label %"$Some_5465"
  ], !dbg !507

"$None_5457":                                     ; preds = %"$have_gas_5450"
  %"$maybeApproved_5458" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5453" to %CName_None_ByStr20*
  %"$gasrem_5459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5460" = icmp ugt i64 1, %"$gasrem_5459"
  br i1 %"$gascmp_5460", label %"$out_of_gas_5461", label %"$have_gas_5462"

"$out_of_gas_5461":                               ; preds = %"$None_5457"
  call void @_out_of_gas()
  br label %"$have_gas_5462"

"$have_gas_5462":                                 ; preds = %"$out_of_gas_5461", %"$None_5457"
  %"$consume_5463" = sub i64 %"$gasrem_5459", 1
  store i64 %"$consume_5463", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_5464" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5464", [20 x i8]* %approved, align 1, !dbg !508
  br label %"$matchsucc_5452"

"$Some_5465":                                     ; preds = %"$have_gas_5450"
  %"$maybeApproved_5466" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5453" to %CName_Some_ByStr20*
  %"$approved_gep_5467" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_5466", i32 0, i32 1
  %"$approved_load_5468" = load [20 x i8], [20 x i8]* %"$approved_gep_5467", align 1
  %approved2 = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_5468", [20 x i8]* %approved2, align 1
  %"$gasrem_5469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5470" = icmp ugt i64 1, %"$gasrem_5469"
  br i1 %"$gascmp_5470", label %"$out_of_gas_5471", label %"$have_gas_5472"

"$out_of_gas_5471":                               ; preds = %"$Some_5465"
  call void @_out_of_gas()
  br label %"$have_gas_5472"

"$have_gas_5472":                                 ; preds = %"$out_of_gas_5471", %"$Some_5465"
  %"$consume_5473" = sub i64 %"$gasrem_5469", 1
  store i64 %"$consume_5473", i64* @_gasrem, align 8
  %"$approved_5474" = load [20 x i8], [20 x i8]* %approved2, align 1
  store [20 x i8] %"$approved_5474", [20 x i8]* %approved2, align 1, !dbg !511
  br label %"$matchsucc_5452"

"$empty_default_5456":                            ; preds = %"$have_gas_5450"
  br label %"$matchsucc_5452"

"$matchsucc_5452":                                ; preds = %"$have_gas_5472", %"$have_gas_5462", %"$empty_default_5456"
  %currentRegistrar = alloca [20 x i8], align 1
  %"$execptr_load_5475" = load i8*, i8** @_execptr, align 8
  %"$currentRegistrar_5477" = call i8* @_fetch_field(i8* %"$execptr_load_5475", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_5476", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i32 0, i8* null, i32 1), !dbg !513
  %"$currentRegistrar_5478" = bitcast i8* %"$currentRegistrar_5477" to [20 x i8]*
  %"$currentRegistrar_5479" = load [20 x i8], [20 x i8]* %"$currentRegistrar_5478", align 1
  store [20 x i8] %"$currentRegistrar_5479", [20 x i8]* %currentRegistrar, align 1
  %"$_literal_cost_currentRegistrar_5480" = alloca [20 x i8], align 1
  %"$currentRegistrar_5481" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5481", [20 x i8]* %"$_literal_cost_currentRegistrar_5480", align 1
  %"$$_literal_cost_currentRegistrar_5480_5482" = bitcast [20 x i8]* %"$_literal_cost_currentRegistrar_5480" to i8*
  %"$_literal_cost_call_5483" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i8* %"$$_literal_cost_currentRegistrar_5480_5482")
  %"$gasadd_5484" = add i64 %"$_literal_cost_call_5483", 0
  %"$gasrem_5485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5486" = icmp ugt i64 %"$gasadd_5484", %"$gasrem_5485"
  br i1 %"$gascmp_5486", label %"$out_of_gas_5487", label %"$have_gas_5488"

"$out_of_gas_5487":                               ; preds = %"$matchsucc_5452"
  call void @_out_of_gas()
  br label %"$have_gas_5488"

"$have_gas_5488":                                 ; preds = %"$out_of_gas_5487", %"$matchsucc_5452"
  %"$consume_5489" = sub i64 %"$gasrem_5485", %"$gasadd_5484"
  store i64 %"$consume_5489", i64* @_gasrem, align 8
  %"$gasrem_5490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5491" = icmp ugt i64 1, %"$gasrem_5490"
  br i1 %"$gascmp_5491", label %"$out_of_gas_5492", label %"$have_gas_5493"

"$out_of_gas_5492":                               ; preds = %"$have_gas_5488"
  call void @_out_of_gas()
  br label %"$have_gas_5493"

"$have_gas_5493":                                 ; preds = %"$out_of_gas_5492", %"$have_gas_5488"
  %"$consume_5494" = sub i64 %"$gasrem_5490", 1
  store i64 %"$consume_5494", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_5495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5496" = icmp ugt i64 1, %"$gasrem_5495"
  br i1 %"$gascmp_5496", label %"$out_of_gas_5497", label %"$have_gas_5498"

"$out_of_gas_5497":                               ; preds = %"$have_gas_5493"
  call void @_out_of_gas()
  br label %"$have_gas_5498"

"$have_gas_5498":                                 ; preds = %"$out_of_gas_5497", %"$have_gas_5493"
  %"$consume_5499" = sub i64 %"$gasrem_5495", 1
  store i64 %"$consume_5499", i64* @_gasrem, align 8
  %isRecordUnowned = alloca %TName_Bool*, align 8
  %"$execptr_load_5500" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5501" = alloca [20 x i8], align 1
  %"$recordOwner_5502" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5502", [20 x i8]* %"$eq_recordOwner_5501", align 1
  %"$$eq_recordOwner_5501_5503" = bitcast [20 x i8]* %"$eq_recordOwner_5501" to i8*
  %"$eq_ud-registry.zeroByStr20_5504" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5505" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5505", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5504", align 1
  %"$$eq_ud-registry.zeroByStr20_5504_5506" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5504" to i8*
  %"$eq_call_5507" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5500", i32 20, i8* %"$$eq_recordOwner_5501_5503", i8* %"$$eq_ud-registry.zeroByStr20_5504_5506")
  store %TName_Bool* %"$eq_call_5507", %TName_Bool** %isRecordUnowned, align 8, !dbg !514
  %"$gasrem_5508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5509" = icmp ugt i64 1, %"$gasrem_5508"
  br i1 %"$gascmp_5509", label %"$out_of_gas_5510", label %"$have_gas_5511"

"$out_of_gas_5510":                               ; preds = %"$have_gas_5498"
  call void @_out_of_gas()
  br label %"$have_gas_5511"

"$have_gas_5511":                                 ; preds = %"$out_of_gas_5510", %"$have_gas_5498"
  %"$consume_5512" = sub i64 %"$gasrem_5508", 1
  store i64 %"$consume_5512", i64* @_gasrem, align 8
  %isUnapproved = alloca %TName_Bool*, align 8
  %"$execptr_load_5513" = load i8*, i8** @_execptr, align 8
  %"$eq_approved_5514" = alloca [20 x i8], align 1
  %"$approved_5515" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_5515", [20 x i8]* %"$eq_approved_5514", align 1
  %"$$eq_approved_5514_5516" = bitcast [20 x i8]* %"$eq_approved_5514" to i8*
  %"$eq_ud-registry.zeroByStr20_5517" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5518" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5518", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5517", align 1
  %"$$eq_ud-registry.zeroByStr20_5517_5519" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5517" to i8*
  %"$eq_call_5520" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5513", i32 20, i8* %"$$eq_approved_5514_5516", i8* %"$$eq_ud-registry.zeroByStr20_5517_5519")
  store %TName_Bool* %"$eq_call_5520", %TName_Bool** %isUnapproved, align 8, !dbg !515
  %"$gasrem_5521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5522" = icmp ugt i64 1, %"$gasrem_5521"
  br i1 %"$gascmp_5522", label %"$out_of_gas_5523", label %"$have_gas_5524"

"$out_of_gas_5523":                               ; preds = %"$have_gas_5511"
  call void @_out_of_gas()
  br label %"$have_gas_5524"

"$have_gas_5524":                                 ; preds = %"$out_of_gas_5523", %"$have_gas_5511"
  %"$consume_5525" = sub i64 %"$gasrem_5521", 1
  store i64 %"$consume_5525", i64* @_gasrem, align 8
  %"$BoolUtils.andb_135" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5526" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5527" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5526", 0
  %"$BoolUtils.andb_envptr_5528" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5526", 1
  %"$isRecordUnowned_5529" = load %TName_Bool*, %TName_Bool** %isRecordUnowned, align 8
  %"$BoolUtils.andb_call_5530" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5527"(i8* %"$BoolUtils.andb_envptr_5528", %TName_Bool* %"$isRecordUnowned_5529"), !dbg !516
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5530", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8, !dbg !516
  %"$BoolUtils.andb_136" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_135_5531" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8
  %"$$BoolUtils.andb_135_fptr_5532" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_5531", 0
  %"$$BoolUtils.andb_135_envptr_5533" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_5531", 1
  %"$isUnapproved_5534" = load %TName_Bool*, %TName_Bool** %isUnapproved, align 8
  %"$$BoolUtils.andb_135_call_5535" = call %TName_Bool* %"$$BoolUtils.andb_135_fptr_5532"(i8* %"$$BoolUtils.andb_135_envptr_5533", %TName_Bool* %"$isUnapproved_5534"), !dbg !516
  store %TName_Bool* %"$$BoolUtils.andb_135_call_5535", %TName_Bool** %"$BoolUtils.andb_136", align 8, !dbg !516
  %"$$BoolUtils.andb_136_5536" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_136", align 8
  store %TName_Bool* %"$$BoolUtils.andb_136_5536", %TName_Bool** %isOk, align 8, !dbg !516
  %"$gasrem_5537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5538" = icmp ugt i64 2, %"$gasrem_5537"
  br i1 %"$gascmp_5538", label %"$out_of_gas_5539", label %"$have_gas_5540"

"$out_of_gas_5539":                               ; preds = %"$have_gas_5524"
  call void @_out_of_gas()
  br label %"$have_gas_5540"

"$have_gas_5540":                                 ; preds = %"$out_of_gas_5539", %"$have_gas_5524"
  %"$consume_5541" = sub i64 %"$gasrem_5537", 2
  store i64 %"$consume_5541", i64* @_gasrem, align 8
  %"$isOk_5543" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5544" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5543", i32 0, i32 0
  %"$isOk_tag_5545" = load i8, i8* %"$isOk_tag_5544", align 1
  switch i8 %"$isOk_tag_5545", label %"$empty_default_5546" [
    i8 0, label %"$True_5547"
    i8 1, label %"$False_5645"
  ], !dbg !517

"$True_5547":                                     ; preds = %"$have_gas_5540"
  %"$isOk_5548" = bitcast %TName_Bool* %"$isOk_5543" to %CName_True*
  %"$gasrem_5549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5550" = icmp ugt i64 1, %"$gasrem_5549"
  br i1 %"$gascmp_5550", label %"$out_of_gas_5551", label %"$have_gas_5552"

"$out_of_gas_5551":                               ; preds = %"$True_5547"
  call void @_out_of_gas()
  br label %"$have_gas_5552"

"$have_gas_5552":                                 ; preds = %"$out_of_gas_5551", %"$True_5547"
  %"$consume_5553" = sub i64 %"$gasrem_5549", 1
  store i64 %"$consume_5553", i64* @_gasrem, align 8
  %"$execptr_load_5554" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_5554"), !dbg !518
  %"$gasrem_5555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5556" = icmp ugt i64 1, %"$gasrem_5555"
  br i1 %"$gascmp_5556", label %"$out_of_gas_5557", label %"$have_gas_5558"

"$out_of_gas_5557":                               ; preds = %"$have_gas_5552"
  call void @_out_of_gas()
  br label %"$have_gas_5558"

"$have_gas_5558":                                 ; preds = %"$out_of_gas_5557", %"$have_gas_5552"
  %"$consume_5559" = sub i64 %"$gasrem_5555", 1
  store i64 %"$consume_5559", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_5560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5561" = icmp ugt i64 1, %"$gasrem_5560"
  br i1 %"$gascmp_5561", label %"$out_of_gas_5562", label %"$have_gas_5563"

"$out_of_gas_5562":                               ; preds = %"$have_gas_5558"
  call void @_out_of_gas()
  br label %"$have_gas_5563"

"$have_gas_5563":                                 ; preds = %"$out_of_gas_5562", %"$have_gas_5558"
  %"$consume_5564" = sub i64 %"$gasrem_5560", 1
  store i64 %"$consume_5564", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_5565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5566" = icmp ugt i64 1, %"$gasrem_5565"
  br i1 %"$gascmp_5566", label %"$out_of_gas_5567", label %"$have_gas_5568"

"$out_of_gas_5567":                               ; preds = %"$have_gas_5563"
  call void @_out_of_gas()
  br label %"$have_gas_5568"

"$have_gas_5568":                                 ; preds = %"$out_of_gas_5567", %"$have_gas_5563"
  %"$consume_5569" = sub i64 %"$gasrem_5565", 1
  store i64 %"$consume_5569", i64* @_gasrem, align 8
  %"$msgobj_5570_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_5570_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_5570_salloc_load", i64 321)
  %"$msgobj_5570_salloc" = bitcast i8* %"$msgobj_5570_salloc_salloc" to [321 x i8]*
  %"$msgobj_5570" = bitcast [321 x i8]* %"$msgobj_5570_salloc" to i8*
  store i8 7, i8* %"$msgobj_5570", align 1
  %"$msgobj_fname_5572" = getelementptr i8, i8* %"$msgobj_5570", i32 1
  %"$msgobj_fname_5573" = bitcast i8* %"$msgobj_fname_5572" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_5571", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_5573", align 8
  %"$msgobj_td_5574" = getelementptr i8, i8* %"$msgobj_5570", i32 17
  %"$msgobj_td_5575" = bitcast i8* %"$msgobj_td_5574" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_5575", align 8
  %"$msgobj_v_5577" = getelementptr i8, i8* %"$msgobj_5570", i32 25
  %"$msgobj_v_5578" = bitcast i8* %"$msgobj_v_5577" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_5576", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_5578", align 8
  %"$msgobj_fname_5580" = getelementptr i8, i8* %"$msgobj_5570", i32 41
  %"$msgobj_fname_5581" = bitcast i8* %"$msgobj_fname_5580" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_5579", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_5581", align 8
  %"$msgobj_td_5582" = getelementptr i8, i8* %"$msgobj_5570", i32 57
  %"$msgobj_td_5583" = bitcast i8* %"$msgobj_td_5582" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_5583", align 8
  %"$msgobj_v_5584" = getelementptr i8, i8* %"$msgobj_5570", i32 65
  %"$msgobj_v_5585" = bitcast i8* %"$msgobj_v_5584" to %Uint128*
  store %Uint128 %_amount, %Uint128* %"$msgobj_v_5585", align 8
  %"$msgobj_fname_5587" = getelementptr i8, i8* %"$msgobj_5570", i32 81
  %"$msgobj_fname_5588" = bitcast i8* %"$msgobj_fname_5587" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_5586", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_5588", align 8
  %"$msgobj_td_5589" = getelementptr i8, i8* %"$msgobj_5570", i32 97
  %"$msgobj_td_5590" = bitcast i8* %"$msgobj_td_5589" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_5590", align 8
  %"$currentRegistrar_5591" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  %"$msgobj_v_5592" = getelementptr i8, i8* %"$msgobj_5570", i32 105
  %"$msgobj_v_5593" = bitcast i8* %"$msgobj_v_5592" to [20 x i8]*
  store [20 x i8] %"$currentRegistrar_5591", [20 x i8]* %"$msgobj_v_5593", align 1
  %"$msgobj_fname_5595" = getelementptr i8, i8* %"$msgobj_5570", i32 125
  %"$msgobj_fname_5596" = bitcast i8* %"$msgobj_fname_5595" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_5594", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_5596", align 8
  %"$msgobj_td_5597" = getelementptr i8, i8* %"$msgobj_5570", i32 141
  %"$msgobj_td_5598" = bitcast i8* %"$msgobj_td_5597" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_5598", align 8
  %"$msgobj_v_5599" = getelementptr i8, i8* %"$msgobj_5570", i32 149
  %"$msgobj_v_5600" = bitcast i8* %"$msgobj_v_5599" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_5600", align 1
  %"$msgobj_fname_5602" = getelementptr i8, i8* %"$msgobj_5570", i32 169
  %"$msgobj_fname_5603" = bitcast i8* %"$msgobj_fname_5602" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_5601", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_5603", align 8
  %"$msgobj_td_5604" = getelementptr i8, i8* %"$msgobj_5570", i32 185
  %"$msgobj_td_5605" = bitcast i8* %"$msgobj_td_5604" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_5605", align 8
  %"$node_5606" = load [32 x i8], [32 x i8]* %node, align 1
  %"$msgobj_v_5607" = getelementptr i8, i8* %"$msgobj_5570", i32 193
  %"$msgobj_v_5608" = bitcast i8* %"$msgobj_v_5607" to [32 x i8]*
  store [32 x i8] %"$node_5606", [32 x i8]* %"$msgobj_v_5608", align 1
  %"$msgobj_fname_5610" = getelementptr i8, i8* %"$msgobj_5570", i32 225
  %"$msgobj_fname_5611" = bitcast i8* %"$msgobj_fname_5610" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_5609", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_5611", align 8
  %"$msgobj_td_5612" = getelementptr i8, i8* %"$msgobj_5570", i32 241
  %"$msgobj_td_5613" = bitcast i8* %"$msgobj_td_5612" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_5613", align 8
  %"$msgobj_v_5614" = getelementptr i8, i8* %"$msgobj_5570", i32 249
  %"$msgobj_v_5615" = bitcast i8* %"$msgobj_v_5614" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_5615", align 1
  %"$msgobj_fname_5617" = getelementptr i8, i8* %"$msgobj_5570", i32 281
  %"$msgobj_fname_5618" = bitcast i8* %"$msgobj_fname_5617" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_5616", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_5618", align 8
  %"$msgobj_td_5619" = getelementptr i8, i8* %"$msgobj_5570", i32 297
  %"$msgobj_td_5620" = bitcast i8* %"$msgobj_td_5619" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_5620", align 8
  %"$msgobj_v_5621" = getelementptr i8, i8* %"$msgobj_5570", i32 305
  %"$msgobj_v_5622" = bitcast i8* %"$msgobj_v_5621" to %String*
  store %String %label, %String* %"$msgobj_v_5622", align 8
  store i8* %"$msgobj_5570", i8** %m, align 8, !dbg !521
  %"$gasrem_5624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5625" = icmp ugt i64 1, %"$gasrem_5624"
  br i1 %"$gascmp_5625", label %"$out_of_gas_5626", label %"$have_gas_5627"

"$out_of_gas_5626":                               ; preds = %"$have_gas_5568"
  call void @_out_of_gas()
  br label %"$have_gas_5627"

"$have_gas_5627":                                 ; preds = %"$out_of_gas_5626", %"$have_gas_5568"
  %"$consume_5628" = sub i64 %"$gasrem_5624", 1
  store i64 %"$consume_5628", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_134" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_5629" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_5630" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_5629", 0
  %"$ud-registry.oneMsg_envptr_5631" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_5629", 1
  %"$m_5632" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_5633" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_5630"(i8* %"$ud-registry.oneMsg_envptr_5631", i8* %"$m_5632"), !dbg !522
  store %TName_List_Message* %"$ud-registry.oneMsg_call_5633", %TName_List_Message** %"$ud-registry.oneMsg_134", align 8, !dbg !522
  %"$$ud-registry.oneMsg_134_5634" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_134", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_134_5634", %TName_List_Message** %msgs, align 8, !dbg !522
  %"$msgs_5635" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_5635_5636" = bitcast %TName_List_Message* %"$msgs_5635" to i8*
  %"$_literal_cost_call_5637" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_5635_5636")
  %"$gasrem_5638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5639" = icmp ugt i64 %"$_literal_cost_call_5637", %"$gasrem_5638"
  br i1 %"$gascmp_5639", label %"$out_of_gas_5640", label %"$have_gas_5641"

"$out_of_gas_5640":                               ; preds = %"$have_gas_5627"
  call void @_out_of_gas()
  br label %"$have_gas_5641"

"$have_gas_5641":                                 ; preds = %"$out_of_gas_5640", %"$have_gas_5627"
  %"$consume_5642" = sub i64 %"$gasrem_5638", %"$_literal_cost_call_5637"
  store i64 %"$consume_5642", i64* @_gasrem, align 8
  %"$execptr_load_5643" = load i8*, i8** @_execptr, align 8
  %"$msgs_5644" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_5643", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_5644"), !dbg !523
  br label %"$matchsucc_5542"

"$False_5645":                                    ; preds = %"$have_gas_5540"
  %"$isOk_5646" = bitcast %TName_Bool* %"$isOk_5543" to %CName_False*
  br label %"$matchsucc_5542"

"$empty_default_5546":                            ; preds = %"$have_gas_5540"
  br label %"$matchsucc_5542"

"$matchsucc_5542":                                ; preds = %"$False_5645", %"$have_gas_5641", %"$empty_default_5546"
  ret void
}

declare void @_accept(i8*)

define void @register(i8* %0) !dbg !524 {
entry:
  %"$_amount_5648" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5649" = bitcast i8* %"$_amount_5648" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5649", align 8
  %"$_sender_5650" = getelementptr i8, i8* %0, i32 16
  %"$_sender_5651" = bitcast i8* %"$_sender_5650" to [20 x i8]*
  %"$parent_5652" = getelementptr i8, i8* %0, i32 36
  %"$parent_5653" = bitcast i8* %"$parent_5652" to [32 x i8]*
  %"$label_5654" = getelementptr i8, i8* %0, i32 68
  %"$label_5655" = bitcast i8* %"$label_5654" to %String*
  %label = load %String, %String* %"$label_5655", align 8
  call void @"$register_5367"(%Uint128 %_amount, [20 x i8]* %"$_sender_5651", [32 x i8]* %"$parent_5653", %String %label), !dbg !525
  ret void
}

define internal void @"$onResolverConfigured_5656"(%Uint128 %_amount, [20 x i8]* %"$_sender_5657", [32 x i8]* %"$node_5658") !dbg !526 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5657", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_5658", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_5659_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5659_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5659_salloc_load", i64 32)
  %"$indices_buf_5659_salloc" = bitcast i8* %"$indices_buf_5659_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5659" = bitcast [32 x i8]* %"$indices_buf_5659_salloc" to i8*
  %"$indices_gep_5660" = getelementptr i8, i8* %"$indices_buf_5659", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_5660" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_5661" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_5663" = call i8* @_fetch_field(i8* %"$execptr_load_5661", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5662", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_5659", i32 1), !dbg !527
  %"$maybeRecord_5664" = bitcast i8* %"$maybeRecord_5663" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_5664", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_5665" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_5665_5666" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5665" to i8*
  %"$_literal_cost_call_5667" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_5665_5666")
  %"$gasadd_5668" = add i64 %"$_literal_cost_call_5667", 0
  %"$gasadd_5669" = add i64 %"$gasadd_5668", 1
  %"$gasrem_5670" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5671" = icmp ugt i64 %"$gasadd_5669", %"$gasrem_5670"
  br i1 %"$gascmp_5671", label %"$out_of_gas_5672", label %"$have_gas_5673"

"$out_of_gas_5672":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5673"

"$have_gas_5673":                                 ; preds = %"$out_of_gas_5672", %entry
  %"$consume_5674" = sub i64 %"$gasrem_5670", %"$gasadd_5669"
  store i64 %"$consume_5674", i64* @_gasrem, align 8
  %"$gasrem_5675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5676" = icmp ugt i64 2, %"$gasrem_5675"
  br i1 %"$gascmp_5676", label %"$out_of_gas_5677", label %"$have_gas_5678"

"$out_of_gas_5677":                               ; preds = %"$have_gas_5673"
  call void @_out_of_gas()
  br label %"$have_gas_5678"

"$have_gas_5678":                                 ; preds = %"$out_of_gas_5677", %"$have_gas_5673"
  %"$consume_5679" = sub i64 %"$gasrem_5675", 2
  store i64 %"$consume_5679", i64* @_gasrem, align 8
  %"$maybeRecord_5681" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_tag_5682" = getelementptr inbounds %TName_Option_ud-registry.Record, %TName_Option_ud-registry.Record* %"$maybeRecord_5681", i32 0, i32 0
  %"$maybeRecord_tag_5683" = load i8, i8* %"$maybeRecord_tag_5682", align 1
  switch i8 %"$maybeRecord_tag_5683", label %"$empty_default_5684" [
    i8 1, label %"$None_5685"
    i8 0, label %"$Some_5687"
  ], !dbg !528

"$None_5685":                                     ; preds = %"$have_gas_5678"
  %"$maybeRecord_5686" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5681" to %CName_None_ud-registry.Record*
  br label %"$matchsucc_5680"

"$Some_5687":                                     ; preds = %"$have_gas_5678"
  %"$maybeRecord_5688" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5681" to %CName_Some_ud-registry.Record*
  %"$record_gep_5689" = getelementptr inbounds %CName_Some_ud-registry.Record, %CName_Some_ud-registry.Record* %"$maybeRecord_5688", i32 0, i32 1
  %"$record_load_5690" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %"$record_gep_5689", align 8
  %record = alloca %TName_ud-registry.Record*, align 8
  store %TName_ud-registry.Record* %"$record_load_5690", %TName_ud-registry.Record** %record, align 8
  %"$gasrem_5691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5692" = icmp ugt i64 1, %"$gasrem_5691"
  br i1 %"$gascmp_5692", label %"$out_of_gas_5693", label %"$have_gas_5694"

"$out_of_gas_5693":                               ; preds = %"$Some_5687"
  call void @_out_of_gas()
  br label %"$have_gas_5694"

"$have_gas_5694":                                 ; preds = %"$out_of_gas_5693", %"$Some_5687"
  %"$consume_5695" = sub i64 %"$gasrem_5691", 1
  store i64 %"$consume_5695", i64* @_gasrem, align 8
  %"$record_5697" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %record, align 8
  %"$record_tag_5698" = getelementptr inbounds %TName_ud-registry.Record, %TName_ud-registry.Record* %"$record_5697", i32 0, i32 0
  %"$record_tag_5699" = load i8, i8* %"$record_tag_5698", align 1
  switch i8 %"$record_tag_5699", label %"$empty_default_5700" [
    i8 0, label %"$ud-registry.Record_5701"
  ], !dbg !529

"$ud-registry.Record_5701":                       ; preds = %"$have_gas_5694"
  %"$record_5702" = bitcast %TName_ud-registry.Record* %"$record_5697" to %CName_ud-registry.Record*
  %"$owner_gep_5703" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_5702", i32 0, i32 1
  %"$owner_load_5704" = load [20 x i8], [20 x i8]* %"$owner_gep_5703", align 1
  %owner = alloca [20 x i8], align 1
  store [20 x i8] %"$owner_load_5704", [20 x i8]* %owner, align 1
  %"$resolver_gep_5705" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_5702", i32 0, i32 2
  %"$resolver_load_5706" = load [20 x i8], [20 x i8]* %"$resolver_gep_5705", align 1
  %resolver = alloca [20 x i8], align 1
  store [20 x i8] %"$resolver_load_5706", [20 x i8]* %resolver, align 1
  %"$gasrem_5707" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5708" = icmp ugt i64 1, %"$gasrem_5707"
  br i1 %"$gascmp_5708", label %"$out_of_gas_5709", label %"$have_gas_5710"

"$out_of_gas_5709":                               ; preds = %"$ud-registry.Record_5701"
  call void @_out_of_gas()
  br label %"$have_gas_5710"

"$have_gas_5710":                                 ; preds = %"$out_of_gas_5709", %"$ud-registry.Record_5701"
  %"$consume_5711" = sub i64 %"$gasrem_5707", 1
  store i64 %"$consume_5711", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$execptr_load_5712" = load i8*, i8** @_execptr, align 8
  %"$eq_resolver_5713" = alloca [20 x i8], align 1
  %"$resolver_5714" = load [20 x i8], [20 x i8]* %resolver, align 1
  store [20 x i8] %"$resolver_5714", [20 x i8]* %"$eq_resolver_5713", align 1
  %"$$eq_resolver_5713_5715" = bitcast [20 x i8]* %"$eq_resolver_5713" to i8*
  %"$eq__sender_5716" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_5716", align 1
  %"$$eq__sender_5716_5717" = bitcast [20 x i8]* %"$eq__sender_5716" to i8*
  %"$eq_call_5718" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5712", i32 20, i8* %"$$eq_resolver_5713_5715", i8* %"$$eq__sender_5716_5717")
  store %TName_Bool* %"$eq_call_5718", %TName_Bool** %isOk, align 8, !dbg !532
  %"$gasrem_5719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5720" = icmp ugt i64 2, %"$gasrem_5719"
  br i1 %"$gascmp_5720", label %"$out_of_gas_5721", label %"$have_gas_5722"

"$out_of_gas_5721":                               ; preds = %"$have_gas_5710"
  call void @_out_of_gas()
  br label %"$have_gas_5722"

"$have_gas_5722":                                 ; preds = %"$out_of_gas_5721", %"$have_gas_5710"
  %"$consume_5723" = sub i64 %"$gasrem_5719", 2
  store i64 %"$consume_5723", i64* @_gasrem, align 8
  %"$isOk_5725" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5726" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5725", i32 0, i32 0
  %"$isOk_tag_5727" = load i8, i8* %"$isOk_tag_5726", align 1
  switch i8 %"$isOk_tag_5727", label %"$empty_default_5728" [
    i8 0, label %"$True_5729"
    i8 1, label %"$False_5769"
  ], !dbg !535

"$True_5729":                                     ; preds = %"$have_gas_5722"
  %"$isOk_5730" = bitcast %TName_Bool* %"$isOk_5725" to %CName_True*
  %"$gasrem_5731" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5732" = icmp ugt i64 1, %"$gasrem_5731"
  br i1 %"$gascmp_5732", label %"$out_of_gas_5733", label %"$have_gas_5734"

"$out_of_gas_5733":                               ; preds = %"$True_5729"
  call void @_out_of_gas()
  br label %"$have_gas_5734"

"$have_gas_5734":                                 ; preds = %"$out_of_gas_5733", %"$True_5729"
  %"$consume_5735" = sub i64 %"$gasrem_5731", 1
  store i64 %"$consume_5735", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5737" = icmp ugt i64 1, %"$gasrem_5736"
  br i1 %"$gascmp_5737", label %"$out_of_gas_5738", label %"$have_gas_5739"

"$out_of_gas_5738":                               ; preds = %"$have_gas_5734"
  call void @_out_of_gas()
  br label %"$have_gas_5739"

"$have_gas_5739":                                 ; preds = %"$out_of_gas_5738", %"$have_gas_5734"
  %"$consume_5740" = sub i64 %"$gasrem_5736", 1
  store i64 %"$consume_5740", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_140" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_5741" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_5742" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5741", 0
  %"$ud-registry.eConfigured_envptr_5743" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5741", 1
  %"$ud-registry.eConfigured_node_5744" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_5744", align 1
  %"$ud-registry.eConfigured_call_5745" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_5742"(i8* %"$ud-registry.eConfigured_envptr_5743", [32 x i8]* %"$ud-registry.eConfigured_node_5744"), !dbg !536
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_5745", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_140", align 8, !dbg !536
  %"$ud-registry.eConfigured_141" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_140_5746" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_140", align 8
  %"$$ud-registry.eConfigured_140_fptr_5747" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_140_5746", 0
  %"$$ud-registry.eConfigured_140_envptr_5748" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_140_5746", 1
  %"$$ud-registry.eConfigured_140_owner_5749" = alloca [20 x i8], align 1
  %"$owner_5750" = load [20 x i8], [20 x i8]* %owner, align 1
  store [20 x i8] %"$owner_5750", [20 x i8]* %"$$ud-registry.eConfigured_140_owner_5749", align 1
  %"$$ud-registry.eConfigured_140_call_5751" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_140_fptr_5747"(i8* %"$$ud-registry.eConfigured_140_envptr_5748", [20 x i8]* %"$$ud-registry.eConfigured_140_owner_5749"), !dbg !536
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_140_call_5751", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_141", align 8, !dbg !536
  %"$ud-registry.eConfigured_142" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_141_5752" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_141", align 8
  %"$$ud-registry.eConfigured_141_fptr_5753" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_141_5752", 0
  %"$$ud-registry.eConfigured_141_envptr_5754" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_141_5752", 1
  %"$$ud-registry.eConfigured_141_resolver_5755" = alloca [20 x i8], align 1
  %"$resolver_5756" = load [20 x i8], [20 x i8]* %resolver, align 1
  store [20 x i8] %"$resolver_5756", [20 x i8]* %"$$ud-registry.eConfigured_141_resolver_5755", align 1
  %"$$ud-registry.eConfigured_141_call_5757" = call i8* %"$$ud-registry.eConfigured_141_fptr_5753"(i8* %"$$ud-registry.eConfigured_141_envptr_5754", [20 x i8]* %"$$ud-registry.eConfigured_141_resolver_5755"), !dbg !536
  store i8* %"$$ud-registry.eConfigured_141_call_5757", i8** %"$ud-registry.eConfigured_142", align 8, !dbg !536
  %"$$ud-registry.eConfigured_142_5758" = load i8*, i8** %"$ud-registry.eConfigured_142", align 8
  store i8* %"$$ud-registry.eConfigured_142_5758", i8** %e, align 8, !dbg !536
  %"$e_5759" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5761" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5759")
  %"$gasrem_5762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5763" = icmp ugt i64 %"$_literal_cost_call_5761", %"$gasrem_5762"
  br i1 %"$gascmp_5763", label %"$out_of_gas_5764", label %"$have_gas_5765"

"$out_of_gas_5764":                               ; preds = %"$have_gas_5739"
  call void @_out_of_gas()
  br label %"$have_gas_5765"

"$have_gas_5765":                                 ; preds = %"$out_of_gas_5764", %"$have_gas_5739"
  %"$consume_5766" = sub i64 %"$gasrem_5762", %"$_literal_cost_call_5761"
  store i64 %"$consume_5766", i64* @_gasrem, align 8
  %"$execptr_load_5767" = load i8*, i8** @_execptr, align 8
  %"$e_5768" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5767", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5768"), !dbg !539
  br label %"$matchsucc_5724"

"$False_5769":                                    ; preds = %"$have_gas_5722"
  %"$isOk_5770" = bitcast %TName_Bool* %"$isOk_5725" to %CName_False*
  br label %"$matchsucc_5724"

"$empty_default_5728":                            ; preds = %"$have_gas_5722"
  br label %"$matchsucc_5724"

"$matchsucc_5724":                                ; preds = %"$False_5769", %"$have_gas_5765", %"$empty_default_5728"
  br label %"$matchsucc_5696"

"$empty_default_5700":                            ; preds = %"$have_gas_5694"
  br label %"$matchsucc_5696"

"$matchsucc_5696":                                ; preds = %"$matchsucc_5724", %"$empty_default_5700"
  br label %"$matchsucc_5680"

"$empty_default_5684":                            ; preds = %"$have_gas_5678"
  br label %"$matchsucc_5680"

"$matchsucc_5680":                                ; preds = %"$matchsucc_5696", %"$None_5685", %"$empty_default_5684"
  ret void
}

define void @onResolverConfigured(i8* %0) !dbg !540 {
entry:
  %"$_amount_5772" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5773" = bitcast i8* %"$_amount_5772" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5773", align 8
  %"$_sender_5774" = getelementptr i8, i8* %0, i32 16
  %"$_sender_5775" = bitcast i8* %"$_sender_5774" to [20 x i8]*
  %"$node_5776" = getelementptr i8, i8* %0, i32 36
  %"$node_5777" = bitcast i8* %"$node_5776" to [32 x i8]*
  call void @"$onResolverConfigured_5656"(%Uint128 %_amount, [20 x i8]* %"$_sender_5775", [32 x i8]* %"$node_5777"), !dbg !541
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
